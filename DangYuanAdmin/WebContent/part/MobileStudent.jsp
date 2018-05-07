<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="pic/danghui.png">

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

<button type="button" class="btn btn-danger" style="width: 100%" onclick="return gotologinout()">退出此用户</button>

<br><br><br>
<form action="MobileStudentUpdate.do" method="post">
  
  <div class="form-group">
    <label for="exampleInputEmail1">你的学号</label>
    <input type="text" class="form-control" name="xuehao" readonly="readonly" value="${requestScope.student.id}">
  </div>
  
   <div class="form-group">
    <label for="exampleInputEmail1">你的姓名</label>
    <input type="text" class="form-control" name="name" value="${requestScope.student.name}">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">账号密码</label>
    <input type="password" class="form-control" name="Password" value="${requestScope.student.pwd}">
  </div>
  
 <div class="form-group">
    <label for="exampleInputEmail1">你的班级</label>
    <input type="text" class="form-control" name="banji" value="${requestScope.student.banji}">
  </div>
  
  
  <div class="form-group">
    <label for="exampleInputEmail1">你的性别：</label>
    <select name="sex" class="form-control">
    	<option value="${requestScope.student.sex}">${requestScope.student.sex}</option>
    	<option value="男">男</option>
    	<option value="女">女</option>
    </select>
    <br>
   
  </div>
  
  
  <div class="form-group">
    <label for="exampleInputEmail1">你的年龄</label>
    <input type="text" class="form-control" name="age" value="${requestScope.student.age}">
  </div>
  
  
  <div class="form-group">
    <label for="exampleInputEmail1">所在系别</label>
    <input type="text" class="form-control" name="xi" value="${requestScope.student.xi}">
  </div>
  
  
  <div class="form-group">
    <label for="exampleInputEmail1">你的专业</label>
    <input type="text" class="form-control" name="zhuanye" value="${requestScope.student.zhuanye}">
  </div>

  <input type="submit" class="btn btn-warning" style="width: 100%" value="提交修改">
</form>







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
		function gotologinout(){
			return window.nativeMethod.tologinout();
		};
	</script>
</body>
</html>