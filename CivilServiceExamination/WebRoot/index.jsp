<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title> 公务员在线考试系统 </title>

    <!-- Bootstrap -->
    <link href="css/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="css/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="css/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="css/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- PNotify -->
    <link href="css/vendors/pnotify/dist/pnotify.css" rel="stylesheet">
    <link href="css/vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet">
    <link href="css/vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet">
    
    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
    
    
    <style type="text/css">
    body {
		font-family: "Verdana", "Hiragino Sans GB", "Microsoft YaHei","WenQuanYi Micro Hei", sans-serif;
	}
    </style>
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col menu_fixed">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="/CivilServiceExamination/index" class="site_title"><i class="fa fa-group"></i> <span>公务员在线考试系统</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/user.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>${message}</span>
                <h2>${userLoginFlag.name}</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>后台管理</h3>
                <ul class="nav side-menu">
                
                
                
                
                  <li><a><i class="fa fa-home"></i> 我的报名 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/CivilServiceExamination/game/showAllCompetionOfMine" target="r" onclick="notyText('您进入了我的报名记录')">我的报名</a></li>
                      
                    </ul>
                  </li>
                  
                  
                  
                  
                  
                  <li><a><i class="fa fa-edit"></i> 考试批次汇总 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                    	<c:if test="${userLoginFlag.loginName == 'admin'}">
                      <li><a href="/CivilServiceExamination/game/addCompetion" target="r">添加考试批次</a></li>
                      </c:if>
                      <li><a href="/CivilServiceExamination/game/showAllCompetion" target="r">所有考试批次</a></li>
                    </ul>
                  </li>
                  
                  
                  <c:if test="${userLoginFlag.loginName == 'admin'}">
                  
                  <li><a><i class="fa fa-sitemap"></i> 考试试题汇总 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/CivilServiceExamination/game/goToAddEx" target="r">添加考试试题</a></li>
                      <li><a href="/CivilServiceExamination/game/showAllEx" target="r">所有考试试题</a></li>
                      <li><a href="/CivilServiceExamination/game/cmdEx" target="r">批量修改试题</a></li>
                    </ul>
                  </li>
                  
                  </c:if>
                  
                  
                  <li><a><i class="fa fa-desktop"></i> 成绩汇总 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/CivilServiceExamination/game/showMyGrade/${userLoginFlag.id}" target="r">我的成绩</a></li>
                    </ul>
                  </li>
                  
                  
                  <c:if test="${userLoginFlag.loginName == 'admin'}">
                  
                  <li><a><i class="fa fa-table"></i> 考生汇总 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/CivilServiceExamination/stu/showAllStu/" target="r">所有考生</a></li>
                    </ul> 
                  </li>
                  </c:if>
                  
                </ul>
              </div>
              
            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="images/user.jpg" alt="">${userLoginFlag.name}
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                  	<li><a href="/CivilServiceExamination/stu/select/${userLoginFlag.id}" onclick="notyText('您进入了我的资料');" target="r"><i class="fa fa-user pull-right"></i> 我的资料</a></li>
                    <li><a href="<%=basePath%>loginOut"><i class="fa fa-sign-out pull-right"></i> 注销</a></li>
                  </ul>
                </li>

                
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main" style="height: 100%;">
        <!-- 
        <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Fixed Sidebar <small> Just add class <strong>menu_fixed</strong></small></h3>
              </div>
            </div>
          </div>
        
         -->
          <iframe id="iframepage" name="r" src="/CivilServiceExamination/index/index_r.html" frameborder="0" style="width: 100%;height: 1500px;" scrolling="auto">
          
          </iframe>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            ©2017 辽宁工程技术   <a>张雨烁.</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
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
    <!-- Chart.js -->
    <script src="css/vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- jQuery Sparklines -->
    <script src="css/vendors/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
    <!-- Flot -->
    <script src="css/vendors/Flot/jquery.flot.js"></script>
    <script src="css/vendors/Flot/jquery.flot.pie.js"></script>
    <script src="css/vendors/Flot/jquery.flot.time.js"></script>
    <script src="css/vendors/Flot/jquery.flot.stack.js"></script>
    <script src="css/vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="css/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="css/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="css/vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="css/vendors/DateJS/build/date.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="css/vendors/moment/min/moment.min.js"></script>
    <script src="css/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    
    <!-- PNotify -->
    <script src="css/vendors/pnotify/dist/pnotify.js"></script>
    <script src="css/vendors/pnotify/dist/pnotify.buttons.js"></script>
    <script src="css/vendors/pnotify/dist/pnotify.nonblock.js"></script>
    
    
    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
    
    <script type="text/javascript">
    
    
   var notyText = function(text1){
	   new PNotify({
	        title: '${userLoginFlag.name} , 系统消息',
	        text: text1,
	        type: 'success',
	        styling: 'bootstrap3'
	    });
   }
   
   notyText("欢迎 ${userLoginFlag.name} 登陆系统,您可以通过左侧菜单执行响应操作.");
   if (self != top) {
		top.location = self.location;
	}
   </script>
   
   
  </body>
</html>