@extends('layouts.app')

@section('event-cover')
    @php 
        echo Voyager::image(json_decode($event->image)[0]->download_link);
    @endphp
@endsection

@section('event-title')
    {{$event->title}}
@endsection

@section('call-to-action')
        <a role="button" href="" class="btn btn-lg btn-primary" > Book Your Seat</a>     
@endsection
@section('content')
    <div class="container" >
        <center>
            <h4 class="heading">{{$event->title}}</h4>
            <p style="width:25%;border:1px solid #eee;"></p>
        </center>
        <br>
        <strong>
           <span class="fa fa-calendar"></span> <i> {{\Carbon\Carbon::parse($event->date)->format('d, M / Y / h:m:s A')}}</i>
        </strong>
        <br><br>        
        <div class="container panel" style="padding:24px">
            <h4 class="head-text text-gradient" style="">Event Information</h4>
            <p style="width:15%;border:1px solid #eee;"></p>
            <div class="panel-body">
 
                {!! $event->description !!}
            </div>
        </div>

        <br><br>        
        <div class="container panel" style="padding:24px">
            <h4 class="head-text text-gradient" style="">Food Items</h4>
            <p style="width:15%;border:1px solid #eee;"></p>
            <div class="panel-body">
 
                {!! $event->food !!}
            </div>
        </div>
        <br>
        
    </div>
@endsection