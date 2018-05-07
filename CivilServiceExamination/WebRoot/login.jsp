<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html lang="en">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>请登陆 - 公务员在线考试系统</title>

<!-- Bootstrap -->
<link href="/CivilServiceExamination/css/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="/CivilServiceExamination/css/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="/CivilServiceExamination/css/vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- Animate.css -->
<link href="/CivilServiceExamination/css/vendors/animate.css/animate.min.css" rel="stylesheet">

<!-- Custom Theme Style -->
<link href="/CivilServiceExamination/build/css/custom.min.css" rel="stylesheet">

<link rel="stylesheet" href="/CivilServiceExamination/css/style.css" />
<script type='text/javascript' src='/CivilServiceExamination/js/jquery-1.11.1.min.js'></script>
<script type='text/javascript' src='/CivilServiceExamination/js/jquery.particleground.min.js'></script>
<script type='text/javascript' src='/CivilServiceExamination/js/demo.js'></script>


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
							<form action="/CivilServiceExamination/login" method="post" id="loginfrom">
								<p>用户登录<span style="color: red;">${message}</span></p>
								<div>
									<input type="text" class="form-control" placeholder="用户名"
										required="" name="username" required id="username"/>
								</div>
								<div>
									<input type="password" class="form-control" placeholder="密码"
										required="" name="password" required id="password"/>
								</div>
								<div>
									<a class="btn" onclick="subLogin();">登录</a> <a class="btn" href="#">忘记了你的密码?</a>
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
											<i class="fa fa-paw"></i> 公务员在线考试系统
										</p>
										<p>©2017 辽宁工程技术 张雨烁.</p>
									</div>
								</div>
							</form>
						</section>
					</div>

					<div id="register" class="animate form registration_form">
						<section class="login_content">
							<form action="/CivilServiceExamination/stu/reg" method="post" autocomplete="off" onsubmit="return check();">
								<p>注册账户<span style="color: red;">${message}</span></p>
								<div>
									<input type="text" class="form-control" placeholder="用户名" name="loginName" id="username"
										required="" />
								</div>
								<div>
								<input type="text" class="form-control" placeholder="身份证" name="stuId" id="sfz"
									required="" />
							</div>
							
								<div>
									<input type="password" class="form-control" placeholder="密码" name="loginPass" id="pw"
										required="" />
								</div>
								<div>
								<input type="password" class="form-control" placeholder="确认密码" name="check" id="apw"
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
											<i class="fa fa-paw"></i> 公务员在线考试系统
										</p>
										<p>©2017 辽宁工程技术 张雨烁.</p>
									</div>
								</div>
							</form>
						</section>
					</div>
				</div>
			</div>

		</div>

	</div>



	<script type="text/javascript">
	var subLogin = function(){
		var username,password;
		
		username=document.getElementById("username").value;
		password=document.getElementById("password").value;
		if(username.length > 0 && password.length > 0){
			document.getElementById("loginfrom").submit();
		}else{
			alert("用户名和密码不可为空");
		}
		
		
	}
	
	
		if (self != top) {
			top.location = self.location;
		}
		
		
		
		var check = function(){
			  var pas1,pas2,sfz;
			  pas1=document.getElementById("pw").value;
			  pas2=document.getElementById("apw").value;
			  sfz=document.getElementById("sfz").value;
			  
			  if(sfz.length != 18){
				  alert("您的身份证位数有误！");
				  return false;
			  }
			  
			  
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
