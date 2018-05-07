<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>${userLoginFlag.loginName}| 7天酒店管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="stylesheets/bootstrap.min.css" media="all" rel="stylesheet"
	type="text/css" />
<link href="stylesheets/font-awesome.css" media="all" rel="stylesheet"
	type="text/css" />
<link href="stylesheets/se7en-font.css" media="all" rel="stylesheet"
	type="text/css" />
<link href="stylesheets/isotope.css" media="all" rel="stylesheet"
	type="text/css" />
<link href="stylesheets/jquery.fancybox.css" media="all"
	rel="stylesheet" type="text/css" />
<link href="stylesheets/fullcalendar.css" media="all" rel="stylesheet"
	type="text/css" />
<link href="stylesheets/wizard.css" media="all" rel="stylesheet"
	type="text/css" />
<link href="stylesheets/select2.css" media="all" rel="stylesheet"
	type="text/css" />
<link href="stylesheets/morris.css" media="all" rel="stylesheet"
	type="text/css" />
<link href="stylesheets/datatables.css" media="all" rel="stylesheet"
	type="text/css" />
<link href="stylesheets/datepicker.css" media="all" rel="stylesheet"
	type="text/css" />
<link href="stylesheets/timepicker.css" media="all" rel="stylesheet"
	type="text/css" />
<link href="stylesheets/colorpicker.css" media="all" rel="stylesheet"
	type="text/css" />
<link href="stylesheets/bootstrap-switch.css" media="all"
	rel="stylesheet" type="text/css" />
<link href="stylesheets/daterange-picker.css" media="all"
	rel="stylesheet" type="text/css" />
<link href="stylesheets/typeahead.css" media="all" rel="stylesheet"
	type="text/css" />
<link href="stylesheets/summernote.css" media="all" rel="stylesheet"
	type="text/css" />
<link href="stylesheets/pygments.css" media="all" rel="stylesheet"
	type="text/css" />
<link href="stylesheets/style.css" media="all" rel="stylesheet"
	type="text/css" />
<link href="stylesheets/color/green.css" media="all"
	rel="alternate stylesheet" title="green-theme" type="text/css" />
<link href="stylesheets/color/orange.css" media="all"
	rel="alternate stylesheet" title="orange-theme" type="text/css" />
<link href="stylesheets/color/magenta.css" media="all"
	rel="alternate stylesheet" title="magenta-theme" type="text/css" />
<link href="stylesheets/color/gray.css" media="all"
	rel="alternate stylesheet" title="gray-theme" type="text/css" />
<script src="javascripts/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="javascripts/jquery-ui.js" type="text/javascript"></script>
<script src="javascripts/bootstrap.min.js" type="text/javascript"></script>
<script src="javascripts/raphael.min.js" type="text/javascript"></script>
<script src="javascripts/selectivizr-min.js" type="text/javascript"></script>
<script src="javascripts/jquery.mousewheel.js" type="text/javascript"></script>
<script src="javascripts/jquery.vmap.min.js" type="text/javascript"></script>
<script src="javascripts/jquery.vmap.sampledata.js"
	type="text/javascript"></script>
<script src="javascripts/jquery.vmap.world.js" type="text/javascript"></script>
<script src="javascripts/jquery.bootstrap.wizard.js"
	type="text/javascript"></script>
<script src="javascripts/fullcalendar.min.js" type="text/javascript"></script>
<script src="javascripts/gcal.js" type="text/javascript"></script>
<script src="javascripts/jquery.dataTables.min.js"
	type="text/javascript"></script>
<script src="javascripts/datatable-editable.js" type="text/javascript"></script>
<script src="javascripts/jquery.easy-pie-chart.js"
	type="text/javascript"></script>
<script src="javascripts/excanvas.min.js" type="text/javascript"></script>
<script src="javascripts/jquery.isotope.min.js" type="text/javascript"></script>
<script src="javascripts/isotope_extras.js" type="text/javascript"></script>
<script src="javascripts/modernizr.custom.js" type="text/javascript"></script>
<script src="javascripts/jquery.fancybox.pack.js" type="text/javascript"></script>
<script src="javascripts/select2.js" type="text/javascript"></script>
<script src="javascripts/styleswitcher.js" type="text/javascript"></script>
<script src="javascripts/wysiwyg.js" type="text/javascript"></script>
<script src="javascripts/summernote.min.js" type="text/javascript"></script>
<script src="javascripts/jquery.inputmask.min.js" type="text/javascript"></script>
<script src="javascripts/jquery.validate.js" type="text/javascript"></script>
<script src="javascripts/bootstrap-fileupload.js" type="text/javascript"></script>
<script src="javascripts/bootstrap-datepicker.js" type="text/javascript"></script>
<script src="javascripts/bootstrap-timepicker.js" type="text/javascript"></script>
<script src="javascripts/bootstrap-colorpicker.js"
	type="text/javascript"></script>
