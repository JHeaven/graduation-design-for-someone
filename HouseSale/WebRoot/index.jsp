<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>${userLoginFlag.loginName} - 远远房屋销售</title>
    
	<meta http-equiv="pragma" content="no-cache"> 
	<meta http-equiv="cache-control" content="no-cache">
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
	<meta name="MobileOptimized" content="320">
	
	<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
<link href="assets/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css"/>
<!-- END PAGE LEVEL PLUGIN STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/pages/tasks.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
<link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>
	
	
	<style type="text/css">
    body {
		font-family: "Verdana", "Hiragino Sans GB", "Microsoft YaHei","WenQuanYi Micro Hei", sans-serif;
	}
    </style>
  </head>
  
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed page-full-width">
<!-- BEGIN HEADER -->
<div class="header navbar navbar-inverse navbar-fixed-top">
	<!-- BEGIN TOP NAVIGATION BAR -->
	<div class="header-inner">
		<!-- BEGIN LOGO -->
		<a class="navbar-brand" href="index.html">
		<img src="assets/img/logo-big.png" alt="logo" class="img-responsive"/>
		</a>
		<!-- END LOGO -->
		<!-- BEGIN HORIZANTAL MENU -->
		<div class="hor-menu hidden-sm hidden-xs">
			<ul class="nav navbar-nav">
				<li>
					<a href="/HouseSale/index">
					远远房屋销售 </a>
				</li>
				<li class="active">
					<a class="dropdown-toggle" href="/HouseSale/com/showComList" target="r">
					<span class="selected">
					</span>
					 最新房屋销售
					</a>
				</li>
				<li>
					<a href="/HouseSale/topic/showTopic/1" target="r">供需专题</a>
				</li>
				<li>
					<a href="/HouseSale/new/show" target="r">房屋资讯</a>
				</li>
				<!-- <li>
					<a href="/HouseSale/food/show" target="r">菜谱</a>
				</li> -->
				<li>
					<a data-toggle="dropdown" data-hover="dropdown" data-close-others="true" class="dropdown-toggle" href="">我的购房 <i class="fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="/HouseSale/com/myCast/${userLoginFlag.userId}" target="r"><i class="fa fa-shopping-cart"></i> 我的房屋候选</a>
						</li>
						<li>
							<a href="/HouseSale/com/myOrder/${userLoginFlag.userId}" target="r"><i class="fa fa-bar-chart-o"></i> 我的合同</a>
						</li>
					</ul>
				</li>
				<li>
					<span class="hor-menu-search-form-toggler">
						&nbsp;
					</span>
					<div class="search-form">
						<form class="form-search">
							<div class="input-group">
								<input type="text" placeholder="Search..." class="form-control">
								<div class="input-group-btn">
									<button type="button" class="btn"></button>
								</div>
							</div>
						</form>
					</div>
				</li>
			</ul>
		</div>
		<!-- END HORIZANTAL MENU -->
		<!-- BEGIN RESPONSIVE MENU TOGGLER -->
		<a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
		<img src="assets/img/menu-toggler.png" alt=""/>
		</a>
		<!-- END RESPONSIVE MENU TOGGLER -->
		<!-- BEGIN TOP NAVIGATION MENU -->
		<ul class="nav navbar-nav pull-right">
			<!-- BEGIN NOTIFICATION DROPDOWN -->
			<!-- END NOTIFICATION DROPDOWN -->
			<!-- BEGIN INBOX DROPDOWN -->
			
			<!-- END INBOX DROPDOWN -->
			<!-- BEGIN TODO DROPDOWN -->
			
			<!-- END TODO DROPDOWN -->
			<!-- BEGIN USER LOGIN DROPDOWN -->
			<li class="dropdown user">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
				<img alt="" src="assets/img/hand.png" width="30px" height="30px"/>
				<span class="username">
					${userLoginFlag.loginName}
				</span>
				<i class="fa fa-angle-down"></i>
				</a>
				<ul class="dropdown-menu">
					<li>
						<a href="/HouseSale/user/myPrf/${userLoginFlag.userId}" target="r"><i class="fa fa-user"></i> 我的资料</a>
					</li>
					<li>
						<a href="/HouseSale/com/myCast/${userLoginFlag.userId}" target="r"><i class="fa fa-calendar"></i> 我的房屋候选</a>
					</li>
					<li>
						<a href="/HouseSale/com/myOrder/${userLoginFlag.userId}" target="r"><i class="fa fa-envelope"></i> 我的合同
						</a>
					</li>
					
					<li class="divider">
					</li>
					<li>
						<a href="javascript:;" id="trigger_fullscreen"><i class="fa fa-move"></i> 全屏</a>
					</li>
					<li>
						<a href="/HouseSale/loginOut"><i class="fa fa-key"></i> 注销</a>
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
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
	<!-- BEGIN EMPTY PAGE SIDEBAR -->
	<div class="page-sidebar navbar-collapse collapse">
		<ul class="page-sidebar-menu visible-sm visible-xs">
			<li>
				<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
				<form class="sidebar-search" action="extra_search.html" method="POST">
					<div class="form-container">
						<div class="input-box">
							<a href="javascript:;" class="remove"></a>
							<input type="text" placeholder="Search..."/>
							<input type="button" class="submit" value=" "/>
						</div>
					</div>
				</form>
				<!-- END RESPONSIVE QUICK SEARCH FORM -->
			</li>
			<li>
				<a class="active" href="index.html">
				Dashboard </a>
			</li>
			<li class="active">
				<a href="javascript:;">
				Layouts
				<span class="arrow open">
				</span>
				<span class="selected">
				</span>
				</a>
				<ul class="sub-menu">
					<li>
						<a href="layout_language_bar.html">
						<span class="badge badge-roundless badge-important">
							new
						</span>
						Language Switch Bar</a>
					</li>
					<li>
						<a href="layout_horizontal_sidebar_menu.html">
						Horizontal & Sidebar Menu </a>
					</li>
					<li class="active">
						<a href="layout_horizontal_menu1.html">
						Horizontal Menu 1 </a>
					</li>
					<li>
						<a href="layout_horizontal_menu2.html">
						Horizontal Menu 2 </a>
					</li>
					<li>
						<a href="layout_disabled_menu.html">
						Disabled Menu Links</a>
					</li>
					<li>
						<a href="layout_promo.html">
						Promo Page </a>
					</li>
					<li>
						<a href="layout_email.html">
						Email Templates </a>
					</li>
					<li>
						<a href="layout_ajax.html">
						Content Loading via Ajax</a>
					</li>
					<li>
						<a href="layout_sidebar_closed.html">
						Sidebar Closed Page </a>
					</li>
					<li>
						<a href="layout_sidebar_fixed.html">
						Sidebar Fixed Page </a>
					</li>
					<li>
						<a href="layout_blank_page.html">
						Blank Page </a>
					</li>
					<li>
						<a href="layout_boxed_page.html">Boxed Page</a>
					</li>
					<li>
						<a href="layout_boxed_not_responsive.html">
						Non-Responsive Boxed Layout </a>
					</li>
					<li>
						<a href="javascript:;">
						More options
						<span class="arrow">
						</span>
						</a>
						<ul class="sub-menu">
							<li>
								<a href="#">Second level link</a>
							</li>
							<li>
								<a href="javascript:;">More options
								<span class="arrow">
								</span>
								</a>
								<ul class="sub-menu">
									<li>
										<a href="index.html">Third level link</a>
									</li>
									<li>
										<a href="index.html">Third level link</a>
									</li>
									<li>
										<a href="index.html">Third level link</a>
									</li>
									<li>
										<a href="index.html">Third level link</a>
									</li>
									<li>
										<a href="index.html">Third level link</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="index.html">Second level link</a>
							</li>
							<li>
								<a href="index.html">Second level link</a>
							</li>
							<li>
								<a href="index.html">Second level link</a>
							</li>
						</ul>
					</li>
				</ul>
			</li>
			<li>
				<a href="/HouseSale/showTopic/1" target="r">专题</a>
			</li>
			<li>
				<a href="">Extra
				<span class="arrow">
				</span>
				</a>
				<ul class="sub-menu">
					<li>
						<a href="index.html">About Us</a>
					</li>
					<li>
						<a href="index.html">Services</a>
					</li>
					<li>
						<a href="index.html">Pricing</a>
					</li>
					<li>
						<a href="index.html">FAQs</a>
					</li>
					<li>
						<a href="index.html">Gallery</a>
					</li>
					<li>
						<a href="index.html">Registration</a>
					</li>
					<li>
						<a href="index.html">2 Columns (Left)</a>
					</li>
					<li>
						<a href="index.html">2 Columns (Right)</a>
					</li>
				</ul>
			</li>
		</ul>
	</div>
	<!-- END EMPTY PAGE SIDEBAR -->
	<!-- END SIDEBAR -->
	<!-- BEGIN CONTENT -->
	
		<iframe src="/HouseSale/index/index.html" width="100%" height="100%" style="border: 0;" name="r"></iframe>
		
	<!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="footer">
	<div class="footer-inner">
		 2017 &copy; 袁远 - 辽宁工程技术大学.
	</div>
	<div class="footer-tools">
		<span class="go-top">
			<i class="fa fa-angle-up"></i>
		</span>
	</div>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="assets/plugins/respond.min.js"></script>
