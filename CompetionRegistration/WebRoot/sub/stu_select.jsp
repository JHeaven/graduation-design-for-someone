<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!--STYLESHEET-->
    <!--=================================================-->

    <!--Open Sans Font [ OPTIONAL ]-->
     


    <!--Bootstrap Stylesheet [ REQUIRED ]-->
    <link href="css/bootstrap.min.css" rel="stylesheet">


    <!--Nifty Stylesheet [ REQUIRED ]-->
    <link href="css/nifty.min.css" rel="stylesheet">


    <!--Nifty Premium Icon [ DEMONSTRATION ]-->
    <link href="css/demo/nifty-demo-icons.min.css" rel="stylesheet">


    <!--Demo [ DEMONSTRATION ]-->
    <link href="css/demo/nifty-demo.min.css" rel="stylesheet">


        
    <!--Switchery [ OPTIONAL ]-->
    <link href="plugins/switchery/switchery.min.css" rel="stylesheet">


    <!--Bootstrap Select [ OPTIONAL ]-->
    <link href="plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet">


    <!--Bootstrap Tags Input [ OPTIONAL ]-->
    <link href="plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.css" rel="stylesheet">


    <!--Chosen [ OPTIONAL ]-->
    <link href="plugins/chosen/chosen.min.css" rel="stylesheet">

    <!--Bootstrap Timepicker [ OPTIONAL ]-->
    <link href="plugins/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet">


    <!--Bootstrap Datepicker [ OPTIONAL ]-->
    <link href="plugins/bootstrap-datepicker/bootstrap-datepicker.min.css" rel="stylesheet">





    
    <!--JAVASCRIPT-->
    <!--=================================================-->

    <!--Pace - Page Load Progress Par [OPTIONAL]-->
    <link href="plugins/pace/pace.min.css" rel="stylesheet">
    <script src="plugins/pace/pace.min.js"></script>


    <!--jQuery [ REQUIRED ]-->
    <script src="js/jquery-2.2.4.min.js"></script>


    <!--BootstrapJS [ RECOMMENDED ]-->
    <script src="js/bootstrap.min.js"></script>


    <!--NiftyJS [ RECOMMENDED ]-->
    <script src="js/nifty.js"></script>






    <!--=================================================-->
    
    <!--Demo script [ DEMONSTRATION ]-->
    <script src="js/demo/nifty-demo.min.js"></script>

    
    <!--Switchery [ OPTIONAL ]-->
    <script src="plugins/switchery/switchery.min.js"></script>


    <!--Bootstrap Select [ OPTIONAL ]-->
    <script src="plugins/bootstrap-select/bootstrap-select.min.js"></script>


    <!--Bootstrap Tags Input [ OPTIONAL ]-->
    <script src="plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>


    <!--Chosen [ OPTIONAL ]-->
    <script src="plugins/chosen/chosen.jquery.min.js"></script>


    <!--Bootstrap Timepicker [ OPTIONAL ]-->
    <script src="plugins/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>


    <!--Bootstrap Datepicker [ OPTIONAL ]-->
    <script src="plugins/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>


    
    <style type="text/css">
    body {
		font-family: "Verdana", "Hiragino Sans GB", "Microsoft YaHei","WenQuanYi Micro Hei", sans-serif;
	}
    </style>
  </head>
  
  <body>
    <div id="container" class="effect aside-float aside-bright mainnav-lg">
        
        <!--NAVBAR-->
        <!--===================================================-->

        <div class="boxed">

            <!--CONTENT CONTAINER-->
            <!--===================================================-->
            <div id="content-container">
                
                <!--Page Title-->
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <div id="page-title">
                    <h1 class="page-header text-overflow">我的资料</h1>

                    
                </div>

                <!--Page content-->
                <!--===================================================-->
                <div id="page-content">
                    
					<div class="row">
					    
					    <div class="col-sm-12">
					        <div class="panel">
					            <div class="panel-heading">
					                <h3 class="panel-title"> 如修改了内容，请点击右下角的提交按钮</h3>
					            </div>
					
					            <!--Horizontal Form-->
					            <!--===================================================-->
					            <form id="myform" class="form-horizontal" method="post" action="/CompetionRegistration/stu/doUpdate">
					                <div class="panel-body">
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail">ID</label>
					                        <div class="col-sm-9">
					                            <input type="text" id="demo-hor-inputemail" class="form-control" name="id" value="${stu.id}" readonly="readonly">
					                        </div>
					                    </div>
					                    
					                    
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail1">学号</label>
					                        <div class="col-sm-9">
					                            <input type="text" id="demo-hor-inputemail1" class="form-control" name="stuId" value="${stu.stuId}">
					                        </div>
					                    </div>
					                    
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail2">姓名</label>
					                        <div class="col-sm-9">
					                            <input type="text" id="demo-hor-inputemail2" class="form-control" name="name" value="${stu.name}">
					                        </div>
					                    </div>
					                    
					                    
					                    
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail3">性别</label>
					                        <div class="col-sm-9" id="demo-hor-inputemail3">
					                            <select name="sex" class="form-control">
					                            	<option value="${stu.sex}">当前为：${stu.sex}</option>
					                            	<option value="男">男</option>
					                            	<option value="女">女</option>
					                            </select>
					                        </div>
					                    </div>
					                    
					                    
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail4">生日</label>
					                        <div class="col-sm-9">
					                            <input type="date" id="demo-hor-inputemail4" class="form-control" name="birth" value="<fmt:formatDate value="${stu.birth}" type="both" pattern="yyyy-MM-dd"/>" >
					                        </div>
					                    </div>
					                    
					                    
					                    
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail5">入学日期</label>
					                        <div class="col-sm-9">
					                            <input type="date" id="demo-hor-inputemail5" class="form-control" name="entranceTime" value="<fmt:formatDate value="${stu.entranceTime}" type="both" pattern="yyyy-MM-dd"/>">
					                        </div>
					                    </div>
					                    
					                    
					                    
					                    
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail6">地址</label>
					                        <div class="col-sm-9">
					                            <input type="text" id="demo-hor-inputemail6" class="form-control" name="address" value="${stu.address}">
					                        </div>
					                    </div>
					                    
					                    
					                    
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail7">手机号</label>
					                        <div class="col-sm-9">
					                            <input type="text" id="demo-hor-inputemail7" class="form-control" name="phone" value="${stu.phone}">
					                        </div>
					                    </div>
					                    
					                    
					                    
					                    
					                    
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail8">身份证</label>
					                        <div class="col-sm-9">
					                            <input type="text" id="demo-hor-inputemail8" class="form-control" name="idNum" value="${stu.idNum}">
					                        </div>
					                    </div>
					                    
					                    
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail9">院(系、部)</label>
					                        <div class="col-sm-9">
					                        	<select name="departmentId" class="form-control"> 
					                            	<option value="${stu.departmentId}">--请选择--</option>
					                            	<c:forEach var="p" items="${allDep}">
						                            	<option value="${p.id}" <c:if test="${stu.departmentId ==p.id}">selected</c:if> >${p.name}</option>
					                            	</c:forEach>
					                            </select>
					                        </div>
					                    </div>
					                    
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail11">专业</label>
					                        <div class="col-sm-9">
					                        	<select name="majorId" class="form-control"> 
					                            	<option value="${stu.majorId}">--请选择--</option>
					                            	<c:forEach var="p" items="${allMajor}">
						                            	<option value="${p.id}" <c:if test="${stu.majorId ==p.id}">selected</c:if> >${p.name}</option>
					                            	</c:forEach>
					                            </select>
					                        </div>
					                    </div>
					                    
					                    
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail12">班级</label>
					                        <div class="col-sm-9">
					                            <input type="text" id="demo-hor-inputemail12" class="form-control" name="classRoom" value="${stu.classRoom}">
					                        </div>
					                    </div>
					                    
					                    
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail13">登录名</label>
					                        <div class="col-sm-9">
					                            <input type="text" id="demo-hor-inputemail13" class="form-control" name="loginName" value="${stu.loginName}" readonly="readonly">
					                        </div>
					                    </div>
					                    
					                    
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail14">密码</label>
					                        <div class="col-sm-9">
					                            <input type="text" id="demo-hor-inputemail14" class="form-control" name="loginPass" value="******">
					                        </div>
					                    </div>
					                    
					                    
					                </div>
					                
					                <div class="panel-footer text-right">
					                    <button class="btn btn-success" type="submit">提交修改</button>
					                </div>
					            </form>
					            <!--===================================================-->
					            <!--End Horizontal Form-->
					
					        </div>
					    </div>
					</div>
					
					
					
					
                </div>
                <!--===================================================-->
                <!--End page content-->


            </div>
            <!--===================================================-->
            <!--END CONTENT CONTAINER-->


        </div>

    </div>
    <!--===================================================-->
    <!-- END OF CONTAINER -->
    <script type="text/javascript">
    ${message}
    </script>
  </body>
</html>