<script src="javascripts/bootstrap-switch.min.js" type="text/javascript"></script>
<script src="javascripts/typeahead.js" type="text/javascript"></script>
<script src="javascripts/daterange-picker.js" type="text/javascript"></script>
<script src="javascripts/date.js" type="text/javascript"></script>
<script src="javascripts/morris.min.js" type="text/javascript"></script>
<script src="javascripts/skycons.js" type="text/javascript"></script>
<script src="javascripts/fitvids.js" type="text/javascript"></script>
<script src="javascripts/jquery.sparkline.min.js" type="text/javascript"></script>
<script src="javascripts/main.js" type="text/javascript"></script>
<script src="javascripts/respond.js" type="text/javascript"></script>
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"
	name="viewport">
	
	<script>
	window.location = "/HotelManager/adminright#zhidao"; //自动跳转到锚点处
</script>
</head>

<body>
	<div class="" >
	<a name="zhidao"></a>
		<!--锚点处-->
		<br><br><br><br><br><br>
	<!-- Statistics -->
        <div class="row">
          <div class="col-lg-12">
            <div class="widget-container stats-container">
              <div class="col-md-3">
                <div class="number">
                  <div class="icon globe"></div>
                  ${allOrder} 单
                </div>
                <div class="text">
                  全网订单
                </div>
              </div>
              <div class="col-md-3">
                <div class="number">
                  <div class="icon visitors"></div>
                  ${allUser} 人
                </div>
                <div class="text">
                  全网人数
                </div>
              </div>
              <div class="col-md-3">
                <div class="number">
                  <div class="icon money"></div>
                 ${allRoom} 间
                </div>
                <div class="text">
                  共有客房
                </div>
              </div>
              <div class="col-md-3">
                <div class="number">
                  <div class="icon chat-bubbles"></div>
                  ${allNews} 条
                </div>
                <div class="text">
                  共有资讯
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- End Statistics -->
        <div class="row">
          <!-- Weather -->
          <div class="col-md-8">
            <div class="widget-container weather">
              <div class="widget-content padded">
                <div class="row text-center">
                  <div class="col-sm-6 col-md-6 col-lg-4 today">
                    <p>
                      今天
                    </p>
                    <canvas class="skycons-element" data-skycons="RAIN" height="100" id="rain" width="100"></canvas>
                    <div class="number">
                      31<small>&deg;</small>
                    </div>
                    <p class="location">
                      中国 · 辽宁
                    </p>
                  </div>
                  <div class="col-sm-2 hidden-xs">
                    <p>
                      明天
                    </p>
                    <canvas class="skycons-element" data-skycons="CLEAR_DAY" height="60" id="clear-day" width="60"></canvas>
                    <div class="number">
                      33<small>&deg;</small>
                    </div>
                  </div>
                  <div class="col-sm-2 hidden-xs">
                    <p>
                      后天
                    </p>
                    <canvas class="skycons-element" data-skycons="RAIN" height="60" id="cloudy" width="60"></canvas>
                    <div class="number">
                      35<small>&deg;</small>
                    </div>
                  </div>
                  <div class="col-sm-2 hidden-xs">
                    <p>
                      大后天
                    </p>
                    <canvas class="skycons-element" data-skycons="PARTLY_CLOUDY_DAY" height="60" id="partly-cloudy-day" width="60"></canvas>
                    <div class="number">
                      31<small>&deg;</small>
                    </div>
                  </div>
                  <div class="col-sm-2 hidden-md hidden-sm hidden-xs">
                    <p>
                      大大后天
                    </p>
                    <canvas class="skycons-element" data-skycons="SLEET" height="60" id="sleet" width="60"></canvas>
                    <div class="number">
                      29<small>&deg;</small>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- end Weather --><!-- Bar Graph -->
          <div class="col-md-4">
            <div class="widget-container small">
              <div class="heading">
                <i class="icon-signal"></i>最近系统登陆情况<i class="icon-list pull-right"></i><i class="icon-refresh pull-right"></i>
              </div>
              <div class="widget-content padded">
                <div class="bar-chart-widget">
                  <div class="chart-graph">
                    <div id="barcharts">
                      Loading...
                    </div>
                    <ul class="chart-text-axis">
                      <li>
                        1
                      </li>
                      <li>
                        2
                      </li>
                      <li>
                        3
                      </li>
                      <li>
                        4
                      </li>
                      <li>
                        5
                      </li>
                      <li>
                        6
                      </li>
                      <li>
                        7
                      </li>
                      <li>
                        8
                      </li>
                      <li>
                        9
                      </li>
                      <li>
                        10
                      </li>
                      <li>
                        11
                      </li>
                      <li>
                        12
                      </li>
                      <li>
                        13
                      </li>
                      <li>
                        14
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- End Bar Graph -->
        </div>
        
        <div class="row">
          <!-- Pie Graph 1 -->
          <div class="col-lg-5">
            <div class="widget-container fluid-height">
              <div class="heading">
                <i class="icon-bar-chart"></i>服务器资源使用情况[CPU][MEMORY]
              </div>
              <div class="widget-content clearfix">
                <div class="col-sm-6">
                  <div class="pie-chart1 pie-chart pie-number" data-percent="87">
                    87%
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="pie-chart2 pie-chart pie-number" data-percent="26">
                    26%
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-7">
            <div class="widget-container fluid-height">
              <!-- Table -->
              <table class="table table-filters">
                <tbody>
                  <tr>
                    <td class="filter-category blue">
                      <div class="arrow-left"></div>
                      <i class="icon-stethoscope"></i>
                    </td>
                    <td>
                      2017年5月营业额
                    </td>
                    <td>
                      $9204
                    </td>
                    <td class="hidden-xs">
                      <div class="sparkslim">
                        50,55,60,40,30,35,30,20,25,30,40,20,15
                      </div>
                    </td>
                    <td>
                      <div class="danger">
                        -4%
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td class="filter-category green">
                      <div class="arrow-left"></div>
                      <i class="icon-coffee"></i>
                    </td>
                    <td>
                      2017年4月营业额
                    </td>
                    <td>
                      $23,890
                    </td>
                    <td class="hidden-xs">
                      <div class="sparkslim">
                        5,10,15,50,80,50,40,30,50,60,70,75,75
                      </div>
                    </td>
                    <td>
                      <div class="success">
                        +12%
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td class="filter-category orange">
                      <div class="arrow-left"></div>
                      <i class="icon-gamepad"></i>
                    </td>
                    <td>
                      2017年3月营业额
                    </td>
                    <td>
                      $10,995
                    </td>
                    <td class="hidden-xs">
                      <div class="sparkslim">
                        100,100,80,70,40,20,20,40,50,60,70
                      </div>
                    </td>
                    <td>
                      <div class="success">
                        +5%
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td class="filter-category red">
                      <div class="arrow-left"></div>
                      <i class="icon-gift"></i>
                    </td>
                    <td>
                     2017年2月营业额
                    </td>
                    <td>
                      $6,790
                    </td>
                    <td class="hidden-xs">
                      <div class="sparkslim">
                        5,10,15,20,30,40,80,100,120,120,140
                      </div>
                    </td>
                    <td>
                      <div class="success">
                        +26%
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td class="filter-category blue">
                      <div class="arrow-left"></div>
                      <i class="icon-stethoscope"></i>
                    </td>
                    <td>
                      2017年1月营业额
                    </td>
                    <td>
                      $9204
                    </td>
                    <td class="hidden-xs">
                      <div class="sparkslim">
                        50,55,60,40,30,35,30,20,25,30,40,20,15
                      </div>
                    </td>
                    <td>
                      <div class="danger">
                        -4%
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td class="filter-category magenta">
                      <div class="arrow-left"></div>
                      <i class="icon-trophy"></i>
                    </td>
                    <td>
                      2016年12月营业额
                    </td>
                    <td>
                      $22,156
                    </td>
                    <td class="hidden-xs">
                      <div class="sparkslim">
                        20,40,50,60,70,80,90,95,100,80,70,60
                      </div>
                    </td>
                    <td>
                      <div class="danger">
                        -4%
                      </div>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
          <!-- End Pie Graph 1 -->
        </div>
      </div>
      
      <script type="text/javascript">
      ${message}
      </script>
  </body>
</html>
