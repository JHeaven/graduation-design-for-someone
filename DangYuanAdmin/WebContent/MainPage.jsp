<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="pic/danghui.png">

<title>后台控制中心</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/dashboard.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<style>
	body,button, input, select, textarea,h1 ,h2, h3, h4, h5, h6 { font-family: Microsoft YaHei,'宋体' , Tahoma, Helvetica, Arial, "\5b8b\4f53", sans-serif;}
	
</style>
</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			
			<a class="navbar-brand" href="#">党员发展APP后台控制系统</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">富强</a></li>
				<li><a href="#">民主</a></li>
				<li><a href="#">文明</a></li>
				<li><a href="#">和谐</a></li>
				<li><a href="http://kwxy.xznu.edu.cn/" target="_blank">江苏师范大学科文学院</a></li>
			</ul>
			<form class="navbar-form navbar-right">
				<input type="text" class="form-control" placeholder="Search...">
			</form>
		</div>
	</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li class="active"><a href="#" name="houtaizonglan">后台总览</a></li>
					<li><a href="#">管理员信息</a></li>
					<li><a href="#" name="ShowStudentInfo">学生党员信息管理</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="#" name="lanmuguanli">新增文章</a></li>
					<li><a href="#" name="huodongguanli">活动管理</a></li>
					<li><a href="#" name="apptuisong">APP推送</a></li>
				</ul>

			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main"
				id="right"></div>
		</div>
	</div>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<!--script src="js/holder.min.js"></script-->
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="js/ie10-viewport-bug-workaround.js"></script>


	<script>
		$('#right').load('part/MainView.jsp');
	
		$(document).ready(function() {
			$("a[name='houtaizonglan']").click(function() {
				$('#right').load('part/MainView.jsp');
			});
		});

		$(document).ready(function() {
			$("a[name='ShowStudentInfo']").click(function() {
				$('#right').load('ShowStudentInfo.do');
			});
		});
		
		
		$(document).ready(function() {
			$("a[name='lanmuguanli']").click(function() {
				$('#right').load('part/AllArticle.jsp');
			});
		});
		
		
		$(document).ready(function() {
			$("a[name='huodongguanli']").click(function() {
				$('#right').load('ActivityShow.do')
			});
		});
		
		$(document).ready(function() {
			$("a[name='apptuisong']").click(function() {
				$('#right').load('part/apptuisong.jsp')
			});
		});
		
		
	</script>
</body>
</html>