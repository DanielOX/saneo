@extends('layouts.app')

@section('content')
    




<section id="speakers" class="speakers section overlay-white">
  <div class="overlay-inner">
    <div class="container">
      <!--|Section Header|-->
      <header class="section-header">
        <div class="row">
          <div class="col-md-6 content-center">
            <h2 class="section-title">
              <span class="fp-meta">Latest</span>
              <span class="title-text">Events</span>
            </h2>
            <p>
              Below Is The Galley Of Latest Events
            </p>
          </div>
        </div>
      </header> <!--|End Section Header|-->

    

      <div class="row">

        @foreach (\App\Event::orderBy('created_at','desc')->get() as $event)
        <div class="col-md-4 col-sm-6">
          <!--|speaker|-->
          <div class="speaker">
            <figure class="avatar">
                @php
                  $img_arr = json_decode($event->image);
                  $image = count($img_arr ) > 0 ? $img_arr[0]->download_link : '/saneo/default.jpg' 
                @endphp


            <img src="{{Voyager::image($image)}}" alt="">

              <figcaption class="social-links">               
              <a href="{{ route('event.show',['id' => $event->id]) }}"><i class="ion-more"></i> Read More </a>
              </figcaption>
            </figure>

            <div class="speaker-info">
              <h4 class="name">{{$event->title}}</h4>
              <cite>{{ \Carbon\Carbon::parse($event->date)->format('d, M / Y / h:m:s A') }} at {{ $event->location }}</cite>
            </div>
          </div> <!--|End speaker|-->
        </div>

        @endforeach
  
      </div>
    </div>
  </div>
</section> <!--||End Speakers||-->














<!--||Speakers||-->
<section id="speakers" class="speakers section overlay-white">
  <div class="overlay-inner">
    <div class="container">
      <!--|Section Header|-->
      <header class="section-header">
        <div class="row">
          <div class="col-md-6 content-center">
            <h2 class="section-title">
              <span class="fp-meta">The</span>
              <span class="title-text">Team</span>
            </h2>
            <p>
              Below Is The Gallery Of Project Team
            </p>
          </div>
        </div>
      </header> <!--|End Section Header|-->

    

      <div class="row">

        <div class="col-md-4 col-md-offset-2 col-sm-6">
          <!--|speaker|-->
          <div class="speaker">
            <figure class="avatar">
              <img src="assets/images/speaker06.jpg" alt="">
            </figure>

            <div class="speaker-info">
              <h4 class="name">Naila</h4>
              <cite>Web Developer</cite>
            </div>
          </div> <!--|End speaker|-->
        </div>

        <div class="col-md-4 col-sm-6">
          <!--|speaker|-->
          <div class="speaker">
            <figure class="avatar">
              <img src="assets/images/speaker07.jpg" alt="">

            </figure>

            <div class="speaker-info">
              <h4 class="name">Mohsin</h4>
              <cite>Backend & Database Developer</cite>
            </div>
          </div> <!--|End speaker|-->
        </div>

        
      </div>
    </div>
  </div>
</section> <!--||End Speakers||-->

<!--||Benefits||-->
<section id="benefits" class="benefits section overlay-black">
  <div class="overlay-inner">
    <div class="container">
      <!--|Section Header|-->
      <header class="section-header">
        <div class="row">
          <div class="col-md-6 content-center">
            <h2 class="section-title">
              <span class="fp-meta">The Events of</span>
              <span class="title-text">Benefits</span>
            </h2>
            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration</p>
          </div>
        </div>
      </header> <!--|End Section Header|-->

      <div class="row">
        <div class="col-md-3 col-sm-6">
          <!--|Text Box|-->
          <div class="text-box">
            <span class="fp-icon"><i class="ion-social-buffer"></i></span>
            <div class="fp-desc">
              <h4 class="title">Specialist Speakers</h4>
              <p>Lorem Ipsum is simply dummy text of the printing.</p>
            </div>
          </div> <!--|End Text Box|-->
        </div>

        <div class="col-md-3 col-sm-6">
          <!--|Text Box|-->
          <div class="text-box">
            <span class="fp-icon"><i class="ion-coffee"></i></span>
            <div class="fp-desc">
              <h4 class="title">A great value</h4>
              <p>Lorem Ipsum is simply dummy text of the printing.</p>
            </div>
          </div> <!--|End Text Box|-->
        </div>

        <div class="col-md-3 col-sm-6">
          <!--|Text Box|-->
          <div class="text-box">
            <span class="fp-icon"><i class="ion-ribbon-b"></i></span>
            <div class="fp-desc">
              <h4 class="title">Best of the best</h4>
              <p>Lorem Ipsum is simply dummy text of the printing.</p>
            </div>
          </div> <!--|End Text Box|-->
        </div>

        <div class="col-md-3 col-sm-6">
          <!--|Text Box|-->
          <div class="text-box">
            <span class="fp-icon"><i class="ion-planet"></i></span>
            <div class="fp-desc">
              <h4 class="title">Latest Technology</h4>
              <p>Lorem Ipsum is simply dummy text of the printing.</p>
            </div>
          </div> <!--|End Text Box|-->
        </div>
      </div>

      <div class="row">
        <div class="col-md-3 col-sm-6">
          <!--|Text Box|-->
          <div class="text-box">
            <span class="fp-icon"><i class="ion-ios-analytics"></i></span>
            <div class="fp-desc">
              <h4 class="title">Great Environment</h4>
              <p>Lorem Ipsum is simply dummy text of the printing.</p>
            </div>
          </div> <!--|End Text Box|-->
        </div>

        <div class="col-md-3 col-sm-6">
          <!--|Text Box|-->
          <div class="text-box">
            <span class="fp-icon"><i class="ion-icecream"></i></span>
            <div class="fp-desc">
              <h4 class="title">Various Gift</h4>
              <p>Lorem Ipsum is simply dummy text of the printing.</p>
            </div>
          </div> <!--|End Text Box|-->
        </div>

        <div class="col-md-3 col-sm-6">
          <!--|Text Box|-->
          <div class="text-box">
            <span class="fp-icon"><i class="ion-image"></i></span>
            <div class="fp-desc">
              <h4 class="title">Perfect Image</h4>
              <p>Lorem Ipsum is simply dummy text of the printing.</p>
            </div>
          </div> <!--|End Text Box|-->
        </div>

        <div class="col-md-3 col-sm-6">
          <!--|Text Box|-->
          <div class="text-box">
            <span class="fp-icon"><i class="ion-planet"></i></span>
            <div class="fp-desc">
              <h4 class="title">Approved sessions</h4>
              <p>Lorem Ipsum is simply dummy text of the printing.</p>
            </div>
          </div> <!--|End Text Box|-->
        </div>
      </div>
    </div>
  </div>
</section> <!--||End Benefits||-->




@endsection





