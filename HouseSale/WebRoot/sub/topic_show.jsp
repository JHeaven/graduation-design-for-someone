<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">


<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta name="MobileOptimized" content="320">

<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets/plugins/uniform/css/uniform.default.css"
	rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="assets/css/style-metronic.css" rel="stylesheet"
	type="text/css" />
<link href="assets/css/style.css" rel="stylesheet" type="text/css" />
<link href="assets/css/style-responsive.css" rel="stylesheet"
	type="text/css" />
<link href="assets/css/plugins.css" rel="stylesheet" type="text/css" />
<link href="assets/css/pages/blog.css" rel="stylesheet" type="text/css" />
<link href="assets/css/themes/default.css" rel="stylesheet"
	type="text/css" id="style_color" />
<link href="assets/css/custom.css" rel="stylesheet" type="text/css" />
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico" />




</head>

<body class="page-header-fixed page-full-width">




	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<!-- /.modal -->
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<!-- BEGIN STYLE CUSTOMIZER -->

			<!-- END STYLE CUSTOMIZER -->
			<!-- BEGIN PAGE HEADER-->
			<div class="row">
				<div class="col-md-12">
					<!-- BEGIN PAGE TITLE & BREADCRUMB-->
					<h3 class="page-title">
					房屋供需专题 <small>您可以发布各种房屋供需信息</small>
					</h3>
					<ul class="page-breadcrumb breadcrumb">
						<li class="btn-group"><a type="button"
							class="btn blue dropdown-toggle"
							href="/HouseSale/topic/goToAdd" target="r"
							style="color: white;"> <span> 发布信息 </span>
						</a></li>
						<li><i class="fa fa-home"></i> <a href="index.html">主页</a> <i
							class="fa fa-angle-right"></i></li>
						<li><a href="#">供需专题</a> <i class="fa fa-angle-right"></i></li>
						<li><a>所有信息</a></li>
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-md-12 blog-page">
					<div class="row">
						<div class="col-md-9 col-sm-8 article-block">
							<h1>信息汇总</h1>

							<c:forEach var="p" items="${allTopic}">
							<div class="row">
								<div class="col-md-4 blog-img blog-tag-data">
									<img src="<c:if test="${p.photo != null}">${p.photo}</c:if><c:if test="${p.photo == null}">assets/img/gallery/image5.jpg</c:if>" alt="" class="img-responsive">
									<ul class="list-inline">
										<li>
											<i class="fa fa-calendar"></i>
											<fmt:formatDate value="${p.upTime}" type="date" dateStyle="long"/>
											<fmt:formatDate value="${p.upTime}" type="time" timeStyle="short"/>
										</li>
									</ul>
									
									<ul class="list-inline blog-tags">
										<li>
											<i class="fa fa-tags"></i>
											<a href="#">房屋</a>
											<a href="#">销售</a>
											<a href="#">求购</a>
										</li>
									</ul>
								</div>
								<div class="col-md-8 blog-article">
									<h3>${p.title}</h3>
									<p>
										${p.content}
									</p>
									<a class="btn blue" href="/HouseSale/topic/select/${p.id}" target="r">
									查看全文(${p.count})
									 <i class="m-icon-swapright m-icon-white"></i>
									</a>
								</div>
							</div>
							<hr>
							</c:forEach>
							
							
							
						</div> 
						
						<!--end col-md-9-->
						
						<div class="col-md-3 col-sm-4 blog-sidebar">
							<h3>热门话题</h3>
							<div class="top-news">
								<a href="#" class="btn red">
								<span>
									${topTopic[0].title}
								</span>
								<em>发布于：<fmt:formatDate value="${topTopic[0].upTime}" type="date" dateStyle="long"/>
											<fmt:formatDate value="${topTopic[0].upTime}" type="time" timeStyle="short"/></em>
								<em>
								<i class="fa fa-tags"></i>
								${topTopic[0].content} </em>
								<i class="fa fa-briefcase top-news-icon"></i>
								</a>
								<a href="#" class="btn green">
								<span>
									${topTopic[1].title}
								</span>
								<em>发布于：<fmt:formatDate value="${topTopic[1].upTime}" type="date" dateStyle="long"/>
											<fmt:formatDate value="${topTopic[1].upTime}" type="time" timeStyle="short"/></em>
								<em>
								<i class="fa fa-tags"></i>
								${topTopic[1].content} </em>
								<i class="fa fa-music top-news-icon"></i>
								</a>
								<a href="#" class="btn blue">
								<span>
									${topTopic[2].title}
								</span>
								<em>发布于：<fmt:formatDate value="${topTopic[2].upTime}" type="date" dateStyle="long"/>
											<fmt:formatDate value="${topTopic[2].upTime}" type="time" timeStyle="short"/></em>
								<em>
								<i class="fa fa-tags"></i>
								${topTopic[2].content} </em>
								<i class="fa fa-globe top-news-icon"></i>
								</a>
								<a href="#" class="btn yellow">
								<span>
									${topTopic[3].title}
								</span>
								<em>发布于：<fmt:formatDate value="${topTopic[3].upTime}" type="date" dateStyle="long"/>
											<fmt:formatDate value="${topTopic[3].upTime}" type="time" timeStyle="short"/></em>
								<em>
								<i class="fa fa-tags"></i>
								${topTopic[3].content} </em>
								<i class="fa fa-book top-news-icon"></i>
								</a>
								<a href="#" class="btn purple">
								<span>
									${topTopic[4].title}
								</span>
								<em>发布于：<fmt:formatDate value="${topTopic[4].upTime}" type="date" dateStyle="long"/>
											<fmt:formatDate value="${topTopic[4].upTime}" type="time" timeStyle="short"/></em>
								<em>
								<i class="fa fa-tags"></i>
								${topTopic[4].content} </em>
								<i class="fa fa-bolt top-news-icon"></i>
								</a>
							</div>
							<div class="space20">
							</div>
							<h3>热门图片</h3>
							<ul class="list-inline blog-images">
								<li>
									<a class="fancybox-button" data-rel="fancybox-button" title="390 x 220 - keenthemes.com" href="assets/img/blog/1.jpg">
									<img alt="" src="assets/img/blog/1.jpg">
									</a>
								</li>
								<li>
									<a href="#"><img alt="" src="assets/img/blog/2.jpg"></a>
								</li>
								<li>
									<a href="#"><img alt="" src="assets/img/blog/3.jpg"></a>
								</li>
								<li>
									<a href="#"><img alt="" src="assets/img/blog/4.jpg"></a>
								</li>
								<li>
									<a href="#"><img alt="" src="assets/img/blog/5.jpg"></a>
								</li>
								<li>
									<a href="#"><img alt="" src="assets/img/blog/6.jpg"></a>
								</li>
								<li>
									<a href="#"><img alt="" src="assets/img/blog/8.jpg"></a>
								</li>
								<li>
									<a href="#"><img alt="" src="assets/img/blog/10.jpg"></a>
								</li>
								<li>
									<a href="#"><img alt="" src="assets/img/blog/11.jpg"></a>
								</li>
								<li>
									<a href="#"><img alt="" src="assets/img/blog/1.jpg"></a>
								</li>
								<li>
									<a href="#"><img alt="" src="assets/img/blog/2.jpg"></a>
								</li>
								<li>
									<a href="#"><img alt="" src="assets/img/blog/7.jpg"></a>
								</li>
							</ul>
							<div class="space20">
							</div>
							<div class="space20">
							</div>
							<h3>最近活跃用户</h3>
							<div class="blog-twitter">
								<div class="blog-twitter-block">
									<a href="">@keenthemes</a>
									<p>
										At vero eos et accusamus et iusto odio.
									</p>
									<a href="#"><em>http://t.co/sBav7dm</em></a>
									<span>
										2 hours ago
									</span>
									<i class="fa fa-twitter blog-twiiter-icon"></i>
								</div>
								<div class="blog-twitter-block">
									<a href="">@keenthemes</a>
									<p>
										At vero eos et accusamus et iusto odio.
									</p>
									<a href="#"><em>http://t.co/sBav7dm</em></a>
									<span>
										5 hours ago
									</span>
									<i class="fa fa-twitter blog-twiiter-icon"></i>
								</div>
								<div class="blog-twitter-block">
									<a href="">@keenthemes</a>
									<p>
										At vero eos et accusamus et iusto odio.
									</p>
									<a href="#"><em>http://t.co/sBav7dm</em></a>
									<span>
										7 hours ago
									</span>
									<i class="fa fa-twitter blog-twiiter-icon"></i>
								</div>
							</div>
						</div>
						<!--end col-md-3-->
					</div>
					<ul class="pagination pull-right">
						<li>
							<a href="/HouseSale/topic/showTopic/1" target="r">首页</a>
						</li>
						<li>
							<a href="/HouseSale/topic/showTopic/${pageNo-1}" target="r"><i class="fa fa-angle-left"></i></a>
						</li>
						<li>
							<a href="/HouseSale/topic/showTopic/${pageNo+1}" target="r"><i class="fa fa-angle-right"></i></a>
						</li>
						<li>
							<a href="/HouseSale/topic/showTopic/${pageSum}" target="r">尾页</a>
						</li>
					</ul>
				</div>
			</div>
			<!-- END PAGE CONTENT-->
		</div>
	</div>
	<!-- END CONTENT -->
	<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="assets/plugins/respond.min.js"></script>
<script src="assets/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<script src="assets/scripts/app.js"></script>
<script>
jQuery(document).ready(function() {    
   App.init();
});
</script>
	
	
	
	
	
	<script type="text/javascript">
	${message}
	</script>
</body>
</html>
