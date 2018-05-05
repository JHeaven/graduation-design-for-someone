<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>${userLoginFlag.loginName}- 高校排课系统</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<link href="css/style.default.css" rel="stylesheet">
<link href="css/morris.css" rel="stylesheet">
<link href="css/select2.css" rel="stylesheet" />
<link href="css/jquery.gritter.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->
<style type="text/css">
body {
	font-family: "Verdana", "Hiragino Sans GB", "Microsoft YaHei",
		"WenQuanYi Micro Hei", sans-serif;
}
</style>
  </head>
  
  <body>
                    <div class="pageheader">
                        <div class="media">
                            <div class="pageicon pull-left">
                                <i class="fa fa-home"></i>
                            </div>
                            <div class="media-body">
                                <ul class="breadcrumb">
                                    <li><a href=""><i class="glyphicon glyphicon-home"></i></a></li>
                                    <li>课程绑定</li>
                                </ul>
                                <h4>课程绑定</h4>
                            </div>
                        </div><!-- media -->
                    </div><!-- pageheader -->
                    
                    <div class="contentpanel">
                        
                        
                        
                        
                        
                        <div class="row row-dashboard">
                            <div class="col-md-12">
                                <!-- BASIC WIZARD -->
                                <form method="post" id="basicWizard" class="panel-wizard" action="/ArrangeCourse/list/dofirst">
                                    <ul class="nav nav-justified nav-wizard mt0">
                                        <li><a href="#tab1" data-toggle="tab"><strong>第一步 :</strong> 选择班级</a></li>
                                        <li><a href="#tab2" data-toggle="tab"><strong>第二步:</strong> 选择课程和老师</a></li>
                                        <li><a href="#tab3" data-toggle="tab"><strong>第三步:</strong> 设置排序等级</a></li>
                                    </ul>
                
                                    <div class="tab-content">
                                        <div class="tab-pane" id="tab1">
                                            <div class="form-group">
                                                <label class="col-sm-4">班级</label>
                                                <div class="col-sm-8">
                                                    <select class="form-control" name="classId">
                                                   		<option value="">请选择班级</option>
                                                    	<c:forEach var="p" items="${allCl}"> 
                                                        	<option value="${p.id}">${p.name}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div><!-- form-group -->
                                            
                                        </div> <!-- tab-pane -->
                                        
                                        <div class="tab-pane" id="tab2">
                                            <div class="form-group">
                                                <label class="col-sm-4">课程选择</label>
                                                <div class="col-sm-5">
                                                    <select class="form-control" name="cId">
                                                   		<option value="">请选择课程</option>
                                                    	<c:forEach var="p" items="${allCo}"> 
                                                        	<option value="${p.id}">${p.name}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div><!-- form-group -->
                                            
                                            
                                            
                                            
                                            <div class="form-group">
                                                <label class="col-sm-4">任课教师选择</label>
                                                <div class="col-sm-5">
                                                    <select class="form-control" name="tId">
                                                   		<option value="">请选择教师</option>
                                                    	<c:forEach var="p" items="${allTea}"> 
                                                        	<option value="${p.id}">${p.name}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div><!-- form-group -->
                                            
                                            
                                            
                                        </div><!-- tab-pane -->
                                        
                                        <div class="tab-pane" id="tab3">
                                            <div class="form-group">
                                                <label class="col-sm-4">趋向排课时间段</label>
                                                <div class="col-sm-8">
                                                    <select class="form-control" name="bestSite">
                                                   		<option value="上午第一节">请选择时间段</option>
                                                    	<option value="上午第一节">上午第一节</option>
                                                    	<option value="上午第二节">上午第二节</option>
                                                    	<option value="下午第一节">下午第一节</option>
                                                    	<option value="下午第二节">下午第二节</option>
                                                    	<option value="晚上">晚上</option>
                                                    </select>
                                                </div>
                                            </div><!-- form-group -->
                                            
                                            
                                            <div class="form-group">
                                                <label class="col-sm-4">课程优先级（1-100，数字越大，排课越考前）</label>
                                                <div class="col-sm-8">
                                                    <select class="form-control" name="site">
                                                   		<option value="5">5</option>
                                                   		<option value="10">10</option>
                                                   		<option value="15">15</option>
                                                   		<option value="20">20</option>
                                                   		<option value="25">25</option>
                                                   		<option value="30">30</option>
                                                   		<option value="35">35</option>
                                                   		<option value="40">40</option>
                                                   		<option value="45">45</option>
                                                   		<option value="50">50</option>
                                                   		<option value="55">55</option>
                                                   		<option value="60">60</option>
                                                   		<option value="65">65</option>
                                                   		<option value="70">70</option>
                                                   		<option value="75">75</option>
                                                   		<option value="80">80</option>
                                                   		<option value="85">85</option>
                                                   		<option value="90">90</option>
                                                   		<option value="95">95</option>
                                                   		<option value="100">100</option>
                                                    </select>
                                                </div>
                                            </div><!-- form-group -->
                                            
                                            <div class="form-group">
                                                <label class="col-sm-4">本班本课的课时</label>
                                                <div class="col-sm-8">
                                                    <input type="number" name="keshi" class="form-control" />
                                                </div>
                                            </div><!-- form-group -->
                      
                      
                                        </div><!-- tab-pane -->
                                    </div><!-- tab-content -->
                
                                    <ul class="list-unstyled wizard">
                                        <li class="pull-left previous"><button type="button" class="btn btn-default">Previous</button></li>
                                        <li class="pull-right next"><button type="button" class="btn btn-primary">Next</button></li>
                                        <li class="pull-right finish hide"><button type="submit" class="btn btn-primary">完成</button></li>
                                    </ul>
                                    
                                </form><!-- #basicWizard -->
                            </div><!-- col-md-6 -->
                            
                            
                        </div><!-- row -->
                        
                    </div><!-- contentpanel -->
                    
                
                 <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/jquery-migrate-1.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/modernizr.min.js"></script>
        <script src="js/pace.min.js"></script>
        <script src="js/retina.min.js"></script>
        <script src="js/jquery.cookies.js"></script>
        
        <script src="js/jquery.sparkline.min.js"></script>
        <script src="js/raphael-2.1.0.min.js"></script>
        <script src="js/bootstrap-wizard.min.js"></script>
        
		<script src="js/jquery.gritter.min.js"></script>
		
        <script src="js/custom.js"></script>
        <script src="js/dashboard-1.js"></script>
		<script>
		${message}
		
		</script>
  </body>
</html>
