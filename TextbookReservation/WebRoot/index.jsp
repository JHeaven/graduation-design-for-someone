<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${userLoginFlag.name}- 黑龙江工程学院教材预定系统</title>


<!--STYLESHEET-->
<!--=================================================-->

<!--Open Sans Font [ OPTIONAL ]-->



<!--Bootstrap Stylesheet [ REQUIRED ]-->
<link href="css/bootstrap.min.css" rel="stylesheet">


<!--Nifty Stylesheet [ REQUIRED ]-->
<link href="css/nifty.min.css" rel="stylesheet">


<!--Nifty Premium Icon [ DEMONSTRATION ]-->
<link href="css/demo/nifty-demo-icons.min.css" rel="stylesheet">


<!--Demo [ DEMONSTRATION ]-->
<link href="css/demo/nifty-demo.min.css" rel="stylesheet">



<!--Morris.js [ OPTIONAL ]-->
<link href="plugins/morris-js/morris.min.css" rel="stylesheet">


<!--Magic Checkbox [ OPTIONAL ]-->
<link href="plugins/magic-check/css/magic-check.min.css"
	rel="stylesheet">






<!--JAVASCRIPT-->
<!--=================================================-->

<!--Pace - Page Load Progress Par [OPTIONAL]-->
<link href="plugins/pace/pace.min.css" rel="stylesheet">
<script src="plugins/pace/pace.min.js"></script>


<!--jQuery [ REQUIRED ]-->
<script src="js/jquery-2.2.4.min.js"></script>


<!--BootstrapJS [ RECOMMENDED ]-->
<script src="js/bootstrap.min.js"></script>


<!--NiftyJS [ RECOMMENDED ]-->
<script src="js/nifty.min.js"></script>






<!--=================================================-->

<!--Demo script [ DEMONSTRATION ]-->
<script src="js/demo/nifty-demo.min.js"></script>


<!--Morris.js [ OPTIONAL ]-->
<script src="plugins/morris-js/morris.min.js"></script>
<script src="plugins/morris-js/raphael-js/raphael.min.js"></script>


<!--Sparkline [ OPTIONAL ]-->
<script src="plugins/sparkline/jquery.sparkline.min.js"></script>


<!--Specify page [ SAMPLE ]-->
<script src="js/demo/dashboard.js"></script>





<!--=================================================

    REQUIRED
    You must include this in your project.


    RECOMMENDED
    This category must be included but you may modify which plugins or components which should be included in your project.


    OPTIONAL
    Optional plugins. You may choose whether to include it in your project or not.


    DEMONSTRATION
    This is to be removed, used for demonstration purposes only. This category must not be included in your project.


    SAMPLE
    Some script samples which explain how to initialize plugins or components. This category should not be included in your project.


    Detailed information and more samples can be found in the document.

    =================================================-->

