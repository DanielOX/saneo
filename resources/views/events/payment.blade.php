@extends('layouts.app')

@section('event-cover')
    @php 
        echo "https://images.unsplash.com/photo-1556742502-ec7c0e9f34b1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"
    @endphp
@endsection

@section('event-title')
     {{$event->title}}  
@endsection

@section('notifications')
@if(session()->has('success'))
<div id="success-msg" class="alert alert-success" role="alert">Payment Has Been Successful, Tickets Of Events Will Be Shipped To Your Door Step</div>
@endif

@if(session()->has('failed'))
<div id="failed-msg" class="alert alert-danger" role="alert">Payment Failed Due To Some Issue, Please Try Again Later</div>
    
@endif

@endsection


<style>
/**
 * The CSS shown here will not be introduced in the Quickstart guide, but shows
 * how you can use CSS to style your Element's container.
 */
 .StripeElement {
  box-sizing: border-box;

  height: 40px;

  padding: 10px 12px;

  border: 2px solid #eee;
  border-radius: 4px;
  background-color: white;
  box-shadow: 0 1px 3px 0 #e6ebf1;
  -webkit-transition: box-shadow 150ms ease;
  transition: box-shadow 150ms ease;
}

.StripeElement--focus {
  box-shadow: 0 1px 3px 0 #cfd7df;
}

.StripeElement--invalid {
  border-color: #fa755a;
}

.StripeElement--webkit-autofill {
  background-color: #fefde5 !important;
}

</style>






@section('content')


@if(Auth::check())
<div class="container" >
        <center>
            <h4 class="heading">Enter Your Payment Information</h4>
            <p style="width:7%;border:1px solid #eee;"></p>
        </center>
        <br>

            <div class="panel">
                <div class="panel-body">
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <th>Event Name</th>
                            <th>Price</th>
                        </thead>
                        <tbody>
                            <tr>
                                <td>{{$event->title}}</td>
                                <td>{{$event->price}}</td>
                            </tr>
                        </tbody>
                    </table>

                    <form id="payment-form" action="{{route('event.charge')}}" method="post">
                        @csrf
                        <div class="row">
                            <div class="col-sm-3 form-group">
                                <input type="text" required class="form-control" name="name" placeholder="Full Name">
                            </div>
                            <div class="col-sm-3 form-group">
                                <input type="email" required class="form-control" name="email" placeholder=" Email">
                            </div>
                            <div class="col-sm-3 form-group">
                                <input type="text" required class="form-control" name="shipping_address" placeholder="Shipping Address">
                            </div>
                            <div class="col-sm-3 form-group">
                                    <input type="text" required class="form-control" name="contact" placeholder="Phone No">
                            </div>
                            
                            <input type="hidden" value="{{$event->id}}" name="event_id">
                            <div class="col-sm-8">
                                    <label for="card-element">
                                            Credit or debit card
                                          </label>
                                          <div id="card-element">
                                            <!-- A Stripe Element will be inserted here. -->
                                        </div>
            
                            </div>
                            <div class="col-sm-4">
                                <br>
                                    <button style="margin-top:4px" class="btn btn-success" type="submit">Submit</button>

                            </div>
                            {{-- Error Message --}}
                            <div id="error-message" role="alert"></div>
                        </div>
                    </form>

                </div>

            </div>


        <br><br>


    </div>


@else 

<div class="container">
        <br>
            please <strong><a href="{{route('login')}}" style="color:darkblue">login</a></strong> to continue payment
        </div>
        <br>
        <br>
    @endif        
@endsection

@section('scripts')
<script>

// Create a Stripe client.
var stripe = Stripe('pk_test_mwel8KiKjYCLXgdOkKHdjU6d');

// Create an instance of Elements.
var elements = stripe.elements();

// Custom styling can be passed to options when creating an Element.
// (Note that this demo uses a wider set of styles than the guide below.)
var style = {
  base: {
    color: '#32325d',
    fontFamily: '"Helvetica Neue", Helvetica, sans-serif',
    fontSmoothing: 'antialiased',
    fontSize: '16px',
    '::placeholder': {
      color: '#aab7c4'
    }
  },
  invalid: {
    color: '#fa755a',
    iconColor: '#fa755a'
  }
};

// Create an instance of the card Element.
var card = elements.create('card', {style: style});

// Add an instance of the card Element into the `card-element` <div>.
card.mount('#card-element');

// Handle real-time validation errors from the card Element.
card.addEventListener('change', function(event) {
  var displayError = document.getElementById('card-errors');
  if (event.error) {
    displayError.textContent = event.error.message;
  } else {
    displayError.textContent = '';
  }
});

// Handle form submission.
var form = document.getElementById('payment-form');
form.addEventListener('submit', function(event) {
  event.preventDefault();
  jQuery(".preloader").show();
  stripe.createToken(card).then(function(result) {
    if (result.error) {
      // Inform the user if there was an error.
      var errorElement = document.getElementById('card-errors');
      errorElement.textContent = result.error.message;
    } else {
      // Send the token to your server.
      stripeTokenHandler(result.token);
    }
  });
});

// Submit the form with the token ID.
function stripeTokenHandler(token) {
  // Insert the token ID into the form so it gets submitted to the server
  var form = document.getElementById('payment-form');
  var hiddenInput = document.createElement('input');
  hiddenInput.setAttribute('type', 'hidden');
  hiddenInput.setAttribute('name', 'stripeToken');
  hiddenInput.setAttribute('value', token.id);
  form.appendChild(hiddenInput);

  // Submit the form
  form.submit();
}

</script>
@endsection


@section('scripts')
<script>
        $('#success-msg').delay(3000).fadeOut("slow")
</script>
<script>
        $('#failed-msg').delay(3000).fadeOut("slow")
</script>
    
@endsection