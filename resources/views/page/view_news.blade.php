@extends('welcome')
@section('content')
<div class="main container">
	<div class="row mt-4 mb-2">
                <div class="col-lg-9">
                    <div class="main-post-title">
                      {{$data->title_news}}
                    </div>
                    <div class="main-post-time">
                      <i class="far fa-clock"> 28/04/2001</i>
                    </div>
                    <div class="main-post-content">
                        {!! $data->content_news !!}
                      <div class="main-post-img">
                        <img src="https://www.xuanhoa.vn/wp-content/uploads/2020/08/fpt-can-tho-9.jpg"/>
                      </div>
                      <div class="main-post-img">
                        <img src="https://www.xuanhoa.vn/wp-content/uploads/2020/08/fpt-can-tho-8.jpg"/>
                      </div>
                      <div class="main-post-img">
                        <img src="https://www.xuanhoa.vn/wp-content/uploads/2020/08/fpt-can-tho-7.jpg"/>
                      </div>
                    </div>
                </div>
                <div class="col-lg-3">
                  Quảng cáo ở đây
                </div>
            </div>
            <h4 class="mt-4">XEM THÊM</h4>
            <div class="row">
                <div class="col-lg-12 mb-2">
                    <div class="row">
                        <div class="col-lg-3">
                            <img class="img-fluid" src="https://www.xuanhoa.vn/wp-content/uploads/2020/06/th4-1.jpg" alt="">
                        </div>
                        <div class="col-lg-9">
                            <div>
                                <a href="" class="sub-post-title">Xuân Hòa cung cấp nội thất cho trường Mầm non Quốc tế Camellia</a>
                                <div class="time__post">
                                    <i class="far fa-clock"> 28/04/2001</i>
                                    <i class="far fa-eye"></i> 2009 Lượt xem
                                </div>
                                <p class="sub-post-desc">
                                  Mới đây, Xuân Hòa đã hoàn thiện nội thất cho các lớp học của trường Tiểu học và Trung học cơ sở Nobel (cơ sở 3) – Trường Quốc tế hàng đầu tại Thanh Hóa.

                                  Hiện tại, tất cả các trường học trên toàn quốc đều đang tạm thời đóng cửa vì dịch Covid-19. Tuy không thể thực hiện công tác giáo dục, song đây cũng là thời điểm các trường tái đầu tư, tân trang lại nội thất, không gian lớp học hoặc trang bị nội thất mới để chuẩn bị đón học sinh đi học trở lại ngay sau khi dịch bệnh kết thúc. Trường Tiểu học và Trung học cơ sở Nobel (cơ sở 3) là một trong số đó.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 mb-2">
                    <div class="row">
                        <div class="col-lg-3">
                            <img class="img-fluid" src="https://www.xuanhoa.vn/wp-content/uploads/2019/04/duong-sat-cat-linh-ha-dong-1.jpg" alt="">
                        </div>
                        <div class="col-lg-9">
                            <div>
                                <a href="" class="sub-post-title">
                                  Xuân Hòa cung cấp nội thất cho dự án đường sắt trên cao Cát Linh – Hà Đông
                                </a>
                                <div class="time__post">
                                    <i class="far fa-clock"> 01/04/2019</i>
                                    <i class="far fa-eye"></i> 2020 Lượt xem
                                </div>
                                <p class="sub-post-desc">
                                  Công ty Cổ phần Xuân Hòa Việt Nam (Xuân Hoà) vinh dự là đơn vị thiết kế và cung cấp nội thất cho Trung tâm vận hành đường sắt trên cao Cát Linh – Hà Đông – Bộ não quan trọng của công trình giao thông mang tầm cỡ quốc gia.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</div>
@endsection