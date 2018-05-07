<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>电影评价系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
	
	
  </head>
  
<body class="top-navigation">

    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom white-bg">
        <nav class="navbar navbar-static-top" role="navigation">
            <div class="navbar-header">
                <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                    <i class="fa fa-reorder"></i>
                </button>
                <a href="/FilmReview/index" class="navbar-brand">C+电影评价系统</a>
            </div>
            <div class="navbar-collapse collapse" id="navbar">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a aria-expanded="false" role="button" href="/FilmReview/index"> 主页 </a>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="/FilmReview/new/show" class="dropdown-toggle" target="r"> 近期影讯 <span class="label label-warning pull-right">NEW	</span></a>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="/FilmReview/film/showNext/1" class="dropdown-toggle" target="r" > 最新电影 </a>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="/FilmReview/film/hot" class="dropdown-toggle" target="r" > 最热电影 </a>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="/FilmReview/re/hot" class="dropdown-toggle" target="r" > 最热影评 </a>
                    </li>
                    
                </ul>
                <ul class="nav navbar-top-links navbar-right">
                	<c:if test="${userLoginFlag.loginName != null}">
                	<li>
                        <a href="/FilmReview/user/update2/${userLoginFlag.id}" target="r">
                            <i class="fa fa-user-circle"></i> ${userLoginFlag.nickName}
                        </a>
                    </li>
                    <li>
                        <a href="/FilmReview/loginOut">
                            <i class="fa fa-sign-out"></i> 注销
                        </a>
                    </li>
                    </c:if>
                    <c:if test="${userLoginFlag.loginName == null}">
	                    <li>
	                        <a href="/FilmReview/login.jsp">
	                            <i class="fa fa-dot-circle-o"></i> 登陆
	                        </a>
	                    </li>
                    </c:if>
                    
                </ul>
            </div>
        </nav>
        </div>
            <div class="container">
            	<iframe src="/FilmReview/index_right" height="1100px" width="100%" name="r" style="border: 0px;" scrolling="auto"></iframe>
            </div>

        <div class="footer">
            <div class="pull-right">
                <strong>敏而不轩</strong>
            </div>
            <div>
                <strong>辽宁工程技术大学</strong> 敏而不轩 © 2017-2020
            </div>
        </div>

        </div>
        </div>



    <!-- Mainly scripts -->
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    
    <script type="text/javascript">
    if (self != top) {  
        top.location=self.location;
    }
    </script>
</body>

</html>
