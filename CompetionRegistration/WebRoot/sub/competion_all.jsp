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
                    <h1 class="page-header text-overflow">竞赛汇总</h1>

                    <!--Searchbox-->
                    
                </div>
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <!--End page title-->
		   <!--Page content-->
                <!--===================================================-->
                <div id="page-content">
                    
					
					<div class="panel">
					    <div class="panel-heading">
					        <h3 class="panel-title">竞赛汇总</h3>
					    </div>
					
					    <!-- Foo Table - Filtering -->
					    <!--===================================================-->
					    <div class="panel-body">
					        <table id="demo-foo-filtering" class="table table-bordered table-hover toggle-circle" data-page-size="7">
					            <thead>
					                <tr>
					                    <th data-toggle="true">赛事名称</th>
					                    <th data-hide="all">赛事描述</th>
					                    <th data-hide="phone, tablet">开始时间</th>
					                    <th data-hide="phone, tablet">结束时间</th>
					                    <th data-hide="phone, tablet">状态</th>
					                    <th data-hide="all">操作</th>
					                </tr>
					            </thead>
					            <div class="pad-btm form-inline">
					                <div class="row">
					                    <div class="col-sm-6 text-xs-center">
					                        <div class="form-group">
					                            <label class="control-label">赛事状态</label>
					                            <select id="demo-foo-filter-status" class="form-control">
					                                <option value="">所有</option>
					                                <option value="即将开放报名">即将开放报名</option>
					                                <option value="报名进行中">报名进行中</option>
					                                <option value="报名截止、竞赛即将开始">报名截止、竞赛即将开始</option>
					                                <option value="竞赛进行中">竞赛进行中</option>
					                                <option value="竞赛结束">竞赛结束</option>
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
					            <c:forEach var="p" items="${allCom}">
					                <tr>
					                    <td><a target="_blank" href="/CompetionRegistration/share/${p.id}">${p.name}</a></td>
					                    <td>${p.ps}</td>
					                    <td><fmt:formatDate value="${p.fromTime}" type="both" pattern="yyyy年MM月dd日 HH时mm分"/></td>
					                    <td><fmt:formatDate value="${p.toTime}" type="both" pattern="yyyy年MM月dd日 HH时mm分"/></td>
					                    <td><span class="label label-table label-success">${p.status}</span></td>
					                    <td>
					                    
					                    	<c:if test="${p.status=='报名进行中'}">
					                    		<a class="btn btn-info" target="right" href="/CompetionRegistration/game/ireg/${p.id}">我要报名</a>
					                    	</c:if>
					                    	
					                    	<c:if test="${userLoginFlag.loginName == 'admin'}">
						                    	<a class="btn btn-info" target="right" href="/CompetionRegistration/game/goToUpdateCompetion/${p.id}">修改赛事</a>
						                    	<a class="btn btn-danger" target="right" href="/CompetionRegistration/game/delCompetion/${p.id}">删除赛事</a>
						                    	<a class="btn btn-info" target="right" href="/CompetionRegistration/game/goToAddEx/${p.id}">新增赛事题目</a>
						                    	<a class="btn btn-info" target="right" href="/CompetionRegistration/game/showAllExOfCom/${p.id}">完善赛事题目</a>
						                    	<a class="btn btn-danger" target="right" href="/CompetionRegistration/game/allowRegCompetion/${p.id}">允许报名</a>
						                    	<a class="btn btn-danger" target="right" href="/CompetionRegistration/game/refuseRegCompetion/${p.id}">报名截止</a>
						                    	<a class="btn btn-danger" target="right" href="/CompetionRegistration/game/showCompetionGrade/${p.id}">查看成绩</a>
					                    	</c:if>
					                    	
					                    	
					                    </td>
					                </tr>
					                
					            </c:forEach>
					            </tbody>
					            <tfoot>
					                <tr>
					                    <td colspan="6">
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
