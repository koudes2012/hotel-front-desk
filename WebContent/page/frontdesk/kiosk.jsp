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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="scripts/jquery/jquery-1.7.1.js"></script>
<link href="css/styles.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/common-style.css">
<link rel="stylesheet" href="css/responsive.css">
<script type="text/javascript" src="scripts/authority/commonAll.js"></script>
<script type="text/javascript" src="scripts/fancybox/jquery.fancybox-1.3.4.js"></script>
<script type="text/javascript" src="scripts/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="style/authority/jquery.fancybox-1.3.4.css" media="screen"></link>
<script type="text/javascript" src="scripts/artDialog/artDialog.js?skin=default"></script>
<title>Front Desk</title>
<script type="text/javascript">

</script>
<style>
	.alt td{ background:black !important;}
</style>
</head>
<body>
<section class="shop">
    <div class="container">
        <div class="team-list row">
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="item wow fadeIn" data-wow-duration="2s" data-wow-delay="0.5s" data-wow-offset="0" style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
                    <figure class="img-holder">
                        <img src="images/Product/1.jpg" alt="Awesome Image">
                    </figure>
                    <div class="content">
                        <h2>Jigsaw box alphabets</h2>
                        <p>$ 85 &nbsp;&nbsp;&nbsp; buy:
                        <input type="text" value="" style="width:40px; border:1px solid #000000"></p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="item wow fadeIn" data-wow-duration="2s" data-wow-delay="0.5s" data-wow-offset="0" style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
                    <figure class="img-holder">
                        <img src="images/Product/2.jpg" alt="Awesome Image">
                    </figure>
                    <div class="content">
                        <h2>Jigsaw box alphabets</h2>
                        <p>$ 85 &nbsp;&nbsp;&nbsp; buy:
                        <input type="text" value="" style="width:40px; border:1px solid #000000"></p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="item wow fadeIn" data-wow-duration="2s" data-wow-delay="0.5s" data-wow-offset="0" style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
                    <figure class="img-holder">
                        <img src="images/Product/3.jpg" alt="Awesome Image">
                    </figure>
                    <div class="content">
                        <h2>Jigsaw box alphabets</h2>
                        <p>$ 85 &nbsp;&nbsp;&nbsp; buy:
                        <input type="text" value="" style="width:40px; border:1px solid #000000"></p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="item wow fadeIn" data-wow-duration="2s" data-wow-delay="0.5s" data-wow-offset="0" style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
                    <figure class="img-holder">
                        <img src="images/Product/4.jpg" alt="Awesome Image">
                    </figure>
                    <div class="content">
                        <h2>Jigsaw box alphabets</h2>
                        <p>$ 85 &nbsp;&nbsp;&nbsp; buy:
                        <input type="text" value="" style="width:40px; border:1px solid #000000"></p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
            	Room: <input type="text" value="" style="width:100px; border:1px solid #000000">
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12"></div>
            <div class="col-md-3 col-sm-6 col-xs-12"></div>
            <div class="col-md-3 col-sm-6 col-xs-12">
            	<button type="button" class="btn-style-one" style="float:right">Place Order</button>
            </div>
        </div>
        
    </div>
</section>

</body>
</html>
