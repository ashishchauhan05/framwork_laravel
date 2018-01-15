@extends('app-blank') 

@section('content')

@if(isset($status))
<div class="row">
    <div class="col s12">
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
    </div>
</div>
@endif

<div class="row">

    <div class="col s12">
        <nav>
            <div class="nav-wrapper">
                <ul class="left hide-on-med-and-down">
                    @if(isset($user))
                    <li class="active"><a href="#">Edit User</a></li>
                    <li><a href="/users/add_edit_roles/{{$user->id}}">Roles</a></li>
                    @else
                    <li class="active"><a href="#">Create User</a></li>
                    @endif
                </ul>
            </div>
        </nav>
        <div id="active_div" class="col s12">
            <div class="panel">
                <div class="panel-body">
                     <form role="form" method="post" action="@if (isset($user)){{ URL::to('/users/' . $user->id . '/edit') }}@endif" autocomplete="off">
                    <input type="hidden" name="_token" value="{{{ csrf_token() }}}" />
                    <div class="box-body">
                        <div class="form-group {{{ $errors->has('name') ? 'has-error' : '' }}}">
                            <label for="name">{{ trans('admin/users.name') }}</label>
                            <input type="text" class="form-control" tabindex="1" placeholder="{{ trans('admin/users.name') }}" name="name" id="name" value="{{{ Input::old('name', isset($user) ? $user->name : null) }}}">
                            {!! $errors->first('name', '<label class="error-label" for="name">:message</label>')!!}
                        </div>
                        <div class="form-group {{{ $errors->has('email') ? 'has-error' : '' }}}">
                            <label for="email">{{trans('admin/users.email')}}</label>
                            <input class="form-control" type="email" tabindex="3" placeholder="{{ trans('admin/users.email') }}" name="email" id="email" value="{{{ Input::old('email', isset($user) ? $user->email : null) }}}">
                            {!! $errors->first('email', '<label class="error-label"  for="email">:message</label>')!!}
                        </div>
                        <div class="form-group {{{ $errors->has('mobile') ? 'has-error' : '' }}}">
                            <label for="mobile">Mobile</label>
                            <input class="form-control" type="text" tabindex="3" placeholder="Mobile" name="mobile" id="mobile" value="{{{ Input::old('mobile', isset($user) ? $user->mobile : null) }}}">
                            {!! $errors->first('mobile', '<label class="error-label"  for="mobile">:message</label>')!!}
                        </div>
                        <div class="form-group {{{ $errors->has('password') ? 'has-error' : '' }}}">
                            <label for="password">{{trans('admin/users.password')}}</label>
                            <input class="form-control" type="password" tabindex="4" placeholder="{{ trans('admin/users.password') }}" name="password" id="password" value="">
                            {!!$errors->first('password', '<label class="error-label" for="password">:message</label>')!!}
                        </div>
                        <div class="form-group {{{ $errors->has('password_confirmation') ? 'has-error' : '' }}}">
                            <label for="password_confirmation">{{trans('admin/users.password_confirmation')}}</label>
                            <input class="form-control" type="password" tabindex="5" placeholder="{{ trans('admin/users.password_confirmation') }}" name="password_confirmation" id="password_confirmation" value="">
                            {!!$errors->first('password_confirmation', '<label class="error-label" for="password_confirmation">:message</label>')!!}
                        </div>
                        <div class="form-group {{{ $errors->has('address') ? 'has-error' : '' }}}">
                            <label for="address">Address</label>
                            <input class="form-control" type="text" tabindex="6" placeholder="Enter Address" name="address" id="address" value="{{{ Input::old('address', isset($user) ? $user->address : null) }}}">
                            {!! $errors->first('address', '<label class="error-label"  for="address">:message</label>')!!}
                        </div>
                        
                        <div class="form-group ">
                            <label for="confirm">Activate User</label>
                            <select class="form-control" name="active" id="active" tabindex>
                                <option value="1" {{{ ((isset($user) && $user->active == 1)? ' selected="selected"' : '') }}}>{{{ trans('admin/users.yes') }}}</option>
                                <option value="0" {{{ ((isset($user) && $user->active == 0) ? ' selected="selected"' : '') }}}>{{{ trans('admin/users.no') }}}</option>
                            </select>
                        </div>
                    </div><!-- /.box-body -->
                    
                    <div class="box-footer" style="margin-top: 20px;">
                       <!--  <button type="reset" class="btn btn-default">
                            <span class="glyphicon glyphicon-remove-circle"></span> {{trans("admin/modal.reset") }}
                        </button> -->
                        <button type="submit" class="btn btn-primary">
                            <span class="glyphicon glyphicon-ok-circle"></span>
                            @if (isset($user))
                                {{ trans("admin/modal.edit") }}
                            @else
                                {{trans("admin/modal.create") }}
                            @endif
                        </button>
                    </div>
                </form>

            </div>
        </div>
    </div>

@stop 

@section('scripts')
    @parent
<script type="text/javascript">
    var oTable;
    $(document).ready(function () {
        $('select').material_select();
        // $('ul.tabs').tabs();
    });
</script>
@endsection