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

  </head>
  
  <body>
    <div class="container body">
      <div class="main_container">
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>新人建档</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>
            <div class="clearfix"></div>
          

            <div class="row">
              <div class="col-md-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>依次输入新员工的身份证号（必须为18位！）<br><span style="color: red;">${message1}</span> </h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                  
                    <form id="sfzform" class="form-horizontal form-label-left" action="/HumanResourceManagement/staff/addStaff" method="post">

                      

                      <div class="control-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">输入身份证</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <input id="tags_1" name="allnum" type="text" class="tags form-control" value="320281199412211511,320281199412211519,320281199412211518" />
                          <div id="suggestions-container" style="position: relative; float: left; width: 250px; margin: 10px;"></div>
                        </div>
                      </div>
                      
                      <input id="mmmmmtext" value="" name="mmmmmtext" hidden/>


                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
                          <button type="reset" class="btn btn-primary">重置</button>
                          <button type="button" class="btn btn-success" onclick="gettags();">提交</button>
                        </div>
                      </div>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
    <script type="text/javascript">
    function gettags(){
    	var mubiao = '';
    	obj1 = document.querySelectorAll('.tag');
    	for(var i=0,j=obj1.length;i<j;i++){
    		obj2 = obj1[i].querySelector('span');
    		mubiao = mubiao + "," + obj2.innerHTML.substr(0, 18);
    		$('#mmmmmtext').val(mubiao.substr(1));
		}
    	$('#sfzform').submit();
    }
    </script>
  </body>
</html>
