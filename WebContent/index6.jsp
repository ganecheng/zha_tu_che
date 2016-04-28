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
	color: #337ab7;
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
		<div id="info_inner_box">
			<div class="input-group G-MarginTop5 G-MarginLeft5 G-MarginRight5">
				<input id="point_input" type="text" class="form-control" placeholder="请输入经度,纬度,半径">
				<span class="input-group-btn">
					<button id="change_line_button" class="btn btn-primary" type="button">修改这个电子围栏</button>
				</span>
			</div>
		</div>
	</div>
	<div class="button-group">
		<!-- <input type="button" class="button" value="开始编辑折线" onClick="editor.startEditLine()" />
		<input type="button" class="button" value="结束编辑折线" onClick="editor.closeEditLine()" /> -->
		<input type="button" class="button" value="开始编辑电子围栏" onClick="editor.startEditCircle()" />
		<input type="button" class="button" value="结束编辑电子围栏" onClick="editor.closeEditCircle()" />
	</div>


	<div id="template_of_circle_edited">
		<div id="LICENSE_NUMBER" class="media section_div" data-x="DATA_X" data-y="DATA_Y" data-r="DATA_R" data-lines="DATA_LINES" style="display: none;">
			<div class="media-left">
				<a class="tips-icon-div" href="javascript:void(0)">
					<span class="media-object glyphicon glyphicon-info-sign"></span>
				</a>
			</div>
			<div class="media-body">
				<h4 class="media-heading">创建了一个电子围栏</h4>
				<p class="text-small G-MarginBottom0">WARNING_TIME</p>
				<span class="text-small G-MarginBottom0">WARNING_PLACE</span>
			</div>
			<div class="clear-fix"></div>
		</div>
	</div>

	<div id="count_speed_flag">0</div>


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
		Date.prototype.pattern = function(fmt)
		{
			var o =
			{
				"M+" : this.getMonth() + 1, //月份           
				"d+" : this.getDate(), //日           
				"h+" : this.getHours() % 12 == 0 ? 12 : this.getHours() % 12, //小时           
				"H+" : this.getHours(), //小时           
				"m+" : this.getMinutes(), //分           
				"s+" : this.getSeconds(), //秒           
				"q+" : Math.floor((this.getMonth() + 3) / 3), //季度           
				"S" : this.getMilliseconds()
			//毫秒           
			};
			var week =
			{
				"0" : "/u65e5",
				"1" : "/u4e00",
				"2" : "/u4e8c",
				"3" : "/u4e09",
				"4" : "/u56db",
				"5" : "/u4e94",
				"6" : "/u516d"
			};
			if (/(y+)/.test(fmt))
			{
				fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
			}
			if (/(E+)/.test(fmt))
			{
				fmt = fmt.replace(RegExp.$1, ((RegExp.$1.length > 1) ? (RegExp.$1.length > 2 ? "/u661f/u671f" : "/u5468") : "") + week[this.getDay() + ""]);
			}
			for ( var k in o)
			{
				if (new RegExp("(" + k + ")").test(fmt))
				{
					fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
				}
			}
			return fmt;
		}

		function fromLineStrToLineArr(lineStr)
		{
			var lineArr_temp = lineStr.split(",");
			var lineArr = new Array();
			for (var i = 0; i < lineArr_temp.length; i += 2)
			{
				lineArr[i / 2] = new Array();
				lineArr[i / 2][0] = lineArr_temp[i];
				lineArr[i / 2][1] = lineArr_temp[i + 1];
			}
			return lineArr;
		}

		var editorTool, map = new AMap.Map("container",
		{
			resizeEnable : true,
			center : [ 118.0234, 36.4836 ],//地图中心点
			zoom : 13
		//地图显示的缩放级别
		});
		//在地图上绘制折线
		var editor = {};
		/* editor._line = (function()
		{
			var lineArr = fromLineStrToLineArr("117.956795,36.749108,117.96378,36.760298,117.966645,36.774235,117.965803,36.785622,117.963073,36.799894,117.963419,36.81506,117.963706,36.829597,117.965933,36.842822,117.967301,36.851924,117.96884,36.8613,118.02308,36.856529");
			return new AMap.Polyline(
			{
				map : map,
				path : lineArr,
				strokeColor : "#FF33FF",//线颜色
				strokeOpacity : 1,//线透明度
				strokeWeight : 3,//线宽
				strokeStyle : "solid"//线样式
			});
		})(); */
		editor._circle = (function()
		{
			var circle = new AMap.Circle(
			{
				center : [ 118.060850, 36.813344 ],// 圆心位置
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
		/* editor._lineEditor = new AMap.PolyEditor(map, editor._line); */
		editor._circleEditor = new AMap.CircleEditor(map, editor._circle);

		/* editor.startEditLine = function()
		{
			editor._lineEditor.open();
		}
		editor.closeEditLine = function()
		{
			editor._lineEditor.close();
			console.log(editor._line.getPath());
			$("#count_speed_flag").text(parseInt($("#count_speed_flag").text()) + 1);
			var speed_flag = parseInt($("#count_speed_flag").text());
			var temp_html = $("#template_of_circle_edited").html();
			temp_html = temp_html.replace("WARNING_TIME", new Date().pattern("yyyy-MM-dd HH:mm:ss"));
			temp_html = temp_html.replace("WARNING_PLACE", "电子围栏" + speed_flag);
			temp_html = temp_html.replace("DATA_LINES", editor._line.getPath());

			$("#info_inner_box").append(temp_html);
			$("#info_inner_box>.section_div:last").stop(true).fadeOut(0).fadeIn("slow");
		}
		 */
		editor.startEditCircle = function()
		{
			editor._circleEditor.open();
		}
		editor.closeEditCircle = function()
		{
			editor._circleEditor.close();
			$("#count_speed_flag").text(parseInt($("#count_speed_flag").text()) + 1);
			var speed_flag = parseInt($("#count_speed_flag").text());
			var temp_html = $("#template_of_circle_edited").html();
			temp_html = temp_html.replace("WARNING_TIME", new Date().pattern("yyyy-MM-dd HH:mm:ss"));
			temp_html = temp_html.replace("WARNING_PLACE", "电子围栏" + speed_flag);
			temp_html = temp_html.replace("DATA_X", editor._circle.getCenter().getLng());
			temp_html = temp_html.replace("DATA_Y", editor._circle.getCenter().getLat());
			temp_html = temp_html.replace("DATA_R", editor._circle.getRadius());

			$("#info_inner_box").append(temp_html);
			$("#info_inner_box>.section_div:last").stop(true).fadeOut(0).fadeIn("slow");
		}

		$(function()
		{
			$("#info_inner_box").slimScroll(
			{
				width : 'auto', //可滚动区域宽度
				height : '100%', //可滚动区域高度
				size : '10px', //组件宽度
				color : '#000', //滚动条颜色
				position : 'right', //组件位置：left/right
				distance : '0px', //组件与侧边之间的距离
				start : 'top', //默认滚动位置：top/bottom
				opacity : .4, //滚动条透明度
				alwaysVisible : false, //是否 始终显示组件
				disableFadeOut : false, //是否 鼠标经过可滚动区域时显示组件，离开时隐藏组件
				railVisible : true, //是否 显示轨道
				railColor : '#333', //轨道颜色
				railOpacity : .2, //轨道透明度
				railDraggable : true, //是否 滚动条可拖动
				railClass : 'slimScrollRail', //轨道div类名 
				barClass : 'slimScrollBar', //滚动条div类名
				wrapperClass : 'slimScrollDiv', //外包div类名
				allowPageScroll : true, //是否 使用滚轮到达顶端/底端时，滚动窗口
				wheelStep : 20, //滚轮滚动量
				touchScrollStep : 200, //滚动量当用户使用手势
				borderRadius : '7px', //滚动条圆角
				railBorderRadius : '7px' //轨道圆角
			});

			$("#change_line_button").click(function()
			{
				var point_arr_str = $("#point_input").val();
				var lineArr = point_arr_str.split(",");
				editor._circle.setCenter(new AMap.LngLat(lineArr[0], lineArr[1]));
				editor._circle.setRadius(lineArr[2]);
			});

			//选中历史电子围栏
			$("body").on("click", ".section_div", function(e)
			{
				var x = $(this).attr("data-x");
				var y = $(this).attr("data-y");
				var r = $(this).attr("data-r");
				editor._circle.setCenter(new AMap.LngLat(x, y));
				editor._circle.setRadius(r);
			});
		});
	</script>
</body>
</html>