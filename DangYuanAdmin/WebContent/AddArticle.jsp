<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="pic/danghui.png">
<title>新增文章</title>
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
		<h2>新增文章</h2>
		<form action="ArticleAdd.do" method="post">
			<p style="display: inline;">文章标题:</p>
			<input type="text" name="title"
				style="width: 450px; height: 30px; font-size: 14px; border: 1px solid #cccccc; border-radius: 4px;" /><br>
			<p style="display: inline;">文章作者:</p>
			<input type="text" name="author" value="科文学院" style="width: 450px; height: 30px; font-size: 14px; border: 1px solid #cccccc; border-radius: 4px;"/><br>
			<p style="display: inline;">栏目选择:</p>
			<select name="lanmuxuanze"
				style="width: 450px; height: 30px; font-size: 14px; border: 1px solid #cccccc; border-radius: 4px;">
				<option value="100">两学一做</option>
				<option value="101">社群动态</option>
				<option value="1">学习小组</option>
				<option value="2">著作选读</option>
				<option value="3">党史博览</option>
				<option value="4">党建掠影</option>
				<option value="5">党员先锋</option>
				<option value="6">红歌传唱</option>
				<option value="7">好书鉴赏</option>
				<option value="8">时事快讯</option>
				<option value="9">校园新闻</option>
				<option value="10">通知公告</option>
				<option value="11">活动报名</option>
				<option value="12">个人资料</option>

			</select>
			<br>
			<p style="display: inline;">发布时间:</p>
			<input type="datetime-local" name="outtime" value="2016-04-23T12:00" style="width: 450px; height: 30px; font-size: 14px; border: 1px solid #cccccc; border-radius: 4px;">

			<script id="editor" type="text/plain" style="width:600px;height:500px;" name="editor"></script>
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