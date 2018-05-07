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

    <title> 人力资源管理系统 </title>

    <!-- Bootstrap -->
    <link href="/HumanResourceManagement/asserts/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/HumanResourceManagement/asserts/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/HumanResourceManagement/asserts/nprogress/nprogress.css" rel="stylesheet">
    <!-- jQuery custom content scroller -->
    <link href="/HumanResourceManagement/asserts/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet"/>

    <!-- Custom Theme Style -->
    <link href="/HumanResourceManagement/asserts/css/custom.min.css" rel="stylesheet">
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
              <a href="/HumanResourceManagement/index" class="site_title"><i class="fa fa-group"></i> <span>人力资源管理</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="${userLoginFlag.photo}" alt="..." class="img-circle profile_img">
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
                <h3>主要功能</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> 培训管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/HumanResourceManagement/check/checkOfMine/${userLoginFlag.id}" target="right">我的培训进程</a></li>
                      <c:if test="${userLoginFlag.levelSite == 0}">
                      <li><a href="/HumanResourceManagement/check/checkManager" target="right">管理培训人员</a></li>
                      </c:if>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> 职称评定 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/HumanResourceManagement/duty/dutyAll" target="right">职称评定公告</a></li>
                      <c:if test="${userLoginFlag.levelSite == 0}">
                      <li><a href="/HumanResourceManagement/duty/dutySelect" target="right">职称评定管理</a></li>
                      </c:if>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i> 奖惩管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/HumanResourceManagement/rewards/rewardsAll" target="right">人员奖惩公告</a></li>
                      <c:if test="${userLoginFlag.levelSite == 0}">
                      <li><a href="/HumanResourceManagement/rewards/rewardsSelect" target="right">管理人员奖惩</a></li>
                      </c:if>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-table"></i> 人员调动 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/HumanResourceManagement/dep/depAll" target="right">人员调动公告</a></li>
                      <c:if test="${userLoginFlag.levelSite == 0}">
                      <li><a href="/HumanResourceManagement/dep/depSelect" target="right">管理人员调动</a></li>
                      </c:if>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-bar-chart-o"></i> 档案管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="/HumanResourceManagement/staff/showmine/${userLoginFlag.id}" target="right">我的档案</a></li>
                      <c:if test="${userLoginFlag.levelSite == 0}">
                      <li><a href="/HumanResourceManagement/staff/goToAddStaff" target="right">新人建档</a></li>
                      <li><a href="/HumanResourceManagement/staff/staffManager" target="right">管理档案</a></li>
                      </c:if>
                    </ul>
                  </li>
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
                    <img src="${userLoginFlag.photo}" alt="">${userLoginFlag.name}
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
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
          <iframe id="iframepage" name="right" src="/HumanResourceManagement/index_right" frameborder="0" style="width: 100%;height: 1500px;" scrolling="auto">
          
          </iframe>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            ©2017 湖北经济学院   <a>马恒.</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="/HumanResourceManagement/asserts/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="/HumanResourceManagement/asserts/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="/HumanResourceManagement/asserts/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="/HumanResourceManagement/asserts/nprogress/nprogress.js"></script>
    <!-- jQuery custom content scroller -->
    <script src="/HumanResourceManagement/asserts/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="/HumanResourceManagement/asserts/js/custom.min.js"></script>
    
  </body>
</html>