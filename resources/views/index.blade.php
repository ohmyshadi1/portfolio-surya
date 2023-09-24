@php
    $site_name = get_setting_value('_site_name');
    $jumbotron = get_section_data('JUMBOTRON');
    $subjumbo = get_section_data('SUBJUMBO');

    $youtube = get_setting_value('_youtube');
    $instagram = get_setting_value('_instagram');
    $twitter = get_setting_value('_twitter');
    $facebook = get_setting_value('_facebook');

    $about = get_section_data('ABOUT');
    $project = get_project();
@endphp

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>{{$site_name}}</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Cardo:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="../assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="public/assets/vendor/aos/aos.css" rel="stylesheet">

  <link rel="icon" type="image/png" href="footer/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="footer/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="footer/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="footer/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="footer/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="footer/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="footer/css/util.css">
	<link rel="stylesheet" type="text/css" href="footer/css/main.css">

  <!-- Template Main CSS File -->
  <link href="../css/main.css" rel="stylesheet">

</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid d-flex align-items-center justify-content-between">

      <a href="#hero" class="logo d-flex align-items-center  me-auto me-lg-0">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="assets/img/logo.png" alt=""> -->
        <h1>Portfolio</h1>
      </a>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="#home" class="active">Home</a></li>
          <li class="dropdown"><a href="#about"><span>About</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li><a href="#about">About</a></li>
              <li><a href="#skills">Skills</a></li>
            </ul>
          </li>
          <li><a href="#project">Arts</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </nav><!-- .navbar -->

      <div class="header-social-links">
        <a href="{{$twitter}}" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="{{$facebook}}" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="{{$instagram}}" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="{{$youtube}}" class="youtube"><i class="bi bi-youtube"></i></i></a>
      </div>
      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

    </div>
  </header><!-- End Header -->

  <!-- ======= Home Section ======= -->
  <section id="home" class="home d-flex flex-column justify-content-center align-items-center" data-aos="fade" data-aos-delay="1500">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-6 text-center">
          <h2>I'm <span>{{$jumbotron->title}}</span>{!! strip_tags($jumbotron->content) !!}</h2>
          <p>{!! strip_tags($subjumbo->content) !!}</p>
          <a href="#contact" class="btn-get-started">Available for hire</a>
        </div>
      </div>
    </div>
  </section><!-- End Home Section -->

  <!-- ======= About Section ======= -->
  <section id="about" class="about" data-aos="fade" data-aos-delay="1500">
    <div class="container2">
      <img src="{{Storage::url($about->thumbnail)}}" alt="..." class="foto"/>
      <div class="row d-flex justify-content-center">
        <div class="col-lg-10 text-left">
          <h2><span>{{$about->title}}</span></h2>
          <p>{!! strip_tags($about->content) !!}</p>
          <a href="#contact" class="btn-get-started">Hire Me!</a>
        </div>
      </div>
    </div>
  </section><!-- End Home Section -->

   <!-- ======= Skill Section ======= -->
   <section id="skills" class="skills d-flex flex-column justify-content-center align-items-center" data-aos="fade" data-aos-delay="1500">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-3 text-center">
          <h2><span>My Skills</span></h2>
        </div>
      </div>
    </div>
  </section>

    <div class="container-fluid2">
      <div class="row2 gy-4 justify-content-center">
        <div class="col-xl-3 col-lg-4 col-md-6">
          <div class="gallery-item h-100">
            <img src="assets/img/gallery/figma2.jpeg" class="img-fluid" alt="">
            <div class="d-flex align-items-center justify-content-center"></div>
          </div>
        </div><!-- End Gallery Item -->
        <div class="col-xl-3 col-lg-4 col-md-6">
          <div class="gallery-item h-100">
            <img src="assets/img/gallery/ai2.jpeg" class="img-fluid" alt="">
            <div class="d-flex align-items-center justify-content-center">
            </div>
          </div>
        </div><!-- End Gallery Item -->
        <div class="col-xl-3 col-lg-4 col-md-6">
          <div class="gallery-item h-100">
            <img src="assets/img/gallery/ps2.jpeg" class="img-fluid" alt="">
            <div class="d-flex align-items-center justify-content-center">
            </div>
          </div>
        </div><!-- End Gallery Item -->
        <div class="col-xl-3 col-lg-4 col-md-6">
          <div class="gallery-item h-100">
            <img src="assets/img/gallery/xd2.jpeg" class="img-fluid" alt="">
            <div class="d-flex align-items-center justify-content-center">
            </div>
          </div>
        </div><!-- End Gallery Item -->

  <main id="main" data-aos="fade" data-aos-delay="1500">

    <!-- ======= Project Section ======= -->

    <section id="project" class="project d-flex flex-column justify-content-center align-items-center" data-aos="fade" data-aos-delay="1500">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-3 text-center">
            <h2><span>My Arts</span></h2>
          </div>
        </div>
      </div>
    </section>

    <div class="row2 justify-content-center">
      @php
          $i=1; 
      @endphp

    @foreach ($project as $item)
    <!-- Project Section {{$i}} -->
    <div class="col-xl-3 col-lg-4 col-md-6 mb-3">
      <div class="gallery-item h-100">
        <img src="{{Storage::url($item->thumbnail)}}" class="img-fluid" alt="">
        <div class="gallery-links d-flex align-items-center justify-content-center">
          <a href="{{Storage::url($item->thumbnail)}}" title="{{$item->title}}" class="glightbox preview-link"><i class="bi bi-arrows-angle-expand"></i></a>
          <div class="subteks">
          <p style="font-family:montserrat; font-weight:bold; font-size:15px; color:white">{{$item->title}}</p>
          </div>
          <a href="{{$item->link}}" class="details-link"><i class="bi bi-link-45deg"></i></a>
        </div>
      </div>
    </div>
      <!-- End Project Item {{$i}} -->
      @php
                $i++;
      @endphp
      @endforeach


    <!-- ======= Contact Us Section ======= -->
    <section id="contact" class="contact">
    <div class="contact1">
      <div class="container-contact1">
        <div class="contact1-pic js-tilt" data-tilt>
          <img src="footer/images/img-01.png" alt="IMG">
        </div>
  
        <form class="contact1-form validate-form">
          <span class="contact1-form-title">
            Contact Us!
          </span>
  
          <div class="wrap-input1 validate-input" data-validate = "Name is required">
            <input class="input1" type="text" name="name" placeholder="Name">
            <span class="shadow-input1"></span>
          </div>
  
          <div class="wrap-input1 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
            <input class="input1" type="text" name="email" placeholder="Email">
            <span class="shadow-input1"></span>
          </div>
  
          <div class="wrap-input1 validate-input" data-validate = "Subject is required">
            <input class="input1" type="text" name="subject" placeholder="Subject">
            <span class="shadow-input1"></span>
          </div>
  
          <div class="wrap-input1 validate-input" data-validate = "Message is required">
            <textarea class="input1" name="message" placeholder="Message"></textarea>
            <span class="shadow-input1"></span>
          </div>
  
          <div class="container-contact1-form-btn">
            <button class="contact1-form-btn">
              <span>
                Send Email
                <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
              </span>
            </button>
          </div>
        </form>
      </div>
    </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>{{$site_name}}</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/photofolio-bootstrap-photography-website-template/ -->
        Designed by Surya Hadi Saputra</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <script src="footer/vendor/jquery/jquery-3.2.1.min.js"></script>
  <script src="footer/vendor/bootstrap/js/popper.js"></script>
	<script src="footer/vendor/bootstrap/js/bootstrap.min.js"></script>
  <script src="footer/vendor/select2/select2.min.js"></script>
  <script src="footer/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>