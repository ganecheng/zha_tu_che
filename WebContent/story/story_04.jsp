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
<title>春巴泰阁的故事-自然的味道</title>
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
					<h3 class="column-title text-center">自然的味道</h3>
					<div class="row">
						<div class="col-sm-0"></div>
						<div class="col-sm-12 G-Article">
							<p>自然而來的必然合乎自然的本性，而這本性就是純善純美純正的。</p>
							<p>過去一直喜歡周游列国、遊山玩水。山不必有名，清靜就好；水不論大小，清澈就好，喜歡的是那種自然的味道。閒暇之時，往往在人跡罕至的山間獨坐，看形形色色的石頭，看蜿蜒於溝底的溪流，看石間艱難而傲然突出的樹木，看各種知名不知名的小草和它們樸素的花，看藍天白雲，看偶爾劃過的孤鳥和鳥群……沒有偽飾，沒有雕琢，沒有污染，平淡自然，和諧圓容。置身其中，不自覺從心底升起對天地自然的敬畏和與天地合一的靜穆，化小我於大我的悠然自在。</p>
							<p>可是浪跡於鬧市久了，對自然的味道已經變得陌生。觸目皆是現代變異的東西，入耳難聞天籟之音，連鼻端嗅的各種味道都遠離了那一份天然的旨趣。在高樓大廈之間穿行，在流水一般的車輛間踟躕，那灰濛濛的天幕遮住了星光和蔚藍。即使去所謂的名山大川旅遊，看到的也是熙熙攘攘的人流和人流中散溢出的浮躁與喧鬧。人從自然來，可今天的人們卻在急速的背離自然。</p>
							<p>可還記得野草的味道？可還記得麥苗的味道、麥子的味道和麥秸的味道？可還記得泉水的味道和炊煙的味道？可還記得鋪滿落葉的山間小道和魚蝦悠然草石掩映的小溪？看看那一幢幢摩肩接踵的現代建築，看看那一家家全封閉的院落，看看那到處都是的塑膠製品，看看那烏黑黏稠的污水溝，看看那灰濛濛的天空，一切都在漸行漸遠……</p>
							<p>「清水出芙蓉，天然去雕飾」，其實，天然何曾雕飾？天然何須雕飾？自然而來的必然合乎自然的本性，而這本性就是純善純美純正的。只是啊，來去匆匆的世人被喧囂的紅塵掩埋遮蔽得太深太深，再也表現不出來這一份天性，再也看不懂那天然的美好了。因為啊，他們沒有了那一份清靜恬淡的心境，敬畏天地的謙卑和隨順自然的通達，他們都迷失在物質和欲望的陷阱裏。</p>
							<p>可自然的味道，那才是天賜的，那才是有益於生命的，那才是我們應有的。</p>
							<p>歸去來兮，大地盡汙，陰霾彌空，胡不歸？</p>
							<p class="text-right">——转</p>

						</div>
						<div class="col-sm-0"></div>
					</div>
					<div class="row">
						<div class="col-sm-6 col-xs-12">
							<img alt="" class="img-responsive" src="images/story_009.jpg"><br> <img alt="" class="img-responsive" src="images/story_010.jpg"><br>
						</div>
						<div class="col-sm-6 col-xs-12">
							<img alt="" class="img-responsive" src="images/story_011.jpg"><br> <img alt="" class="img-responsive" src="images/story_012.jpg"><br>
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