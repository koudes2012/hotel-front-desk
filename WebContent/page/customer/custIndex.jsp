<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>HOTEL HOMEPAGE</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- GOOGLE FONT -->
<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<!-- CSS LIBRARY -->
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/ionicons.min.css">
<link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css">
<link rel="stylesheet" type="text/css" href="css/gallery.css">
<link rel="stylesheet" type="text/css" href="css/vit-gallery.css">
<link rel="shortcut icon" type="text/css" href="images/favicon.png" />
<link rel="stylesheet" type="text/css" href="css/bootstrap-select.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-datepicker.css" />
<!-- MAIN STYLE -->
<link rel="stylesheet" href="css/styles.css">

</head>

<body>

<!-- HEADER -->
<header class="header-sky">
	<div class="container">
		<!--HEADER-TOP-->
		<div class="header-top">
			<div class="header-top-left">
				<span><i class="ion-android-cloud-outline"></i>18 °C</span>
				<span><i class="ion-ios-location-outline"></i> 121 King Str, Melbourne Victoria</span>
				<span><i class="fa fa-phone" aria-hidden="true"></i> 1-548-854-8898</span>
				<span>Welcome to visit our hotel, ${user.firstName}</span>
			</div>
			<div class="header-top-right">
				<ul>
					<li class="dropdown"><a href="./page/customer/custLogin.jsp" title="LOGIN" class="dropdown-toggle">LOGIN</a></li>
					<li class="dropdown"><a href="./page/customer/custRegister.jsp" title="REGISTER" class="dropdown-toggle">REGISTER</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">USD <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="active"><a href="#">USD</a></li>
							<li><a href="#">EUR</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">ENG <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="active"><a href="#">ENG</a></li>
							<li><a href="#">JP</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<!-- END/HEADER-TOP -->
	</div>
	<!-- MENU-HEADER -->
	<div class="menu-header">
		<nav class="navbar navbar-fixed-top">
			<div class="container">
				<div class="navbar-header ">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar "></span>
						<span class="icon-bar "></span>
						<span class="icon-bar "></span>
					</button>
					<a class="navbar-brand" href="index.html" title="Skyline"><img src="images/Home-1/sky-logo-header.png" alt="#"></a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#" title="">Home</a></li>
						<li><a href="#">Blog </a></li>
						<li><a href="#">Blog Detail</a></li>
						<li><a href="#" title="">Gallery</a></li>
						<li><a href="#" title="About">About</a></li>
						<li><a href="#" title="Contact">Contact</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<!-- END / MENU-HEADER -->
</header>
<!-- END-HEADER -->
<!-- SLIDER -->
<section class="section-slider height-v">
	<div id="index12" class="owl-carousel  owl-theme">
		<div class="item">
			<img alt="Third slide" src="images/Home-1/Slider-v1.jpg" class="img-responsive">
			<div class="carousel-caption">
				<h1>Welcome to Skyline</h1>
				<p><span class="line-t"></span>Hotels & Resorts <span class="line-b"></span></p>
			</div>
		</div>
		<div class="item">
			<img alt="Third slide" src="images/Home-2/Slider-v2.jpg" class="img-responsive">
			<div class="container">
				<div class="carousel-caption ">
					<h1 class="v2">Enjoy a Luxury  Experience</h1>
					<p class="p-v2"><span class="line-t"></span>Hotels & Resorts <span class="line-b"></span></p>
				</div>
			</div>
		</div>
	</div>
	<form id="submitForm" action="" method="post">
		<div class="check-avail">
			<div class="container">
				<div class="arrival date-title ">
					<label>Arrival Date </label>
					<div id="datepicker" class="input-group date" data-date-format="dd-mm-yyyy">
						<input class="form-control" type="text" name="arrivalDate"/>
						<span class="input-group-addon"><img src="images/Home-1/date-icon.png" alt="#"></span>
					</div>
				</div>
				<div class="departure date-title ">
					<label>Departure Date </label>
					<div id="datepickeri" class="input-group date" data-date-format="dd-mm-yyyy">
						<input class="form-control" type="text" name="departureDate"/>
						<span class="input-group-addon"><img src="images/Home-1/date-icon.png" alt="#"></span>
					</div>
				</div>
				<div class="find_btn date-title" id="availability_check">
					<div class="text-find">
						Check
						<br>Availability
					</div>
				</div>
			</div>
		</div>
	</form>
