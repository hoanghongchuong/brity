@extends('admin.master')
@section('content')
@section('controller','Quản lý '.'album')
@section('action','List')

<section class="content-header">
  <h1>
    @yield('controller')
    <small>@yield('action')</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="backend"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="javascript:">album</a></li>
    <li class="active">list</li>
  </ol>
</section>
<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-xs-12">
      <div class="box">
        @include('admin.messages_error')
        <!--<div class="box-header">
          <h3 class="box-title">Data Table With Full Features</h3>
        </div>-->
        <div class="box-body">
          <table id="example2" class="table table-bordered table-hover">
            <thead>
              <tr>
                
                <th class="text-center with_dieuhuong">Stt</th>
                <th>Tên album</th>
                <th>kiểu hiển thị</th>
                <!-- <th class="text-center with_dieuhuong">Hoạt động</th> -->
                <th class="text-center with_dieuhuong">Sửa</th>
                <th class="text-center with_dieuhuong">Xóa</th>
              </tr>
            </thead>
            <tbody>
              @foreach($data as $k=>$item)
              <tr>
                <td class="text-center with_dieuhuong">{{$k+1}}</td>
                <td>{{$item->name}}</td>               
                <td>
                	<?php                      
                      switch ($item->type_view) {
                        case '0':
                          echo "Chưa chọn kiểu hiển thị";
                          break;
                        case '1':
                          echo "Kiểu 1 (1 ảnh)";
                          break;
                          case '2':
                          echo "Kiểu 2 (2 ảnh 2 bên)";
                          break;
                          case '3':
                          echo "Kiểu 3 (1 ảnh to bên trái, 2 ảnh nhỏ bên phải)";
                          break;
                          case '4':
                          echo "Kiểu 4 (1 ảnh to bên phải, 2 ảnh nhỏ bên trái)";
                          break;
                          
                        default:
                          echo "Chưa chọn kiểu hiển thị";
                          break;
                      }
                  ?>
                	

                </td>
                <td class="text-center with_dieuhuong">
                  <i class="fa fa-pencil fa-fw"></i><a href="backend/album/edit/{{$item->id}}">Edit</a>
                </td>
                <td class="text-center">
                  <i class="fa fa-trash-o fa-fw"></i><a onClick="if(!confirm('Xác nhận xóa')) return false;" href="backend/album/delete/{{$item->id}}">Delete </a>
                </td>
              </tr>
              @endforeach
            </tbody>
          </table>
        </div><!-- /.box-body -->
        <div class="box-footer col-md-12">
          <div class="row">
            <div class="col-md-6">
              <input type="button" onclick="javascript:window.location='backend/album/add?type={{ @$_GET[type] }}'" value="Thêm" class="btn btn-primary" />
              
              <input type="button" value="Thoát" onclick="javascript:window.location='backend'" class="btn btn-danger" />

            </div>
          </div>
        </div>
      </div><!-- /.box -->
    </div><!-- /.col -->
  </div><!-- /.row -->
</section><!-- /.content -->
@endsection()
