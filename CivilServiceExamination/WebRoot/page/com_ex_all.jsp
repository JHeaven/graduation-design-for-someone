<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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


    <!-- Bootstrap -->
    <link href="css/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="css/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="css/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="css/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="css/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="css/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="css/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="css/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="css/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
<style type="text/css">
body {
	font-family: "Verdana", "Hiragino Sans GB", "Microsoft YaHei",
		"WenQuanYi Micro Hei", sans-serif;
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
                <h3>所有考试试题 <small>您可以随意修改试题</small></h3>
              </div>

              
            </div>

            <div class="clearfix"></div>

            <div class="row">
              

              

              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>试题汇总</h2>
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
                      您可以下载EXCEL版，在本地修改之后批量上传修改。
                    </p>
                    <table id="datatable-buttons" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>题目ID</th>
                          <th>题目描述</th>
                          <th>题目答案</th>
                          <th>挂起状态</th>
                          <th>操作</th>
                          <th>修改</th>
                          <th>删除</th>
                        </tr>
                      </thead>


                      <tbody>
                      
                      
                      
                      <c:forEach var="p" items="${allEx}" varStatus="status" >
                      
                      
                      
                        <tr>
                          <td>${p.id}</td>
                          <td>${p.content}</td>
                          <td>${p.ans}</td>
                          <td><span class="label label-warning">${p.type}</span></td>
                          <td>
                          	<a target="r" class="btn btn-success" href="/CivilServiceExamination/game/shifang/${p.id}">释放</a>
                          	<a target="r" class="btn btn-warning" href="/CivilServiceExamination/game/xuangua/${p.id}">悬挂</a>
                          </td>
                          <td><a target="r" class="btn btn-info" href="/CivilServiceExamination/game/goToUpdateEx/${p.id}">修改此题</a></td>
                          <td><a target="r" class="btn btn-danger" href="/CivilServiceExamination/game/delEx/${p.id}" onClick="return confirm('确定操作?');">删除此题</a></td>
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
    </div>
    
    
    
    
    
    <!-- jQuery -->
    <script src="css/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="css/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="css/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="css/vendors/nprogress/nprogress.js"></script>
    <!-- iCheck -->
    <script src="css/vendors/iCheck/icheck.min.js"></script>
    <!-- Datatables -->
    <script src="css/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="css/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="css/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="css/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="css/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="css/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="css/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="css/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="css/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="css/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="css/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="css/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="css/vendors/jszip/dist/jszip.min.js"></script>
    <script src="css/vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="css/vendors/pdfmake/build/vfs_fonts.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
    
    <script type="text/javascript">
    ${message}
    </script>
  </body>
</html>
