<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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


    <!-- Bootstrap -->
    <link href="css/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="css/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="css/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="css/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- bootstrap-progressbar -->
    <link href="css/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- PNotify -->
    <link href="css/vendors/pnotify/dist/pnotify.css" rel="stylesheet">
    <link href="css/vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet">
    <link href="css/vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
<style type="text/css">
body {
	font-family: "Verdana", "Hiragino Sans GB", "Microsoft YaHei",
		"WenQuanYi Micro Hei", sans-serif;
}
</style>
  </head>
  
  <body>
  
    <div class="container body"> 
      <div class="main_container">
      
      
      <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>公务员考试批次汇总</h3>
              </div>

              
            </div>


            <div class="">


              
            </div>

            <div class="col-md-12 col-sm-12 col-xs-12">
              
              
              <div class="x_panel">
                  <div class="x_title">
                    <h2><i class="fa fa-align-left"></i> 最近公务员考试 </h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <!-- start accordion -->
                    <div class="accordion" id="accordion" role="tablist" aria-multiselectable="true">
                      
                      
                      
                      <c:forEach var="p" items="${allCom}">
                      
                      <div class="panel">
                        <a class="panel-heading collapsed" role="tab" id="heading${p.id}" data-toggle="collapse" data-parent="#accordion" href="#collapse${p.id}" aria-expanded="false" aria-controls="collapse${p.id}">
                          <h4 class="panel-title"><span class="label label-table label-info">${p.status}</span>${p.name} <small>考试开始：<fmt:formatDate value="${p.fromTime}" type="both" pattern="yyyy年MM月dd日 HH时mm分"/> 考试结束 <fmt:formatDate value="${p.toTime}" type="both" pattern="yyyy年MM月dd日 HH时mm分"/></small></h4>
                        </a> 
                        <div id="collapse${p.id}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading${p.id}">
                          <div class="panel-body">
                            <p><strong>${p.name}<span class="label label-table label-info">${p.status}</span></strong>
                            </p>
                            详细公告：${p.ps}
                            <br>
                            
                            <c:if test="${p.status=='报名进行中'}">
	                    		<a class="btn btn-info" target="r" href="/CivilServiceExamination/game/ireg/${p.id}">我要报名</a>
	                    	</c:if>
	                    	
	                    	<c:if test="${userLoginFlag.loginName == 'admin'}">
		                    	<a class="btn btn-info" target="r" href="/CivilServiceExamination/game/goToUpdateCompetion/${p.id}">修改考试信息</a>
		                    	<a class="btn btn-danger" target="r" href="/CivilServiceExamination/game/delCompetion/${p.id}" onClick="return confirm('确定操作?');">删除考试</a>
		                    	<a class="btn btn-success" target="r" href="/CivilServiceExamination/game/allowRegCompetion/${p.id}">允许报名</a>
		                    	<a class="btn btn-warning" target="r" href="/CivilServiceExamination/game/refuseRegCompetion/${p.id}">报名截止</a>
		                    	<a class="btn btn-success" target="r" href="/CivilServiceExamination/game/showCompetionGrade/${p.id}">查看成绩</a>
	                    	</c:if>
					                    	
					                    	
                          </div>
                        </div>
                      </div>
                      
                      </c:forEach>
                      
                      
                    </div>
                    <!-- end of accordion -->


                  </div>
                </div>
              
              
              
              
              
            </div>

            
            

            <!-- Start to do list -->
            
            <!-- End to do list -->


            
          </div>
          <div class="clearfix"></div>
        </div>
        <!-- /page content -->
      
      
      
      
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
    <script src="css/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="css/vendors/iCheck/icheck.min.js"></script>
    <!-- PNotify -->
    <script src="css/vendors/pnotify/dist/pnotify.js"></script>
    <script src="css/vendors/pnotify/dist/pnotify.buttons.js"></script>
    <script src="css/vendors/pnotify/dist/pnotify.nonblock.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
	<script type="text/javascript">
	
	${message}
	</script>
	
	
  </body>
</html>