</section>
<!-- END / SLIDER -->
<!-- OUR-ROOMS-->
<section class="rooms">
	<div class="container">
		<h2 class="title-room">Our Rooms</h2>
		<div class="outline"></div>
		<p class="rooms-p">When you host a party or family reunion, the special celebrations let you streng then bonds with</p>
		<div class="wrap-rooms">
			<div class="row">
				<div id="rooms" class="owl-carousel owl-theme">
					<div class="item ">
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 ">
							<div class="wrap-box">
								<div class="box-img">
									<img src="images/Home-1/our-1.jpg" class="img-responsive" alt="PLuxury Room" title="Luxury Room">
								</div>
								<div class="rooms-content">
									<h4 class="sky-h4">Luxury Room</h4>
									<p class="price">$320 / Per Night</p>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 ">
							<div class="wrap-box">
								<div class="box-img">
									<img src="images/Home-1/our-2.jpg" class="img-responsive" alt="Double Room" title="Double Room">
								</div>
								<div class="rooms-content">
									<h4 class="sky-h4">Double Room</h4>
									<p class="price">$320 / Per Night</p>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 ">
							<div class="wrap-box">
								<div class="box-img">
									<img src="images/Home-1/our-3.jpg" class="img-responsive" alt="Family Room" title="Family Room">
								</div>
								<div class="rooms-content">
									<h4 class="sky-h4">Family Room</h4>
									<p class="price">$320 / Per Night</p>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 ">
							<div class="wrap-box">
								<div class="box-img">
									<img src="images/Home-1/our-4.jpg" class="img-responsive" alt="Deluxe Room" title="Deluxe Room">
								</div>
								<div class="rooms-content">
									<h4 class="sky-h4">Deluxe Room</h4>
									<p class="price">$320 / Per Night</p>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 ">
							<div class="wrap-box">
								<div class="box-img">
									<img src="images/Home-1/our-5.jpg" class="img-responsive" alt="Single Room" title="Single Room">
								</div>
								<div class="rooms-content">
									<h4 class="sky-h4">Single Room</h4>
									<p class="price">$320 / Per Night</p>
								</div>
							</div>
						</div>
						<div class=" col-lg-4 col-md-4 col-sm-6 col-xs-6 ">
							<div class="wrap-box">
								<div class="box-img">
									<img src="images/Home-1/our-6.jpg" class="img-responsive" alt="Presidential Room" title="Presidential Room">
								</div>
								<div class="rooms-content">
									<h4 class="sky-h4">Presidential Room</h4>
									<p class="price">$320 / Per Night</p>
								</div>
							</div>
						</div>
					</div>
					<div class="item ">
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 ">
							<div class="wrap-box">
								<div class="box-img">
									<img src="images/Home-1/our-1.jpg" class="img-responsive" alt="PLuxury Room" title="Luxury Room">
								</div>
								<div class="rooms-content">
									<h4 class="sky-h4">Luxury Room</h4>
									<p class="price">$320 / Per Night</p>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 ">
							<div class="wrap-box">
								<div class="box-img">
									<img src="images/Home-1/our-2.jpg" class="img-responsive" alt="Double Room" title="Double Room">
								</div>
								<div class="rooms-content">
									<h4 class="sky-h4">Double Room</h4>
									<p class="price">$320 / Per Night</p>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 ">
							<div class="wrap-box">
								<div class="box-img">
									<img src="images/Home-1/our-3.jpg" class="img-responsive" alt="Family Room" title="Family Room">
								</div>
								<div class="rooms-content">
									<h4 class="sky-h4">Family Room</h4>
									<p class="price">$320 / Per Night</p>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 ">
							<div class="wrap-box">
								<div class="box-img">
									<img src="images/Home-1/our-4.jpg" class="img-responsive" alt="Deluxe Room" title="Deluxe Room">
								</div>
								<div class="rooms-content">
									<h4 class="sky-h4">Deluxe Room</h4>
									<p class="price">$320 / Per Night</p>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 ">
							<div class="wrap-box">
								<div class="box-img">
									<img src="images/Home-1/our-5.jpg" class="img-responsive" alt="Single Room" title="Single Room">
								</div>
								<div class="rooms-content">
									<h4 class="sky-h4">Single Room</h4>
									<p class="price">$320 / Per Night</p>
								</div>
							</div>
						</div>
						<div class=" col-lg-4 col-md-4 col-sm-6 col-xs-6 ">
							<div class="wrap-box">
								<div class="box-img">
									<img src="images/Home-1/our-6.jpg" class="img-responsive" alt="Presidential Room" title="Presidential Room">
								</div>
								<div class="rooms-content">
									<h4 class="sky-h4">Presidential Room</h4>
									<p class="price">$320 / Per Night</p>
								</div>
							</div>
						</div>
					</div>
					<div class="item ">
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 ">
							<div class="wrap-box">
								<div class="box-img">
									<img src="images/Home-1/our-1.jpg" class="img-responsive" alt="PLuxury Room" title="Luxury Room">
								</div>
								<div class="rooms-content">
									<h4 class="sky-h4">Luxury Room</h4>
									<p class="price">$320 / Per Night</p>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 ">
							<div class="wrap-box">
								<div class="box-img">
									<img src="images/Home-1/our-2.jpg" class="img-responsive" alt="Double Room" title="Double Room">
								</div>
								<div class="rooms-content">
									<h4 class="sky-h4">Double Room</h4>
									<p class="price">$320 / Per Night</p>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 ">
							<div class="wrap-box">
								<div class="box-img">
									<img src="images/Home-1/our-3.jpg" class="img-responsive" alt="Family Room" title="Family Room">
								</div>
								<div class="rooms-content">
									<h4 class="sky-h4">Family Room</h4>
									<p class="price">$320 / Per Night</p>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 ">
							<div class="wrap-box">
								<div class="box-img">
									<img src="images/Home-1/our-4.jpg" class="img-responsive" alt="Deluxe Room" title="Deluxe Room">
								</div>
								<div class="rooms-content">
									<h4 class="sky-h4">Deluxe Room</h4>
									<p class="price">$320 / Per Night</p>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 ">
							<div class="wrap-box">
								<div class="box-img">
									<img src="images/Home-1/our-5.jpg" class="img-responsive" alt="Single Room" title="Single Room">
								</div>
								<div class="rooms-content">
									<h4 class="sky-h4">Single Room</h4>
									<p class="price">$320 / Per Night</p>
								</div>
							</div>
						</div>
						<div class=" col-lg-4 col-md-4 col-sm-6 col-xs-6 ">
							<div class="wrap-box">
								<div class="box-img">
									<img src="images/Home-1/our-6.jpg" class="img-responsive" alt="Presidential Room" title="Presidential Room">
								</div>
								<div class="rooms-content">
									<h4 class="sky-h4">Presidential Room</h4>
									<p class="price">$320 / Per Night</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /container -->
