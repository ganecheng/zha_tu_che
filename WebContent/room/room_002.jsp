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
<title>春巴泰阁精品系列民宿-美雅1号度假别墅</title>
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

<style type="text/css">
html, body {
	min-height: 100%;
	background: url("${basePath}images/201309261516063238.jpg") no-repeat;
	background-color: #c1986a;
	background-attachment: scroll;
	background-position: top;
	padding-top: 0px;
}

#footer {
	padding-top: 15px;
	padding-bottom: 15px;
	color: #fff;
	background: #2e2e2e;
	background: rgba(46, 46, 46, 0.8);
	position: fixed;
	right: 0;
	left: 0;
	bottom: 0;
	z-index: 1030;
}

#footer a {
	color: #fff;
}

#footer a:hover {
	color: #45aed6;
}

#footer ul {
	list-style: none;
	padding: 0;
	margin: 0 -7.5px;
}

#footer ul>li {
	display: inline-block;
	margin: 0 7.5px;
}

@media only screen and (min-width: 768px) {
	#footer .social-icons {
		float: right;
	}
}

#home_text {
	position: relative;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	color: #fff;
}

#home_text h2 {
	font-size: 36px;
	line-height: 1;
	text-transform: uppercase;
	color: #fff;
	background-color: gray;
	background: rgba(0, 0, 0, .4);
	display: inline-block;
}

#home_text p {
	color: #fff;
	background-color: gray;
	background: rgba(0, 0, 0, .4);
	display: inline-block;
}

#story_div a {
	color: black;
}

#story_div a:HOVER {
	color: blue;
	text-decoration: underline;
}

#story_div .column-title:after {
	content: " ";
	position: absolute;
	bottom: -1px;
	left: 0;
	width: 40%;
	border-bottom: 1px solid #45aed6;
}
</style>
</head>
<!--/head-->

