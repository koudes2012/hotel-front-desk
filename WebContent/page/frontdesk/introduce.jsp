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
<link href="style/authority/basic_layout.css" rel="stylesheet" type="text/css">
<link href="style/authority/common_style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
		<table class="table" cellspacing="0" cellpadding="0" width="100%" align="center"  border="0">
		    <tr>
		      <th colspan="2">System Version</th>
		    </tr>
		    <tr>
		      <td width="300" height="30">Current Version<span class="TableRow2"></span></td>
		      <td style="text-align:left">Back-end Management System 1.1</td>
		    </tr>
		</table>
		<table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
		    <tr>
		      <th colspan="2">System Development</th>
		    </tr>
		    <tr>
		      <td width="300" height="30">Program Produce</td>
		      <td style="text-align:left">Information Technology Company</td>
		    </tr>
		    <tr>
		      <td width="100" height="30">Contact</td>
		      <td style="text-align:left">
		      	<a href="mailto:sitename@126.com">sitename@126.com</a>
		      </td>
		    </tr>
		</table>
	</div>

</body>
</html>
