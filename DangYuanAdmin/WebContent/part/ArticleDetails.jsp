<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="pic/danghui.png">
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
<title>${requestScope.article.title}</title>
<style>
body,button, input, select, textarea,h1 ,h2, h3, h4, h5, h6 { font-family: Microsoft YaHei,'宋体' , Tahoma, Helvetica, Arial, "\5b8b\4f53", sans-serif;}
	.hfont{
    font-weight:bold;
    font-family: tahoma;
}
#wrapOnRightButton {display:block;bottom:0px;right:1px!important;right:18px;width:40px;line-height:30px;position:fixed;border:1px solid #fff;text-align:center;color:#000;opacity:0.6; background:#fff;}

</style>

</head>
<body>
<div style="height: 100%;width: 100%;margin:0px auto;">
<div style="height: auto;width: 100%">

	<h4>
		<span class="glyphicon glyphicon-list"></span>
		<span class="hfont">${requestScope.article.title}</span>
	</h4>
</div>

<div style="height: auto;width: 100%">

	<p>
		<span class="glyphicon glyphicon-adjust"></span>
		<span>发布时间:${requestScope.article.outtime}</span>
		<br>
		<span class="glyphicon glyphicon-edit"></span>
		<span>作者:${requestScope.article.author}</span>
		<br>
		<span class="glyphicon glyphicon-map-marker"></span>
		<span>点击次数:${requestScope.article.count}</span>
	</p>
	
</div>
<hr>
<div style="width: 100%">
	${requestScope.article.content}
</div>


</div>


<div id="wrapOnRightButton">
<!-- a href="#"><span class="glyphicon glyphicon-chevron-up" style="font-size:40px;color:orange;"></span></a> -->
<a href="#"><span class="glyphicon glyphicon-chevron-up" style="font-size:40px;color:orange;"></span></a>
</div>

</body>
</html>