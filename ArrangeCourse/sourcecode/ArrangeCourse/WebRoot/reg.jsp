<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>请注册 - 高校排课管理系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/style.default.css" rel="stylesheet">

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
  
  <body class="signin">

 
        
        
        <section>
            
            <div class="panel panel-signup">
                <div class="panel-body">
                    <div class="logo text-center">
                        <h1>高校排课管理系统</h1>
                    </div>
                    <h4 class="text-center mb5">创建一个新的账户<span style="color: red;">${message}</span></h4>
                    
                    <br>
                    <form action="/ArrangeCourse/reg" method="post" onsubmit="return checkPass();">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="input-group mb15">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input type="text" class="form-control" placeholder="用户名" name="loginName" id="username" required>
                                </div><!-- input-group -->
                            </div>
                            <div class="col-sm-6">
                                <div class="input-group mb15">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input type="text" class="form-control" placeholder="学号/工号" name="sId" required>
                                </div><!-- input-group -->
                            </div>
                        </div><!-- row -->
                        <br />
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="input-group mb15">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                    <input type="email" class="form-control" placeholder="电子邮件" name="email" required>
                                </div><!-- input-group -->
                            </div>
                            <div class="col-sm-6">
                                <div class="input-group mb15">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <select class="form-control" name="site" required>
                                    	<option value="教师">教师</option>
                                    	<option value="学生">学生</option>
                                    </select>
                                </div><!-- input-group -->
                            </div>
                        </div><!-- row -->
                        <br>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="input-group mb15">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <input type="password" class="form-control" name="loginPass" placeholder="输入密码"  id="pw" required>
                                </div><!-- input-group -->
                            </div>
                            <div class="col-sm-6">
                                <div class="input-group mb15">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <input type="password" class="form-control" placeholder="确认密码"  id="apw" required>
                                </div><!-- input-group -->
                            </div>
                        </div>
                        
                        
                        <br />
                        <div class="clearfix">
                            <div class="pull-left">
                                <div class="ckbox ckbox-primary mt5">
                                    <input type="checkbox" id="agree" value="1" checked="checked">
                                    <label for="agree">我同意 <a href="">相关协议</a></label>
                                </div>
                            </div>
                            <div class="pull-right">
                                <button type="submit" class="btn btn-success">创建一个新账户 <i class="fa fa-angle-right ml5"></i></button>
                            </div>
                        </div>
                    </form>
                    
                </div><!-- panel-body -->
                <div class="panel-footer">
                    <a href="/ArrangeCourse/" class="btn btn-primary btn-block">已有账户? 登录</a>
                </div><!-- panel-footer -->
            </div><!-- panel -->
            
        </section>


        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/jquery-migrate-1.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/modernizr.min.js"></script>
        <script src="js/pace.min.js"></script>
        <script src="js/retina.min.js"></script>
        <script src="js/jquery.cookies.js"></script>

        <script src="js/custom.js"></script>
		<script type="text/javascript">
  	var checkPass = function(){
	  var pas1,pas2;
	  pas1=document.getElementById("pw").value;
	  pas2=document.getElementById("apw").value;
	  
	  
	  var regex=/^[0-9A-Za-z_]{6,15}$/
		var s=document.getElementById("username").value;
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


    </body>
	
	
</html>
