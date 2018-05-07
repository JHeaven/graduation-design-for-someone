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
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta charset="utf-8" />
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"
	name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />

<!-- ================== BEGIN BASE CSS STYLE ================== -->
<link href="/Recruit/frontend/one-page-parallax/assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="/Recruit/frontend/one-page-parallax/assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="/Recruit/frontend/one-page-parallax/assets/css/animate.min.css" rel="stylesheet" />
<link href="/Recruit/frontend/one-page-parallax/assets/css/style.min.css" rel="stylesheet" />
<link href="/Recruit/frontend/one-page-parallax/assets/css/style-responsive.min.css" rel="stylesheet" />
<link href="/Recruit/frontend/one-page-parallax/assets/css/theme/default.css" id="theme" rel="stylesheet" />
<!-- ================== END BASE CSS STYLE ================== -->

<!-- ================== BEGIN BASE JS ================== -->
<script src="/Recruit/frontend/one-page-parallax/assets/plugins/pace/pace.min.js"></script>
<!-- ================== END BASE JS ================== -->

</head>

<body data-spy="scroll" data-target="#header-navbar" data-offset="51">
<!-- begin #page-container -->
    <div id="page-container" class="fade">
        <!-- begin #header -->
        
        <!-- end #header -->
        
        <!-- begin #home -->
        <div id="home" class="content has-bg home">
            <!-- begin content-bg -->
            <div class="content-bg">
                <img src="/Recruit/frontend/one-page-parallax/assets/img/home-bg.jpg" alt="Home" />
            </div>
            <!-- end content-bg -->
            <!-- begin container -->
            <div class="container home-content">
                <h1>欢迎来到埃森哲招聘</h1>
                <h3>当前共有${enNum}家公司 ${userNum}位求职者</h3>
                <p>
                    互联网招聘 难?LinkedIn领英让招聘从容高效.助您连接全球4.5亿,中国2800万中高端人才.<br>大数据助您精准找到人才,让招聘需求在茫茫的信息中脱颖而出,获得优质人才的积极关注.
                </p>
                <a class="btn btn-theme">我想了解更多</a> 
                <c:if test="${userLoginFlag.site == 1}">
                <a href="/Recruit/position/showall" class="btn btn-outline">马上查看招聘信息</a><br />
                </c:if>
                <c:if test="${userLoginFlag.site == 2}">
                <a href="/Recruit/position/add/${userLoginFlag.id}" class="btn btn-outline">马上发布招聘信息</a><br />
                </c:if>
                <br />
                
            </div>
            <!-- end container -->
        </div>
        <!-- end #home -->
        
        <!-- begin #about -->
        <div id="about" class="content" data-scrollview="true">
            <!-- begin container -->
            <div class="container" data-animation="true" data-animation-type="fadeInDown">
                <h2 class="content-title">关于我们</h2>
                <p class="content-desc">
                    埃森哲招聘是全国性权威人才网站,为求职者提供最新最全的招聘信息,为企业提供网络招聘,校园招聘,猎头,培训,测评和人事外包等一站式专业人力资源服务.好工作上埃森哲招聘.

                </p>
                <!-- begin row -->
                <div class="row">
                    <!-- begin col-4 -->
                    <div class="col-md-4 col-sm-6">
                        <!-- begin about -->
                        <div class="about">
                            <h3>我们的简介</h3>
                            <p>
                                埃森哲招聘面向大型公司和快速发展的中小企业，提供一站式专业人力资源服务，包括网络招聘、报纸招聘、校园招聘、猎头服务、招聘外包、企业培训以及人才测评等等，并在中国首创了人力资源高端杂志《首席人才官》，是拥有政府颁发的人才服务许可证和劳务派遣许可证的专业服务机构。截止2011年1月，埃森哲招聘网平均日浏览量6800万，日均在线职位数255万以上，简历库拥有近3800余万份简历，每日增长超过30000封新简历。个人用户可以随时登录增加、修改、删除、休眠其个人简历，以保证简历库的时效性。
 
                            </p>
                        </div>
                        <!-- end about -->
                    </div>
                    <!-- end col-4 -->
                    <!-- begin col-4 -->
                    <div class="col-md-4 col-sm-6">
                        <h3>我们的理念</h3>
                        <!-- begin about-author -->
                        <div class="about-author">
                            <div class="quote bg-silver">
                                <i class="fa fa-quote-left"></i>
                                <h3>我们更加努力，<br /><span>让我们的用户保持简单</span></h3>
                                <i class="fa fa-quote-right"></i>
                            </div>
                            <div class="author">
                                <div class="image">
                                    <img src="/Recruit/frontend/one-page-parallax/assets/img/user-1.jpg" alt="Sean Ngu" />
                                </div>
                                <div class="info">
                                    刘硕
                                    <small>软件13-8班</small>
                                </div>
                            </div>
                        </div>
                        <!-- end about-author -->
                    </div>
                    <!-- end col-4 -->
                    <!-- begin col-4 -->
                    <div class="col-md-4 col-sm-12">
                        <h3>我们的绩效</h3>
                        <!-- begin skills -->
                        <div class="skills">
                            <div class="skills-name">2017年5月投递成功率</div>
                            <div class="progress progress-striped">
                                <div class="progress-bar progress-bar-success" style="width: 95%">
                                    <span class="progress-number">95%</span>
                                </div>
                            </div>
                            <div class="skills-name">2017年4月投递成功率</div>
                            <div class="progress progress-striped">
                                <div class="progress-bar progress-bar-success" style="width: 90%">
                                    <span class="progress-number">90%</span>
                                </div>
                            </div>
                            <div class="skills-name">2017年3月投递成功率</div>
                            <div class="progress progress-striped">
                                <div class="progress-bar progress-bar-success" style="width: 85%">
                                    <span class="progress-number">85%</span>
                                </div>
                            </div>
                            <div class="skills-name">2017年2月投递成功率</div>
                            <div class="progress progress-striped">
                                <div class="progress-bar progress-bar-success" style="width: 80%">
                                    <span class="progress-number">80%</span>
                                </div>
                            </div>
                        </div>
                        <!-- end skills -->
                    </div>
                    <!-- end col-4 -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- end #about -->
    
        <!-- begin #milestone -->
        
        <!-- end #milestone -->
        
        <!-- begin #team -->
        
        <!-- end #team -->
        
        <!-- begin #quote -->
        
        <!-- end #quote -->
        
        <!-- beign #service -->
        
        <!-- end #about -->
        
        <!-- beign #action-box -->
        
        <!-- end #action-box -->
        
        <!-- begin #work -->
        
        <!-- end #work -->
        
        <!-- begin #client -->
        
        <!-- end #client -->
        
        <!-- begin #pricing -->
        
        <!-- end #pricing -->
        
        <!-- begin #contact -->
        
        <!-- end #contact -->
        
        <!-- begin #footer -->
        <div id="footer" class="footer">
            <div class="container">
                <div class="footer-brand">
                    <div class="footer-brand-logo"></div>
                    埃森哲招聘
                </div>
                <p>
                    &copy; 刘硕  软件13-8班
                     <br />
                    辽宁工程技术大学
                </p>
                <p class="social-list">
                    <a ><i class="fa fa-facebook fa-fw"></i></a>
                    <a ><i class="fa fa-instagram fa-fw"></i></a>
                    <a ><i class="fa fa-twitter fa-fw"></i></a>
                    <a ><i class="fa fa-google-plus fa-fw"></i></a>
                    <a ><i class="fa fa-dribbble fa-fw"></i></a>
                </p>
            </div>
        </div>
        <!-- end #footer -->
        
        <!-- begin theme-panel -->
        <!-- end theme-panel -->
    </div>
    <!-- end #page-container -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="/Recruit/frontend/one-page-parallax/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="/Recruit/frontend/one-page-parallax/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="/Recruit/frontend/one-page-parallax/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!--[if lt IE 9]>
		<script src="/Recruit/frontend/one-page-parallax/assets/crossbrowserjs/html5shiv.js"></script>
		<script src="/Recruit/frontend/one-page-parallax/assets/crossbrowserjs/respond.min.js"></script>
		<script src="/Recruit/frontend/one-page-parallax/assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="/Recruit/frontend/one-page-parallax/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<script src="/Recruit/frontend/one-page-parallax/assets/plugins/scrollMonitor/scrollMonitor.js"></script>
	<script src="/Recruit/frontend/one-page-parallax/assets/js/apps.min.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
		});
	</script>
 
</body>
</html>