<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>家庭健康档案系统 - 欢迎${LoginFlage.loginName}</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- The styles -->
	<link id="bs-css" href="css/bootstrap-cerulean.css" rel="stylesheet">
	<style type="text/css">
	  body {
		padding-bottom: 40px;
	  }
	  .sidebar-nav {
		padding: 9px 0;
	  }
	</style>
	<link href="css/bootstrap-responsive.css" rel="stylesheet">
	<link href="css/charisma-app.css" rel="stylesheet">
	<link href="css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
	<link href='css/fullcalendar.css' rel='stylesheet'>
	<link href='css/fullcalendar.print.css' rel='stylesheet'  media='print'>
	<link href='css/chosen.css' rel='stylesheet'>
	<link href='css/uniform.default.css' rel='stylesheet'>
	<link href='css/colorbox.css' rel='stylesheet'>
	<link href='css/jquery.cleditor.css' rel='stylesheet'>
	<link href='css/jquery.noty.css' rel='stylesheet'>
	<link href='css/noty_theme_default.css' rel='stylesheet'>
	<link href='css/elfinder.min.css' rel='stylesheet'>
	<link href='css/elfinder.theme.css' rel='stylesheet'>
	<link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
	<link href='css/opa-icons.css' rel='stylesheet'>
	<link href='css/uploadify.css' rel='stylesheet'>

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- The fav icon -->
	<link rel="shortcut icon" href="img/favicon.ico">
  </head>
  
  <body>
    	<!-- topbar starts -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="/FamilyHealthRecord/index-index.do"> <img alt="Charisma Logo" src="img/logo20.png" /> <span>Health</span></a>
				
				<!-- theme selector starts -->
				<div class="btn-group pull-right theme-container" >
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-tint"></i><span class="hidden-phone"> 更改主题</span>
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu" id="themes">
						<li><a data-value="classic" href="#"><i class="icon-blank"></i> 经典</a></li>
						<li><a data-value="cerulean" href="#"><i class="icon-blank"></i> 蓝白</a></li>
						<li><a data-value="cyborg" href="#"><i class="icon-blank"></i> 黑蓝</a></li>
						<li><a data-value="redy" href="#"><i class="icon-blank"></i> 红白</a></li>
						<li><a data-value="journal" href="#"><i class="icon-blank"></i> 纯白</a></li>
						<li><a data-value="simplex" href="#"><i class="icon-blank"></i> 简约</a></li>
						<li><a data-value="slate" href="#"><i class="icon-blank"></i> 灰色</a></li>
						<li><a data-value="spacelab" href="#"><i class="icon-blank"></i> 白灰</a></li>
						<li><a data-value="united" href="#"><i class="icon-blank"></i> 橘色</a></li>
					</ul>
				</div>
				<!-- theme selector ends -->
				
				<!-- user dropdown starts -->
				<div class="btn-group pull-right" >
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-user"></i><span class="hidden-phone"> ${LoginFlage.loginName}[${LoginFlage.userType}]</span>
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="/FamilyHealthRecord/index-log.do">注销</a></li>
					</ul>
				</div>
				<!-- user dropdown ends -->
				<div class="btn-group pull-right" >
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-user"></i><span class="hidden-phone"> 上次登陆：<fmt:formatDate value="${lastLoginFlage}" type="both" pattern="yyyy年MM月dd日 HH時mm分"/></span>
					</a>
				</div>
				
			</div>
		</div>
	</div>
	<!-- topbar ends -->
		<div class="container-fluid">
		<div class="row-fluid">
				
			<!-- left menu starts -->
			<div class="span2 main-menu-span">
				<div class="well nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						
						<c:if test="${LoginFlage.userType=='普通会员'}">
						<li class="nav-header hidden-tablet">菜单</li>
						<li><a class="ajax-link" href="/FamilyHealthRecord/index-index.do"><i class="icon-hand-right"></i><span class="hidden-tablet"> 系统主页</span></a></li>
						<li class="nav-header hidden-tablet">家庭信息</li>
						<li><a class="ajax-link" onclick="notyText('${LoginFlage.loginName}，您现在查看我的家庭信息');" target="right" href="/FamilyHealthRecord/home-selectById.do?id=${LoginFlage.id}"><i class="icon-home"></i></i><span class="hidden-tablet"> 我的家庭信息</span></a></li>
						<li class="nav-header hidden-tablet">健康档案管理</li>
						<li><a class="ajax-link" onclick="notyText('${LoginFlage.loginName}，您现在新增家人健康档案');" target="right" href="/FamilyHealthRecord/sub/health_add.jsp"><i class="icon-hand-right"></i><span class="hidden-tablet"> 添加家人档案</span></a></li>
						<li><a class="ajax-link" onclick="notyText('${LoginFlage.loginName}，您现在查看家人健康档案');" target="right" href="/FamilyHealthRecord/health-show.do?userId=${LoginFlage.id}"><i class="icon-hand-right"></i><span class="hidden-tablet"> 家人健康档案</span></a></li>
						<li class="nav-header hidden-tablet">健康状况自测</li>
						<li><a class="ajax-link" onclick="notyText('${LoginFlage.loginName}，您现在健康状态自测早晨篇');" target="right" href="/FamilyHealthRecord/sub/test_morning.jsp"><i class="icon-hand-right"></i><span class="hidden-tablet">读懂自己-早晨篇</span></a></li>
						<li><a class="ajax-link" onclick="notyText('${LoginFlage.loginName}，您现在健康状态自测白天篇');" target="right" href="/FamilyHealthRecord/sub/test_day.jsp"><i class="icon-hand-right"></i><span class="hidden-tablet">读懂自己-白天篇</span></a></li>
						<li><a class="ajax-link" onclick="notyText('${LoginFlage.loginName}，您现在健康状态自测夜晚篇');" target="right" href="/FamilyHealthRecord/sub/test_night.jsp"><i class="icon-hand-right"></i><span class="hidden-tablet">读懂自己-夜晚篇</span></a></li>
						<li class="nav-header hidden-tablet">健康问题咨询</li>
						<li><a class="ajax-link" onclick="notyText('${LoginFlage.loginName}，您现在健康问题提问');" target="right" href="/FamilyHealthRecord/question-goToAdd.do"><i class="icon-hand-right"></i><span class="hidden-tablet">健康问题提问</span></a></li>
						<li><a class="ajax-link" onclick="notyText('${LoginFlage.loginName}，您现在健康问题提问列表');" target="right" href="/FamilyHealthRecord/question-my.do"><i class="icon-hand-right"></i><span class="hidden-tablet">我题的健康问题</span></a></li>
						</c:if>
						
						
						
						
						
						<c:if test="${LoginFlage.userType=='超级管理员'}">
						<li class="nav-header hidden-tablet">会员管理</li>
						<li><a class="ajax-link" onclick="notyText('${LoginFlage.loginName}，您现在会员管理');" target="right" href="/FamilyHealthRecord/user-all.do?id=${LoginFlage.id}"><i class="icon-home"></i></i><span class="hidden-tablet"> 会员管理</span></a></li>
						<li class="nav-header hidden-tablet">问题管理</li>
						<li><a class="ajax-link" onclick="notyText('${LoginFlage.loginName}，您现在问题管理');" target="right" href="/FamilyHealthRecord/question-all.do"><i class="icon-hand-right"></i><span class="hidden-tablet"> 问题管理</span></a></li>
						<li class="nav-header hidden-tablet">健康知识</li>
						<li><a class="ajax-link" onclick="notyText('${LoginFlage.loginName}，您现在健康知识发布');" target="right" href="/FamilyHealthRecord/sub/news_add.jsp"><i class="icon-hand-right"></i><span class="hidden-tablet">健康知识发布</span></a></li>
						<li><a class="ajax-link" onclick="notyText('${LoginFlage.loginName}，您现在健康知识管理');" target="right" href="/FamilyHealthRecord/news-all.do"><i class="icon-hand-right"></i><span class="hidden-tablet">健康知识管理</span></a></li>
						</c:if>
						
						
						<c:if test="${LoginFlage.userType=='医生会员'}">
						<li class="nav-header hidden-tablet">个人信息</li>
						<li><a class="ajax-link" onclick="notyText('${LoginFlage.loginName}，您现在个人信息管理');" target="right" href="/FamilyHealthRecord/doctor-my.do?id=${LoginFlage.id}"><i class="icon-home"></i></i><span class="hidden-tablet"> 医生个人信息</span></a></li>
						<li class="nav-header hidden-tablet">问题汇总</li>
						<c:if test="${LoginFlage.photo=='yes'}">
						<li><a class="ajax-link" onclick="notyText('${LoginFlage.loginName}，您现在问题管理');" target="right" href="/FamilyHealthRecord/question-all.do"><i class="icon-hand-right"></i><span class="hidden-tablet"> 查看问题</span></a></li>
						</c:if>
						<c:if test="${LoginFlage.photo=='no'}">
						<li><a class="ajax-link noty" data-noty-options='{"text":"您没有医生资格，请等待管理员审核！","layout":"top","type":"error"}'><i class="icon-hand-right"></i><span class="hidden-tablet"> 查看问题</span></a></li>
						</c:if>
						</c:if>
						
						
					</ul>
					
				</div><!--/.well -->
			</div><!--/span-->
			<!-- left menu ends -->
			
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
			<!-- IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII -->
			<iframe frameborder="0" scrolling="no" src="/FamilyHealthRecord/index-indexRight.do" width="85%" height="700px" name="right"></iframe>
			<!-- IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII -->
			</div><!--/fluid-row-->
				
		<hr>

		<div class="modal hide fade" id="myModal">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h3>Settings</h3>
			</div>
			<div class="modal-body">
				<p>Here settings can be configured...</p>
			</div>
			<div class="modal-footer">
				<a href="#" class="btn" data-dismiss="modal">Close</a>
				<a href="#" class="btn btn-primary">Save changes</a>
			</div>
		</div>

		<footer>
			<p class="pull-left">&copy; <a href="#" target="_blank">XXXX大学</a> </p>
			<p class="pull-right">由: <a href="#">sd 制作.</a></p>
		</footer>
		
	</div><!--/.fluid-container-->

	<!-- external javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<!-- jQuery -->
	<script src="js/jquery-1.7.2.min.js"></script>
	<!-- jQuery UI -->
	<script src="js/jquery-ui-1.8.21.custom.min.js"></script>
	<!-- transition / effect library -->
	<script src="js/bootstrap-transition.js"></script>
	<!-- alert enhancer library -->
	<script src="js/bootstrap-alert.js"></script>
	<!-- modal / dialog library -->
	<script src="js/bootstrap-modal.js"></script>
	<!-- custom dropdown library -->
	<script src="js/bootstrap-dropdown.js"></script>
	<!-- scrolspy library -->
	<script src="js/bootstrap-scrollspy.js"></script>
	<!-- library for creating tabs -->
	<script src="js/bootstrap-tab.js"></script>
	<!-- library for advanced tooltip -->
	<script src="js/bootstrap-tooltip.js"></script>
	<!-- popover effect library -->
	<script src="js/bootstrap-popover.js"></script>
	<!-- button enhancer library -->
	<script src="js/bootstrap-button.js"></script>
	<!-- accordion library (optional, not used in demo) -->
	<script src="js/bootstrap-collapse.js"></script>
	<!-- carousel slideshow library (optional, not used in demo) -->
	<script src="js/bootstrap-carousel.js"></script>
	<!-- autocomplete library -->
	<script src="js/bootstrap-typeahead.js"></script>
	<!-- tour library -->
	<script src="js/bootstrap-tour.js"></script>
	<!-- library for cookie management -->
	<script src="js/jquery.cookie.js"></script>
	<!-- calander plugin -->
	<script src='js/fullcalendar.min.js'></script>
	<!-- data table plugin -->
	<script src='js/jquery.dataTables.min.js'></script>

	<!-- chart libraries start -->
	<script src="js/excanvas.js"></script>
	<script src="js/jquery.flot.min.js"></script>
	<script src="js/jquery.flot.pie.min.js"></script>
	<script src="js/jquery.flot.stack.js"></script>
	<script src="js/jquery.flot.resize.min.js"></script>
	<!-- chart libraries end -->

	<!-- select or dropdown enhancer -->
	<script src="js/jquery.chosen.min.js"></script>
	<!-- checkbox, radio, and file input styler -->
	<script src="js/jquery.uniform.min.js"></script>
	<!-- plugin for gallery image view -->
	<script src="js/jquery.colorbox.min.js"></script>
	<!-- rich text editor library -->
	<script src="js/jquery.cleditor.min.js"></script>
	<!-- notification plugin -->
	<script src="js/jquery.noty.js"></script>
	<!-- file manager library -->
	<script src="js/jquery.elfinder.min.js"></script>
	<!-- star rating plugin -->
	<script src="js/jquery.raty.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script src="js/jquery.iphone.toggle.js"></script>
	<!-- autogrowing textarea plugin -->
	<script src="js/jquery.autogrow-textarea.js"></script>
	<!-- multiple file upload plugin -->
	<script src="js/jquery.uploadify-3.1.min.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="js/jquery.history.js"></script>
	<!-- application script for Charisma demo -->
	<script src="js/charisma.js"></script>
	<script type="text/javascript">
		var notyText = function(text){
			noty({text: text, layout: "topRight", timeout: 3000,type:"warning"});
		}
		var notyError= function(text){
			noty({text: text, layout: "topRight", timeout: 3000,type:"error"});
		}
		noty({text: "hi，${LoginFlage.loginName}，欢迎使用家庭健康档案系统", layout: "topRight", timeout: 3000,type:"warning"});
	</script>
  </body>
</html>
