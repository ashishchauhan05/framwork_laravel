@extends('layouts.modal')
@section('content')
<link rel="stylesheet" href="{{asset('assets/site/css/signin.css')}}">

<div class="box-header" style='background-color: #EC2790;padding: 15px;border-bottom: 1px solid #e5e5e5;position: fixed;top: 0px;left: 0px;width: 100%;z-index: 1000000;'>
     <h3 class="box-title" style='color:#FFF;'>Signup</h3>
</div>
<div style="padding-top:50px;">
 @include('errors.list')
</div>
<form class="form-signin" method="post" name="signupForm" id="signupForm">
 <input type="hidden" name="_token" value="{{{ csrf_token() }}}" />
 <input type="text" class="form-control" placeholder="Name" name="name" value="{{ old('name') }}"/>
 <input type="text" class="form-control" style="margin-top: 10px;" placeholder="Email" name="email" value="{{ old('email') }}"/>
 <input type="password" class="form-control" style="margin-top: 10px;" placeholder="Password" name="password" id="pass"/>
 <input type="password" class="form-control" placeholder="Retype Password" name="password_confirmation" id="repass"/>
 <input type="text" class="form-control" placeholder="Address" name="address" value="{{ old('address') }}"/>
 <input type="text" class="form-control" style="margin-top: 10px;" placeholder="Contact Number" name="contact" value="{{ old('contact')}}"/>
 <button class="btn btn-lg btn-primary btn-block" style="margin-top: 10px;" type="submit">Signup</button>
 </form>

@endsection
