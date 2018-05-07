<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta charset="utf-8"/>
<title>${userLoginFlag.name} - 北京森源酒店</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->

<!-- BEGIN PACE PLUGIN FILES -->
<script src="assets/global/plugins/pace/pace.min.js" type="text/javascript"></script>
<link href="assets/global/plugins/pace/themes/pace-theme-flash.css" rel="stylesheet" type="text/css"/>
<!-- END PACE PLUGIN FILES -->


<link href="assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<link rel="stylesheet" type="text/css" href="assets/global/plugins/jquery-notific8/jquery.notific8.min.css"/>
<!-- BEGIN THEME STYLES -->
<link href="assets/global/css/components-rounded.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout4/css/layout.css" rel="stylesheet" type="text/css"/>
<link id="style_color" href="assets/admin/layout4/css/themes/light.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout4/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>
  </head>

<body class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-fixed page-sidebar-closed-hide-logo">
<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top">
	<!-- BEGIN HEADER INNER -->
	<div class="page-header-inner">
		<!-- BEGIN LOGO -->
		<div class="page-logo">
			<a href="/RestaurantPos/index">
			<img src="assets/admin/layout4/img/logo-light.png" alt="logo" class="logo-default"/>
			</a>
			<div class="menu-toggler sidebar-toggler">
				<!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
			</div>
		</div>
		<!-- END LOGO -->
		<!-- BEGIN RESPONSIVE MENU TOGGLER -->
		<a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
		</a>
		<!-- END RESPONSIVE MENU TOGGLER -->
		<!-- BEGIN PAGE ACTIONS -->
		<!-- DOC: Remove "hide" class to enable the page header actions -->
		<div class="page-actions">
			<div class="btn-group">
				<button type="button" class="btn red-haze btn-sm dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
				<span class="hidden-sm hidden-xs">你的职位是&nbsp;【${userLoginFlag.type}】</span><i class="fa fa-angle-down"></i>
				</button>
				<!-- 
				<ul class="dropdown-menu" role="menu">
					<li>
						<a href="javascript:;">
						<i class="icon-docs"></i> New Post </a>
					</li>
					<li>
						<a href="javascript:;">
						<i class="icon-tag"></i> New Comment </a>
					</li>
					<li>
						<a href="javascript:;">
						<i class="icon-share"></i> Share </a>
					</li>
					<li class="divider">
					</li>
					<li>
						<a href="javascript:;">
						<i class="icon-flag"></i> Comments <span class="badge badge-success">4</span>
						</a>
					</li>
					<li>
						<a href="javascript:;">
						<i class="icon-users"></i> Feedbacks <span class="badge badge-danger">2</span>
						</a>
					</li>
				</ul>
				 -->
			</div>
		</div>
		<!-- END PAGE ACTIONS -->
		<!-- BEGIN PAGE TOP -->
		<div class="page-top">
			<!-- BEGIN HEADER SEARCH BOX -->
			<!-- DOC: Apply "search-form-expanded" right after the "search-form" class to have half expanded search box -->
			<form class="search-form" action="extra_search.html" method="GET">
				<div class="input-group">
					<input type="text" class="form-control input-sm" placeholder="Search..." name="query">
					<span class="input-group-btn">
					<a href="javascript:;" class="btn submit"><i class="icon-magnifier"></i></a>
					</span>
				</div>
			</form>
			<!-- END HEADER SEARCH BOX -->
			<!-- BEGIN TOP NAVIGATION MENU -->
			<div class="top-menu">
				<ul class="nav navbar-nav pull-right">
					<li class="separator hide">
					</li>
					<li class="separator hide">
					</li>
					
					<!-- END INBOX DROPDOWN -->
					<li class="separator hide">
					</li>
					<!-- BEGIN TODO DROPDOWN -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					
					<!-- END TODO DROPDOWN -->
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					<li class="dropdown dropdown-user dropdown-dark">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
						<span class="username username-hide-on-mobile">${userLoginFlag.name}</span>
						<!-- DOC: Do not remove below empty space(&nbsp;) as its purposely used -->
						<img alt="" class="img-circle" src="assets/admin/layout4/img/avatar8.jpg"/>
						</a>
						<ul class="dropdown-menu dropdown-menu-default">
							<li>
								<a href="/RestaurantPos/staff/myProfle/${userLoginFlag.id}" target="r">
								<i class="icon-user"></i>我的信息 </a>
							</li>
							<li>
								<a href="/RestaurantPos/loginOut">
								<i class="icon-key"></i>注销</a>
							</li>
						</ul>
					</li>
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
			</div>
			<!-- END TOP NAVIGATION MENU -->
		</div>
		<!-- END PAGE TOP -->
	</div>
	<!-- END HEADER INNER -->
</div>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
	<!-- BEGIN SIDEBAR -->
	<div class="page-sidebar-wrapper">
		<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
		<!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
		<div class="page-sidebar navbar-collapse collapse">
			<!-- BEGIN SIDEBAR MENU -->
			<!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
			<!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
			<!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
			<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
			<!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
			<!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
			<ul class="page-sidebar-menu " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
				<li class="start ">
					<a href="/RestaurantPos/index">
					<i class="icon-home"></i>
					<span class="title">主页</span>
					</a>
				</li>
				
				
				
				
				
				<c:if test="${userLoginFlag.type == '超级管理员'}">
				
					
				
				<li>
					<a href="javascript:;">
					<i class="icon-paper-plane"></i>
					<span class="title">预定管理</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="/RestaurantPos/res/go" target="r">
							<i class="icon-home"></i>
							预定餐桌</a>
						</li>
						<li>
							<a href="/RestaurantPos/res/come" target="r">
							<i class="icon-rocket"></i>
							预定到店</a>
						</li>
						<li>
							<a href="/RestaurantPos/res/today" target="r">
							<i class="icon-basket"></i>
							今日预定</a>
						</li>
						<li>
							<a href="/RestaurantPos/res/all" target="r">
							<i class="icon-tag"></i>
							所有预定</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="javascript:;">
					<i class="icon-basket"></i>
					<span class="title">点餐管理</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="/RestaurantPos/order/getTable" target="r">
							<i class="icon-home"></i>
							选取桌子</a>
						</li>
						<li>
							<a href="/RestaurantPos/order/getMenu" target="r">
							<i class="icon-basket"></i>
							选取菜品</a>
						</li>
						<li>
							<a href="/RestaurantPos/order/getOrders" target="r">
							<i class="icon-tag"></i>
							菜品下单</a>
						</li>
						
						<li>
							<a href="/RestaurantPos/order/all" target="r">
							<i class="icon-tag"></i>
							下单汇总</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="javascript:;">
					<i class="icon-rocket"></i>
					<span class="title">后厨管理</span>
					<span class="arrow"></span>
					</a>
					<ul class="sub-menu">
						<li><a href="/RestaurantPos/order/doAll" target="r"><span class="badge badge-warning"></span>菜品制作</a></li>
					</ul>
				</li>
				<li>
					<a href="javascript:;">
					<i class="icon-diamond"></i>
					<span class="title">菜品管理</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li><a href="/RestaurantPos/menu/go" target="r">添加菜品</a></li>
						<li><a href="/RestaurantPos/menu/all" target="r">所有菜品</a></li>
					</ul>
				</li>
				<li>
					<a href="javascript:;">
					<i class="icon-puzzle"></i>
					<span class="title">餐桌管理</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li><a href="/RestaurantPos/table/go" target="r">添加餐桌</a></li>
						<li><a href="/RestaurantPos/table/all" target="r">所有餐桌</a></li>
					</ul>
				</li>
				
				<li>
					<a href="javascript:;">
					<i class="icon-settings"></i>
					<span class="title">用户管理</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li><a href="/RestaurantPos/staff/go" target="r">添加用户</a></li>
						<li><a href="/RestaurantPos/staff/all" target="r">所有用户</a></li>
					</ul>
				</li>
				
				
				<li class="start ">
					<a href="/RestaurantPos/order/chart" target="r">
					<i class="icon-bar-chart"></i>
					<span class="title">近日营业</span>
					</a>
				</li>
				
				
				
				
				</c:if>
				
				
				
				<c:if test="${userLoginFlag.type == '点餐员'}">
				
				
				<li>
					<a href="javascript:;">
					<i class="icon-paper-plane"></i>
					<span class="title">预定管理</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="/RestaurantPos/res/go" target="r">
							<i class="icon-home"></i>
							预定餐桌</a>
						</li>
						<li>
							<a href="/RestaurantPos/res/come" target="r">
							<i class="icon-rocket"></i>
							预定到店</a>
						</li>
						<li>
							<a href="/RestaurantPos/res/today" target="r">
							<i class="icon-basket"></i>
							今日预定</a>
						</li>
						<li>
							<a href="/RestaurantPos/res/all" target="r">
							<i class="icon-tag"></i>
							所有预定</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="javascript:;">
					<i class="icon-basket"></i>
					<span class="title">点餐管理</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="/RestaurantPos/order/getTable" target="r">
							<i class="icon-home"></i>
							选取桌子</a>
						</li>
						<li>
							<a href="/RestaurantPos/order/getMenu" target="r">
							<i class="icon-basket"></i>
							选取菜品</a>
						</li>
						<li>
							<a href="/RestaurantPos/order/getOrders" target="r">
							<i class="icon-tag"></i>
							菜品下单</a>
						</li>
						
						<li>
							<a href="/RestaurantPos/order/all" target="r">
							<i class="icon-tag"></i>
							下单汇总</a>
						</li>
					</ul>
				</li>
				
				
				</c:if>
				
				
				
				<c:if test="${userLoginFlag.type == '后厨'}">
				<li>
					<a href="javascript:;">
					<i class="icon-rocket"></i>
					<span class="title">后厨管理</span>
					<span class="arrow"></span>
					</a>
					<ul class="sub-menu">
						<li><a href="/RestaurantPos/order/doAll" target="r"><span class="badge badge-warning"></span>菜品制作</a></li>
					</ul>
				</li>
				</c:if>
				
				
				
				
				
				
				

				
			</ul>
			<!-- END SIDEBAR MENU -->
		</div>
	</div>
	<!-- END SIDEBAR -->
	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
			<iframe src="/RestaurantPos/index/index.html" width="100%" height="100%" style="border: 0;" name="r"></iframe>
		</div>
	</div>
	<!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
	<div class="page-footer-inner">
		 2017  &copy; 辽宁工程技术大学. 郎曼  .
	</div>
	<div class="scroll-to-top">
		<i class="icon-arrow-up"></i>
	</div>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="assets/global/plugins/respond.min.js"></script>
<script src="assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/global/plugins/jquery-notific8/jquery.notific8.min.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script src="assets/admin/pages/scripts/ui-notific8.js"></script>

<!-- END CORE PLUGINS -->
<script src="assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/layout.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/demo.js" type="text/javascript"></script>
<script>
jQuery(document).ready(function() {    
   Metronic.init(); // init metronic core components
Layout.init(); // init current layout
Demo.init(); // init demo features
});

if (self != top) {  
    top.location=self.location;
}



var upText = function(abc){
	
	$.notific8(abc, {
		  life: 5000, 
		  heading: '${userLoginFlag.name} 系统消息提示', 
		  theme: 'tangerine', 
		  sticky: false, 
		  horizontalEdge: 'bottom', 
		  verticalEdge: 'right', 
		  zindex: 1500,
		  icon: false,
		  closeText: 'CLOSE',
		  onInit: null,
		  onCreate: null,
		  onClose: null
	});
	
}
	
	
	
upText("欢迎登陆北京森源酒店点餐系统！");
	
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
