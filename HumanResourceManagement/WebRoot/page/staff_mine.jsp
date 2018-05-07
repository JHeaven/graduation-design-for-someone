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
    	var lineChartsLabelData = ["沟通能力", "执行能力", "心里素质", "时间管理", "职业素养", "人格品质", "技术实力"];
    	var lineChartsDataData = [${check.goutongSc}, ${check.zhixingSc}, ${check.xinliSc}, ${check.shijianSc}, ${check.zhiyeSc}, ${check.pinzhiSc}, ${check.jishuSc}];
    </script>
  </head>
  
  <body>
  

<div class="container body">
      <div class="main_container">

		<!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>我的档案</h3>
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
                    <h2>User Report <small>Activity report</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <div class="col-md-3 col-sm-3 col-xs-12 profile_left">
                      <div class="profile_img">
                        <div id="crop-avatar">
                          <!-- Current avatar -->
                          <a href="/HumanResourceManagement/staff/changePhoto/${staff.id}"><img class="img-responsive avatar-view" src="${staff.photo}" alt="Avatar" title="Change the avatar"></a>
                        </div>
                      </div>
                      <h3>${staff.name}</h3>

                      <ul class="list-unstyled user_data">
                        <li><i class="fa fa-map-marker user-profile-icon"></i> ${staff.birthPlace}
                        </li>

                        <li>
                          <i class="fa fa-briefcase user-profile-icon"></i> ${staff.dutyName}
                        </li>

                      </ul>

                      <a class="btn btn-success" href="/HumanResourceManagement/staff/goToUpdate/${staff.id}" target="right"><i class="fa fa-edit m-right-xs"></i>修改我的信息</a>
                      <br />

                      <!-- start skills -->
                      <h4>人物维度</h4>
                      <ul class="list-unstyled user_data">
                        <li>
                          <p>沟通能力</p>
                          <div class="progress progress_sm">
                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="${check.goutongSc}"></div>
                          </div>
                        </li>
                        <li>
                          <p>执行能力</p>
                          <div class="progress progress_sm">
                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="${check.zhixingSc}"></div>
                          </div>
                        </li>
                        <li>
                          <p>心里素质</p>
                          <div class="progress progress_sm">
                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="${check.xinliSc}"></div>
                          </div>
                        </li>
                        <li>
                          <p>时间管理</p>
                          <div class="progress progress_sm">
                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="${check.shijianSc}"></div>
                          </div>
                        </li>
                        
                        <li>
                          <p>技术实力</p>
                          <div class="progress progress_sm">
                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="${check.jishuSc}"></div>
                          </div>
                        </li>
                        
                      </ul>
                      <!-- end of skills -->

                    </div>
                    <div class="col-md-9 col-sm-9 col-xs-12">

                      <div class="profile_title">
                        <div class="col-md-6">
                          <h2>我的能力模型</h2>
                        </div>
                      </div>
                      <!-- start of user-activity-graph -->
                      
                      <div class="row">
                      	<div class="col-md-6">
                      		<div class="x_panel">
			                  <div class="x_title">
			                    <h2>我的各科成绩【直线表示成绩还未出】</h2>
			                    <ul class="nav navbar-right panel_toolbox">
			                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
			                      </li>
			                      <li><a class="close-link"><i class="fa fa-close"></i></a>
			                      </li>
			                    </ul>
			                    <div class="clearfix"></div>
			                  </div>
			                  <div class="x_content">
			                    <canvas id="lineChart"></canvas>
			                  </div>
			                </div>
                      	</div>
                      	<div class="col-md-6">
                      		<div class="x_panel">
                  <div class="x_title">
                    <h2>趋向图【0表示成绩还未出】</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <canvas id="canvasRadar"></canvas>
                  </div>
                </div>
                      	</div>
                      </div>
                      
                      
                      <!-- end of user-activity-graph -->

                      <div class="" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                          <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">职称评定记录</a>
                          </li>
                          <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">奖惩记录</a>
                          </li>
                          <li role="presentation" class=""><a href="#tab_content3" role="tab" id="profile-tab2" data-toggle="tab" aria-expanded="false">部门调动记录</a>
                          </li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                          <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">

                            <!-- start recent activity -->
                            <table class="data table table-striped no-margin">
                              <thead>
                                <tr>
                                  <th>日期</th>
                                  <th>原职称</th>
                                  <th>现职称</th>
                                </tr>
                              </thead>
                              <tbody>
                                <c:forEach var="s" items="${allDutyLog}">
                                <tr>
                                  <td><fmt:formatDate value="${s.date}" type="date" dateStyle="full"/></td>
                                  <td>${s.original}</td>
                                  <td>${s.now}</td>
                                </tr>
                                </c:forEach>
                              </tbody>
                            </table>
                            <!-- end recent activity -->

                          </div>
                          <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">

                            <!-- start user projects -->
                            <table class="data table table-striped no-margin">
                              <thead>
                                <tr>
                                  <th>日期</th>
                                  <th>内容</th>
                                </tr>
                              </thead>
                              <tbody>
                                <c:forEach var="s" items="${allRewards}">
                                <tr>
                                  <td><fmt:formatDate value="${s.date}" type="date" dateStyle="full"/></td>
                                  <td>${s.remark}</td>
                                </tr>
                                </c:forEach>
                              </tbody>
                            </table>
                            <!-- end user projects -->

                          </div>
                          <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab">
                            <table class="data table table-striped no-margin">
                              <thead>
                                <tr>
                                  <th>日期</th>
                                  <th>原部门</th>
                                  <th>现部门</th>
                                </tr>
                              </thead>
                              <tbody>
                                <c:forEach var="s" items="${allDepLog}">
                                <tr>
                                  <td><fmt:formatDate value="${s.date}" type="date" dateStyle="full"/></td>
                                  <td>${s.original}</td>
                          		  <td>${s.now}</td>
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
    <!-- morris.js -->
    <script src="/HumanResourceManagement/asserts/raphael/raphael.min.js"></script>
    <script src="/HumanResourceManagement/asserts/morris.js/morris.min.js"></script>
    
        <script src="/HumanResourceManagement/asserts/Chart.js/dist/Chart.min.js"></script>
    
    <!-- bootstrap-progressbar -->
    <script src="/HumanResourceManagement/asserts/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="/HumanResourceManagement/asserts/moment/min/moment.min.js"></script>
    <script src="/HumanResourceManagement/asserts/bootstrap-daterangepicker/daterangepicker.js"></script>
    
    <!-- Custom Theme Scripts -->
    <script src="/HumanResourceManagement/asserts/js/custom.js"></script>
  </body>
</html>
