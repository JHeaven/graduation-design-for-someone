<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

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
<script src="javascripts/respond.js" type="text/javascript"></script>
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"
	name="viewport">

</head>

<body>
	<div class="container-fluid main-content">
	<a name="zhidao"></a>
		<!--锚点处-->
		<br><br><br><br><br><br>
        <div class="page-title chart-container">
          <h1>
            数据分析
          </h1>
        </div>
        
        
        <div class="row">
          
          <!-- Pie Chart -->
          <div class="col-md-4">
            <div class="widget-container">
              <div class="heading">
                <i class="icon-bar-chart"></i>年龄段
              </div>
              <div class="widget-content padded">
                <div class="pie-chart">
                  <div id="pie-chart"></div>
                  <ul class="chart-key">
                    <li>
                      <span class="green"></span>01岁-15岁
                    </li>
                    <li>
                      <span class="orange"></span>16岁-20岁
                    </li>
                    <li>
                      <span class="red"></span>21岁-30岁
                    </li>
                    <li>
                      <span class="blue"></span>31岁-50岁
                    </li>
                    <li>
                      <span class="white"></span>51岁-99岁
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <!-- end Pie Chart -->
          
          
          
          
          
          <!-- Composite Graph -->
          <div class="col-md-8">
            <div class="widget-container">
              <div class="heading">
                <i class="icon-bar-chart"></i>每月分析
              </div>
              <div class="widget-content padded text-center">
                <div id="composite-chart-1">
                  Loading...
                </div>
              </div>
            </div>
          </div>
          <!-- end Composite Graph -->
          
        </div>
        
        <!-- Line Chart:Morris -->
        
      </div>
    <script type="text/javascript">
    


    
    
    </script>
    
    <script type="text/javascript">
    
    
    $("#pie-chart").sparkline([${age1}, ${age2}, ${age3}, ${age4} , ${age5}], {
        type: "pie",
        height: "220",
        width: "220",
        offset: "+90",
        sliceColors: ["#a0eeed", "#81e970", "#f5af50", "#f46f50", "#ffffff"]
      });
    
    
    var m1 = Math.floor(Math.random()*60+1);
    var m2 = Math.floor(Math.random()*60+1);
    var m3 = Math.floor(Math.random()*60+1);
    var m4 = Math.floor(Math.random()*60+1);
    var m5 = Math.floor(Math.random()*60+1);
    var m6 = Math.floor(Math.random()*60+1);
    var m7 = Math.floor(Math.random()*60+1);
    var m8 = Math.floor(Math.random()*60+1);
    var m9 = Math.floor(Math.random()*60+1);
    var m10 = Math.floor(Math.random()*60+1);
    var m11 = Math.floor(Math.random()*60+1);
    var m12 = Math.floor(Math.random()*60+1);
    
    
    
    
    
    $("#composite-chart-1").sparkline([m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12], {
        type: "bar",
        height: "226",
        barSpacing: 8,
        barWidth: 60,
        barColor: "#8fdbda"
      });
    
    $("#composite-chart-1").sparkline([m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12], {
        type: "line",
        width: "100%",
        height: "226",
        lineColor: "#cfee74",
        fillColor: "rgba(244, 252, 225, 0.5)",
        lineWidth: 2,
        spotColor: "#b9e72a",
        minSpotColor: "#bfe646",
        maxSpotColor: "#b9e72a",
        highlightSpotColor: "#b9e72a",
        highlightLineColor: "#cccccc",
        spotRadius: 6,
        chartRangeMin: 0,
        composite: true
      });
      ${message}
      </script>
  </body>
</html>
