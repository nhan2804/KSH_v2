@extends('admin')
@section('title','Tạo bài mới');
@section('content')
<div>
<form action="{{URL::to('admin/news/insert')}}" method="post" enctype="multipart/form-data">
	{{csrf_field()}}
	<div class="form-group">
		<label>Tiêu đề bài viết</label>
		<input class="form-control" type="text" name="title_news">
		<br>
		<label>Ảnh bài viết</label>
		<input type="file" name="img_upload" id="img_upload" accept="image/*">
		<br>
		<label>Nội dung bài viết</label>
		<textarea id="edit_post"  name="content_news" cols="80" rows="10"></textarea>
		<label>Chủ đề bài viết</label>
		<select name="cate" class="form-control">
			@foreach($cate as $key=>$value)
			<option value="{{$value->id_cate}}">{{$value->name_cate}}</option>
			@endforeach
		</select>
		<input type="submit" name="" class="btn btn-primary" value="Đăng bài">
	</div>
</form>
@if (count($errors) > 0)
 <div class = "alert alert-danger">
        <ul>
           @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
           @endforeach
        </ul>
     </div>
 @endif
<script>
    config = {};
    config.entities_latin = false;
    config.language = "vi";
    CKEDITOR.replace("edit_post", config);
</script> 
</div>
@endsection