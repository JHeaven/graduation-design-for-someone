<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>${userLoginFlag.loginName} - 高校排课系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
	<link href="css/style.default.css" rel="stylesheet">
        <link href="css/morris.css" rel="stylesheet">
        <link href="css/select2.css" rel="stylesheet" />
        <link href="css/jquery.gritter.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->
           <style type="text/css">
    body {
		font-family: "Verdana", "Hiragino Sans GB", "Microsoft YaHei","WenQuanYi Micro Hei", sans-serif;
	}
    </style>
  </head>
  
  <body>
                    <div class="pageheader">
                        <div class="media">
                            <div class="pageicon pull-left">
                                <i class="fa fa-home"></i>
                            </div>
                            <div class="media-body">
                                <ul class="breadcrumb">
                                    <li><a href=""><i class="glyphicon glyphicon-home"></i></a></li>
                                    <li>主頁</li>
                                </ul>
                                <h4>主頁</h4>
                            </div>
                        </div><!-- media -->
                    </div><!-- pageheader -->
                    
                    <div class="contentpanel">
                       
                        <div class="row row-stat"   <c:if test="${userLoginFlag.site != '管理员'}">style="display: none;"</c:if> >
                            <div class="col-md-4">
                                <div class="panel panel-success-alt noborder">
                                    <div class="panel-heading noborder">
                                        <div class="panel-btns">
                                            <a href="" class="panel-close tooltips" data-toggle="tooltip" title="Close Panel"><i class="fa fa-times"></i></a>
                                        </div><!-- panel-btns -->
                                        <div class="panel-icon"><i class="fa fa-dollar"></i></div>
                                        <div class="media-body">
                                            <h5 class="md-title nomargin">已分配課程數量</h5>
                                            <h1 class="mt5">${listNum}</h1>
                                        </div><!-- media-body -->
                                        <hr>
                                        
                                    </div><!-- panel-body -->
                                </div><!-- panel -->
                            </div><!-- col-md-4 -->
                            
                            <div class="col-md-4">
                                <div class="panel panel-primary noborder">
                                    <div class="panel-heading noborder">
                                        <div class="panel-btns">
                                            <a href="" class="panel-close tooltips" data-toggle="tooltip" title="Close Panel"><i class="fa fa-times"></i></a>
                                        </div><!-- panel-btns -->
                                        <div class="panel-icon"><i class="fa fa-users"></i></div>
                                        <div class="media-body">
                                            <h5 class="md-title nomargin">教師數量</h5>
                                            <h1 class="mt5">${teaNum}</h1>
                                        </div><!-- media-body -->
                                        <hr>
                                        
                                    </div><!-- panel-body -->
                                </div><!-- panel -->
                            </div><!-- col-md-4 -->
                            
                            <div class="col-md-4">
                                <div class="panel panel-dark noborder">
                                    <div class="panel-heading noborder">
                                        <div class="panel-btns">
                                            <a href="" class="panel-close tooltips" data-toggle="tooltip" data-placement="left" title="Close Panel"><i class="fa fa-times"></i></a>
                                        </div><!-- panel-btns -->
                                        <div class="panel-icon"><i class="fa fa-pencil"></i></div>
                                        <div class="media-body">
                                            <h5 class="md-title nomargin">班級數量</h5>
                                            <h1 class="mt5">${classNum}</h1>
                                        </div><!-- media-body -->
                                        <hr>
                                        
                                    </div><!-- panel-body -->
                                </div><!-- panel -->
                            </div><!-- col-md-4 -->
                        </div><!-- row -->
                        
                        
                        <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <div class="panel-btns">
                                            <a href="" class="panel-minimize tooltips" data-toggle="tooltip" title="Minimize Panel"><i class="fa fa-minus"></i></a>
                                            <a href="" class="panel-close tooltips" data-toggle="tooltip" title="Close Panel"><i class="fa fa-times"></i></a>
                                        </div><!-- panel-btns -->
                                        <h4 class="panel-title">黑龙江工程学院高校排课管理系统</h4>
                                        <p>信管13-1班 郭雨晴</p>
                                    </div><!-- panel-heading -->
                                    <div class="panel-body">
                                        <div class="row">
	                        <div class="col-md-2">
                                <button class="btn btn-primary btn-rounded">学校概况</button>
	                        </div>
	                        <div class="col-md-2">
	                        	<button class="btn btn-success btn-rounded">管理机构</button>
	                        </div>
	                        <div class="col-md-2">
	                        	<button class="btn btn-warning btn-rounded">院系设置</button>
	                        </div>
	                        <div class="col-md-2">
	                        	<button class="btn btn-danger btn-rounded">人才培养</button>
	                        </div>
	                        <div class="col-md-2">
	                        	<button class="btn btn-primary btn-rounded">科学研究</button>
	                        </div>
	                        <div class="col-md-2">
	                        	<button class="btn btn-success btn-rounded">交流合作</button>
	                        </div>
                        </div>
                                    </div>
                                </div><!-- panel -->
                        
                        
                        
                        
                        
                        <br>
                        
                        
                        <div class="alert alert-info">
                            <button aria-hidden="true" data-dismiss="alert" class="close" type="button">&times;</button>
                            <strong>通知：</strong> 本校已启用全新的排课系统。
                        </div>


