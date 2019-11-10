<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Event;
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
   
}
