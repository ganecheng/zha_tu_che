<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	session.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="${basePath }">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<meta name="description" content="">
<meta name="author" content="">
<title>渣土车GPS管理系统</title>
<!-- core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/owl.carousel.css" rel="stylesheet">
<link href="css/owl.transitions.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css" />
<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ae08a3d841163816cb0f9a2090fb3169&plugin=AMap.PolyEditor,AMap.CircleEditor"></script>
<script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>
<script type="text/javascript">
	var isHTML5 = true;
</script>
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <script type="text/javascript">
		isHTML5 = false;
	</script>
<![endif]-->
<link rel="shortcut icon" href="favicon.ico">

<style type="text/css">
html, body, .map {
	height: 100%;
	margin: 0px;
	overflow: hidden;
}

#container {
	height: 100%;
}

#info_box_div {
	padding: 0px;
	width: 360px;
	position: absolute;
	top: 15px;
	right: 15px;
	bottom: 15px;
	min-height: 400px;
	box-shadow: 1px 1px 6px rgba(0, 0, 0, .35);
	background: #fcfcfc;
}

#info_inner_box {
	width: 100%;
}

#info_inner_box p {
	word-wrap: break-word;
	word-break: normal;
}

.section_div {
	padding: 15px;
	box-shadow: 1px 1px 2px rgba(0, 0, 0, .35);
	background: white;
	margin-bottom: 15px;
	font-size: 14px;
	margin-top: 0px;
}

.tips-icon-div>span {
	color: red;
	box-shadow: 0px 0px 3px rgba(0, 0, 0, .15);
	padding: 6px;
	height: 60px;
	width: 60px;
	font-size: 48px;
	border-radius: 5px;
}

.text-small {
	font-size: 12px;
	line-height: 12px;
}

.line-height-0 {
	
}
</style>
</head>
<!--/head-->

<body>
	<div id="container"></div>
	<div id="info_box_div">
		<div id="info_inner_box"></div>
	</div>
	<div class="button-group">
		<input type="button" class="button" value="开始编辑折线" onClick="editor.startEditLine()" />
		<input type="button" class="button" value="结束编辑折线" onClick="editor.closeEditLine()" />
		<input type="button" class="button" value="开始编辑多边形" onClick="editor.startEditPolygon()" />
		<input type="button" class="button" value="结束编辑多边形" onClick="editor.closeEditPolygon()" />
		<input type="button" class="button" value="开始编辑圆" onClick="editor.startEditCircle()" />
		<input type="button" class="button" value="结束编辑圆" onClick="editor.closeEditCircle()" />
	</div>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!--  <script src="http://maps.google.com/maps/api/js?sensor=true"></script> -->
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/mousescroll.js"></script>
	<script src="js/smoothscroll.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/jquery.inview.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/timer.jquery.js"></script>
	<script src="js/jquery.slimscroll.js"></script>
	<script type="text/javascript">
		var editorTool, map = new AMap.Map("container",
		{
			resizeEnable : true,
			center : [ 118.0234, 36.4836 ],//地图中心点
			zoom : 13
		//地图显示的缩放级别
		});
		//在地图上绘制折线
		var editor = {};
		editor._line = (function()
		{
			var lineArr = [ [ 118.0234, 36.4836 ], [ 118.1335, 36.6835 ], [ 118.2436, 36.9834 ], [ 118.3537, 36.2837 ] ];
			return new AMap.Polyline(
			{
				map : map,
				path : lineArr,
				strokeColor : "#FF33FF",//线颜色
				strokeOpacity : 1,//线透明度
				strokeWeight : 3,//线宽
				strokeStyle : "solid"//线样式
			});
		})();
		editor._polygon = (function()
		{
			var arr = [ //构建多边形经纬度坐标数组
			[ 117.3215, 35.5520 ], [ 117.3225, 35.5530 ], [ 117.3235, 35.5520 ], [ 117.3245, 35.5530 ], [ 117.3215, 35.5520 ] ]
			return new AMap.Polygon(
			{
				map : map,
				path : arr,
				strokeColor : "#0000ff",
				strokeOpacity : 1,
				strokeWeight : 3,
				fillColor : "#f5deb3",
				fillOpacity : 0.35
			});
		})();
		editor._circle = (function()
		{
			var circle = new AMap.Circle(
			{
				center : [ 117.3295, 35.5590 ],// 圆心位置
				radius : 1000, //半径
				strokeColor : "#F33", //线颜色
				strokeOpacity : 1, //线透明度
				strokeWeight : 3, //线粗细度
				fillColor : "#ee2200", //填充颜色
				fillOpacity : 0.35
			//填充透明度
			});
			circle.setMap(map);
			return circle;
		})();
		map.setFitView();
		editor._lineEditor = new AMap.PolyEditor(map, editor._line);
		editor._polygonEditor = new AMap.PolyEditor(map, editor._polygon);
		editor._circleEditor = new AMap.CircleEditor(map, editor._circle);

		editor.startEditLine = function()
		{
			editor._lineEditor.open();
		}
		editor.closeEditLine = function()
		{
			editor._lineEditor.close();
			$("#info_inner_box").append("<p>" + editor._line.getPath() + "</p>");
			alert(editor._line.getPath());
			console.log(editor._line.getPath());
		}

		editor.startEditPolygon = function()
		{
			editor._polygonEditor.open();
		}
		editor.closeEditPolygon = function()
		{
			editor._polygonEditor.close();
		}

		editor.startEditCircle = function()
		{
			editor._circleEditor.open();
		}
		editor.closeEditCircle = function()
		{
			editor._circleEditor.close();
		}
	</script>
</body>
</html>