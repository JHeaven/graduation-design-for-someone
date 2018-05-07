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


        
    <!--Switchery [ OPTIONAL ]-->
    <link href="plugins/switchery/switchery.min.css" rel="stylesheet">


    <!--Bootstrap Select [ OPTIONAL ]-->
    <link href="plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet">


    <!--Bootstrap Tags Input [ OPTIONAL ]-->
    <link href="plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.css" rel="stylesheet">


    <!--Chosen [ OPTIONAL ]-->
    <link href="plugins/chosen/chosen.min.css" rel="stylesheet">

    <!--Bootstrap Timepicker [ OPTIONAL ]-->
    <link href="plugins/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet">


    <!--Bootstrap Datepicker [ OPTIONAL ]-->
    <link href="plugins/bootstrap-datepicker/bootstrap-datepicker.min.css" rel="stylesheet">





    
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
    <script src="js/nifty.js"></script>






    <!--=================================================-->
    
    <!--Demo script [ DEMONSTRATION ]-->
    <script src="js/demo/nifty-demo.min.js"></script>

    
    <!--Switchery [ OPTIONAL ]-->
    <script src="plugins/switchery/switchery.min.js"></script>


    <!--Bootstrap Select [ OPTIONAL ]-->
    <script src="plugins/bootstrap-select/bootstrap-select.min.js"></script>


    <!--Bootstrap Tags Input [ OPTIONAL ]-->
    <script src="plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>


    <!--Chosen [ OPTIONAL ]-->
    <script src="plugins/chosen/chosen.jquery.min.js"></script>


    <!--Bootstrap Timepicker [ OPTIONAL ]-->
    <script src="plugins/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>


    <!--Bootstrap Datepicker [ OPTIONAL ]-->
    <script src="plugins/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>


    
    <style type="text/css">
    body {
		font-family: "Verdana", "Hiragino Sans GB", "Microsoft YaHei","WenQuanYi Micro Hei", sans-serif;
	}
    </style>
  </head>
  
  <body>
    <div id="container" class="effect aside-float aside-bright mainnav-lg">
        
        <!--NAVBAR-->
        <!--===================================================-->

        <div class="boxed">

            <!--CONTENT CONTAINER-->
            <!--===================================================-->
            <div id="content-container">
                
                <!--Page Title-->
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <div id="page-title">
                    <h1 class="page-header text-overflow">修改书本</h1>

                    
                </div>

                <!--Page content-->
                <!--===================================================-->
                <div id="page-content">
                    
					<div class="row">
					    
					    <div class="col-sm-12">
					        <div class="panel">
					            <div class="panel-heading">
					                <h3 class="panel-title"> 请填写一下内容并提交</h3>
					            </div>
					
					            <!--Horizontal Form-->
					            <!--===================================================-->
					            <form id="myform" class="form-horizontal" method="post" action="/TextbookReservation/book/bookDoUpdate">
					                <div class="panel-body">
					                    
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail2">书本名称</label>
					                        <div class="col-sm-9">
					                            <input type="text" id="demo-hor-inputemail2" class="form-control" name="name" value="${book.name}">
					                            <input type="hidden" name="id" value="${book.id}">
					                        </div>
					                    </div>
					                    
					                    
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail2">书本出版社</label>
					                        <div class="col-sm-9">
					                            <input type="text" id="demo-hor-inputemail2" class="form-control" name="publish"  value="${book.publish}">
					                        </div>
					                    </div>
					                    
					                    
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail2">书号</label>
					                        <div class="col-sm-9">
					                            <input type="text" id="demo-hor-inputemail2" class="form-control" name="bookId" value="${book.bookId}">
					                        </div>
					                    </div>
					                    
					                    
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail2">版别</label>
					                        <div class="col-sm-9">
					                            <input type="text" id="demo-hor-inputemail2" class="form-control" name="level" value="${book.level}">
					                        </div>
					                    </div>
					                    
					                    
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail2">种类</label>
					                        <div class="col-sm-9">
					                        	<select name="type" class="form-control">
					                        			<option value="${book.type}">当前： "${book.type}"</option>
					                        		<c:forEach var="p" items="${allType}">
					                        			<option value="${p.name}">${p.name}</option>
					                        		</c:forEach>
					                        	</select>
					                        </div>
					                    </div>
					                    
					                       <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail2">出版年份</label>
					                        <div class="col-sm-9">
					                            <input type="text" id="demo-hor-inputemail2" class="form-control" name="year"  value="${book.year}">
					                        </div>
					                    </div>
					                    
					                    
					                    
					                   <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail2">主要作者</label>
					                        <div class="col-sm-9">
					                            <input type="text" id="demo-hor-inputemail2" class="form-control" name="author"  value="${book.author}">
					                        </div>
					                    </div>
					                    
					                    
					                       
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail2">主要作者为本校老师
					                		</label>
					                        <div class="col-sm-9">
					                        	<select name="sAuthor" class="form-control">
					                        			<option value="${book.sAuthor}">当前：${book.sAuthor}</option>
					                        			<option value="是">是</option>
					                        			<option value="否">否</option>
					                        	</select> 
					                        </div> 
					                    </div>
					                    
					                    
					                    
					                </div>
					                
					                <div class="panel-footer text-right">
					                    <button class="btn btn-success" type="submit">提交</button>
					                </div>
					            </form>
					            <!--===================================================-->
					            <!--End Horizontal Form-->
					
					        </div>
					    </div>
					</div>
					
					
					
					
                </div>
                <!--===================================================-->
                <!--End page content-->


            </div>
            <!--===================================================-->
            <!--END CONTENT CONTAINER-->


        </div>

    </div>
    <!--===================================================-->
    <!-- END OF CONTAINER -->
    <script type="text/javascript">
    ${message}
    </script>
  </body>
</html>
