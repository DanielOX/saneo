<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Package;
use App\Sales;
use Auth;
use Session;
class PackageController extends Controller
{
    public function index()
    {
        $packages = Package::orderBy('created_at','desc')->get();
        return view('packages.index')->with('packages',$packages);
    }

    public function payment($id)
    {
        Auth::check();
        $package = Package::findOrFail($id);
        return view('packages.payment')->with('package',$package);
    }

    public function charge(Request $request)
    {
        try{
            $package = Package::where('id',$request->package_id)->first();

            \Stripe\Stripe::setApiKey('sk_test_zRfEiWeHdZa5kaw2qtRJcjLJ');
            $charge = \Stripe\Charge::create([
            "amount" => 100 * (int)$package->price,
            "currency" => "usd",
            "source" => $request->stripeToken,
            ]);
            
            $booking = new Sales();
            $booking->customer_name = $request->name;
            $booking->title =  $package->name;
            $booking->type = "package";
            $booking->amount = $request->amount;
            $booking->email = $request->email;
            $booking->shipping_address = $request->shipping_address;
            $booking->contact = $request->contact;
            $booking->amount = $package->price;
            $booking->save();
    
            if($charge['status'] == "succeeded")
            {
                Session::flash('success');
            }
            else
            {
                Session::flash('failed');
            }
            return redirect()->route('packages');

        }catch(Exception $e){
            Session::flash('failed');
            return redirect()->route('packages');
        }

 

    }
}
