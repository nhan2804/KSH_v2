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
	<form id="formaddcate" method="POST" action="{{URL::to("/admin/product/insert-cate")}}">
		{{csrf_field()}}
		<div class="form-group">
			<label>Tên danh mục</label>
			<input required name="name_cate" class="form-control" type="text">	
		</div>
		<div class="form-group ">
				<input id="checkbox_cate1" name="cate_type" type="radio" >
				<label>Danh mục lớn</label>
				<br>
				<input id="checkbox_cate2" name="cate_type" type="radio" >
				<label>Danh mục nhỏ</label>
			<br>
		</div>
		<div class="form-group parent_add_cate">
			
			<select name="cate" id="cate_parent">
			</select>
		</div>
		<button class="btn btn-success" type="submit" name=""><i class="fas fa-plus"></i> Thêm</button>
	</form>
	<a href="{{URL::to('admin/product/create')}}" class="btn btn-warning">Thêm sản phẩm</a>
	<a href="" class="btn btn-danger">Xóa</a>
	<a href="" class="btn btn-primary">Mở bán</a>
	<form class="form__search" action="">
          <input placeholder="Tìm nhanh" class="form__input" type="text" name="" id="">
    </form>
	<div class="col-lg-12">
			<div class="table-responsive">
				<table class="table ">
					<tr>
						<td><input type="checkbox" name=""></td>
						<td>Tên sản phẩm</td>
						<td>Lượt xem</td>
						<td>View</td>
						<td>Chức năng</td>
					</tr>
					@foreach($products as $k=>$v)
					<tr>
						<td data-id="{{$v->id_pro}}"><input type="checkbox" name=""></td>
						<td >{{$v->name_pro}}</td>
						<td>0</td>
						<td>Đang bán</td>
						<td>
							<a href="#">Sửa </a>
							<a href="#">Xóa </a>
							<a href="{{URL::to('product/'.$v->slug_pro)}}">Xem </a>
						</td>
					</tr>
					@endforeach
				</table>
			</div>
		</div>
</div>
{{-- <script type="text/javascript">
	$(document).ready(function() {
		$('#checkbox_cate2').mousedown(function() {
		    if (!$(this).is(':checked')) {
		        
		    }
		});
	});
</script> --}}
<script type="text/javascript">
	$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
	$('#formaddcate input[type=radio]').on('click', function(event) {
    if ($('#formaddcate #checkbox_cate1:checked').prop('checked') == true) {
       $('.parent_add_cate').addClass('hidden');
       $('.parent_add_cate select').html('');
    }else if ($('#formaddcate #checkbox_cate2:checked').prop('checked')==true) {
        $.ajax({
            url: 'product/loadcate',
            type: 'POST',
            data: {
                type : 1
            },
            success : function (data) {
            	console.log(data);
                $('.parent_add_cate').removeClass('hidden');
                $('.parent_add_cate select').html(data);
            },
            error : function () {
                $('.parent_add_cate').removeClass('hidden');
                $('.parent_add_cate select').html("Đã có lỗi xảy ra, vui lòng thử lại sau.");
            }
        });
    }
});
</script>
@endsection