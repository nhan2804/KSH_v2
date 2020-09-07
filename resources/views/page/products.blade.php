@extends('welcome')
@section('title','Sản Phẩm')
@section('content')
<br>
<div class="container">
	<div class="row">
		<div class="col-lg-3">
			<form class="product__form--search">
				<input class="" type="text" name="">
				<button type="submit"><i style="color: #ccc" class="fas fa-search"></i></button>
			</form>
			<br>
			<h3 class="product__heading--cate">Danh mục sản phẩm</h3>
			<ul class="product__list--cate">
				<li class="product__item--cate"><a class="product__link--cate" href="#">All</a></li>
				<li class="product__item--cate"><a class="product__link--cate" href="#">Bàn ghế(12)</a></li>
				<li class="product__item--cate"><a class="product__link--cate" href="#">Văn phòng(6)</a></li>
				<li class="product__item--cate"><a class="product__link--cate" href="#">Công sở(9)</a></li>
			</ul>
			<h3 class="product__heading--cate">Tin gần đây</h3>
			<div class="row mb-2">
				<div class="col-lg-4 gutter-6">
					<img style="width: 100%;height: 70px" src="https://vnn-imgs-f.vgcloud.vn/2018/03/15/14/7-mon-do-noi-that-dung-phi-tien-ma-mua.jpg" alt="">
				</div>
				<div class="col-lg-8 gutter-6">
					<div class="news__curr--info">
						<h3>Lorem is bakamono yahaloo</h3>
						<p>Aprill 05,2020</p>
					</div>
				</div>
			</div>
			<div class="row mb-2">
				<div class="col-lg-4 gutter-6">
					<img style="width: 100%;height: 70px" src="https://upload.wikimedia.org/wikipedia/commons/4/45/Muzeum_Su%C5%82kowskich_-_niebieski_salonik.JPG" alt="">
				</div>
				<div class="col-lg-8 gutter-6">
					<div class="news__curr--info">
						<h3>Lorem is bakamono yahaloo</h3>
						<p>Aprill 05,2020</p>
					</div>
				</div>
			</div>
			<div class="row mb-2">
				<div class="col-lg-4 gutter-6">
					<img style="width: 100%;height: 70px" src="https://5saohome.vn/uploads/2019/10/1572318654857.jpg" alt="">
				</div>
				<div class="col-lg-8 gutter-6">
					<div class="news__curr--info">
						<h3>Lorem is bakamono yahaloo</h3>
						<p>Aprill 05,2020</p>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-9">
			<div class="row">
				<div class="col-lg-6 mb-4">
					<div class="wrap__product">
						<img class="img-fluid" src="https://sbshouse.vn/wp-content/uploads/2020/02/5.jpg" alt="">
						<div>
							<i class="far fa-clock">May 04, 2020  |  </i>
							<i class="fas fa-eye"></i>201
						</div>
						<h4 class="product__title">Ghế Yukino chất lượng cao</h4>
						<p class="product__desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
						<a href="#" class="btn__primary btn--buy">Xem chi tiết</a>
					</div>
				</div>
				<div class="col-lg-6 mb-4">
					<div class="wrap__product">
						<img class="img-fluid" src="https://truongthang.vn/wp-content/uploads/2020/02/truong-thang-phuong-an-cai-tao-nha-gia-re-nhung-van-dep-lung-linh.jpg" alt="">
						<div>
							<i class="far fa-clock">May 04, 2020  |  </i>
							<i class="fas fa-eye"></i>201
						</div>
						<h4 class="product__title">Ghế Yukino chất lượng cao</h4>
						<p class="product__desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
						<a href="#" class="btn__primary btn--buy">Xem chi tiết</a>
					</div>
				</div>
				<div class="col-lg-6 mb-4">
					<div class="wrap__product">
						<img class="img-fluid" src="https://noithatmyhouse.com/wp-content/uploads/2019/03/thiet-ke-noi-that-khach-san_4-2444x1222.jpg" alt="">
						<div>
							<i class="far fa-clock">May 04, 2020  |  </i>
							<i class="fas fa-eye"></i>201
						</div>
						<h4 class="product__title">Ghế Yukino chất lượng cao</h4>
						<p class="product__desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
						<a href="#" class="btn__primary btn--buy">Xem chi tiết</a>
					</div>
				</div>
				<div class="col-lg-6 mb-4">
					<div class="wrap__product">
						<img class="img-fluid" src="https://lh3.googleusercontent.com/proxy/v2q_reKQd9rnPocYWvI_i5umN0pwys3s6Lvy_g7jjwoY8DbuJG8nof94iLDI6n8Eme6Btoe2vXAxGikxerEDQu8" alt="">
						<div>
							<i class="far fa-clock">May 04, 2020  |  </i>
							<i class="fas fa-eye"></i>201
						</div>
						<h4 class="product__title">Ghế Yukino chất lượng cao</h4>
						<p class="product__desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
						<a href="#" class="btn__primary btn--buy">Xem chi tiết</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection