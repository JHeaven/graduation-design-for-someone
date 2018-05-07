<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<link href="css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">



<link
	href="css/plugins/aw
esome-bootstrap-checkbox/awesome-bootstrap-checkbox.css"
	rel="stylesheet">


<!--Summernote [ OPTIONAL ]-->
<link href="js/summernote/summernote.min.css" rel="stylesheet">


</head>

<body>
	<div id="page-wrapper" class="gray-bg">

		<div class="row wrapper border-bottom white-bg page-heading">
			<div class="col-lg-10">
				<h2>增加電影</h2>
				<ol class="breadcrumb">
					<li><a>主页</a></li>
					<li><a>增加電影</a></li>
				</ol>
			</div>
			<div class="col-lg-2"></div>
		</div>
		<div class="wrapper wrapper-content animated fadeInRight">


			<div class="row">
				<div class="col-lg-12">
					<div class="ibox float-e-margins">
						<div class="ibox-title">
							<h5>填写電影信息</h5>
							<div class="ibox-tools">
								<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
								</a> <a class="dropdown-toggle" data-toggle="dropdown" href="#">
									<i class="fa fa-wrench"></i>
								</a> <a class="close-link"> <i class="fa fa-times"></i>
								</a>
							</div>
						</div>
						<div class="ibox-content">
							<form method="post" class="form-horizontal"
								action="/FilmReview/film/doadd">


								<div class="form-group">
									<label class="col-sm-2 control-label">电影名称</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="title"
											value="">
									</div>
								</div>
								<div class="hr-line-dashed"></div>


								<div class="form-group">
									<label class="col-sm-2 control-label">电影评分</label>
									<div class="col-sm-10">
										<input type="float" class="form-control" name="score"
											value="">
									</div>
								</div>
								<div class="hr-line-dashed"></div>

								
								<div class="form-group">
									<label class="col-sm-2 control-label">电影标识</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="flagCon"
											value="">
									</div>
								</div>
								<div class="hr-line-dashed"></div>
								

								<div class="form-group">
									<label class="col-sm-2 control-label">内容描述</label>
									<div class="col-sm-10">
										<textarea class="summernote" id="contents" name="simpleSay" required></textarea>
									</div>
								</div>
								<div class="hr-line-dashed"></div>

								<div class="form-group">
									<div class="col-sm-4 col-sm-offset-2">
										<button class="btn btn-white" type="reset">重置</button>
										<button class="btn btn-primary" type="submit">保存</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer">
			<div class="pull-right">
				10GB of <strong>250GB</strong> Free.
			</div>
			<div>
				<strong>Copyright</strong> Example Company &copy; 2014-2017
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

	<!-- iCheck -->
	<script src="js/plugins/iCheck/icheck.min.js"></script>
	
	<!--Summernote [ OPTIONAL ]-->
<script src="js/summernote/summernote.js"></script>

<!--Summernote [ OPTIONAL ]-->
<script src="js/summernote/lang/summernote-zh-CN.js"></script>


	<script>
	$(document).ready(function() {
		$('.summernote').summernote({
			height : '230px',
			focus: true,
			lang: 'zh-CN'
		});
	});

        	${message}
        </script>
</body>
</html>
