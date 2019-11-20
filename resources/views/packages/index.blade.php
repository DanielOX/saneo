@extends('layouts.app')

@section('event-cover')
    @php 
        echo "https://static.wixstatic.com/media/c70d93_21e8bb8dad944c44a3651050ea1faaae~mv2_d_2098_1429_s_2.jpg"
    @endphp
@endsection

@section('event-title')
   Browse Packages
@endsection

@section('notifications')
@if(session()->has('success'))
<div id="success-msg" class="alert alert-success" role="alert">Payment Has Been Successful, Tickets Of Events Will Be Shipped To Your Door Step</div>
@endif

@if(session()->has('failed'))
<div id="failed-msg" class="alert alert-danger" role="alert">Payment Failed Due To Some Issue, Please Try Again Later</div>
    
@endif

@endsection

@section('content')
<div class="container" >
        <center>
            <h4 class="heading">Packages</h4>
            <p style="width:7%;border:1px solid #eee;"></p>
        </center>
        <br>

        <div class="row">
            @foreach ($packages as $package)
                @php $events  = $package->events() @endphp
                @if($events and count($events) > 0)
                <div class="col-sm-3 col-sm-offset-1 panel" style="margin-bottom:40px" >
                    <h4>{{$package->name}}</h4>
                    <br>
                    <div class="panel-body" style="padding-left:0px">
                        <ul class="list-group">
                                @php $total = 0  @endphp
                                @foreach($events as $event)
                                <li class="list-group-item">{{ $event->title }}  &nbsp; &nbsp; <span class="pull-right">$ {{$event->price}}</span></li>
                                @php $total += $event->price @endphp
                                @endforeach
                                <li class="list-group-item">
                                Total &nbsp; &nbsp;  <span class="pull-right" style="font-weight:bold">($) <strike>{{$total}}</strike></span>
                                </li>
                                <li class="list-group-item">Package Price &nbsp; &nbsp; <span class="pull-right"> <strong>($) {{$package->price}}</strong></span> </li>
                            </ul>
                        <a role="button" href="{{route('package.pay',['id' => $package->id])}}" class="btn btn-success pull-right"> Buy ($) <strong>{{$package->price}}</strong> </a>
            
                    </div>
                </div>    
                @endif
            

            @endforeach
        </div>


        <br><br>


    </div>

@endsection

@section('scripts')
<script>
        $('#success-msg').show(3000).fadeOut("slow")
</script>
<script>
        $('#failed-msg').show(3000).fadeOut("slow")
</script>
    
@endsection