@extends('admin.master')
@section('content')
@section('controller','Quản lý album')
@section('action','Add')
<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>
   	@yield('controller')
    <small>@yield('action')</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="admin"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="javascript:">Album</a></li>
    <li class="active">add</li>
  </ol>
</section>
<!-- Main content -->
<section class="content">
    <div class="box">
    	@include('admin.messages_error')
        <div class="box-body">        	
        	<form name="frmAddAlbum" method="post" action="{!! route('admin.album.update', $data->id) !!}" enctype="multipart/form-data">
        		<input type="hidden" name="_token" value="{!! csrf_token() !!}" />
          		<div class="col-md-6 col-xs-12">
					<div class="form-group col-md-12 ">
						<div class="list-img list-album">
							@foreach($albums as $album)							
							<div class="form-group">
								<img src="{{asset('upload/product/'.$album->photo)}}" style="width: 180px;" alt="">
								<!-- <a href="javascript:;" type="button" id="" onclick="deleteAlbum('{!!$data->id!!}', '{!! $album->photo !!}')" class="btn btn-danger btn-circle del_img_album"><i class="fa fa-times"></i></a> -->
							</div>
							@endforeach
						</div>
						
						<label for="file">File ảnh</label>
				     	<input id="input-2" name="album_image[]" type="file" class="file" multiple data-show-upload="false" data-show-caption="true" data-allowed-file-extensions='["jpeg", "jpg", "png", "gif"]'>			    	
					</div>									
			    	<div class="form-group @if ($errors->first('txtName')!='') has-error @endif">
				      	<label for="ten">Tên</label>
				      	<input type="text" id="txtName" name="txtName" value="{{$data->name}}"  class="form-control" />
				      	@if ($errors->first('txtName')!='')
				      	<label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> {!! $errors->first('txtName'); !!}</label>
				      	@endif
					</div>
					<div class="form-group">
						<label for="">Kiểu hiển thị</label>
						<select name="type_view" id="" class="form-control">
							<option value="1" {{ isset($data) && $data->type_view == 1 ? 'selected=""' : '' }}>Kiểu 1 (1 ảnh)</option>
							<option value="2" {{ isset($data) && $data->type_view == 2 ? 'selected=""' : '' }}>Kiểu 2 (2 ảnh 2 bên)</option>
							<option value="3" {{ isset($data) && $data->type_view == 3 ? 'selected=""' : '' }}>Kiểu 3 (1 ảnh to bên trái, 2 ảnh nhỏ bên phải)</option>
							<option value="4" {{ isset($data) && $data->type_view == 4 ? 'selected=""' : '' }}>Kiểu 4 (1 ảnh to bên phải, 2 ảnh nhỏ bên trái)</option>
							
						</select>
					</div>
					<input type="hidden" name="project_id" value="{{$data->project_id}}"/>
					<div class="form-group">
					      <label for="ten">Số thứ tự</label>
					      <input type="number" min="1" name="stt" value="{!! $data->stt !!}" class="form-control" style="width: 100px;">
				    </div>
				</div>
	            <div class="clearfix"></div>
			    <div class="box-footer">
			    	<div class="row">
						<div class="col-md-6">
					    	<button type="submit" class="btn btn-primary">Lưu</button>
					    	<!-- <button type="button" onclick="javascript:window.location='backend/album?type={{ @$_GET[type] }}'" class="btn btn-danger">Thoát</button> -->
				    	</div>
			    	</div>
			  	</div>
		    </form>
        </div><!-- /.box-body -->
    </div><!-- /.box -->
    
</section><!-- /.content -->

@endsection()
