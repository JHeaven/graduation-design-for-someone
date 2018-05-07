<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>请登陆 - 电影评价系统</title>
    
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
	
	
	

  </head>
  
  <body class="gray-bg">

    <div class="loginColumns animated fadeInDown">
        <div class="row">

            <div class="col-md-6">
                <h2 class="font-bold">欢迎来到C+</h2>

                <p>
                    &nbsp; &nbsp; &nbsp; &nbsp;信息时代的今天，如此，信息的传播途径与传递方式也随之丰富多彩。发展日渐成熟的计算机网络承载着大量信息的流通任务，人们的生活水平也是逐渐提高了。对于生活也不在满足于基础的温饱开始最求精神的享受，电影就是一种精神享受。电影成为丰富精神生活的佳品。而如今信息流逝太快，传统媒体不能对影院起到较高效的宣传与展示，电影文化只存在于纸张和胶片中使其传播力度受到局限。由此一来，人们不易在第一时间获知影院动态，许多精彩的电影信息得不到广泛交流，得不到有效的定格，人们想要了解详细的、日志性的影院信息可能也无从下手。枫叶影评网的出现，可以很好的解决这一问题。
                </p>
            </div>
            <div class="col-md-6">
                <div class="ibox-content">
                    <form class="m-t" role="form" action="/FilmReview/login" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="账户" required="" name="loginName">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Password" required="" name="loginPass">
                        </div>
                        <button type="submit" class="btn btn-primary block full-width m-b">登录</button>

                        <a href="#">
                            <small>忘记密码?</small>
                        </a>

                        <p class="text-muted text-center">
                            <small>您还没有帐号?</small>
                        </p>
                        <a class="btn btn-sm btn-white btn-block" href="/FilmReview/reg.jsp">创建一个帐号</a>
                    </form>
                    <p class="m-t">
                        <small>敏而不轩 &copy; 2017</small>
                    </p>
                </div>
            </div>
        </div>
        <hr/>
        <div class="row">
            <div class="col-md-6">
                辽宁工程技术大学
            </div>
            <div class="col-md-6 text-right">
               <small>© 2017-2020</small>
            </div>
        </div>
    </div>
<script type="text/javascript">
if (self != top) {  
    top.location=self.location;
}
</script>
</body>

</html>
