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
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<!--Bootstrap Stylesheet [ REQUIRED ]-->
<link href="css/bootstrap.min.css" rel="stylesheet">


<!--Nifty Stylesheet [ REQUIRED ]-->
<link href="css/nifty.min.css" rel="stylesheet">


<!--Nifty Premium Icon [ DEMONSTRATION ]-->
<link href="css/demo/nifty-demo-icons.min.css" rel="stylesheet">


<!--Demo [ DEMONSTRATION ]-->
<link href="css/demo/nifty-demo.min.css" rel="stylesheet">



<!--Font Awesome [ OPTIONAL ]-->
<link href="plugins/magic-check/css/magic-check.min.css"
	rel="stylesheet">


<!--Bootstrap Validator [ OPTIONAL ]-->
<link href="plugins/bootstrap-validator/bootstrapValidator.min.css"
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


<!--Bootstrap Validator [ OPTIONAL ]-->
<script src="plugins/bootstrap-validator/bootstrapValidator.min.js"></script>


<!--Masked Input [ OPTIONAL ]-->
<script src="plugins/masked-input/jquery.maskedinput.min.js"></script>


<!--Form validation [ SAMPLE ]-->
<script src="js/demo/form-validation.js"></script>


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
				<!--Page Title-->
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<div id="page-title">
					<h1 class="page-header text-overflow">竞赛【${com.name}】的试题</h1>

				</div>
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<!--End page title-->



				<!--Page content-->
				<!--===================================================-->
				<div id="page-content">

					<div class="row">
						<div class="col-lg-12">

							<form id="demo-bv-accordion" class="form-horizontal" action="#"
								method="post">
								<div id="demo-accordion" class="panel-group accordion">
								
								
								<c:forEach var="p" items="${allEx}" varStatus="status" >
									<div class="panel">
									
										<!-- Accordion title -->
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-parent="#demo-accordion" data-toggle="collapse"
													href="#demo-acc-panel-${p.id}">第${status.count}题【${p.type}】</a>
											</h4>
											
										</div>
										
										<!-- Accordion content -->
										<div id="demo-acc-panel-${p.id}" class="panel-collapse collapse">
											<div class="panel-body">
											
												<div class="form-group">
													<label class="col-lg-3 control-label">题目ID</label>
													<div class="col-lg-7">
														<input type="text" class="form-control" value="${p.id}" readonly="readonly">
													</div>
												</div>
												
												<div class="form-group">
													<label class="col-lg-3 control-label">题目描述</label>
													<div class="col-lg-7">
														<div style="border: 1px;">${p.content}</div>
													</div>
												</div>
												
												<div class="form-group">
													<label class="col-lg-3 control-label">题目答案</label>
													<div class="col-lg-7">
														<input type="text" class="form-control" value="${p.ans}" readonly="readonly">
													</div>
												</div>
												
												<div class="form-group">
													<label class="col-lg-3 control-label">题目分值</label>
													<div class="col-lg-7">
														<input type="text" class="form-control" value="${p.score}" readonly="readonly">
													</div>
												</div>
												
												<div class="form-group">
													<label class="col-lg-3 control-label">操作</label>
													<div class="col-lg-7">
														<a target="right" class="btn btn-info" href="/CompetionRegistration/game/goToUpdateEx/${p.id}">修改此题</a>
														<a target="right" class="btn btn-info" href="/CompetionRegistration/game/delEx/${p.id}">删除此题</a>
													</div>
												</div>
												
												
											</div>
										</div>
									</div>
									</c:forEach>
									
									
									
									
									
									
									
									
									
									</div>
							</form>
							<!--===================================================-->
							<!-- END FORM VALIDATION ON ACCORDION -->



						</div>
					</div>



				</div>
				<!--===================================================-->
				<!--End page content-->



			</div>
		</div>
	</div>
	<script type="text/javascript">
	${message}
	</script>
</body>
</html>
