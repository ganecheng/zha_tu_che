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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>春巴泰阁精品系列民宿</title>
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
<!-- <link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png"> -->
</head>
<!--/head-->

<body id="home" class="homepage">

	<header id="header">
		<nav id="main-menu" class="navbar navbar-default navbar-fixed-top" role="banner">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="">
						<img src="images/chun_ba_tai_ge.png" alt="logo">
					</a>
				</div>

				<div class="collapse navbar-collapse navbar-right">
					<ul class="nav navbar-nav">
						<li class="">
							<a href="./">首页</a>
						</li>
						<li class="scroll active">
							<a href="#features">春巴泰阁 ● 别墅</a>
						</li>
						<li class="scroll">
							<a href="#shuifang">睡房</a>
						</li>
						<li class="scroll">
							<a href="#chufang">厨房</a>
						</li>
						<li class="scroll">
							<a href="#majiang">麻将房</a>
						</li>
						<li class="scroll">
							<a href="#ktv">KTV</a>
						</li>
						<li class="scroll">
							<a href="#wenquan">温泉</a>
						</li>
						<li class="" style="margin-left: 10px;">
							<span><a class="btn btn-primary btn-lg" target="_blank" href="http://wx.miot.cn/i-16213" style="margin-top: 7px;">立即预订</a></span>
						</li>
					</ul>
				</div>
			</div>
			<!--/.container-->
		</nav>
		<!--/nav-->
	</header>
	<!--/header-->


	<section id="features">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown">春巴泰阁 ● 别墅</h2>
				<p class="text-center wow fadeInDown">
					预定价格参考： <strong><u>平日</u></strong> (周日至周四)：<strong><u>3000</u></strong> 元。<strong><u>周末</u></strong> (周五至周六)：<strong><u>4300</u></strong> 元。节假日 ：提前发布公告信息
				</p>
			</div>
			<div class="row">
				<div class="col-sm-6 wow fadeInLeft">
					<img class="img-responsive" src="images/room_pic_01.jpg" alt="">
				</div>
				<div class="col-sm-6">
					<div class="media service-box wow fadeInRight">
						<div class="pull-left">
							<i class="fa fa-line-chart"></i>
						</div>
						<div class="media-body">
							<h4 class="media-heading">6 间睡房</h4>
							<p>家庭双床房 5 间，观星单床房 1 间。</p>
						</div>
					</div>

					<div class="media service-box wow fadeInRight">
						<div class="pull-left">
							<i class="fa fa-cubes"></i>
						</div>
						<div class="media-body">
							<h4 class="media-heading">西式家庭厨房</h4>
							<p>宽敞明亮、设施齐全的西式家庭厨房。</p>
						</div>
					</div>

					<div class="media service-box wow fadeInRight">
						<div class="pull-left">
							<i class="fa fa-pie-chart"></i>
						</div>
						<div class="media-body">
							<h4 class="media-heading">独立麻将房</h4>
							<p>豪华静音麻将机。</p>
						</div>
					</div>

					<div class="media service-box wow fadeInRight">
						<div class="pull-left">
							<i class="fa fa-pie-chart"></i>
						</div>
						<div class="media-body">
							<h4 class="media-heading">全投影卡拉OK</h4>
							<p>100寸全投影屏幕、劲爆的卡拉OK音响设备。</p>
						</div>
					</div>

					<div class="media service-box wow fadeInRight">
						<div class="pull-left">
							<i class="fa fa-pie-chart"></i>
						</div>
						<div class="media-body">
							<h4 class="media-heading">2 个温泉泡池</h4>
							<p>可容下 10 - 12 人的花园大温泉浴池，可容下 2 - 3 人的鸳鸯泡池</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section id="shuifang" class="cta2" style="background: #242a33 url(images/shui_fang_02.jpg) no-repeat 50% 50%; background-size: cover; min-height: 400px;">
		<div class="container">
			<div class="text-center">
				<h2 class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms">6 间睡房</h2>
				<p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">
					① 家庭双床房 5 间。每间房有 1.8 米长和 1.2 米宽床各一张。</br>其中 2 间房有舒适的独立阳台，其中 1 间房的阳台带有浪漫的鸳鸯浴池。
				</p>
				<p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="200ms">② 观星单床房 1 间。电动天帘设计，让您置身于星空。</p>
				<p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="300ms">③ 房间配套设施：无线WiFi、有线上网端口、热水壶、电吹风、电视。</p>
				<p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="400ms">
					<a class="btn btn-primary btn-lg" href="http://wx.miot.cn/i-16213" target="_blank">立即预订</a>
				</p>
			</div>
		</div>
	</section>


	<section id="chufang" class="cta3" style="background: #242a33 url(images/room_pic_03.jpg) no-repeat 50% 50%; background-size: cover; min-height: 400px;">
		<div class="container">
			<div class="text-center">
				<h2 class="wow bounceInRight" data-wow-duration="300ms" data-wow-delay="0ms">宽敞明亮、设施齐全的西式家庭厨房</h2>
				<p class="wow bounceInRight" data-wow-duration="300ms" data-wow-delay="100ms">双门西门子冰箱、烤炉、微波炉、消毒碗柜、电磁炉</p>
				<p class="wow bounceInRight" data-wow-duration="300ms" data-wow-delay="200ms">煤气炉、岛台、专业胶囊咖啡机</p>
				<p class="wow bounceInRight" data-wow-duration="300ms" data-wow-delay="300ms">
					<a class="btn btn-primary btn-lg" href="http://wx.miot.cn/i-16213" target="_blank">立即预订</a>
				</p>
			</div>
		</div>
	</section>

	<section id="majiang" class="cta2" style="background: #242a33 url(images/room_pic_05.jpg) no-repeat 50% 50%; background-size: cover; min-height: 400px;">
		<div class="container">
			<div class="text-center">
				<h2 class="wow bounceInLeft" data-wow-duration="300ms" data-wow-delay="0ms">独立麻将房</h2>
				<p class="wow bounceInLeft" data-wow-duration="300ms" data-wow-delay="100ms">豪华静音麻将机</p>
				<p class="wow bounceInLeft" data-wow-duration="300ms" data-wow-delay="200ms">
					<a class="btn btn-primary btn-lg" href="http://wx.miot.cn/i-16213" target="_blank">立即预订</a>
				</p>
			</div>
		</div>
	</section>

	<section id="ktv" class="cta2" style="background: #242a33 url(images/room_pic_06.jpg) no-repeat 50% 50%; background-size: cover; min-height: 400px;">
		<div class="container">
			<div class="text-center">
				<h2 class="wow pulse" data-wow-duration="300ms" data-wow-delay="0ms">全投影卡拉OK娱乐宝</h2>
				<p class="wow pulse" data-wow-duration="300ms" data-wow-delay="100ms">100寸全投影屏幕、劲爆的卡拉OK音响设备、实时网络自动更新的MTV歌库</p>
				<p class="wow pulse" data-wow-duration="300ms" data-wow-delay="200ms">专业的卡拉OK点歌界面、骰蛊、酒杯、镭射舞台灯</p>
				<p class="wow pulse" data-wow-duration="300ms" data-wow-delay="300ms">
					<a class="btn btn-primary btn-lg" href="http://wx.miot.cn/i-16213" target="_blank">立即预订</a>
				</p>
			</div>
		</div>
	</section>

	<section id="wenquan" class="cta3" style="background: #242a33 url(images/room_pic_07.jpg) no-repeat 50% 50%; background-size: cover; min-height: 400px;">
		<div class="container">
			<div class="text-center">
				<h2 class="wow swing" data-wow-duration="300ms" data-wow-delay="0ms">2 个温泉泡池</h2>
				<p class="wow swing" data-wow-duration="300ms" data-wow-delay="100ms">可容下 10 - 12 人的花园大温泉浴池</p>
				<p class="wow swing" data-wow-duration="300ms" data-wow-delay="200ms">可容下 2 - 3 人的鸳鸯泡池</p>
				<p class="wow swing" data-wow-duration="300ms" data-wow-delay="300ms">
					<a class="btn btn-primary btn-lg" href="http://wx.miot.cn/i-16213" target="_blank">立即预订</a>
				</p>
			</div>
		</div>
	</section>



	<section id="pricing">
		<div class="container">
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown">更多别墅</h2>
				<p class="text-center wow fadeInDown">春巴泰阁准备了多种不同风格的别墅供您挑选，总会有您喜欢的一套别墅。</p>
			</div>

			<div class="row">
				<div class="col-sm-6 col-md-3">
					<div class="wow zoomIn" data-wow-duration="400ms" data-wow-delay="0ms">
						<ul class="pricing featured">
							<li class="plan-header">
								<div class="price-duration">
									<span class="price"> ￥3200 </span> <span class="duration"> 元/天 起</span>
								</div>

								<div class="plan-name">春巴泰阁●别墅</div>
							</li>
							<li>
								<strong>6</strong> 睡房
							</li>
							<li>
								<strong>1</strong> 厨房
							</li>
							<li>
								<strong>1</strong> 麻将房
							</li>
							<li>
								<strong>1</strong> KTV
							</li>
							<li>
								<strong>2</strong> 温泉
							</li>
							<li class="plan-purchase">
								<a class="btn btn-primary" href="http://wx.miot.cn/i-16213" target="_blank">立即预订</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="wow zoomIn" data-wow-duration="400ms" data-wow-delay="200ms">
						<ul class="pricing">
							<li class="plan-header">
								<div class="price-duration">
									<span class="price"> ￥3000 </span> <span class="duration"> 元/天 起</span>
								</div>

								<div class="plan-name">春巴泰阁●美雅1号</div>
							</li>
							<li>
								<strong>6</strong> 睡房
							</li>
							<li>
								<strong>1</strong> 厨房
							</li>
							<li>
								<strong>1</strong> 麻将房
							</li>
							<li>
								<strong>1</strong> KTV
							</li>
							<li>
								<strong>2</strong> 温泉
							</li>
							<li class="plan-purchase">
								<a class="btn btn-primary" href="http://wx.miot.cn/i-16213" target="_blank">立即预订</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="wow zoomIn" data-wow-duration="400ms" data-wow-delay="400ms">
						<ul class="pricing">
							<li class="plan-header">
								<div class="price-duration">
									<span class="price"> ￥2600 </span> <span class="duration"> 元/天 起</span>
								</div>

								<div class="plan-name">春巴泰阁●美雅2号</div>
							</li>
							<li>
								<strong>6</strong> 睡房
							</li>
							<li>
								<strong>1</strong> 厨房
							</li>
							<li>
								<strong>1</strong> 麻将房
							</li>
							<li>
								<strong>1</strong> KTV
							</li>
							<li>
								<strong>2</strong> 温泉
							</li>
							<li class="plan-purchase">
								<a class="btn btn-primary" href="http://wx.miot.cn/i-16213" target="_blank">立即预订</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="wow zoomIn" data-wow-duration="400ms" data-wow-delay="600ms">
						<ul class="pricing">
							<li class="plan-header">
								<div class="price-duration">
									<span class="price"> ￥3000 </span> <span class="duration"> 元/天 起</span>
								</div>

								<div class="plan-name">春巴泰阁●美雅3号</div>
							</li>
							<li>
								<strong>6</strong> 睡房
							</li>
							<li>
								<strong>1</strong> 厨房
							</li>
							<li>
								<strong>1</strong> 麻将房
							</li>
							<li>
								<strong>1</strong> KTV
							</li>
							<li>
								<strong>2</strong> 温泉
							</li>
							<li class="plan-purchase">
								<a class="btn btn-primary" href="http://wx.miot.cn/i-16213" target="_blank">立即预订</a>
							</li>
						</ul>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!--/#pricing-->



	<footer id="footer" class="wow fadeIn" data-wow-duration="1000ms" data-wow-delay="300ms">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">春巴泰阁精品系列民宿.备案号：粤ICP备15070003号.</div>
				<div class="col-sm-4 text-center">联系人：朱掌柜189902322881 春掌柜18922216268.</div>
				<div class="col-sm-4">
					<ul class="social-icons">
						<li>
							<a href="javascript:void(0)" data-toggle="tooltip" data-placement="top" data-html="true" title="<img src='${basePath }images/qrcode_280.png' width='180'>">
								<i class="fa fa-weixin"></i>
							</a>
						</li>
						<li>
							<a href="item/contact_us.jsp">
								<i class="fa fa-weibo"></i>
							</a>
						</li>
						<li>
							<a href="item/contact_us.jsp">
								<i class="fa fa-qq"></i>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	<!--/#footer-->

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
	<script type="text/javascript">
		
	</script>
</body>
</html>