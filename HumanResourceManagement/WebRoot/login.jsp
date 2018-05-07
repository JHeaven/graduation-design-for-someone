<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>人力资源管理系统</title>


<!-- Bootstrap -->
<link
	href="/HumanResourceManagement/asserts/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="/HumanResourceManagement/asserts/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="/HumanResourceManagement/asserts/nprogress/nprogress.css"
	rel="stylesheet">
<!-- Animate.css -->
<link
	href="/HumanResourceManagement/asserts/animate.css/animate.min.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link href="/HumanResourceManagement/asserts/css/custom.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="/HumanResourceManagement/asserts/css/style.css" />
<script type='text/javascript'
	src='/HumanResourceManagement/asserts/js/jquery-1.11.1.min.js'></script>
<script type='text/javascript'
	src='/HumanResourceManagement/asserts/js/jquery.particleground.min.js'></script>
<script type='text/javascript'
	src='/HumanResourceManagement/asserts/js/demo.js'></script>

</head>

<body>
	<div id="particles">
		<div class="intro">
			<div>
				<a class="hiddenanchor" id="signup"></a> <a class="hiddenanchor"
					id="signin"></a>
				<div class="login_wrapper">
					<div class="animate form login_form">
						<section class="login_content">
						<form action="/HumanResourceManagement/login" method="post" id="loginfrom">
							<p>用户登录</p>
							<p style="color: red;">${message}</p>
							<div>
								<input type="text" class="form-control" placeholder="用户名" name="username"
									required="" />
							</div>
							<div>
								<input type="password" class="form-control" placeholder="密码" name="password"
									required="" />
							</div>
							<div>
								<a class="btn" href="#" onclick="subLogin();">登录</a> <a class="btn" href="#">忘记了你的密码?</a>
							</div>

							<div class="clearfix"></div>

							<div class="separator">
								<p class="">
									你是新来的？ <a href="#signup" class="" style="color:white;">
										创建一个账户 </a>
								</p>

								<div class="clearfix"></div>
								<br />
								<br />
								<br />

								<div>
									<p>
										<i class="fa fa-paw"></i> 人力资源管理系统
									</p>
									<p>©2017 湖北经济学院 马恒.</p>
								</div>
							</div>
						</form>
						</section>
					</div>

					<div id="register" class="animate form registration_form">
						<section class="login_content">
						<form method="post" action="/HumanResourceManagement/reg">
							<p>注册账户</p>
							<div>
								<input type="text" class="form-control" placeholder="用户名" name="username"
									required="" />
							</div>
							<div>
								<input type="text" class="form-control" placeholder="身份證" name="sfz"
									required="" />
							</div>
							<div>
								<input type="password" class="form-control" placeholder="密码" name="password"
									required="" />
							</div>
							<div>
								<input type="password" class="form-control" placeholder="确认密码" name="check"
									required="" />
							</div>
							<div>
								<button class="btn" type="submit">注册</button><span style="color: red;">${message}</span>
							</div>

							<div class="clearfix"></div>

							<div class="separator">
								<p class="change_link">
									已经拥有帐号? <a href="#signin" class="" style="color:white;">
										返回登录 </a>
								</p>

								<div class="clearfix"></div>
								<br />

								<div>
									<p>
										<i class="fa fa-paw"></i> 人力资源管理系统
									</p>
									<p>©2017 湖北经济学院 马恒.</p>
								</div>
							</div>
						</form>
						</section>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
		var subLogin = function(){
			document.getElementById("loginfrom").submit();    
		}
		if (self != top) {  
		     top.location=self.location;
		}
		</script>
</body>
</html>
