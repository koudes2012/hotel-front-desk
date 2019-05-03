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
<style>
	.alt td{ background:black !important;}
</style>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		$("#placeOrder").click(function(){
			$("#submitForm").attr("action", "kiosk!placeOrder").submit();
		});
	});
	
	function countTotal(){
		var itemListSize = document.getElementsByName("itemListSize")[0].value;
		var orderTotal = 0;
		for (var i=0; i<itemListSize; i++) {
			var price = document.getElementsByName("itemList[" + i + "].itemPrice")[0].value;
			var quantity = document.getElementsByName("itemList[" + i + "].number")[0].value;
			if (quantity != "") {
				orderTotal = orderTotal + price * quantity;
			}
		}
		document.getElementById("orderTotal").innerHTML = orderTotal;
	}
</script>
<body>
	<s:hidden name="itemListSize" value="%{itemList.size()}" />
	<form id="submitForm" name="submitForm" action="kiosk" method="post">
		<s:if test='message != ""'>
	      	<h3><font color='blue'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${message}</font></h3>
		</s:if>
		<section class="shop">
		    <div class="container">
		        <div class="team-list row">
		        	<s:iterator id="item" value="itemList" status="status">
					    <s:set var="itemId" value="#item.itemId" />
					    <s:set var="itemName" value="#item.itemName" />
					    <s:set var="itemPrice" value="#item.itemPrice" />
					    <s:set var="itemPic" value="#item.itemPic" />
					    <s:set var="number" value="#item.number" />
					    <div class="col-md-3 col-sm-6 col-xs-12">
			                <div class="item wow fadeIn" data-wow-duration="2s" data-wow-delay="0.5s" data-wow-offset="0" style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
			                    <figure class="img-holder">
			                        <img src="<s:property value="#itemPic" />" alt="Awesome Image">
			                    </figure>
			                    <div class="content">
			                        <h2><s:property value="#itemName" /></h2>
			                        <p>$ <s:property value="#itemPrice" /> &nbsp;&nbsp;&nbsp; buy:
			                        <s:if test='number == 0'>
			                        	<input type="text" name="itemList[${status.index}].number" value="" onfocusout="countTotal()" style="width:40px; border:1px solid #000000" />
			                        </s:if>
			                        <s:else>
			                        	<input type="text" name="itemList[${status.index}].number" value="<s:property value="#number" />" onfocusout="countTotal()" style="width:40px; border:1px solid #000000" />
			                        </s:else>
			                        <s:hidden name="%{'itemList['+#status.index+'].itemPrice'}"/>
			                        <s:hidden name="%{'itemList['+#status.index+'].itemId'}"/>
			                        </p>
			                    </div>
			                </div>
			            </div>
					</s:iterator>
					
		            <div class="col-md-3 col-sm-6 col-xs-12">
		            	Room: <s:select
				            list="roomInfoList"
				            name="roomId"
				            listKey="roomId"
				            listValue="roomName"
				            emptyOption="false"
				            value="roomId"/>
		            </div>
		            <div class="col-md-3 col-sm-6 col-xs-12"></div>
		            <div class="col-md-3 col-sm-6 col-xs-12">Total: <span id="orderTotal"></span></div>
		            <div class="col-md-3 col-sm-6 col-xs-12">
		            	<button type="button" id="placeOrder" class="btn-style-one" style="float:right">Place Order</button>
		            </div>
		        </div>
		    </div>
		</section>
	</form>
</body>
</html>