</section>
<!-- END / ROOMS -->
<!-- ABOUT-US-->
<section class="about">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-5 col-lg-5">
				<div class="about-centent">
					<h2 class="about-title">About Us</h2>
					<div class="line"></div>
					<p class="about-p">Contrary to popular belief, Lorem isn’t simply random text. It has roots in a of classical Latin literature from 45 BC, making it over 2000 years old. Avalon’s leading hotels with gracious island hospitality, thoughtful amenities and distinctive</p>
					<p class="about-p1">Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage ...</p>
					<a href="#" class="read-more">READ MORE </a>
				</div>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-7 col-lg-7 ">
				<div class="about-img">
					<div class="img-1">
						<img src="images/Home-1/about-3.jpg" class="img-responsive" alt="Image">
						<div class="img-2">
							<img src="images/Home-1/about-1.jpg" class="img-responsive" alt="Image">
						</div>
						<div class="img-3">
							<img src="images/Home-1/about-2.jpg" class="img-responsive" alt="Image">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- END/ ABOUT-US-->
<!-- BEST -->
<section class="best">
	<div class="container">
		<div class="row">
			<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">
				<div class="wrap-best">
					<div class="icon-best">
						<img src="images/Home-1/about-icon-1.png" class="img-responsive" alt="Image">
					</div>
					<h6 class="sky-h6">Master Bedrooms</h6>
				</div>
			</div>
			<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">
				<div class="wrap-best">
					<div class="icon-best">
						<img src="images/Home-1/about-icon-2.png" class="img-responsive" alt="Image">
					</div>
					<h6 class="sky-h6">Sea View Balcony</h6>
				</div>
			</div>
			<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">
				<div class="wrap-best">
					<div class="icon-best">
						<img src="images/Home-1/about-icon-3.png" class="img-responsive" alt="Image">
					</div>
					<h6 class="sky-h6">Pool & Spa</h6>
				</div>
			</div>
			<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">
				<div class="wrap-best">
					<div class="icon-best">
						<img src="images/Home-1/about-icon-4.png" class="img-responsive" alt="Image">
					</div>
					<h6 class="sky-h6">Wifi Coverage</h6>
				</div>
			</div>
			<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">
				<div class="wrap-best">
					<div class="icon-best">
						<img src="images/Home-1/about-icon-5.png" class="img-responsive" alt="Image">
					</div>
					<h6 class="sky-h6">AwESOME pACKAGES</h6>
				</div>
			</div>
			<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">
				<div class="wrap-best">
					<div class="icon-best">
						<img src="images/Home-1/about-icon-6.png" class="img-responsive" alt="Image">
					</div>
					<h6 class="sky-h6">cLEANING eVERDAY</h6>
				</div>
			</div>
			<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">
				<div class="wrap-best">
					<div class="icon-best">
						<img src="images/Home-1/about-icon-7.png" class="img-responsive" alt="Image">
					</div>
					<h6 class="sky-h6">bUTFFET Breakfast</h6>
				</div>
			</div>
			<div class="col-xs-6 col-sm-3 col-md-3 col-lg-3">
				<div class="wrap-best">
					<div class="icon-best">
						<img src="images/Home-1/about-icon-8.png" class="img-responsive" alt="Image">
					</div>
					<h6 class="sky-h6">Airport Taxi</h6>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- END / BEST -->
