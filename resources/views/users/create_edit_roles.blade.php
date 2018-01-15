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
                    <li><a href="/users/{{$user->id}}/edit">Edit User</a></li>
                    <li class="active"><a href="#">Roles</a></li>
                </ul>
            </div>
        </nav>
        <div id="active_div" class="col s12">

            <div class="panel">
                <div class="panel-body">
                <!-- form start -->
                <form role="form" method="post" action="/users/add_edit_roles/{{$user->id}}" autocomplete="off" onsubmit="return validate();">
                    <input type="hidden" name="_token" value="{{{ csrf_token() }}}" />
                    <div class="box-body">
                        <div class="form-group">
                            <select multiple="multiple" id="roles" name="roles[]">
                                <option value="" disabled>--Select Roles--</option>
                            @foreach($roles as $id => $role)
                                <option value="{!! $role !!}" @if($user->hasRole($role))selected @endif>{!! $role !!} </option>
                            @endforeach
                            </select>
                            <label for="roles"></label>
                        </div>
                        
                    </div><!-- /.box-body -->
                    <div class="box-footer">
                        
                        <button type="submit" class="btn btn-primary">
                            <span class="glyphicon glyphicon-ok-circle"></span>
                                {{ trans("admin/modal.edit") }}
                        </button>
                    </div>
                </form>
                <br><br>
            </div><!-- /.box -->
        </div><!--/.col (left) -->
    </div>   <!-- /.row -->
</div>
</div>
@stop 

@section('style')
    
@endsection

@section('scripts')

<script>
    $(document).ready(function() {

        $('select').material_select();
    });

    function validate() {
        flag = true;
        if (! $( "#roles option:selected" ).length) {
            $('#roles').closest('.form-group').addClass('has-error');
            $('label[for="roles"]').text('At least one role is required.');
            flag = false;
        }
        return flag;
    }

</script>
@endsection