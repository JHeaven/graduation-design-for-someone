<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<!-- Ion.RangeSlider -->
    <link href="/HumanResourceManagement/asserts/normalize-css/normalize.css" rel="stylesheet">
    <link href="/HumanResourceManagement/asserts/ion.rangeSlider/css/ion.rangeSlider.css" rel="stylesheet">
    <link href="/HumanResourceManagement/asserts/ion.rangeSlider/css/ion.rangeSlider.skinFlat.css" rel="stylesheet">
    
    <!-- Custom Theme Style -->
    <link href="/HumanResourceManagement/asserts/css/custom.css" rel="stylesheet">

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
                    <h2>修改档案 <span style="color: red;">${message1}</span></h2>
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
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" action="/HumanResourceManagement/staff/doUpdate" method="post">

					  <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">唯一ID <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="id" name="id" value="${staff.id}" required="required" readonly="readonly" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">登陆帐号 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="loginName" name="loginName" value="${staff.loginName}" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">登陆密码 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="loginPass" name="loginPass"  required="required" value="******" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">姓名 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="name" name="name" value="${staff.name}" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">性别</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div id="gender" class="btn-group" data-toggle="buttons">
                            <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                              <input type="radio" name="sex" value="男"> &nbsp; 男 &nbsp;
                            </label>
                            <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                              <input type="radio" name="sex" value="女"> 女
                            </label>
                          </div>
                        </div>
                      </div>
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">生日 <span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="birth"  value="<fmt:formatDate value="${staff.birth}" type="both" pattern="MM/dd/yyyy"/>" class="form-control col-md-7 col-xs-12">
                          <input hidden type="text" id="birth_1"  value="<fmt:formatDate value="${staff.birth}" type="both" pattern="yyyy-MM-dd"/>" name="birth">
                        </div>
                      </div>
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">出生地<span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="birthPlace" name="birthPlace"  value="${staff.birthPlace}" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">民族<span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="nation" name="nation" value="${staff.nation}" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">身份证<span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="identification" name="identification" value="${staff.identification}" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">政治面貌<span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="political" name="political" value="${staff.political}" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">入司日期<span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">                        
                          <input type="text" id="enterdptDate"  value="<fmt:formatDate value="${staff.enterdptDate}" type="both" pattern="MM/dd/yyyy"/>" class="form-control col-md-7 col-xs-12">
                          <input hidden type="text" id="enterdptDate_1"  value="<fmt:formatDate value="${staff.enterdptDate}" type="both" pattern="yyyy-MM-dd"/>" name="enterdptDate">
                        </div>
                      </div>
                      
                      
                      
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">所在部门<span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="hiredDepartment" name="hiredDepartment" value="${staff.hiredDepartment}" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">职务名称<span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="dutyName" name="dutyName" value="${staff.dutyName}" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      
                      
                      
               
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">起薪日期<span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="startpayDate"  value="<fmt:formatDate value="${staff.startpayDate}" type="both" pattern="MM/dd/yyyy"/>" class="form-control col-md-7 col-xs-12">
                          <input hidden type="text" id="startpayDate_1"  value="<fmt:formatDate value="${staff.startpayDate}" type="both" pattern="yyyy-MM-dd"/>" name="startpayDate">
                        </div>
                      </div>
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">原公司<span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="originalEnterprise" name="originalEnterprise" value="${staff.originalEnterprise}" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">原部门<span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="originalName" name="originalName" value="${staff.originalName}" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">原职务<span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="originalDuty" name="originalDuty" value="${staff.originalDuty}" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">毕业院校<span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="graduationSchool" name="graduationSchool" value="${staff.originalDuty}" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">毕业日期<span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="graduationDate"  value="<fmt:formatDate value="${staff.graduationDate}" type="both" pattern="MM/dd/yyyy"/>" class="form-control col-md-7 col-xs-12">
                          <input hidden type="text" id="graduationDate_1"  value="<fmt:formatDate value="${staff.graduationDate}" type="both" pattern="yyyy-MM-dd"/>" name="graduationDate">
                        </div>
                      </div>
                      
                             
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">学历<span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="schoolRecord" name="schoolRecord" value="${staff.schoolRecord}" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">专业<span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="major" name="major" value="${staff.major}" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">外语<span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="foreignLanguage" name="foreignLanguage" value="${staff.foreignLanguage}" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">地址<span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="address" name="address" value="${staff.address}" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">电话<span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="telphone" name="telphone" value="${staff.telphone}" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">E-MAIL<span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="email" name="email" value="${staff.email}" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                       
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">其他信息<span class="required"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="remark" name="remark" value="${staff.remark}" class="form-control col-md-7 col-xs-12">
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
    <script src="/HumanResourceManagement/asserts/js/custom.js"></script>

	<script type="text/javascript">
		$('#birth').daterangepicker({
			singleDatePicker : true,
			singleClasses : "picker_2"
		}, function(start, end, label) {
			console.log(start.toISOString().substring(0,10));
			$('#birth_1').val(start.toISOString().substring(0,10));
		});
		
		
		
		$('#enterdptDate').daterangepicker({
			singleDatePicker : true,
			singleClasses : "picker_2"
		}, function(start, end, label) {
			console.log(start.toISOString().substring(0,10));
			$('#enterdptDate_1').val(start.toISOString().substring(0,10));
		});
		
		
		$('#startpayDate').daterangepicker({
			singleDatePicker : true,
			singleClasses : "picker_2"
		}, function(start, end, label) {
			console.log(start.toISOString().substring(0,10));
			$('#startpayDate_1').val(start.toISOString().substring(0,10));
		});
		
		
		$('#graduationDate').daterangepicker({
			singleDatePicker : true,
			singleClasses : "picker_2"
		}, function(start, end, label) {
			console.log(start.toISOString().substring(0,10));
			$('#graduationDate_1').val(start.toISOString().substring(0,10));
		});
		
		
	</script>

</body>
</html>
