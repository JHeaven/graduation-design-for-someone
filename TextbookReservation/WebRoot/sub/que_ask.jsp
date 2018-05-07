<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


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



<!--Summernote [ OPTIONAL ]-->
<link href="plugins/summernote/summernote.min.css" rel="stylesheet">



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
<script src="js/nifty.js"></script>






<!--=================================================-->

<!--Demo script [ DEMONSTRATION ]-->
<script src="js/demo/nifty-demo.js"></script>


<!--Summernote [ OPTIONAL ]-->
<script src="plugins/summernote/summernote.js"></script>



<!--Summernote [ OPTIONAL ]-->
<script src="plugins/summernote/lang/summernote-zh-CN.js"></script>

<style type="text/css">
body {
	font-family: "Verdana", "Hiragino Sans GB", "Microsoft YaHei",
		"WenQuanYi Micro Hei", sans-serif;
}
</style>
</head>

<body>
	<div id="container" class="effect aside-float aside-bright mainnav-lg">
		<div class="boxed">
			<div id="content-container">
				<form action="/TextbookReservation/que/doAddQue" method="post">
					<!--Page Title-->
					<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
					<div id="page-title">
						<h1 class="page-header text-overflow">发表疑问</h1>

					</div>
					<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
					<!--End page title-->


					<!--Page content-->
					<!--===================================================-->
					<div id="page-content">

						<div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">请描述问题</h3>
							</div>
							<div class="panel-body">

								<!--Summernote-->
								<!--===================================================-->
								<textarea class="summernote" id="contents" name="ask"></textarea>

								<!--===================================================-->
								<!-- End Summernote -->

							</div>
						</div>






						<div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">提交</h3>
							</div>

							<!--Horizontal Form-->
							<!--===================================================-->
							<input type="text" name="askId" value="${userLoginFlag.id}"
								readonly="readonly" hidden="hidden">
							<div class="panel-body">

								<div class="form-group">
									<button class="btn btn-success" type="submit">提交</button>
								</div>
							</div>
							<!--===================================================-->
							<!--End Horizontal Form-->

						</div>

					</div>
					<!--===================================================-->
					<!--End page content-->


				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.summernote').summernote({
				height : '230px',
				focus: true,
				lang: 'zh-CN'
			});
			
			/* $('form').on('submit', function (e) {
		        e.preventDefault();
		        alert($('.summernote').summernote('code'));
		        alert($('.summernote').val());
		      }); */
		});
		
		${message}
	</script>
</body>
</html>
