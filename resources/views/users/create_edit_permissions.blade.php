@extends('admin.layouts.modal') 

@section('content')
@if (isset($status))
<div class="pad margin no-print">
    <div class="alert alert-{{$status['code']}} alert-dismissible fade in" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4><i class="icon fa fa-ban"></i> {{ $status['header'] }}</h4>
        <ul>
            @foreach ($status['messages'] as $m)
                <li>{{$m}}</li>
            @endforeach
        </ul>
    </div>
</div>
@endif
<link href="/assets/admin/js/plugins/multi-select/css/multi-select.css" media="screen" rel="stylesheet" type="text/css">
<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <div class="box-header">
                    <ul class="nav nav-tabs">
                        <li class="@if ($tab_id == 'tab_create_edit') active @endif"><a href="/admin/users/{{$user->id}}/edit">Edit User</a></li>
                        <li class="@if ($tab_id == 'tab_roles') active @endif"><a href="/admin/users/add_edit_roles/{{$user->id}}">Roles</a></li>
                        <li class="@if ($tab_id == 'tab_permissions') active @endif"><a href="/admin/users/add_edit_permissions/{{$user->id}}">Permissions</a></li>
                    </ul>
                    
                    <div class="box-tools">
                        <button class="btn btn-primary btn-sm close_popup">
                        <span class="glyphicon glyphicon-backward"></span> {{{trans('admin/admin.back') }}}
                        </button>
                    </div>
                </div><!-- /.box-header -->
                <!-- form start -->
                <form role="form" method="post" action="/admin/users/add_edit_permissions/{{$user->id}}" autocomplete="off">
                    <input type="hidden" name="_token" value="{{{ csrf_token() }}}" />
                    <div class="box-body">
                        <div class="form-group">
                            <select multiple="multiple" id="permissions" name="permissions[]">
                            @foreach($permissions as $id => $permission)
                                <option value="{!! $permission !!}" @if($user->hasPermissionTo($permission))selected @endif>{!! $permission !!}</option>
                            @endforeach
                            </select>
                            <label for="permissions"></label>
                        </div>
                    </div><!-- /.box-body -->
                    <div class="box-footer">
                        <button type="reset" class="btn btn-default">
                            <span class="glyphicon glyphicon-remove-circle"></span> {{trans("admin/modal.reset") }}
                        </button>
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
</section>
@stop 

@section('scripts')
<script src="/assets/admin/js/plugins/multi-select/js/jquery.multi-select.js" type="text/javascript"></script>

<script>
    $(document).ready(function() {
        $('#permissions').multiSelect();
    });
</script>
@endsection