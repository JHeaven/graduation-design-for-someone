<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
  </head>
  
  <body id="page-top" class="landing-page no-skin-config">
    <div id="wrapper">


        <div>
        
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-9">
                    <h2>最新电影</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a>主页</a>
                        </li>
                        <li>
                            最新电影
                        </li>
                    </ol>
                </div>
            </div>
        <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            
            <c:forEach var="p" items="${allFilm}" varStatus="status">
            <div class="col-md-4">
                <div class="contact-box">
                    <a href="/FilmReview/film/select/${p.id}">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" style="width: 90px; height: 120px;" src="${p.head}">
                            <div class="m-t-xs font-bold">评分：<span class="label label-warning pull-right">${p.score}</span></div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><span style="color: red;">TOP${status.count}<i class="fa fa-thermometer-4" aria-hidden="true"></i></span> <strong>${p.title}</strong></h3>
                        <address>
                        ${p.flagCon}
                        </address>
                    </div>
                    <div class="clearfix"></div>
                        </a>
                </div>
            </div>
             </c:forEach>
            
           
            
            
        </div>
        
        
                
        </div>

        </div>
        </div>

    <!-- Mainly scripts -->
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>
    
  </body>
</html>
