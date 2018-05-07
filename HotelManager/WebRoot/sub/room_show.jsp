<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
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
	<link href="stylesheets/bootstrap.min.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/font-awesome.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/se7en-font.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/isotope.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/jquery.fancybox.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/fullcalendar.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/wizard.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/select2.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/morris.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/datatables.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/datepicker.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/timepicker.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/colorpicker.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/bootstrap-switch.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/daterange-picker.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/typeahead.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/summernote.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/pygments.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/style.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/color/green.css" media="all" rel="alternate stylesheet" title="green-theme" type="text/css" /><link href="stylesheets/color/orange.css" media="all" rel="alternate stylesheet" title="orange-theme" type="text/css" /><link href="stylesheets/color/magenta.css" media="all" rel="alternate stylesheet" title="magenta-theme" type="text/css" /><link href="stylesheets/color/gray.css" media="all" rel="alternate stylesheet" title="gray-theme" type="text/css" /><script src="javascripts/jquery-1.10.2.min.js" type="text/javascript"></script><script src="javascripts/jquery-ui.js" type="text/javascript"></script><script src="javascripts/bootstrap.min.js" type="text/javascript"></script><script src="javascripts/raphael.min.js" type="text/javascript"></script><script src="javascripts/selectivizr-min.js" type="text/javascript"></script><script src="javascripts/jquery.mousewheel.js" type="text/javascript"></script><script src="javascripts/jquery.vmap.min.js" type="text/javascript"></script><script src="javascripts/jquery.vmap.sampledata.js" type="text/javascript"></script><script src="javascripts/jquery.vmap.world.js" type="text/javascript"></script><script src="javascripts/jquery.bootstrap.wizard.js" type="text/javascript"></script><script src="javascripts/fullcalendar.min.js" type="text/javascript"></script><script src="javascripts/gcal.js" type="text/javascript"></script><script src="javascripts/jquery.dataTables.min.js" type="text/javascript"></script><script src="javascripts/datatable-editable.js" type="text/javascript"></script><script src="javascripts/jquery.easy-pie-chart.js" type="text/javascript"></script><script src="javascripts/excanvas.min.js" type="text/javascript"></script><script src="javascripts/jquery.isotope.min.js" type="text/javascript"></script><script src="javascripts/isotope_extras.js" type="text/javascript"></script><script src="javascripts/modernizr.custom.js" type="text/javascript"></script><script src="javascripts/jquery.fancybox.pack.js" type="text/javascript"></script><script src="javascripts/select2.js" type="text/javascript"></script><script src="javascripts/styleswitcher.js" type="text/javascript"></script><script src="javascripts/wysiwyg.js" type="text/javascript"></script><script src="javascripts/summernote.min.js" type="text/javascript"></script><script src="javascripts/jquery.inputmask.min.js" type="text/javascript"></script><script src="javascripts/jquery.validate.js" type="text/javascript"></script><script src="javascripts/bootstrap-fileupload.js" type="text/javascript"></script><script src="javascripts/bootstrap-datepicker.js" type="text/javascript"></script><script src="javascripts/bootstrap-timepicker.js" type="text/javascript"></script><script src="javascripts/bootstrap-colorpicker.js" type="text/javascript"></script><script src="javascripts/bootstrap-switch.min.js" type="text/javascript"></script><script src="javascripts/typeahead.js" type="text/javascript"></script><script src="javascripts/daterange-picker.js" type="text/javascript"></script><script src="javascripts/date.js" type="text/javascript"></script><script src="javascripts/morris.min.js" type="text/javascript"></script><script src="javascripts/skycons.js" type="text/javascript"></script><script src="javascripts/fitvids.js" type="text/javascript"></script><script src="javascripts/jquery.sparkline.min.js" type="text/javascript"></script><script src="javascripts/main.js" type="text/javascript"></script><script src="javascripts/respond.js" type="text/javascript"></script>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
    
    <script>
	//window.location = "/HotelManager/room/show#zhidao"; //自动跳转到锚点处
</script>


  </head>
  
  <body>
  
    <div class="container-fluid main-content">
    <a name="zhidao"></a>
		<!--锚点处-->
		<br><br><br><br><br><br>
        <div class="page-title">
          <h1>
            客房预定
          </h1>
        </div>
        <!-- Gallery with captions -->
        <div class="row">
          <div class="col-lg-12">
            <div class="widget-container fluid-height">
              <div class="heading">
                <i class="icon-picture"></i>选择日期
              </div>
              <div class="widget-content padded">
               <form action="/HotelManager/order/selectTime" method="post">
                <div class="form-group">
		            <label class="control-label col-md-2">请选择入住时间范围</label>
		            <div class="col-sm-2">
		              <input class="form-control" data-date-autoclose="true" data-date-format="dd-mm-yyyy" id="dpd1" placeholder="入住时间" type="text" name="fromTime" value="<fmt:formatDate value="${timeFlag.fromTime}" type="both" pattern="dd-MM-yyyy"/>">
		            </div>
		            <div class="col-sm-2">
		              <input class="form-control" data-date-autoclose="true" data-date-format="dd-mm-yyyy" id="dpd2" placeholder="离店时间" type="text" name="toTime" value="<fmt:formatDate value="${timeFlag.toTime}" type="both" pattern="dd-MM-yyyy"/>">
		            </div>
		            <div class="col-sm-2">
		              <button type="submit" class="btn btn-success">查询</button>
		            </div>
		          </div>
                <br>
                <br>
                </form>
                
              </div>
            </div>
          </div>
        </div>
        <!-- end Gallery with captions -->
        <div class="row">
          <!-- Gallery with filtering and actions -->
          <div class="col-lg-12">
            <div class="widget-container fluid-height">
              <div class="heading">
                <i class="icon-th-large"></i>您可以预选的房间【选择了日期之后才可以预定房间哦】
                <div class="gallery-filters list-inline btn-group pull-right">
                  <a class="btn btn-sm btn-primary-outline selected" data-filter="*" href="#">所有</a>
                  <a class="btn btn-sm btn-primary-outline" data-filter=".p1" href="#">一个人</a>
                  <a class="btn btn-sm btn-primary-outline" data-filter=".p2" href="#">两个人</a>
                  <a class="btn btn-sm btn-primary-outline" data-filter=".p3" href="#">三个人</a>
                  <a class="btn btn-sm btn-primary-outline" data-filter=".p4" href="#">四个人</a>
                  <a class="btn btn-sm btn-primary-outline" data-filter=".p5" href="#">五个人</a>
                </div>
              </div>
              <div class="widget-content padded">
                <div class="gallery-container">
                
                <c:forEach var="p" items="${allRoom}">
                
                
                
                
                
                  <a class="gallery-item p${p.peopleNum} fancybox" href="<c:if test="${timeFlag.fromTime == null}">${p.photo}</c:if><c:if test="${timeFlag.fromTime != null}">/HotelManager/room/select/${p.id}</c:if>" rel="gallery1" title="${p.name}"><img src="${p.photo}" />
                    <div class="actions">
                      <i class="icon-zoom-in"></i>
                    </div>
                  </a>
                  
                  </c:forEach>
                  
                  
                </div>
              </div>
            </div>
          </div>
          <!-- End Gallery with filtering and actions --><!-- Gallery carousel -->
          
          <!-- End Gallery carousel -->
        </div>
      </div>
    <script type="text/javascript">
      ${message}
      </script>
  </body>
</html>
