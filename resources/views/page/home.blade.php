@extends('welcome')
@section('title','Tin tức')
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
                  <div class="container">
                    <div class="row mb-3">
                        <div class="col-lg-6 " data-aos="flip-up" data-aos-offset="300">
                            <img style="box-shadow: 6px 6px 5px #ccc;" class="img-fluid" src="https://www.woodenstreet.com/mobile/images-m/home/banner-login.jpg?v=179.3" alt="">
                        </div>
                        <div class="col-lg-6 "  data-aos="fade-left" data-aos-offset="500">
                            <h3>Lorem is hello</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis quo odit error similique animi neque? Vel magni cupiditate quibusdam nisi, ipsa exercitationem tempora mollitia, aliquam quisquam doloribus voluptatum. Nisi, qui.</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore ipsam blanditiis pariatur voluptates consectetur veritatis adipisci eligendi dolor ea esse. Eveniet necessitatibus accusantium cupiditate a delectus modi deleniti est cumque.</p>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-lg-6 "  data-aos="fade-left" data-aos-offset="300">
                            <h3>Lorem is hello</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis quo odit error similique animi neque? Vel magni cupiditate quibusdam nisi, ipsa exercitationem tempora mollitia, aliquam quisquam doloribus voluptatum. Nisi, qui.</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore ipsam blanditiis pariatur voluptates consectetur veritatis adipisci eligendi dolor ea esse. Eveniet necessitatibus accusantium cupiditate a delectus modi deleniti est cumque.</p>
                        </div>
                        <div class="col-lg-6" data-aos="flip-up" data-aos-offset="300">
                            <img style="box-shadow: 6px 6px 5px #ccc;" class="img-fluid" src="https://i.ebayimg.com/images/g/0mQAAOSw0OJXL12b/s-l800.jpg" alt="">
                        </div>
                    </div>

                    <br>
                  </div>

                <!-- intro -->
                <div class="intro" data-aos="zoom-in" 
                data-aos-duration="1200">
                  <div class="layer__img"></div>
                  <div class="intro__text" >
                    <h3>Key of success and happiness</h3>
                    <p>Khởi nguồn từ 1999 với ý tưởng tạo ra sự khác biệt và gu thẩm mỹ Tinh Tế, Nhà Xinh đã trở thành và giữ vững vị trí thương hiệu nội thất hàng đầu Việt Nam. Một quá trình dài của sự tìm tòi và đầy cảm hứng, Nhà Xinh đã thiết kế và sản xuất ra những sản phẩm nội thất hợp thời và độc đáo, kết hợp với quá trình chọn lọc kỹ lưỡng những món đồ trang trí để tạo nên không gian sống hài hòa, Tinh Tế và sang trọng. Nội thất Nhà Xinh chính là sự lựa chọn của những người Tinh Tế.</p>
                    <a href="" class="btn__primary">Xem chi tiết</a>
                  </div>
                  <img class="img-fluid" src="https://images.homify.com/c_fill,f_auto,h_500,q_auto,w_1280/v1437155643/p/photo/image/28636/Botique_Caravans20101116_008DSC_6220.jpg" alt="">
                </div>
            <br>
            <br>
            <br>
            <div class="intro__branch">CÁC SẢN PHẨM CHÚNG TÔI CUNG CẤP</div>
            <div class="container">
              <div class="row multiple-items">
                  <div class="col-lg-12 ">
                    <a href="#" class="branch"> 
                      <div class="s-intro-label">Nội thất</div>
                      <img  class="img-fluid" src="https://www.noithathoanmy.com.vn/blog/wp-content/uploads/2018/11/noi-that-go-phong-khach-dep.jpg" alt="">
                    </a>
                  </div>
                  <div class="col-lg-12 ">
                    <a href="#" class="branch"> 
                      <div class="s-intro-label">Kinh doanh</div>
                      <img  class="img-fluid" src="https://www.noithathoanmy.com.vn/blog/wp-content/uploads/2018/11/noi-that-go-phong-khach-dep.jpg" alt="">
                    </a>
                  </div>
                  <div class="col-lg-12 ">
                    <a href="#" class="branch"> 
                      <div class="s-intro-label">Giáo dục</div>
                      <img  class="img-fluid" src="https://www.noithathoanmy.com.vn/blog/wp-content/uploads/2018/11/noi-that-go-phong-khach-dep.jpg" alt="">
                    </a>
                  </div>
                  <div class="col-lg-12 ">
                    <a href="#" class="branch"> 
                      <div class="s-intro-label">Dịch vụ</div>
                      <img  class="img-fluid" src="https://www.noithathoanmy.com.vn/blog/wp-content/uploads/2018/11/noi-that-go-phong-khach-dep.jpg" alt="">
                    </a>
                  </div>

              </div>
              
            </div>
            <h3 style="text-align: center;">MẶT HÀNG VÀ ƯU ĐÃI</h3>
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
                    <img class="img-fluid" src="img/prize.jpg" alt="">
                    <h3>Bằng khen Lorem ipsum!</h3>
                    <p>Lorem ipsum dolor sit amet nemo alias numquam nihil ut natus error cum dolorum quis sapiente veniam asperiores laborum sequi.</p>
                  </div>
                </div>
                <div class="col-lg-4 mb-2">
                  <div class="prize">
                    <img class="img-fluid" src="img/prize3.jpg" alt="">
                    <h3>Bằng khen Lorem ipsum!</h3>
                    <p>Lorem ipsum dolor sit amet nemo alias numquam nihil ut natus error cum dolorum quis sapiente veniam asperiores laborum sequi.</p>
                  </div>
                </div>
                <div class="col-lg-4 mb-2">
                  <div class="prize">
                    <img class="img-fluid" src="img/prize1.jpg" alt="">
                    <h3>Bằng khen Lorem ipsum!</h3>
                    <p>Lorem ipsum dolor sit amet nemo alias numquam nihil ut natus error cum dolorum quis sapiente veniam asperiores laborum sequi.</p>
                  </div>
                </div>
                <div class="col-lg-4 mb-2">
                  <div class="prize">
                    <img class="img-fluid" src="img/prize2.jpg" alt="">
                    <h3>Bằng khen Lorem ipsum!</h3>
                    <p>Lorem ipsum dolor sit amet nemo alias numquam nihil ut natus error cum dolorum quis sapiente veniam asperiores laborum sequi.</p>
                  </div>
                </div>
                <div class="col-lg-4 mb-2">
                  <div class="prize">
                    <img class="img-fluid" src="img/prize3.jpg" alt="">
                    <h3>Bằng khen Lorem ipsum!</h3>
                    <p>Lorem ipsum dolor sit amet nemo alias numquam nihil ut natus error cum dolorum quis sapiente veniam asperiores laborum sequi.</p>
                  </div>
                </div>
                <div class="col-lg-4 mb-2">
                  <div class="prize">
                    <img class="img-fluid" src="img/prize2.jpg" alt="">
                    <h3>Bằng khen Lorem ipsum!</h3>
                    <p>Lorem ipsum dolor sit amet nemo alias numquam nihil ut natus error cum dolorum quis sapiente veniam asperiores laborum sequi.</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="container">
              <div class="intro__service mt-4 mb-4">HÃY ĐỂ CHÚNG TÔI GIÚP BẠN</div>
              <div class="row mb-4">
                <div class="col-lg-3" data-aos-delay="50" data-aos="fade-down">
                  <div   class="service">
                    <img class="img-fluid" src="img/team.png" alt="">
                    <h3>Chất lượng</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At tempore dolor explicabo accusantium, </p>
                  </div>
                </div>
                <div class="col-lg-3" data-aos-delay="250" data-aos="fade-down">
                  <div   class="service">
                    <img class="img-fluid" src="img/team.png" alt="">
                    <h3>Uy tín</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At tempore dolor explicabo accusantium, </p>

                  </div>
                </div>
                <div class="col-lg-3" data-aos-delay="450" data-aos="fade-down">
                  <div  class="service">
                    <img class="img-fluid" src="img/team.png" alt="">
                    <h3>Chuyên nghiệp</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At tempore dolor explicabo accusantium, </p>

                  </div>
                </div>
                <div class="col-lg-3" data-aos-delay="650" data-aos="fade-down">
                  <div  class="service">
                    <img class="img-fluid" src="img/team.png" alt="">
                    <h3>Nhanh chóng</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At tempore dolor explicabo accusantium, </p>

                  </div>
                </div>
              </div>
            </div>
        </div>
@endsection