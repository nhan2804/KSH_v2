@extends('admin')
@section('title','Sản phẩm');
@section('content')
<div class="col-lg-12">
	@if (\Session::has('success'))
            <div class="alert alert-success">
                <ul>
                    <li>{!! \Session::get('success') !!}</li>
                </ul>
            </div>
        @endif
	<form method="POST" action="{{URL::to("/admin/product/insert-cate")}}">
		{{csrf_field()}}
		<div class="form-group">
			<label>Tên danh mục</label>
			<input required class="form-control" type="text" name="name_cate">
			<br>
			<button class="btn btn-success" type="submit" name=""><i class="fas fa-plus"></i> Thêm</button>
		</div>
	</form>
	<a href="{{URL::to('admin/product/create')}}" class="btn btn-warning">Thêm sản phẩm</a>
</div>
@endsection