@extends('layouts.modal')

@section('content')
    @if (isset($status) && $status['code'] == 'danger')
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


    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="box box-primary">
                    <div class="box-header" style='background-color: #EC2790;padding: 15px;border-bottom: 1px solid #e5e5e5;position: fixed;top: 0px;left: 0px;width: 100%;z-index: 1000000;'>
                        <h4 class="box-title" style='color:#FFF;'>Login/Signup</h4>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <div class="box-body" style='padding-top:50px; padding-left:50px;'>
                       
                        <form role="form" class="form-horizontal" method="post" autocomplete="off">                            
                         <input type="hidden" name="_token" value="{{{ csrf_token() }}}" />    
                         <div class="form-group {{{ $errors->has('email') ? 'has-error' : '' }}}" style='width:100%;'>
                            <div class="col-sm-8">
                             {!! Form::text('email', '', array('class' => 'form-control', 'placeholder'=>'Enter Your Email', 'id'=>'email', 'style'=>'width:200px;')) !!}
                             {!! $errors->first('email', '<label class="error-label"  for="email">:message</label>')!!}
                           </div>
                          </div>
                            
                          <div class="form-group {{{ $errors->has('password') ? 'has-error' : '' }}}" style='width:100%;'>
                           
                           <div class="col-sm-8">
                             {!! Form::text('password', '', array('class' => 'form-control', 'placeholder'=>'Enter Your Password', 'id'=>'password', 'style'=>'width:200px;')) !!}
                             {!! $errors->first('password', '<label class="error-label"  for="password">:message</label>')!!}
                            </div>
                           </div>
                                                  
                            <div class="box-footer" style='padding: 15px;text-align: center;'>
                             <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-ok-circle"></span>Login</button>
                            </div>
                           </form>


                          </div>
                         </div><!-- /.box -->
                        </div><!--/.col (left) -->
    </div>   <!-- /.row -->
</section>

@stop

