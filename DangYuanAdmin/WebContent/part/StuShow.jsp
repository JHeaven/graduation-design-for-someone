<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body onload="document.getElementById('idInput').focus()">
	<div class="comment">
		<h1 class="page-header">学生党员信息管理</h1>


		<!-- Button trigger modal -->
		<button type="button" class="btn btn-warning btn-lg"
			data-toggle="modal" data-target="#myModal">新增学生党员</button>
			
		<button type="button" class="btn btn-success btn-lg" id="stuinforeflsh">刷新本页数据</button>

		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">输入新增学生学号</h4>
					</div>
					<div class="modal-body">
					<form id="idform">
						<textarea class="form-control" rows="6" name="alldata"></textarea>
					</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal" id="addstucancel">取消</button>
						<button type="button" class="btn btn-primary" id="submit">添加</button>
					</div>
				</div>
			</div>
		</div>

	<div id="result"></div>


		<br> <br>
		<table
			class="table table-hover table-striped table-bordered table-condensed"
			id="StuInfoTable">
			<thead>
				<tr>
					<th>学号</th>
					<th>姓名</th>
					<th>密码</th>
					<th>班级</th>
					<th>性别</th>
					<th>年龄</th>
					<th>所在系</th>
					<th>专业</th>
					<th>最后登陆时间</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach items="${requestScope.StudentInfo}" var="n">
					
						<tr>
						
								<td>${n.id}</td>
								<td class="success">${n.name}</td>
								<td>${n.pwd}</td>
								<td class="active">${n.banji}</td>
								<td>${n.sex}</td>
								<td class="warning">${n.age}</td>
								<td>${n.xi}</td>
								<td class="warning">${n.zhuanye}</td>
								<td>${n.lasttime}</td>
								<td>
									<!--a class="btn btn-info btn-xs active">修改</a>  -->
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
	<script type="text/javascript">
		
		$("#submit").click(function() {
			$.ajax({
				url : 'StudentAddServlet.do',
				type : "POST",
				data : $('#idform').serialize(),
				success : function(data) {
					$("#result").text(data);
					$("#addstucancel").click();
					//$('#right').load('ShowStudentInfo.do');
					
				}
			});
		});
		
		
		
		$("#stuinforeflsh").click(function() {
			$('#right').load('ShowStudentInfo.do');
		});
		
		
		
		$(".btn-danger").click(function() {
			
			var formname = "#"+this.form.id;
			//alert(formname);
			$.ajax({
				url : 'StudentDelServlet.do',
				type : "POST",
				data : $(formname).serialize(),
				
				success : function(data) {
					alert(data);
					$('#right').load('ShowStudentInfo.do');
				}
			});
		});
		
		
	</script>
</body>
</html>