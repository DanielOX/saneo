@extends('layouts.app')

@section('content')
    
<!--|Countdown|-->
<div class="countdown">
  <div class="container">
    <!--|Event Countdown|-->
    <div class="event-countdown text-center">
      <p>To start conference, remaining time is</p>

      <div id="countdown-timer" class="countdown-timer"></div>
    </div> <!--|End Event Countdown|-->
  </div>
</div> <!--|End Countdown|-->

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
              <span class="title-text">Speakers</span>
            </h2>
            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration</p>
          </div>
        </div>
      </header> <!--|End Section Header|-->

      <div class="row">
        <div class="col-md-3 col-sm-6">
          <!--|speaker|-->
          <div class="speaker">
            <figure class="avatar">
              <img src="assets/images/speaker01.jpg" alt="">

              <figcaption class="social-links">
                <a href="#"><i class="ion-social-twitter"></i></a>
                <a href="#"><i class="ion-social-facebook"></i></a>
                <a href="#"><i class="ion-social-linkedin"></i></a>
                <a href="#"><i class="ion-social-instagram"></i></a>
              </figcaption>
            </figure>

            <div class="speaker-info">
              <h4 class="name">Juan Carter</h4>
              <cite>Co-Founder &amp; CEO, Slack</cite>
            </div>
          </div> <!--|End speaker|-->
        </div>

        <div class="col-md-3 col-sm-6">
          <!--|speaker|-->
          <div class="speaker">
            <figure class="avatar">
              <img src="assets/images/speaker02.jpg" alt="">

              <figcaption class="social-links">
                <a href="#"><i class="ion-social-twitter"></i></a>
                <a href="#"><i class="ion-social-facebook"></i></a>
                <a href="#"><i class="ion-social-linkedin"></i></a>
                <a href="#"><i class="ion-social-instagram"></i></a>
              </figcaption>
            </figure>

            <div class="speaker-info">
              <h4 class="name">Doris McCoy</h4>
              <cite>Pixar Animation Studios</cite>
            </div>
          </div> <!--|End speaker|-->
        </div>

        <div class="col-md-3 col-sm-6">
          <!--|speaker|-->
          <div class="speaker">
            <figure class="avatar">
              <img src="assets/images/speaker03.jpg" alt="">

              <figcaption class="social-links">
                <a href="#"><i class="ion-social-twitter"></i></a>
                <a href="#"><i class="ion-social-facebook"></i></a>
                <a href="#"><i class="ion-social-linkedin"></i></a>
                <a href="#"><i class="ion-social-instagram"></i></a>
              </figcaption>
            </figure>

            <div class="speaker-info">
              <h4 class="name">Austin Patterson</h4>
              <cite>CEO, The Sage Group</cite>
            </div>
          </div> <!--|End speaker|-->
        </div>

        <div class="col-md-3 col-sm-6">
          <!--|speaker|-->
          <div class="speaker">
            <figure class="avatar">
              <img src="assets/images/speaker04.jpg" alt="">

              <figcaption class="social-links">
                <a href="#"><i class="ion-social-twitter"></i></a>
                <a href="#"><i class="ion-social-facebook"></i></a>
                <a href="#"><i class="ion-social-linkedin"></i></a>
                <a href="#"><i class="ion-social-instagram"></i></a>
              </figcaption>
            </figure>

            <div class="speaker-info">
              <h4 class="name">Alan Boyd</h4>
              <cite>CEO, Hatem Co.</cite>
            </div>
          </div> <!--|End speaker|-->
        </div>
      </div>

      <div class="row">
        <div class="col-md-3 col-sm-6">
          <!--|speaker|-->
          <div class="speaker">
            <figure class="avatar">
              <img src="assets/images/speaker05.jpg" alt="">

              <figcaption class="social-links">
                <a href="#"><i class="ion-social-twitter"></i></a>
                <a href="#"><i class="ion-social-facebook"></i></a>
                <a href="#"><i class="ion-social-linkedin"></i></a>
                <a href="#"><i class="ion-social-instagram"></i></a>
              </figcaption>
            </figure>

            <div class="speaker-info">
              <h4 class="name">Jeremy Knight</h4>
              <cite>Pixar Animation Studios</cite>
            </div>
          </div> <!--|End speaker|-->
        </div>

        <div class="col-md-3 col-sm-6">
          <!--|speaker|-->
          <div class="speaker">
            <figure class="avatar">
              <img src="assets/images/speaker06.jpg" alt="">

              <figcaption class="social-links">
                <a href="#"><i class="ion-social-twitter"></i></a>
                <a href="#"><i class="ion-social-facebook"></i></a>
                <a href="#"><i class="ion-social-linkedin"></i></a>
                <a href="#"><i class="ion-social-instagram"></i></a>
              </figcaption>
            </figure>

            <div class="speaker-info">
              <h4 class="name">Doris Cole</h4>
              <cite>Producer, CSI:Cyber</cite>
            </div>
          </div> <!--|End speaker|-->
        </div>

        <div class="col-md-3 col-sm-6">
          <!--|speaker|-->
          <div class="speaker">
            <figure class="avatar">
              <img src="assets/images/speaker07.jpg" alt="">

              <figcaption class="social-links">
                <a href="#"><i class="ion-social-twitter"></i></a>
                <a href="#"><i class="ion-social-facebook"></i></a>
                <a href="#"><i class="ion-social-linkedin"></i></a>
                <a href="#"><i class="ion-social-instagram"></i></a>
              </figcaption>
            </figure>

            <div class="speaker-info">
              <h4 class="name">Megan Clark</h4>
              <cite>GM, The boxtrap</cite>
            </div>
          </div> <!--|End speaker|-->
        </div>

        <div class="col-md-3 col-sm-6">
          <!--|speaker|-->
          <div class="speaker">
            <figure class="avatar">
              <img src="assets/images/speaker08.jpg" alt="">

              <figcaption class="social-links">
                <a href="#"><i class="ion-social-twitter"></i></a>
                <a href="#"><i class="ion-social-facebook"></i></a>
                <a href="#"><i class="ion-social-linkedin"></i></a>
                <a href="#"><i class="ion-social-instagram"></i></a>
              </figcaption>
            </figure>

            <div class="speaker-info">
              <h4 class="name">Jason Rice</h4>
              <cite>CEO, Hatem Co.</cite>
            </div>
          </div> <!--|End speaker|-->
        </div>
      </div>
    </div>
  </div>
