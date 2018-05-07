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



<!--Switchery [ OPTIONAL ]-->
<link href="plugins/switchery/switchery.min.css" rel="stylesheet">


<!--Bootstrap Select [ OPTIONAL ]-->
<link href="plugins/bootstrap-select/bootstrap-select.min.css"
	rel="stylesheet">


<!--Bootstrap Tags Input [ OPTIONAL ]-->
<link href="plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.css"
	rel="stylesheet">


<!--Chosen [ OPTIONAL ]-->
<link href="plugins/chosen/chosen.min.css" rel="stylesheet">

<!--Bootstrap Timepicker [ OPTIONAL ]-->
<link href="plugins/bootstrap-timepicker/bootstrap-timepicker.min.css"
	rel="stylesheet">


<!--Bootstrap Datepicker [ OPTIONAL ]-->
<link href="plugins/bootstrap-datepicker/bootstrap-datepicker.min.css"
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
<script src="js/demo/nifty-demo.min.js"></script>


<!--Switchery [ OPTIONAL ]-->
<script src="plugins/switchery/switchery.min.js"></script>


<!--Bootstrap Select [ OPTIONAL ]-->
<script src="plugins/bootstrap-select/bootstrap-select.min.js"></script>


<!--Bootstrap Tags Input [ OPTIONAL ]-->
<script src="plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>


<!--Chosen [ OPTIONAL ]-->
<script src="plugins/chosen/chosen.jquery.min.js"></script>


<!--Bootstrap Timepicker [ OPTIONAL ]-->
<script src="plugins/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>


<!--Bootstrap Datepicker [ OPTIONAL ]-->
<script src="plugins/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>



<style type="text/css">
body {
	font-family: "Verdana", "Hiragino Sans GB", "Microsoft YaHei",
		"WenQuanYi Micro Hei", sans-serif;
}
</style>
</head>

<body>
	<div id="container" class="effect aside-float aside-bright mainnav-lg">

		<!--NAVBAR-->
		<!--===================================================-->

		<div class="boxed">

			<!--CONTENT CONTAINER-->
			<!--===================================================-->
			<div id="content-container">

				<!--Page Title-->
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<div id="page-title">
					<h1 class="page-header text-overflow">修改竞赛</h1>


				</div>

				<!--Page content-->
				<!--===================================================-->
				<div id="page-content">

					<div class="row">

						<div class="col-sm-12">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">请填写相应内容</h3>
								</div>

								<!--Horizontal Form-->
								<!--===================================================-->
								<form id="myform" class="form-horizontal" method="post"
									action="/CompetionRegistration/game/doUpdateCompetion">
									<div class="panel-body">

										<div class="form-group">
											<label class="col-sm-3 control-label"
												for="demo-hor-inputemail2">ID</label>
											<div class="col-sm-9">
												<input type="text" id="demo-hor-inputemail2"
													class="form-control" name="id" value="${com.id}"
													required="required" readonly="readonly">
											</div>
										</div>


										<div class="form-group">
											<label class="col-sm-3 control-label"
												for="demo-hor-inputemail2">名称</label>
											<div class="col-sm-9">
												<input type="text" id="demo-hor-inputemail2"
													class="form-control" name="name" value="${com.name}"
													required="required">
											</div>
										</div>

										<div class="form-group">
											<label class="col-sm-3 control-label"
												for="demo-hor-inputemail2">描述</label>
											<div class="col-sm-9">
												<textarea rows="8" id="demo-hor-inputemail2"
													class="form-control" name="ps" required="required">${com.ps}</textarea>
											</div>
										</div>



										<div class="form-group">
											<label class="col-sm-3 control-label"
												for="demo-hor-inputemail4">竞赛开始时间</label>
											<div class="col-sm-9">
												<input type="datetime-local" id="demo-hor-inputemail4"
													class="form-control" name="fromTime" required="required"
													value="<fmt:formatDate value="${com.fromTime}" type="both" pattern="yyyy-MM-dd"/>T<fmt:formatDate value="${com.fromTime}" type="both" pattern="HH:mm"/>">
											</div>
										</div>



										<div class="form-group">
											<label class="col-sm-3 control-label"
												for="demo-hor-inputemail5">竞赛结束时间</label>
											<div class="col-sm-9">
												<input type="datetime-local" id="demo-hor-inputemail5"
													class="form-control" name="toTime" required="required"
													value="<fmt:formatDate value="${com.toTime}" type="both" pattern="yyyy-MM-dd"/>T<fmt:formatDate value="${com.toTime}" type="both" pattern="HH:mm"/>">
											</div>
										</div>






									</div>

									<div class="panel-footer text-right">
										<button class="btn btn-success" type="submit">修改竞赛</button>
									</div>
								</form>
								<!--===================================================-->
								<!--End Horizontal Form-->

							</div>
						</div>
					</div>




				</div>
				<!--===================================================-->
				<!--End page content-->


			</div>
			<!--===================================================-->
			<!--END CONTENT CONTAINER-->


		</div>

	</div>
	<!--===================================================-->
	<!-- END OF CONTAINER -->
	<script type="text/javascript">
    ${message}
    </script>
</body>
</html>
