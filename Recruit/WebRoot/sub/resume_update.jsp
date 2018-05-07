<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
        
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta charset="utf-8" />
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	 
	<link href="assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="assets/css/animate.min.css" rel="stylesheet" />
	<link href="assets/css/style.min.css" rel="stylesheet" />
	<link href="assets/css/style-responsive.min.css" rel="stylesheet" />
	<link href="assets/css/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
	<link href="assets/plugins/ionRangeSlider/css/ion.rangeSlider.css" rel="stylesheet" />
	<link href="assets/plugins/ionRangeSlider/css/ion.rangeSlider.skinNice.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" />
	<link href="assets/plugins/password-indicator/css/password-indicator.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap-combobox/css/bootstrap-combobox.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet" />
	<link href="assets/plugins/jquery-tag-it/css/jquery.tagit.css" rel="stylesheet" />
	
	
<!--Summernote [ OPTIONAL ]-->
<link href="assets/js/summernote/summernote.min.css" rel="stylesheet">

	
	
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
  </head>
  
  <body>
  
  
  <p>
                <a href="javascript:history.back(-1);" class="btn btn-success">
                    <i class="fa fa-arrow-circle-left"></i> 返回上一页
                </a>
            </p>
  
  
  <!-- begin #content -->
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li><a href="javascript:;">主頁</a></li>
				<li><a href="javascript:;">我的简历</a></li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">我的简历  <small>简历越完整，越容易被通知面试</small></h1>
			<!-- end page-header -->
			
			<!-- begin row -->
			<div class="row">
                <!-- begin col-6 -->
			    <div class="col-md-12">
			        <!-- begin panel -->
                    <div class="panel panel-inverse" data-sortable-id="form-plugins-1">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">简历查看</h4>
                        </div>
                        <div class="panel-body panel-form">
                            <form class="form-horizontal form-bordered" method="post" action="/Recruit/re/doUpdate">
                                
                                
                                 <div class="form-group">
                                    <label class="col-md-4 control-label">简历ID</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="id" value="${re.id}" readonly=""/>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">我的封面照片</label>
                                    <div class="col-md-8">
                                       <img alt="请在末尾个人评价中添加图片" src="${re.photo}" height="100px">
                                    </div>
                                </div>
                                
                                
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">姓名</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="name" value="${re.name}"  required />
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">性别</label>
                                    <div class="col-md-8">
                                    	<select name="sex" class="form-control">
                                    		<option value="${re.sex}">当前为：${re.sex}</option>
                                    		<option value="男">男</option>
                                    		<option value="女">女</option>
                                    	</select>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">生日</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="datepicker-autoClose" placeholder="生日" value="<fmt:formatDate value="${re.birth}" type="both" pattern="dd/MM/yyyy"/>" name="birth"   required />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label">身份证</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="sfz" value="${re.sfz}"    required />
                                    </div>
                                </div>
                                
                                
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">籍贯</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="jiguan" value="${re.jiguan}"   required />
                                    </div>
                                </div>
                                
                                 <div class="form-group">
                                    <label class="col-md-4 control-label">政治面貌</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="zhengzhi" value="${re.zhengzhi}"   required />
                                    </div>
                                </div>
                                
                                
                                 <div class="form-group">
                                    <label class="col-md-4 control-label">民族</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="mingzu" value="${re.mingzu}"   required />
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">通信地址</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="address" value="${re.address}"   required />
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">电话</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="phone" value="${re.phone}"   required />
                                    </div>
                                </div>
                                
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">email</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="email" value="${re.email}"  required  />
                                    </div>
                                </div>
                                
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">学历</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="xueli" value="${re.xueli}"   required />
                                    </div>
                                </div>
                                
                                
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">专业</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="zhuanye" value="${re.zhuanye}"   required />
                                    </div>
                                </div>
                                
                                
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">学校</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="school" value="${re.school}"   required />
                                    </div>
                                </div>
                                
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">获得荣誉</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="honor" value="${re.honor}"   required />
                                    </div>
                                </div>
                                
                                
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">奖学金</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="scholarship" value="${re.scholarship}"   required />
                                    </div>
                                </div>
                                
                                
                                
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">学生职务</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="sSection" value="${re.sSection}"   required />
                                    </div>
                                </div>
                                
                                
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">求职意向</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="tendence" value="${re.tendence}"   required />
                                    </div>
                                </div>
                                
                                
                                
                                
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">主要课程</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="mainSection" value="${re.mainSection}"  required  />
                                    </div>
                                </div>
                                
                                
                                
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">我的能力</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="skill" value="${re.skill}"   required />
                                    </div>
                                </div>
                                
                                
                                
                                
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">最近的实习、工作经验</label>
                                    <div class="col-md-8">
                                        <div class="input-group input-daterange">
                                            <input type="text" class="form-control" placeholder="开始时间" name="ex1From" value="<fmt:formatDate value="${re.ex1From}" type="both" pattern="dd/MM/yyyy"/>"   required />
                                            <span class="input-group-addon">到</span>
                                            <input type="text" class="form-control" placeholder="结束时间	"  name="ex1To" value="<fmt:formatDate value="${re.ex1To}" type="both" pattern="dd/MM/yyyy"/>"  required />
                                        </div>
                                    </div>
                                </div>
                                
                                
                                 
                                <div class="form-group">
                                    <label class="col-md-4 control-label"></label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="ex1Cor" value="${re.ex1Cor}" placeholder="实习工作经验描述"/>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label"></label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="ex1SectionRes" value="${re.ex1SectionRes}" placeholder="实习工作结果评价"/>
                                    </div>
                                </div>
                                
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">CET等级</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="cet" value="${re.cet}"/>
                                    </div>
                                </div>
                                
                                
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">计算机等级</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="ncre" value="${re.ncre}"/>
                                    </div>
                                </div>
                                
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">兴趣爱好</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="hobby" value="${re.hobby}"/>
                                    </div>
                                </div>
                                
                                
                                
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">个人评价<br>注：第一张图片将被作为简历封面照片</label>
                                    <div class="col-md-8">
                                        <textarea class="summernote" id="contents" name="idea" >${re.idea}</textarea>
                                    </div>
                                </div>
                                
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label"></label>
                                    <div class="col-md-8">
                                        <button type="submit" class="btn btn-sm btn-success">提交</button>
                                    </div>
                                </div>
                                
                                
                                
                                
                                
                                
                            </form>
                        </div>
                    </div>
                    <!-- end panel -->
                    <!-- begin panel -->
                    
                    <!-- end panel -->
                    <!-- begin panel -->
                    <!-- end panel -->
                </div>
                <!-- end col-6 -->
                <!-- begin col-6 -->
                
                <!-- end col-6 -->
            </div>
            <!-- end row -->
		<!-- end #content -->
  
  
  
  
  
  
  
  
  
  
  
  
    <!-- ================== BEGIN BASE JS ================== -->
	<script src="assets/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!--[if lt IE 9]>
		<script src="assets/crossbrowserjs/html5shiv.js"></script>
		<script src="assets/crossbrowserjs/respond.min.js"></script>
		<script src="assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script src="assets/plugins/ionRangeSlider/js/ion-rangeSlider/ion.rangeSlider.min.js"></script>
	<script src="assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
	<script src="assets/plugins/masked-input/masked-input.min.js"></script>
	<script src="assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
	<script src="assets/plugins/password-indicator/js/password-indicator.js"></script>
	<script src="assets/plugins/bootstrap-combobox/js/bootstrap-combobox.js"></script>
	<script src="assets/plugins/bootstrap-select/bootstrap-select.min.js"></script>
	<script src="assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>
	<script src="assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput-typeahead.js"></script>
	<script src="assets/plugins/jquery-tag-it/js/tag-it.min.js"></script>
	<script src="assets/js/form-plugins.demo.min.js"></script>
	<script src="assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
		<!--Summernote [ OPTIONAL ]-->
<script src="assets/js/summernote/summernote.js"></script>

<!--Summernote [ OPTIONAL ]-->
<script src="assets/js/summernote/lang/summernote-zh-CN.js"></script>

	
	<script>
		$(document).ready(function() {
			App.init();
			FormPlugins.init();
		});
		
		$(document).ready(function() {
			$('.summernote').summernote({
				height : '300px',
				focus: false,
				lang: 'zh-CN'
			});
		});

	        	${message}
	</script>
	 
  </body>
</html>
