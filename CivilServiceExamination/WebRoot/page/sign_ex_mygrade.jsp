<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	  

    <!-- Bootstrap -->
    <link href="css/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="css/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="css/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="css/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- bootstrap-wysiwyg -->
    <link href="css/vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
    <!-- Select2 -->
    <link href="css/vendors/select2/dist/css/select2.min.css" rel="stylesheet">
    <!-- Switchery -->
    <link href="css/vendors/switchery/dist/switchery.min.css" rel="stylesheet">
    <!-- starrr -->
    <link href="css/vendors/starrr/dist/starrr.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="css/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">






    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
    
<!--Morris.js [ OPTIONAL ]-->
<link href="plugins/morris-js/morris.min.css" rel="stylesheet">
    
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
      
      
      <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
            
              <div class="title_left">
                <h3>我的公务员考试成绩</h3>
              </div>
            </div>
            <div class="clearfix"></div>
            
            
            
            
            
					
					<c:forEach var="p" items="${allSign}">
					<!--Morris Charts -->
					<!--===================================================-->
					<div class="row">
						<div class="col-md-12">
							
						</div>
					    <div class="col-md-12">
					        <div class="panel">
					            <div class="panel-heading">
					                <h3 class="panel-title"><span style="color:orange;">【总分：${p.score}】</span>以下为【<fmt:formatDate value="${p.to}" type="both" pattern="yyyy年MM月dd日 HH时mm分"/>】结束的【${p.cName}】的成绩折线图</h3>
					            </div>
					            <div class="panel-body">
					
					                <!--Morris Line Chart placeholder-->
					                <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
					                <div id="demo-morris-line${p.id}" style="height:212px"></div>
					                <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
					
					            </div>
					        </div>
					    </div>
					</div>
					</c:forEach>
					
					
					
					
					
            </div>
            </div>
            
      
      
      
      
      </div></div>
      
      
      
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
    <!-- bootstrap-daterangepicker -->
    <script src="css/vendors/moment/min/moment.min.js"></script>
    <script src="css/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-wysiwyg -->
    <script src="css/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
    <script src="css/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
    <script src="css/vendors/google-code-prettify/src/prettify.js"></script>
    <!-- jQuery Tags Input -->
    <script src="css/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
    <!-- Switchery -->
    <script src="css/vendors/switchery/dist/switchery.min.js"></script>
    <!-- Select2 -->
    <script src="css/vendors/select2/dist/js/select2.full.min.js"></script>
    <!-- Parsley -->
    <script src="css/vendors/parsleyjs/dist/parsley.min.js"></script>
    <!-- Autosize -->
    <script src="css/vendors/autosize/dist/autosize.min.js"></script>
    <!-- jQuery autocomplete -->
    <script src="css/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
    <!-- starrr -->
    <script src="css/vendors/starrr/dist/starrr.js"></script>
    
    

<!--Morris.js [ OPTIONAL ]-->
<script src="plugins/morris-js/morris.min.js"></script>
<script src="plugins/morris-js/raphael-js/raphael.min.js"></script>
    
    
    
    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
    
    
    <c:forEach var="p" items="${allSign}">
	<script type="text/javascript">
	var day_data${p.id} = [
        ${p.jsonStr}
    ];
    Morris.Line({
        element: 'demo-morris-line${p.id}',
        data: day_data${p.id},
        xkey: 'timu',
        ykeys: ['fengshu'],
        labels: ['得分'],
        gridEnabled: false,
        gridLineColor: 'transparent',
        lineColors: ['#9440ed'],
        lineWidth: 5,
        parseTime: false,
        resize:true,
        hideHover: 'auto'
    });

	</script>
	</c:forEach>
	
	
    <script type="text/javascript">
    ${message}
    </script>
    
    
  </body>
</html>
