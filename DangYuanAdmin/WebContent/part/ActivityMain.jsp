<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<div class="comment">
		<h1 class="page-header">活动统计</h1>
		<a href="#" class="btn btn-warning btn-lg"
			onClick="javascript:window.open('AddActivity.jsp','','width=630,height=600,toolbar=no, status=no, menubar=no, resizable=yes, scrollbars=yes,location=no');return false;">新增活动</a>
		<button type="button" class="btn btn-success btn-lg"
			id="stuinforeflsh">刷新本页数据</button>
			
			
			<br><br>
	<table
			class="table table-hover table-striped table-bordered table-condensed"
			id="StuInfoTable">
			<thead>
				<tr>
					<th>数据库ID</th>
					<th>活动名称</th>
					<th>上传作者</th>
					<th>发布时间</th>
					<th>点击数</th>
					<th>报名人数</th>
					<th>报名开始时间</th>
					<th>报名结束时间</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach items="${requestScope.AllActivity}" var="n">
					
						<tr>
						
								<td><a target="blank" href="ActivityDetailsServlet.do?id=${n.id}" class="btn btn-primary btn-xs">${n.id}</a></td>
								<td class="success"><a class="btn btn-default btn-xs" target="blank" href="ActivityUpdateServlet.do?id=${n.id}">${n.title}</a></td>
								<td>${n.author}</td>
								<td class="active">${n.outtime}</td>
								<td>${n.count}</td>
								<td class="success">${n.ren}</td>
								<td class="warning">${n.begintime}</td>
								<td>${n.endtime}</td>
								<td>
									<form id="delidform${n.id}">
									<input type="hidden" name="delid" readonly="readonly" value="${n.id}"/>
									<button type="button" class="btn-danger" id="stuinfodel">删除</button>
									</form>
								</td>
								
						</tr>
					
				</c:forEach>

			</tbody>
		</table>
	</div>

<script>
	$(".btn-danger").click(function() {
		
		var formname = "#"+this.form.id;
		//alert(formname);
		$.ajax({
			url : 'ActivityDelServlet.do',
			type : "POST",
			data : $(formname).serialize(),
			success : function(data) {
				alert(data);
				$('#right').load('ActivityShow.do');
			}
		});
	});
	
	$("#stuinforeflsh").click(function() {
		$('#right').load('ActivityShow.do');
	});
</script>
</body>
</html>