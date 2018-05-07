<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/plugins/slick/slick.css" rel="stylesheet">
<link href="css/plugins/slick/slick-theme.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

</head>

<body id="page-top" class="landing-page no-skin-config">

	<div id="wrapper">


		<div style="margin: 20px;">

			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-10">
					<h2>近期影訊</h2>
					<ol class="breadcrumb">
						<li><a>主页</a></li>
						<li><a>近期影讯</a></li>
					</ol>
				</div>
				<div class="col-lg-2"></div>
			</div>
			<div class="wrapper wrapper-content">

				<div class="row">
					<div class="col-lg-10 col-lg-offset-1">
						<div class="ibox">
							<div class="slick_demo_1">

								<div>
									<img alt="" src="/FilmReview/img/04.jpg" width="100%">
								</div>
								<div>
									<img alt="" src="/FilmReview/img/05.jpg" width="100%">
								</div>
								<div>
									<img alt="" src="/FilmReview/img/06.jpg" width="100%">
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-10 col-lg-offset-1">


						<h4 class="text-center m">一大波电影即将上映...</h4>



						<div class="slick_demo_2">

							<c:forEach var="p" items="${allNews}">

								<div class="panel panel-default"
									style="width: 90%;height: 800px;">
									
										<div class="panel-heading">${p.title}</div>
										<div class="panel-body">
											<p>${p.content}</p>
										</div>
								</div>
							</c:forEach>

						</div>
					</div>
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
	<script src="js/inspinia.js"></script>
	<script src="js/plugins/pace/pace.min.js"></script>

	<!-- slick carousel-->
	<script src="js/plugins/slick/slick.min.js"></script>

	<!-- Additional style only for demo purpose -->
	<style>
.slick_demo_2 .ibox-content {
	margin: 0 10px;
}
</style>

	<script>
		$(document).ready(function() {
	
	
			$('.slick_demo_1').slick({
				dots : true
			});
	
			$('.slick_demo_2').slick({
				infinite : true,
				slidesToShow : 3,
				slidesToScroll : 1,
				centerMode : true,
				responsive : [
					{
						breakpoint : 1024,
						settings : {
							slidesToShow : 3,
							slidesToScroll : 3,
							infinite : true,
							dots : true
						}
					},
					{
						breakpoint : 600,
						settings : {
							slidesToShow : 2,
							slidesToScroll : 2
						}
					},
					{
						breakpoint : 480,
						settings : {
							slidesToShow : 1,
							slidesToScroll : 1
						}
					}
				]
			});
	
			$('.slick_demo_3').slick({
				infinite : true,
				speed : 500,
				fade : true,
				cssEase : 'linear',
				adaptiveHeight : true
			});
		});
	</script>

</body>

</html>
