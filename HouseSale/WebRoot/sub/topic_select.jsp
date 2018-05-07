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
<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/pages/blog.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
<link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>



</head>

<body class="page-header-fixed page-full-width">
	
	
	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
							<h4 class="modal-title">Modal title</h4>
						</div>
						<div class="modal-body">
							 Widget settings form goes here
						</div>
						<div class="modal-footer">
							<button type="button" class="btn blue">Save changes</button>
							<button type="button" class="btn default" data-dismiss="modal">Close</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<!-- BEGIN STYLE CUSTOMIZER -->
			<div class="theme-panel hidden-xs hidden-sm">
				<div class="toggler">
				</div>
				<div class="toggler-close">
				</div>
				<div class="theme-options">
					<div class="theme-option theme-colors clearfix">
						<span>
							THEME COLOR
						</span>
						<ul>
							<li class="color-black current color-default" data-style="default">
							</li>
							<li class="color-blue" data-style="blue">
							</li>
							<li class="color-brown" data-style="brown">
							</li>
							<li class="color-purple" data-style="purple">
							</li>
							<li class="color-grey" data-style="grey">
							</li>
							<li class="color-white color-light" data-style="light">
							</li>
						</ul>
					</div>
					<div class="theme-option">
						<span>
							Layout
						</span>
						<select class="layout-option form-control input-small">
							<option value="fluid" selected="selected">Fluid</option>
							<option value="boxed">Boxed</option>
						</select>
					</div>
					<div class="theme-option">
						<span>
							Header
						</span>
						<select class="header-option form-control input-small">
							<option value="fixed" selected="selected">Fixed</option>
							<option value="default">Default</option>
						</select>
					</div>
					<div class="theme-option">
						<span>
							Sidebar
						</span>
						<select class="sidebar-option form-control input-small">
							<option value="fixed">Fixed</option>
							<option value="default" selected="selected">Default</option>
						</select>
					</div>
					<div class="theme-option">
						<span>
							Sidebar Position
						</span>
						<select class="sidebar-pos-option form-control input-small">
							<option value="left" selected="selected">Left</option>
							<option value="right">Right</option>
						</select>
					</div>
					<div class="theme-option">
						<span>
							Footer
						</span>
						<select class="footer-option form-control input-small">
							<option value="fixed">Fixed</option>
							<option value="default" selected="selected">Default</option>
						</select>
					</div>
				</div>
			</div>
			<!-- END STYLE CUSTOMIZER -->
			<!-- BEGIN PAGE HEADER-->
			<div class="row">
				<div class="col-md-12">
					<!-- BEGIN PAGE TITLE & BREADCRUMB-->
					<h3 class="page-title">
					阅览话题 <small>您可以自由发表言论</small>
					</h3>
					<ul class="page-breadcrumb breadcrumb">
						
						<li>
							<i class="fa fa-home"></i>
							<a href="index.html">主页</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">话题</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">话题查看</a>
						</li>
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-md-12 blog-page">
					<div class="row">
						<div class="col-md-9 article-block">
							<h3>${topic.title}</h3>
							<div class="blog-tag-data">
								<!-- 
								<img src="<c:if test="${topic.photo != null}">${topic.photo}</c:if><c:if test="${topic.photo == null}">assets/img/gallery/item_img.jpg</c:if>"  class="img-responsive" alt="">
								 --><div class="row">
									<div class="col-md-6">
										<ul class="list-inline blog-tags">
											<li>
												<i class="fa fa-tags"></i>
												<a href="#">养生</a>
												<a href="#">知识</a>
												<a href="#">健康</a>
											</li>
										</ul>
									</div>
									<div class="col-md-6 blog-tag-data-inner">
										<ul class="list-inline">
											<li>
												<i class="fa fa-calendar"></i><a href="#"><fmt:formatDate value="${topic.upTime}" type="date" dateStyle="long"/>
											<fmt:formatDate value="${topic.upTime}" type="time" timeStyle="short"/></a>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<!--end news-tag-data-->
							<div>
								${topic.content}
							</div>
							<hr>
							
							<c:forEach var="p" items="${allRe}">
							<!--end media-->
							<div class="media">
								<a href="#" class="pull-left">
								<img alt="" src="assets/img/hand.png" class="media-object">
								</a>
								<div class="media-body">
									<h4 class="media-heading">${p.name}
									<span>
										<fmt:formatDate value="${p.createTime}" type="date" dateStyle="long"/>
										<fmt:formatDate value="${p.createTime}" type="time" timeStyle="short"/>
									</span>
									</h4>
									<p>
										${p.remarks}
									</p>
								</div>
							</div>
							<hr>
							</c:forEach>
							
							
							<div class="post-comment">
								<h3>留言互动</h3>
								<form role="form" action="/HouseSale/topic/addRemark" method="post">
									<div class="form-group">
										<input name="userId" value="${userLoginFlag.userId}" type="hidden"/>
										<input name="topicId" value="${topic.id}" type="hidden" />
										<textarea class="col-md-10 form-control" rows="8" name="remarks"></textarea>
									</div>
									<button class="margin-top-20 btn blue" type="submit">发表评论</button>
								</form>
							</div>
						</div>
						<!--end col-md-9-->
						<div class="col-md-3 blog-sidebar">
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
								<div class="blog-twitter-block">
									<a href="">@keenthemes</a>
									<p>
										At vero eos et accusamus et iusto odio.
									</p>
									<a href="#"><em>http://t.co/sBav7dm</em></a>
									<span>
										8 hours ago
									</span>
									<i class="fa fa-twitter blog-twiiter-icon"></i>
								</div>
							</div>
						</div>
						<!--end col-md-3-->
					</div>
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

${message}
</script>
	
</body>
</html>
