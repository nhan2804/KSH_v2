<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.css"/>
    <link rel="stylesheet" href="{{asset('frontend/css/home.css')}}">
    <link rel="stylesheet" href="{{asset('frontend/css/news.css')}}">
    <link rel="stylesheet" href="{{asset('frontend/css/intro.css')}}">
</head>
<body>
    <div class="web">
        <div class="wrap__header pt-1 pb-1 sticky__pined">
          <div class="container header__section1">
              <a href="index.html"><img src="{{'frontend/img/logo.png'}}" class="logo" alt=""></a>
              <ul class="list__header">
                  <li><i class="fas fa-align-left"></i> Giới thiệu</li>
                  <li><i class="fas fa-award"></i> Chất lượng dịch vụ</li>
                  <li><i class="fab fa-black-tie"></i> Sứ mệnh</li>
              </ul>
              <form class="form__search" action="">
                  <input placeholder="Nhập từ khóa để tìm kiếm" class="form__input" type="text" name="" id="">
                  <button class="form__submit"><i class="fas fa-search"></i></button>
              </form>
          </div>
      </div>
        <div class="header">
            <!-- Đưa section 1 ra để dùng sticky :v cơ mà hình như sai r, để tui sửa lại -->
            <div class="wrap__header header__bg">
                <div class="container header__section2">
                    <ul class="list__menu p-0 m-0">
                        <li class="item__menu">
                          <a href="index.html" class="item__menu-link" style="background: #292626">Trang chủ</a>
                        </li>
                        <li class="item__menu">
                          <a href="javascript:avoid(0)" class="item__menu-link">
                            Sản phẩm<i class="fas fa-chevron-down" style="margin-left: 4px"></i>
                          </a>
                          <ul class="submenu p-0">
                                <li>
                                    <a href="#" target="_blank" class="header-major__link">Nội thất Xuân Hòa Đà Nẵng</a>
                                </li>
                                <li>
                                    <a href="#" target="_blank" class="header-major__link">Công ty TNHH Tư vấn & Đầu tư KSH</a>
                                </li>
                                <li>
                                    <a href="#" target="_blank" class="header-major__link">Công ty TNHH Tư vấn & Đầu tư KSH</a>
                                </li>
                          </ul>
                        </li>
                        <li class="item__menu">
                            <a href="javascript:avoid(0)" class="item__menu-link">
                                Các lĩnh vực <i class="fas fa-chevron-down"></i>
                            </a>
                            <ul class="submenu p-0">
                                <li>
                                    <a href="https://www.xuanhoa.vn/" target="_blank" class="header-major__link">Nội Thất văn phòng, trường học</a>
                                </li>
                                <li>
                                    <a href="https://www.xuanhoa.vn/" target="_blank" class="header-major__link">Mặt hàng điện tử, điện lạnh</a>
                                </li>
                                <li>
                                    <a href="https://www.xuanhoa.vn/" target="_blank" class="header-major__link">Dịch vụ phát triển thị trường</a>
                                </li>
                                <li>
                                    <a href="https://www.xuanhoa.vn/" target="_blank" class="header-major__link">Phân phối bất động sản</a>
                                </li>
                                <li>
                                    <a href="https://www.xuanhoa.vn/" target="_blank" class="header-major__link">Phát triển thương hiệu, tư vấn chiến lược</a>
                                </li>
                                <li>
                                    <a href="https://www.xuanhoa.vn/" target="_blank" class="header-major__link">Giáo dục và đào tạo</a>
                                </li>
                            </ul>
                        </li>
                        <li class="item__menu">
                            <a href="news.html" class="item__menu-link">Tin tức</a>
                        </li>
                        <li class="item__menu">
                            <a href="contact.html" class="item__menu-link">Tư vấn khách hàng</a>
                        </li>
                        <li class="item__menu">
                            <a href="javascript:avoid(0)" class="item__menu-link">Về KSH <i class="fas fa-chevron-down"></i></a>
                            <ul class="submenu p-0" style="width: 100%;">
                                <li>
                                    <a href="general_introduce.html" class="header-major__link">Giới thiệu chung</a>
                                </li>
                                <li>
                                    <a href="company_system.html" class="header-major__link">Hệ thống công ty</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        @yield('content')
