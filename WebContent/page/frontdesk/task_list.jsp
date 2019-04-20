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
	        	window.location.href = 'taskSearch';
	        }
	    });
	});
	
	function search(){
		$("#submitForm").attr("action", "taskSearch").submit();
	}
	
	function close(taskId){
		if(taskId == '') return;
		if(confirm("Are you sure to close the task ?")){
			$("#submitForm").attr("action", "taskSearch!close?taskId=" + taskId).submit();			
		}
	}
	
	function detail(taskId){
		if(taskId == '') return;
		$("#submitForm").attr("action", "taskSearch!close?taskId=" + taskId).submit();			
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
						<div id="box_top">Task Search</div>
						<div id="box_center">
							Task Type
							<s:select name="taskType" id="taskType" cssStyle="ui_select01"
								list="#{'':'--choose--','1':'Morning Call','2':'Taxi Call','3':'Others','4':'Housekeeping','5':'Maintenance','6':'Kiosk'}"
								listKey="key" listValue="value"></s:select>
							Task Status
							<s:select name="taskStatus" id="taskStatus" cssStyle="ui_select01"
								list="#{'':'--choose--','1':'CREATE','2':'CLOSE'}"
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
							<th>Room</th>
							<th>Task Type</th>
							<th>Start Date</th>
							<th>Time</th>
							<th>End Date</th>
							<th>Description</th>
							<th>Status</th>
							<th>Operation</th>
						</tr>
						<s:iterator id="task" value="taskList" status="status">
							<s:set var="taskId" value="#task.taskId" />
						    <s:set var="taskType" value="#task.taskType" />
						    <s:set var="taskTypeName" value="#task.taskTypeName" />
						    <s:set var="taskDesc" value="#task.taskDesc" />
						    <s:set var="assignedDateStr" value="#task.assignedDateStr" />
						    <s:set var="assignedTime" value="#task.assignedTime" />
						    <s:set var="clearanceDateStr" value="#task.clearanceDateStr" />
						    <s:set var="taskStatus" value="#task.taskStatus" />
						    <s:set var="taskStatusName" value="#task.taskStatusName" />
						    <s:set var="roomId" value="#task.roomId" />
						    <s:set var="roomName" value="#task.roomName" />
						    <tr>
						        <td><s:property value="#roomName" /></td>
						        <td><s:property value="#taskTypeName" /></td>
						        <td><s:property value="#assignedDateStr" /></td>
						        <td><s:property value="#assignedTime" /></td>
						        <td><s:property value="#clearanceDateStr" /></td>
						        <td>
						        	<s:if test='taskType == "6"'>
			                        	<a href='taskPop?taskId=<s:property value="#taskId"/>' class="edit">Detail</a>
			                        </s:if>
			                        <s:else>
			                        	<s:property value="#taskDesc" />
			                        </s:else>
						        </td>
						        <td><s:property value="#taskStatusName" /></td>
						        <td>
									<a href="javascript:close('<s:property value="#taskId" />');">Close</a> 
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
