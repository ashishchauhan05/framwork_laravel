@extends('app-blank')

@section('title') Login @stop

@section('styles')
<link href="/css/login.css" rel="stylesheet" type="text/css">
@endsection

@section('content')
<div class="login-wrapper">

    @if(isset($status))
    <div id="card-alert" class="card @if($status['code'] == 'error') red @else green @endif">
      <div class="card-content white-text">       
        <ul>
            @foreach ($status['messages'] as $m)
                <li>{{$m}}</li>
            @endforeach
        </ul>
      </div>
      <button type="button" id="alert-close" class="close white-text" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">×</span>
      </button>
    </div>
    @endif

<form method="post">
<input type="hidden" name="_token" value="{{ csrf_token() }}">
<div class="panel panel-bordered z-depth-1">
<div class="panel-header">
<h5>
Sign In to <b class="main-text">Webadmin</b>
</h5>
</div>
<div class="panel-body">
<div class="row no-gutter margin-bottom-0">
<div class="input-field col s12">
<input name="username" id="username" required="" type="text">
<label for="login">Username</label>
</div>
</div>
<div class="row no-gutter margin-bottom-0">
<div class="input-field col s12">
<input name="password" id="password" required="" type="password">
<label for="password">Password</label>
</div>
</div>
</div>
<div class="panel-footer">
<div class="right-align">
<a href="/register" class="btn-flat waves-effect">
REGISTER
</a>
<button type="submit" class="btn-flat waves-effect">
LOG IN
</button>
</div>
</div>
</div>
</form>
</div>
@endsection


@section('scripts')
    
@endsection
