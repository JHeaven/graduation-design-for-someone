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
<title>${requestScope.activity.title}</title>

<style type="text/css">
.canjia{ 
 	line-height:68px;
	height:68px;
	width:100%;
	color:#ffffff;
	background-color:#e4685d;
	font-size:43px;
	font-weight:bold;
	font-family:Microsoft YaHei;
	background:-webkit-gradient(linear, left top, left bottom, color-start(0.05, #f04c3e), color-stop(1, #ec584e));
	background:-moz-linear-gradient(top, #f04c3e 5%, #ec584e 100%);
	background:-o-linear-gradient(top, #f04c3e 5%, #ec584e 100%);
	background:-ms-linear-gradient(top, #f04c3e 5%, #ec584e 100%);
	background:linear-gradient(to bottom, #f04c3e 5%, #ec584e 100%);
	background:-webkit-linear-gradient(top, #f04c3e 5%, #ec584e 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f04c3e', endColorstr='#ec584e',GradientType=0);
	border:0px solid #66f94d;
	-webkit-border-top-left-radius:10px;
	-moz-border-radius-topleft:10px;
	border-top-left-radius:10px;
	-webkit-border-top-right-radius:10px;
	-moz-border-radius-topright:10px;
	border-top-right-radius:10px;
	-webkit-border-bottom-left-radius:10px;
	-moz-border-radius-bottomleft:10px;
	border-bottom-left-radius:10px;
	-webkit-border-bottom-right-radius:10px;
	-moz-border-radius-bottomright:10px;
	border-bottom-right-radius:10px;
	-moz-box-shadow: inset 0px 20px 0px -20px #e67a73;
	-webkit-box-shadow: inset 0px 20px 0px -20px #e67a73;
	box-shadow: inset 0px 20px 0px -20px #e67a73;
	text-align:center;
	display:inline-block;
	text-decoration:none;
}
.canjia:hover {
	background-color:#eb675e;
	background:-webkit-gradient(linear, left top, left bottom, color-start(0.05, #ec584e), color-stop(1, #f04c3e));
	background:-moz-linear-gradient(top, #ec584e 5%, #f04c3e 100%);
	background:-o-linear-gradient(top, #ec584e 5%, #f04c3e 100%);
	background:-ms-linear-gradient(top, #ec584e 5%, #f04c3e 100%);
	background:linear-gradient(to bottom, #ec584e 5%, #f04c3e 100%);
	background:-webkit-linear-gradient(top, #ec584e 5%, #f04c3e 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ec584e', endColorstr='#f04c3e',GradientType=0);
}
</style>



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
                <h2><a href="#"><span style="color: red">[${requestScope.isok}]</span>${requestScope.activity.title}</a></h2>
                
                <b>发布时间:${requestScope.activity.outtime}</b><br>
                
                <b>发布作者:${requestScope.activity.author}</b><br>
                <b>点击次数:${requestScope.activity.count}</b><br>
                <br>
                <b>报名开始时间:${requestScope.activity.begintime}</b><br>
                <b>报名结束时间:${requestScope.activity.endtime}</b><br><br>
                <b>当前报名人数:${requestScope.activity.ren}</b><br>
                
            </div>
            
        </div>
    </div>
    
    
    
    <div class="content">
        <div class="post">
            <div class="post-item">
                ${requestScope.activity.content}
            </div>
            
        </div>
    </div>
    
    
    
     
            	<a href="MobileActivityAttend.do?id=${requestScope.id}&xuehao=${requestScope.xuehao}" class="canjia">我要参加</a>
     
    
    
    
    
    <div class="footer">
        <p>&copy; 2016 <a href="#">科文学院</a></p>
    </div>
    
</div>



</body>
</html>