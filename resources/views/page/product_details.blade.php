@extends('welcome')
@section('title','Chi tiết sản phẩm')
@section('content')
<br>
<div class="container">
	<div class="product-details-header">
        <b><a href="{{ URL::to('/product') }}">Sản phẩm</a>  
            <i class="fas fa-angle-double-right"></i>
            <a href="{{ URL::to('/product/a') }}">Giường Skagen 1m6</a> 
        </b>
    </div>
    <div class="container">
        <div class="product-details-body">
            <div class="row">
                <div class="col-sm-7 d-product-body-img">
                    <div class="d-product-img-show-wrap">
                        <img class="img_pro--main" src="{{asset($product_first->url_img)}}" alt="">
                    </div>
                    <div class="d-product-img-more-wrap row">
                        @foreach($pro as $k=>$v)
                        <div class="d-product-img-more__item col-sm-2">
                            <img class="d-product-img-more" src="{{asset($v->url_img)}}" alt="">
                        </div>
                        @endforeach
                    </div>
                </div>
                <div class="col-sm-5 d-product-body-details">
                    {{-- <div class="d-product-details-item"><b>Tên sản phẩm:</b> Giường Skagen 1m6</div>
                    <div class="d-product-details-item"><b>Kích thước:</b> D2000 -R1600 - C930
                    </div>
                    <div class="d-product-details-item"><b>Vật liệu:</b> Gỗ Walnut + Vải</div>
                    <div class="d-product-details-item"><b>Màu sắc:</b> Đỏ cam lam chàm tím</div>
                    <div class="d-product-details-item"><b>Tình trạng:</b> Còn hàng hoặc hết hàng</div>
                    <div class="d-product-details-item"><b>Mô tả:</b> Giường Skagen nổi bật cho phòng ngủ theo phong cách Bắc Âu. Đầu giường bo cong bọc vải mềm mại như thể hiện sự chào đón bạn với vòng tay rộng mở và mời bạn dành buổi tối sớm và buổi sáng lười biếng trong sự thoải mái và phong cách. Là sản phẩm trong bộ sưu tập Skagen, giường ngủ Skagen phù hợp với những phòng ngủ có diện tích lớn. </div> --}}
                    {!!$product_first->detail_pro!!}
                    <div class="d-product-details-item">
                        <button class="d-product-contact-btn">
                            <a href="">Mua ngay</a>
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <div class="d-product-more">
            <div class="row d-product-more-header">
                SẢN PHẨM GỢI Ý
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <a class="d-product-more-img-wrap" href="#">
                        <img src="https://www.nhaxinh.com/photo/giuong-penny-500.jpg" alt="" class="d-product-more-img">
                        <div class="d-product-more-details">
                            <div class="d-product-more-infor">
                                Giường Penny 1m6
                            </div>
                            <div class="d-product-more-infor">
                                Kích thước: D2000 - R1600 - C1110<br>
                            </div>
                            <div class="d-product-more-infor">
                                Tình trạng: Còn hàng
                            </div>
                            
                        </div>
                    </a>
                </div>
                <div class="col-sm-4">
                    <a class="d-product-more-img-wrap" href="#">
                        <img src="https://www.nhaxinh.com/photo/1000-nhaxinh-phong-ngu-giuong-harmony_-_copy.jpg" alt="" class="d-product-more-img">
                        <div class="d-product-more-details">
                            <div class="d-product-more-infor">
                                Giường Harmony 1M6
                            </div>
                            <div class="d-product-more-infor">
                                Kích thước: D2000- R1600- C1210<br>
                            </div>
                            <div class="d-product-more-infor">
                                Tình trạng: Còn hàng
                            </div>
                            
                        </div>
                    </a>
                </div>
                <div class="col-sm-4">
                    <a class="d-product-more-img-wrap" href="#">
                        <img src="https://www.nhaxinh.com/photo/giuong-shadow.jpg" alt="" class="d-product-more-img">
                        <div class="d-product-more-details">
                            <div class="d-product-more-infor">
                                Giường Shadow 1m6
                            </div>
                            <div class="d-product-more-infor">
                                Kích thước: D2000 - R1600- C1080<br>
                            </div>
                            <div class="d-product-more-infor">
                                Tình trạng: Còn hàng
                            </div>
                            
                        </div>
                    </a>
                </div>
                <div class="col-sm-4">
                    <a class="d-product-more-img-wrap" href="#">
                        <img src="https://www.nhaxinh.com/photo/500-iris-grey.jpg" alt="" class="d-product-more-img">
                        <div class="d-product-more-details">
                            <div class="d-product-more-infor">
                                Giường hộc kéo Iris 1m6 màu Xám
                            </div>
                            <div class="d-product-more-infor">
                                Kích thước: D2000 - R1600 - C1112<br>
                            </div>
                            <div class="d-product-more-infor">
                                Tình trạng: Còn hàng
                            </div>
                            
                        </div>
                    </a>
                </div>
                <div class="col-sm-4">
                    <a class="d-product-more-img-wrap" href="#">
                        <img src="https://www.nhaxinh.com/photo/giuong-lacvien-82804-2-500.jpg" alt="" class="d-product-more-img">
                        <div class="d-product-more-details">
                            <div class="d-product-more-infor">
                                Giường Lạc Viên 1M6
                            </div>
                            <div class="d-product-more-infor">
                                Kích thước: D2000 - R1600 - C1200<br>
                            </div>
                            <div class="d-product-more-infor">
                                Tình trạng: Còn hàng
                            </div>
                            
                        </div>
                    </a>
                </div>
                <div class="col-sm-4">
                    <a class="d-product-more-img-wrap" href="#">
                        <img src="https://www.nhaxinh.com/photo/giuong-penny-500.jpg" alt="" class="d-product-more-img">
                        <div class="d-product-more-details">
                            <div class="d-product-more-infor">
                                Giường Penny 1m6
                            </div>
                            <div class="d-product-more-infor">
                                Kích thước: D2000 - R1600 - C1110<br>
                            </div>
                            <div class="d-product-more-infor">
                                Tình trạng: Còn hàng
                            </div>
                            
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection