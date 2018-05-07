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
		<h1 class="page-header">后台总览</h1>



		<div style="width: 15%;height: 100%;float:left;">
			<ul class="nav nav-sidebar">
				<li><a href="#" name="liangxueyizuo">两学一做</a></li>
				<li><a href="#" name="zhonggongdangzhishi">学习小组</a></li>
				<li><a href="#" name="guoneiguojidangjian">著作选读</a></li>
				<li><a href="#" name="jindianzhuzuo">党史博览</a></li>
				<li><a href="#" name="gonggeshiping">党建掠影</a></li>
				<li><a href="#" name="falvchangshi">党员先锋</a></li>
				<li><a href="#" name="dangyuanxianji">红歌传唱</a></li>
				<li><a href="#" name="yueduhaoshutuijian">好书鉴赏</a></li>
				<li><a href="#" name="makesizhuyi">时事快讯</a></li>
				<li><a href="#" name="qitajiandangxinxi">校园新闻</a></li>
				<li><a href="#" name="hexinjiazhiguan">通知公告</a></li>
				<li><a href="#" name="xiaoyuanyaowen">活动报名</a></li>
				<li><a href="#" name="shequdongtao">社群动态</a></li>
				
			</ul>
		</div>
		
		<div style="width: 75%;height: 100%;float:right;" id="rightright">
			
		</div>
	</div>
	
	
	
	
	<script>
		$(document).ready(function() {
			
			$("a[name='liangxueyizuo']").click(function() {
				$('#rightright').load('part/Loading.jsp');
				$('#rightright').load('ArticleShowBelong.do?belong=100');
			});
		});
	
	
	
		$(document).ready(function() {
			
			$("a[name='zhonggongdangzhishi']").click(function() {
				$('#rightright').load('part/Loading.jsp');
				$('#rightright').load('ArticleShowBelong.do?belong=1');
			});
		});
		
		$(document).ready(function() {
			
			$("a[name='guoneiguojidangjian']").click(function() {
				$('#rightright').load('part/Loading.jsp');
				$('#rightright').load('ArticleShowBelong.do?belong=2');
			});
		});
		
		$(document).ready(function() {
			$("a[name='jindianzhuzuo']").click(function() {
				$('#rightright').load('part/Loading.jsp');
				$('#rightright').load('ArticleShowBelong.do?belong=3');
			});
		});
		
		$(document).ready(function() {
			$("a[name='gonggeshiping']").click(function() {
				$('#rightright').load('part/Loading.jsp');
				$('#rightright').load('ArticleShowBelong.do?belong=4');
			});
		});
		
		$(document).ready(function() {
			$("a[name='falvchangshi']").click(function() {
				$('#rightright').load('part/Loading.jsp');
				$('#rightright').load('ArticleShowBelong.do?belong=5');
			});
		});
		
		$(document).ready(function() {
			$("a[name='dangyuanxianji']").click(function() {
				$('#rightright').load('part/Loading.jsp');
				$('#rightright').load('ArticleShowBelong.do?belong=6');
			});
		});
		
		$(document).ready(function() {
			$("a[name='yueduhaoshutuijian']").click(function() {
				$('#rightright').load('part/Loading.jsp');
				$('#rightright').load('ArticleShowBelong.do?belong=7');
			});
		});
		
		$(document).ready(function() {
			$("a[name='makesizhuyi']").click(function() {
				$('#rightright').load('part/Loading.jsp');
				$('#rightright').load('ArticleShowBelong.do?belong=8');
			});
		});
		
		$(document).ready(function() {
			$("a[name='qitajiandangxinxi']").click(function() {
				$('#rightright').load('part/Loading.jsp');
				$('#rightright').load('ArticleShowBelong.do?belong=9');
			});
		});
		
		$(document).ready(function() {
			$("a[name='hexinjiazhiguan']").click(function() {
				$('#rightright').load('part/Loading.jsp');
				$('#rightright').load('ArticleShowBelong.do?belong=10');
			});
		});
		
		$(document).ready(function() {
			$("a[name='xiaoyuanyaowen']").click(function() {
				$('#rightright').load('part/Loading.jsp');
				$('#rightright').load('ArticleShowBelong.do?belong=11');
			});
		});
		
		
		
		$(document).ready(function() {
			$("a[name='shequdongtao']").click(function() {
				$('#rightright').load('part/Loading.jsp');
				$('#rightright').load('ArticleShowBelong.do?belong=101');
			});
		});
		
		
		
	</script>
</body>
</html>