</section> <!--||End Speakers||-->

<!--||Schedule||-->
<section id="schedule" class="schedule-wrapper section">
  <div class="container">
    <!--|Section Header|-->
    <header class="section-header">
      <div class="row">
        <div class="col-md-6 content-center">
          <h2 class="section-title">
            <span class="fp-meta">The Time</span>
            <span class="title-text">Schedule</span>
          </h2>
          <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration</p>
        </div>
      </div>
    </header> <!--|End Section Header|-->

    <div class="row">
      <div class="col-md-9 content-center">
        <!--|Tab Navigation|-->
        <div class="tab-navigation">
          <ul class="tabs">
            <li><a class="active" href="#" data-tab="day1">25 Jan, 2016</a></li>
            <li><a href="#" data-tab="day2">26 Jan, 2016</a></li>
            <li><a href="#" data-tab="day3">27 Jan, 2016</a></li>
          </ul>
        </div> <!--|End Tab Navigation|-->

        <!--|schedules|-->
        <div class="schedules">
          <ul id="day1" class="tab-content current">
            <li>
              <div class="pull-right text-right">
                <span class="fp-meta"><span>08:30am</span><br>Hall#01</span>
              </div>
              <div class="schedule-info">
                <h4 class="title">Opening Remarks</h4>
                <div class="speaker">
                  <figure class="avatar">
                    <img src="assets/images/avatar01.jpg" alt="">
                  </figure>
                  <div class="fp-desc">
                    <h4 class="name">Jamie Wen</h4>
                    <p>Co-Founder &amp; CEO, Slack</p>
                  </div>
                </div>
              </div>
            </li>

            <li>
              <div class="pull-right text-right">
                <span class="fp-meta"><span>09:30am</span><br>Hall#01</span>
              </div>
              <div class="schedule-info">
                <h4 class="title">Introduction to WP</h4>
                <div class="speaker">
                  <figure class="avatar">
                    <img src="assets/images/avatar02.jpg" alt="">
                  </figure>
                  <div class="fp-desc">
                    <h4 class="name">Maria Hall</h4>
                    <p>CEO, Google Inc.</p>
                  </div>
                </div>
              </div>
            </li>

            <li>
              <div class="pull-right text-right">
                <span class="fp-meta"><span>12:00pm</span><br>Hall#03</span>
              </div>
              <div class="schedule-info">
                <h4 class="title">Lunch Brack</h4>
              </div>
            </li>

            <li>
              <div class="pull-right text-right">
                <span class="fp-meta"><span>01:00am</span><br>Hall#02</span>
              </div>
              <div class="schedule-info">
                <h4 class="title">Getting Started with WP</h4>
                <div class="speaker">
                  <figure class="avatar">
                    <img src="assets/images/avatar03.jpg" alt="">
                  </figure>
                  <div class="fp-desc">
                    <h4 class="name">Joe Fisher</h4>
                    <p>GM, The Boxstrap</p>
                  </div>
                </div>
              </div>
            </li>

            <li>
              <div class="pull-right text-right">
                <span class="fp-meta"><span>02:00am</span><br>Hall#02</span>
              </div>
              <div class="schedule-info">
                <h4 class="title">WP Theme &amp; Child Theme Development</h4>
                <div class="speaker">
                  <figure class="avatar">
                    <img src="assets/images/avatar04.jpg" alt="">
                  </figure>
                  <div class="fp-desc">
                    <h4 class="name">Aaron Banks</h4>
                    <p>CEO, The Sage Group</p>
                  </div>
                </div>
              </div>
            </li>
          </ul>

          <ul id="day2" class="tab-content">
            <li>
              <div class="pull-right text-right">
                <span class="fp-meta"><span>08:30am</span><br>Hall#01</span>
              </div>
              <div class="schedule-info">
                <h4 class="title">Plugin Development</h4>
                <div class="speaker">
                  <figure class="avatar">
                    <img src="assets/images/avatar04.jpg" alt="">
                  </figure>
                  <div class="fp-desc">
                    <h4 class="name">Aaron Banks</h4>
                    <p>CEO, The Sage Group</p>
                  </div>
                </div>
              </div>
            </li>

            <li>
              <div class="pull-right text-right">
                <span class="fp-meta"><span>09:30am</span><br>Hall#01</span>
              </div>
              <div class="schedule-info">
                <h4 class="title">Useing SASS</h4>
                <div class="speaker">
                  <figure class="avatar">
                    <img src="assets/images/avatar03.jpg" alt="">
                  </figure>
                  <div class="fp-desc">
                    <h4 class="name">Joe Fisher</h4>
                    <p>GM, The Boxstrap</p>
                  </div>
                </div>
              </div>
            </li>

            <li>
              <div class="pull-right text-right">
                <span class="fp-meta"><span>12:00pm</span><br>Hall#03</span>
              </div>
              <div class="schedule-info">
                <h4 class="title">Lunch Brack</h4>
              </div>
            </li>

            <li>
              <div class="pull-right text-right">
                <span class="fp-meta"><span>01:00pm</span><br>Hall#02</span>
              </div>
              <div class="schedule-info">
                <h4 class="title">CSS Best Practices</h4>
                <div class="speaker">
                  <figure class="avatar">
                    <img src="assets/images/avatar02.jpg" alt="">
                  </figure>
                  <div class="fp-desc">
                    <h4 class="name">Maria Hall</h4>
                    <p>CEO, Google Inc.</p>
                  </div>
                </div>
              </div>
            </li>

            <li>
              <div class="pull-right text-right">
                <span class="fp-meta"><span>02:00pm</span><br>Hall#02</span>
              </div>
              <div class="schedule-info">
                <h4 class="title">CSS Animation In-Depth Post-Conference Workshop</h4>
                <div class="speaker">
                  <figure class="avatar">
                    <img src="assets/images/avatar01.jpg" alt="">
                  </figure>
                  <div class="fp-desc">
                    <h4 class="name">Jamie Wen</h4>
                    <p>Co-Founder &amp; CEO, Slack</p>
                  </div>
                </div>
              </div>
            </li>
          </ul>

          <ul id="day3" class="tab-content">
            <li>
              <div class="pull-right text-right">
                <span class="fp-meta"><span>08:30am</span><br>Hall#02</span>
              </div>
              <div class="schedule-info">
                <h4 class="title">Frontend Tooling Post-Conference Workshop</h4>
                <div class="speaker">
                  <figure class="avatar">
                    <img src="assets/images/avatar02.jpg" alt="">
                  </figure>
                  <div class="fp-desc">
                    <h4 class="name">Maria Hall</h4>
                    <p>CEO, Google Inc.</p>
                  </div>
                </div>
              </div>
            </li>

            <li>
              <div class="pull-right text-right">
                <span class="fp-meta"><span>09:30am</span><br>Hall#01</span>
              </div>
              <div class="schedule-info">
                <h4 class="title">Plugin Development</h4>
                <div class="speaker">
                  <figure class="avatar">
                    <img src="assets/images/avatar04.jpg" alt="">
                  </figure>
                  <div class="fp-desc">
                    <h4 class="name">Aaron Banks</h4>
                    <p>CEO, The Sage Group</p>
                  </div>
                </div>
              </div>
            </li>

            <li>
              <div class="pull-right text-right">
                <span class="fp-meta"><span>12:00pm</span><br>Hall#03</span>
              </div>
              <div class="schedule-info">
                <h4 class="title">Lunch Brack</h4>
              </div>
            </li>

            <li>
              <div class="pull-right text-right">
                <span class="fp-meta"><span>01:30am</span><br>Hall#01</span>
              </div>
              <div class="schedule-info">
                <h4 class="title">CSS Animation In-Depth Post-Conference Workshop</h4>
                <div class="speaker">
                  <figure class="avatar">
                    <img src="assets/images/avatar03.jpg" alt="">
                  </figure>
                  <div class="fp-desc">
                    <h4 class="name">Joe Fisher</h4>
                    <p>GM, The Boxstrap</p>
                  </div>
                </div>
              </div>
            </li>

            <li>
              <div class="pull-right text-right">
                <span class="fp-meta"><span>02:00pm</span><br>Hall#02</span>
              </div>
              <div class="schedule-info">
                <h4 class="title">SMACSS Post-Conference Workshop</h4>
                <div class="speaker">
                  <figure class="avatar">
                    <img src="assets/images/avatar01.jpg" alt="">
                  </figure>
                  <div class="fp-desc">
                    <h4 class="name">Jamie Wen</h4>
                    <p>Co-Founder &amp; CEO, Slack</p>
                  </div>
                </div>
              </div>
            </li>
          </ul>
        </div> <!--|End schedules|-->
      </div>
    </div>
  </div>
