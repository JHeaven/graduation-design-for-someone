<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>请注册 | 酒店管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="stylesheets/bootstrap.min.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/font-awesome.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/se7en-font.css" media="all" rel="stylesheet" type="text/css" /><link href="stylesheets/style.css" media="all" rel="stylesheet" type="text/css" /><script src="javascripts/jquery-1.10.2.min.js" type="text/javascript"></script><script src="javascripts/jquery-ui.js" type="text/javascript"></script><script src="javascripts/bootstrap.min.js" type="text/javascript"></script><script src="javascripts/raphael.min.js" type="text/javascript"></script><script src="javascripts/jquery.mousewheel.js" type="text/javascript"></script><script src="javascripts/jquery.vmap.min.js" type="text/javascript"></script><script src="javascripts/jquery.vmap.sampledata.js" type="text/javascript"></script><script src="javascripts/jquery.vmap.world.js" type="text/javascript"></script><script src="javascripts/jquery.bootstrap.wizard.js" type="text/javascript"></script><script src="javascripts/fullcalendar.min.js" type="text/javascript"></script><script src="javascripts/gcal.js" type="text/javascript"></script><script src="javascripts/jquery.dataTables.min.js" type="text/javascript"></script><script src="javascripts/datatable-editable.js" type="text/javascript"></script><script src="javascripts/jquery.easy-pie-chart.js" type="text/javascript"></script><script src="javascripts/excanvas.min.js" type="text/javascript"></script><script src="javascripts/jquery.isotope.min.js" type="text/javascript"></script><script src="javascripts/masonry.min.js" type="text/javascript"></script><script src="javascripts/modernizr.custom.js" type="text/javascript"></script><script src="javascripts/jquery.fancybox.pack.js" type="text/javascript"></script><script src="javascripts/select2.js" type="text/javascript"></script><script src="javascripts/styleswitcher.js" type="text/javascript"></script><script src="javascripts/wysiwyg.js" type="text/javascript"></script><script src="javascripts/jquery.inputmask.min.js" type="text/javascript"></script><script src="javascripts/jquery.validate.js" type="text/javascript"></script><script src="javascripts/bootstrap-fileupload.js" type="text/javascript"></script><script src="javascripts/bootstrap-datepicker.js" type="text/javascript"></script><script src="javascripts/bootstrap-timepicker.js" type="text/javascript"></script><script src="javascripts/bootstrap-colorpicker.js" type="text/javascript"></script><script src="javascripts/bootstrap-switch.min.js" type="text/javascript"></script><script src="javascripts/daterange-picker.js" type="text/javascript"></script><script src="javascripts/date.js" type="text/javascript"></script><script src="javascripts/morris.min.js" type="text/javascript"></script><script src="javascripts/skycons.js" type="text/javascript"></script><script src="javascripts/jquery.sparkline.min.js" type="text/javascript"></script><script src="javascripts/main.js" type="text/javascript"></script><script src="javascripts/respond.js" type="text/javascript"></script>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
  </head>
  
  <body class="login1 signup">
    <!-- Login Screen -->
    <div class="login-wrapper">
      <div class="login-container">
        <a href="index.html"><img width="100" height="30" src="images/logo-login%402x.png" /></a>
        <form action="/HotelManager/reg" method="post" onsubmit="return checkPass();">
          <div class="form-group">
            <input class="form-control" type="text" value="" placeholder="请输入用户名" name="loginName" id="username">
          </div>
          <div class="form-group">
            <input class="form-control" type="password" value="" placeholder="填写密码" name="loginPass" id="pw">
          </div>
          <div class="form-group">
            <input class="form-control" type="password" value="" placeholder="确认密码" id="apw"><input type="submit" value="&#xf054;">
          </div>
          <div class="form-options">
            <label class="checkbox"><input type="checkbox" checked="checked"><span>我同意本网站的条款和协议</span></label>
          </div>
        
        <div class="social-login clearfix">
          <button class="btn btn-primary  twitter" type="submit"><i class="icon-twitter"></i>注册${message}</button>
        </div>
        </form>
        <p class="signup">
          已经有一个账户了? <a href="login1.html">马上登陆</a>
        </p>
      </div>
    </div>
    <!-- End Login Screen -->
  </body>
  
  <script type="text/javascript">
  var checkPass = function(){
	  var pas1,pas2;
	  pas1=document.getElementById("pw").value;
	  pas2=document.getElementById("apw").value;
	  
	  
	  var regex=/^[0-9A-Za-z_]{6,15}$/
		var s=document.getElementById("username").value;
	  
	  if(s.length >20){
		  alert("用戶名长度太长,请缩减到20位以内！");
			return false;
	  }
		if(regex.exec(s) == null){
			alert("用戶名不可以包含非法字符，只允许字母、数字、下划线");
			return false;
		}
		    
		    
	  if(pas1.length<6){
		  alert("密码必须大于6位，请重新输入！");
		  return false;
	  }
	  
	  if(!(pas1==pas2 && pas2!='')){
		  alert("两次输入的密码不一致，请重新输入！");
		  return false;
	  }
	  return true;
  }
  </script>

</html>
