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
<title>Front Desk</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script type="text/javascript" src="scripts/jquery/jquery-1.7.1.js"></script>
<link href="style/authority/basic_layout.css" rel="stylesheet" type="text/css">
<link href="style/authority/common_style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.css" />
<script type="text/javascript" src="scripts/authority/commonAll.js"></script>
<script type="text/javascript" src="scripts/jquery/jquery-1.4.4.min.js"></script>
<script src="scripts/My97DatePicker/WdatePicker.js" type="text/javascript" defer="defer"></script>
<script type="text/javascript" src="scripts/artDialog/artDialog.js?skin=default"></script>
<script src="js/jquery-2.1.3.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		/*
		 * 取消
		 */
		$("#cancelbutton").click(function() {
			/**  关闭弹出iframe  **/
			window.parent.$.fancybox.close();
		});
		
		var result = 'null';
		if(result =='success'){
			/**  关闭弹出iframe  **/
			window.parent.$.fancybox.close();
		}

	});
</script>
</head>
<body>
<form id="submitForm" name="submitForm" action="specialServicePop" method="post">
	<div id="container">
		<div id="nav_links">
			Current Location: Overview&nbsp;>&nbsp;<span style="color: #1A5CC6;">Task</span>
			<div id="page_close">
				<a href="javascript:parent.$.fancybox.close();">
					<img src="images/common/page_close.png" width="20" height="20" style="vertical-align: text-top;"/>
				</a>
			</div>
		</div>
		<div class="ui_content">
			<table>
				<tr>
					<th class="ui_text_lt" colspan="4">
						Room :  <s:property value="roomName"/>
						<s:hidden name="roomId"></s:hidden>	
					</th>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td></td>
				</tr>
				<tr>
					<th class="ui_text_lt" colspan="4">Shopping List</th>
				</tr>
				<tr>
					<th width="100">Item Name</th>
					<th width="100">Price</th>
					<th width="100">Quantity</th>
					<th width="100">Sub Total</th>
				</tr>
				<s:iterator id="item" value="itemList" status="status">
					    <s:set var="itemName" value="#item.itemName" />
					    <s:set var="itemPrice" value="#item.itemPrice" />
					    <s:set var="number" value="#item.number" />
					    <s:set var="amount" value="#item.amount" />
					<tr>
						<td class="ui_text_rt"><s:property value="#itemName" /></td>
						<td class="ui_text_rt"><s:property value="#itemPrice" /></td>
						<td class="ui_text_rt"><s:property value="#number" /></td>
						<td class="ui_text_rt"><s:property value="#amount" /></td>
					</tr>
				</s:iterator>
			</table>
		</div>
	</div>
</form>
</body>
</html>