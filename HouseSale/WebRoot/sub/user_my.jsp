<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta name="MobileOptimized" content="320">





<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/plugins.css" rel="stylesheet" type="text/css"/>
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

<body class="page-header-fixed page-full-width">

	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			
			<!-- /.modal -->
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<!-- BEGIN STYLE CUSTOMIZER -->
			
			<!-- END STYLE CUSTOMIZER -->
			<!-- BEGIN PAGE HEADER-->
			<div class="row">
				<div class="col-md-12">
					<!-- BEGIN PAGE TITLE & BREADCRUMB-->
					<h3 class="page-title">
					我的信息 <small>您可以修改自己的信息</small>
					</h3>
					<ul class="page-breadcrumb breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a>主页</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a>我的信息</a>
						 </li> 
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				
				<div class="col-md-12 ">
					<!-- BEGIN SAMPLE FORM PORTLET-->
					<div class="portlet box green ">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-reorder"></i>  我的信息
							</div>
							<div class="tools">
								<a href="" class="collapse"></a>
								<a href="#portlet-config" data-toggle="modal" class="config"></a>
								<a href="" class="reload"></a>
								<a href="" class="remove"></a>
							</div>
						</div>
						<div class="portlet-body form">
							<form class="form-horizontal" role="form" method="post" action="/HouseSale/user/updateMy">
								<div class="form-body">
									<div class="form-group">
										<label class="col-md-3 control-label">我的ID</label>
										<div class="col-md-9">
											<input type="text" class="form-control" value="${user.userId}" name="userId" readonly="readonly">
										</div>
									</div>
									
									
									<div class="form-group">
										<label class="col-md-3 control-label">Email</label>
										<div class="col-md-9">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="fa fa-envelope"></i>
												</span>
												<input type="email" class="form-control" placeholder="Email" value="${user.email}" name="email">
											</div>
										</div>
									</div>
									
									
									<div class="form-group">
										<label class="col-md-3 control-label">登陆名</label>
										<div class="col-md-9">
											<input type="text" class="form-control" value="${user.loginName}" name="loginName" readonly="readonly">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-md-3 control-label">密码</label>
										<div class="col-md-9">
											<input type="text" class="form-control" value="******" name="loginPass">
										</div>
									</div>
									
									
									<div class="form-group">
										<label class="col-md-3 control-label">姓名</label>
										<div class="col-md-9">
											<input type="text" class="form-control" value="${user.name}" name="name">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-md-3 control-label">电话</label>
										<div class="col-md-9">
											<input type="text" class="form-control" value="${user.phone}" name="phone">
										</div>
									</div>
									
									
									<div class="form-group">
										<label class="col-md-3 control-label">性别</label>
										<div class="col-md-9">
											<select class="form-control" name="sex">
												<option value="${user.sex}">当前为：${user.sex}</option>
												<option value="男">男</option>
												<option value="女">女</option>
											</select>
										</div>
									</div>
									
									
									<div class="form-group">
										<label class="col-md-3 control-label">我的余额</label>
										<div class="col-md-9">
											<input type="text" class="form-control" value="${user.money}"  name="money">
										</div>
									</div>
									
									
									
									<div class="form-group">
										<label class="col-md-3 control-label">我的地址</label>
										<div class="col-md-9">
											<input type="text" class="form-control" value="${user.address}"  name="address">
										</div>
									</div>
									
									
									
									<div class="form-group">
										<label class="col-md-3 control-label">我的收货地址</label>
										<div class="col-md-9">
											<input type="text" class="form-control" value="${user.areas}" name="areas">
										</div>
									</div>
								</div> 
								<div class="form-actions fluid">
									<div class="col-md-offset-3 col-md-9">
										<button type="submit" class="btn green">提交</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	<!-- END CONTENT -->
	
	
	
	<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="assets/plugins/respond.min.js"></script>
<script src="assets/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<script src="assets/scripts/app.js"></script>
<script>
jQuery(document).ready(function() {   
   // initiate layout and plugins
   App.init();
});

${message}
</script>
<!-- END JAVASCRIPTS -->
</body>
</html>