<footer class="page-footer font-small mdb-color pt-4">

  <!-- Footer Links -->
  <div class="container text-center text-md-left">

    <!-- Footer links -->
    <div class="row text-center text-md-left mt-3 pb-3">

      <!-- Grid column -->
      <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
        <h6 class="text-uppercase mb-4 font-weight-bold">KSH Company</h6>
        <p>Công ty TNHH Tư vấn & Đầu tư KSH.</p>
        <p>KSH consulting and invesment Company Limited.</p>
      </div>
      <!-- Grid column -->

      <hr class="w-100 clearfix d-md-none">

      <!-- Grid column -->
      <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
        <h6 class="text-uppercase mb-4 font-weight-bold">Sản phẩm</h6>
        <p>
          <a href="https://www.xuanhoa.vn/" class="footer-item" target="_blank">Nội thất</a>
        </p>
        <p>
          <a href="#!" class="footer-item">Kinh doanh</a>
        </p>
        <p>
          <a href="#!" class="footer-item">Giáo dục</a>
        </p>
        <p>
          <a href="#!" class="footer-item">Bất động sản</a>
        </p>
      </div>
      <!-- Grid column -->

      <hr class="w-100 clearfix d-md-none">

      <!-- Grid column -->
      <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
        <h6 class="text-uppercase mb-4 font-weight-bold">Liên kết</h6>
        <p>
          <a href="#!" class="footer-item">Tài khoản</a>
        </p>
        <p>
          <a href="#!" class="footer-item">Trở thành đối tác</a>
        </p>
        <p>
          <a href="#!" class="footer-item">Take me</a>
        </p>
        <p>
          <a href="#!" class="footer-item">Trợ giúp</a>
        </p>
      </div>

      <!-- Grid column -->
      <hr class="w-100 clearfix d-md-none">

      <!-- Grid column -->
      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
        <h6 class="text-uppercase mb-4 font-weight-bold">Liên hệ</h6>
        <p>
          <i class="fas fa-home mr-1 icon__home"></i> Số 5 Xô Viết Nghệ Tĩnh, Hoà Cường Nam, Hải Châu, Đà Nẵng</p>
        <p>
          <i class="fas fa-envelope mr-1 icon__mail"></i> ksh@gmail.com</p>
        <p>
          <i class="fas fa-phone mr-1 icon__phone"></i> Tel + 0236.3680666</p>
        <p>
          <i class="fas fa-print mr-1 icon__fax"></i> Fax + 0236.3680799</p>
      </div>
      <!-- Grid column -->

    </div>
    <!-- Footer links -->

    <hr>

    <!-- Grid row -->
    <div class="row d-flex align-items-center">

      <!-- Grid column -->
      <div class="col-md-7 col-lg-8">

        <!--Copyright-->
        <p class="text-center text-md-left">© 2020 Copyright:
          <a href="https://mdbootstrap.com/">
            <strong>ksh.vn</strong>
          </a> | Design by N2P
        </p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-5 col-lg-4 ml-lg-0">
        <!-- Social buttons -->
        <div class="text-center text-md-right">
          <ul class="list-unstyled list-inline">
            <li class="list-inline-item">
              <a class="btn-floating btn-sm rgba-white-slight mx-1">
                <i class="fab fa-facebook-f"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a class="btn-floating btn-sm rgba-white-slight mx-1">
                <i class="fab fa-twitter"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a class="btn-floating btn-sm rgba-white-slight mx-1">
                <i class="fab fa-google-plus-g"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a class="btn-floating btn-sm rgba-white-slight mx-1">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </li>
          </ul>
        </div>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

</footer>
<!-- Footer -->
<div style="position: fixed; left: -2px; bottom: -2px; ; z-index: 99;" class="wrapper">
  <div class="ring">
      <a href="tel:+84367663090">
          <div class="coccoc-alo-phone coccoc-alo-green coccoc-alo-show">
          <div class="coccoc-alo-ph-circle"></div>
          <div class="coccoc-alo-ph-circle-fill"></div>
          <div class="coccoc-alo-ph-img-circle"></div>
      </div>
      </a>
  </div>
</div>
<!-- top page -->

<a href="javascript:void(0)"><div class="page"><i class="fas fa-chevron-up"></i></div></a>
        </div>
</body>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.js"></script>
<script src="{{asset('frontend/js/js.js')}}">
</script>
<script>
   AOS.init({
    easing: 'ease-out-back',
    duration: 2000,
    delay: 0,
    once: true,
    disable: 'mobile'
 });
  </script>
</html>