<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	<meta http-equiv="expires" content="0">    
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap core CSS -->
    <link href="/FilmReview/css/bootstrap.min.css" rel="stylesheet">

    <!-- Animation CSS -->
    <link href="/FilmReview/css/animate.css" rel="stylesheet">
    <link href="/FilmReview/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/FilmReview/css/style.css" rel="stylesheet">
  </head>
  
  <body id="page-top" class="landing-page no-skin-config">

<div id="inSlider" class="carousel carousel-fade" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#inSlider" data-slide-to="0" class="active"></li>
        <li data-target="#inSlider" data-slide-to="1"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <div class="container">
                <div class="carousel-caption">
                    <h1><br>你好，<c:if test="${userLoginFlag.loginName != null}">${userLoginFlag.nickName}</c:if><c:if test="${userLoginFlag.loginName == null}">游客</c:if><br/>
                       欢迎您使用我们的C+影评<br/>
                        我们将诚挚的为您服务！</h1>
                    <p>
                        <a class="btn btn-lg btn-primary" href="/FilmReview/film/showNext/1" role="button" target="r">马上开始</a>
                    </p>
                </div>
                <div class="carousel-image wow zoomIn">
                    
                </div>
            </div>
            <!-- Set background for slide in css -->
            <div class="header-back one"></div>

        </div>
        <div class="item">
            <div class="container">
                <div class="carousel-caption blank">
                    <h1>在这里您可以自由的发表看法<br/> 找到志同道合的朋友.</h1>
                    <p>
                        <a class="btn btn-lg btn-primary" href="/FilmReview/film/showNext/1" role="button" target="r">马上开始</a>
                    </p>
                </div>
            </div>
            <!-- Set background for slide in css -->
            <div class="header-back two"></div>
        </div>
    </div>
    <a class="left carousel-control" href="#inSlider" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#inSlider" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>


<section id="features" class="container services">
    <div class="row">
        <div class="col-sm-3">
            <h2>《半生缘》</h2>
            <p>我要你知道，在这个世界上，总有一个人是会永远等着你的。无论什么时候，无论在什么地方，总会有这么一个人。</p>
        </div>
        <div class="col-sm-3">
            <h2>《纵横四海》</h2>
            <p>其实爱一个人并不是要跟她一辈子的。我喜欢花，难道你摘下来让我闻；我喜欢风，难道你让风停下来；我喜欢云，难道你就让云罩着我；我喜欢海，难道我就去跳海？</p>
        </div>
        <div class="col-sm-3">
            <h2>《东邪西毒》</h2>
            <p>我曾听人说过，当你不能够再拥有，你唯一可以做的，就是令自己不要忘记。</p>
        </div>
        <div class="col-sm-3">
            <h2>《红玫瑰与白玫瑰》</h2>
            <p>每一个男子都有过这样的两个女人,至少两个。娶了红玫瑰,久而久之,红的变了墙上的一抹蚊子血,白的还是床前明月光。娶了白玫瑰,白的便是衣服上的一粒饭粘子,红的却是心口上的一颗朱砂痣。</p>
        </div>
    </div>
</section>

<section  class="container features">
    <div class="row">
        <div class="col-lg-12 text-center">
            <div class="navy-line"></div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3 text-center wow fadeInLeft">
            <div>
                <i class="fa fa-mobile features-icon"></i>
                <h2>《阿飞正传》</h2>
                <p>我这一辈子不知道还会喜欢多少个女人,不到最后我也不知道会喜欢哪一个。</p>
            </div>
            <div class="m-t-lg">
                <i class="fa fa-bar-chart features-icon"></i>
                <h2>《泰坦尼克号》</h2>
                <p>我甚至连他的一张照片都没有。他只活在我的记忆里。</p>
            </div>
        </div>
        <div class="col-md-6 text-center  wow zoomIn">
            <img src="img/00.jpg" alt="dashboard" class="img-responsive">
        </div>
        <div class="col-md-3 text-center wow fadeInRight">
            <div>
                <i class="fa fa-envelope features-icon"></i>
                <h2>《甜蜜蜜》</h2>
                <p>傻丫头，回去泡个热水澡，睡个好觉，明天早上起来满街都是男人，个个都比豹哥好。</p>
            </div>
            <div class="m-t-lg">
                <i class="fa fa-google features-icon"></i>
                <h2>《喜剧之王》</h2>
                <p>我们现在是谈生意，不是谈恋爱。</p>
            </div>
        </div>
    </div>
    
    
</section>











<!-- Mainly scripts -->
<script src="/FilmReview/js/jquery-3.1.1.min.js"></script>
<script src="/FilmReview/js/bootstrap.min.js"></script>
<script src="/FilmReview/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="/FilmReview/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="/FilmReview/js/inspinia.js"></script>
<script src="/FilmReview/js/plugins/pace/pace.min.js"></script>
<script src="/FilmReview/js/plugins/wow/wow.min.js"></script>


<script>

	$(document).ready(function() {

		$('body').scrollspy({
			target : '.navbar-fixed-top',
			offset : 80
		});

		// Page scrolling feature
		$('a.page-scroll').bind('click', function(event) {
			var link = $(this);
			$('html, body').stop().animate({
				scrollTop : $(link.attr('href')).offset().top - 50
			}, 500);
			event.preventDefault();
			$("#navbar").collapse('hide');
		});
	});

	var cbpAnimatedHeader = (function() {
		var docElem = document.documentElement,
			header = document.querySelector('.navbar-default'),
			didScroll = false,
			changeHeaderOn = 200;
		function init() {
			window.addEventListener('scroll', function(event) {
				if (!didScroll) {
					didScroll = true;
					setTimeout(scrollPage, 250);
				}
			}, false);
		}
		function scrollPage() {
			var sy = scrollY();
			if (sy >= changeHeaderOn) {
				$(header).addClass('navbar-scroll')
			} else {
				$(header).removeClass('navbar-scroll')
			}
			didScroll = false;
		}
		function scrollY() {
			return window.pageYOffset || docElem.scrollTop;
		}
		init();

	})();

	// Activate WOW.js plugin for animation on scrol
	new WOW().init();
</script>

</body>

</html>
