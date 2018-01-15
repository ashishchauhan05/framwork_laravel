@extends('layouts.modal')
@section('content')

<link rel="stylesheet" href="{{asset('assets/site/css/signin.css')}}">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

<script>
  var __links = document.querySelectorAll('a');
  function __linkClick(e) { parent.window.postMessage(this.href, '*');} ;
  for (var i = 0, l = __links.length; i < l; i++) 
     {
       if ( __links[i].getAttribute('data-t') == '_blank' ) 
         { __links[i].addEventListener('click', __linkClick, false); }
      }
</script>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script>$(document).ready(function(c) {
	$('.sinup-close').on('click', function(c){
		$('.setting').fadeOut('slow', function(c){
	  		$('.setting').remove();
		});
	});	  
});
</script>

<div class="box-header" style='background-color: #EC2790;padding: 15px;border-bottom: 1px solid #e5e5e5;position: fixed;top: 0px;left: 0px;width: 100%;z-index: 1000000;'>
     <h3 class="box-title" style='color:#FFF;'>Sign In</h3>
	</div>

<div style="padding-top:70px;">
 @include('errors.list')
</div>
 @include('flash::message')

 <form role="form" class="form-signin" method="post" >
  <input type="hidden" name="_token" value="{{{ csrf_token() }}}" /> 
  <input type="text" class="form-control" placeholder="Email" name="email" value="{{ old('email') }}"/>
  <div class="clear"> </div>
  <input type="password" class="form-control" placeholder="Password" name="password"/>  
  <div class="checkbox"> <label class="checkbox"><input type="checkbox" name="checkbox" checked><i> </i> Remember Me</label> </div>
  <div class="clear"> </div>
  <button class="btn btn-lg btn-primary btn-block" type="submit" />Sign In </button>
  <div style="margin-top: 7px;"><p><a href="forget"> Forgot Password? </a></p> </div>
  <!--p class="or-social">Or login with your social media account</p>
  <a class="btn btn-lg btn-primary btn-block twitter" href="#"> <i class="anc-tw"> </i> <span>Twitter</span> <div class="clear"></div></a>
  <a class="btn btn-lg btn-primary btn-block facebook" href="#"> <i class="anc-fa"> </i> <span>Facebook</span><div class="clear"></div></a>
  <a class="btn btn-lg btn-primary btn-block twitter" href="#"><i class="anc-go"> </i><span>Google+</span><div class="clear"></div></a>
  <div class="clear"> </div--> 
  <p class="or-social">Don,t have an Account? <a href="signup"> Register Now!</a></p>
 </form>  
 
<script src="//code.jquery.com/jquery.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script>
    $('#flash-overlay-modal').modal();
</script>

@endsection
