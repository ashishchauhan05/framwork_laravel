@extends('app')

@section('title') Dashboard @stop

@section('content')

<section id="dashboard">

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
<div id="boxRecentOrders" class="panel panel-bordered panel-dashboard panel-table z-depth-1">
<div class="panel-header">
<div class="title">
User List
</div>
<div class="actions">
<a class="btn waves-effect waves-light iframe" href="/users/create">
<i class="large material-icons">add</i> Add User
</a>

</div>
</div>
<div class="panel-body" style="padding: 10px">
<table class="striped"  id="table">
	<thead>
		<tr>
			<th>Name</th>
			<th>Mobile</th>
			<th>Email</th>
			<th>Active</th>
			<th>Role</th>
			<th>Action</th>
		</tr>
	</thead>

	<tbody>
		
	</tbody>
</table> 


</div>
</div>
</div>
 </div>


</section>

@endsection

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
            "ajax": "{{ URL::to('/users/data/') }}",
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
