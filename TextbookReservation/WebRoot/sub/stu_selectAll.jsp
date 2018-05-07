<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">


<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
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



<!--FooTable [ OPTIONAL ]-->
<link href="plugins/fooTable/css/footable.core.css" rel="stylesheet">






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
<script src="js/nifty.min.js"></script>






<!--=================================================-->

<!--Demo script [ DEMONSTRATION ]-->
<script src="js/demo/nifty-demo.min.js"></script>


<!--FooTable [ OPTIONAL ]-->
<script src="plugins/fooTable/dist/footable.all.min.js"></script>


<!--FooTable Example [ SAMPLE ]-->
<script src="js/demo/tables-footable.js"></script>

<style type="text/css">
body {
	font-family: "Verdana", "Hiragino Sans GB", "Microsoft YaHei",
		"WenQuanYi Micro Hei", sans-serif;
}
</style>
  </head>
  
  <body>
  <div id="container" class="effect aside-float aside-bright mainnav-lg">
	  <div class="boxed">
		  <div id="content-container">
		  <!--Page Title-->
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <div id="page-title">
                    <h1 class="page-header text-overflow">用戶汇总</h1>

                    <!--Searchbox-->
                    
                </div>
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <!--End page title-->
		   <!--Page content-->
                <!--===================================================-->
                <div id="page-content">
                    
					
					<div class="panel">
					    <div class="panel-heading">
					        <h3 class="panel-title">用户汇总</h3>
					    </div>
					
					    <!-- Foo Table - Filtering -->
					    <!--===================================================-->
					    <div class="panel-body">
					        <table id="demo-foo-filtering" class="table table-bordered table-hover toggle-circle" data-page-size="7">
					            <thead>
					                <tr>
					                    <th data-toggle="true">用户ID</th>
					                    <th data-hide="all">身份证</th>
					                    <th data-hide="phone, tablet">教师工号</th>
					                    <th data-hide="phone, tablet">教师姓名</th>
					                    <th data-hide="phone, tablet">性别</th>
					                    <th data-hide="phone, tablet">入职时间</th>
					                    <th data-hide="phone, tablet">电话</th>
					                    <th data-hide="phone, tablet">操作</th>
					                </tr>
					            </thead>
					            
					            <tbody>
					            <c:forEach var="p" items="${allStu}">
					                <tr>
					                    <td>${p.id}</td>
					                    <td>${p.idNum}</td>
					                    <td>${p.stuId}</td>
					                    <td>${p.name}</td>
					                    <td>${p.sex}</td>
					                    <td><fmt:formatDate value="${p.entranceTime}" type="both" pattern="yyyy年MM月dd日 HH时mm分"/></td>
					                    <td>${p.phone}</td>
					                    <td>
					                    	<a target="right" class="btn btn-danger" href="/TextbookReservation/stu/del/${p.id}">删除</a>
					                    </td>
					                </tr>
					                
					            </c:forEach>
					            </tbody>
					            <tfoot>
					                <tr>
					                    <td colspan="7">
					                        <div class="text-right">
					                            <ul class="pagination"></ul>
					                        </div>
					                    </td>
					                </tr>
					            </tfoot>
					        </table>
					    </div>
					    <!--===================================================-->
					    <!-- End Foo Table - Filtering -->
					
					</div>
					
					
					
					
                </div>
                <!--===================================================-->
                <!--End page content-->
		  
		  
		  
		  
		  
		  
		  </div>
	  </div>
  </div>
  <script type="text/javascript">
  ${message}
  </script>
  </body>
</html>
