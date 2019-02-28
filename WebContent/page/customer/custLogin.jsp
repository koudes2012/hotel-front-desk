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
<title>Customer Login</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Classy Hotel Booking Widget Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- js -->
<script src="js/jquery-2.1.3.min.js" type="text/javascript"></script>
<!-- //js -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='//fonts.googleapis.com/css?family=Poppins:400,300,500,600,700' rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="main">
		<h1 class="w3layouts_head">Customer Login</h1>
		<div class="w3layouts_main_grid">
			<form action="custLogin" method="post" class="w3_form_post">
				<div class="w3_agileits_main_grid w3l_main_grid">
					<div class="agileits_grid">
						<h5>UserName or E-mail </h5>
							<input type="email" name="Email" required="">
					</div>
				</div>
				<div class="agileits_main_grid w3_agileits_main_grid">
					<div class="wthree_grid">
						<h5>Password</h5>
							<input type="password" name="password" required="">
					</div>
				</div>
				
				<div class="w3_main_grid">
					<div class="w3_main_grid_right">
						<input type="submit" value="Login">
					</div>
					<div class="w3_main_grid_left">
						<button onclick="document.location='./custIndex.jsp'">Return</button>
					</div>
					<div class="clear"> </div>
				</div>
			</form>
		</div>

		<div class="agileits_copyright">
			<p>Hotel Login page. All rights reserved</p>
		</div>
	</div>
</body>
</html>