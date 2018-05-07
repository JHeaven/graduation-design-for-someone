<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/style.css" type="text/css" rel="stylesheet">
<link rel="icon" href="pic/danghui.png">

<script src="js/jquery.min.js" type="text/javascript"></script>
<title>${requestScope.article.title}</title>


</head>
<body>

<div id="wrap">
    <div class="header">
        <div class="logo">
            <img src="pic/logo.png" />
        </div>
        <div class="button" id="show">
            <a href="#">右滑关闭</a>
        </div>
        <div class="clear-float"></div>
        
    </div>
    <div class="content">
        <div class="post">
            <div class="post-item">
                <h2><a href="#">${requestScope.article.title}</a></h2>
                
                <b>发布时间:${requestScope.article.outtime}</b><br>
                <b>发布作者:${requestScope.article.author}</b><br>
                <b>点击次数:${requestScope.article.count}</b><br>
                
            </div>
            
        </div>
    </div>
    
    
    
    
    <div class="content">
        <div class="post">
            <div class="post-item">
                ${requestScope.article.content}
            </div>
            
        </div>
    </div>
    
    
    
    
    
    <div class="footer">
        <p>&copy; 2016 <a href="#">科文学院</a></p>
    </div>
    
</div>



</body>
</html>