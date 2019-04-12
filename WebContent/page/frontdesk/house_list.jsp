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
	    /**编辑   **/
	    $("a.edit").fancybox({
	    	'width' : 733,
	        'height' : 530,
	        'type' : 'iframe',
	        'hideOnOverlayClick' : false,
	        'showCloseButton' : false,
	        'onClosed' : function() { 
	        	window.location.href = 'orderSearch';
	        }
	    });
	});
	
	function search(){
		$("#submitForm").attr("action", "orderSearch").submit();
	}

	function del(orderNum){
		if(orderNum == '') return;
		if(confirm("Are you sure to delete ?")){
			$("#submitForm").attr("action", "orderSearch!del?orderNum=" + orderNum).submit();			
		}
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
						<div id="box_top">Reversation Search</div>
						<div id="box_center">
							RoomType
							<s:select name="roomType" id="roomType" cssStyle="ui_select01"
								list="#{'':'--choose--','1':'single','2':'double'}"
								listKey="key" listValue="value"></s:select>
						</div>
						<div id="box_bottom">
							<input type="button" value="Search" class="ui_input_btn01" onclick="search();" /> 
							<input type="button" value="Delete" class="ui_input_btn01" onclick="del();" /> 
						</div>
					</div>
				</div>
			</div>
			<div class="ui_content">
				<div class="ui_tb">
					<table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
						<tr>
							<th width="30"><input type="checkbox" id="all" onclick="selectOrClearAllCheckbox(this);" />
							</th>
							<th>Room</th>
							<th>Room Type</th>
							<th>Price</th>
							<th>Check In Date</th>
							<th>Check Out Date</th>
							<th>Status</th>
							<th>Operation</th>
						</tr>
						<s:iterator id="reservation" value="reservationList" status="status">
							<s:set var="orderNum" value="#reservation.orderNum" />
						    <s:set var="roomId" value="#reservation.roomId" />
						    <s:set var="roomName" value="#reservation.roomName" />
						    <s:set var="roomTypeName" value="#reservation.roomTypeName" />
						    <s:set var="roomType" value="#reservation.roomType" />
						    <s:set var="roomPrice" value="#reservation.roomPrice" />
						    <s:set var="moveInDateStr" value="#reservation.moveInDateStr" />
						    <s:set var="moveOutDateStr" value="#reservation.moveOutDateStr" />
						    <s:set var="roomStatus" value="#reservation.roomStatus" />
						    <s:set var="reserStatus" value="#reservation.reserStatus" />
						    <tr>
						    <td><input type="checkbox" name="IDCheck" value="<s:property value="#orderNum" />" class="acb" /></td>
						        <td><s:property value="#roomName" /></td>
						        <td><s:property value="#roomTypeName" /></td>
						        <td><s:property value="#roomPrice" /></td>
						        <td><s:property value="#moveInDateStr" /></td>
						        <td><s:property value="#moveOutDateStr" /></td>
						        <td><s:property value="#reserStatus" /></td>
						        <td>
									<a href="orderSearchPop?orderNum=<s:property value="#orderNum"/>&roomType=<s:property value="#roomType"/>" class="edit">Edit</a> 
									<span>&nbsp;&nbsp;&nbsp;</span>
									<a href="javascript:del('<s:property value="#orderNum" />');">Delete</a>
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
