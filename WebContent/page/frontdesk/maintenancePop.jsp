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
		$("#housekeeping").click(function(){
			$("#submitForm").attr("action", "maintenancePop!housekeeping").submit();
		});
		
		$("#maintenance").click(function(){
			$("#submitForm").attr("action", "maintenancePop!maintenance").submit();
		});
		
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
	
	$(function() {
		$( "#datepicker,#datepicker1,#datepicker2" ).datepicker();
	});
</script>
</head>
<body>
<form id="submitForm" name="submitForm" action="" method="post">
	<input type="hidden" name="fyID" value="14458625716623" id="fyID"/>
	<div id="container">
		<div id="nav_links">
			Current Location: Service&nbsp;>&nbsp;<span style="color: #1A5CC6;">Maintenance</span>
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
					<th class="ui_text_lt" colspan="4">Housekeeping </th>
				</tr>
				<tr>
					<td class="ui_text_rt" width="80">Date</td>
					<td class="ui_text_lt">
						<s:textfield name="housekeepingDate" class="date" id="datepicker" onfocus="this.value = '';"/>
					</td>
					<td class="ui_text_rt" width="80">Time</td>
					<td class="ui_text_lt">
						<input type="time" name="housekeepingTime" value="<s:property value="housekeepingTime"/>">
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td class="ui_text_lt">
						&nbsp;<input id="housekeeping" type="button" value="Confirm" class="ui_input_btn01"/>
						&nbsp;<input id="cancelHousekeeping" type="button" value="Cancel" class="ui_input_btn01"/>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td></td>
				</tr>
				<tr>
					<th class="ui_text_lt" colspan="4">Maintenance</th>
				</tr>
				<tr>
					<td class="ui_text_rt" width="80">From</td>
					<td class="ui_text_lt">
						<s:textfield name="maintenanceFrom" class="date" id="datepicker1" onfocus="this.value = '';"/>
					</td>
					<td class="ui_text_rt" width="80">To</td>
					<td class="ui_text_lt">
						<s:textfield name="maintenanceTo" class="date" id="datepicker2" onfocus="this.value = '';"/>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td class="ui_text_lt">
						&nbsp;<input id="maintenance" type="button" value="Confirm" class="ui_input_btn01"/>
						&nbsp;<input id="cancelMaintenanceTo" type="button" value="Cancel" class="ui_input_btn01"/>
					</td>
				</tr>
			</table>
		</div>
	</div>
</form>
</body>
</html>