<style type="text/css">
body {
	font-family: "Verdana", "Hiragino Sans GB", "Microsoft YaHei",
		"WenQuanYi Micro Hei", sans-serif;
}
</style>
  </head>
  
  <body>
    <div id="container" class="effect aside-float aside-bright mainnav-lg navbar-fixed">
        
        <!--NAVBAR-->
        <!--===================================================-->
        <header id="navbar">
            <div id="navbar-container" class="boxed">

                <!--Brand logo & name-->
                <!--================================-->
                <div class="navbar-header">
                    <a href="/TextbookReservation/index" class="navbar-brand">
                        <img src="img/logo.png" alt="Nifty Logo" class="brand-icon">
                        <div class="brand-title">
                            <span class="brand-text">黑龙江工程学院教材预定系统</span>
                        </div>
                    </a>
                </div>
                <!--================================-->
                <!--End brand logo & name-->


                <!--Navbar Dropdown-->
                <!--================================-->
                <div class="navbar-content clearfix">
                    <ul class="nav navbar-top-links pull-left">

                        <!--Navigation toogle button-->
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <li class="tgl-menu-btn">
                            <a class="mainnav-toggle" href="#">
                                <i class="demo-pli-view-list"></i>
                            </a>
                        </li>
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <!--End Navigation toogle button-->



                        <!--Notification dropdown-->
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="dropdown-toggle">
                                <i class="demo-pli-bell"></i>
                                <span class="badge badge-header badge-danger"></span>
                            </a>

                            <!--Notification dropdown menu-->
                            
                        </li>
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <!--End notifications dropdown-->



                        <!--Mega dropdown-->
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <!--End mega dropdown-->

                    </ul>
                    <ul class="nav navbar-top-links pull-right">

                        <!--Language selector-->
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <!--End language selector-->

						

                        <!--User dropdown-->
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <li id="dropdown-user" class="dropdown">
                            <a href="#" data-toggle="dropdown" class="dropdown-toggle text-right">
                                <span class="pull-right">
                                    <!--<img class="img-circle img-user media-object" src="img/profile-photos/1.png" alt="Profile Picture">-->
                                    <i class="demo-pli-male ic-user"></i>
                                </span>
                                <div class="username hidden-xs">${userLoginFlag.name}</div>
                            </a>


                            <div class="dropdown-menu dropdown-menu-md dropdown-menu-right panel-default">

                                <div class="pad-all text-right">
                                    <a href="/TextbookReservation/loginOut" class="btn btn-primary">
                                        <i class="demo-pli-unlock"></i> 注销
                                    </a>
                                </div>
                            </div>
                        </li>
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <!--End user dropdown-->

                        <li>
                            <a class="aside-toggle navbar-aside-icon">
                                <i class="pci-ver-dots"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <!--================================-->
                <!--End Navbar Dropdown-->

            </div>
        </header>
        <!--===================================================-->
        <!--END NAVBAR-->

        <div class="boxed">
			
            <!--CONTENT CONTAINER-->
            <!--================================================<div id="content-container">===-->
            
           		<iframe src="/TextbookReservation/right" width="100%" height="800px" style="border: 0px;" name="right"></iframe>
            
            
            <!--=================================================</div>==-->
            <!--END CONTENT CONTAINER-->


            
          
            
            <!--MAIN NAVIGATION-->
            <!--===================================================-->
            <nav id="mainnav-container">
                <div id="mainnav">

                    <!--Menu-->
                    <!--================================-->
                    <div id="mainnav-menu-wrap">
                        <div class="nano">
                            <div class="nano-content">

                                <!--Profile Widget-->
                                <!--================================-->
                                <div id="mainnav-profile" class="mainnav-profile">
                                    <div class="profile-wrap">
                                        <div class="pad-btm">
                                            <img class="img-circle img-sm img-border" src="img/profile-photos/1.png" alt="Profile Picture">
                                        </div>
                                        <a href="#profile-nav" class="box-block" data-toggle="collapse" aria-expanded="true">
                                            <span class="pull-right dropdown-toggle">
                                                <i class="dropdown-caret"></i>
                                            </span>
                                            <p class="mnp-name">${userLoginFlag.name}</p>
                                            <span class="mnp-desc">${userLoginFlag.phone}</span>
                                        </a>
                                    </div>
                                    <div id="profile-nav" class="collapse list-group bg-trans">
                                        <a href="/TextbookReservation/stu/select/${userLoginFlag.id}" target="right" class="list-group-item" onclick="notyText('${userLoginFlag.name}，您进入了我的资料')">
                                            <i class="demo-pli-male icon-lg icon-fw"></i> 我的资料
                                        </a>
                                        <a href="/TextbookReservation/loginOut" class="list-group-item">
                                            <i class="demo-pli-unlock icon-lg icon-fw"></i> 注销
                                        </a>
                                    </div>
                                </div>


                                <!--Shortcut buttons-->
                                <!--================================-->
                                <div id="mainnav-shortcut">
                                    <ul class="list-unstyled">
                                        <li class="col-xs-4" data-content="我的资料">
                                            <a class="shortcut-grid" href="/TextbookReservation/stu/select/${userLoginFlag.id}" target="right">
                                                <i class="demo-psi-male"></i>
                                            </a>
                                        </li>
                                        <li class="col-xs-4" data-content="我的预定">
                                            <a class="shortcut-grid" href="/TextbookReservation/sign/signMy/${userLoginFlag.id}"  target="right">
                                                <i class="demo-psi-speech-bubble-3"></i>
                                            </a>
                                        </li>
                                        <li class="col-xs-4" data-content="注销">
                                            <a class="shortcut-grid" href="/TextbookReservation/loginOut" target="right">
                                                <i class="demo-psi-lock-2"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <!--================================-->
                                <!--End shortcut buttons-->


                                <ul id="mainnav-menu" class="list-group">
						
						            <!--Category name-->
						            <li class="list-header">主要功能</li>
						
						            <!--Menu list item-->
						            <li>
						                <a href="/TextbookReservation/index" onclick="notyText('${userLoginFlag.name}，您进入了主页')">
						                    <i class="demo-psi-home"></i>
						                    <span class="menu-title">
												<strong>主页</strong>
											</span>
						                </a>
						            </li>
						
						
						
									 <!--Menu list item-->
						            <li class="active">
						                <a href="#">
						                    <i class="demo-psi-repair"></i>
						                    <span class="menu-title">预定汇总</span>
											<i class="arrow"></i>
						                </a>
						
						                <!--Submenu-->
						                <ul class="collapse in">
						                    <li><a target="right" onclick="notyText('${userLoginFlag.name}，预定教材')" href="/TextbookReservation/sign/signAdd">教材预定</a></li>
						                    <li><a target="right" onclick="notyText('${userLoginFlag.name}，我的教材预定')" href="/TextbookReservation/sign/signMy/${userLoginFlag.id}">我的预定</a></li>
						                    <c:if test="${userLoginFlag.loginName == 'admin'}">
						                    	<li><a target="right" onclick="notyText('${userLoginFlag.name}，教师教材预定')" href="/TextbookReservation/sign/signAll">教师预定汇总</a></li>
						                    </c:if>
						                </ul>
						            </li>
									
									
									
									
						            <!--Menu list item-->
						            <li class="active">
						                <a href="#">
						                    <i class="demo-psi-split-vertical-2"></i>
						                    <span class="menu-title">
												<strong>教材汇总</strong>
											</span>
											<i class="arrow"></i>
						                </a>
						
						                <!--Submenu-->
						                <ul class="collapse in">
						                	<c:if test="${userLoginFlag.loginName == 'admin'}">
						                		<li><a target="right" onclick="notyText('${userLoginFlag.name}，添加教材类别')" href="/TextbookReservation/book/typeAdd">添加类别</a></li>
						                   		<li><a target="right" onclick="notyText('${userLoginFlag.name}，查看教材')" href="/TextbookReservation/book/showBookType">查看类别</a></li>
						                   		<li><a target="right" onclick="notyText('${userLoginFlag.name}，添加教材')" href="/TextbookReservation/book/bookAdd">添加教材</a></li>
						                   		
						                    </c:if>
						                    <li><a target="right" onclick="notyText('${userLoginFlag.name}，您进入了教材汇总')" href="/TextbookReservation/book/showBook">教材查看</a></li>
						                    
						                </ul>
						            </li>
						            
						            
						            <c:if test="${userLoginFlag.loginName == 'admin'}">
						            
							            <!--Menu list item-->
							            <li class="active">
							                <a href="#">
							                    <i class="demo-psi-male"></i>
							                    <span class="menu-title">用戶汇总</span>
												<i class="arrow"></i>
							                </a>
							
							                <!--Submenu-->
							                <ul class="collapse in">
							                    <li><a target="right" onclick="notyText('${userLoginFlag.name}，查看注册用户')" href="/TextbookReservation/stu/showAllStu/">所有用戶</a></li>
							                </ul>
							            </li>
						            </c:if>
						            
						            
						            <!--Menu list item-->
							            <li class="active">
							                <a href="#">
							                    <i class="demo-psi-tactic"></i>
							                    <span class="menu-title">问题汇总</span>
												<i class="arrow"></i>
							                </a>
							
							                <!--Submenu-->
							                <ul class="collapse in">
							                    <li><a target="right" onclick="notyText('${userLoginFlag.name}，发表疑问')" href="/TextbookReservation/que/addQue">发表疑问</a></li>
							                    <li><a target="right" onclick="notyText('${userLoginFlag.name}，我的疑问')" href="/TextbookReservation/que/myQue/${userLoginFlag.id}">我的疑问</a></li>
							                    <c:if test="${userLoginFlag.loginName == 'admin'}">
							                    	<li><a target="right" onclick="notyText('${userLoginFlag.name}，我的疑问')" href="/TextbookReservation/que/allQue">问题答疑</a></li>
							                	</c:if>
							                </ul>
							            </li>
							            
							            
						            
									
									
									<c:if test="${userLoginFlag.loginName == 'admin'}">
									<li class="active">
							                <a href="#">
							                    <i class="demo-psi-inbox-full"></i>
							                    <span class="menu-title">统计汇总</span>
												<i class="arrow"></i>
							                </a>
							
							                <!--Submenu-->
							                <ul class="collapse in">
							                    <li><a target="right" onclick="notyText('${userLoginFlag.name}，书本预定统计')" href="/TextbookReservation/sta/statistics">统计汇总</a></li>
							                </ul>
							            </li>
						           </c:if>
						                                          </ul>


                                <!--Widget-->
                                <!--================================-->
                                <div class="mainnav-widget">

                                    <!-- Show the button on collapsed navigation -->
                                    <div class="show-small">
                                        <a href="#" data-toggle="menu-widget" data-target="#demo-wg-server">
                                            <i class="demo-pli-monitor-2"></i>
                                        </a>
                                    </div>

                                    <!-- Hide the content on collapsed navigation -->
                                    <div id="demo-wg-server" class="hide-small mainnav-widget-content">
                                        <ul class="list-group">
                                            <li class="list-header pad-no pad-ver">服务器状态</li>
                                            <li class="mar-btm">
                                                <span class="label label-primary pull-right">25%</span>
                                                <p>CPU占用</p>
                                                <div class="progress progress-sm">
                                                    <div class="progress-bar progress-bar-primary" style="width: 35%;">
                                                        <span class="sr-only">35%</span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="mar-btm">
                                                <span class="label label-purple pull-right">55%</span>
                                                <p>带宽占用</p>
                                                <div class="progress progress-sm">
                                                    <div class="progress-bar progress-bar-purple" style="width: 55%;">
                                                        <span class="sr-only">55%</span>
                                                    </div>
                                                </div>
                                            </li>
                                           
                                        </ul>
                                    </div>
                                </div>
                                <!--================================-->
                                <!--End widget-->

                            </div>
                        </div>
                    </div>
                    <!--================================-->
                    <!--End menu-->

                </div>
            </nav>
            <!--===================================================-->
            <!--END MAIN NAVIGATION-->

        </div>

        

        <!-- FOOTER -->
        <!--===================================================-->
        <footer id="footer">

            <!-- Visible when footer positions are fixed -->
            <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
            <div class="show-fixed pull-right">
                You have <a href="#" class="text-bold text-main"><span class="label label-danger">3</span> pending action.</a>
            </div>



            <!-- Visible when footer positions are static -->
            <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
            <div class="hide-fixed pull-right pad-rgt">
                制作<strong> TSQ </strong> .
            </div>



            <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
            <!-- Remove the class "show-fixed" and "hide-fixed" to make the content always appears. -->
            <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

            <p class="pad-lft">&#0169; 2017 黑龙江工程学院</p>



        </footer>
        <!--===================================================-->
        <!-- END FOOTER -->


        <!-- SCROLL PAGE BUTTON -->
        <!--===================================================-->
        <button class="scroll-top btn">
            <i class="pci-chevron chevron-up"></i>
        </button>
        <!--===================================================-->



    </div>
    <!--===================================================-->
    <!-- END OF CONTAINER -->


   <script type="text/javascript">
   
   	var notyText = function(text) {
   		$.niftyNoty({
   			type : 'dark',
   			title : text,
   			container : 'floating',
   			timer : 5000
   		});
   	}
   
   	notyText("欢迎 ${userLoginFlag.name} 登陆系统,您可以通过左侧菜单执行响应操作.");
   </script>
  </body>
</html>
