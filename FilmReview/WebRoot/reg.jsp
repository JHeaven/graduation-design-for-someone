<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>欢迎注册 - C+电影评价系统</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

  </head>
  
  <body class="gray-bg">

    <div class="middle-box text-center loginscreen   animated fadeInDown">
        <div>
            <div>
                <h1 class="logo-name">C+</h1>
            </div>
            <h3>欢迎注册 C+<span style="color: red;">${message}</span></h3>
            <p>填写如下信息.</p>
            <form class="m-t" role="form" action="/FilmReview/reg" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="登录名" required="" name="loginName">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="昵称" required="" name="nickName">
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" placeholder="Email" required="" name="email">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="登陆密码" required="" name="loginPass">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="确认密码" required="" name="">
                </div>
                <div class="form-group">
                        <div class="checkbox i-checks"><label> <input type="checkbox" checked="checked"><i></i> 同意本站条款 </label></div>
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">注册</button>

                <p class="text-muted text-center"><small>已经拥有帐号?</small></p>
                <a class="btn btn-sm btn-white btn-block" href="/FilmReview/login.jsp">登陆</a>
            </form>
            <p class="m-t"> <small>敏而不轩 &copy; 2017</small></p>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function(){
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });
    </script>
</body>

  
</html>
