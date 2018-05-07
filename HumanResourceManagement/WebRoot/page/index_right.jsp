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

    <title>Gentelella Alela! | </title>

    <!-- Bootstrap -->
    <link href="/HumanResourceManagement/asserts/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/HumanResourceManagement/asserts/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/HumanResourceManagement/asserts/nprogress/nprogress.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="/HumanResourceManagement/asserts/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/HumanResourceManagement/asserts/css/custom.min.css" rel="stylesheet">
	<style type="text/css">
    body {
		font-family: "Verdana", "Hiragino Sans GB", "Microsoft YaHei","WenQuanYi Micro Hei", sans-serif;
	}
    </style>
    <script type="text/javascript">
    	
    </script>
  </head>
  
  <body>
    
    
    <div class="container body">
    <div class="main_container">
    
    
     <div class="right_col" role="main">
          <div class="">
            <div class="row top_tiles">
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><br><i class="fa fa-caret-square-o-right"></i></div>
                  <div class="count">${staffNum}</div>
                  <h3>公司人数</h3>
                  <p>公司迄今为止总人数.</p>
                </div>
              </div>
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><br><i class="fa fa-comments-o"></i></div>
                  <div class="count">${dutyNum}</div>
                  <h3>职称评定次数</h3>
                  <p>所有的职称评定次数.</p>
                </div>
              </div>
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><br><i class="fa fa-sort-amount-desc"></i></div>
                  <div class="count">${reNum}</div>
                  <h3>奖惩次数</h3>
                  <p>是所有的奖惩记录数.</p>
                </div>
              </div>
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><br><i class="fa fa-check-square-o"></i></div>
                  <div class="count">${depNum}</div>
                  <h3>人员调动次数</h3>
                  <p>总共的人员调动次数.</p>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>近期员工活跃情况 <small></small></h2>
                    <div class="filter">
                    </div>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <div class="col-md-9 col-sm-12 col-xs-12">
                      <div class="demo-container" style="height:280px">
                        <div id="chart_plot_02" class="demo-placeholder"></div>
                      </div>
                      

                    </div>

                    <div class="col-md-3 col-sm-12 col-xs-12">
                      <div>
                        <div class="x_title">
                          <h2>最新成员</h2>
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
                        <ul class="list-unstyled top_profiles scroll-view">
                          
                          <c:forEach var="s" items="${allStaff}">
                          <li class="media event">
                            <a class="pull-left border-aero profile_thumb">
                              <i class="fa fa-user aero"></i>
                            </a>
                            <div class="media-body">
                              <a class="title" href="#">${s.name}</a>
                              <p><strong>${s.dutyName} </strong>  </p>
                              <p> <small> 入司日期：<fmt:formatDate value="${s.enterdptDate}" type="date"/></small>
                              </p>
                            </div>
                          </li>
                          </c:forEach>
                        </ul>
                      </div>
                    </div>

                  </div>
                </div>
              </div>
            </div>



            


            
          </div>
        </div>
    
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
    <!-- Chart.js -->
    <script src="/HumanResourceManagement/asserts/Chart.js/dist/Chart.min.js"></script>
    <!-- jQuery Sparklines -->
    <script src="/HumanResourceManagement/asserts/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
    <!-- Flot -->
    <script src="/HumanResourceManagement/asserts/Flot/jquery.flot.js"></script>
    <script src="/HumanResourceManagement/asserts/Flot/jquery.flot.pie.js"></script>
    <script src="/HumanResourceManagement/asserts/Flot/jquery.flot.time.js"></script>
    <script src="/HumanResourceManagement/asserts/Flot/jquery.flot.stack.js"></script>
    <script src="/HumanResourceManagement/asserts/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="/HumanResourceManagement/asserts/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="/HumanResourceManagement/asserts/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="/HumanResourceManagement/asserts/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="/HumanResourceManagement/asserts/DateJS/build/date.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="/HumanResourceManagement/asserts/moment/min/moment.min.js"></script>
    <script src="/HumanResourceManagement/asserts/bootstrap-daterangepicker/daterangepicker.js"></script>
    
    <!-- Custom Theme Scripts -->
    <script src="/HumanResourceManagement/asserts/js/custom.js"></script>
  </body>
</html>
