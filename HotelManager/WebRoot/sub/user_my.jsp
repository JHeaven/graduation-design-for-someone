<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <meta charset="utf-8"/>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="stylesheets/bootstrap.min.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/font-awesome.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/se7en-font.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/isotope.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/jquery.fancybox.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/fullcalendar.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/wizard.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/select2.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/morris.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/datatables.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/datepicker.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/timepicker.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/colorpicker.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/bootstrap-switch.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/daterange-picker.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/typeahead.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/summernote.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/pygments.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/style.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/color/green.css" media="all" rel="alternate stylesheet" title="green-theme" type="text/css" /><link href="stylesheets/color/orange.css" media="all" rel="alternate stylesheet" title="orange-theme" type="text/css" /><link href="stylesheets/color/magenta.css" media="all" rel="alternate stylesheet" title="magenta-theme" type="text/css" /><link href="stylesheets/color/gray.css" media="all" rel="alternate stylesheet" title="gray-theme" type="text/css" /><script src="javascripts/jquery-1.10.2.min.js" type="text/javascript"></script><script src="javascripts/jquery-ui.js" type="text/javascript"></script><script src="javascripts/bootstrap.min.js" type="text/javascript"></script><script src="javascripts/raphael.min.js" type="text/javascript"></script><script src="javascripts/selectivizr-min.js" type="text/javascript"></script><script src="javascripts/jquery.mousewheel.js" type="text/javascript"></script><script src="javascripts/jquery.vmap.min.js" type="text/javascript"></script><script src="javascripts/jquery.vmap.sampledata.js" type="text/javascript"></script><script src="javascripts/jquery.vmap.world.js" type="text/javascript"></script><script src="javascripts/jquery.bootstrap.wizard.js" type="text/javascript"></script><script src="javascripts/fullcalendar.min.js" type="text/javascript"></script><script src="javascripts/gcal.js" type="text/javascript"></script><script src="javascripts/jquery.dataTables.min.js" type="text/javascript"></script><script src="javascripts/datatable-editable.js" type="text/javascript"></script><script src="javascripts/jquery.easy-pie-chart.js" type="text/javascript"></script><script src="javascripts/excanvas.min.js" type="text/javascript"></script><script src="javascripts/jquery.isotope.min.js" type="text/javascript"></script><script src="javascripts/isotope_extras.js" type="text/javascript"></script><script src="javascripts/modernizr.custom.js" type="text/javascript"></script><script src="javascripts/jquery.fancybox.pack.js" type="text/javascript"></script><script src="javascripts/select2.js" type="text/javascript"></script><script src="javascripts/styleswitcher.js" type="text/javascript"></script><script src="javascripts/wysiwyg.js" type="text/javascript"></script><script src="javascripts/summernote.min.js" type="text/javascript"></script><script src="javascripts/jquery.inputmask.min.js" type="text/javascript"></script><script src="javascripts/jquery.validate.js" type="text/javascript"></script><script src="javascripts/bootstrap-fileupload.js" type="text/javascript"></script><script src="javascripts/bootstrap-datepicker.js" type="text/javascript"></script><script src="javascripts/bootstrap-timepicker.js" type="text/javascript"></script><script src="javascripts/bootstrap-colorpicker.js" type="text/javascript"></script><script src="javascripts/bootstrap-switch.min.js" type="text/javascript"></script><script src="javascripts/typeahead.js" type="text/javascript"></script><script src="javascripts/daterange-picker.js" type="text/javascript"></script><script src="javascripts/date.js" type="text/javascript"></script><script src="javascripts/morris.min.js" type="text/javascript"></script><script src="javascripts/skycons.js" type="text/javascript"></script><script src="javascripts/fitvids.js" type="text/javascript"></script><script src="javascripts/jquery.sparkline.min.js" type="text/javascript"></script><script src="javascripts/main.js" type="text/javascript"></script><script src="javascripts/respond.js" type="text/javascript"></script>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
  </head>
  
  <body>
        <div class="navbar navbar-fixed-top">
<div class="page-title">
  <h1>
    我的信息
  </h1>
</div>
<div class="row">
  <div class="col-lg-12">
    <div class="widget-container fluid-height clearfix">
      <div class="heading">
        <i class="icon-reorder"></i>我的基础信息
      </div>
      <div class="widget-content padded">
        <form action="/HotelManager/user/updateMy" class="form-horizontal" method="post" onsubmit="return check();">
          
          <div class="form-group">
            <label class="control-label col-md-2">ID</label>
            <div class="col-md-7">
              <input class="form-control" placeholder="Text" type="text" name="userId" value="${user.userId}" readonly="readonly">
            </div>
          </div>
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2">登錄名</label>
            <div class="col-md-7">
              <input class="form-control" placeholder="Text" type="text" name="loginName" value="${user.loginName}" readonly="readonly">
            </div>
          </div>
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2">登陸密碼</label>
            <div class="col-md-7">
              <input class="form-control" placeholder="Text" type="text" name="loginPass" value="******">
            </div>
          </div>
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2">名字</label>
            <div class="col-md-7">
              <input class="form-control" placeholder="Text" type="text" name="name" value="${user.name}">
            </div>
          </div>
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2">電話</label>
            <div class="col-md-7">
              <input class="form-control" placeholder="Text" type="text" name="phone" value="${user.phone}" id="phone">
            </div>
          </div>
          
          
          <div class="form-group">
            <label class="control-label col-md-2">性別</label>
            <div class="col-md-7">
              <select name="sex" class="form-control">
              	<option value="${user.sex}">当前：${user.sex}</option>
              	<option value="男">男</option>
              	<option value="女">女</option>
              </select>
            </div>
          </div>
          
          
          <div class="form-group">
            <label class="control-label col-md-2">email</label>
            <div class="col-md-7">
              <input class="form-control" placeholder="Text" type="text" name="email" value="${user.email}">
            </div>
          </div>
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2">身份证</label>
            <div class="col-md-7">
              <input class="form-control" placeholder="Text" type="text" name="address" value="${user.address}" id="sfz">
            </div>
          </div>
          
          
          
          
          <div class="form-group">
            <label class="control-label col-md-2"></label>
            <div class="col-md-7">
              <button class="btn btn-lg btn-info" type="submit">修改</button>            </div>
          </div>
          
          
          
          
        </form>
      </div>
    </div>
  </div>
</div>







      </div>
    <script type="text/javascript">
      ${message}
      
      

      var check = function (){
      	
      	var phone = document.getElementById("phone").value;
      	var sfz = document.getElementById("sfz").value;
      	
      	if(phone.length !=11){
      		alert("手机号码非法，请检查");
      		return false;
      	}
      	if(sfz.length !=18){
      		alert("身份证非法，请检查");
      		return false;
      	}
      	
      	return true;
      	
      }
      </script>
  </body>
</html>
