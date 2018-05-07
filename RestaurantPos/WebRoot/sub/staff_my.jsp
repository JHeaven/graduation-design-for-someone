<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<!-- BEGIN PACE PLUGIN FILES -->
<script src="assets/global/plugins/pace/pace.min.js" type="text/javascript"></script>
<link href="assets/global/plugins/pace/themes/pace-theme-flash.css" rel="stylesheet" type="text/css"/>
<!-- END PACE PLUGIN FILES -->


<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
	rel="stylesheet" type="text/css">
<link href="assets/global/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css">
<link href="assets/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="assets/global/plugins/uniform/css/uniform.default.css"
	rel="stylesheet" type="text/css">
<link
	href="assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
	rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="assets/global/css/components-rounded.css"
	id="style_components" rel="stylesheet" type="text/css" />
<link href="assets/global/css/plugins.css" rel="stylesheet"
	type="text/css" />
<link href="assets/admin/layout4/css/layout.css" rel="stylesheet"
	type="text/css" />
<link id="style_color" href="assets/admin/layout4/css/themes/light.css"
	rel="stylesheet" type="text/css" />
<link href="assets/admin/layout4/css/custom.css" rel="stylesheet"
	type="text/css" />
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico" />

</head>

<body>


			<!-- BEGIN PAGE HEADER-->
			<!-- BEGIN PAGE HEAD -->
			<div class="page-head">
				<!-- BEGIN PAGE TITLE -->
				<div class="page-title">
					<h1>${staff.name}的信息 <small>修改${staff.name}的信息请点击提交修改</small></h1>
				</div>
				<!-- END PAGE TITLE -->
				<!-- BEGIN PAGE TOOLBAR -->
				<div class="page-toolbar">
					<!-- BEGIN THEME PANEL -->
					<div class="btn-group btn-theme-panel">
						<a href="javascript:;" class="btn dropdown-toggle" data-toggle="dropdown">
						<i class="icon-settings"></i>
						</a>
						<div class="dropdown-menu theme-panel pull-right dropdown-custom hold-on-click">
							<div class="row">
								<div class="col-md-4 col-sm-4 col-xs-12">
									<h3>THEME</h3>
									<ul class="theme-colors">
										<li class="theme-color theme-color-default active" data-theme="default">
											<span class="theme-color-view"></span>
											<span class="theme-color-name">Dark Header</span>
										</li>
										<li class="theme-color theme-color-light" data-theme="light">
											<span class="theme-color-view"></span>
											<span class="theme-color-name">Light Header</span>
										</li>
									</ul>
								</div>
								<div class="col-md-8 col-sm-8 col-xs-12 seperator">
									<h3>LAYOUT</h3>
									<ul class="theme-settings">
										<li>
											 Theme Style
											<select class="layout-style-option form-control input-small input-sm">
												<option value="square" selected="selected">Square corners</option>
												<option value="rounded">Rounded corners</option>
											</select>
										</li>
										<li>
											 Layout
											<select class="layout-option form-control input-small input-sm">
												<option value="fluid" selected="selected">Fluid</option>
												<option value="boxed">Boxed</option>
											</select>
										</li>
										<li>
											 Header
											<select class="page-header-option form-control input-small input-sm">
												<option value="fixed" selected="selected">Fixed</option>
												<option value="default">Default</option>
											</select>
										</li>
										<li>
											 Top Dropdowns
											<select class="page-header-top-dropdown-style-option form-control input-small input-sm">
												<option value="light">Light</option>
												<option value="dark" selected="selected">Dark</option>
											</select>
										</li>
										<li>
											 Sidebar Mode
											<select class="sidebar-option form-control input-small input-sm">
												<option value="fixed">Fixed</option>
												<option value="default" selected="selected">Default</option>
											</select>
										</li>
										<li>
											 Sidebar Menu
											<select class="sidebar-menu-option form-control input-small input-sm">
												<option value="accordion" selected="selected">Accordion</option>
												<option value="hover">Hover</option>
											</select>
										</li>
										<li>
											 Sidebar Position
											<select class="sidebar-pos-option form-control input-small input-sm">
												<option value="left" selected="selected">Left</option>
												<option value="right">Right</option>
											</select>
										</li>
										<li>
											 Footer
											<select class="page-footer-option form-control input-small input-sm">
												<option value="fixed">Fixed</option>
												<option value="default" selected="selected">Default</option>
											</select>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- END THEME PANEL -->
				</div>
				<!-- END PAGE TOOLBAR -->
			</div>
			<!-- END PAGE HEAD -->
			<!-- BEGIN PAGE BREADCRUMB -->
			
			<!-- END PAGE BREADCRUMB -->
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				
				<div class="col-md-10 col-md-offset-1">
					<!-- BEGIN SAMPLE FORM PORTLET-->
					<div class="portlet light">
						<div class="portlet-title">
							<div class="caption font-green">
								<i class="icon-pin font-green"></i>
								<span class="caption-subject bold uppercase">以下为${staff.name}的信息</span>
							</div>
							<div class="actions">
								
							</div>
						</div>
						<div class="portlet-body form">
							<form role="form" method="post" action="/RestaurantPos/staff/updateMy">
								<div class="form-body">
								
									<div class="form-group form-md-line-input form-md-floating-label">
										<input type="text" class="form-control" name="loginName" value="${staff.loginName}" readonly="readonly">
										<input type="hidden" class="form-control" name="id" value="${staff.id}" readonly="readonly">
										<label for="form_control_1">${staff.name}的用户名</label>
										<span class="help-block">这是${staff.name}的用户名，如需修改，勿忘提交。</span>
									</div>
									
									<div class="form-group form-md-line-input form-md-floating-label">
										<input type="text" class="form-control" name="name" value="${staff.name}">
										<label for="form_control_1">${staff.name}的姓名</label>
										<span class="help-block">这是${staff.name}的姓名，如需修改，勿忘提交。</span>
									</div>
									
									
									
									<div class="form-group form-md-line-input form-md-floating-label">
										<input type="text" class="form-control" name="email" value="${staff.email}">
										<label for="form_control_1">${staff.name}的email</label>
										<span class="help-block">这是${staff.name}的email，如需修改，勿忘提交。</span>
									</div>
									
									<div class="form-group form-md-line-input form-md-floating-label">
										<input type="text" class="form-control" name="phone" value="${staff.phone}">
										<label for="form_control_1">${staff.name}的电话</label>
										<span class="help-block">这是${staff.name}的电话，如需修改，勿忘提交。</span>
									</div>
									
									<div class="form-group form-md-line-input form-md-floating-label">
										<input type="text" class="form-control" name="sfz" value="${staff.sfz}">
										<label for="form_control_1">${staff.name}的身份证</label>
										<span class="help-block">这是${staff.name}的身份证，如需修改，勿忘提交。</span>
									</div>
									
								
									
									<div class="form-group form-md-line-input form-md-floating-label has-info">
										<select class="form-control" name="type">
											<option value="${staff.type}">${staff.type}</option>
											<option value="点餐员">点餐员</option>
											<option value="后厨">后厨</option>
										</select>
										<label for="form_control_1">${staff.name}的职位</label>
									</div>
									
									
									<div class="form-group form-md-line-input form-md-floating-label">
										<input type="text" class="form-control" name="age" value="${staff.age}">
										<label for="form_control_1">${staff.name}的年龄</label>
										<span class="help-block">这是${staff.name}的年龄，如需修改，勿忘提交。</span>
									</div>
									
									<div class="form-group form-md-line-input form-md-floating-label has-info">
										<select class="form-control" name="sex">
											<option value="${staff.sex}">${staff.sex}</option>
											<option value="男">男</option>
											<option value="女">女</option>
										</select>
										<label for="form_control_1">${staff.name}的性别</label>
									</div>
									
									<div class="form-group form-md-line-input form-md-floating-label">
										<input type="text" class="form-control" name="loginPass" value="******">
										<label for="form_control_1">${staff.name}的密码</label>
										<span class="help-block">这是${staff.name}的密码，如需修改，勿忘提交。</span>
									</div>
									
								</div>
								<div class="form-actions noborder">
									<button type="submit" class="btn blue">提交修改</button>
								</div>
							</form>
						</div>
					</div>
					<!-- END SAMPLE FORM PORTLET-->
					<!-- BEGIN SAMPLE FORM PORTLET-->
					
					<!-- END SAMPLE FORM PORTLET-->
					<!-- BEGIN SAMPLE FORM PORTLET-->
					<!-- END SAMPLE FORM PORTLET-->
				</div>
			</div>
			
			
			<!-- END PAGE CONTENT-->
	

















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
<!-- END CORE PLUGINS -->
<script src="assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/layout.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/demo.js" type="text/javascript"></script>
<script>
	jQuery(document).ready(function() {
		// initiate layout and plugins
		Metronic.init(); // init metronic core components
		Layout.init(); // init current layout
		Demo.init(); // init demo features
	});
	
	
	${message}
</script>
<!-- END JAVASCRIPTS -->
  </body>
</html>
