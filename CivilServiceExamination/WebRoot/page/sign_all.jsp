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
    <!-- bootstrap-progressbar -->
    <link href="css/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- PNotify -->
    <link href="css/vendors/pnotify/dist/pnotify.css" rel="stylesheet">
    <link href="css/vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet">
    <link href="css/vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet">

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
                <h3>我报名的公务员考试</h3>
              </div>

              
            </div>


            <div class="">


              
            </div>

            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>报考记录时间轴 <small></small></h2>
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
                  <ul class="list-unstyled timeline">
                    
                    
                    
                    <c:forEach var="p" items="${allSign}">
                    
                    <li>
                      <div class="block">
                        <div class="tags">
                          <a class="tag">
                            <span><fmt:formatDate value="${p.askTime}" type="both" pattern="MM月dd日"/></span>
                          </a>
                        </div>
                        <div class="block_content">
                          <h2 class="title">
                                          <a>${p.cName}【${p.status}】</a>
                                      </h2>
                          <div class="byline">
                             <a> 开考时间 ：<fmt:formatDate value="${p.from}" type="both" pattern="yyyy年MM月dd日 HH时mm分"/> - <fmt:formatDate value="${p.to}" type="both" pattern="yyyy年MM月dd日 HH时mm分"/></a>
                          </div>
                          <p class="excerpt"> 您在 <fmt:formatDate value="${p.askTime}" type="both" pattern="yyyy年MM月dd日 HH时mm分"/> 报名了 ${p.cName} 
                          <br> 备注：${p.ps}
                          </p>
                          
                          <a class="btn btn-danger" target="r" href="/CivilServiceExamination/game/delSign/${p.id}" onClick="return confirm('确定操作?');">撤销报名</a>
						                	<a class="btn btn-success" target="r" href="/CivilServiceExamination/game/goSign/${p.id}">开始考试</a>
                        </div>
                      </div>
                    </li>
                    
                    </c:forEach>
                    
                    
                    
                    
                    
                  </ul>

                </div>
              </div>
            </div>

            
            

            <!-- Start to do list -->
            
            <!-- End to do list -->


            
          </div>
          <div class="clearfix"></div>
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
    <!-- bootstrap-progressbar -->
    <script src="css/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="css/vendors/iCheck/icheck.min.js"></script>
    <!-- PNotify -->
    <script src="css/vendors/pnotify/dist/pnotify.js"></script>
    <script src="css/vendors/pnotify/dist/pnotify.buttons.js"></script>
    <script src="css/vendors/pnotify/dist/pnotify.nonblock.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
	<script type="text/javascript">
	
	${message}
	</script>
	
	
  </body>
</html>