</section> <!--||End Schedule||-->

<!--||Benefits||-->
<section id="benefits" class="benefits section overlay-black">
  <div class="overlay-inner">
    <div class="container">
      <!--|Section Header|-->
      <header class="section-header">
        <div class="row">
          <div class="col-md-6 content-center">
            <h2 class="section-title">
              <span class="fp-meta">The Number of</span>
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

<!--||Packages||-->
<section id="packages" class="packages section">
  <div class="container">
    <!--|Section Header|-->
    <header class="section-header">
      <div class="row">
        <div class="col-md-6 content-center">
          <h2 class="section-title">
            <span class="fp-meta">Three</span>
            <span class="title-text">Packages</span>
          </h2>
          <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration</p>
        </div>
      </div>
    </header> <!--|End Section Header|-->

    <div class="row">
      <div class="col-md-4 col-sm-4">
        <!--|Pricing Table|-->
        <div class="package">
          <div class="package-header">
            <p class="package-name">Silver</p>
            <p class="price"><span class="currency-symbol">$</span>29 <span class="duration">/Day</span></p>
          </div>
          <div class="pricing-features">
            <ul>
              <li>Regular Seat</li>
              <li class="disable">Coffe Break</li>
              <li class="disable">Certificate</li>
            </ul>
          </div>
        </div> <!--|Pricing Table|-->
      </div>

      <div class="col-md-4 col-sm-4">
        <!--|Pricing Table|-->
        <div class="package">
          <div class="package-header">
            <p class="package-name">Gold</p>
            <p class="price"><span class="currency-symbol">$</span>39 <span class="duration">/Day</span></p>
          </div>
          <div class="pricing-features">
            <ul>
              <li>Regular Seat</li>
              <li>Coffe Break</li>
              <li class="disable">Certificate</li>
            </ul>
          </div>
        </div> <!--|Pricing Table|-->
      </div>

      <div class="col-md-4 col-sm-4">
        <!--|Pricing Table|-->
        <div class="package">
          <div class="package-header">
            <p class="package-name">Platinum</p>
            <p class="price"><span class="currency-symbol">$</span>55 <span class="duration">/Day</span></p>
          </div>
          <div class="pricing-features">
            <ul>
              <li>Regular Seat</li>
              <li>Coffe Break</li>
              <li>Certificate</li>
            </ul>
          </div>
        </div> <!--|Pricing Table|-->
      </div>
    </div>
  </div>
