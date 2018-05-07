<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="pic/danghui.png">
<title>新增活动</title>
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
		<h2>新增活动</h2>
		<form action="ActivityAdd.do" method="post">
			<p style="display: inline;">活动标题:</p>
			<input type="text" name="title"
				style="width: 450px; height: 30px; font-size: 14px; border: 1px solid #cccccc; border-radius: 4px;" /><br>
			<p style="display: inline;">上传作者:</p>
			<input type="text" name="author" value="科文学院"
				style="width: 450px; height: 30px; font-size: 14px; border: 1px solid #cccccc; border-radius: 4px;" /><br>


			<p style="display: inline;">活动发布时间:</p>
			<input type="datetime-local" name="outtime" value="2016-04-23T12:00"
				style="width: 418px; height: 30px; font-size: 14px; border: 1px solid #cccccc; border-radius: 4px;">
			<br>
			<p style="display: inline;">报名开始时间:</p>
			<input type="datetime-local" name="begintime" value="2016-04-23T12:00"
				style="width: 418px; height: 30px; font-size: 14px; border: 1px solid #cccccc; border-radius: 4px;">
			<br>
			<p style="display: inline;">报名结束时间:</p>
			<input type="datetime-local" name="endtime" value="2017-04-23T12:00"
				style="width: 418px; height: 30px; font-size: 14px; border: 1px solid #cccccc; border-radius: 4px;">





				<script id="editor" type="text/plain"
					style="width:600px;height:500px;" name="editor"></script>
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