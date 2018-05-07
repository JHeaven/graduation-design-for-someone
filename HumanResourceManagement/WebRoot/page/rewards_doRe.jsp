<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	  
    <title>Gentelella Alela! | </title>

    <!-- Bootstrap -->
    <link href="/HumanResourceManagement/asserts/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/HumanResourceManagement/asserts/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/HumanResourceManagement/asserts/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="/HumanResourceManagement/asserts/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- bootstrap-wysiwyg -->
    <link href="/HumanResourceManagement/asserts/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
    <!-- Select2 -->
    <link href="/HumanResourceManagement/asserts/select2/dist/css/select2.min.css" rel="stylesheet">
    <!-- Switchery -->
    <link href="/HumanResourceManagement/asserts/switchery/dist/switchery.min.css" rel="stylesheet">
    <!-- starrr -->
    <link href="/HumanResourceManagement/asserts/starrr/dist/starrr.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="/HumanResourceManagement/asserts/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/HumanResourceManagement/asserts/css/custom.min.css" rel="stylesheet">
	<style type="text/css">
    body {
		font-family: "Verdana", "Hiragino Sans GB", "Microsoft YaHei","WenQuanYi Micro Hei", sans-serif;
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
                <h3>奖惩细节</h3>
              </div>

            </div>
            <div class="clearfix"></div>
          

            <div class="row">
              




<div class="col-md-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>请为【${staff.name}】填写奖惩细节</h2>
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
                    <form class="form-horizontal form-label-left" action="/HumanResourceManagement/rewards/doRewards" method="post">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">用户ID</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <input name="staffId" type="text" class="form-control" readonly="readonly" value="${staff.id}">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">用户姓名</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <input type="text" class="form-control" readonly="readonly" value="${staff.name}">
                        </div>
                      </div>
                      
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">奖惩细节 <span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <textarea class="form-control" rows="3" name="remark"></textarea>
                        </div>
                      </div>
                      
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
                          <button type="reset" class="btn btn-primary">重置</button>
                          <button type="submit" class="btn btn-success">提交</button>
                        </div>
                      </div>

                    </form>
                  </div>
                </div>
              </div>





              
            </div>

            

            


            
          </div>
        </div>
        <!-- /page content -->
        
        </div>
        </div>
        
    <!-- jQuery -->
    <script src="/HumanResourceManagement/asserts/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="/HumanResourceManagement/asserts/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="/HumanResourceManagement/asserts/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="/HumanResourceManagement/asserts/nprogress/nprogress.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="/HumanResourceManagement/asserts/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="/HumanResourceManagement/asserts/iCheck/icheck.min.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="/HumanResourceManagement/asserts/moment/min/moment.min.js"></script>
    <script src="/HumanResourceManagement/asserts/bootstrap-daterangepicker/daterangepicker.js"></script>
   
    <!-- jQuery Tags Input -->
    <script src="/HumanResourceManagement/asserts/jquery.tagsinput/src/jquery.tagsinput.js"></script>
    <!-- Switchery -->
    <script src="/HumanResourceManagement/asserts/switchery/dist/switchery.min.js"></script>
    <!-- Select2 -->
    <script src="/HumanResourceManagement/asserts/select2/dist/js/select2.full.min.js"></script>
    <!-- Parsley -->
    <script src="/HumanResourceManagement/asserts/parsleyjs/dist/parsley.min.js"></script>
    <!-- Autosize -->
    <script src="/HumanResourceManagement/asserts/autosize/dist/autosize.min.js"></script>
    <!-- jQuery autocomplete -->
    <script src="/HumanResourceManagement/asserts/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
    <!-- starrr -->
    <script src="/HumanResourceManagement/asserts/starrr/dist/starrr.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="/HumanResourceManagement/asserts/js/custom.min.js"></script>
    
  </body>
</html>
