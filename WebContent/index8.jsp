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

	<div id="divId"></div>

	<div id="template_of_out_of_line">
		<div id="LICENSE_NUMBER" class="media section_div" data-x="DATA_X" data-y="DATA_Y">
			<div class="media-left">
				<a class="tips-icon-div" href="javascript:void(0)">
					<span class="media-object glyphicon glyphicon-bell"></span>
				</a>
			</div>
			<div class="media-body">
				<h4 class="media-heading">未按规定路径行驶</h4>
				<p class="text-small G-MarginBottom0">WARNING_TIME</p>
				<span class="text-small G-MarginBottom0">WARNING_PLACE</span>
			</div>
			<div class="clear-fix"></div>
			<div class="G-MarginTop5">REAL_CONTENT</div>
		</div>
	</div>
	<div id="template_of_out_of_circle">
		<div id="LICENSE_NUMBER" class="media section_div" data-x="DATA_X" data-y="DATA_Y">
			<div class="media-left">
				<a class="tips-icon-div" href="javascript:void(0)">
					<span class="media-object glyphicon glyphicon-screenshot"></span>
				</a>
			</div>
			<div class="media-body">
				<h4 class="media-heading">未在电子围栏区域装卸</h4>
				<p class="text-small G-MarginBottom0">WARNING_TIME</p>
				<span class="text-small G-MarginBottom0">WARNING_PLACE</span>
			</div>
			<div class="clear-fix"></div>
			<div class="G-MarginTop5">REAL_CONTENT</div>
		</div>
	</div>
	<div id="template_of_over_speed">
		<div id="LICENSE_NUMBER" class="media section_div" data-x="DATA_X" data-y="DATA_Y">
			<div class="media-left">
				<a class="tips-icon-div" href="javascript:void(0)">
					<span class="media-object glyphicon glyphicon-flash"></span>
				</a>
			</div>
			<div class="media-body">
				<h4 class="media-heading">车辆超速</h4>
				<p class="text-small G-MarginBottom0">WARNING_TIME</p>
				<span class="text-small G-MarginBottom0">WARNING_PLACE</span>
			</div>
			<div class="clear-fix"></div>
			<div class="G-MarginTop5">REAL_CONTENT</div>
		</div>
	</div>
	<div id="template_of_over_load">
		<div id="LICENSE_NUMBER" class="media section_div" data-x="DATA_X" data-y="DATA_Y">
			<div class="media-left">
				<a class="tips-icon-div" href="javascript:void(0)">
					<span class="media-object glyphicon glyphicon-tower"></span>
				</a>
			</div>
			<div class="media-body">
				<h4 class="media-heading">车辆超载</h4>
				<p class="text-small G-MarginBottom0">WARNING_TIME</p>
				<span class="text-small G-MarginBottom0">WARNING_PLACE</span>
			</div>
			<div class="clear-fix"></div>
			<div class="G-MarginTop5">REAL_CONTENT</div>
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
	<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ae08a3d841163816cb0f9a2090fb3169"></script>
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

		//定义
		function MonitorObject(car, lineArr, circle_center, circle_radius)
		{
			this.isInCircle = false;
			this.car = car;
			this.line = new AMap.Polyline(
			{
				path : lineArr, //设置线覆盖物路径
				strokeColor : "#00F", //线颜色
				strokeOpacity : 0.8, //线透明度
				strokeWeight : 3, //线宽
				strokeStyle : "solid", //线样式
				strokeDasharray : [ 10, 5 ]
			//补充线样式
			});
			this.circle = new AMap.Circle(
			{
				center : new AMap.LngLat(circle_center[0], circle_center[1]),// 圆心位置
				radius : circle_radius, //半径
				strokeColor : "#F33", //线颜色
				strokeOpacity : 0.5, //线透明度
				strokeWeight : 3, //线粗细度
				fillColor : "#ee2200", //填充颜色
				fillOpacity : 0.35
			//填充透明度
			});
			this.getCar = function()
			{
				return this.car;
			};
			this.getLine = function()
			{
				return this.line;
			};
			this.getCircle = function()
			{
				return this.circle;
			};
			this.getIsInCircle = function()
			{
				return this.isInCircle;
			}
			this.addToMap = function(amapTemp)
			{
				this.line.setMap(amapTemp);
				this.circle.setMap(amapTemp);
			};
			this.changeCarPosition = function(new_car_center)
			{
				this.car.setCarCenter(new_car_center);
			};
			this.setIsInCircle = function(new_in_circle_status)
			{
				this.isInCircle = new_in_circle_status;
			}
		}

		//定义车
		function Car(license_number, driver, car_center)
		{
			this.license_number = license_number;
			this.driver = driver;
			this.car_center = car_center;
			this.getLicenseNumber = function()
			{
				return this.license_number;
			};
			this.getDriver = function()
			{
				return this.driver;
			};
			this.getCarCenter = function()
			{
				return this.car_center;
			};
			this.setCarCenter = function(new_car_center)
			{
				this.car_center = new_car_center;
			};

		}

		//创建一个canvas点
		function buildPoint(color)
		{
			var c = document.createElement("canvas");
			c.width = c.height = 40;
			var ctx = c.getContext("2d");
			var grd = ctx.createRadialGradient(20, 20, 0, 20, 20, 20);
			grd.addColorStop(0, color);
			grd.addColorStop(1, "white");
			ctx.fillStyle = grd;
			ctx.beginPath();
			ctx.arc(20, 20, 20, 0, 2 * Math.PI);
			ctx.fill();
			return c;
		}

		//创建一个透明的canvas点
		function buildTransparentPoint()
		{
			var c = document.createElement("canvas");
			c.width = c.height = 1;
			var ctx = c.getContext("2d");
			return c;
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

			//初始化地图
			var position = new AMap.LngLat(117.958286, 36.748111);//创建中心点坐标
			var mapObj = new AMap.Map("container",
			{
				view : new AMap.View2D(
				{
					center : position,
					zoom : 14
				})
			});//创建地图实例

			//加载服务组件
			mapObj.plugin([ 'AMap.CustomLayer', 'AMap.Geocoder' ], function()
			{
				redPoint = buildPoint('red');
				bluePoint = buildPoint('rgba(17,0,255,255');
				whitePoint = buildTransparentPoint();
				canvas = document.createElement('canvas');
				canvas.width = mapObj.getSize().width;
				canvas.height = mapObj.getSize().height;
				var cus = new AMap.CustomLayer(canvas,
				{
					zooms : [ 3, 18 ],
					zIndex : 12
				});
				cus.render = onRender;
				cus.setMap(mapObj);

				geocoder = new AMap.Geocoder(
				{
					city : "全国"
				});
			});

			var map, context, bluePoint, whitePoint, canvas, started, geocoder, temp_str;

			//自定义图层绘制相应事件
			function onRender()
			{
				draw();
				if (!started)
				{
					autoSize();
					started = true;
				}
			}
			function autoSize()
			{
				//draw();
				//setTimeout(autoSize, 2000);
			}
			function draw()
			{
				context = canvas.getContext('2d');
				context.clearRect(0, 0, canvas.width, canvas.height);
				//创建数组中的车辆运动点
				for (var i = 0; i < monitorObjectArr.length; i++)
				{
					var temp_obj = monitorObjectArr[i];
					var temp_car_position = temp_obj.getCar().getCarCenter();
					var point = bluePoint;
					var pixel = mapObj.lnglatTocontainer(temp_car_position);
					context.drawImage(point, pixel.getX() - 10, pixel.getY() - 10, 20, 20);
				}
			}

			//创建监控数组
			var monitorObjectArr = new Array();

			//创建第一个监控对象
			var lineArr_Str_2 = "117.958286,36.748111,117.958352,36.748326,117.958417,36.748541,117.958482,36.748755,117.958548,36.74897,117.958613,36.749185,117.958679,36.7494,117.958744,36.749615,117.958809,36.74983,117.958877,36.750021,117.958946,36.750212,117.959014,36.750404,117.959082,36.750595,117.95915,36.750786,117.959218,36.750977,117.959286,36.751169,117.959354,36.75136,117.959427,36.751548,117.959501,36.751737,117.959574,36.751925,117.959648,36.752114,117.959721,36.752303,117.959795,36.752491,117.959868,36.75268,117.959941,36.752868,117.960015,36.753057,117.960088,36.753245,117.960162,36.753434,117.960235,36.753622,117.960309,36.753811,117.960382,36.753999,117.960455,36.754188,117.960529,36.754377,117.96059,36.754565,117.96065,36.754753,117.960689,36.754844,117.960727,36.754936,117.960804,36.75512,117.960865,36.755306,117.960925,36.755492,117.960986,36.755678,117.961047,36.755863,117.961115,36.756048,117.961184,36.756233,117.961253,36.756418,117.961322,36.756603,117.96139,36.756787,117.961459,36.756972,117.961528,36.757157,117.961597,36.757342,117.961665,36.757526,117.961734,36.757711,117.961768,36.757804,117.961803,36.757896,117.961837,36.757988,117.961872,36.758081,117.961906,36.758173,117.96194,36.758266,117.961975,36.758358,117.962009,36.75845,117.962043,36.758543,117.962078,36.758635,117.962146,36.75882,117.962215,36.759005,117.962284,36.759189,117.962353,36.759374,117.962421,36.759559,117.96249,36.759744,117.962559,36.759928,117.962593,36.760021,117.962628,36.760113,117.962696,36.760298,117.962738,36.760412,117.962779,36.760526,117.962821,36.76064,117.962862,36.760754,117.962904,36.760868,117.962945,36.760982,117.962987,36.761096,117.963028,36.76121,117.96307,36.761324,117.963111,36.761438,117.963153,36.761552,117.963194,36.761666,117.963236,36.76178,117.963277,36.761894,117.963319,36.762008,117.96336,36.762122,117.963402,36.762228,117.963445,36.762335,117.963487,36.762441,117.963529,36.762548,117.963571,36.762654,117.963613,36.762761,117.963698,36.762974,117.96374,36.76308,117.963782,36.763187,117.963866,36.7634,117.963951,36.763613,117.963993,36.763719,117.964035,36.763825,117.964072,36.763931,117.96411,36.764036,117.964147,36.764142,117.964185,36.764247,117.96426,36.764458,117.964335,36.764669,117.96441,36.764879,117.964485,36.76509,117.964559,36.765301,117.964634,36.765512,117.964693,36.765727,117.964752,36.765942,117.964811,36.766157,117.96487,36.766372,117.964929,36.766587,117.964988,36.766802,117.965046,36.767017,117.965105,36.767232,117.965158,36.767449,117.965211,36.767665,117.965264,36.767882,117.965316,36.768098,117.965369,36.768315,117.965422,36.768531,117.965475,36.768747,117.965528,36.768964,117.965564,36.769182,117.965601,36.769401,117.965638,36.769619,117.965675,36.769838,117.965711,36.770057,117.965748,36.770275,117.965785,36.770494,117.965821,36.770712,117.965838,36.770931,117.965855,36.771151,117.965871,36.77137,117.965888,36.771589,117.965904,36.771808,117.965921,36.772027,117.965938,36.772246,117.965954,36.772465,117.965971,36.772684,117.965987,36.772903,117.966004,36.773122,117.966021,36.773341,117.966037,36.773561,117.966054,36.77378,117.96607,36.773999,117.966087,36.774218,117.966082,36.774487,117.966078,36.774756,117.966073,36.775025,117.966069,36.775294,117.966064,36.775563,117.966059,36.775832,117.966055,36.776101,117.96605,36.77637,117.966045,36.776639,117.966041,36.776908,117.966036,36.777177,117.966031,36.777446,117.966027,36.777715,117.966022,36.777984,117.966017,36.778253,117.966013,36.778523,117.966003,36.778788,117.965993,36.779054,117.965983,36.77932,117.965973,36.779586,117.965963,36.779852,117.965953,36.780117,117.965943,36.780383,117.965933,36.780649,117.965923,36.780915,117.965913,36.781181,117.965903,36.781446,117.965893,36.781712,117.965883,36.781978,117.965873,36.782244,117.965863,36.78251,117.965853,36.782775,117.965846,36.783131,117.96584,36.783487,117.965834,36.783843,117.965828,36.784199,117.965822,36.784555,117.965815,36.78491,117.965809,36.785266,117.965803,36.785622,117.965747,36.786734,117.965731,36.786956,117.965716,36.787178,117.96579,36.785844,117.965777,36.786067,117.965765,36.786289,117.965752,36.786511,117.9657,36.787401,117.965672,36.787623,117.965643,36.787845,117.965614,36.788068,117.965585,36.78829,117.965556,36.788512,117.965527,36.788735,117.965498,36.788957,117.965469,36.78918,117.965442,36.789401,117.965414,36.789622,117.965386,36.789843,117.965359,36.790065,117.965331,36.790286,117.965304,36.790507,117.965276,36.790728,117.965249,36.79095,117.965221,36.791171,117.965193,36.791392,117.965166,36.791613,117.965138,36.791835,117.965111,36.792056,117.965083,36.792277,117.965056,36.792498,117.965028,36.79272,117.964997,36.792941,117.964966,36.793163,117.964935,36.793385,117.964904,36.793607,117.964873,36.793829,117.964843,36.79405,117.964812,36.794272,117.964781,36.794494,117.96475,36.794716,117.964719,36.794938,117.964688,36.795159,117.964657,36.795381,117.964626,36.795603,117.964595,36.795825,117.964564,36.796046,117.964533,36.796268,117.964502,36.79649,117.964471,36.796712,117.964441,36.796934,117.96441,36.797155,117.964379,36.797377,117.964348,36.797599,117.964317,36.797821,117.964286,36.798042,117.964255,36.798264,117.964224,36.798486,117.964193,36.798708,117.964162,36.79893,117.964131,36.799151,117.9641,36.799373,117.96407,36.799595,117.964039,36.799817,117.96401,36.800055,117.963982,36.800294,117.963953,36.800532,117.963925,36.800771,117.963896,36.80101,117.963868,36.801248,117.963839,36.801487,117.963811,36.801725,117.963782,36.801964,117.963754,36.802203,117.963726,36.802441,117.963697,36.80268,117.963669,36.802918,117.96364,36.803157,117.963612,36.803396,117.963583,36.803634,117.963553,36.803874,117.963524,36.804115,117.963494,36.804355,117.963464,36.804595,117.963434,36.804835,117.963405,36.805075,117.963375,36.805316,117.963345,36.805556,117.963315,36.805796,117.963285,36.806036,117.963256,36.806276,117.963226,36.806517,117.963196,36.806757,117.963166,36.806997,117.963136,36.807237,117.963107,36.807477,117.963071,36.807714,117.963015,36.807951,117.963022,36.808188,117.96303,36.808425,117.963038,36.808662,117.963046,36.808899,117.963032,36.809136,117.963018,36.809373,117.963023,36.80961,117.963028,36.809847,117.963034,36.810084,117.963039,36.810321,117.963044,36.810558,117.963049,36.810795,117.963054,36.811032,117.963059,36.811269,117.96307,36.811506,117.963081,36.811743,117.963092,36.81198,117.963103,36.812217,117.963114,36.812454,117.963126,36.812691,117.963137,36.812927,117.963148,36.813164,117.963152,36.813401,117.963157,36.813638,117.963161,36.813875,117.963165,36.814112,117.96317,36.814349,117.963174,36.814586,117.963179,36.814823,117.963183,36.81506,117.963194,36.815283,117.963206,36.815506,117.963217,36.815729,117.963228,36.815951,117.96324,36.816174,117.963251,36.816397,117.963262,36.81662,117.963274,36.816843,117.963283,36.817068,117.963291,36.817293,117.9633,36.817518,117.963309,36.817743,117.963323,36.817964,117.963337,36.818184,117.963351,36.818405,117.963365,36.818626,117.963384,36.818853,117.963403,36.81908,117.963423,36.819307,117.963442,36.819534,117.963462,36.819762,117.963481,36.819989,117.963501,36.820216,117.96352,36.820443,117.963539,36.82067,117.963559,36.820897,117.963578,36.821124,117.963598,36.821352,117.963617,36.821579,117.963636,36.821806,117.963656,36.822033,117.963675,36.82226,117.963699,36.822485,117.963722,36.82271,117.963745,36.822935,117.963769,36.82316,117.963792,36.823385,117.963816,36.82361,117.963839,36.823835,117.963863,36.82406,117.963886,36.824285,117.963909,36.82451,117.963933,36.824735,117.963956,36.82496,117.96398,36.825185,117.964003,36.82541,117.964027,36.825635,117.96405,36.82586,117.964067,36.826085,117.964083,36.82631,117.9641,36.826535,117.964117,36.82676,117.964134,36.826985,117.96415,36.82721,117.964167,36.827435,117.964184,36.82766,117.9642,36.827885,117.964217,36.82811,117.964234,36.828335,117.964251,36.82856,117.964259,36.828672,117.964267,36.828785,117.964276,36.828897,117.964284,36.82901,117.964292,36.829122,117.964301,36.829235,117.964309,36.829347,117.964318,36.82946,117.964332,36.829618,117.964347,36.829777,117.964361,36.829936,117.964376,36.830095,117.96439,36.830253,117.964405,36.830412,117.964419,36.830571,117.964434,36.83073,117.964448,36.830888,117.964463,36.831047,117.964477,36.831206,117.964492,36.831365,117.964506,36.831523,117.964521,36.831682,117.964535,36.831841,117.96455,36.832,117.964567,36.832328,117.964575,36.832492,117.964584,36.832656,117.964592,36.83282,117.964601,36.832984,117.964609,36.833148,117.964618,36.833313,117.964626,36.833477,117.964635,36.833641,117.964643,36.833805,117.964651,36.833969,117.96466,36.834133,117.964668,36.834297,117.964677,36.834461,117.964685,36.834625,117.964696,36.834776,117.964706,36.834926,117.964717,36.835077,117.964727,36.835227,117.964738,36.835377,117.964748,36.835528,117.964759,36.835678,117.964769,36.835829,117.96478,36.835979,117.96479,36.836129,117.964801,36.83628,117.964811,36.83643,117.964822,36.83658,117.964832,36.836731,117.964843,36.836881,117.964853,36.837032,117.964864,36.837135,117.964874,36.837238,117.964884,36.837341,117.964895,36.837445,117.964905,36.837548,117.964915,36.837651,117.964925,36.837754,117.964936,36.837858,117.964946,36.837961,117.964956,36.838064,117.964966,36.838167,117.964977,36.838271,117.964987,36.838374,117.964997,36.838477,117.965008,36.83858,117.965018,36.838684,117.965028,36.838787,117.965038,36.83889,117.965049,36.838993,117.965059,36.839097,117.965069,36.8392,117.965079,36.839303,117.96509,36.839406,117.9651,36.83951,117.965123,36.839613,117.965146,36.839716,117.965169,36.839819,117.965192,36.839923,117.965215,36.840026,117.965238,36.840129,117.965261,36.840232,117.965284,36.840336,117.965307,36.840439,117.96533,36.840542,117.965353,36.840645,117.965376,36.840748,117.965399,36.840852,117.965422,36.840955,117.965445,36.841058,117.965468,36.841161,117.965491,36.841265,117.965514,36.841368,117.965537,36.841471,117.96556,36.841574,117.965583,36.841678,117.965606,36.841781,117.965629,36.841884,117.965652,36.841987,117.965675,36.842091,117.965698,36.842194,117.965721,36.842297,117.965744,36.8424,117.965767,36.842504,117.96579,36.842607,117.965813,36.84271,117.965836,36.842813,117.965872,36.842952,117.965908,36.843091,117.965944,36.84323,117.96598,36.843369,117.966015,36.843508,117.966051,36.843647,117.966087,36.843786,117.966123,36.843925,117.966159,36.844064,117.966194,36.844203,117.96623,36.844342,117.966266,36.844481,117.966302,36.84462,117.966338,36.844759,117.966373,36.844898,117.966409,36.845038,117.966439,36.845176,117.966469,36.845314,117.966498,36.845453,117.966528,36.845591,117.966558,36.84573,117.966588,36.845868,117.966617,36.846007,117.966647,36.846145,117.966677,36.846284,117.966707,36.846422,117.966736,36.846561,117.966766,36.846699,117.966796,36.846838,117.966826,36.846976,117.966855,36.847114,117.966885,36.847253,117.967411,36.849623,117.96744,36.84976,117.967468,36.849898,117.967496,36.850035,117.967525,36.850172,117.967553,36.85031,117.967582,36.850447,117.96761,36.850585,117.967639,36.850722,117.967667,36.850859,117.967695,36.850997,117.967724,36.851134,117.967752,36.851271,117.967781,36.851409,117.966915,36.847391,117.966945,36.84753,117.966974,36.847668,117.967004,36.847807,117.967034,36.847945,117.967064,36.848084,117.967094,36.848222,117.967123,36.848361,117.967153,36.848499,117.967183,36.848638,117.967213,36.848776,117.967242,36.848914,117.967272,36.849053,117.967302,36.849191,117.967332,36.84933,117.967361,36.849468,117.967809,36.851546,117.967837,36.851684,117.967857,36.851835,117.967877,36.851987,117.967898,36.852139,117.967918,36.852291,117.967938,36.852443,117.967958,36.852595,117.967978,36.852747,117.967998,36.852899,117.968018,36.85305,117.968038,36.853202,117.968058,36.853354,117.968078,36.853506,117.968098,36.853658,117.968118,36.85381,117.968138,36.853962,117.968158,36.854114,117.968177,36.854263,117.968195,36.854413,117.968214,36.854563,117.968233,36.854712,117.968251,36.854862,117.96827,36.855012,117.968289,36.855162,117.968307,36.855311,117.968326,36.855461,117.968345,36.855611,117.968363,36.855761,117.968382,36.85591,117.968401,36.85606,117.968419,36.85621,117.968438,36.856359,117.968457,36.856509,117.968469,36.856659,117.968481,36.856809,117.968493,36.856958,117.968505,36.857108,117.968517,36.857258,117.968529,36.857407,117.968541,36.857557,117.968553,36.857707,117.968565,36.857857,117.968577,36.858006,117.968588,36.858156,117.9686,36.858306,117.968612,36.858455,117.968624,36.858605,117.968636,36.858755,117.968648,36.858905,117.968672,36.859204,117.968684,36.859354,117.968696,36.859503,117.968708,36.859653,117.96872,36.859803,117.968732,36.859953,117.968744,36.860102,117.968756,36.860252,117.968768,36.860402,117.96878,36.860551,117.968792,36.860701,117.968804,36.860851,117.968816,36.861001,117.968828,36.86115,117.96884,36.8613,117.969051,36.861304,117.969261,36.861309,117.969472,36.861313,117.969682,36.861318,117.969893,36.861322,117.970103,36.861327,117.970314,36.861331,117.970524,36.861335,117.970735,36.86134,117.970945,36.861344,117.971156,36.861349,117.971366,36.861353,117.971577,36.861358,117.971787,36.861362,117.971998,36.861367,117.972209,36.861371,117.972419,36.861375,117.97263,36.86138,117.97284,36.861384,117.973051,36.861389,117.973261,36.861363,117.973472,36.861359,117.973682,36.861355,117.973893,36.861361,117.974103,36.861368,117.974319,36.861357,117.974535,36.861347,117.974738,36.861347,117.97494,36.861347,117.975107,36.861333,117.975275,36.861328,117.975445,36.861323,117.975615,36.861317,117.975817,36.861307,117.97602,36.861296,117.976222,36.861286,117.976425,36.861275,117.976628,36.861272,117.976832,36.861269,117.977036,36.861266,117.97724,36.861263,117.977448,36.861244,117.977656,36.861224,117.977863,36.86121,117.978071,36.861195,117.978279,36.861178,117.978487,36.861161,117.978695,36.861144,117.978903,36.861127,117.979109,36.861109,117.979316,36.861092,117.979522,36.861075,117.979729,36.861058,117.979938,36.861046,117.980147,36.861033,117.980356,36.86102,117.980566,36.861007,117.980779,36.860983,117.980992,36.860958,117.981205,36.860934,117.981418,36.860909,117.98162,36.860883,117.981821,36.860856,117.982022,36.860829,117.982223,36.860803,117.98244,36.86078,117.982657,36.860758,117.982875,36.860735,117.983092,36.860713,117.983306,36.860692,117.98352,36.860671,117.983734,36.860651,117.983947,36.86063,117.984161,36.860609,117.984375,36.860588,117.984589,36.860568,117.984803,36.860547,117.985016,36.860521,117.985229,36.860494,117.985443,36.860468,117.985656,36.860442,117.985869,36.860416,117.986082,36.86039,117.986296,36.860364,117.986509,36.860338,117.986733,36.860313,117.986957,36.860289,117.987181,36.860264,117.987405,36.860239,117.987722,36.860206,117.988039,36.860173,117.988356,36.86014,117.988673,36.860107,117.98899,36.860074,117.989307,36.860041,117.989625,36.860008,117.989942,36.859975,117.990811,36.859958,117.991669,36.859865,117.992527,36.859771,117.993385,36.859677,117.994244,36.859583,117.995102,36.859489,117.99596,36.859395,117.99684,36.859278,117.997719,36.85916,117.998599,36.859043,117.999479,36.858925,118.000326,36.858825,118.001174,36.858725,118.002021,36.858624,118.002869,36.858524,118.003716,36.858432,118.004564,36.858341,118.00539,36.858249,118.006216,36.858157,118.006999,36.8581,118.007782,36.858043,118.008651,36.857985,118.00952,36.857928,118.010368,36.857785,118.011215,36.857641,118.011851,36.857654,118.012486,36.857667,118.013122,36.857508,118.013757,36.857349,118.014605,36.857274,118.015453,36.8572,118.0163,36.857125,118.017147,36.857068,118.017995,36.857011,118.018843,36.856953,118.01969,36.856896,118.020538,36.856873,118.021385,36.85685,118.022211,36.856861,118.023037,36.856872";
			var car_position = [ 117.958286, 36.748111 ];
			var car = new Car("鲁C2016", "淄一博", car_position);
			lineArr = fromLineStrToLineArr(lineArr_Str_2);
			var circle_center = [ 118.00952,36.857722 ];
			var monitorObject = new MonitorObject(car, lineArr, circle_center, 150);
			monitorObjectArr.push(monitorObject);

			for (var i = 0; i < monitorObjectArr.length; i++)
			{
				var temp_obj = monitorObjectArr[i];
				temp_obj.addToMap(mapObj);
			}

			var rule_line = new AMap.Polyline(
			{
				//设置线覆盖物路径
				path : fromLineStrToLineArr("117.956795,36.749108,117.96378,36.760298,117.966645,36.774235,117.965803,36.785622,117.963073,36.799894,117.963419,36.81506,117.963706,36.829597,117.965933,36.842822,117.967301,36.851924,117.96884,36.8613,117.99596,36.858915,118.00952,36.857722"),
				strokeColor : "#F00", //线颜色
				strokeOpacity : 0.8, //线透明度
				strokeWeight : 3, //线宽
				strokeStyle : "solid", //线样式
				strokeDasharray : [ 10, 5 ]
			//补充线样式
			});
			rule_line.setMap(mapObj);

			//启动一个定时器
			$('#divId').timer(
			{
				duration : '1s',
				callback : function()
				{
					$("#count_speed_flag").text(parseInt($("#count_speed_flag").text()) + 1);
					//创建数组中的车辆运动点
					for (var j = 0; j < monitorObjectArr.length; j++)
					{
						(function(e)
						{
							var temp_obj = monitorObjectArr[j];
							var temp_car_position = temp_obj.getCar().getCarCenter();
							if (parseInt($("#count_speed_flag").text()) >= temp_obj.getLine().getPath().length)
							{
								//$('#divId').timer('pause');
								//return;
							}
							now_position_LngLat = temp_obj.getLine().getPath()[parseInt($("#count_speed_flag").text())]
							temp_car_position = [ now_position_LngLat.getLng(), now_position_LngLat.getLat() ];
							temp_obj.changeCarPosition(temp_car_position);

							//测车到路线的距离
							var lnglat = new AMap.LngLat(temp_car_position[0], temp_car_position[1]);
							if (lnglat.distance(rule_line.getPath()) > 50 && temp_obj.getIsInCircle() == false)
							{
								var content_html = temp_obj.getCar().getDriver() + "驾驶的车牌号为" + temp_obj.getCar().getLicenseNumber() + "的机动车未按规定路径行驶";
								if ($('#' + temp_obj.getCar().getLicenseNumber() + 'out_of_line').length > 0)
								{
									$('#' + temp_obj.getCar().getLicenseNumber() + 'out_of_line').attr("data-x", temp_car_position[0]);
									$('#' + temp_obj.getCar().getLicenseNumber() + 'out_of_line').attr("data-y", temp_car_position[1]);
								}
								else
								{
									var temp_html = $("#template_of_out_of_line").html();
									temp_html = temp_html.replace("LICENSE_NUMBER", temp_obj.getCar().getLicenseNumber() + "out_of_line");
									temp_html = temp_html.replace("REAL_CONTENT", content_html);
									temp_html = temp_html.replace("WARNING_TIME", new Date().pattern("yyyy-MM-dd HH:mm:ss"));
									temp_html = temp_html.replace("DATA_X", temp_car_position[0]);
									temp_html = temp_html.replace("DATA_Y", temp_car_position[1]);
									//逆地理编码
									geocoder.getAddress(temp_car_position, function(status, result)
									{
										var geocoder_inner_html = temp_html;
										if (status === 'complete' && result.info === 'OK')
										{
											//获得了有效的地址信息:
											geocoder_inner_html = geocoder_inner_html.replace("WARNING_PLACE", result.regeocode.formattedAddress + "附近");
										}
										else
										{
											geocoder_inner_html = geocoder_inner_html.replace("WARNING_PLACE", "坐标(" + temp_car_position[0] + "," + temp_car_position[1] + ")");
										}

										$("#info_inner_box").append(geocoder_inner_html);
										$("#info_inner_box>.section_div:last").stop(true).fadeOut(0).fadeIn("slow");
									});
								}
							}

							//测车到电子围栏的距离
							var temp_circle_center = temp_obj.getCircle().getCenter();
							var temp_circle_radius = temp_obj.getCircle().getRadius();
							if (lnglat.distance(temp_circle_center) <= temp_circle_radius)
							{
								temp_obj.setIsInCircle(true);
							}
							else
							{
								if (temp_obj.getIsInCircle() == true)
								{
									var content_html = temp_obj.getCar().getDriver() + "驾驶的车牌号为" + temp_obj.getCar().getLicenseNumber() + "的机动车未在电子围栏区域装卸";
									if ($('#' + temp_obj.getCar().getLicenseNumber() + 'out_of_circle').length > 0)
									{
										$('#' + temp_obj.getCar().getLicenseNumber() + 'out_of_circle').attr("data-x", temp_car_position[0]);
										$('#' + temp_obj.getCar().getLicenseNumber() + 'out_of_circle').attr("data-y", temp_car_position[1]);
									}
									else
									{
										var temp_html = $("#template_of_out_of_circle").html();
										temp_html = temp_html.replace("LICENSE_NUMBER", temp_obj.getCar().getLicenseNumber() + "out_of_circle");
										temp_html = temp_html.replace("REAL_CONTENT", content_html);
										temp_html = temp_html.replace("WARNING_TIME", new Date().pattern("yyyy-MM-dd HH:mm:ss"));
										temp_html = temp_html.replace("DATA_X", temp_car_position[0]);
										temp_html = temp_html.replace("DATA_Y", temp_car_position[1]);
										//逆地理编码
										geocoder.getAddress(temp_car_position, function(status, result)
										{
											var geocoder_inner_html = temp_html;
											if (status === 'complete' && result.info === 'OK')
											{
												//获得了有效的地址信息:
												geocoder_inner_html = geocoder_inner_html.replace("WARNING_PLACE", result.regeocode.formattedAddress + "附近");
											}
											else
											{
												geocoder_inner_html = geocoder_inner_html.replace("WARNING_PLACE", "坐标(" + temp_car_position[0] + "," + temp_car_position[1] + ")");
											}

											$("#info_inner_box").append(geocoder_inner_html);
											$("#info_inner_box>.section_div:last").stop(true).fadeOut(0).fadeIn("slow");
										});
									}
									temp_obj.setIsInCircle(false);
								}
							}

							//检测超速
							var speed_flag = parseInt($("#count_speed_flag").text());
							if (speed_flag == 20 && j == 0)
							{
								temp_obj = monitorObjectArr[0];
								temp_car_position = temp_obj.getCar().getCarCenter();
								var content_html = temp_obj.getCar().getDriver() + "驾驶的车牌号为" + temp_obj.getCar().getLicenseNumber() + "的机动车超速";
								if ($('#' + temp_obj.getCar().getLicenseNumber() + 'over_speed').length > 0)
								{
									$('#' + temp_obj.getCar().getLicenseNumber() + 'over_speed').attr("data-x", temp_car_position[0]);
									$('#' + temp_obj.getCar().getLicenseNumber() + 'over_speed').attr("data-y", temp_car_position[1]);
								}
								else
								{
									var temp_html = $("#template_of_over_speed").html();
									temp_html = temp_html.replace("LICENSE_NUMBER", temp_obj.getCar().getLicenseNumber() + "over_speed");
									temp_html = temp_html.replace("REAL_CONTENT", content_html);
									temp_html = temp_html.replace("WARNING_TIME", new Date().pattern("yyyy-MM-dd HH:mm:ss"));
									temp_html = temp_html.replace("DATA_X", temp_car_position[0]);
									temp_html = temp_html.replace("DATA_Y", temp_car_position[1]);
									//逆地理编码
									geocoder.getAddress(temp_car_position, function(status, result)
									{
										var geocoder_inner_html = temp_html;
										if (status === 'complete' && result.info === 'OK')
										{
											//获得了有效的地址信息:
											geocoder_inner_html = geocoder_inner_html.replace("WARNING_PLACE", result.regeocode.formattedAddress + "附近");
										}
										else
										{
											geocoder_inner_html = geocoder_inner_html.replace("WARNING_PLACE", "坐标(" + temp_car_position[0] + "," + temp_car_position[1] + ")");
										}

										$("#info_inner_box").append(geocoder_inner_html);
										$("#info_inner_box>.section_div:last").stop(true).fadeOut(0).fadeIn("slow");
									});
								}
							}
							//检测超载
							var speed_flag = parseInt($("#count_speed_flag").text());
							if (speed_flag == 10 && j == 0)
							{
								temp_obj = monitorObjectArr[0];
								temp_car_position = temp_obj.getCar().getCarCenter();
								var content_html = temp_obj.getCar().getDriver() + "驾驶的车牌号为" + temp_obj.getCar().getLicenseNumber() + "的机动车超载";
								if ($('#' + temp_obj.getCar().getLicenseNumber() + 'over_load').length > 0)
								{
									$('#' + temp_obj.getCar().getLicenseNumber() + 'over_load').attr("data-x", temp_car_position[0]);
									$('#' + temp_obj.getCar().getLicenseNumber() + 'over_load').attr("data-y", temp_car_position[1]);
								}
								else
								{
									var temp_html = $("#template_of_over_load").html();
									temp_html = temp_html.replace("LICENSE_NUMBER", temp_obj.getCar().getLicenseNumber() + "over_load");
									temp_html = temp_html.replace("REAL_CONTENT", content_html);
									temp_html = temp_html.replace("WARNING_TIME", new Date().pattern("yyyy-MM-dd HH:mm:ss"));
									temp_html = temp_html.replace("DATA_X", temp_car_position[0]);
									temp_html = temp_html.replace("DATA_Y", temp_car_position[1]);
									//逆地理编码
									geocoder.getAddress(temp_car_position, function(status, result)
									{
										var geocoder_inner_html = temp_html;
										if (status === 'complete' && result.info === 'OK')
										{
											//获得了有效的地址信息:
											geocoder_inner_html = geocoder_inner_html.replace("WARNING_PLACE", result.regeocode.formattedAddress + "附近");
										}
										else
										{
											geocoder_inner_html = geocoder_inner_html.replace("WARNING_PLACE", "坐标(" + temp_car_position[0] + "," + temp_car_position[1] + ")");
										}

										$("#info_inner_box").append(geocoder_inner_html);
										$("#info_inner_box>.section_div:last").stop(true).fadeOut(0).fadeIn("slow");
									});
								}
							}

						})(j);//调用时参数     

					}

					draw();
				},
				repeat : true
			});

			//点击报警事件定位到当前点
			$("body").on("click", ".section_div", function(e)
			{
				var tempArr = new Array();
				tempArr[0] = $(this).attr("data-x");
				tempArr[1] = $(this).attr("data-y");

				mapObj.panTo(tempArr);
			});

		});
	</script>
</body>
</html>