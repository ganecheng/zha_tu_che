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
<html lang="zh-cn">
<head>
<base href="${basePath }">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>淄博市渣土车管理系统</title>
<meta name="renderer" content="webkit">

<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css" />
<link href="assets/css/animate.css" rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link href="assets/plugins/select2/select2.css" rel="stylesheet" type="text/css" />
<link href="assets/plugins/select2/select2-metronic.css" rel="stylesheet" type="text/css" />
<link href="assets/plugins/data-tables/DT_bootstrap.css" rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="assets/css/style-metronic.css" rel="stylesheet" type="text/css" />
<link href="assets/css/style.css" rel="stylesheet" type="text/css" />
<link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css" />
<link href="assets/css/plugins.css" rel="stylesheet" type="text/css" />
<link href="assets/css/pages/tasks.css" rel="stylesheet" type="text/css" />
<link href="assets/css/themes/light.css" rel="stylesheet" type="text/css" id="style_color" />
<link href="assets/css/print.css" rel="stylesheet" type="text/css" media="print" />
<link href="assets/css/custom.css" rel="stylesheet" type="text/css" />
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico" />

<script type="text/javascript">
	var isHTML5 = true;
</script>
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
	<script src="js/excanvas.min.js"></script> 
    <script type="text/javascript">
		isHTML5 = false;
	</script>
