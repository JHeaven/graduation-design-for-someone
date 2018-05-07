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

<link href="css/plugins/dataTables/datatables.min.css" rel="stylesheet">

<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

</head>

<body>
	<div id="page-wrapper" class="gray-bg">
		<div class="row border-bottom"></div>
		<div class="row wrapper border-bottom white-bg page-heading">
			<div class="col-lg-10">
				<h2>管理影评</h2>
				<ol class="breadcrumb">
					<li><a>主页</a></li>
					<li><a>管理影评</a></li>
				</ol>
			</div>
			<div class="col-lg-2"></div>
		</div>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="row">
				<div class="col-lg-12">
					<div class="ibox float-e-margins">
						<div class="ibox-title">
							<h5>所有的影评</h5>
							<div class="ibox-tools">
								<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
								</a> <a class="dropdown-toggle" data-toggle="dropdown" href="#">
									<i class="fa fa-wrench"></i>
								</a> <a class="close-link"> <i class="fa fa-times"></i>
								</a>
							</div>
						</div>
						<div class="ibox-content">
							<div class="table-responsive">
								<table
									class="table table-striped table-bordered table-hover dataTables-example">
									<thead>
										<tr>
											<th>ID</th>
											<th>用户名</th>
											<th>电影名</th>
											<th>封面</th>
											<th>内容</th>
											<th>点赞次数</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="p" items="${allRe}">
											<tr>
												<td>${p.id}</td>
												<td>${p.uName}</td>
												
												<td>${p.fTitle}</td>
												<td><img alt="图片未加载或电影不存在封面" src="${p.fPhoto}" height="100px"></td>
												<td>${p.content}</td>
												<td>${p.count}</td>
												<td>
													<a class="btn btn-warning"
													href="/FilmReview/re/deladmin/${p.id}" target="r"><i
														class="fa fa-warning"></i> <span class="bold">删除</span></a></td>

											</tr>
										</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<th>ID</th>
											<th>用户名</th>
											<th>电影名</th>
											<th>封面</th>
											<th>内容</th>
											<th>点赞次数</th>
											<th>操作</th>
										</tr>
									</tfoot>
								</table>
							</div>

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

	<script src="js/plugins/dataTables/datatables.min.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="js/inspinia.js"></script>
	<script src="js/plugins/pace/pace.min.js"></script>

	<!-- Page-Level Scripts -->
	<script>
		$(document).ready(function() {
			$('.dataTables-example').DataTable({
				pageLength : 25,
				responsive : true,
				dom : '<"html5buttons"B>lTfgitp',
				buttons : [
					{
						extend : 'copy'
					},
					{
						extend : 'csv'
					},
					{
						extend : 'excel',
						title : 'ExampleFile'
					},
					{
						extend : 'pdf',
						title : 'ExampleFile'
					},
	
					{
						extend : 'print',
						customize : function(win) {
							$(win.document.body).addClass('white-bg');
							$(win.document.body).css('font-size', '10px');
	
							$(win.document.body).find('table')
								.addClass('compact')
								.css('font-size', 'inherit');
						}
					}
				]
			});
	
		});
		
		${message}
	</script>

</body>
</html>
