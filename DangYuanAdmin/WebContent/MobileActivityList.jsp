<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/style.css" type="text/css" rel="stylesheet">
<link rel="icon" href="pic/danghui.png">

<title>List Of Mobile</title>
<style>
body, button, input, select, textarea, h1, h2, h3, h4, h5, h6 {
	font-family: Microsoft YaHei, '宋体', Tahoma, Helvetica, Arial,
		"\5b8b\4f53", sans-serif;
}
</style>
<script>
	//获取滚动条当前的位置 
	function getScrollTop() {
		var scrollTop = 0;
		if (document.documentElement && document.documentElement.scrollTop) {
			scrollTop = document.documentElement.scrollTop;
		} else if (document.body) {
			scrollTop = document.body.scrollTop;
		}
		return scrollTop;
	}

	//获取当前可是范围的高度 
	function getClientHeight() {
		var clientHeight = 0;
		if (document.body.clientHeight && document.documentElement.clientHeight) {
			clientHeight = Math.min(document.body.clientHeight,
					document.documentElement.clientHeight);
		} else {
			clientHeight = Math.max(document.body.clientHeight,
					document.documentElement.clientHeight);
		}
		return clientHeight;
	}

	//获取文档完整的高度 
	function getScrollHeight() {
		return Math.max(document.body.scrollHeight,
				document.documentElement.scrollHeight);
	}
</script>
<!--页面加载start-->
    <script src="js/jquery.min.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="css/loader.css">
	<script type="text/javascript">         
	    // 等待所有加载
	    $(window).load(function(){
	        $('body').addClass('loaded');
	        $('#loader-wrapper .load_title').remove();
	    }); 
	</script>
</head>
<body>
<div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
    <div class="load_title">正在卖力加载，请稍后...</div>
</div>

	<div id="wrap">

		<div class="content">
			<div class="post" id="addpost">
				<h2>活动报名</h2>

				<c:forEach items="${requestScope.allActivity}" var="n">

					<div class="post-item">
						<h2>
							<a onclick="return gotoNewActivity(${n.id})">${n.title}</a>
						</h2>
						<div class="post-image">
							
								<img src="${n.pic}" alt="Img" onclick="return gotoNewActivity(${n.id})">
							
						</div>
						<div style="">
							<p>
								<a onclick="return gotoNewActivity(${n.id})">${n.content}</a>
							</p>
						</div>
					</div>

				</c:forEach>
			</div>
		</div>

	</div>
	
	
	
	
	
	
	
	<div id="wrap" style="display: none;" class="endofpage">
    
    <div class="content">
        <div class="post">
            <div class="post-item">
                <h2><a href="#">当前已加载到页面末尾</a></h2>
                <div class="post-image"><a href="http://kwxy.xznu.edu.cn/"><img src="pic/1000.png" alt="Img"></a></div>
                <p><a href="http://182.254.145.144/home/">©Designed by: 蒋宇钦</a></p>
            </div>
            
            
        </div>
    </div>
   
</div>
	
	



	<script>
		var pageNo = 3;
		var belong = 11;
		window.onscroll = function() {
			if (getScrollTop() + getClientHeight() >= getScrollHeight()) {

				//ajax

				$.ajax({
					url : "MobileArticleListAjax.do",//要传递的servlet地址
					type : "POST",//提交类型
					data : {
						page : pageNo,
						belong : belong,
					},//传递到servlet中的参数
					datatype : "json",//请求页面返回的数据类型
					success : function(strValue) {//strValue：接收回调函数的返回结果

						//解析json
						//JsonObj = JSON.parse(strValue);
						var JsonObj = eval ("(" + strValue + ")");//更好的方案

						
						//alert(JsonObj.length);
						for (var i = 0; i < JsonObj.length; i++) { //循环后台传过来的Json数组  
							var data = JsonObj[i];
							//解析数据
							var str = "";
							str = "<div class='post-item'><h2><a onclick='return gotoNewActivity("+data.id+")'>"+data.title+"</a></h2><div class='post-image'><img src='"+data.pic+"' alt='Img' onclick='return gotoNewActivity("+data.id+")'></div><div><p><a onclick='return gotoNewActivity("+data.id+")'>"+data.content+"</a></p></div></div>"; 
							//alert(str);
							$("#addpost").append(str);
						}

						//alert(pageNo);
						pageNo = parseInt(pageNo) + 3;
					},
					error : function() {
						alert("error");
					}
				});

				//end ajax

			}

		}
		
		
		function gotoNewActivity(url){
			var xuehao=${requestScope.xuehao};
			return window.nativeMethod.tobaoming(url,xuehao);
		};
	</script>

</body>
</html>