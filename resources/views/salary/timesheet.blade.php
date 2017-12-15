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
                <form action="timekeeping" method="GET">
                    <div class="caption">Bảng Chấm công <button type="submit" class="btn btn-info pull-right btn-sm" >Truy Cập</button>
                    <select style="float: right; width: 40%; height: 29px; padding-top: 0px; margin-right: 5px;" name="month" id="inputMonth" class="pull-right form-control inline" required="required">
                        @for( $i=1; $i <= date('W'); $i++ )
                            <?php $i = str_pad($i, 2, '0', STR_PAD_LEFT); 
                            ?>
                            
                            @if(date("W", strtotime(date("Y-m-d"))) == (int)$i )
                                <option value="{{ $weeks[$i] }}">[Week: {{$i}}] -  {{ $weeks[$i] }}</option>
                            @else
                                <option style="background-color: #f1f1f1" value="{{ $weeks[$i] }}">[Week: {{$i}}] -  {{ $weeks[$i] }}</option>
                            @endif
                        @endfor
                    </select>
                </div>
            </form>
        </div>
    </div>
</div>
</div>
</div>
</div>


@endsection