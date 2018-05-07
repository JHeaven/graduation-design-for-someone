<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>红色科文后台管理</title>
<link rel="stylesheet" type="text/css" href="css/style-login.css" />

</head>
<body>
<div class="container">
<br><br><br><br><br><br><br><br>
	<section id="content">
		<form action="Login.do" method="post">
			<h1>红色科文后台管理</h1>
			<div>
				<input type="text" placeholder="用户名" required="" name="username" />
			</div>
			<div>
				<input type="password" placeholder="密码" required="" name="password" />
			</div>
			<div>
				<input type="submit" value="登录" />
				<a href="#">忘记密码请联系管理员</a>
				<a href="#">不可注册</a>
			</div>
		</form><!-- form -->
		<div class="button">
			<a href="About.jsp">下载红色科文APP</a>
		</div><!-- button -->
	</section><!-- content -->
</div><!-- container -->
</body>
</html>