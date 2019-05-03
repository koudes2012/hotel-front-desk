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
	<form id="availabilityForm" action="" method="post">
		<div class="check-avail">
			<div class="container">
				<div class="arrival date-title ">
					<label>Arrival Date </label>
					<div id="datepicker" class="input-group date" data-date-format="dd-mm-yyyy">
						<input class="form-control" type="text" name="arrivalDate" id="arrivalDate">
						<span class="input-group-addon"><img src="images/Home-1/date-icon.png" alt="#"></span>
					</div>
				</div>
				<div class="departure date-title ">
					<label>Departure Date </label>
					<div id="datepickeri" class="input-group date" data-date-format="dd-mm-yyyy">
						<input class="form-control" type="text" name="departureDate" id="departureDate">
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
<!--Cart Section-->
<section class="cart-section">
    <div class="container">
        
        <form id="checkoutForm" action="" method="post">
		<s:hidden name="arrivalDate"/>
		<s:hidden name="departureDate"/>
        <s:hidden name="reservationListSize" value="%{reservationList.size()}" />
       	<s:if test='%{reservationList.size()== 0}'>
       		<h3>No rooms are avaliable, please try different date.</h3>
       	</s:if>
       	<s:else>
        <!--Cart Outer-->
        <div class="cart-outer">
            <div class="table-outer">

            	
                <table class="cart-table">
                    <thead class="cart-header">
                        <tr>
                            <th class="prod-column">Room</th>
                            <th>&nbsp;</th>
                            <th class="price">Price</th>
                            <th>Quantity</th>
                            <th>Available</th>
                        </tr>
                    </thead>
                    
					<tbody>
                   		<s:iterator id="reservation" value="reservationList" status="status">
						    <s:set var="roomTypeName" value="#reservation.roomTypeName" />
						    <s:set var="availableNum" value="#reservation.availableNum" />
						    <s:set var="roomPrice" value="#reservation.roomPrice" />
						    <tr>
						        <td colspan="2" class="prod-column">
	                                <div class="column-box">
	                                    <figure class="prod-thumb"><a href="#"><img src="images/product/13.jpg" alt=""></a></figure>
	                                    <h3 class="prod-title padd-top-20"><s:property value="#roomTypeName" /></h3>
	                                </div>
	                            </td>
	                            <td class="price">$ <s:property value="#roomPrice" /></td>
	                            <td class="qty">
	                            	<s:hidden name="%{'reservationList['+#status.index+'].roomId'}"/>
	                            	<s:hidden name="%{'reservationList['+#status.index+'].roomType'}"/>
	                            	<s:hidden name="%{'reservationList['+#status.index+'].roomTypeName'}"/>
	                            	<s:hidden name="%{'reservationList['+#status.index+'].roomPrice'}"/>
	                            	<s:textfield cssClass="quantity-spinner" name="%{'reservationList['+#status.index+'].quantity'}" onfocusout="countTotal()"/>
	                            </td>
	                            <td class="sub-total"><s:property value="#availableNum" /></td>
						    </tr>
						</s:iterator>
                    </tbody>
                </table>
            </div>
            
            <div class="row clearfix">
                <div class="column cart-total col-md-6 col-sm-12 col-xs-12 col-md-offset-6">
                    <h3>Cart Totals</h3>
                    <!--Totals Table-->
                    <ul class="totals-table">
                        <li class="clearfix total">
	                        <span class="col col-title">Order Total</span>
	                        <span class="col">$ <span id="orderTotal"></span></span>
                        </li>
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
        </s:else>
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
			var orderTotal = document.getElementById("orderTotal").innerHTML;
			if (orderTotal == '0' || orderTotal == '' ) {
				alert('please choose at least one room');
				return;
			}
			
			$("#checkoutForm").attr("action", "custCheckout").submit();
		});
	});
	
	$(document).ready(function(){
		$("#availability_check").click(function(){
			$("#availabilityForm").attr("action", "custAvailability").submit();
		});
	});
	
	function countTotal(){
		var reservationListSize = document.getElementsByName("reservationListSize")[0].value;
		var orderTotal = 0;
		for (var i=0; i<reservationListSize; i++) {
			var price = document.getElementsByName("reservationList[" + i + "].roomPrice")[0].value;
			var quantity = document.getElementsByName("reservationList[" + i + "].quantity")[0].value;
			if (quantity != "") {
				orderTotal = orderTotal + price * quantity;
			}
		}
		document.getElementById("orderTotal").innerHTML = orderTotal;
	}
</script>

</body>

</html>