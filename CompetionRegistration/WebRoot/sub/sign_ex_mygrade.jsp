<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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



<!--Morris.js [ OPTIONAL ]-->
<link href="plugins/morris-js/morris.min.css" rel="stylesheet">






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


<!--Morris.js [ OPTIONAL ]-->
<script src="plugins/morris-js/morris.min.js"></script>
<script src="plugins/morris-js/raphael-js/raphael.min.js"></script>


<!--Sparkline [ OPTIONAL ]-->
<script src="plugins/sparkline/jquery.sparkline.min.js"></script>


<!--Flot Chart [ OPTIONAL ]-->
<script src="plugins/flot-charts/jquery.flot.min.js"></script>
<script src="plugins/flot-charts/jquery.flot.resize.min.js"></script>


<!--Flot Pie Chart [ OPTIONAL ]-->
<script src="plugins/flot-charts/jquery.flot.pie.min.js"></script>


<!--Gauge js [ OPTIONAL ]-->
<script src="plugins/gauge-js/gauge.min.js"></script>


<!--Easy Pie Chart [ OPTIONAL ]-->
<script src="plugins/easy-pie-chart/jquery.easypiechart.min.js"></script>


<!--Charts [ SAMPLE ]-->

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
                    <h1 class="page-header text-overflow">我的竞赛成绩汇总</h1>

                 
                </div>
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <!--End page title-->


                <!--Breadcrumb-->
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <ol class="breadcrumb">
					<li class="active"><a>若部分竞赛成绩未出，请等待竞赛结束！</a></li>
                </ol>
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <!--End breadcrumb-->

				<!--Page content-->
                <!--===================================================-->
                <div id="page-content">
                    
					
					
					
					
					<c:forEach var="p" items="${allSign}">
					<!--Morris Charts -->
					<!--===================================================-->
					<div class="row">
					    <div class="col-lg-12">
					        <div class="panel">
					            <div class="panel-heading">
					                <h3 class="panel-title">竞赛【${p.cName}】的成绩......[竞赛結束时间：<fmt:formatDate value="${p.to}" type="both" pattern="yyyy年MM月dd日 HH时mm分"/>]<span style="color: red;">【总得分：${p.score}】</span></h3>
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
		</div>
	</div>
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
        labels: ['分数得分'],
        gridEnabled: false,
        gridLineColor: 'transparent',
        lineColors: ['#045d97'],
        lineWidth: 10,
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
