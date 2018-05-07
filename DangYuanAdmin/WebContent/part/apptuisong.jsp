<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="comment">
		<h1 class="page-header">APP推送</h1>
		
		
		
		<form id="idform">
			<div class="form-group">
				<label for="exampleInputEmail1">推送标题</label> <input
					type="text" class="form-control" name="title"
					placeholder="请控制在40字以内">
			</div>
			
			<div class="form-group">
				<label for="exampleInputEmail1">推送内容</label> <textarea
					class="form-control" name="text" style="height: 100px;" 
					placeholder="请控制在600字以内"></textarea>
			</div>
			
			<a class="btn btn-default" id="submit">Submit</a>
			
		</form>
		
		
		<div id = "result"></div>
	</div>
	
	<script>
		$("#submit").click(function() {
			$.ajax({
				url : 'AppPush.do',
				type : "POST",
				data : $('#idform').serialize(),
				success : function(data) {
					alert("推送完毕");
					$("#result").text("参数详情:"+data);
					//$('#right').load('ShowStudentInfo.do');
					
				}
			});
		});
	</script>
</body>
</html>