<div class="row row-dashboard">
                            <div class="col-md-12">
                                <!-- BASIC WIZARD -->
                                <form method="post" id="basicWizard" class="panel-wizard">
                                    <ul class="nav nav-justified nav-wizard mt0">
                                        <li><a href="#tab1" data-toggle="tab"><strong>烈日校园</strong> </a></li>
                                        <li><a href="#tab2" data-toggle="tab"><strong>清纯时光</strong></a></li>
                                        <li><a href="#tab3" data-toggle="tab"><strong>深秋的景</strong> </a></li>
                                    </ul>
                
                                    <div class="tab-content">
                                        <div class="tab-pane" id="tab1">
                                           <div class="form-group">
                                                <img alt="" src="/ArrangeCourse/images/3.JPG" style="width: 100%;">
                                            </div><!-- form-group -->
                                        </div><!-- tab-pane -->
                                        
                                        <div class="tab-pane" id="tab2">
                                            
                                            <div class="form-group">
                                                <img alt="" src="/ArrangeCourse/images/1.jpg" style="width: 100%;">
                                            </div><!-- form-group -->
                                        </div><!-- tab-pane -->
                                        
                                        <div class="tab-pane" id="tab3">
                                            
                                                
                                          
                      
                                            <div class="form-group">
                                                <img alt="" src="/ArrangeCourse/images/2.JPG" style="width: 100%;">
                                            </div><!-- form-group -->
                                        </div><!-- tab-pane -->
                                    </div><!-- tab-content -->
                
                                    <ul class="list-unstyled wizard">
                                        <li class="pull-left previous"><button type="button" class="btn btn-default">前一个</button></li>
                                        <li class="pull-right next"><button type="button" class="btn btn-primary">下一个</button></li>
                                    </ul>
                                    
                                </form><!-- #basicWizard -->
                            </div><!-- col-md-6 -->
                            
                            <div class="col-md-6" style="display: none;">
                                <div class="panel-group" id="accordion2">
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion2" href="#collapseOne2">
                                                    Collapsible Group Item #1
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseOne2" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch.</p>
                                                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch.</p>
                                            </div>
                                        </div>
                                    </div><!-- panel -->
                                    
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" class="collapsed" data-parent="#accordion2" href="#collapseTwo2">
                                                    Collapsible Group Item #2
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseTwo2" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </div>
                                        </div>
                                    </div><!-- panel -->
                                    
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" class="collapsed" data-parent="#accordion2" href="#collapseThree2">
                                                    Collapsible Group Item #3
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree2" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch.</p>
                                                <p>Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</p>
                                            </div>
                                        </div>
                                    </div><!-- panel -->
                                    
                                </div><!-- panel-group -->
                            </div>
                        </div><!-- row -->
                        
                        
                        
                        <div class="row" style="display: none;">
                            <div class="col-md-4">
                                <div class="panel panel-default">
                                    <div class="panel-body padding15">
                                        <h5 class="md-title mt0 mb10">Site Statistics</h5>
                                        <div id="basicFlotLegend" class="flotLegend"></div>
                                        <div id="basicflot" class="flotChart"></div>
                                    </div><!-- panel-body -->
                                    <div class="panel-footer">
                                        <div class="tinystat pull-left">
                                            <div id="sparkline" class="chart mt5"></div>
                                            <div class="datainfo">
                                                <span class="text-muted">Average</span>
                                                <h4>$9,201</h4>
                                            </div>
                                        </div><!-- tinystat -->
                                        <div class="tinystat pull-right">
                                            <div id="sparkline2" class="chart mt5"></div>
                                            <div class="datainfo">
                                                <span class="text-muted">Total</span>
                                                <h4>$8,201</h4>
                                            </div>
                                        </div><!-- tinystat -->
                                    </div><!-- panel-footer -->
                                </div><!-- panel -->
                            </div>
                            
                            <div class="col-md-4">
                                <div class="panel panel-default">
                                    <div class="panel-body padding15">
                                        <h5 class="md-title mt0 mb10">Site Visitors</h5>
                                        <div id="basicFlotLegend2" class="flotLegend"></div>
                                        <div id="basicflot2" class="flotChart"></div>
                                    </div><!-- panel-body -->
                                    <div class="panel-footer">
                                        <div class="tinystat pull-left">
                                            <div id="sparkline3" class="chart mt5"></div>
                                            <div class="datainfo">
                                                <span class="text-muted">Average</span>
                                                <h4>52,201</h4>
                                            </div>
                                        </div><!-- tinystat -->
                                        <div class="tinystat pull-right">
                                            <div id="sparkline4" class="chart mt5"></div>
                                            <div class="datainfo">
                                                <span class="text-muted">Total</span>
                                                <h4>11,201</h4>
                                            </div>
                                        </div><!-- tinystat -->
                                    </div><!-- panel-footer -->
                                </div><!-- panel -->
                            </div>
                            
                            <div class="col-md-4">
                                <div class="panel panel-default">
                                    <div class="panel-body padding15">
                                        <h5 class="md-title mt0 mb10">Site Impressions</h5>
                                        <div id="basicFlotLegend3" class="flotLegend"></div>
                                        <div id="basicflot3" class="flotChart"></div>
                                    </div><!-- panel-body -->
                                    <div class="panel-footer">
                                        <div class="tinystat pull-left">
                                            <div id="sparkline5" class="chart mt5"></div>
                                            <div class="datainfo">
                                                <span class="text-muted">Average</span>
                                                <h4>37,101</h4>
                                            </div>
                                        </div><!-- tinystat -->
                                        <div class="tinystat pull-right">
                                            <div id="sparkline6" class="chart mt5"></div>
                                            <div class="datainfo">
                                                <span class="text-muted">Total</span>
                                                <h4>18,899</h4>
                                            </div>
                                        </div><!-- tinystat -->
                                    </div><!-- panel-footer -->
                                </div><!-- panel -->
                            </div>
                            
                        </div><!-- row -->
                        
                        <div class="row" <c:if test="${userLoginFlag.site != '管理员'}">style="display: none;"</c:if>>
                            <div class="col-md-12">
                                <div class="panel panel-default">
                                  <div class="panel-body">
                                    <div class="row">
                                      <div class="col-md-7">
                                        <h5 class="lg-title">服务器网络情况</h5>
                                        <p class="mb15">近年网络流量排行...</p>
                                        <div id="bar-chart"></div>
                                      </div><!-- col-md-7 -->
                                      <div class="col-md-5">
                                        <h5 class="lg-title">服务器当前状态</h5>
                                        <p class="mb15">服务器状态概述.</p>
                                        
                                        <span class="sublabel">CPU 使用情况 (40.05 - 32 cpus)</span>
                                        <div class="progress progress-xs progress-metro">
                                          <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%"></div>
                                        </div><!-- progress -->
                                        
                                        <span class="sublabel">内存使用情况 (32.2%)</span>
                                        <div class="progress progress-xs progress-metro">
                                          <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 32%"></div>
                                        </div><!-- progress -->
                                        
                                        <span class="sublabel">硬盘使用情况 (82.2%)</span>
                                        <div class="progress progress-xs progress-metro">
                                          <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 82%"></div>
                                        </div><!-- progress -->
                                        
                                        <span class="sublabel">数据库 (63/100)</span>
                                        <div class="progress progress-xs progress-metro">
                                          <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 63%"></div>
                                        </div><!-- progress -->
                                        
                                        <span class="sublabel">集群唤醒 (2/10)</span>
                                        <div class="progress progress-xs progress-metro">
                                          <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 20%"></div>
                                        </div><!-- progress -->
                                        
                                        <span class="sublabel">邮件服务器唤醒 (13/50)</span>
                                        <div class="progress progress-xs progress-metro">
                                          <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 26%"></div>
                                        </div><!-- progress -->
                                        
                                        
                                      </div><!-- col-md-5 -->
                                    </div><!-- row -->
                                  </div><!-- panel-body -->
                                </div><!-- panel -->
                            </div>
                            
                            <div class="col-md-4" style="display: none;">
                                <div class="panel panel-success-head widget-todo">
                                    <div class="panel-heading">
                                        <div class="pull-right">
                                            <a title="" data-toggle="tooltip" class="tooltips mr5" href="" data-original-title="Settings"><i class="glyphicon glyphicon-cog"></i></a>
                                            <a title="" data-toggle="tooltip" class="tooltips" id="addnewtodo" href="" data-original-title="Add New"><i class="glyphicon glyphicon-plus"></i></a>
                                        </div><!-- panel-btns -->
                                        <h3 class="panel-title">To-Do List Widget</h3>
                                    </div>
                                    <ul class="panel-body list-group nopadding">
                                        <li class="list-group-item">
                                              <div class="ckbox ckbox-default">
                                                  <input type="checkbox" id="washcar" value="1">
                                                  <label for="washcar">Wash car in neighbors house</label>
                                              </div>
                                        </li>
                                        <li class="list-group-item">
                                              <div class="ckbox ckbox-default">
                                                  <input type="checkbox" checked="checked" id="eatpizza" value="1">
                                                  <label for="eatpizza">Find and eat pizza anywhere</label>
                                              </div>
                                        </li>
                                        <li class="list-group-item">
                                              <div class="ckbox ckbox-default">
                                                  <input type="checkbox" checked="checked" id="washdish" value="1">
                                                  <label for="washdish">Wash the dishes and map the floor</label>
                                              </div>
                                        </li>
                                        <li class="list-group-item">
                                              <div class="ckbox ckbox-default">
                                                  <input type="checkbox" id="buyclothes" value="1">
                                                  <label for="buyclothes">Buy some clothes</label>
                                              </div>
                                        </li>
                                        <li class="list-group-item">
                                              <div class="ckbox ckbox-default">
                                                  <input type="checkbox" checked="checked" id="throw" value="1">
                                                  <label for="throw">Throw the garbage</label>
                                              </div>
                                        </li>
                                        <li class="list-group-item">
                                              <div class="ckbox ckbox-default">
                                                  <input type="checkbox" id="reply" value="1">
                                                  <label for="reply">Reply all emails for this week</label>
                                              </div>
                                        </li>
                                    </ul>
                                </div>
                            </div><!-- col-md-4 -->
                        </div><!-- row -->
                        
                        
                        
                    </div><!-- contentpanel -->
                    
                
                 <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/jquery-migrate-1.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/modernizr.min.js"></script>
        <script src="js/pace.min.js"></script>
        <script src="js/retina.min.js"></script>
        <script src="js/jquery.cookies.js"></script>
        
        <script src="js/flot/jquery.flot.min.js"></script>
        <script src="js/flot/jquery.flot.resize.min.js"></script>
        <script src="js/flot/jquery.flot.spline.min.js"></script>
        <script src="js/jquery.sparkline.min.js"></script>
        <script src="js/morris.min.js"></script>
        <script src="js/raphael-2.1.0.min.js"></script>
        <script src="js/bootstrap-wizard.min.js"></script>
        <script src="js/select2.min.js"></script>
        
		<script src="js/jquery.gritter.min.js"></script>
		
        <script src="js/custom.js"></script>
        <script src="js/dashboard.js"></script>
		<script>
		
		
		</script>
  </body>
</html>
