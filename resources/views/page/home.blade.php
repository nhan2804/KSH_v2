@extends('welcome')
@section('title','Mang đến cho bạn niềm tin')
@section('content')
<div class="main">
                <!-- slide -->
                <div id="demo" class="carousel slide" data-ride="carousel">
                    <ul class="carousel-indicators">
                      <li data-target="#demo" data-slide-to="0" class="active"></li>
                      <li data-target="#demo" data-slide-to="1"></li>
                      <li data-target="#demo" data-slide-to="2"></li>
                    </ul>
                  
                    <!-- The slideshow -->
                    <div class="carousel-inner custome__carousel">
                      <div class="carousel-item active">
                        <img src="https://kienviet.net/wp-content/uploads/2019/09/cropped-noi-that-dong-gia-1-1440x809.jpg" alt="Los Angeles">
                      </div>
                      <div class="carousel-item">
                        <img src="https://donggia.vn/wp-content/uploads/2020/01/thiet-ke-noi-that-dep-xu-huong-bespoke-2020.jpg" alt="Chicago">
                      </div>
                      <div class="carousel-item">
                        <img src="https://homehome.vn/wp-content/uploads/du-an-thiet-ke-noi-that-biet-thu-quang-yen-quang-ninh-1.jpg" alt="New York">
                      </div>
                    </div>
                  
                    <!-- Left and right controls -->
                    <a class="carousel-control-prev" href="#demo" data-slide="prev">
                      <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#demo" data-slide="next">
                      <span class="carousel-control-next-icon"></span>
                    </a>
                  
                  </div>
                  <!-- endslide -->
                  <br>
                  <div class="container my-4">
                    <div class="home-branch">
                      <i class="fas fa-angle-double-right"></i>
                      <span>TẦM NHÌN - SỨ MỆNH</span>
                      <i class="fas fa-angle-double-left"></i>
                    </div>
                    <div class="home-brand-details">
                      <div>
                        Tận tâm phục vụ nhằm mang đến sự thỏa mãn cao nhất cho khách hàng bằng chất lượng sản phẩm và dịch vụ tốt nhất; góp phần nâng cao dân trí, bồi dưỡng nhân tài.<br>
                      </div>
                    </div>
                    <div class="text-center">
                      <i class="fas fa-arrow-right"></i>
                        <span>Hoạt động trong nhiều lĩnh vực</span>
                      <i class="fas fa-arrow-left"></i>
                    </div>
                    <div class="text-center">
                      <i class="fas fa-arrow-right"></i>
                        <span>Lấy chất lượng làm mục tiêu</span>
                      <i class="fas fa-arrow-left"></i>
                    </div>
                    <div class="text-center">
                      <i class="fas fa-arrow-right"></i>
                        <span>Đội ngũ chuyên môn cao</span>
                      <i class="fas fa-arrow-left"></i>
                    </div>
                    <div class="home-branch-illustration d-flex justify-content-center">
                      <div class="home-brand-icon-wrap">
                        <div class="home-brand-icon">
                          <i class="fas fa-user-tie"></i>
                        </div>
                        <div class="home-brand-icon-details">
                          Chuyên nghiệp
                        </div>
                      </div>
                      <div class="home-brand-icon-wrap">
                        <div class="home-brand-icon">
                          <i class="fas fa-hand-spock"></i>
                        </div>
                        <div class="home-brand-icon-details">
                          Thân thiện
                        </div>
                      </div>
                      <div class="home-brand-icon-wrap">
                        <div class="home-brand-icon">
                          <i class="fas fa-thumbs-up"></i>
                        </div>
                        <div class="home-brand-icon-details">
                          Tin tưởng
                        </div>
                      </div>
                      
                      
                    </div>
                  </div>

                <!-- intro -->
                <div class="intro" data-aos="zoom-in" 
                data-aos-duration="1200">
                  <div class="layer__img"></div>
                  <div class="intro__text" >
                    <h2><b>Key of success and happiness</b></h2>
                    <p>Công ty TNHH Tư vấn và Đầu tư KSH tiền thân là Công ty TNHH Phát triển hệ thống Phân phối Miền Trung CDDN, được thành lập năm 2007.Giá trị cốt lõi mà KSH đang theo đuổi là niềm tin vào sự nỗ lực và tinh thần làm chủ doanh nghiệp của các thành viên công ty. Sự phát triển của KSH được kích hoạt từ hạt nhân là đội ngũ tri thức trẻ có trình độ chuyên môn cao, năng động, chuyên nghiệp, sáng tạo, dám chấp nhận thử thách và mang tinh thần của doanh nhân Việt trong thời đại 
                    mới.</p>
                    <a href="{{ URL::to('/introduce') }}" class="btn__primary">Xem chi tiết</a>
                  </div>
                  <img class="img-fluid" src="https://dulichtoday.vn/wp-content/uploads/2017/06/1467702984.jpg" alt="">
                </div>
            <br>
            <br>
            <br>
            <div class="intro__branch">CÁC SẢN PHẨM CHÚNG TÔI CUNG CẤP</div>
            <div class="container">
              <div class="row multiple-items">
                <div class="col-lg-12 ">
                  <a href="#" class="branch"> 
                    <div class="s-intro-label">Kinh doanh</div>
                    <img  class="img-fluid home-img-major" src="https://bytuong.com/wp-content/uploads/2017/08/12-kinh-nghiem-kinh-doanh-nam-nhat-bytuong-com-e1502964584292.jpg" alt="" >
                  </a>
                </div>
                <div class="col-lg-12 ">
                  <a href="#" class="branch"> 
                    <div class="s-intro-label">Giáo dục</div>
                    <img  class="img-fluid home-img-major" src="https://moet.gov.vn/content/tintuc/PublishingImages/AnhTinBai/Cuc%20KTKDCL/cuc%20ktkdcl%2001_23122016.jpg?RenditionID=1" alt="" >
                  </a>
                </div>
                <div class="col-lg-12 ">
                  <a href="#" class="branch"> 
                    <div class="s-intro-label">Nội thất</div>
                    <img  class="img-fluid home-img-major" src="https://www.xuanhoa.vn/wp-content/uploads/2018/08/nt1.jpg" alt="" >
                  </a>
                </div>
                <div class="col-lg-12 ">
                  <a href="#" class="branch"> 
                    <div class="s-intro-label">Dịch vụ</div>
                    <img  class="img-fluid home-img-major" src="https://bytuong.com/wp-content/uploads/2017/08/12-kinh-nghiem-kinh-doanh-nam-nhat-bytuong-com-e1502964584292.jpg" alt="" >
                  </a>
                </div>
                <div class="col-lg-12 ">
                  <a href="#" class="branch"> 
                    <div class="s-intro-label">Bất động sản</div>
                    <img  class="img-fluid home-img-major" src="{{ asset('images/bat_dong_san.jpg') }}" alt="" >
                  </a>
                </div>
              </div>
              
            </div>
            <h3 class="intro__branch">MẶT HÀNG VÀ ƯU ĐÃI</h3>
            <div class="container">
              <div class="row">
                <div data-aos="fade-right" class="col-lg-6 hot__product">
                  <div class="img__post">
                    <img class="img-fluid" src="https://noithatthienminh.vn/wp-content/uploads/2019/06/k1-1.jpg" alt="">
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="row">
                    <div class="col-lg-6 hot__product" data-aos="fade-down-left ">
                      <div class="img__post">
                        <img class="img-fluid" src="https://noithatnamphat.vn/uploads/source/ban-chan-sat/69391004-2370133426579985-4224111313552408576-n.jpg" alt="">
                      </div>
                    </div>
                    <div class="col-lg-6 hot__product" data-aos="fade-down-left" data-aos-delay="150">
                      <div class="img__post">
                        <img class="img-fluid" src="https://noithatnamphat.vn/uploads/source/ban-chan-sat/69391004-2370133426579985-4224111313552408576-n.jpg" alt="">
                      </div>
                    </div>
                    <div class="col-lg-12 mt-4 hot__product" data-aos="fade-up-left">
                      <div class="img__post">
                        <img style="height: 190px;width: 100%;" class="img-fluid" src="https://noithatnamphat.vn/uploads/source/ban-chan-sat/69391004-2370133426579985-4224111313552408576-n.jpg" alt="">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- news -->
            <br>
            <br>
            <br>
            <div style="width: 500px;" class="intro__branch">NHỮNG THÀNH TỰU CỦA CÔNG TY CHÚNG TÔI</div>
            <div class="container">
              <div class="row ">
                <div class="col-lg-4 mb-2">
                  <div class="prize">
                    <img class="img-fluid" src="{{ asset('images/achievement1.jpg') }}" alt="">
                    <p class="text-center">Hội doanh nhân trẻ thành phố Đà Nẵng năm 2017</p>
                  </div>
                </div>
                <div class="col-lg-4 mb-2">
                  <div class="prize">
                    <img class="img-fluid" src="{{ asset('images/achievement2.jpg') }}" alt="">
                    <p class="text-center">Phòng thương mại và Công nghiệp Việt Nam</p>
                  </div>
                </div>
                <div class="col-lg-4 mb-2">
                  <div class="prize">
                    <img class="img-fluid" src="{{ asset('images/achievement2.jpg') }}" alt="">
                    <p class="text-center">Hội doanh nhân trẻ thành phố Đà Nẵng năm 2017</p>
                  </div>
                </div>
                <div class="col-lg-4 mb-2">
                  <div class="prize">
                    <img class="img-fluid" src="{{ asset('images/achievement4.jpg') }}" alt="">
                    <p class="text-center">Một số bằng khen tiêu biểu khác</p>
                  </div>
                </div>
                <div class="col-lg-4 mb-2">
                  <div class="prize">
                    <img class="img-fluid" src="{{ asset('images/achievement3.jpg') }}" alt="">
                    <p class="text-center">Tổng thầu phân phối miền Trung</p>
                  </div>
                </div>
                <div class="col-lg-4 mb-2">
                  <div class="prize">
                    <img class="img-fluid" src="{{ asset('images/achievement5.jpg') }}" alt="">
                    <p class="text-center">Thành viên Hội Mỹ nghệ và Chế biến gỗ thành phố Hồ Chí Minh</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="container">
              <div class="intro__branch">TIN TỨC</div>
                <div class="row my-3">
                  <div class="col-sm-3 home-news-img-wrap">
                    <a href="#"><img src="https://www.xuanhoa.vn/wp-content/uploads/2020/08/fpt-can-tho-9.jpg" alt=""></a>
                  </div>
                  <div class="col-sm-8 home-news-details">
                    <div class="home-news-title">
                      <a href="#"> Xuân Hòa bàn giao nội thất cho Ký túc xá Đại học FPT Cần Thơ</a>
                    </div>
                    
                    <div class="home-news-views">
                      <i class="far fa-eye"></i> 1312 lượt xem
                    </div>
                    <div class="home-news-time">
                      <i class="far fa-clock"></i> 10/10/2020
                    </div>
                    <div class="home-news-infor">
                      Hơn 500 bộ giường tầng đã được Xuân Hòa hoàn thiện lắp đặt và bàn giao cho Ký túc xá Đại học FPT Cần Thơ tại địa chỉ Cầu Rau Răm, đường Nguyễn Văn Cừ nối dài, An Bình, Q. Ninh Kiều, TP. Cần Thơ ngay trước thềm năm học mới 2020 – 2021.
                    </div>
                  </div>
                </div>
                <div class="row my-3">
                  <div class="col-sm-3 home-news-img-wrap">
                    <a href="#"><img src="https://www.xuanhoa.vn/wp-content/uploads/2020/07/cong-doan-5.jpg" alt=""></a>
                  </div>
                  <div class="col-sm-8 home-news-details">
                    <div class="home-news-title">
                      <a href="#">Xuân Hòa “bội thu” giải thưởng từ Công đoàn ngành Công thương
                      </a>
                    </div>
                    
                    <div class="home-news-views">
                      <i class="far fa-eye"></i> 561 lượt xem
                    </div>
                    <div class="home-news-time">
                      <i class="far fa-clock"></i> 16/07/2020
                    </div>
                    <div class="home-news-infor">
                      Sáng ngày 15/7/2020, Đại diện Công đoàn Công ty Cổ phần Xuân Hòa Việt Nam và các cán bộ công nhân viên xuất sắc đã tham dự Hội nghị Sơ kết công tác công đoàn 6 tháng đầu năm 2020, tuyên dương Sáng kiến sáng tạo, biểu dương gia đình Công nhân viên chức tiêu biểu 2020, Giỏi việc nước – Đảm việc nhà 2019 tại Sở Công thương Thành phố Hà Nội.
                    </div>
                  </div>
                </div>
                <div class="row my-3">
                  <div class="col-sm-3 home-news-img-wrap">
                    <a href="#"><img src="https://www.xuanhoa.vn/wp-content/uploads/2020/08/ocb-vinh-phuc.jpg" alt=""></a>
                  </div>
                  <div class="col-sm-8 home-news-details">
                    <div class="home-news-title">
                      <a href="#"> Xuân Hòa bàn giao nội thất văn phòng cho OCB Vĩnh Phúc</a>
                    </div>
                    
                    <div class="home-news-views">
                      <i class="far fa-eye"></i> 1561 lượt xem
                    </div>
                    <div class="home-news-time">
                      <i class="far fa-clock"></i> 04/08/2020
                    </div>
                    <div class="home-news-infor">
                      Vừa qua, Xuân Hòa đã hoàn thiện lắp đặt và tiến hành bàn giao toàn nội thất cho chi nhánh ngân hàng OCB tại Vĩnh Phúc (OCB Vĩnh Phúc), đảm bảo Chi nhánh đi vào khai trương và hoạt động theo kế hoạch.
                    </div>
                  </div>
                </div>
                <div class="row home-news-see-more">
                  <a href="{{ URL::to('/news') }}">Xem thêm</a>
                </div>
            </div>
            <div class="container mb-4">
              <div class="intro__branch">ĐỐI TÁC KHÁCH HÀNG</div>
              <div class="row align-items-center">
                <div class="col-sm-2 home-cooperator">
                  <img src="https://xuanhoa.net.vn/Images/logo-xuan-hoa.png" alt="">
                </div>
                <div class="col-sm-2 home-cooperator">
                  <img src="https://tapdoanthanhnien.org.vn/uploads/logo/LOGO-TIDILED.jpg" alt="">
                </div>
                <div class="col-sm-2 home-cooperator">
                  <img src="https://anhsangvacuocsong.vn/wp-content/uploads/2019/08/83524logo_dienquang.png" alt="">
                </div>
                <div class="col-sm-2 home-cooperator">
                  <img src="https://www.vnhelp.org/wp-content/uploads/2012/10/emw.jpg" alt="">
                </div>
                <div class="col-sm-2 home-cooperator">
                  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR1MQr1iPIciNXeHkAVT2pwI5MZO9qwUVUaFQ&usqp=CAU" alt="">
                </div>
                <div class="col-sm-2 home-cooperator">
                  <img src="https://static.ybox.vn/2018/8/5/1534481143491-P&G%20Procter%20&%20Gamble.jpg" alt="">
                </div>

              </div>
            </div>
        </div>
@endsection