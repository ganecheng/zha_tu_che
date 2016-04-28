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
<title>春巴泰阁的故事-公司介绍</title>
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
html, body {
	min-height: 100%;
	background: url("${basePath}images/story_bg_02.jpg") no-repeat;
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
						<li class="active">
							<a href="story/story_01.jsp">春巴泰阁的故事</a>
						</li>
						<li class="">
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
			<span>春巴泰阁的故事</span>
		</h2>
		<div class="clearfix"></div>
	</div>

	<section id="story_div" style="margin-top: 150px; padding-top: 100px; margin-bottom: 56px;">
		<div class="container" style="padding-bottom: 100px;">

			<div class="row">
				<div class="col-sm-3 wow fadeInRight">
					<h3 class="column-title">春巴泰阁的故事</h3>
					<div class="row">
						<div class="col-sm-12">
							<ul class="nostyle">
								<li>
									<i class="fa fa-link"></i>
									<a href="story/story_01.jsp">公司介绍</a>
								</li>
								<li>
									<i class="fa fa-link"></i>
									<a href="story/story_02.jsp">恬静的栖居</a>
								</li>
								<li>
									<i class="fa fa-link"></i>
									<a href="story/story_03.jsp">“春巴泰阁”的由来</a>
								</li>
								<li>
									<i class="fa fa-link"></i>
									<a href="story/story_04.jsp">自然的味道</a>
								</li>
							</ul>
						</div>

					</div>

				</div>
				<div class="col-sm-9 wow fadeInRight">
					<h3 class="column-title text-center">公司介绍</h3>
					<div class="row">
						<div class="col-sm-0"></div>
						<div class="col-sm-12 G-Article">
							<p>广州春笆阁商务服务有限公司成立于2015年，主要经营度假别墅出租、特色民宿出租、旅游和餐饮等咨询服务，春巴泰阁是公司旗下关于度假别墅和民宿出租的品牌。</p>
							<p>春巴泰阁以尊重为经营的最大前提，由专业的管理团队负责管理，竭尽所能给你提供温馨热情贴心的服务，希望结交与我们心意相通，磁场相近的朋友。世界很烦躁，就让春巴泰阁传递心灵的柔软，感受与自然的融惯汇通。</p>
							<p>我们暂时所做的也许不够完美，但是请相信，我们正朝目标理念不断努力。</p>
							<p>时间若允，我愿在田野山间，流连。</p>
						</div>
						<div class="col-sm-0"></div>
					</div>
					<div class="row">
						<div class="col-sm-6 col-xs-12">
							<img alt="" class="img-responsive" src="images/jianjie_01.jpg"><br> <img alt="" class="img-responsive" src="images/jianjie_02.jpg"><br>
						</div>
						<div class="col-sm-6 col-xs-12">
							<img alt="" class="img-responsive" src="images/jianjie_03.jpg"><br> <img alt="" class="img-responsive" src="images/jianjie_04.jpg"><br> <img alt="" class="img-responsive"
								src="images/jianjie_05.jpg"><br>
						</div>
					</div>

				</div>

			</div>
		</div>
	</section>

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
		});
	</script>
</body>
</html>