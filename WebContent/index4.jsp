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
				strokeOpacity : 0, //线透明度
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
				strokeOpacity : 0, //线透明度
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
			var position = new AMap.LngLat(118.060850, 36.813344);//创建中心点坐标
			var mapObj = new AMap.Map("container",
			{
				view : new AMap.View2D(
				{
					center : position,
					zoom : 13
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
			var lineArr_Str_2 = "118.060029,36.846802,118.06674,36.846364,118.073623,36.84524,118.080862,36.843974,118.095598,36.84309,118.103095,36.841962,118.113561,36.840349,118.123856,36.837912,118.131575,36.837124,118.132943,36.85955";
			var car_position = [ 118.06674, 36.846364 ];
			var car = new Car("鲁C2016", "淄一博", car_position);
			lineArr = fromLineStrToLineArr(lineArr_Str_2);
			var circle_center = [ 118.060029, 36.846802 ];
			var monitorObject = new MonitorObject(car, lineArr, circle_center, 150);
			monitorObjectArr.push(monitorObject);

			//创建第二个监控对象
			lineArr_Str_2 = "117.956795,36.749108,117.96378,36.760298,117.966645,36.774235,117.965803,36.785622,117.963073,36.799894,117.963419,36.81506,117.963706,36.829597,117.964817,36.839387,117.968269,36.839268,117.971678,36.839286,117.975638,36.839284,117.981744,36.83887";
			car_position = [ 117.963073, 36.799894 ];
			car = new Car("鲁C2015", "淄二博", car_position);
			lineArr = fromLineStrToLineArr(lineArr_Str_2);
			circle_center = [ 117.956795, 36.749108 ];
			monitorObject = new MonitorObject(car, lineArr, circle_center, 100);
			monitorObjectArr.push(monitorObject);

			//创建第三个监控对象
			lineArr_Str_2 = "117.806763,36.864285,117.820271,36.859527,117.848885,36.859439,117.867613,36.859276,117.866942,36.83315,117.912264,36.832924,117.911006,36.800324,117.937265,36.804346,117.962322,36.807406,117.971244,36.808267,117.979135,36.807203";
			car_position = [ 117.912264, 36.832924 ];
			car = new Car("鲁C2017", "淄三博", car_position);
			lineArr = fromLineStrToLineArr(lineArr_Str_2);
			circle_center = [ 117.806763, 36.864285 ];
			monitorObject = new MonitorObject(car, lineArr, circle_center, 60);
			monitorObjectArr.push(monitorObject);

			//创建第四个监控对象
			lineArr_Str_2 = "117.939286,36.97874,117.942778,36.964982,117.942151,36.956707,117.943299,36.947839,117.955503,36.938073,117.966506,36.920209,117.961358,36.904998,117.961016,36.889784,117.961475,36.860506,117.986017,36.860404,118.022404,36.85632,118.025574,36.852235,118.026513,36.8476";
			car_position = [ 117.961358, 36.904998 ];
			car = new Car("鲁C2018", "淄四博", car_position);
			lineArr = fromLineStrToLineArr(lineArr_Str_2);
			circle_center = [ 118.026513, 36.8476 ];
			monitorObject = new MonitorObject(car, lineArr, circle_center, 60);
			monitorObjectArr.push(monitorObject);

			//创建第五个监控对象
			lineArr_Str_2 = "118.043313,36.783487,118.048409,36.783055,118.04864,36.777305,118.0503,36.768826,118.051431,36.763658,118.051103,36.760759,118.049649,36.756118,118.04859,36.75348,118.047101,36.751632,118.04274,36.737748,118.06,36.735758,118.078247,36.734284,118.07328,36.727184,118.07232,36.723772,118.072162,36.718402,118.071997,36.71312,118.070416,36.709385";
			car_position = [ 118.078247,36.734284 ];
			car = new Car("鲁C2019", "淄五博", car_position);
			lineArr = fromLineStrToLineArr(lineArr_Str_2);
			circle_center = [ 118.070416, 36.709385 ];
			monitorObject = new MonitorObject(car, lineArr, circle_center, 100);
			monitorObjectArr.push(monitorObject);

			//创建第六个监控对象
			lineArr_Str_2 = "117.990269,36.786787,118.001975,36.787523,118.024178,36.785623,118.024895,36.803059,118.042154,36.801472,118.048127,36.800539,118.059399,36.798042,118.07143,36.796587,118.078701,36.795809,118.083825,36.795476,118.090641,36.793604,118.095525,36.793312,118.101504,36.792874,118.103571,36.792844,118.111796,36.793948,118.111705,36.78998,118.115618,36.789804,118.12966,36.789534,118.128914,36.786554,118.124907,36.782302,118.123032,36.779858,118.122102,36.775626,118.120806,36.769074,118.11964,36.767217,118.11532,36.762987,118.114833,36.76247";
			car_position = [ 118.048127, 36.800539 ];
			car = new Car("鲁C2020", "淄六博", car_position);
			lineArr = fromLineStrToLineArr(lineArr_Str_2);
			circle_center = [ 118.114833, 36.76247 ];
			monitorObject = new MonitorObject(car, lineArr, circle_center, 100);
			monitorObjectArr.push(monitorObject);

			for (var i = 0; i < monitorObjectArr.length; i++)
			{
				var temp_obj = monitorObjectArr[i];
				temp_obj.addToMap(mapObj);
			}
			mapObj.setFitView();

			//启动一个定时器
			$('#divId').timer(
			{
				duration : '2s',
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
							temp_car_position[0] = temp_car_position[0] - 0.0012;
							temp_obj.changeCarPosition(temp_car_position);
							//测车到路线的距离
							var lnglat = new AMap.LngLat(temp_car_position[0], temp_car_position[1]);
							if (lnglat.distance(temp_obj.getLine().getPath()) > 50 && temp_obj.getIsInCircle() == false)
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
									temp_html = temp_html.replace("LICENSE_NUMBER", temp_obj.getCar().getLicenseNumber()+"out_of_line");
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
										temp_html = temp_html.replace("LICENSE_NUMBER", temp_obj.getCar().getLicenseNumber()+"out_of_circle");
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
							if (speed_flag == 5 && j == 0)
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
									temp_html = temp_html.replace("LICENSE_NUMBER", temp_obj.getCar().getLicenseNumber()+"over_speed");
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
							if (speed_flag == 2 && j == 3)
							{
								temp_obj = monitorObjectArr[3];
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
									temp_html = temp_html.replace("LICENSE_NUMBER", temp_obj.getCar().getLicenseNumber()+"over_load");
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