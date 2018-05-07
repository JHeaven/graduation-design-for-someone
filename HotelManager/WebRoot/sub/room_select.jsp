<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
<link href="stylesheets/jquery.fancybox.css" media="all" rel="stylesheet" type="text/css" />

<!--Summernote [ OPTIONAL ]-->
<link href="javascripts//summernote/summernote.min.css" rel="stylesheet">



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

<script src="javascripts/jquery.fancybox.pack.js" type="text/javascript">

<!--Summernote [ OPTIONAL ]-->
<script src="javascripts/summernote/summernote.js"></script>

<!--Summernote [ OPTIONAL ]-->
<script src="javascripts/summernote/lang/summernote-zh-CN.js"></script>




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

</head>

<body>
	<div class="">

		<a name="zhidao"></a>
		<!--锚点处-->
		<br><br><br><br><br><br>
		<div class="page-title">
          <h1>
            查看客房【${room.name}】的详细信息
          </h1>
        </div>
        
        <div class="row">
  <div class="col-lg-12">
    <div class="widget-container fluid-height clearfix">
      <div class="heading">
        <i class="icon-reorder"></i>客房信息
      </div>
      <div class="widget-content padded">
        <form action="/HotelManager/room/doupdate" class="form-horizontal" method="post">
          
          
          <div class="form-group">
            <label class="control-label col-md-2">房间名字</label>
            <div class="col-md-7">
              <p>${room.name}</p>
            </div>
          </div>
          
          
          <div class="form-group">
            <label class="control-label col-md-2">房间价格</label>
            <div class="col-md-7">
              <p>${room.price}</p>
            </div>
          </div>
          
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2">房间类型</label>
            <div class="col-md-7">
            	<p>${room.type}</p>
            </div>
          </div>
          
          
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2">房间面积</label>
            <div class="col-md-7">
              <p>${room.areas}</p>
            </div>
          </div>
          
          
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2">有没有电视</label>
            <div class="col-md-7">
              <p>${room.hasTv}</p>
            </div>
          </div>
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2">有没有电话</label>
            <div class="col-md-7">
            <p>${room.hasPhone}</p>
              
            </div>
          </div>
          
          
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2">有没有空调</label>
            <div class="col-md-7">
            <p>${room.hasAir}</p>
              
            </div>
          </div>
          
          
          
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2">房间可住人数</label>
            <div class="col-md-7">
             <p>${room.peopleNum}</p>
            </div>
          </div>
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2">房间图文描述</label>
            <div class="col-md-8">
              <div>${room.content}</div>
            </div>
          </div>
          
          
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2"></label>
            <div class="col-md-7">
              <a class="btn btn-lg btn-success fancybox" target="r" href="#fancybox-example">我要预定</a>
            </div>
          </div>
          
          
          
          
        </form>
      </div>
    </div>
  </div>
</div>
        
        
      </div>
    
    
    
    <div id="fancybox-example" style="display: none">
                  <h2>
                    感谢预定，请完成最后一步完成预定
                  </h2>
                  <p>尊敬的顾客，请将需要入住的人员名字以及身份证号记录在下表中。填写个数，以入住人数为准。</p>
                  <form action="/HotelManager/order/do" method="post" class="form-horizontal">
                  
                  <div class="form-group">
						<label class="control-label col-md-3">入住人人數</label>
						<div class="col-md-7">
							<input class="form-control" type="number" name="realNum">
						</div>
					</div>
					
					
					<div class="form-group">
						<label class="control-label col-md-3">入住人联系电话</label>
						<div class="col-md-7">
							<input class="form-control" type="text" name="phone">
						</div>
					</div>
					
					
					<div class="form-group">
						<label class="control-label col-md-3">入住人①姓名</label>
						<div class="col-md-7">
							<input class="form-control"  type="text" name="name1">
							<input class="form-control"  type="hidden" name="deleted" value="${userLoginFlag.userId}">
							<input class="form-control"  type="hidden" name="name" value="${room.name}">
							<input class="form-control"  type="hidden" name="type" value="${room.type}">
							<input class="form-control"  type="hidden" name="maxNum" value="${room.peopleNum}">
							<input class="form-control"  type="hidden" name="photo" value="${room.photo}">
							<input class="form-control"  type="hidden" name="price" value="${room.price}">
							<input class="form-control"  type="hidden" name="fromTime" value="<fmt:formatDate value="${timeFlag.fromTime}" type="both" pattern="dd-MM-yyyy"/>">
							<input class="form-control"  type="hidden" name="toTime" value="<fmt:formatDate value="${timeFlag.toTime}" type="both" pattern="dd-MM-yyyy"/>">
						</div>
					</div>
					
					
					
					
					<div class="form-group">
						<label class="control-label col-md-3">入住人①身份证</label>
						<div class="col-md-7">
							<input class="form-control"   type="text" name="sfz1">
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">入住人②姓名</label>
						<div class="col-md-7">
							<input class="form-control"   type="text" name="name2">
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">入住人②身份证</label>
						<div class="col-md-7">
							<input class="form-control"   type="text" name="sfz2">
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">入住人③姓名</label>
						<div class="col-md-7">
							<input class="form-control"   type="text" name="name3">
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">入住人③身份证</label>
						<div class="col-md-7">
							<input class="form-control"   type="text" name="sfz3">
						</div>
					</div>
					
					
					<div class="form-group">
						<label class="control-label col-md-3"></label>
						<div class="col-md-7">
							<button class="btn btn-primary" type="submit">提交信息</button>
						</div>
					</div>
					


		</form>
                </div>
    
    
    
    <script type="text/javascript">
	
	$(document).ready(function() {
		$('.summernote').summernote({
			height : '230px',
			focus: true
		});
		
	});

    </script>
    
    <script type="text/javascript">
      ${message}
      </script>
  </body>
</html>