</section> <!--||End Packages||-->

<!--||Overview||-->
<section id="overview" class="overview section overlay-black">
  <div class="overlay-inner">
    <div class="container">
      <!--|Section Header|-->
      <header class="section-header">
        <div class="row">
          <div class="col-md-6 content-center">
            <h2 class="section-title">
              <span class="fp-meta">Event</span>
              <span class="title-text">Overview</span>
            </h2>
            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration</p>
          </div>
        </div>
      </header> <!--|End Section Header|-->

      <div class="row">
        <div class="col-md-3 col-sm-6">
          <!--|Overview Box|-->
          <div class="overview-box">
            <span class="fp-icon"><i class="ion-map"></i></span>
            <div class="fp-desc">
              <h4 class="title">United Stated</h4>
              <p>New York, NY 10012</p>
            </div>
          </div> <!--|End Overview Box|-->
        </div>

        <div class="col-md-3 col-sm-6">
          <!--|Overview Box|-->
          <div class="overview-box">
            <span class="fp-icon"><i class="ion-android-microphone"></i></span>
            <div class="fp-desc">
              <h4 class="title">24 Speakers</h4>
              <p>All are specialists</p>
            </div>
          </div> <!--|End Overview Box|-->
        </div>

        <div class="col-md-3 col-sm-6">
          <!--|Overview Box|-->
          <div class="overview-box">
            <span class="fp-icon"><i class="ion-leaf"></i></span>
            <div class="fp-desc">
              <h4 class="title">35+ Sponsor</h4>
              <p>Silver,Gold & Platinum</p>
            </div>
          </div> <!--|End Overview Box|-->
        </div>

        <div class="col-md-3 col-sm-6">
          <!--|Overview Box|-->
          <div class="overview-box">
            <span class="fp-icon"><i class="ion-person-stalker"></i></span>
            <div class="fp-desc">
              <h4 class="title">1420 Seats</h4>
              <p>Hurry up! Book seat</p>
            </div>
          </div> <!--|End Overview Box|-->
        </div>
      </div>
    </div>
  </div>
</section> <!--||End Overview||-->

<!--||Gallery||-->
<section id="gallery" class="section section-bg">
  <div class="container">
    <!--|Section Header|-->
    <header class="section-header">
      <div class="row">
        <div class="col-md-6 content-center">
          <h2 class="section-title">
            <span class="fp-meta">Event</span>
            <span class="title-text">Gallery</span>
          </h2>
          <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration</p>
        </div>
      </div>
    </header> <!--|End Section Header|-->

    <div class="row">
      <div class="col-md-9 content-center">
        <!--|Gallery|-->
        <div class="gallery">
          <div class="gallery-item">
            <div class="item-inner">
              <img src="assets/images/header_bg.jpg" alt="">
            </div>
          </div>

        </div> <!--|End Gallery|-->
      </div>
    </div>
  </div>
</section> <!--||End Gallery||-->


@endsection





