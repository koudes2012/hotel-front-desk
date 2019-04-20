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
<script type="text/javascript" src="scripts/authority/commonAll.js"></script>
<script type="text/javascript" src="scripts/jquery/jquery-1.4.4.min.js"></script>
<script src="scripts/My97DatePicker/WdatePicker.js" type="text/javascript" defer="defer"></script>
<script type="text/javascript" src="scripts/artDialog/artDialog.js?skin=default"></script>
<script type="text/javascript">
	$(document).ready(function() {
		/*
		 * 提交
		 */
		$("#submitbutton").click(function() {
			$("#submitForm").attr("action", "orderSearchPop!approve").submit();
		});
		
		/*
		 * 取消
		 */
		$("#cancelbutton").click(function() {
			/**  关闭弹出iframe  **/
			window.parent.$.fancybox.close();
		});
		
	});
</script>
</head>
<body>
<s:form name="submitForm" id="submitForm" action="orderSearchPop">
	<input type="hidden" name="fyID" value="14458625716623" id="fyID"/>
	<div id="container">
		<div id="nav_links">
			Current Location: Overview&nbsp;>&nbsp;<span style="color: #1A5CC6;">Reservation</span>
			<div id="page_close">
				<a href="javascript:parent.$.fancybox.close();">
					<img src="images/common/page_close.png" width="20" height="20" style="vertical-align: text-top;"/>
				</a>
			</div>
		</div>
		<div class="ui_content">
			<table  cellspacing="0" cellpadding="0" width="100%" align="left" border="0">
				<tr>
					<td class="ui_text_rt" width="120">Duration</td>
					<td class="ui_text_lt">
						<input type="text" name="moveInDate" value="${moveInDate}" readonly="readonly">
						<span>&nbsp;&nbsp;~&nbsp;&nbsp;</span>
						<input type="text" name="moveOutDate" value="${moveOutDate}" readonly="readonly">
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt" width="120">RoomType</td>
					<td class="ui_text_lt">
						<s:if test='roomType == "1"'>
						 	&nbsp;&nbsp; Single
						</s:if>
						<s:elseif  test='roomType == "2"'>
							&nbsp;&nbsp; Double
						</s:elseif>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt" width="120">Change Room</td>
					<td class="ui_text_lt">
					     <s:select
				            list="reservationList"
				            name="roomId"
				            listKey="roomId"
				            listValue="roomName"
				            emptyOption="false"
				            value=""
				            />
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt">&nbsp;</td>
					<td class="ui_text_lt"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td class="ui_text_lt">
						<s:hidden name="orderNum"/>
						<s:hidden name="roomIdOld"/>
						&nbsp;<input id="submitbutton" type="button" value="Approve" class="ui_input_btn01"/>
						&nbsp;<input id="cancelbutton" type="button" value="Close" class="ui_input_btn01"/>
					</td>
				</tr>
			</table>
		</div>
	</div>
</s:form>

</body>
</html>