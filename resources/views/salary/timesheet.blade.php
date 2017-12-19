<?php 
$week = date("W");
$uid = Auth::User()->id;

if (isset($_GET['uid'])) {
    $uid = $_GET['uid'];
}
if (isset($_GET['week'])) {
    $week = $_GET['week'];
}

?>
@extends('layouts.app')
@section('title','Bảng Chấm Công')
@section('script')
<link rel="stylesheet" href="/assets/css/jquery-ui.css">
<link rel="stylesheet" href="https://cdn.datatables.net/scroller/1.4.2/css/scroller.bootstrap.min.css">
<script src="assets/js/jquery-1.9.1.js"></script>
<script src="assets/vendors/jquery-ui/jquery-ui.js"></script>
<script src="assets/js/jquery.dataTables.min.js"></script>
@endsection
@section('styles')
<style type="text/css">

    .dataTables_scroll{
        border: 1px solid navajowhite;
        padding-top: 0px;
    }
    table.dataTable {
        clear: both;
        margin-top: 0px!important;
    }
    td.highlight {
        background-color: whitesmoke !important;
    }
      ::-webkit-datetime-edit-second-field {
    background: $color-white;
    color: transparent;
    margin-left: -3px;
    position: absolute;
    width: 1px;
    -webkit-appearance: none; 
  }
}
</style>
@endsection
@section('content')
<div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
    <div class="page-header pull-left">
        <div class="page-title">Bảng Chấm Công</div>
    </div>
    <ol class="breadcrumb page-breadcrumb">
        <li><i class="fa fa-home"></i>&nbsp;Trang Chủ&nbsp;&nbsp;<i
                class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
        <li>Bảng Chấm Công</li>
    </ol>
    <div class="page-content">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-blue">
                <div class="panel-heading">
                <form action="" method="GET">
                    <div class="caption">Bảng Chấm công <button type="submit" class="btn btn-info pull-right btn-sm" >Truy Cập</button>
                    <select style="float: right; width: auto; height: 29px; padding-top: 0px; margin-right: 5px;" name="week" id="inputMonth" class="pull-right form-control inline" required="required">
                        @for( $i=1; $i <= date('W'); $i++ )
                            <?php $i = str_pad($i, 2, '0', STR_PAD_LEFT); 
                            ?>
                            
                            @if($week == (int)$i )
                                <option value="{{ $i }}" selected>[Week: {{$i}}] -  {{ $weeks[$i] }}</option>
                            @else
                                <option  value="{{ $i }}">[Week: {{$i}}] -  {{ $weeks[$i] }}</option>
                            @endif
                        @endfor
                    </select>
                    <select name="uid" style="float: right; width: auto; height: 29px; padding-top: 0px; margin-right: 5px;"  class="pull-right form-control inline" required="required" >
                        @foreach($users as $user)
                            @if($uid == $user->id)
                                <option value="{{ $user->id }}" selected>{{ $user->name }}</option>
                            @else
                                <option value="{{ $user->id }}">{{ $user->name }}</option>
                            @endif
                        @endforeach
                    </select>
                    </div>
                </form>
                </div>
            </div>
            <div class="panel-body">
                <div class="row mbm">
                       @if(Session::has('msg'))
                                <div class="alert alert-info">
                                    <a class="close" data-dismiss="alert">×</a>
                                    <strong>Chú ý! </strong> {!!Session::get('msg')!!}
                                </div>
                                @endif
                    <div class="col-lg-12">
                        <form action="/timesheet" method="POST">
                        <input type="hidden" name="user_id" value="{{$uid}}">
                        <table id="timesheetTable" class="table table-hover table-striped  table-advanced tablesorter display nowrap" cellspacing="0" style="overflow-y: scroll; ">
                            <thead>
                                <tr>
                                 <?php 
                                    $gendate = new DateTime();
                                    $date = array('Thứ 2', 'Thứ 3', 'Thứ 4', 'Thứ 5', 'Thứ 6', 'Thứ 7'); 
                                    for ($i=1; $i <= 6; $i++) { 
                                        ?>
                                        <th style="text-align: left!important; ">
                                        <?php
                                            $gendate->setISODate(date('Y'),$week, $i); 
                                            echo $date[$i - 1] . " (" . $gendate->format('d-m-Y') . ")";  
                                        ?>
                                    </th>
                                         
                                 <?php
                                    }                                    
                                 ?>
                             </tr>
                            </thead>
                            <tbody>
                              <tr>
                              
                                @for($i = 1; $i <= 6; $i++)
                                 <?php 
                                    $no_break = true;
                                    ?>
                                    <?php
                                        $gendate->setISODate(date('Y'),$week, $i);
                                    ?>
                                    @foreach($ts_data as $ts)
                                        @if($ts->date == $i)
                                            <td><a data-toggle="modal" href='#modal-ts' class="modal-ts" style="color: green" 
                                            data-punch_in="{{date("H:i", strtotime($ts->punch_in))}}" 
                                            data-punch_out="{{date("H:i", strtotime($ts->punch_out))}}" 
                                            data-thu="{{$i}}"><b>{{$ts->punch_in}}</b> / <b>{{$ts->punch_out}}</b></a></td>
                                        <?php 
                                            $no_break = false;
                                        ?>
                                        @endif
                                    @endforeach
                                    <?php 
                                        if ($no_break == true) { ?>
                                            <td>none</td>
                                        <?php }
                                    ?>
                                @endfor
                              </tr>
                            </tbody>
                           
                        </table>
                        </form>
                         <a class="btn btn-primary" data-toggle="modal" href='#modal-ts' class="modal-ts" 
                                    data-thu="{{$i}}"><b>Submit</b></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<div class="modal fade" id="modal-ts">
    <form action="timesheet/store" method="POST">
       <input type="hidden" name="_token" value="{{ csrf_token() }}">
       <input type="hidden" name="week" value="{{$week}}">
       <input type="hidden" name="user_id" value="{{$uid}}">
       
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Chấm Công</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <h3>Ngày</h3>
                       <select name="thu" class="form-control">
                        @for($i =1; $i<=6; $i++)
                            <option value="{{$i}}">Thứ {{$i+1}}</option>
                        @endfor
                       </select>
                   </div>
                </div>
               <div class="row">
                
                    
                   <div class="col-md-6">
                       <h3>Punch In</h3> <input type="time" name="punch_in" value="" class="form-control">
                   </div>
                   <div class="col-md-6">
                       <h3>Punch Out</h3> <input type="time" name="punch_out" value="" class="form-control">
                   </div>
               </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary" >Save changes</button>
            </div>
        </div>
    </div>
    </form>
</div>

@endsection