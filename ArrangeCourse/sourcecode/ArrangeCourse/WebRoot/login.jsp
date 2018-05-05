<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>请登录 - 高校排课管理系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
            
            <div class="panel panel-signin">
                <div class="panel-body">
                    <div class="logo text-center">
                        <!-- <img src="images/logo-primary.png" alt="Chain Logo" > -->
                        <h1>高校排课管理系统</h1>
                    </div>
                    <h4 class="text-center mb5" style="color: red;">${message}</h4>
                    <h4 class="text-center mb5">已注册过账户?</h4>
                    
                    <p class="text-center">请输入你的用户名和密码，登陆你的账户</p>
                    
                    <div class="mb30"></div>
                    
                    <form action="/ArrangeCourse/login" method="post">
                        <div class="input-group mb15">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input type="text" class="form-control" placeholder="用户名" name="loginName" required>
                        </div><!-- input-group -->
                        <div class="input-group mb15">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input type="password" class="form-control" placeholder="密码" name="loginPass" required>
                        </div><!-- input-group -->
                        
                        <div class="clearfix">
                            <div class="pull-left">
                                <div class="ckbox ckbox-primary mt10">
                                    <input type="checkbox" id="rememberMe" value="1" checked="checked">
                                    <label for="rememberMe">记住用户名</label>
                                </div>
                            </div>
                            <div class="pull-right">
                                <button type="submit" class="btn btn-success">登录 <i class="fa fa-angle-right ml5"></i></button>
                            </div>
                        </div>                      
                    </form>
                    
                </div><!-- panel-body -->
                <div class="panel-footer">
                    <a href="http://localhost:8080/ArrangeCourse/reg.jsp" class="btn btn-primary btn-block">还没有帐号? 马上去注册一个</a>
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
		if (self != top) {  
		     top.location=self.location;
		}
		</script>
    </body>
	
</html>
