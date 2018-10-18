@foreach($albums as $album)							
	<div class="form-group">
		<img src="{{asset('upload/product/'.$album->photo)}}" style="width: 180px;" alt="">
		<a href="javascript:;" type="button" id="" onclick="deleteAlbum('{!!$data->id!!}', '{!! $album->photo !!}')" class="btn btn-danger btn-circle del_img_album"><i class="fa fa-times"></i></a>
	</div>
	@endforeach