<script src="assets/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="assets/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="assets/plugins/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>
<script src="assets/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js" type="text/javascript"></script>
<script src="assets/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>
<script src="assets/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js" type="text/javascript"></script>
<script src="assets/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js" type="text/javascript"></script>
<script src="assets/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
<script src="assets/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>
<script src="assets/plugins/flot/jquery.flot.js" type="text/javascript"></script>
<script src="assets/plugins/flot/jquery.flot.resize.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.pulsate.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap-daterangepicker/moment.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
<script src="assets/plugins/gritter/js/jquery.gritter.js" type="text/javascript"></script>
<!-- IMPORTANT! fullcalendar depends on jquery-ui-1.10.3.custom.min.js for drag & drop support -->
<script src="assets/plugins/fullcalendar/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-easy-pie-chart/jquery.easy-pie-chart.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/scripts/app.js" type="text/javascript"></script>
<script src="assets/scripts/index.js" type="text/javascript"></script>
<script src="assets/scripts/tasks.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
jQuery(document).ready(function() {    
   App.init(); // initlayout and core plugins
   Index.init();
});




var upText = function(textS){

	setTimeout(function () {
	    var unique_id = $.gritter.add({
	        // (string | mandatory) the heading of the notification
	        title: '${userLoginFlag.loginName},系统消息提示',
	        // (string | mandatory) the text inside the notification
	        text: textS ,
	        // (string | optional) the image to display on the left
	        image: './assets/img/title.png',
	        // (bool | optional) if you want it to fade out on its own or just sit there
	        sticky: true,
	        // (int | optional) the time you want it to be alive for before fading out
	        time: '',
	        // (string | optional) the class name you want to apply to that specific message
	        class_name: 'my-sticky-class'
	    });
	
	    // You can have it return a unique id, this can be used to manually remove it later using
	    setTimeout(function () {
	        $.gritter.remove(unique_id, {
	            fade: true,
	            speed: 'slow'
	        });
	    }, 5000);
	}, 100);
}


upText('欢迎来到远远房屋销售');

</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
