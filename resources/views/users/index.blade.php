@extends('admin/app')

{{-- Web site Title --}}
@section('title') {{{ trans("admin/users.users") }}} :: @parent @stop


@section('content')
    <section class="content-header">
        <h1>Users <small>Platform Users</small></h1>
        <ol class="breadcrumb">
            <li><a href="/admin"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Users</li>
        </ol>
        <h3>
            <div class="pull-left">
                <div class="pull-right">
                    <a href="/admin/users/create" class="btn btn-sm  btn-primary iframe cboxElement"><span class="glyphicon glyphicon-plus-sign"></span> Add New User</a>
                </div>
            </div>
        </h3>
        <br>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-body">
                        <table id="table" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>{{{ trans("admin/users.name") }}}</th>
                                    <th>{{{ trans("admin/users.username") }}}</th>
                                    <th>{{{ trans("admin/users.mobile") }}}</th>
                                    <th>{{{ trans("admin/users.email") }}}</th>
                                    <th>{{{ trans("admin/users.active_user") }}}</th>
                                    <th>{{{ trans("admin/users.role") }}}</th>
                                    <th>{{{ trans("admin/admin.action") }}}</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div><!-- /.box-body -->
                </div>
            </div>
        </div>
    </section>         
@endsection

{{-- Scripts --}}
@section('scripts')
    @parent
<script type="text/javascript">
        var oTable;
        $(document).ready(function () {
            oTable = $('#table').DataTable({
                "sDom": "<'row'<'col-md-2'l><'col-md-7'a><'col-md-2'f>r>t<'row'<'col-md-6'i><'col-md-6'p>>",
                //"sPaginationType": "bootstrap",
                "processing": true,
                "serverSide": true,
                "ajax": "{{ URL::to('admin/users/data/') }}",
                "fnDrawCallback": function (oSettings) {
                    $(".iframe").colorbox({
                        iframe: true,
                        width: "80%",
                        height: "80%",
                        onClosed: function () {
                            window.location.reload();
                        }
                    });
                }
            });
        });
    </script>
@endsection
