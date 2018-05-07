<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="assets/plugins/DataTables/css/data-table.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
  </head>
  
  <body>
			<!-- begin breadcrumb -->
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">用户管理 <small>查看所有用户</small></h1>
			<!-- end page-header -->
			
			<!-- begin row -->
			<div class="row">
			    <!-- begin col-2 -->
			    <div class="col-md-12">
			        <!-- begin panel -->
                    <div class="panel panel-inverse">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">用户管理</h4>
                        </div>
                        <div class="alert alert-info fade in">
                            <button type="button" class="close" data-dismiss="alert">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            请注意，密码重置后为121111。
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                
                                <table id="data-table" class="table table-striped table-bordered nowrap" width="100%">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>登录名</th>
                                            <th>查看简历（企业简述）</th>
                                            <th>用户类型</th>
                                            <th>Email</th>
                                            <th>注册日期</th>
                                            <th>最后登陆日期</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                    	<c:forEach var="p" items="${allUser}">
                                        <tr>
                                            <td>${p.id}</td>
                                            <td>${p.loginName}</td>
                                            <td>
                                            	<c:if test="${p.site == 1}">
                                            		<a href="/Recruit/re/select/${p.resumeId}" class="btn btn-primary btn-xs m-r-5">查看用户简历</a>
                                            	</c:if>
                                            	
                                            	<c:if test="${p.site == 2}">
                                            		<a href="/Recruit/enterprise/select/${p.enterpriseId}" class="btn btn-info btn-xs m-r-5">查看企业资料</a>
                                            	</c:if>
                                            	
                                            	<c:if test="${p.site == 0}"><a class="btn btn-danger btn-xs m-r-5">我是管理员</a></c:if>
                                             </td>
                                            <td><c:if test="${p.site == 1}">求职者</c:if><c:if test="${p.site == 2}">招聘者</c:if><c:if test="${p.site == 0}">管理员</c:if></td>
                                            <td>${p.email}</td>
                                            <td><fmt:formatDate value="${p.createTime}" type="both"/>
                                            </td>
                                            <td><fmt:formatDate value="${p.lastLogin}" type="both"/></td>
                                            <td>
                                            	<a class="btn btn-danger btn-xs m-r-5" href="/Recruit/user/del/${p.id}">删除</a>
                                            	<a class="btn btn-success btn-xs m-r-5" href="/Recruit/user/reset/${p.id}">重置密码</a>
                                            </td>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- end panel -->
                </div>
                <!-- end col-10 -->
            </div>
            <!-- end row -->
		<!-- end #content -->
		
		
		
		
		
		
		
		
		
		
		
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="assets/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!--[if lt IE 9]>
		<script src="assets/crossbrowserjs/html5shiv.js"></script>
		<script src="assets/crossbrowserjs/respond.min.js"></script>
		<script src="assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="assets/plugins/DataTables/js/jquery.dataTables.js"></script>
	<script src="assets/plugins/DataTables/js/dataTables.tableTools.js"></script>
	<script src="assets/js/table-manage-tabletools.demo.min.js"></script>
	<script src="assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
			TableManageTableTools.init();
		});
		
		${message}
	</script>
 
  </body>
</html>
