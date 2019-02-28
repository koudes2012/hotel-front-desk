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
				<span>Welcome to visit our hotel, GUEST</span>
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
						<input class="form-control" type="text">
						<span class="input-group-addon"><img src="images/Home-1/date-icon.png" alt="#"></span>
					</div>
				</div>
				<div class="departure date-title ">
					<label>Departure Date </label>
					<div id="datepickeri" class="input-group date" data-date-format="dd-mm-yyyy">
						<input class="form-control" type="text">
						<span class="input-group-addon"><img src="images/Home-1/date-icon.png" alt="#"></span>
					</div>
				</div>
				<div class="adults date-title ">
					<label>Adults</label>
					
						<div class=" carousel-search">
							<div class="btn-group">
								<a class="btn dropdown-toggle " data-toggle="dropdown" href="#">2</a>
								<ul class="dropdown-menu">
									<li><a>1</a></li>
									<li><a>2</a></li>
									<li><a>3</a></li>
									<li><a>4</a></li>
								</ul>
							</div>
						</div>
					
				</div>
				<div class="children date-title ">
					<label>Children</label>
					<form>
						<div class=" carousel-search">
							<div class="btn-group">
								<a class="btn dropdown-toggle " data-toggle="dropdown" href="#">2</a>
								<ul class="dropdown-menu">
									<li><a>1</a></li>
									<li><a>2</a></li>
									<li><a>3</a></li>
									<li><a>4</a></li>
								</ul>
							</div>
						</div>
					</form>
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
<!--Cart Section-->
<section class="cart-section">
    <div class="container">
        
        <form id="submitForm" action="" method="post">
        <!--Cart Outer-->
        <div class="cart-outer">
            <div class="table-outer">
                <table class="cart-table">
                    <thead class="cart-header">
                        <tr>
                            <th class="prod-column">Product</th>
                            <th>&nbsp;</th>
                            <th class="price">Price</th>
                            <th>Quantity</th>
                            <th>Available</th>
                            <th class="remove"><input type="checkbox"></th>
                        </tr>
                    </thead>
                    
                    <tbody>
                        <tr>
                            <td colspan="2" class="prod-column">
                                <div class="column-box">
                                    <figure class="prod-thumb"><a href="#"><img src="images/product/13.jpg" alt=""></a></figure>
                                    <h3 class="prod-title padd-top-20">Single Room</h3>
                                </div>
                            </td>
                            <td class="price">$ 155</td>
                            <td class="qty"><input class="quantity-spinner" type="text" value="1" name="quantity"></td>
                            <td class="sub-total">10</td>
                            <td class="remove"><input type="checkbox"></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="prod-column">
                                <div class="column-box">
                                    <figure class="prod-thumb"><a href="#"><img src="images/product/13.jpg" alt=""></a></figure>
                                    <h3 class="prod-title padd-top-20">Double Room</h3>
                                </div>
                            </td>
                            <td class="price">$ 155</td>
                            <td class="qty"><input class="quantity-spinner" type="text" value="1" name="quantity"></td>
                            <td class="sub-total">11</td>
                            <td class="remove"><input type="checkbox"></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            <div class="update-cart-box clearfix">
                <div class="pull-left">
                    <div class="apply-coupon clearfix">
                        <div class="form-group clearfix">
                            <input type="text" name="coupon-code" value="" placeholder="Your coupon code">
                        </div>
                        <div class="form-group clearfix">
                            <button type="button" class="thm-btn thm-blue-bg btn-style-one">Apply</button>
                        </div>
                    </div>
                </div>
                
                <div class="pull-right">
                    <button type="button" class="thm-btn update-cart btn-style-one">Update Cart</button> &nbsp;
                </div>
                
            </div>
            
            
            <div class="row clearfix">

                
                <div class="column cart-total col-md-6 col-sm-12 col-xs-12 col-md-offset-6">
                    <h3>Cart Totals</h3>
                    <!--Totals Table-->
                    <ul class="totals-table">
                        <li class="clearfix"><span class="col col-title">Sub Total</span><span class="col">$15.00</span></li>
                        <li class="clearfix total"><span class="col col-title">Order Total</span><span class="col">$15.00</span></li>
                    </ul>
                    
                    <div class="margin-top-30" id="checkout_button">
                    	<button type="button" class="thm-btn thm-blue-bg btn-style-one">
                    		Proceed to Checkout 
                    		<span class="fa fa-long-arrow-right"></span>
                    	</button>
                    </div>
                </div>
            </div>
        </div>
        </form>
    </div>
</section>
<!-- END / Cart Section -->
<!--FOOTER-->
<footer class="footer-sky">
	<div class="footer-mid">
		<div class="container">
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
		$("#checkout_button").click(function(){
			$("#submitForm").attr("action", "custCheckout").submit();
		});
	});
</script>

</body>

</html>