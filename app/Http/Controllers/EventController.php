<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Event;
use App\Sales; 
use Session;
class EventController extends Controller
{
   public function index()
   {    
        $events = Event::orderBy('created_at','desc')->get();
        return view('events.index')->with('events',$events);
   }
   public function show(Request $request,$id)
   {
    $event = Event::find($id);
    return view('events.show')->with('event',$event);
   }

   public function payment($id)
   {
      $event = Event::find($id);
      return view('events.payment')->with('event',$event);       
   }

   public function charge(Request $request)
   {

      try{
         $event = Event::where('id',$request->event_id)->first();

         \Stripe\Stripe::setApiKey('sk_test_zRfEiWeHdZa5kaw2qtRJcjLJ');
         $charge = \Stripe\Charge::create([
         "amount" => 100 * (int)$event->price,
         "currency" => "usd",
         "source" => $request->stripeToken,
         ]);
         
         $booking = new Sales();
         $booking->customer_name = $request->name;
         $booking->title =  $event->title;
         $booking->type = "package";
         $booking->amount = $request->amount;
         $booking->email = $request->email;
         $booking->shipping_address = $request->shipping_address;
         $booking->contact = $request->contact;
         $booking->amount = $event->price;
         $booking->save();
 
         if($charge['status'] == "succeeded")
         {
             Session::flash('success');
         }
         else
         {
             Session::flash('failed');
         }
         return redirect()->route('events');

     }catch(Exception $e){
         Session::flash('failed');
         return redirect()->route('events');
     }


   }

}