<!-- TESTIMONOALS -->
<section class="testimonials">
	<div class="testimonials-h">
		<div class="testimonials-content">
			<div class="container">
				<div id="testimonials" class="owl-carousel owl-theme">
					<div class="item ">
						<div class="img-testimonials"><img src="images/Home-1/about-testimonials-img.png" alt="#"></div>
						<p class="testimonials-p"><span>“</span>​‌ This is the only place to stay in Catalina! I have stayed in the cheaper hotels and they were fine, but this is just the icing on the cake! After spending the day bike riding and hiking to come back and enjoy a glass of wine while looking out your <span>​‌​‌”</span> ocean view window and then to top it all off...</p>
						<h5 class="sky-h5">JULIA ROSE</h5>
						<p class="testimonials-p1">From Los Angeles, California</p>
					</div>
					<div class="item">
						<div class="img-testimonials"><img src="images/Home-1/about-testimonials-img.png" alt="#"></div>
						<p class="testimonials-p"><span>“</span>​‌ Thisis the only place to stay in Catalina! I have stayed in the cheaper hotels and they were fine, but this is just the icing onthe cake! After spending the day bike riding and hiking to come back and enjoy a glass of wine while looking out your <span>​‌​‌”</span> ocean view window and then to top it all off...</p>
						<h5 class="sky-h5">JULIA ROSE</h5>
						<p class="testimonials-p1">From Los Angeles, California</p>
					</div>
					<div class="item">
						<div class="img-testimonials"><img src="images/Home-1/about-testimonials-img.png" alt="#"></div>
						<p class="testimonials-p"><span>“</span>​‌ This is the only place to stay in Catalina! I have stayed in the cheaper hotels and they were fine, but this is just the icing on the cake! After spending the day bike riding and hiking to come back and enjoy a glass of wine while looking out your <span>​‌​‌”</span> ocean view window and then to top it all off...</p>
						<h5 class="sky-h5">JULIA ROSE</h5>
						<p class="testimonials-p1">From Los Angeles, California</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- END / TESTIMONOALS -->
<!--OUR-EVENTS-->
<section class="events">
	<div class="container">
		<h2 class="events-title">Our Events</h2>
		<div class="line"></div>
		<div id="events-v2" class="owl-carousel owl-theme">
			<div class="item ">
				<div class="events-item">
					<div class="events-img"><img src="images/Home-1/Our-Events-1.jpg" class="img-responsive" alt="Image"></div>
					<div class="events-content">
						<a href="#" title="">
							<p class="sky-p">EVENTS</p>
							<h3 class="sky-h3">Wedding Day</h3>
						</a>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="events-item">
					<div class="events-img"><img src="images/Home-1/Our-Events-2.jpg" class="img-responsive" alt="Image"></div>
					<div class="events-content">
						<a href="#" title="">
							<p class="sky-p">EVENTS</p>
							<h3 class="sky-h3">Golf Cup 2017</h3>
						</a>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="events-item">
					<div class="events-img"><img src="images/Home-1/Our-Events-3.jpg" class="img-responsive" alt="Image"></div>
					<div class="events-content">
						<a href="#" title="">
							<p class="sky-p">EVENTS</p>
							<h3 class="sky-h3"> Beach Sports</h3>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- END / OUR EVENTS -->
<!--OUR-NEWS-->
<section class="news">
	<div class="container">
		<h2 class="new-title">News</h2>
		<div class="line"></div>
		<div class="row">
			<div class="news-content">
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="substance">
						<div class="date">
							<div class="day">25</div>
							<div class="year"> AUGUST
								<br>2017</div>
						</div>
						<div class="text">
							<a href="#">Update menu food in Skyline Hotel</a>
						</div>
						<a href="#" class="read-more">Read More</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="substance">
						<div class="date">
							<div class="day">22</div>
							<div class="year"> AUGUST
								<br>2017</div>
						</div>
						<div class="text">
							<a href="#">Las Maquinas on Tragamonedas</a>
						</div>
						<a href="#" class="read-more">Read More </a>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="substance">
						<div class="date">
							<div class="day">06</div>
							<div class="year"> AUGUST
								<br>2017</div>
						</div>
						<div class="text">
							<a href="#">Mother Earth Hosts Our Travels</a>
						</div>
						<a href="#" class="read-more">Read More </a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- END / OUR NEWS -->