<body id="home" class="homepage">

	<header id="header" class="wow fadeIn" data-wow-duration="1000ms" data-wow-delay="300ms">
		<nav id="main-menu" class="navbar navbar-default" role="banner">
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
							<a href="item/index.jsp">首页</a>
						</li>
						<li class="">
							<a href="story/story_01.jsp">春巴泰阁的故事</a>
						</li>
						<li class="active">
							<a href="item/bieshu_list.jsp">精品系列展示</a>
						</li>
						<li class="">
							<a href="item/fuwu_list.jsp">服务</a>
						</li>
						<li class="">
							<a href="item/order_tips.jsp">预订须知</a>
						</li>
						<li class="">
							<a href="item/strategy_list.jsp">玩转从化攻略</a>
						</li>
						<li class="">
							<a href="item/contact_us.jsp">联系我们</a>
						</li>
					</ul>
				</div>
			</div>
			<!--/.container-->
		</nav>
		<!--/nav-->
	</header>
	<!--/header-->

	<div id="home_text" class="text-center" style="margin-top: 150px;">
		<h2 class="wow fadeInDown" data-wow-duration="300ms" data-wow-delay="0ms">
			<span>美雅1号度假别墅</span>
		</h2>
		<div class="clearfix"></div>
	</div>

	<section id="story_div" style="margin-top: 150px;">
		<div class="container" style="background: white; padding-top: 20px;">
			<ol class="breadcrumb">
				<li>
					<a href="item/index.jsp">首页</a>
				</li>
				<li>
					<a href="item/bieshu_list.jsp">精品系列展示</a>
				</li>
				<li class="active">美雅1号度假别墅</li>
			</ol>
		</div>
	</section>

	<section id="services" style="padding-top: 0px; padding-bottom: 0px;">
		<div class="container" style="background: white; padding-top: 50px; padding-bottom: 0px;">

			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown">美雅1号度假别墅</h2>
				<p class="text-center wow fadeInDown">我们不论在工作上还是生活当中，面对的所有物质选择，我们首先看中的不仅是价格，更看重的是它的服务。</p>
				<br>
				<p class="text-center wow fadeInUp">
					<a class="btn btn-primary btn-lg" href="item/order_tips.jsp">立即预订</a>
				</p>
			</div>

		</div>
		<!--/.container-->
	</section>
	<!--/#services-->
	<section id="about" style="padding-top: 0px; padding-bottom: 0px;">
		<div class="container" style="background: white; padding-bottom: 20px;">
			<div class="divider" style="margin: 0px 0px 70px 0px;"></div>
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown">别墅设施及价格</h2>
				<p class="text-center wow fadeInDown">我们有最棒的配套设施</p>
			</div>

			<div class="row">
				<div class="col-sm-6 wow fadeInLeft">
					<h3 class="column-title">概览 Outline</h3>
					<div class="row">
						<div class="col-sm-6">
							<ul class="nostyle">
								<li>
									<i class="fa fa-check-square"></i> <strong>3</strong> 层别墅
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong>176m<sup>2</sup></strong> 面积
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong>5</strong> 个房间
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong>9</strong> 张床
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong>1</strong> 个厨房
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong>1</strong> 个麻将台
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong>1</strong> KTV
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong>1</strong> 个温泉泡池
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong>1</strong> 烧烤炉
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong>0</strong> 桌球
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong>0</strong> 乒乓球桌
								</li>
							</ul>
						</div>

						<div class="col-sm-6">
							<ul class="nostyle">
								<li>
									<i class="fa fa-check-square"></i> <strong><span id="002_level_1"></span>元</strong> 周日至周四
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong><span id="002_level_2"></span>元</strong> 周五
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong><span id="002_level_3"></span>元</strong> 周六
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong>20元/人</strong> 早餐预订
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong>提前发布公告消息</strong> 节日
								</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="col-sm-6 wow fadeInRight">
					<h3 class="column-title">详细 Detail</h3>

					<div class="row">
						<div class="col-sm-12">
							<ul class="nostyle">
								<li>
									<i class="fa fa-check-square"></i> <strong>别墅户型</strong> 3层176㎡连排别墅，共5房9床
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong>负一楼</strong> 后花园，独立温泉泡池，2间睡房（1.2米床双床房）
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong>一楼</strong>一间睡房（1.5米床双床房），饭桌，大厅KTV，厨房，自动麻将台
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong>二楼</strong> 睡房一（1.5米床双床房）睡房二（1.8米床单床房）共2房
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong>房间配套</strong> 空调，电视
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong>厨房配套</strong> 冰箱，电磁炉，煤气炉
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong>卡拉OK娱乐室配套</strong> 电视屏幕，劲爆卡拉OK音响设备，实时网络自动更新的MTV歌库，专业点歌界面，骰盅，酒杯
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong>温泉池配套</strong> 一个独立温泉泡池（可容纳12人）
								</li>
								<li>
									<i class="fa fa-check-square"></i> <strong>免费供应</strong> 1、1池温泉水 2、一次性酒店住宿用品 3、全覆盖高速WiFi 4、24小时热水供应 5、全屋空调 6、厨房用具
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/#about-->
	<section id="blog" style="padding-top: 0px; padding-bottom: 0px;">
		<div class="container" style="background: white; padding-bottom: 100px;">
			<div class="divider" style="margin: 0px 0px 70px 0px;"></div>
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown">别墅图集</h2>
				<p class="text-center wow fadeInDown">在这里，您可以近距离的查看别墅的照片，方便做出决策。</p>
			</div>

			<div class="row">
				<div class="col-sm-6">
					<c:forEach begin="10" end="17" var="ind">
						<div class="blog-post blog-large">
							<article>
								<header class="entry-header">
									<div class="entry-thumbnail">
										<img class="img-responsive" src="http://static.sarah-house.cn/images/room_002_${ind }.jpg" alt=""> <span class="post-format post-format-gallery"><i class="fa fa-image"></i></span>
									</div>
								</header>
							</article>
						</div>
					</c:forEach>
				</div>
				<!--/.col-sm-6-->
				<div class="col-sm-6">
					<c:forEach begin="18" end="25" var="ind">
						<div class="blog-post blog-large">
							<article>
								<header class="entry-header">
									<div class="entry-thumbnail">
										<img class="img-responsive" src="http://static.sarah-house.cn/images/room_002_${ind }.jpg" alt=""> <span class="post-format post-format-gallery"><i class="fa fa-image"></i></span>
									</div>
								</header>
							</article>
						</div>
					</c:forEach>
				</div>
				<!--/.col-sm-6-->
			</div>

		</div>
	</section>


	<section id="pricing" style="padding-top: 0px; padding-bottom: 0px; margin-bottom: 56px;">
		<div class="container" style="background: white; padding-bottom: 100px;">
			<div class="divider" style="margin: 0px 0px 70px 0px;"></div>
			<div class="section-header">
				<h2 class="section-title text-center wow fadeInDown">更多别墅</h2>
				<p class="text-center wow fadeInDown">春巴泰阁准备了多种不同风格的别墅供您挑选，总会有您喜欢的一套别墅。</p>
			</div>

			<div class="row">
				<div class="col-sm-6 col-md-3">
					<div class="wow zoomIn" data-wow-duration="400ms" data-wow-delay="0ms">
						<ul class="pricing">
							<li class="plan-header">
								<div class="price-duration">
									<span class="price"> ￥<span class="002_level_1"></span>
									</span> <span class="duration"> 元/天 起</span>
								</div>

								<div class="plan-name">美雅1号度假别墅</div>
							</li>
							<li>
								<strong>3</strong> 层别墅
							</li>
							<li>
								<strong>176m<sup>2</sup></strong> 面积
							</li>
							<li>
								<strong>5</strong> 个房间
							</li>
							<li>
								<strong>9</strong> 张床
							</li>
							<li>
								<strong>1</strong> 个厨房
							</li>
							<li>
								<strong>1</strong> 个麻将台
							</li>
							<li>
								<strong>1</strong> KTV
							</li>
							<li>
								<strong>1</strong> 个温泉泡池
							</li>
							<li>
								<strong>1</strong> 个烧烤炉
							</li>
							<li>
								<strong>0</strong> 张桌球桌
							</li>
							<li>
								<strong>0</strong> 张乒乓球桌
							</li>
							<li class="plan-purchase">
								<a class="btn btn-primary" href="item/order_tips.jsp" target="_blank">立即预订</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="wow zoomIn" data-wow-duration="400ms" data-wow-delay="200ms">
						<ul class="pricing">
							<li class="plan-header">
								<div class="price-duration">
									<span class="price"> ￥<span class="003_level_1"></span>
									</span> <span class="duration"> 元/天 起</span>
								</div>

								<div class="plan-name">美雅2号度假别墅</div>
							</li>
							<li>
								<strong>4</strong> 层别墅
							</li>
							<li>
								<strong>250m<sup>2</sup></strong> 面积
							</li>
							<li>
								<strong>5</strong> 个房间
							</li>
							<li>
								<strong>9</strong> 张床
							</li>
							<li>
								<strong>1</strong> 个厨房
							</li>
							<li>
								<strong>1</strong> 个麻将台
							</li>
							<li>
								<strong>1</strong> KTV
							</li>
							<li>
								<strong>1</strong> 个温泉泡池
							</li>
							<li>
								<strong>1</strong> 个烧烤炉
							</li>
							<li>
								<strong>1</strong> 张桌球桌
							</li>
							<li>
								<strong>1</strong> 张乒乓球桌
							</li>
							<li class="plan-purchase">
								<a class="btn btn-primary" href="item/order_tips.jsp" target="_blank">立即预订</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="wow zoomIn" data-wow-duration="400ms" data-wow-delay="400ms">
						<ul class="pricing">
							<li class="plan-header">
								<div class="price-duration">
									<span class="price"> ￥<span class="004_level_1"></span>
									</span> <span class="duration"> 元/天 起</span>
								</div>

								<div class="plan-name">静庐度假别墅</div>
							</li>
							<li>
								<strong>4</strong> 层别墅
							</li>
							<li>
								<strong>300m<sup>2</sup></strong> 面积
							</li>
							<li>
								<strong>7</strong> 个房间
							</li>
							<li>
								<strong>10</strong> 张床
							</li>
							<li>
								<strong>1</strong> 个厨房
							</li>
							<li>
								<strong>1</strong> 间麻将室
							</li>
							<li>
								<strong>1</strong> KTV
							</li>
							<li>
								<strong>1</strong> 个温泉泡池
							</li>
							<li>
								<strong>1</strong> 个烧烤炉
							</li>
							<li>
								<strong>0</strong> 张桌球桌
							</li>
							<li>
								<strong>0</strong> 张乒乓球桌
							</li>
							<li class="plan-purchase">
								<a class="btn btn-primary" href="item/order_tips.jsp" target="_blank">立即预订</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="wow zoomIn" data-wow-duration="400ms" data-wow-delay="600ms">
						<ul class="pricing">
							<li class="plan-header">
								<div class="price-duration">
									<span class="price"> ￥<span class="005_level_1"></span>
									</span> <span class="duration"> 元/天 起</span>
								</div>

								<div class="plan-name">容居度假别墅</div>
							</li>
							<li>
								<strong>4</strong> 层别墅
							</li>
							<li>
								<strong>176m<sup>2</sup></strong> 面积
							</li>
							<li>
								<strong>5</strong> 个房间
							</li>
							<li>
								<strong>10</strong> 张床
							</li>
							<li>
								<strong>1</strong> 个厨房
							</li>
							<li>
								<strong>1</strong> 个麻将台
							</li>
							<li>
								<strong>1</strong> KTV
							</li>
							<li>
								<strong>1</strong> 个温泉泡池
							</li>
							<li>
								<strong>1</strong> 个烧烤炉
							</li>
							<li>
								<strong>0</strong> 张桌球桌
							</li>
							<li>
								<strong>0</strong> 张乒乓球桌
							</li>
							<li class="plan-purchase">
								<a class="btn btn-primary" href="item/order_tips.jsp" target="_blank">立即预订</a>
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
				<div class="col-sm-4 hidden-xs">春巴泰阁精品系列民宿.备案号：粤ICP备15070003号.</div>
				<div class="col-sm-4 col-xs-12 text-center">联系人：朱掌柜189902322881 春掌柜18922216268.</div>
				<div class="col-sm-4 hidden-xs">
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
		$(function()
		{
			$.getJSON("price.js", function(json)
			{
				$.each(json, function(i, n)
				{
					$("#" + i + "_level_1").text(n.level_1);
					$("#" + i + "_level_2").text(n.level_2);
					$("#" + i + "_level_3").text(n.level_3);
					$("." + i + "_level_1").text(n.level_1);
					$("." + i + "_level_2").text(n.level_2);
					$("." + i + "_level_3").text(n.level_3);
				});
			});
		});
	</script>
</body>
</html>