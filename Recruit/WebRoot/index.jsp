<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta charset="utf-8" />
	<title>${userLoginFlag.loginName} - 埃森哲招聘</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	 
	<link href="assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="assets/css/animate.min.css" rel="stylesheet" />
	<link href="assets/css/style.min.css" rel="stylesheet" />
	<link href="assets/css/style-responsive.min.css" rel="stylesheet" />
	<link href="assets/css/theme/default.css" rel="stylesheet" id="theme" />
	    <link href="assets/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" />
	
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
  </head>
  
<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade in"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin #page-container -->
	<div id="page-container" class="fade page-without-sidebar page-header-fixed">
		<!-- begin #header -->
		<div id="header" class="header navbar navbar-default navbar-fixed-top">
			<!-- begin container-fluid -->
			<div class="container-fluid">
				<!-- begin mobile sidebar expand / collapse button -->
				<div class="navbar-header">
					<a href="/Recruit/index" class="navbar-brand"><span class="navbar-logo"></span> 埃森哲招聘</a>
					<button type="button" class="navbar-toggle" data-click="sidebar-toggled">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!-- end mobile sidebar expand / collapse button -->
				
				<!-- begin header navigation right -->
				<ul class="nav navbar-nav navbar-right">
					<li>
						<form class="navbar-form full-width" method="post" action="/Recruit/position/search" target="r">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="检索招聘信息" name="title"/>
								<button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
							</div>
						</form>
					</li>
					<li class="dropdown">
						<a href="/Recruit/new/show" class="dropdown-toggle f-s-14" target="r">
							<i class="fa fa-soundcloud">最新资讯</i>
						</a>
					</li>
					<li class="dropdown">
						<c:if test="${userLoginFlag.site == 2}">
						<a href="/Recruit/position/add/${userLoginFlag.id}" class="dropdown-toggle f-s-14" target="r">
							<i class="fa fa-bell-o">发布招聘信息</i>
						</a>
						</c:if>
						
						<c:if test="${userLoginFlag.site == 1}">
						<a href="/Recruit/position/showall" class="dropdown-toggle f-s-14" target="r">
							<i class="fa fa-bell-o">查看招聘信息</i>
						</a>
						</c:if>
						
					</li>
					<li class="dropdown navbar-user">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
							<img src="assets/img/user-13.jpg" alt="" /> 
							<span class="hidden-xs">${userLoginFlag.loginName}</span> <b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li class="arrow"></li>
							<li><a href="/Recruit/user/update/${userLoginFlag.id}" target="r">我的个人资料</a></li>
							<c:if test="${userLoginFlag.site == 1}">
								<li><a href="/Recruit/re/update/${userLoginFlag.id}" target="r">我的简历</a></li>
								<li class="divider"></li>
								<li><a href="/Recruit/section/my/${userLoginFlag.id}" target="r">我的投递记录</a></li>
								
							</c:if>
							<c:if test="${userLoginFlag.site == 2}">
								<li><a href="/Recruit/enterprise/update/${userLoginFlag.id}" target="r">我的企业资料</a></li>
							</c:if>
							<li class="divider"></li>
							<c:if test="${userLoginFlag.site == 2}">
								<li><a href="/Recruit/position/add/${userLoginFlag.id}" target="r">发布招聘信息</a></li>
								<li><a href="/Recruit/position/show/${userLoginFlag.id}" target="r">我发布的招聘</a></li>
								<li class="divider"></li>
								<li><a href="/Recruit/section/showOfEn/${userLoginFlag.id}" target="r">我收到的应聘</a></li>
								<li class="divider"></li>
							</c:if>
							
								<li><a href="/Recruit/ang/add" target="r">我的要投訴</a></li>
								<li class="divider"></li>
							<li><a href="/Recruit/loginOut">注销</a></li>
						</ul>
					</li>
				</ul>
				<!-- end header navigation right -->
				
			</div>
			<!-- end container-fluid -->
		</div>
		<!-- end #header -->
		
		<!-- begin #content -->
		<div id="content" class="content">
		<!-- ######################################################################################## -->
			<iframe src="/Recruit/index_right" name="r" width="100%" height="700px" style="border: 0px;"></iframe>
		</div>
		<!-- end #content -->
		
        <!-- begin theme-panel -->
        <div class="theme-panel">
            <a href="javascript:;" data-click="theme-panel-expand" class="theme-collapse-btn"><i class="fa fa-cog"></i></a>
            <div class="theme-panel-content">
                <h5 class="m-t-0">Color Theme</h5>
                <ul class="theme-list clearfix">
                    <li class="active"><a href="javascript:;" class="bg-green" data-theme="default" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Default">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-red" data-theme="red" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Red">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-blue" data-theme="blue" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Blue">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-purple" data-theme="purple" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Purple">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-orange" data-theme="orange" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Orange">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-black" data-theme="black" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Black">&nbsp;</a></li>
                </ul>
                <div class="divider"></div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Header Styling</div>
                    <div class="col-md-7">
                        <select name="header-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">inverse</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label">Header</div>
                    <div class="col-md-7">
                        <select name="header-fixed" class="form-control input-sm">
                            <option value="1">fixed</option>
                            <option value="2">default</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Sidebar Styling</div>
                    <div class="col-md-7">
                        <select name="sidebar-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">grid</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label">Sidebar</div>
                    <div class="col-md-7">
                        <select name="sidebar-fixed" class="form-control input-sm">
                            <option value="1">fixed</option>
                            <option value="2">default</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Sidebar Gradient</div>
                    <div class="col-md-7">
                        <select name="content-gradient" class="form-control input-sm">
                            <option value="1">disabled</option>
                            <option value="2">enabled</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Content Styling</div>
                    <div class="col-md-7">
                        <select name="content-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">black</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-12">
                        <a href="#" class="btn btn-inverse btn-block btn-sm" data-click="reset-local-storage"><i class="fa fa-refresh m-r-3"></i> Reset Local Storage</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- end theme-panel -->
		<!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
	</div>
	<!-- end page container -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="assets/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	
	<script src="assets/plugins/gritter/js/jquery.gritter.js"></script>
	
	
	<!--[if lt IE 9]>
		<script src="assets/crossbrowserjs/html5shiv.js"></script>
		<script src="assets/crossbrowserjs/respond.min.js"></script>
		<script src="assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
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


		upText('欢迎使用 埃森哲招聘 ，预祝您前程似锦！');

		if (self != top) {  
		    top.location=self.location;
		}
		
	</script>
	 
</body>
</html>