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
		/** 新增   **/
	    $("#addBtn").fancybox({
	    	'href'  : 'page/frontdesk/house_edit.jsp',
	    	'width' : 733,
	        'height' : 530,
	        'type' : 'iframe',
	        'hideOnOverlayClick' : false,
	        'showCloseButton' : false,
	        'onClosed' : function() { 
	        	window.location.href = 'page/frontdesk/house_list.jsp';
	        }
	    });
		
	    /** 导入  **/
	    $("#importBtn").fancybox({
	    	'href'  : '/xngzf/archives/importFangyuan.action',
	    	'width' : 633,
	        'height' : 260,
	        'type' : 'iframe',
	        'hideOnOverlayClick' : false,
	        'showCloseButton' : false,
	        'onClosed' : function() { 
	        	window.location.href = 'page/frontdesk/house_list.jsp';
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
	        	window.location.href = 'page/frontdesk/house_list.jsp';
	        }
	    });
	});
	/** 用户角色   **/
	var userRole = '';

	/** 模糊查询来电用户  **/
	function search(){
		$("#submitForm").attr("action", "orderSearch?page=" + 1).submit();
	}

	/** 新增   **/
	function add(){
		$("#submitForm").attr("action", "/xngzf/archives/luruFangyuan.action").submit();	
	}
	 
	/** Excel导出  **/
	function exportExcel(){
		if( confirm('您确定要导出吗？') ){
			var fyXqCode = $("#fyXq").val();
			var fyXqName = $('#fyXq option:selected').text();
//	 		alert(fyXqCode);
			if(fyXqCode=="" || fyXqCode==null){
				$("#fyXqName").val("");
			}else{
//	 			alert(fyXqCode);
				$("#fyXqName").val(fyXqName);
			}
			$("#submitForm").attr("action", "/xngzf/archives/exportExcelFangyuan.action").submit();	
		}
	}
	
	/** 删除 **/
	function checkOut(fyID){
		// 非空判断
		if(fyID == '') return;
		if(confirm("Are you sure to check out ?")){
			$("#submitForm").attr("action", "checkInOut?fyID=" + fyID).submit();			
		}
	}
	
	/** 删除 **/
	function checkIn(fyID){
		// 非空判断
		if(fyID == '') return;
		if(confirm("Are you sure to check in ?")){
			$("#submitForm").attr("action", "checkInOut?fyID=" + fyID).submit();			
		}
	}
	
	/** 批量删除 **/
	function batchDel(){
		if($("input[name='IDCheck']:checked").size()<=0){
			art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'至少选择一条', ok:true,});
			return;
		}
		// 1）取出用户选中的checkbox放入字符串传给后台,form提交
		var allIDCheck = "";
		$("input[name='IDCheck']:checked").each(function(index, domEle){
			bjText = $(domEle).parent("td").parent("tr").last().children("td").last().prev().text();
// 			alert(bjText);
			// 用户选择的checkbox, 过滤掉“已审核”的，记住哦
			if($.trim(bjText)=="已审核"){
// 				$(domEle).removeAttr("checked");
				$(domEle).parent("td").parent("tr").css({color:"red"});
				$("#resultInfo").html("已审核的是不允许您删除的，请联系管理员删除！！！");
// 				return;
			}else{
				allIDCheck += $(domEle).val() + ",";
			}
		});
		// 截掉最后一个","
		if(allIDCheck.length>0) {
			allIDCheck = allIDCheck.substring(0, allIDCheck.length-1);
			// 赋给隐藏域
			$("#allIDCheck").val(allIDCheck);
			if(confirm("您确定要批量删除这些记录吗？")){
				// 提交form
				$("#submitForm").attr("action", "/xngzf/archives/batchDelFangyuan.action").submit();
			}
		}
	}

	/** 普通跳转 **/
	function jumpNormalPage(page){
		$("#submitForm").attr("action", "page/frontdesk/house_list.jsp?page=" + page).submit();
	}
	
	/** 输入页跳转 **/
	function jumpInputPage(totalPage){
		// 如果“跳转页数”不为空
		if($("#jumpNumTxt").val() != ''){
			var pageNum = parseInt($("#jumpNumTxt").val());
			// 如果跳转页数在不合理范围内，则置为1
			if(pageNum<1 | pageNum>totalPage){
				art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'请输入合适的页数，\n自动为您跳到首页', ok:true,});
				pageNum = 1;
			}
			$("#submitForm").attr("action", "page/frontdesk/house_list.jsp?page=" + pageNum).submit();
		}else{
			// “跳转页数”为空
			art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'请输入合适的页数，\n自动为您跳到首页', ok:true,});
			$("#submitForm").attr("action", "page/frontdesk/house_list.jsp?page=" + 1).submit();
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
						<div id="box_top">Check In or Out Search</div>
						<div id="box_center">
							RoomType
							<s:select name="roomType" id="roomType" cssStyle="ui_select01"
								list="#{'':'--choose--','single':'single','double':'double'}"
								listKey="key" listValue="value"></s:select>
							栋号
							 <select name="fyDhCode" id="fyDh" class="ui_select01">
                                <option value="">--请选择--</option>
                            </select>
							户型
							<select name="fyHxCode" id="fyHx" class="ui_select01">
                                <option value="">--请选择--</option>
                                <option value="76">一室一厅一卫</option>
                                <option value="10">两室一厅一卫</option>
                                <option value="14">三室一厅一卫</option>
                                <option value="71">三室两厅一卫</option>
                            </select>
							状态
							<select name="fyStatus" id="fyStatus" class="ui_select01">
                                <option value="">--请选择--</option>
                                <option value="26">在建</option>
                                <option value="25">建成待租</option>
                                <option value="13">已配租</option>
                                <option value="12">已租赁</option>
                                <option value="24">腾退待租</option>
                                <option value="23">欠费</option>
                                <option value="27">其他</option>
                            </select>

							座落&nbsp;&nbsp;<input type="text" id="fyZldz" name="fyZldz" class="ui_input_txt02" />
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
							<th width="30"><input type="checkbox" id="all" onclick="selectOrClearAllCheckbox(this);" />
							</th>
							<th>Room</th>
							<th>Check In Date</th>
							<th>Check Out Date</th>
							<th>Operation</th>
						</tr>
						<s:iterator id="roomOrder" value="roomOrderList" status="status">
						    <s:set var="orderNum" value="#roomOrder.orderNum" />
						    <s:set var="custName" value="#roomOrder.custName" />
						    <s:set var="identityType" value="#roomOrder.identityType" />
						    <s:set var="identityNum" value="#roomOrder.identityNum" />
						    <s:set var="telNum" value="#roomOrder.telNum" />
						    <s:set var="custAddress" value="#roomOrder.custAddress" />
						    <s:set var="roomType" value="#roomOrder.roomType" />
						    <s:set var="moveInDate" value="#roomOrder.moveInDate" />
						    <s:set var="moveOutDate" value="#roomOrder.moveOutDate" />
						    <tr>
						        <td><input type="checkbox" name="IDCheck" value="<s:property value="#orderNum" />" class="acb" /></td>
						        <td><s:property value="#custName" /></td>
						        <td><s:property value="#identityType" /></td>
						        <td><s:property value="#identityNum" /></td>
						        <td>
									<a href="javascript:checkIn('<s:property value="#orderNum" />');">CheckIn</a>
									<span>&nbsp;&nbsp;&nbsp;&nbsp;</span> 
									<a href="javascript:checkOut('<s:property value="#orderNum" />');">CheckOut</a>
								</td>
						    </tr>
						</s:iterator>
					</table>
				</div>
				<div class="ui_tb_h30">
					<div class="ui_flt" style="height: 30px; line-height: 30px;">
						Total
						<span class="ui_txt_bold04">90</span>
						records, current page is
						<span class="ui_txt_bold04">1
						/
						9</span>
					</div>
					<div class="ui_frt">
						<!--    如果是第一页，则只显示下一页、尾页 -->
						
							<input type="button" value="Fisrt" class="ui_input_btn01" />
							<input type="button" value="Previous" class="ui_input_btn01" />
							<input type="button" value="Next" class="ui_input_btn01"
								onclick="jumpNormalPage(2);" />
							<input type="button" value="Last" class="ui_input_btn01"
								onclick="jumpNormalPage(9);" />
						
						
						
						<!--     如果是最后一页，则只显示首页、上一页 -->
						
						Turn to<input type="text" id="jumpNumTxt" class="ui_input_txt01" />page
							 <input type="button" class="ui_input_btn01" value="Turn" onclick="jumpInputPage(9);" />
					</div>
				</div>
			</div>
		</div>
	</form>

</body>
</html>
