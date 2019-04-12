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
<link href="style/authority/basic_layout.css" rel="stylesheet" type="text/css">
<link href="style/authority/common_style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="scripts/authority/commonAll.js"></script>
<script type="text/javascript" src="scripts/fancybox/jquery.fancybox-1.3.4.js"></script>
<script type="text/javascript" src="scripts/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="style/authority/jquery.fancybox-1.3.4.css" media="screen"></link>
<script type="text/javascript" src="scripts/artDialog/artDialog.js?skin=default"></script>
<title>Front Desk</title>
<script type="text/javascript">
	$(document).ready(function(){
	    /** 导入  **/
	    $("#importBtn").fancybox({
	    	'href'  : '/xngzf/archives/importFangyuan.action',
	    	'width' : 633,
	        'height' : 260,
	        'type' : 'iframe',
	        'hideOnOverlayClick' : false,
	        'showCloseButton' : false,
	        'onClosed' : function() { 
	        	window.location.href = 'specialService';
	        }
	    });
		
	    /**编辑   **/
	    $("a.edit").fancybox({
	    	'width' : 733,
	        'height' : 530,
	        'type' : 'iframe',
	        'hideOnOverlayClick' : false,
	        'showCloseButton' : false,
	        'onClosed' : function() { 
	        	window.location.href = 'specialService';
	        }
	    });
	});

	function search(){
		$("#submitForm").attr("action", "specialService").submit();
	}
</script>
<style>
	.alt td{ background:black !important;}
</style>
</head>
<body>
	<form id="submitForm" name="submitForm" action="" method="post">
		<input type="hidden" name="allIDCheck" value="" id="allIDCheck"/>
		<input type="hidden" name="fyXqName" value="" id="fyXqName"/>
		<div id="container">
			<div class="ui_content">
				<div class="ui_text_indent">
					<div id="box_border">
						<div id="box_top">Special Service Search</div>
						<div id="box_center">
							RoomType
							<s:select name="roomType" id="roomType" cssStyle="ui_select01"
								list="#{'':'--choose--','single':'single','double':'double'}"
								listKey="key" listValue="value"></s:select>
						</div>
						<div id="box_bottom">
							<input type="button" value="Search" class="ui_input_btn01" onclick="search();" />
						</div>
					</div>
				</div>
			</div>
			<div class="ui_content">
				<div class="ui_tb">
					<table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
						<tr>
							<th>Room</th>
							<th>Room Type</th>
							<th>Check In Date</th>
							<th>Check Out Date</th>
							<th>Operation</th>
						</tr>
						<s:iterator id="roomInfo" value="roomInfoList" status="status">
						    <s:set var="roomId" value="#roomInfo.roomId" />
						    <s:set var="roomName" value="#roomInfo.roomName" />
						    <s:set var="moveInDate" value="#roomInfo.moveInDate" />
						    <s:set var="moveOutDate" value="#roomInfo.moveOutDate" />
						    <s:set var="roomStatus" value="#roomInfo.roomStatus" />
						    <s:set var="roomType" value="#roomInfo.roomType" />
						    <s:set var="orderNum" value="#roomInfo.orderNum" />
						    <tr>
						        <td><s:property value="#roomName" /></td>
						        <td><s:property value="#roomType" /></td>
						        <td><s:property value="#moveInDate" /></td>
						        <td><s:property value="#moveOutDate" /></td>
						        <td>
									<a href="specialServicePop?roomId=<s:property value="#roomId"/>&roomName=<s:property value="#roomName"/>" class="edit">Service</a>
								</td>
						    </tr>
						</s:iterator>
					</table>
				</div>
			</div>
		</div>
	</form>

</body>
</html>
