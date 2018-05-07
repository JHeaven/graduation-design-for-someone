<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/nbase_b0dd754.css">
<link rel="stylesheet" type="text/css" href="css/newindex_47fbb7b.css">

<title></title>
</head>
<body>

<h2 class="page-header">${requestScope.belong_Str}</h2>

	<div class="index-main">
		<div id="pagelet-nfeedlist">
			<div class="feedcomm" data-node="commItem">
				<span class="comm-close" data-node="commClose"></span> <a
					ga_event="click_banner" target="_blank" data-node="commLink"></a>
			</div>
			<p class="alert-msg" data-node="alertMsg">
				<img src="./toutiao_files/loading_50c5e3e.gif"> <span>推荐数据加载中...</span>
			</p>
			<!--div class="unread" data-node="unread" ga_event="click_feed_update" style="display: block;"><span>您有未读新闻，点击查看</span></div-->


			<c:forEach items="${requestScope.ArticleList}" var="n">
				<ul data-node="listBox">


					<li class="item clearfix" data-node="item">

						<div class="item-inner">



							<div class="lbox left">
								<a ga_event="click_feed_newsimg"
									href="ArticleDetailsServlet.do?id=${n.id}"
									target="_blank"> 
									
									<img class="feedimg" src="${n.pic}" onload="this.style.opacity=1;" style="opacity: 1;">

								</a>
							</div>
							<div class="rbox">
								<!--hold-->
								<div class="rbox-inner">


									<div class="title-box">
										<a ga_event="click_feed_newstitle" class="link title" style='text-decoration:none;' 
											href="ArticleUpdateServlet.do?id=${n.id}"
											target="_blank" data-node="title"> 
											
											【点此修改】
											${n.title}
										</a>
									</div>


									<div class="abstract">
										<a ga_event="click_feed_newsabstract" class="link" style='text-decoration:none;' 
											href="ArticleDetailsServlet.do?id=${n.id}"
											target="_blank">${n.content}</a>
									</div>


									<div class="footer clearfix">
										<div class="left lfooter">

											<span class="lbtn tag tag-hot">党</span> <a style='text-decoration:none;' 
												class="lbtn source" href="ArticleDetailsServlet.do?id=${n.id}"
												target="_blank">作者:${n.author}&nbsp;&nbsp;</a> <span class="lbtn comment">${n.count}次点击&nbsp;</span>
											<span class="lbtn time">发布时间:【${n.outtime}】</span>
										</div>

									</div>


								</div>
							</div>

						</div>
					</li>


				</ul>
			</c:forEach>
		</div>

	</div>





</body>
</html>