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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>DataTables | Gentelella</title>

    <!-- Bootstrap -->
    <link href="/HumanResourceManagement/asserts/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/HumanResourceManagement/asserts/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/HumanResourceManagement/asserts/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="/HumanResourceManagement/asserts/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="/HumanResourceManagement/asserts/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="/HumanResourceManagement/asserts/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="/HumanResourceManagement/asserts/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="/HumanResourceManagement/asserts/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="/HumanResourceManagement/asserts/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/HumanResourceManagement/asserts/css/custom.min.css" rel="stylesheet">
<style type="text/css">
    body {
		font-family: "Verdana", "Hiragino Sans GB", "Microsoft YaHei","WenQuanYi Micro Hei", sans-serif;
	}
    </style>
  </head>
  
  <body>
    

<div class="container body">
      <div class="main_container">
 <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>奖惩公告</h3>
              </div>
              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              

              
              

              
              

              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>奖惩公告 <span style="color: red;">${message1}</span></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <p class="text-muted font-13 m-b-30">
                     奖惩公告
                    </p>
					
                    <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                      <thead>
                        <tr>
                          <th>LOG ID</th>
                          <th>姓名</th>
                          <th>日期</th>
                          
                          <th>内容</th>
                          <c:if test="${userLoginFlag.levelSite == 0}">
                          <th>操作</th>
                          </c:if>
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="s" items="${allRewards}">
                        <tr>
                          <td>${s.id}</td>
                          <td>${s.name}</td>
                          <td><fmt:formatDate value="${s.date}" type="date" dateStyle="full"/></td>
                          
                          <td>${s.remark}</td>
                          <c:if test="${userLoginFlag.levelSite == 0}">
                          <td><a type="button" class="btn btn-info btn-xs" target="right" href="/HumanResourceManagement/rewards/cancel/${s.id}">撤销奖惩</a></td>
                          </c:if>
                        </tr>
                        </c:forEach>
                      </tbody>
                    </table>
					
					
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->
        </div>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </div>
        
        
        <!-- jQuery -->
    <script src="/HumanResourceManagement/asserts/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="/HumanResourceManagement/asserts/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="/HumanResourceManagement/asserts/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="/HumanResourceManagement/asserts/nprogress/nprogress.js"></script>
    <!-- iCheck -->
    <script src="/HumanResourceManagement/asserts/iCheck/icheck.min.js"></script>
    <!-- Datatables -->
    <script src="/HumanResourceManagement/asserts/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="/HumanResourceManagement/asserts/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="/HumanResourceManagement/asserts/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="/HumanResourceManagement/asserts/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="/HumanResourceManagement/asserts/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="/HumanResourceManagement/asserts/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="/HumanResourceManagement/asserts/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="/HumanResourceManagement/asserts/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="/HumanResourceManagement/asserts/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="/HumanResourceManagement/asserts/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="/HumanResourceManagement/asserts/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="/HumanResourceManagement/asserts/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="/HumanResourceManagement/asserts/jszip/dist/jszip.min.js"></script>
    <script src="/HumanResourceManagement/asserts/pdfmake/build/pdfmake.min.js"></script>
    <script src="/HumanResourceManagement/asserts/pdfmake/build/vfs_fonts.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="/HumanResourceManagement/asserts/js/custom.min.js"></script>
        
  </body>
</html>
