<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>公务员考试进行中...</title>

<!-- Bootstrap -->
<link href="css/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="css/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="css/vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- iCheck -->
<link href="css/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
<!-- bootstrap-progressbar -->
<link
	href="css/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet">
<!-- PNotify -->
<link href="css/vendors/pnotify/dist/pnotify.css" rel="stylesheet">
<link href="css/vendors/pnotify/dist/pnotify.buttons.css"
	rel="stylesheet">
<link href="css/vendors/pnotify/dist/pnotify.nonblock.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link href="build/css/custom.min.css" rel="stylesheet">
</head>

<body>
	<div class="container body">
		<div class="main_container">


			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">

					<div class="page-title">
						<div class="title_left">
							<h3>&nbsp;&nbsp;&nbsp;您正在进行公务员考试.....</h3>
						</div>

						<div class="title_right">
							<div
								class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
								<div class="input-group" id="divdown1">
								</div>
							</div>
						</div>
					</div>

					<div class="clearfix"></div>




					
					<div class="col-md-10 col-sm-10 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>当前第【${flag}】题 <small>请广大考生仔细作答</small></h2>
                  <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                      <a href="/CivilServiceExamination/index" class="dropdown-toggle" onClick="return confirm('确定操作?');" ><i class="fa fa-wrench"></i>回到首页</a>
                      
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
				
				<c:forEach var="p" items="${exam}">
				<c:if test="${p.section == flag}">
				<form action="/CivilServiceExamination/game/ans/${p.belong}/${p.section}" method="post">
				
				<input type="hidden" class="form-control" value="${p.section}" readonly="readonly" name="section" >   
				<input type="hidden" class="form-control" value="${p.id}" readonly="readonly" name="id"> 
				<input type="hidden" class="form-control" value="${p.ex}" readonly="readonly" name="ex">
				
                  <div class="bs-example" data-example-id="simple-jumbotron">
                    <div class="jumbotron">
                      <h1 style="font-size: 30px;">第【${flag}】题</h1>
                      <p style="font-size: 15px;">${p.eContent}</p>
                    </div>
                  </div>
                
                
                
                
                
                <div class="form-group">
														<label class="col-sm-1 control-label"></label>
														<div class="col-sm-11">
															<div class="radio">
																<input id="demo-form-radio1" class="magic-radio"
																	type="radio" name="ans" value="A" <c:if test="${p.ans=='A,'}">checked</c:if>>
																<label
																	for="demo-form-radio1">选项A正确</label>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-1 control-label"></label>
														<div class="col-sm-11">
															<div class="radio">
																<input id="demo-form-radio2" class="magic-radio"
																	type="radio" name="ans" value="B" <c:if test="${p.ans=='B,'}">checked</c:if>> <label
																	for="demo-form-radio2">选项B正确</label>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-1 control-label"></label>
														<div class="col-sm-11">
															<div class="radio">
																<input id="demo-form-radio3" class="magic-radio"
																	type="radio" name="ans" value="C" <c:if test="${p.ans=='C,'}">checked</c:if>> <label
																	for="demo-form-radio3">选项C正确</label>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-1 control-label"></label>
														<div class="col-sm-11">
															<div class="radio">
																<input id="demo-form-radio4" class="magic-radio"
																	type="radio" name="ans" value="D" <c:if test="${p.ans=='D,'}">checked</c:if>> <label
																	for="demo-form-radio4">选项D正确</label>
															</div>
														</div>
													</div>
												
												
												
												<br><br><br>
												<div class="form-group">
													<label class="col-lg-1 control-label"></label>
													<div class="col-lg-11">
														<button class="btn btn-info" type="submit">提交答案并下一题</button>
													</div>
												</div>
												
												
				</form>
				</c:if>
				</c:forEach>
				
				
                </div>
                
                
                
                
                
                
                
              </div>
            </div>
					
					
					
					
					
					
					


					<!-- Start to do list -->
					<div class="col-md-2 col-sm-2 col-xs-12">
						<div class="x_panel">
							<div class="x_title">
								<h2>
									题目列表 <small></small>
								</h2>
								<ul class="nav navbar-right panel_toolbox">
									<li><a class="collapse-link"><i
											class="fa fa-chevron-up"></i></a></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown" role="button" aria-expanded="false"><i
											class="fa fa-wrench"></i></a></li>
									<li><a class="close-link"><i class="fa fa-close"></i></a>
									</li>
								</ul>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">

								<div class="">
									<ul class="to_do">
										<c:forEach var="p" items="${exam}">
											<li><a target="_self"
												href="/CivilServiceExamination/game/nextEx/${p.belong}/${p.section}">
													<p
														<c:if test="${p.section == flag}"> style="color: red;" </c:if>>
														<input type="checkbox" class="flat"
															<c:if test="${p.ans != null}"> checked</c:if>> 第
														${p.section} 题
													</p>
											</a></li>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- End to do list -->



				</div>
			</div>



		</div>
	</div>



	<!-- jQuery -->
	<script src="css/vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="css/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="css/vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="css/vendors/nprogress/nprogress.js"></script>
	<!-- bootstrap-progressbar -->
	<script
		src="css/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<!-- iCheck -->
	<script src="css/vendors/iCheck/icheck.min.js"></script>
	<!-- PNotify -->
	<script src="css/vendors/pnotify/dist/pnotify.js"></script>
	<script src="css/vendors/pnotify/dist/pnotify.buttons.js"></script>
	<script src="css/vendors/pnotify/dist/pnotify.nonblock.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="build/js/custom.min.js"></script>
	
	<script type="text/javascript">

    
	   var notyText = function(text1){
		   new PNotify({
		        title: '${userLoginFlag.name} , 系统消息',
		        text: text1,
		        type: 'success',
		        styling: 'bootstrap3'
		    });
	   }
	   
	   
	if (self != top) {
		top.location = self.location;
	}
	
	
	
	
	var interval = 1000; 
	function ShowCountDown(getTime,divname) 
	{ 
	var now = new Date(); 
	var endDate = new Date(getTime); 
	var leftTime=endDate.getTime()-now.getTime(); 
	var leftsecond = parseInt(leftTime/1000); 
	var day1=Math.floor(leftsecond/(60*60*24)); 
	var hour=Math.floor((leftsecond-day1*24*60*60)/3600); 
	var minute=Math.floor((leftsecond-day1*24*60*60-hour*3600)/60); 
	var second=Math.floor(leftsecond-day1*24*60*60-hour*3600-minute*60); 
	var cc = document.getElementById(divname); 
	cc.innerHTML = "距考试结束还有："+day1+"天"+hour+"小时"+minute+"分"+second+"秒"; 
	} 
	window.setInterval(function(){ShowCountDown(${endtime},'divdown1');}, interval); 
	
	
	
	${message}
	</script>

</body>
</html>
