<!doctype html>
<html lang="en">

<head>
  <title>Admin - @yield('title')</title>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <link href="{{asset('backend/assets/css/material-dashboard.css?v=2.1.0')}}" rel="stylesheet" />
    <script src="{{asset('backend/ckeditor/ckeditor.js')}}"></script>
</head> 
<body class="dark-edition">
  <div class="wrapper ">
    <div class="sidebar" data-color="orange" data-background-color="black" data-image="{{asset('/assets/img/sidebar-2.jpg')}}">
      <div class="logo">
        <a  class="simple-text logo-normal">
          Admin
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item active  ">
            <a class="nav-link" href="javascript:void(0)">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item active  ">
            <a class="nav-link" href="#">
              <i class="material-icons">product</i>
              <p>Sản phẩm</p>
            </a>
          </li>
          <li class="nav-item active  ">
            <a class="nav-link" href="{{URL::to('admin/news')}}">
              <i class="material-icons">new</i>
              <p>Tin tức</p>
            </a>
          </li>
          <!-- your sidebar here -->
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="javascript:void(0)">Dashboard</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="javascript:void(0)">
                  <i class="material-icons">notifications</i>
                  <p class="d-lg-none d-md-block">
                    Notifications
                  </p>
                </a>
              </li>
              <!-- your navbar here -->
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          @yield('content')
        </div>
      </div>
      <footer class="footer">
        <div class="container-fluid">
          <nav class="float-left">
            <ul>
              <li>
                <a href="#">
                  NNN
                </a>
              </li>
            </ul>
          </nav>
          <div class="copyright float-right">
            &copy;
            <script>
              document.write(new Date().getFullYear())
            </script>, made with by
            <a href="#" target="_blank">N2P</a> for a better web.
          </div>
          <!-- your footer here -->
        </div>
      </footer>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="{{asset('backend/assets/js/core/jquery.min.js')}}"></script>
  <script src="{{asset('backend/assets/js/core/popper.min.js')}}"></script>
  <script src="{{asset('backend/assets/js/core/bootstrap-material-design.min.js')}}"></script>
  <script src="https://unpkg.com/default-passive-events"></script>
  <!-- <script src="js/plugins/perfect-scrollbar.jquery.min.js"></script> -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <script src="{{asset('backend/assets/js/plugins/chartist.min.js')}}"></script>
  <script src="{{asset('backend/assets/js/plugins/bootstrap-notify.js')}}"></script>
  <script src="{{asset('backend/assets/js/material-dashboard.js?v=2.1.0')}}"></script>
  <script src="{{asset('backend/assets/demo/demo.js')}}"></script>

  <script>

  </script>
</body>

</html>