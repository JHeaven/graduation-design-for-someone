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
    
   <meta charset="utf-8"/>
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


<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="assets/global/css/components-rounded.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout4/css/layout.css" rel="stylesheet" type="text/css"/>
<link id="style_color" href="assets/admin/layout4/css/themes/light.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout4/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>

  </head>
  
  <body>
    
    <div class="page-content">
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			
			<!-- /.modal -->
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<!-- BEGIN PAGE HEADER-->
			<!-- BEGIN PAGE HEAD -->
			<div class="page-head">
				<!-- BEGIN PAGE TITLE -->
				<div class="page-title">
					<h1>客户预定席位 <small>请选选择预定时间</small></h1>
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
				<div class="portlet light bordered">
				
									<div class="portlet-title">
										<div class="caption">
											<i class="icon-equalizer font-red-sunglo"></i>
											<span class="caption-subject font-red-sunglo bold uppercase">请先选择时间段</span>
											<span class="caption-helper">选择完时间段之后才会出现相应的桌位</span>
										</div>
										<div class="actions">
											<div class="portlet-input input-inline input-small">
												
											</div>
										</div>
									</div>
									<div class="portlet-body form">
									<form action="/RestaurantPos/res/search" class="form-horizontal" method="post">
										<!-- BEGIN FORM-->
											<div class="form-body">
												<div class="form-group">
													<label class="col-md-3 control-label">预定到店时间</label>
													<div class="col-md-4">
													
														<input type="datetime-local" id="demo-hor-inputemail4" class="form-control" name="fromTime"  required="required" value="<c:if test="${reserve.fromTime != null}"><fmt:formatDate value="${reserve.fromTime}" type="both" pattern="yyyy-MM-dd"/>T<fmt:formatDate value="${reserve.fromTime}" type="both" pattern="HH:mm"/></c:if><c:if test="${reserve.fromTime == null}">2017-07-05T12:20</c:if>">
													</div>
												</div>
											</div>
											
											
											<div class="form-body">
												<div class="form-group">
													<label class="col-md-3 control-label">最后保留时间</label>
													<div class="col-md-4">
														<input type="datetime-local" id="demo-hor-inputemail5" class="form-control" name="toTime" required="required" value="<c:if test="${reserve.toTime != null}"><fmt:formatDate value="${reserve.toTime}" type="both" pattern="yyyy-MM-dd"/>T<fmt:formatDate value="${reserve.toTime}" type="both" pattern="HH:mm"/></c:if><c:if test="${reserve.toTime == null}">2017-07-05T14:20</c:if>">
													</div>
												</div>
											</div>
											
											
											<div class="form-body">
												<div class="form-group">
													<label class="col-md-3 control-label">人数</label>
													<div class="col-md-4">
														<input type="number" class="form-control" name="people" required="required" value="${reserve.deleted}" required>
													</div>
												</div>
											</div>
											
											<div class="form-body">
												<div class="form-group">
													<label class="col-md-3 control-label"></label>
													<div class="col-md-4">
														<button type="submit" class="btn green">查看此时间段席位</button>
													</div>
												</div>
											</div>
											
											
										</form>
										<!-- END FORM-->
									</div>
									
								</div>
				
			</div>
			
			
			<c:forEach var="p" items="${allTable}">
			<div class="row">
				
				<div class="col-md-12">
					<!-- BEGIN PORTLET-->
					<div class="portlet light">
						<div class="portlet-title">
							<div class="caption font-purple-plum">
								<i class="icon-speech font-purple-plum"></i>
								<span class="caption-subject bold uppercase">【${p.id}】【${p.type}】【${p.name}】</span>
								<span class="caption-helper">若要选定此桌，请点击右侧按钮</span>
							</div>
							<div class="actions">
								<div class="btn-group">
									<a class="btn btn-circle btn-default btn-sm" href="javascript:;" data-toggle="dropdown">
									<i class="fa fa-user"></i> ${p.people} 
									</a>
								</div>
								<a href="#basic-${p.id}" class="btn btn-circle red-sunglo btn-sm" data-toggle="modal" >
								<i class="fa fa-plus"></i> 选定此桌 </a>
								
							</div>
						</div>
						<div class="portlet-body">
							<div id="main" data-toggle="context">
								 此桌名为 <span class="label label-info">${p.name}</span> ，可容纳人数为<span class="label label-danger">${p.people}</span>，该桌位为<span class="label label-success">${p.type}</span> ，若要选定此桌，请点击右侧按钮。
							</div>
							
						</div>
					</div>
					<!-- END PORTLET-->
				</div>
			</div>
			
			
			
			
			
			
			<div class="modal fade" id="basic-${p.id}" tabindex="-1" role="basic-${p.id}" aria-hidden="true">
			<form action="/RestaurantPos/res/dogo" method="post">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
											<h4 class="modal-title">选定餐桌【${p.id}】【${p.type}】【${p.name}】请填写对应预定信息</h4>
										</div>
										<div class="modal-body">
											 <div class="form-body">
									
									
									
									
									
									<div class="form-group form-md-line-input form-md-floating-label">
										<input type="text" class="form-control" name="name" value="">
										<input type="hidden" class="form-control" name="tableId" value="${p.id}">
										<input type="hidden" class="form-control" name="tableName" value="${p.name}">
										<input type="hidden" class="form-control" name="fromTime" value="<fmt:formatDate value="${reserve.fromTime}" type="both" pattern="yyyy-MM-dd HH:mm"/>">
										<input type="hidden" class="form-control" name="toTime" value="<fmt:formatDate value="${reserve.toTime}" type="both" pattern="yyyy-MM-dd HH:mm"/>">
										<input type="hidden" class="form-control" name="deleted" value="${reserve.deleted}">
										<label for="form_control_1">预定客人的名字</label>
										<span class="help-block">填写预定客人的名字。</span>
									</div>
									
									
									<div class="form-group form-md-line-input form-md-floating-label">
										<input type="text" class="form-control" name="phone" value="">
										<label for="form_control_1">预定客人的电话</label>
										<span class="help-block">填写预定客人的电话。</span>
									</div>
									
									
									<div class="form-group form-md-line-input form-md-floating-label">
										<input type="text" class="form-control" name="content" value="${p.type}">
										<label for="form_control_1">备注</label>
										<span class="help-block">填写备注。</span>
									</div>
									
									
								</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn default" data-dismiss="modal">关闭</button>
											<button type="submit" class="btn blue">提交预定</button>
										</div>
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
								
								
								</form>
							</div>
			
			
			
			
			
			</c:forEach>
			<!-- END PAGE CONTENT-->
		</div>
	
    
    
    
    
    
    
    
    
    
    
    
    
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
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="assets/global/plugins/bootstrap-contextmenu/bootstrap-contextmenu.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/layout.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/demo.js" type="text/javascript"></script>
<script src="assets/admin/pages/scripts/components-context-menu.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
jQuery(document).ready(function() {       
    // initiate layout and plugins
    Metronic.init(); // init metronic core components
Layout.init(); // init current layout
Demo.init(); // init demo features
    ComponentsContextMenu.init(); // init context menu demo
});   


${message}
</script>
  </body>
</html>
