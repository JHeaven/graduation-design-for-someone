<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>${userLoginFlag.loginName}- 高校排课系统</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<link href="css/style.default.css" rel="stylesheet">
<link href="css/morris.css" rel="stylesheet">
<link href="css/select2.css" rel="stylesheet" />
<link href="css/jquery.gritter.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->
<style type="text/css">
body {
	font-family: "Verdana", "Hiragino Sans GB", "Microsoft YaHei",
		"WenQuanYi Micro Hei", sans-serif;
}
</style>
  </head>
  
   <body>

 

        
        <header>
            <div class="headerwrapper">
                <div class="header-left">
                    <a href="/ArrangeCourse/index" class="logo">
                        <img src="images/logo.png" alt="" /> 
                    </a>
                    <div class="pull-right">
                        <a href="" class="menu-collapse">
                            <i class="fa fa-bars"></i>
                        </a>
                    </div>
                </div><!-- header-left -->
                
                <div class="header-right">
                    
                    <div class="pull-right">
                        
                        <form class="form form-search" action="search-results.html">
                            <input type="search" class="form-control" placeholder="搜索" />
                        </form>
                        
                        
                        
                        
                        <div class="btn-group btn-group-option">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                              <i class="fa fa-caret-down"></i>
                            </button>
                            <ul class="dropdown-menu pull-right" role="menu">
                              <li><a href="/ArrangeCourse/user/goToUpdate/${userLoginFlag.id}" target="r"><i class="glyphicon glyphicon-user"></i> 我的个人信息</a></li>
                              <li class="divider"></li>
                              <li><a href="/ArrangeCourse/loginOut"><i class="glyphicon glyphicon-log-out"></i>注销</a></li>
                            </ul>
                        </div><!-- btn-group -->
                        
                    </div><!-- pull-right -->
                    
                </div><!-- header-right -->
                
            </div><!-- headerwrapper -->
        </header>
        
        <section>
            <div class="mainwrapper">
                <div class="leftpanel">
                    <div class="media profile-left">
                        <a class="pull-left profile-thumb" href="/ArrangeCourse/user/goToUpdate/${userLoginFlag.id}" target="r">
                            <img class="img-circle" src="images/photos/profile.png" alt="">
                        </a>
                        <div class="media-body">
                            <h4 class="media-heading">${userLoginFlag.loginName}</h4>
                            <small class="text-muted">${userLoginFlag.site} ${userLoginFlag.name}</small>
                        </div>
                    </div><!-- media -->
                    
                    <h5 class="leftpanel-title">主要功能</h5>
                    <c:if test="${userLoginFlag.site != '学生'}">
                    <ul class="nav nav-pills nav-stacked">
                        <li class="active"><a href="index.html"><i class="fa fa-home"></i> <span>主页</span></a></li>
                        <li class="parent"><a href=""><i class="fa fa-suitcase"></i> <span>课程管理</span></a>
                            <ul class="children">
                                <li><a href="/ArrangeCourse/course/goadd" target="r">增加课程</a></li>
                                <li><a href="/ArrangeCourse/course/showall" target="r">查看课程</a></li>
                            </ul>
                        </li>
                        <li class="parent"><a href=""><i class="fa fa-edit"></i> <span>教师管理</span></a>
                            <ul class="children">
                                <li><a href="/ArrangeCourse/tea/goadd" target="r">添加教师</a></li>
                                <li><a href="/ArrangeCourse/tea/showall" target="r">查看教师</a></li>
                            </ul>
                        </li>
                        <li class="parent"><a href=""><i class="fa fa-bars"></i> <span>班级管理</span></a>
                            <ul class="children">
                                <li><a href="/ArrangeCourse/class/goadd" target="r">添加班级</a></li>
                                <li><a href="/ArrangeCourse/class/showall" target="r">查看班级</a></li>
                            </ul>
                        </li>
                        <li class="parent"><a href=""><i class="fa fa-map-marker"></i> <span>教室管理</span></a>
                        <ul class="children">
                        	<li><a href="/ArrangeCourse/room/goadd" target="r">添加教室</a></li>
                            <li><a href="/ArrangeCourse/room/showall" target="r">查看教室</a></li>
                        </ul>
                        </li>
                        <li class="parent"><a href=""><i class="fa fa-file-text"></i> <span>课程分配</span></a>
                            <ul class="children">
                                <li><a href="/ArrangeCourse/list/first" target="r">分配课程</a></li>
                                <li><a href="/ArrangeCourse/list/showall" target="r">查看分配</a></li>
                            </ul>
                        </li>
                        
                        <li class="parent"><a href=""><i class="fa fa-file-text"></i> <span>排课管理</span></a>
                            <ul class="children">
                                <li><a href="/ArrangeCourse/section/go" target="r">执行自动排课</a></li>
                                <li><a href="/ArrangeCourse/section/showall" target="r">查看排课情况</a></li>
                            </ul>
                        </li>
                        <li class="parent"><a href=""><i class="fa fa-file-text"></i> <span>课表查看</span></a>
                            <ul class="children">
                                <li><a href="/ArrangeCourse/kebiao/go" target="r">查看课表</a></li>
                            </ul>
                        </li>
                        
                        
                    </ul>
                    </c:if>
                    
                    <c:if test="${userLoginFlag.site == '学生'}">
                    <ul class="nav nav-pills nav-stacked">
                        <li class="active"><a href="index.html"><i class="fa fa-home"></i> <span>主页</span></a></li>
                        
                        <li class="parent"><a href=""><i class="fa fa-file-text"></i> <span>课表查看</span></a>
                            <ul class="children">
                                <li><a href="/ArrangeCourse/kebiao/go" target="r">查看课表</a></li>
                            </ul>
                        </li>
                        
                    </ul>
                    </c:if>
                    
                    
                    
                    
                    
                </div><!-- leftpanel -->
                <div class="mainpanel">
                <iframe src="/ArrangeCourse/index_right" height="100%" width="100%" name="r" style="border: 0px;" scrolling="auto"></iframe>
                </div>
            </div><!-- mainwrapper -->
        </section>


        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/jquery-migrate-1.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/modernizr.min.js"></script>
        <script src="js/pace.min.js"></script>
        <script src="js/retina.min.js"></script>
        <script src="js/jquery.cookies.js"></script>
        
        <script src="js/flot/jquery.flot.min.js"></script>
        <script src="js/flot/jquery.flot.resize.min.js"></script>
        <script src="js/flot/jquery.flot.spline.min.js"></script>
        <script src="js/jquery.sparkline.min.js"></script>
        <script src="js/morris.min.js"></script>
        <script src="js/raphael-2.1.0.min.js"></script>
        <script src="js/bootstrap-wizard.min.js"></script>
        <script src="js/select2.min.js"></script>
        
		<script src="js/jquery.gritter.min.js"></script>
		
        <script src="js/custom.js"></script>
        <script src="js/dashboard.js"></script>
		<script>
			var noteUp = function(textt) {
				jQuery.gritter.add({
					title : '${userLoginFlag.site} ${userLoginFlag.name} 你好',
					text : textt,
					class_name : 'growl-success',
					image : 'images/screen.png',
					sticky : false,
					time : ''
				});
			}
		
			noteUp("欢迎使用高校排课系统");
		
			if (self != top) {
				top.location = self.location;
			}
		</script>
    </body>
	
	
</html>
