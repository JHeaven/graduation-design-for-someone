<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">

<!-- Toastr style -->
<link href="css/plugins/toastr/toastr.min.css" rel="stylesheet">

<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">


</head>

<body id="page-top" class="landing-page no-skin-config">
	<div id="" class="">

		<div class="row wrapper border-bottom white-bg page-heading">
			<div class="col-lg-10">
				<h2>电影详情</h2>
				<ol class="breadcrumb">
					<li><a href="index.html">主页</a></li>
					<li><a>电影</a></li>
				</ol>
			</div>
			<div class="col-lg-2"></div>
		</div>

		<div class="wrapper wrapper-content  animated fadeInRight article">
			<div class="row">
				<div class="col-lg-10 col-lg-offset-1">
					<div class="ibox">
						<div class="ibox-content">
							<div class="pull-right">
								<button class="btn btn-white btn-xs" type="button">科幻</button>
								<button class="btn btn-white btn-xs" type="button">悬疑</button>
								<button class="btn btn-white btn-xs" type="button">喜剧</button>
							</div>
							<div class="text-center article-title">
								<span class="text-muted"><i class="fa fa-clock-o"></i>
									电影得分：${film.score}</span>
								<h1>${film.title}</h1>
							</div>

							${film.simpleSay}


							<hr>
							<div class="row">
								<div class="col-md-6">
									<h5></h5>
									<button type="button" class="btn btn-primary"
										data-toggle="modal" data-target="#myModal2">我要发表影评</button>
									</div>
								</div>
							<br>
                            <div class="row">
                                <div class="col-lg-12">

                                    <h2>影评:</h2>
                                    
                                    <c:forEach var="p" items="${allRe}">
                                    <div class="social-feed-box">
                                        <div class="social-avatar">
                                            <a href="/FilmReview/re/click/${p.id}" class="pull-left">
                                                <button class="btn btn-danger  dim " type="button"><i class="fa fa-heart"></i></button>
                                            </a>
                                            <c:if test="${p.uId == userLoginFlag.id}">
                                            <a href="/FilmReview/re/del/${p.id}" class="pull-left">
                                                <button class="btn btn-warning  dim" type="button"><i class="fa fa-warning"></i></button>
                                            </a>
                                            </c:if>
                                            <div class="media-body">
                                                <a href="#">
                                                    ${p.uName}
                                                </a>
                                                <small class="text-muted">有<span style="color:red; ">${p.count}</span>个人觉得很赞</small>
                                            </div>
                                        </div>
                                        <div class="social-body">
                                            <p>
                                                ${p.content}
                                            </p>
                                        </div>
                                    </div>
                                    </c:forEach>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>


        </div>

        </div>
        </div>

	<div class="modal inmodal" id="myModal2" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
		<form role="form" method="post" action="/FilmReview/re/doadd">
			<div class="modal-content animated flipInY">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">您可以在此发表你的影评</h4>
				</div>
				<div class="modal-body">
					
						<div class="form-group">
							<label>电影ID</label> <input type="number" placeholder="" value="${film.id}"
								class="form-control" name="fId" readonly="readonly">
								
								<input type="hidden" placeholder="" value="${film.title}"
								class="form-control" name="fTitle">
								
								<input type="hidden" placeholder="" value="${userLoginFlag.id}"
								class="form-control" name="uId">
								
								<input type="hidden" placeholder="" value="${userLoginFlag.nickName}"
								class="form-control" name="uName">
								
						</div>
						
						<div class="form-group">
							<label>请打分(0-10分)</label> <input type="number" placeholder="請打分"
								class="form-control" name="score">
						</div>
						<div class="form-group">
							<label>影评</label>
							<textarea placeholder="请写下你的影评" class="form-control" rows="6" name="content"> </textarea>
						</div>
					

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
					<button type="submit" class="btn btn-primary">发表</button>
				</div>
				</form>
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
</body>
</html>
