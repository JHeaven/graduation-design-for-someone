<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">


<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<!--STYLESHEET-->
<!--=================================================-->

<!--Open Sans Font [ OPTIONAL ]-->



<!--Bootstrap Stylesheet [ REQUIRED ]-->
<link href="css/bootstrap.min.css" rel="stylesheet">


<!--Nifty Stylesheet [ REQUIRED ]-->
<link href="css/nifty.min.css" rel="stylesheet">


<!--Nifty Premium Icon [ DEMONSTRATION ]-->
<link href="css/demo/nifty-demo-icons.min.css" rel="stylesheet">


<!--Demo [ DEMONSTRATION ]-->
<link href="css/demo/nifty-demo.min.css" rel="stylesheet">



<!--Magic Checkbox [ OPTIONAL ]-->
<link href="plugins/magic-check/css/magic-check.min.css"
	rel="stylesheet">






<!--JAVASCRIPT-->
<!--=================================================-->

<!--Pace - Page Load Progress Par [OPTIONAL]-->
<link href="plugins/pace/pace.min.css" rel="stylesheet">
<script src="plugins/pace/pace.min.js"></script>


<!--jQuery [ REQUIRED ]-->
<script src="js/jquery-2.2.4.min.js"></script>


<!--BootstrapJS [ RECOMMENDED ]-->
<script src="js/bootstrap.min.js"></script>


<!--NiftyJS [ RECOMMENDED ]-->
<script src="js/nifty.min.js"></script>






<!--=================================================-->

<!--Demo script [ DEMONSTRATION ]-->
<script src="js/demo/nifty-demo.min.js"></script>


<!--Panel [ SAMPLE ]-->
<script src="js/demo/ui-panels.js"></script>

<style type="text/css">
body {
	font-family: "Verdana", "Hiragino Sans GB", "Microsoft YaHei",
		"WenQuanYi Micro Hei", sans-serif;
}
</style>

  </head>

<body>
	<div id="container" class="effect aside-float aside-bright mainnav-lg">
		<div class="boxed">
			<div id="content-container">
				<!--Page Title-->
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <div id="page-title">
                    <h1 class="page-header text-overflow">竞赛进行中......</h1>
                </div>
				<!--Page content-->
                <!--===================================================-->
                <div id="page-content">
					<hr class="new-section-sm">
					<div class="row demo-nifty-panel">
					    <div class="col-lg-12">
					
					        <!--Panel with Pagination-->
					        <!--===================================================-->
					        <div class="panel">
					
					            <!--Panel heading-->
					            <div class="panel-heading">
					                <div class="panel-control">
					                    <ul class="pagination">
					                        <li><a><i class="demo-pli-arrow-left-2"></i></a></li>
					                        
					                        <c:forEach var="p" items="${exam}">
					                        	
					                       		<li <c:if test="${p.section == flag}"> class="active"</c:if> >
					                       			<a target="right" href="/CompetionRegistration/game/nextEx/${p.belong}/${p.section}">${p.section}</a>
					                       		</li>
					                       	</c:forEach>
					                       
					                       
					                        <li><a><i class="demo-pli-arrow-right-2"></i></a></li>
					                    </ul>
					                </div>
					                <h3 class="panel-title">第【${flag}】题</h3>
					            </div>
								
					            <!--Panel body-->
					            <div class="panel-body">
					                <c:forEach var="p" items="${exam}">
					                <form action="/CompetionRegistration/game/ans/${p.belong}/${p.section}" method="post">
					                	<c:if test="${p.section == flag}">
											
											<input type="hidden" class="form-control" value="${p.section}" readonly="readonly" name="section" >   
												
											<input type="hidden" class="form-control" value="${p.id}" readonly="readonly" name="id"> 
												
											<input type="hidden" class="form-control" value="${p.ex}" readonly="readonly" name="ex">
											
												<div class="form-group">
													<label class="col-lg-3 control-label">题目描述</label>
													<div class="col-lg-7">
														<div style="border: 1px;">${p.eContent}</div>
													</div>
												</div>
												<br><br>
												<div class="form-group">
													<label class="col-lg-3 control-label">题目分值</label>
													<div class="col-lg-7">
														<p>${p.eScore}分</p>
													</div>
												</div>
												<br>
												<div class="form-group">
													<label class="col-lg-3 control-label">题目类型</label>
													<div class="col-lg-7">
														<p>${p.eType}</p>
													</div>
												</div>
												<br>
												
												<c:if test="${p.eType == '选择题'}">
													<div class="form-group">
														<label class="col-sm-3 control-label"></label>
														<div class="col-sm-9">
															<div class="radio">
																<input id="demo-form-radio1" class="magic-radio"
																	type="radio" name="ans" value="A" <c:if test="${p.ans=='A,'}">checked</c:if>>
																<label
																	for="demo-form-radio1">选项A正确</label>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label"></label>
														<div class="col-sm-9">
															<div class="radio">
																<input id="demo-form-radio2" class="magic-radio"
																	type="radio" name="ans" value="B" <c:if test="${p.ans=='B,'}">checked</c:if>> <label
																	for="demo-form-radio2">选项B正确</label>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label"></label>
														<div class="col-sm-9">
															<div class="radio">
																<input id="demo-form-radio3" class="magic-radio"
																	type="radio" name="ans" value="C" <c:if test="${p.ans=='C,'}">checked</c:if>> <label
																	for="demo-form-radio3">选项C正确</label>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label"></label>
														<div class="col-sm-9">
															<div class="radio">
																<input id="demo-form-radio4" class="magic-radio"
																	type="radio" name="ans" value="D" <c:if test="${p.ans=='D,'}">checked</c:if>> <label
																	for="demo-form-radio4">选项D正确</label>
															</div>
														</div>
													</div>
												</c:if>
												
												
												<c:if test="${p.eType == '填空题'}">
												
													<div class="form-group">
														<label class="col-sm-3 control-label"
															for="demo-hor-inputemail">你的答案</label>
														<div class="col-sm-9">
															<input type="text" placeholder="" id="demo-hor-inputemail" value="${p.ans}"
																class="form-control" name="ans">
														</div>
													</div>
												</c:if> 
												
												
												<c:if test="${p.eType == '判断题'}">
													<div class="form-group">
														<label class="col-sm-3 control-label">请选择</label>
														<div class="col-sm-9">
															<div class="radio">
																<input id="demo-form-radio5" class="magic-radio"
																	type="radio" name="ans"  value="Y" <c:if test="${p.ans==',Y'}">checked</c:if>> <label
																	for="demo-form-radio5">正确</label>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">请选择</label>
														<div class="col-sm-9">
															<div class="radio">
																<input id="demo-form-radio6" class="magic-radio"
																	type="radio" name="ans"  value="N" <c:if test="${p.ans==',N'}">checked</c:if>> <label
																	for="demo-form-radio6">错误</label>
															</div>
														</div>
													</div>
												
												</c:if>
												
												<br><br><br>
												<div class="form-group">
													<label class="col-lg-3 control-label">操作</label>
													<div class="col-lg-7">
														<button class="btn btn-info" type="submit">提交答案并下一题</button>
													</div>
												</div>
												
					                	</c:if>
					                	</form>
					                </c:forEach>
					            </div>
					           
					        </div>
					        <!--===================================================-->
					        <!--End Panel with Pagination-->
					
					    </div>
					</div>
					
					
					
					
                </div>
                <!--===================================================-->
                <!--End page content-->
                
                
			</div>
		</div>
	</div>
	<script type="text/javascript">
	${message}
	</script>
</body>
</html>
