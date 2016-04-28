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
<title>春巴泰阁的故事-恬静的栖居</title>
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
					<h3 class="column-title text-center">恬静的栖居</h3>
					<div class="row">
						<div class="col-sm-0"></div>
						<div class="col-sm-12 G-Article">
							<p>有一天，你是否有过想逃离这个城市的想法，虽然你曾经或正在获得财富、成长、荣耀等等。但内心总有一种召唤，在山水间，在阡陌旁，在静谧山村里，重新拥有与自然的感应，与土地的碰触，感受人和人最真诚的交往，短暂的回归真实生活的质朴。</p>
							<p>我们也和你一样，其实离不开城市的霓虹灯火，但总想为心找一个安静的归属。暂时离开大城市的圈子，重新认识真实的世界，不为别的，只为心灵可以亲近自然，重拾山水，让这里的一切为你重新整理柔软的内心，剥开正在被冷漠包围起来的心。</p>
							<p>春巴泰阁，用心意打造的精致民宿，修建历时一年，像一把手工的紫砂壶，只有历经不断的捏造，抚摸和思考才会呈现精品。春巴泰阁用心设计，精心选材，背靠山丘，面朝流溪河，地处温泉，推窗即观山面河。修建设计处处用心传承质朴，尽我们的心意，最大程度地保持家的温馨。床铺，家具，用品，花木……6个精致房间，可观山，可远眺星空，可宅院泡浴，可捧茶闲聊，可唱K放松，可烹调美食，可切磋麻将，可喟初识只有温馨，别后难忘风月。</p>
							<p>我们以尊重为经营的最大前提，由专业的管理团队负责管理，竭尽所能给你提供温馨热情贴心的服务，希望结交与我们心意相通，磁场相近的朋友。世界很烦躁，就让春巴泰阁传递心灵的柔软，感受与自然的融惯汇通。</p>
						</div>
						<div class="col-sm-0"></div>
					</div>
					<div class="row">
						<div class="col-sm-6 col-xs-12">
							<img alt="" class="img-responsive" src="images/story_024.jpg"><br> <img alt="" class="img-responsive" src="images/story_025.jpg"><br>
						</div>
						<div class="col-sm-6 col-xs-12">
							<img alt="" class="img-responsive" src="images/story_003.jpg"><br> <img alt="" class="img-responsive" src="images/story_004.jpg"><br>
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