<!--FOOTER-->
<footer class="footer-sky">
	<div class="footer-top">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-1 col-lg-1">
					<div class="icon-email">
						<a href="#" title="Email"><img src="images/Home-1/footer-top-icon-l.png" alt="Email" class="img-responsive"></a>
					</div>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-7 col-lg-5">
					<div class="textbox">
						<form class="form-inline">
							<div class="form-group">
								<div class="input-group">
									<input type="email" class="form-control" placeholder="Your email address" aria-label="Search for...">
									<button class="btn btn-secondary" type="button">
										<i class="ion-android-send"></i>
									</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-4 col-lg-6 text-right">
					<div class="footer-icon-l">
						<a href="#" title="Twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
						<a href="#" title="Facebook"><i class="fa fa-facebook-square" aria-hidden="true"></i></a>
						<a href="#" title="Tripadvisor"><i class="fa fa-tripadvisor" aria-hidden="true"></i></a>
						<a href="#" title="Isnstagram"><i class="fa fa-instagram" aria-hidden="true"></i></a>
					</div>
				</div>
			</div>
		</div>
		<!-- /container -->
	</div>
	<!-- /footer-top -->
	<div class="footer-mid">
		<div class="container">
			<div class="row padding-footer-mid">
				<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
					<div class="footer-logo text-center list-content">
						<a href="index.html" title="Skyline"><img src="images/Home-1/sky-logo-footer.png" alt="Image"></a>
					</div>
				</div>
				<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 col-lg-offset-1 col-md-offset-1  ">
					<div class="list-content">
						<ul>
							<li><a href="#" title="">Site Map</a></li>
							<li><a href="#" title="">Term & Conditions</a></li>
							<li><a href="#" title="">Privacy Policy</a></li>
							<li><a href="#" title="">Help</a></li>
							<li><a href="#" title="">Affiliate</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 col-lg-offset-1 col-md-offset-1 ">
					<div class="list-content ">
						<ul>
							<li><a href="#" title="">Our Location</a></li>
							<li><a href="#" title="">Career</a></li>
							<li><a href="#" title="">About Us</a></li>
							<li><a href="#" title="">Contact Us</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 col-lg-offset-1 col-md-offset-1">
					<div class="list-content ">
						<ul>
							<li><a href="#" title="">FAQS</a></li>
							<li><a href="#" title="">News</a></li>
							<li><a href="#" title="">Photo & Video</a></li>
							<li><a href="#" title="">Restaurant</a></li>
							<li><a href="#" title="">Gift Card</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 no-padding">Copyright &copy; 2018.Company name All rights reserved.</div>
				<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 no-padding">
					<div class="payments text-right">
						<ul>
							<li>
								<a href="#" title="Paypal"><img src="images/Home-1/Paypal.png" alt="Paypal"></a>
							</li>
							<li>
								<a href="#" title="Visa"><img src="images/Home-1/Visa.png" alt="Visa"></a>
							</li>
							<li>
								<a href="#" title="Master"><img src="images/Home-1/Master-card.png" alt="Master"></a>
							</li>
							<li>
								<a href="#" title="Discover"><img src="images/Home-1/Discover.png" alt="Discover"></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- END / FOOTER-->
<!--SCOLL TOP-->
<a href="#" title="sroll" class="scrollToTop"><i class="fa fa-angle-up"></i></a>
<!--END / SROLL TOP-->
<!-- LOAD JQUERY -->
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/vit-gallery.js"></script>
<script type="text/javascript" src="js/jquery.countTo.js"></script>
<script type="text/javascript" src="js/jquery.appear.min.js"></script>
<script type="text/javascript" src="js/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="js/bootstrap-select.js"></script>
<script type="text/javascript" src="js/jquery.littlelightbox.js"></script>
<script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
<!---<script src="http://ditu.google.cn/maps/api/js?key=AIzaSyBDyCxHyc8z9gMA5IlipXpt0c33Ajzqix4"></script>--->
<!-- Custom jQuery -->
<script type="text/javascript" src="js/sky.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#availability_check").click(function(){
			$("#submitForm").attr("action", "custAvailability").submit();
		});
	});
</script>

</body>

</html>