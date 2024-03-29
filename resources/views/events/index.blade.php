@extends('layouts.app')

@section('event-cover')
    @php 
        echo config('app.url').'/images/all-events.jpg'
    @endphp
@endsection

@section('event-title')
    All Events
@endsection
@section('content')
    <div class="container" >
        @foreach ($events as $event)
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="media">
                        <div class="media-left">
                            <a href="#">

                            @php
                                $img_arr = json_decode($event->image);
                                $image = count($img_arr ) > 0 ? $img_arr[0]->download_link : '/saneo/default.jpg' @endphp
                            <img class="media-object" style="max-width:80px" src="{{Voyager::image($image)}}" alt="...">
                            </a>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">{{$event->title}}</h4>
                            <strong>
                               <span class="fa fa-calendar" style="color:blue"></span> <b style="font-size:12px;color:#aaa"> {{\Carbon\Carbon::parse($event->date)->format('d, M / Y / h:m:s A')}}</b>
                            </strong>
                            <br>
                            <a role="button" href="{{route('event.show',['id' => $event->id])}}" class="btn btn-success pull-right" href="">Read More</a>
                        </div>
        
                </div>
            </div>        
        </div>
        @endforeach 

    </div>
@endsection