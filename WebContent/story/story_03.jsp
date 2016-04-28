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
<title>春巴泰阁的故事-“春巴泰阁”的由来</title>
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
					<h3 class="column-title text-center">“春巴泰阁”的由来</h3>
					<div class="row">
						<div class="col-sm-0"></div>
						<div class="col-sm-12 G-Article">
							<p>阳光，春风，篱笆，花朵；鸟鸣，鸢飞，蝶舞，唱响了万物复苏、否极泰来的歌谣。心，在一抹阳光中翩飞；春，在姹紫嫣红中着色，我在时光的素笺上，用明媚的笔调，将春的美好临摹，那飞扬在指尖的韵律，是生命流动的色彩。是谁将温暖留在了春天？是谁用诗意装点了流年？</p>
							<p>最美人间芳菲四月天，这样的季节，无须找寻，便会与春意不期而遇，走在时光的陌上，怀揣一颗清新的心，那些被岁月着色的经历，都是生命的馈赠，采一缕阳光，用来安放梦的羽翼，只闻花香，不谈悲喜。</p>
							<p>人生就是一场远行，我们一路行色匆匆，总会因为走的太急而负累，等有一天回头望时，已找不到来时路，有的时候，停下疲惫的脚步，于喧嚣中寻一份静谧，适当的放空自己，是对心灵的修复，无论何时，都别忘了等一等灵魂。</p>
							<p>从化温泉-春巴泰阁，一个山青水秀，阳光暖暖的地方，有不知名的小花开在路旁，有清泉在流淌，还有路人在林荫小路上行走，让你在静美的田园忘返流连，寻找那悠然见南山的安逸心境，让心与灵魂重遇。</p>
						</div>
						<div class="col-sm-0"></div>
					</div>
					<div class="row">
						<div class="col-sm-6 col-xs-12">
							<img alt="" class="img-responsive" src="images/story_020.jpg"><br> <img alt="" class="img-responsive" src="images/story_021.jpg"><br>
						</div>
						<div class="col-sm-6 col-xs-12">
							<img alt="" class="img-responsive" src="images/story_022.jpg"><br> <img alt="" class="img-responsive" src="images/story_023.jpg"><br>
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