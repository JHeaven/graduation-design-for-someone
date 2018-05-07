<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			<form action="/CompetionRegistration/game/doUpdateEx" method="post">
				<!--Page Title-->
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<div id="page-title">
					<h1 class="page-header text-overflow">为竞赛【${com.name}】 修改题目</h1>

				</div>
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<!--End page title-->


				<!--Page content-->
				<!--===================================================-->
				<div id="page-content">

					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">请输入题目描述</h3>
						</div>
						<div class="panel-body">

							<!--Summernote-->
							<!--===================================================-->
							<textarea class="summernote" id="contents" name="content">${ex.content}</textarea>
							
							<!--===================================================-->
							<!-- End Summernote -->

						</div>
					</div>


					<div class="row">
						<div class="col-sm-4">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">题目答案(【选择题】请填写此处)</h3>
								</div>

								<!--Horizontal Form-->
								<!--===================================================-->
								<div class="panel-body">
									<div class="form-group">
										<label class="col-sm-3 control-label"></label>
										<div class="col-sm-9">
											<div class="radio">
												<input id="demo-form-radio1" class="magic-radio"
													type="radio" name="ans" value="A" <c:if test="${ex.ans=='A,'}">checked</c:if>>
												<label
													for="demo-form-radio1">选项A正确</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label"></label>
										<div class="col-sm-9">
											<div class="radio">
												<input id="demo-form-radio2" class="magic-radio"
													type="radio" name="ans" value="B" <c:if test="${ex.ans=='B,'}">checked</c:if>> <label
													for="demo-form-radio2">选项B正确</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label"></label>
										<div class="col-sm-9">
											<div class="radio">
												<input id="demo-form-radio3" class="magic-radio"
													type="radio" name="ans" value="C" <c:if test="${ex.ans=='C,'}">checked</c:if>> <label
													for="demo-form-radio3">选项C正确</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label"></label>
										<div class="col-sm-9">
											<div class="radio">
												<input id="demo-form-radio4" class="magic-radio"
													type="radio" name="ans" value="D" <c:if test="${ex.ans=='D,'}">checked</c:if>> <label
													for="demo-form-radio4">选项D正确</label>
											</div>
										</div>
									</div>

								</div>

								<!--===================================================-->
								<!--End Horizontal Form-->

							</div>
						</div>
						<div class="col-sm-4">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">题目答案(【填空题】请填写此处)</h3>
								</div>

								<!--Horizontal Form-->
								<!--===================================================-->
								<div class="panel-body">
									<div class="form-group">
										<label class="col-sm-3 control-label"
											for="demo-hor-inputemail">答案</label>
										<div class="col-sm-9">
											<input type="text" placeholder="" id="demo-hor-inputemail" value="<c:if test="${ex.ans!='A,' && ex.ans!='B,' && ex.ans!='C,' && ex.ans!='D,' && ex.ans!=',Y' && ex.ans!=',N' }">${ex.ans}</c:if>"
												class="form-control" name="ans">
										</div>
									</div>
								</div>

								<!--===================================================-->
								<!--End Horizontal Form-->

							</div>
						</div>
						<div class="col-sm-4">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">题目答案(【判断题】请填写此处)</h3>
								</div>

								<!--Horizontal Form-->
								<!--===================================================-->
								<div class="panel-body">
									<div class="form-group">
										<label class="col-sm-3 control-label"></label>
										<div class="col-sm-9">
											<div class="radio">
												<input id="demo-form-radio5" class="magic-radio"
													type="radio" name="ans"  value="Y" <c:if test="${ex.ans==',Y'}">checked</c:if>> <label
													for="demo-form-radio5">正确</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label"></label>
										<div class="col-sm-9">
											<div class="radio">
												<input id="demo-form-radio6" class="magic-radio"
													type="radio" name="ans"  value="N" <c:if test="${ex.ans==',N'}">checked</c:if>> <label
													for="demo-form-radio6">错误</label>
											</div>
										</div>
									</div>
								</div>
								<!--===================================================-->
								<!--End Horizontal Form-->

							</div>
						</div>
					</div>


				
				
				<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">提交修改</h3>
								</div>

								<!--Horizontal Form-->
								<!--===================================================-->
								<input type="text" name="belong" value="${com.id}" readonly="readonly" hidden="hidden">
								<input type="text" name="id" value="${ex.id}" readonly="readonly" hidden="hidden">
								<div class="panel-body">
								
									<div class="form-group">
										<label class="col-sm-3 control-label"
											for="demo-hor-inputemail">分值</label>
										<div class="col-sm-9">
											<input type="number" placeholder="" id="demo-hor-inputemail" value="${ex.score}"
												class="form-control" name="score">
										</div>
									</div>
									<div class="form-group">
										<button class="btn btn-success" type="submit">提交修改</button>
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
