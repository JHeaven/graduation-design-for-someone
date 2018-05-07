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
<!-- bootstrap-wysiwyg -->
<link href="css/vendors/google-code-prettify/bin/prettify.min.css"
	rel="stylesheet">
<!-- Select2 -->
<link href="css/vendors/select2/dist/css/select2.min.css"
	rel="stylesheet">
<!-- Switchery -->
<link href="css/vendors/switchery/dist/switchery.min.css"
	rel="stylesheet">
<!-- starrr -->
<link href="css/vendors/starrr/dist/starrr.css" rel="stylesheet">
<!-- bootstrap-daterangepicker -->
<link href="css/vendors/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">

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
          
          
          
          
          
          
          
          
          <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>修改我的基本信息 <span style="color: red;">${message1}</span></h2>
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
                    <br />
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" action="/CivilServiceExamination/stu/doUpdate" method="post" onsubmit="return check();">

                      <div class="form-group">
										<label class="col-sm-3 control-label"
											for="demo-hor-inputemail">ID</label>
										<div class="col-sm-9">
											<input type="text" id="demo-hor-inputemail"
												class="form-control" name="id" value="${stu.id}"
												readonly="readonly">
										</div>
									</div>



									<div class="form-group">
										<label class="col-sm-3 control-label"
											for="demo-hor-inputemail2">姓名</label>
										<div class="col-sm-9">
											<input type="text" id="demo-hor-inputemail2"
												class="form-control" name="name" value="${stu.name}">
										</div>
									</div>



									<div class="form-group">
										<label class="col-sm-3 control-label"
											for="demo-hor-inputemail3">性别</label>
										<div class="col-sm-9" id="demo-hor-inputemail3">
											<select name="sex" class="form-control">
												<option value="${stu.sex}">当前：${stu.sex}</option>
												<option value="男">男</option>
												<option value="女">女</option>
											</select>
										</div>
									</div>


									<div class="form-group">
										<label class="col-sm-3 control-label"
											for="demo-hor-inputemail4">生日</label>
										<div class="col-sm-9">
											<input type="date" id="demo-hor-inputemail4"
												class="form-control" name="birth"
												value="<fmt:formatDate value="${stu.birth}" type="both" pattern="yyyy-MM-dd"/>">
										</div>
									</div>






									<div class="form-group">
										<label class="col-sm-3 control-label"
											for="demo-hor-inputemail6">地址</label>
										<div class="col-sm-9">
											<input type="text" id="demo-hor-inputemail6"
												class="form-control" name="address" value="${stu.address}">
										</div>
									</div>



									<div class="form-group">
										<label class="col-sm-3 control-label"
											for="demo-hor-inputemail7">手机号</label>
										<div class="col-sm-9">
											<input type="text" id="demo-hor-inputemail7"
												class="form-control" name="phone" value="${stu.phone}">
										</div>
									</div>





									<div class="form-group">
										<label class="col-sm-3 control-label"
											for="demo-hor-inputemail8">身份证</label>
										<div class="col-sm-9">
											<input type="text" id="demo-hor-inputemail8"
												class="form-control" name="idNum" value="${stu.idNum}">
										</div>
									</div>

					                    
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail13">登录名</label>
					                        <div class="col-sm-9">
					                            <input type="text" id="demo-hor-inputemail13" class="form-control" name="loginName" value="${stu.loginName}" readonly="readonly">
					                        </div>
					                    </div>
					                    
					                    
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail14">密码</label>
					                        <div class="col-sm-9">
					                            <input type="text" id="demo-hor-inputemail14" class="form-control" name="loginPass" value="******">
					                        </div>
					                    </div>
                      
                      
                      
                      
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
						  <button class="btn btn-primary" type="reset">重置</button>
                          <button type="submit" class="btn btn-success">提交更新</button>
                        </div>
                      </div>

                    </form>
                  </div>
                </div>
              </div>
            </div>
            
            
            
            
          
          
        </div>
        <!-- /page content -->
        
        </div>
        </div>
        
        
        
        

    <!--===================================================-->
    <!-- END OF CONTAINER -->
    
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
    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
    
    
    <script type="text/javascript">
    ${message}
    
    var check = function(){
		  var sfz=document.getElementById("demo-hor-inputemail8").value;
		  if(sfz.length != 18){
			  alert("您的身份证位数有误！");
			  return false;
		  }
		  
		  return true;
	  }
    </script>
  </body>
</html>
