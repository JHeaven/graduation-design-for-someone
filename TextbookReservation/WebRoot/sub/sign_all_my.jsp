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
                    <h1 class="page-header text-overflow">我的预定</h1>

                    <!--Searchbox-->
                    
                </div>
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <!--End page title-->
		   <!--Page content-->
                <!--===================================================-->
                <div id="page-content">
                    
					
					<div class="panel">
					    <div class="panel-heading">
					        <h3 class="panel-title">我的预定</h3>
					    </div>
					
					    <!-- Foo Table - Filtering -->
					    <!--===================================================-->
					    <div class="panel-body">
					        <table id="demo-foo-filtering" class="table table-bordered table-hover toggle-circle" data-page-size="7">
					            <thead>
					                <tr>
					               		<th data-toggle="true">预定班级</th>
					               		<th data-hide="phone, tablet">班级人数</th>
					               		<th data-hide="all">课程名称</th>
					               		
					                    <th data-hide="phone, tablet">书本名称</th>
					                    <th data-hide="all">出版社</th>
					                    <th data-hide="phone, tablet">书号</th>
					                    <th data-hide="all">版别</th>
					                    <th data-hide="phone, tablet">种类</th>
					                    <th data-hide="all">出版年份</th>
					                    <th data-hide="phone, tablet">主要作者</th>
					                    <th data-hide="all">主要作者为本校老师</th>
					                    
					                    <th data-hide="phone, tablet">选用人</th>
					                    <th data-hide="all">选用人电话</th>
					                    <th data-hide="phone, tablet">预定本数</th>
					                    <th data-hide="phone, tablet">单价</th>
					                    <th data-hide="all">备注</th>
					                    <th data-hide="phone, tablet">状态</th>
					                    
					                    <th data-hide="all">操作</th>
					                </tr>
					            </thead>
					            <div class="pad-btm form-inline">
					                <div class="row">
					                    <div class="col-sm-6 text-xs-center">
					                        <div class="form-group">
					                            <label class="control-label">书本类别</label>
					                            <select id="demo-foo-filter-status" class="form-control">
					                                <option value="">所有</option>
					                                <c:forEach var="p" items="${allType}">
					                        			<option value="${p.name}">${p.name}</option>
					                        		</c:forEach>
					                            </select> 
					                        </div>
					                    </div>
					                    <div class="col-sm-6 text-xs-center text-right">
					                        <div class="form-group">
					                            <input id="demo-foo-search" type="text" placeholder="Search" class="form-control" autocomplete="off">
					                        </div>
					                    </div>
					                </div>
					            </div>
					            <tbody>
					            <c:forEach var="p" items="${allSign}">
					                <tr>
					                    <td>${p.classRoom}</td>
					                    <td>${p.people}</td>
					                    <td>${p.direction}</td>
					                    
					                    <td>${p.name}</td>
					                    <td>${p.publish}</td>
					                    <td>${p.bookId}</td>
					                    <td>${p.level}</td>
					                    <td>${p.type}</td>
					                    <td>${p.year}</td>
					                    <td>${p.author}</td>
					                    <td>${p.sAuthor}</td>
					                    
					                    <td>${p.selector}</td>
					                    <td>${p.selectorPhone}</td>
					                    <td>${p.signNum}</td>
					                    <td>${p.price}</td>
					                    <td>${p.ps}</td>
					                    <td>${p.status}</td>
					                    
					                    <td>
						                	<a class="btn btn-danger" target="right" href="/TextbookReservation/sign/updateSign/${p.id}">修改</a>
						                	<a class="btn btn-danger" target="right" href="/TextbookReservation/sign/delSign/${p.id}">删除</a>
					                    </td>
					                </tr>
					                
					            </c:forEach>
					            </tbody>
					            <tfoot>
					                <tr>
					                    <td colspan="10">
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
