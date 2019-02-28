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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style/authority/basic_layout.css" rel="stylesheet" type="text/css">
<link href="style/authority/common_style.css" rel="stylesheet" type="text/css">
<link href="style/authority/zTreeStyle.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="scripts/jquery/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="scripts/zTree/jquery.ztree.core-3.2.js"></script>
<script type="text/javascript" src="scripts/fancybox/jquery.fancybox-1.3.4.js"></script>
<script type="text/javascript" src="scripts/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="style/authority/jquery.fancybox-1.3.4.css" media="screen"/></link>
<script type="text/javascript" src="scripts/artDialog/artDialog.js?skin=default"></script>
<title>Front Desk</title>
<script type="text/javascript">
	
		/** ----------------leftMenu zTree部分开始----------------  **/
		var zTree;
		var setting = {
			view : {
				dblClickExpand : false,
				showLine : true,
				selectedMulti : false,
				expandSpeed : ($.browser.msie && parseInt($.browser.version) <= 6) ? ""
						: "fast"
			},
			data : {
				key : {
					name : "weiduName"
				},
				simpleData : {
					enable : true,
					idKey : "weiduID",
					pIdKey : "parentID",
					rootPId : ""
				}
			},
			callback : {
				beforeClick : beforeClick,
				onClick : onClick
			}
		};

		var zNodes = [{"checked":false,"crospID":0,"delFlag":1,"parentID":0,"weiduCode":"FANGYUANGUANLI","weiduGrade":0,"weiduID":5,"weiduName":"Building Information","weiduOrder":2,"weiduType":"FANGYUANGUANLI"},
		              {"checked":false,"crospID":0,"delFlag":1,"parentID":5,"weiduCode":"KANGJUXINCHENG","weiduGrade":1,"weiduID":6,"weiduName":"Building One","weiduOrder":1,"weiduType":"FANGYUANGUANLI"},
		              {"checked":false,"crospID":0,"delFlag":1,"parentID":5,"weiduCode":"YULANXIAOQU","weiduGrade":1,"weiduID":77,"weiduName":"Building Two","weiduOrder":2,"weiduType":"FANGYUANGUANLI"},
		              {"checked":false,"crospID":0,"delFlag":1,"parentID":5,"weiduCode":"HESHENGYUAN","weiduGrade":1,"weiduID":83,"weiduName":"Building Three","weiduOrder":3,"weiduType":"FANGYUANGUANLI"}];
		$(document).ready(function() {
			$.fn.zTree.init($("#tree"), setting, zNodes);
			zTree = $.fn.zTree.getZTreeObj("tree");
			// 默认展开所有节点
			zTree.expandAll(true);
		});

		function beforeClick(treeId, treeNode) {
			var check = (treeNode && treeNode.isParent && treeNode.weiduGrade != 2);
			if (check) {
				art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'只能选择小区栋号', ok:true,});
				return false;
			}
			return true;
		}

		/** 左键单击 **/
		function onClick(e, treeId, treeNode) {
			var fyXqCode = treeNode.getParentNode().weiduID;
			var fyDhCode = treeNode.weiduID;
			$("#submitForm").attr("action","roomStatus?fyXqCode="+ fyXqCode + "&fyDhCode=" + fyDhCode).submit();
		}
		/** ----------------leftMenu  zTree部分开始----------------  **/
		
		
</script>
	
	
<script type="text/javascript">
	$(document).ready(function(){
        $(".fy_table_td").fancybox({
            'width' : 900,
            'height' : 650,
            'type' : 'iframe',
            'hideOnOverlayClick' : false,
        });
        
        var lists = $('.unit-the-table tr').eq(0);
        $.each(lists, function(){
			var tds = $(this).find('td[unitname]');
			var names = {};
			$.each(tds, function(){
				var unitname = $(this).attr('unitname');
				names[unitname] = names[unitname] ? names[unitname] + 1 : 1;
			});
			var html = '<tr><th width="40" class="fang_th">F</th>';

			html += '<th width="40" colspan="'+9+'" class="fang_th">Building One</th>';

			$('#unit-thead').html(html);
        });
	});
</script>
<style type="text/css">
	#sider{
		position: absolute;
		top: 0;
		left: 25px;
		bottom: 0px;
		width: 260px;
		border: 1px solid #DEDFDF;
	}
	
	#main{
		position: absolute;
		top: 0;
		left: 285px;
		right: 0px;
		bottom: 0px;
		border: 1px solid #DEDFDF;
		overflow: auto;
	}
	#box_border {
		border: 1px solid #EDEDED;
		height: 50px;
		line-height: 50px;
		text-align: center;
	}
	#fang_type {
		list-style-type: none;
	}
	#fang_type li{
		width: 80px;
		height: 22px;
		line-height: 22px;
		color: #FFF;
		display: inline-block;
	}
	
	.fy_table_td{
		color: #fff;
	}
	
	.fang_th{
		background: #044599 no-repeat;
		text-align: center;
		border-left: 1px solid #02397F;
		border-right: 1px solid #02397F;
		border-bottom: 1px solid #02397F;
		border-top: 1px solid #02397F;
		letter-spacing: 2px;
		text-transform: uppercase;
		font-size: 14px;
		color: #fff;
		height: 37px;
	}
</style>	
</head>
<body>
	<form id="submitForm" name="submitForm" action="/xngzf/archives/showLoupanChart.action" method="post" enctype="multipart/form-data">
		<div id="container">
			<div id="sider">
				<ul id="tree" class="ztree"></ul>
			</div>
			<div id="main">
				<div id="box_border">
					<ul id="fang_type">
						<li style="background-color: #b51d1a;">Booked</li>
						<li style="background-color: #000EFF;">Available</li>
						<li style="background-color: #a5c438;">Maintaining</li>
						<li style="background-color: #7065D5;">CheckIn</li>
						<li style="background-color: #917430;">CheckOut</li>
						<li style="background-color: #23b628;">Serving</li>
						<li style="background-color: #7b8587;">Other</li>
					</ul>
				</div>
				<table class="unit-the-table table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
					<thead id="unit-thead"></thead>
					<tbody>
						<s:iterator id="roomInfo" value="roomInfoList" status="status">
						    <s:set var="roomId" value="#roomInfo.roomId" />
						    <s:set var="floorNum" value="#roomInfo.floorNum" />
						    <s:set var="roomNum" value="#roomInfo.roomNum" />
						    <s:set var="roomName" value="#roomInfo.roomName" />
						    <s:set var="telNum" value="#roomInfo.telNum" />
						    <s:set var="roomType" value="#roomInfo.roomType" />
						    <s:set var="roomStatus" value="#roomInfo.roomStatus" />
						    <s:set var="buildingId" value="#roomInfo.buildingId" />
						    <s:set var="buildingName" value="#roomInfo.buildingName" />
						    <s:set var="totalFloor" value="#roomInfo.totalFloor" />
						    
						    <s:if test='#status.index%#totalFloor == 0'>
						    	<tr>
						    		<td style="color:#1853A1;"><s:property value="#floorNum" /> F</td>
							</s:if>
				    		<td width="40"  style="background-color: <s:property value="#roomStatus" />">
								<a href="roomStatusPop" class="fy_table_td" style="color:#fff;"><s:property value="#roomName" /></a>
							</td>
						</s:iterator>
					</tbody>
				</table>
			</div>
		</div>
	</form>

</body>
</html>