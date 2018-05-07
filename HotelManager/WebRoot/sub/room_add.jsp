<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'room_add.jsp' starting page</title>

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
<script>
	window.location = "/HotelManager/room/add#zhidao"; //自动跳转到锚点处
</script>
</head>

<body>
	<div class="">

		<a name="zhidao"></a>
		<!--锚点处-->
		<br><br><br><br><br><br>
		<div class="page-title">
          <h1>
            新增客房
          </h1>
        </div>
        
        <div class="row">
  <div class="col-lg-12">
    <div class="widget-container fluid-height clearfix">
      <div class="heading">
        <i class="icon-reorder"></i>完善客房信息
      </div>
      <div class="widget-content padded">
        <form action="/HotelManager/room/doadd" class="form-horizontal" method="post">
          
          
          <div class="form-group">
            <label class="control-label col-md-2">房间名字</label>
            <div class="col-md-7">
              <input class="form-control" type="text" name="name" value="${room.name}">
            </div>
          </div>
          
          
          <div class="form-group">
            <label class="control-label col-md-2">房间价格</label>
            <div class="col-md-7">
              <input class="form-control" type="number" name="price" value="${room.price}">
            </div>
          </div>
          
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2">房间类型</label>
            <div class="col-md-7">
              <select name="type"  class="form-control">
              	  <option value="${room.type}">请选择：${room.type}</option>
	              <option value="单人间">单人间</option>
	              <option value="大床房">大床房</option>
	              <option value="豪华大床房">豪华大床房</option>
	              <option value="情侣主题房">情侣主题房</option>
	              <option value="标准间">标准间</option>
	              <option value="商务标准间">商务标准间</option>
	              <option value="总统套房">总统套房</option>
              </select>
            </div>
          </div>
          
          
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2">房间面积</label>
            <div class="col-md-7">
              <input class="form-control" type="number" name="areas" value="${room.areas}">
            </div>
          </div>
          
          
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2">有没有电视</label>
            <div class="col-md-7">
              <select name="hasTv"  class="form-control">
              	  <option value="${room.hasTv}">请选择：${room.hasTv}</option>
	              <option value="有电视">有电视</option>
	              <option value="没电视">没电视</option>
              </select>
            </div>
          </div>
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2">有没有电话</label>
            <div class="col-md-7">
              <select name="hasPhone" class="form-control">
              	  <option value="${room.hasPhone}">请选择：${room.hasPhone}</option>
	              <option value="有电话">有电话</option>
	              <option value="没电话">没电话</option>
              </select>
            </div>
          </div>
          
          
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2">有没有空调</label>
            <div class="col-md-7">
              <select name="hasAir" class="form-control">
              	  <option value="${room.hasAir}">请选择：${room.hasAir}</option>
	              <option value="有空调">有空调</option>
	              <option value="没空调">没空调</option>
              </select>
            </div>
          </div>
          
          
          
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2">房间人数</label>
            <div class="col-md-7">
              <input class="form-control" type="number" name="peopleNum" value="${room.peopleNum}">
            </div>
          </div>
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2">房间图文描述</label>
            <div class="col-md-8">
              <textarea class="summernote" id="contents" name="content" >${room.content}</textarea>
            </div>
          </div>
          
          
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2"></label>
            <div class="col-md-7">
              <button type="submit" class="btn btn-lg btn-success"> 提交</button>
            </div>
          </div>
          
          
          
          
        </form>
      </div>
    </div>
  </div>
</div>
        
        
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
