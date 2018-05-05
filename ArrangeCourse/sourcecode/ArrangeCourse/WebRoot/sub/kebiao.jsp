<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


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
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/style.default.css" rel="stylesheet">
<link href="css/jquery.gritter.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->

</head>

<body>
	<div class="pageheader">
		<div class="media">
			<div class="pageicon pull-left">
				<i class="fa fa-bell"></i>
			</div>
			<div class="media-body">
				<ul class="breadcrumb">
					<li><a href=""><i class="glyphicon glyphicon-home"></i></a></li>
					<li><a href="alerts.html">查看课表</a></li>
					<li>查看</li>
				</ul>
				<h4>查看课表</h4>
			</div>
		</div>
		<!-- media -->
	</div>
	<!-- pageheader -->

	<div class="contentpanel">


		<!-- panel -->
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="panel-btns">
							<a href="" class="panel-minimize tooltips" data-toggle="tooltip"
								title="Minimize Panel"><i class="fa fa-minus"></i></a> <a
								href="" class="panel-close tooltips" data-toggle="tooltip"
								title="Close Panel"><i class="fa fa-times"></i></a>
						</div>
						<!-- panel-btns -->
						<h4 class="panel-title">选择班级</h4>
					</div>
					<!-- panel-heading -->

					<div class="panel-body nopadding">

						<form class="form-horizontal form-bordered" method="post"
							action="/ArrangeCourse/kebiao/selectClass">


							<div class="form-group">
								<label class="col-sm-2 control-label">班級选择</label>
								<div class="col-sm-10">
									<select class="form-control" name="classId">
										<c:if test="${selectedClass.id != null}">
										<option value="${selectedClass.id}">${selectedClass.name}</option>
										</c:if>
										<option value="">请选择班级</option>
										<c:forEach var="p" items="${allCl}">
											<option value="${p.id}">${p.name}</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<!-- form-group -->


							<div class="form-group">
								<button class="btn btn-danger btn-lg btn-block">查询课表</button>
							</div>
							<!-- form-group -->
						</form>
					</div>
					<!-- panel-body -->
				</div>
				<!-- panel -->

			</div>
			<!-- col-md-6 -->




		</div>
		<!-- row -->

		<!-- row -->

		<div class="row">
			<div class="col-md-12">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs nav-primary">
					<li class="active"><a href="#home4" data-toggle="tab"><strong>星期一</strong></a></li>
					<li><a href="#profile4" data-toggle="tab"><strong>星期二</strong></a></li>
					<li><a href="#about4" data-toggle="tab"><strong>星期三</strong></a></li>
					<li><a href="#contact4" data-toggle="tab"><strong>星期四</strong></a></li>
					<li><a href="#contact5" data-toggle="tab"><strong>星期五</strong></a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content tab-content-primary mb30">
					<div class="tab-pane active" id="home4">
						<div class="row">
							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">上午第一节</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1s1}">
										<c:if test="${p.ps == '星期一'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le1Name}</h4>
												<h4 class="sender">教師:${p.le1Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>


							<!-- col-sm-6 -->


							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">上午第二节</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1s2}">
										<c:if test="${p.ps == '星期一'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le2Name}</h4>
												<h4 class="sender">教師:${p.le2Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>



							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">下午第一节</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1x1}">
										<c:if test="${p.ps == '星期一'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le3Name}</h4>
												<h4 class="sender">教師:${p.le3Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>



							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">下午第二节</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1x2}">
										<c:if test="${p.ps == '星期一'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le4Name}</h4>
												<h4 class="sender">教師:${p.le4Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>



							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">晚上的课</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1w1}">
										<c:if test="${p.ps == '星期一'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le5Name}</h4>
												<h4 class="sender">教師:${p.le5Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>


							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">温馨提示</h3>
									</div>

									<ul class="list-group">
										<li class="list-group-item">
											<h4 class="sender">溫馨提示</h4>
											<p>同學們要按時上課</p>
										</li>
										<li class="list-group-item">
											<h4 class="sender">溫馨提示</h4>
											<p>同學們要按時上課</p>
										</li>
										<li class="list-group-item">
											<h4 class="sender">溫馨提示</h4>
											<p>同學們要按時上課</p>
										</li>
										<li class="list-group-item">
											<h4 class="sender">溫馨提示</h4>
											<p>同學們要按時上課</p>
										</li>
									</ul>
								</div>
							</div>



						</div>
					</div>
					<!-- tab-pane -->

					<div class="tab-pane" id="profile4">
						<div class="row">
							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">上午第一节</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1s1}">
										<c:if test="${p.ps == '星期二'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le1Name}</h4>
												<h4 class="sender">教師:${p.le1Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>


							<!-- col-sm-6 -->


							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">上午第二节</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1s2}">
										<c:if test="${p.ps == '星期二'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le2Name}</h4>
												<h4 class="sender">教師:${p.le2Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>



							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">下午第一节</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1x1}">
										<c:if test="${p.ps == '星期二'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le3Name}</h4>
												<h4 class="sender">教師:${p.le3Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>



							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">下午第二节</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1x2}">
										<c:if test="${p.ps == '星期二'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le4Name}</h4>
												<h4 class="sender">教師:${p.le4Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>



							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">晚上的课</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1w1}">
										<c:if test="${p.ps == '星期二'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le5Name}</h4>
												<h4 class="sender">教師:${p.le5Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>


							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">温馨提示</h3>
									</div>

									<ul class="list-group">
										<li class="list-group-item">
											<h4 class="sender">溫馨提示</h4>
											<p>同學們要按時上課</p>
										</li>
										<li class="list-group-item">
											<h4 class="sender">溫馨提示</h4>
											<p>同學們要按時上課</p>
										</li>
										<li class="list-group-item">
											<h4 class="sender">溫馨提示</h4>
											<p>同學們要按時上課</p>
										</li>
										<li class="list-group-item">
											<h4 class="sender">溫馨提示</h4>
											<p>同學們要按時上課</p>
										</li>
									</ul>
								</div>
							</div>



						</div>
					</div>
					<!-- tab-pane -->

					<div class="tab-pane" id="about4">
						<div class="row">
							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">上午第一节</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1s1}">
										<c:if test="${p.ps == '星期三'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le1Name}</h4>
												<h4 class="sender">教師:${p.le1Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>


							<!-- col-sm-6 -->


							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">上午第二节</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1s2}">
										<c:if test="${p.ps == '星期三'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le2Name}</h4>
												<h4 class="sender">教師:${p.le2Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>



							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">下午第一节</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1x1}">
										<c:if test="${p.ps == '星期三'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le3Name}</h4>
												<h4 class="sender">教師:${p.le3Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>



							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">下午第二节</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1x2}">
										<c:if test="${p.ps == '星期三'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le4Name}</h4>
												<h4 class="sender">教師:${p.le4Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>



							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">晚上的课</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1w1}">
										<c:if test="${p.ps == '星期三'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le5Name}</h4>
												<h4 class="sender">教師:${p.le5Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>


							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">温馨提示</h3>
									</div>

									<ul class="list-group">
										<li class="list-group-item">
											<h4 class="sender">溫馨提示</h4>
											<p>同學們要按時上課</p>
										</li>
										<li class="list-group-item">
											<h4 class="sender">溫馨提示</h4>
											<p>同學們要按時上課</p>
										</li>
										<li class="list-group-item">
											<h4 class="sender">溫馨提示</h4>
											<p>同學們要按時上課</p>
										</li>
										<li class="list-group-item">
											<h4 class="sender">溫馨提示</h4>
											<p>同學們要按時上課</p>
										</li>
									</ul>
								</div>
							</div>



						</div>
					</div>
					<!-- tab-pane -->

					<div class="tab-pane" id="contact4">
						<div class="row">
							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">上午第一节</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1s1}">
										<c:if test="${p.ps == '星期四'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le1Name}</h4>
												<h4 class="sender">教師:${p.le1Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>


							<!-- col-sm-6 -->


							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">上午第二节</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1s2}">
										<c:if test="${p.ps == '星期四'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le2Name}</h4>
												<h4 class="sender">教師:${p.le2Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>



							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">下午第一节</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1x1}">
										<c:if test="${p.ps == '星期四'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le3Name}</h4>
												<h4 class="sender">教師:${p.le3Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>



							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">下午第二节</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1x2}">
										<c:if test="${p.ps == '星期四'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le4Name}</h4>
												<h4 class="sender">教師:${p.le4Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>



							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">晚上的课</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1w1}">
										<c:if test="${p.ps == '星期四'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le5Name}</h4>
												<h4 class="sender">教師:${p.le5Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>


							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">温馨提示</h3>
									</div>

									<ul class="list-group">
										<li class="list-group-item">
											<h4 class="sender">溫馨提示</h4>
											<p>同學們要按時上課</p>
										</li>
										<li class="list-group-item">
											<h4 class="sender">溫馨提示</h4>
											<p>同學們要按時上課</p>
										</li>
										<li class="list-group-item">
											<h4 class="sender">溫馨提示</h4>
											<p>同學們要按時上課</p>
										</li>
										<li class="list-group-item">
											<h4 class="sender">溫馨提示</h4>
											<p>同學們要按時上課</p>
										</li>
									</ul>
								</div>
							</div>



						</div>
					</div>
					<div class="tab-pane" id="contact5">
						<div class="row">
							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">上午第一节</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1s1}">
										<c:if test="${p.ps == '星期五'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le1Name}</h4>
												<h4 class="sender">教師:${p.le1Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>


							<!-- col-sm-6 -->


							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">上午第二节</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1s2}">
										<c:if test="${p.ps == '星期五'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le2Name}</h4>
												<h4 class="sender">教師:${p.le2Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>



							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">下午第一节</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1x1}">
										<c:if test="${p.ps == '星期五'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le3Name}</h4>
												<h4 class="sender">教師:${p.le3Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>



							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">下午第二节</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1x2}">
										<c:if test="${p.ps == '星期五'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le4Name}</h4>
												<h4 class="sender">教師:${p.le4Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>



							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">晚上的课</h3>
									</div>

									<ul class="list-group">
										<c:forEach var="p" items="${cc.x1w1}">
										<c:if test="${p.ps == '星期五'}">
											<li class="list-group-item">
												<h4 class="sender">课程:${p.le5Name}</h4>
												<h4 class="sender">教師:${p.le5Tea}</h4>
												<h4 class="sender">地点:${p.roomName}</h4>
												<p><fmt:formatDate value="${p.secDate}" type="date" dateStyle="long"/></p>
											</li>
										</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>


							<div class="col-md-2">
								<div class="panel panel-primary widget-messaging">
									<div class="panel-heading">
										<div class="pull-right">
											 
										</div>
										<!-- pull-right -->
										<h3 class="panel-title">温馨提示</h3>
									</div>

									<ul class="list-group">
										<li class="list-group-item">
											<h4 class="sender">溫馨提示</h4>
											<p>同學們要按時上課</p>
										</li>
										<li class="list-group-item">
											<h4 class="sender">溫馨提示</h4>
											<p>同學們要按時上課</p>
										</li>
										<li class="list-group-item">
											<h4 class="sender">溫馨提示</h4>
											<p>同學們要按時上課</p>
										</li>
										<li class="list-group-item">
											<h4 class="sender">溫馨提示</h4>
											<p>同學們要按時上課</p>
										</li>
									</ul>
								</div>
							</div>



						</div>
					</div>
					<!-- tab-pane -->
				</div>
				<!-- tab-content -->

			</div>
			<!-- col-md-6 -->



		</div>
		<!-- row -->















	</div>
	<!-- contentpanel -->
	<script src="js/jquery-1.11.1.min.js">
	</script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.gritter.min.js"></script>
	<script>
        	${message}
        </script>
</body>
</html>
