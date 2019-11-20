<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <title>Saneo </title>


  <!--|Google Font( Open Sans )|-->
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
  <!--|Google Font( Roboto Slab )|-->
  <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,300,100,700' rel='stylesheet' type='text/css'>
  <!--|Icon Font( Ion Icon)|-->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="{{ url('/assets/css/ionicons.min.css') }}" rel="stylesheet" type="text/css">
  <!--|Owl Carousel|-->
<link href="{{ url('/assets/css/owl.carousel.css') }}" rel="stylesheet" type="text/css">
  <!--|Bootstrap|-->
<link href="{{ url('/assets/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css">

  <!--|Site Stylesheet|-->
  <!--//Note: If you want to change color, just uncomment the commented stylesheet link and comment the uncommented link -->
<link href="{{  url('/assets/css/style.css')}}" rel="stylesheet" type="text/css">
  <!--<link href="assets/css/style_blue.css" rel="stylesheet" type="text/css">-->
  <!--<link href="assets/css/style_purple.css" rel="stylesheet" type="text/css">-->
  <!--<link href="assets/css/style_teal.css" rel="stylesheet" type="text/css">-->

  <!--|Favicon|-->
<link rel="icon" href="{{ url('/assets/images/favicon.ico') }}">
  <!-- Touch Icons -->
  <link rel="apple-touch-icon" href="{{url('/assets/images/apple-touch-icon.png')}}">
  <link rel="apple-touch-icon" sizes="72x72" href="{{url('/assets/images/apple-touch-icon-72x72.png')}}">
  <link rel="apple-touch-icon" sizes="114x114" href="{{url('/assets/images/apple-touch-icon-114x114.png')}}">

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="{{url('assets/js/html5shiv.min.js')}}"></script>
  <script src="{{url('assets/js/respond.min.js')}}"></script>
  <![endif]-->
</head>

<body>
<!--|Preloader|-->

@yield('notifications')

<div class="preloader">
  <div class="preloader-inner">
    <div>
      <div></div>
    </div>
    <span class="fp-meta">loading...</span>
  </div>
</div> <!--|End Preloader|-->

<!--||Register||-->

<!--||Site Header||-->
<header id="home" class="site-header overlay-black" style="background-image:url(@yield('event-cover','https://wallpapercave.com/wp/wp2298412.png'))">
  <div class="overlay-inner">


      {{-- Navigation BAR --}}


    <div class="fp-navbar">
      <nav class="navbar">
        <div class="container">
          <div class="navbar-header">
            <!--|Toggle Btn|-->
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu" aria-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <i class="ion-navicon"></i>
            </button> <!--|End Toggle Btn|-->

            <!--|Brand( Logo )|-->
            <a class="navbar-brand" href="/">
              <img class="logo-white" alt="rhyme" src="{{url('assets/images/logo_white.png')}}">
              <img class="logo-black" alt="rhyme" src="{{url('assets/images/logo_black.png')}}">
            </a> <!--|End Brand( Logo )|-->
          </div>

          <!--|Navbar collapse|-->
          <div class="collapse navbar-collapse" id="menu">
            <ul class="nav navbar-nav navbar-right">
            <li><a href="{{ route('events') }}">Events</a></li>
            <li><a href="{{ route('about-us') }}">About Us</a></li>
            <li><a href="{{ route('packages') }}">Packages</a></li>
              @auth
                <li><a href="{{ url('/home') }}">Home</a></li>
                <li><a href="{{ url('/logout') }}">Logout</a></li>
                
              @else
              <li><a href="{{ route('login') }}">Login</a></li>
              <li><a href="{{ route('register') }}">Register</a></li>
              @endauth
              <li><a href=""></a></li>
            </ul>
          </div> <!--|End Navbar collapse|-->
        </div>
      </nav>
    </div>

    <!--|Greeting Content|-->
    <div class="greetings-content text-center">
      <div class="container">
        <div class="row">
          <div class="col-md-9 content-center">
            <!--|Head Text|-->
            <div class="head-text">
              <p class="fp-meta">Join The Rythm With Us</p>
              <h1 class="head-title">@yield('event-title','Saneo Event Management')</h1>
            </div> <!--|End Head Text|-->

            <!--|Button Panel|-->
            <div class="button-panel">
                @yield('call-to-action',)
                
            </div> <!--|End Button Panel|-->
          </div>
        </div>
      </div>
    </div> <!--|End Greeting Content|-->
  </div>

  <!--|Animated Mouse Icon|-->
  <span class="dwon-icon ion-mouse"></span>
</header> <!--||End Site Header||-->



<section style="height:auto;margin-top:5%">
    @yield('content')
</section>







<!--||Subscribe||-->
<div class="subscribe">
        <div class="container">
          <div class="row">
            <div class="col-md-4">
              <!--|Section Header|-->
              <header class="section-header">
                <h2 class="section-title">
                  <span class="fp-meta">To Stay Up to Date</span>
                  <span class="title-text">Subscribe Now</span>
                </h2>
                <p>Subscribe to our newsletter. We promise, we wont spam!</p>
              </header> <!--|End Section Header|-->
            </div>
      
            <div class="col-md-8">
              <!--|Subscribe Form|-->
              Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia ex aliquid quod eum pariatur necessitatibus distinctio, sapiente ea praesentium nihil alias nobis nam dolore libero quos iste, harum deleniti et?
            </div>
          </div>
        </div>
      </div> <!--||End Subscribe||-->
      


<!--||Footer||-->
<footer id="footer" class="footer">
        <div class="container">
      
          <!--|Copyright|-->
          <center>
              <p class="copyright">&copy; 2019 <a href="#">Saneo</a> . All Rights Reserved.</p> <!--|End Copyright|-->
          </center>
        </div>
      </footer> <!--||Footer||-->
      
      <!--||Javascript||-->
      <!--|jQuery|-->
      <script src="{{url('assets/js/jquery.min.js')}}"></script>
      <!--|Countdown|-->
      <script src="{{url('assets/js/jquery.countdown.min.js')}}"></script>
      <!--Owl Carousel-->
      <script src="{{url('assets/js/owl.carousel.min.js')}}"></script>
      <!--|Fitvids|-->
      <script src="{{url('assets/js/jquery.fitvids.js')}}"></script>
      <!--|Validate|-->
      <script src="{{url('assets/js/jquery.validate.min.js')}}"></script>
      <!--|Ajaxchimp|-->
      <script src="{{url('assets/js/jquery.ajaxchimp.min.js')}}"></script>
      <!--|Bootstrap|-->
      <script src="{{url('assets/js/bootstrap.min.js')}}"></script>
      <!--|Init|-->
      <script src="{{url('assets/js/init.js')}}"></script>
      {{-- Stripe --}}
      <script src="https://js.stripe.com/v3/"></script>

      @yield('scripts')
    </body>
      </html>