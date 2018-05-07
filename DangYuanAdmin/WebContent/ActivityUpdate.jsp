<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="pic/danghui.png">
<title>修改活动</title>
<script>
	window.UEDITOR_HOME_URL = "/DangYuanAdmin/ueditor/";
</script>
<script type="text/javascript" charset="utf-8"
	src="ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="ueditor/ueditor.all.js">
	
</script>
<script type="text/javascript" charset="utf-8"
	src="ueditor/lang/zh-cn/zh-cn.js"></script>

<style type="text/css">
div {
	width: 100%;
}
</style>
</head>
<body>
	<div>
		<h2>修改活动</h2>
		<form action="ActivityUpdateServletAction.do" method="post">
			<input readonly="readonly" type="hidden" value="${requestScope.activity.id}" name = "id"/>
			<p style="display: inline;">活动标题:</p>
			<input type="text" value="${requestScope.activity.title}" name="title"
				style="width: 450px; height: 30px; font-size: 14px; border: 1px solid #cccccc; border-radius: 4px;" /><br>
			<p style="display: inline;">上传作者:</p>
			<input type="text" name="author" value="${requestScope.activity.author}" 
				style="width: 450px; height: 30px; font-size: 14px; border: 1px solid #cccccc; border-radius: 4px;" /><br>


			<p style="display: inline;">活动发布时间:</p>
			<input type="datetime-local" value="${requestScope.activity.outtime}" name="outtime" 
				style="width: 418px; height: 30px; font-size: 14px; border: 1px solid #cccccc; border-radius: 4px;">
			<br>
			<p style="display: inline;">报名开始时间:</p>
			<input type="datetime-local" value="${requestScope.activity.begintime}" name="begintime" 
				style="width: 418px; height: 30px; font-size: 14px; border: 1px solid #cccccc; border-radius: 4px;">
			<br>
			<p style="display: inline;">报名结束时间:</p>
			<input type="datetime-local" value="${requestScope.activity.endtime}" name="endtime"
				style="width: 418px; height: 30px; font-size: 14px; border: 1px solid #cccccc; border-radius: 4px;">





			<script id="editor" type="text/plain"
				style="width:600px;height:500px;" name="editor">${requestScope.activity.content}</script>
			<input type="submit" value="确定保存">

		</form>
	</div>


	<script type="text/javascript">
		//实例化编辑器
		//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
		var ue = UE.getEditor('editor');
	</script>
</body>
</html>