<![endif]-->
</head>
<!--/head-->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
	<!-- BEGIN HEADER -->
	<div class="header navbar navbar-fixed-top">
		<!-- BEGIN TOP NAVIGATION BAR -->
		<div class="header-inner">
			<!-- BEGIN LOGO -->
			<a class="navbar-brand" href="index.html">
				<!-- <img src="assets/img/logo.png" alt="logo" class="img-responsive" /> -->
				淄博市渣土车管理系统
			</a>
			<!-- END LOGO -->
			<!-- BEGIN RESPONSIVE MENU TOGGLER -->
			<a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<img src="assets/img/menu-toggler.png" alt="" />
			</a>
			<!-- END RESPONSIVE MENU TOGGLER -->
			<!-- BEGIN TOP NAVIGATION MENU -->
			<ul class="nav navbar-nav pull-right">
				<!-- BEGIN INBOX DROPDOWN -->
				<li class="dropdown" id="header_inbox_bar">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
						<i class="fa fa-envelope"></i> <span class="badge"> 5 </span>
					</a>
					<ul class="dropdown-menu extended inbox">
						<li>
							<p>你有 12 个通知</p>
						</li>

					</ul>
				</li>
				<!-- END INBOX DROPDOWN -->
				<!-- BEGIN USER LOGIN DROPDOWN -->
				<li class="dropdown user">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
						<img alt="" src="assets/img/avatar1_small.jpg" /> <span class="username"> 淄小博 </span> <i class="fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="extra_profile.html">
								<i class="fa fa-user"></i> 个人信息
							</a>
						</li>
						<li>
							<a href="inbox.html">
								<i class="fa fa-envelope"></i> 我的通知 <span class="badge badge-danger"> 3 </span>
							</a>
						</li>
						<li class="divider"></li>
						<li>
							<a href="javascript:;" id="trigger_fullscreen">
								<i class="fa fa-arrows"></i> 全屏
							</a>
						</li>
						<li>
							<a href="extra_lock.html">
								<i class="fa fa-lock"></i> 离开模式
							</a>
						</li>
						<li>
							<a href="user/login.jsp">
								<i class="fa fa-key"></i> 退出登录
							</a>
						</li>
					</ul>
				</li>
				<!-- END USER LOGIN DROPDOWN -->
			</ul>
			<!-- END TOP NAVIGATION MENU -->
		</div>
		<!-- END TOP NAVIGATION BAR -->
	</div>
	<!-- END HEADER -->
	<div class="clearfix"></div>
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar-wrapper">
			<div class="page-sidebar navbar-collapse collapse">
				<!-- BEGIN SIDEBAR MENU -->
				<ul class="page-sidebar-menu" data-auto-scroll="true" data-slide-speed="200">
					<li class="sidebar-toggler-wrapper">
						<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
						<div class="sidebar-toggler hidden-phone"></div>
						<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
					</li>
					<li class="sidebar-search-wrapper">
						<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
						<form class="sidebar-search" action="extra_search.html" method="POST">
							<div class="form-container">
								<div class="input-box">
									<a href="javascript:;" class="remove"> </a>
									<input type="text" placeholder="搜索内容" />
									<input type="button" class="submit" value=" " />
								</div>
							</div>
						</form>
						<!-- END RESPONSIVE QUICK SEARCH FORM -->
					</li>
					<li class="start ">
						<a href="index.html">
							<i class="fa fa-home"></i> <span class="title"> 首页 </span>
						</a>
					</li>
					<li class="active">
						<a href="javascript:;">
							<i class="fa fa-folder-open"></i> <span class="title"> 基本功能 </span> <span class="arrow "> </span>
						</a>
						<ul class="sub-menu">
							<li>
								<a href="item/index.jsp">
									<i class="fa fa-folder-open"></i> 工地信息管理
								</a>
							</li>
							<li>
								<a href="item/index2.jsp">
									<i class="fa fa-folder-open"></i> 驾驶员信息管理
								</a>
							</li>
							<li class="active">
								<a href="item/index3.jsp">
									<i class="fa fa-folder-open"></i> 渣土车信息管理
								</a>
							</li>
							<li>
								<a href="item/index4.jsp">
									<i class="fa fa-folder-open"></i> 历史轨迹查询和回放
								</a>
							</li>
						</ul>
					</li>
					<li class="">
						<a href="javascript:;">
							<i class="fa fa-folder-open"></i> <span class="title"> 渣土车专用管理功能</span> <span class="arrow "> </span>
						</a>
						<ul class="sub-menu">
							<li class="">
								<a href="item/index5.jsp">
									<i class="fa fa-folder-open"></i> 设置电子围栏
								</a>
							</li>
							<li>
								<a href="item/index6.jsp">
									<i class="fa fa-folder-open"></i> 路线规划
								</a>
							</li>
							<li>
								<a href="item/index7.jsp">
									<i class="fa fa-folder-open"></i> 违章报警管理
								</a>
							</li>
							<li>
								<a target="_blank" href="item/index8.jsp">
									<i class="fa fa-folder-open"></i> 监控管理
								</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="javascript:;">
							<i class="fa fa-envelope"></i> <span class="title"> 通知中心 </span> <span class="arrow "> </span>
						</a>
						<ul class="sub-menu">
							<li>
								<a href="inbox.html">
									<i class="fa fa-envelope"></i> <span class="badge badge-important"> 4 </span> 我收到的通知
								</a>
							</li>
						</ul>
					</li>
				</ul>
				<!-- END SIDEBAR MENU -->
			</div>
		</div>
		<!-- END SIDEBAR -->
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
				<div class="modal fade" id="add_listrecord_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content"></div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
				<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
				<!-- BEGIN STYLE CUSTOMIZER -->
				<div class="theme-panel hidden-xs hidden-sm">
					<div class="toggler"></div>
					<div class="toggler-close"></div>
					<div class="theme-options">
						<div class="theme-option theme-colors clearfix">
							<span> 主题颜色 </span>
							<ul>
								<li class="color-black current color-default" data-style="default"></li>
								<li class="color-blue" data-style="blue"></li>
								<li class="color-brown" data-style="brown"></li>
								<li class="color-purple" data-style="purple"></li>
								<li class="color-grey" data-style="grey"></li>
								<li class="color-white color-light" data-style="light"></li>
							</ul>
						</div>
						<div class="theme-option">
							<span> 宽度布局 </span> <select class="layout-option form-control input-small">
								<option value="fluid" selected="selected">铺满屏幕</option>
								<option value="boxed">居中</option>
							</select>
						</div>
						<div class="theme-option">
							<span> 顶部显示 </span> <select class="header-option form-control input-small">
								<option value="fixed" selected="selected">固定在顶部</option>
								<option value="default">随页面滚动</option>
							</select>
						</div>
						<div class="theme-option">
							<span> 侧边栏显示 </span> <select class="sidebar-option form-control input-small">
								<option value="fixed">固定显示</option>
								<option value="default" selected="selected">随页面滚动</option>
							</select>
						</div>
						<div class="theme-option">
							<span> 侧边栏位置 </span> <select class="sidebar-pos-option form-control input-small">
								<option value="left" selected="selected">左边</option>
								<option value="right">右边</option>
							</select>
						</div>
						<div class="theme-option">
							<span> 底部显示 </span> <select class="footer-option form-control input-small">
								<option value="fixed">固定显示</option>
								<option value="default" selected="selected">随页面滚动</option>
							</select>
						</div>
					</div>
				</div>
				<!-- END STYLE CUSTOMIZER -->
				<!-- BEGIN PAGE HEADER-->
				<div class="row">
					<div class="col-md-12">
						<!-- BEGIN PAGE TITLE & BREADCRUMB-->
						<h3 class="page-title">
							渣土车信息管理 <small>管理渣土车车牌号、出厂日期、载重、保险状态、保养状态等信息</small>
						</h3>
						<ul class="page-breadcrumb breadcrumb">
							<li>
								<i class="fa fa-home"></i>
								<a href="index.html"> 首页 </a>
								<i class="fa fa-angle-right"></i>
							</li>
							<li>
								<a href="#"> 基本功能 </a>
								<i class="fa fa-angle-right"></i>
							</li>
							<li>
								<a href="#"> 渣土车信息管理 </a>
							</li>
						</ul>
						<!-- END PAGE TITLE & BREADCRUMB-->
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row" id="table_box_div">
					<div class="col-md-12 col-sm-12">
						<!-- BEGIN EXAMPLE TABLE PORTLET-->
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-user"></i> 渣土车信息管理
								</div>
								<div class="actions">
									<button id="add_listrecord_button" class="btn blue" data-toggle="modal" data-remote="true" href="item/ajax3/add_listrecord.jsp" data-target="#add_listrecord_modal">
										<i class="fa fa-plus"></i> 添加
									</button>

								</div>
							</div>
							<div class="portlet-body">
								<div id="list_record_div" data-link="admin/show_trunk_list">
									<img class="center-block" style="margin-top: 30px; margin-bottom: 30px;" alt="" src="images/loading.gif">
								</div>
							</div>
						</div>
						<!-- END EXAMPLE TABLE PORTLET-->
					</div>
				</div>
				<!-- END PAGE CONTENT-->
			</div>
		</div>
		<!-- END CONTENT -->
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<div class="footer">
		<div class="footer-inner">2016 &copy; 淄博市渣土车管理系统.</div>
		<div class="footer-tools">
			<span class="go-top"> <i class="fa fa-angle-up"></i>
			</span>
		</div>
	</div>
	<!-- END FOOTER -->
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<script src="assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
	<script src="assets/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
	<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
	<script src="assets/plugins/jquery.cokie.min.js" type="text/javascript"></script>
	<script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/bootstrap.file-input.js"></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script type="text/javascript" src="assets/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
	<script type="text/javascript" src="assets/plugins/jquery-validation/localization/messages_zh.js"></script>
	<script type="text/javascript" src="assets/plugins/select2/select2.min.js"></script>
	<script type="text/javascript" src="assets/plugins/jquery-bootpag/jquery.bootpag.min.js"></script>
	<script type="text/javascript" src="js/jquery.form.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="js/app.js"></script>
	<!-- END PAGE LEVEL SCRIPTS -->

	<script>
		$(function()
		{
			// Initiat WOW JS
			if (isHTML5 == true)
			{
				new WOW().init();
			}
			App.init();
			$("#list_record_div").load($("#list_record_div").attr("data-link"), {}, function()
			{

			});
			$("#add_listrecord_button").click(function()
			{
				$("#add_listrecord_modal").find(".modal-content").load($("#add_listrecord_button").attr("href"), {}, function()
				{
					$("#add_listrecord_modal").modal('show');
				});
			});

		});
	</script>
	<!-- END JAVASCRIPTS -->

</body>
</html>