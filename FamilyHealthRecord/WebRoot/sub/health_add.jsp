<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>${LoginFlage.loginName}</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- The styles -->
	<link id="bs-css" href="css/bootstrap-cerulean.css" rel="stylesheet">
	<style type="text/css">
	  body {
		padding-bottom: 40px;
	  }
	  .sidebar-nav {
		padding: 9px 0;
	  }
	</style>
	<link href="css/bootstrap-responsive.css" rel="stylesheet">
	<link href="css/charisma-app.css" rel="stylesheet">
	<link href="css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
	<link href='css/fullcalendar.css' rel='stylesheet'>
	<link href='css/fullcalendar.print.css' rel='stylesheet'  media='print'>
	<link href='css/chosen.css' rel='stylesheet'>
	<link href='css/uniform.default.css' rel='stylesheet'>
	<link href='css/colorbox.css' rel='stylesheet'>
	<link href='css/jquery.cleditor.css' rel='stylesheet'>
	<link href='css/jquery.noty.css' rel='stylesheet'>
	<link href='css/noty_theme_default.css' rel='stylesheet'>
	<link href='css/elfinder.min.css' rel='stylesheet'>
	<link href='css/elfinder.theme.css' rel='stylesheet'>
	<link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
	<link href='css/opa-icons.css' rel='stylesheet'>
	<link href='css/uploadify.css' rel='stylesheet'>

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- The fav icon -->
	<link rel="shortcut icon" href="img/favicon.ico">
  </head>
  
  <body>
 <div id="content" class="span12" style="width: 98%">
			<!-- content starts -->
			

			<div>
				<ul class="breadcrumb">
					<li>
						<a href="#">健康档案管理</a> <span class="divider">/</span>
					</li>
					<li>
						<a href="#">添加家人健康信息</a>
					</li>
				</ul>
			</div>
			
			

			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-edit"></i> 添加家人健康信息</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal" method="post" action="/FamilyHealthRecord/health-add.do">
							<fieldset>
							<table>
							<tr>
							<td>
									
							
							
							  <div class="control-group">
								<label class="control-label" for="focusedInput">我的ID</label>
								<div class="controls">
								  <input class="input-xlarge" id="focusedInput" readonly type="text" name="userId" value="${LoginFlage.id}" style="height: 4%">
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">姓名</label>
								<div class="controls">
								  <input class="input-xlarge" id="focusedInput" type="text"  value="" name="name" style="height: 4%">
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">性别</label>
								<div class="controls">
								  <select id="selectError3" name="sex">
									<option value="男">男</option>
									<option value="女">女</option>
								  </select>
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">出生日期</label>
								<div class="controls">
								  <input type="text" class="input-xlarge datepicker" id="date01" name="birth" value="05/02/2017" style="height: 4%">
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">电话</label>
								<div class="controls">
								  <input class="input-xlarge" id="focusedInput"  value="18052121025"  type="text" name="phone" style="height: 4%">
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">身高（CM）</label>
								<div class="controls">
								  <input class="input-xlarge" id="focusedInput"  value="178" type="text" name="height" style="height: 4%">
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">体重（KG）</label>
								<div class="controls">
								  <input class="input-xlarge" id="focusedInput" value="66" type="text" name="weight" style="height: 4%">
								</div>
							  </div>
							  
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">血型</label>
								<div class="controls">
								  <input class="input-xlarge" id="focusedInput" value="O" type="text" name="xuexing" style="height: 4%">
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">地址</label>
								<div class="controls">
								  <input class="input-xlarge" id="focusedInput" type="text" name="address" style="height: 4%" value="地球-中国-江苏">
								</div>
							  </div>
							  
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">家庭病史</label>
								<div class="controls">
								  <textarea class="autogrow" id="focusedInput" name="jiaTingBingShi">家庭病史临时数据</textarea>
								</div>
							  </div>
							  
							  
							</td>
							<td>
									
									
							  <div class="control-group">
								<label class="control-label" for="focusedInput">既往病史</label>
								<div class="controls">
								  <textarea class="autogrow" id="focusedInput" name="jiWangBingShi">既往病史临时数据</textarea>
								</div>
							  </div>
									
									
							  <div class="control-group">
								<label class="control-label" for="focusedInput">现有病史</label>
								<div class="controls">
								  <textarea class="autogrow" id="focusedInput" name="xianYouBingShi">现在病史临时数据</textarea>
								</div>
							  </div>
									
							
							
							  <div class="control-group">
								<label class="control-label" for="focusedInput">治疗记录</label>
								<div class="controls">
								  <textarea class="autogrow" id="focusedInput" name="zhiLiaoJiLu">治疗记录临时数据</textarea>
								</div>
							  </div>
									
									
									
									
							<div class="control-group">
								<label class="control-label" for="focusedInput">职业经历</label>
								<div class="controls">
								  <textarea class="autogrow" id="focusedInput" name="zhiYeJingLi">职业经历临时数据</textarea>
								</div>
							  </div>
									
									
									
							<div class="control-group">
								<label class="control-label" for="focusedInput">生活习惯</label>
								<div class="controls">
								  <textarea class="autogrow" id="focusedInput" name="shengHuoXiGuan">生活习惯临时数据</textarea>
								</div>
							  </div>
									
									
						
							<div class="control-group">
								<label class="control-label" for="focusedInput">饮食习惯</label>
								<div class="controls">
								  <textarea class="autogrow" id="focusedInput" name="yingShiXiGuan">饮食习惯临时数据</textarea>
								</div>
							  </div>
							</td>
							</tr>
							</table>
							  
							
						<div class="form-actions">
								<button type="submit" class="btn btn-primary">确认添加</button>
							  </div>
							</fieldset>
						  </form>
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
			
    
					<!-- content ends -->
			</div><!--/#content.span10-->
				</div><!--/fluid-row-->
			
	<!-- external javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<!-- jQuery -->
	<script src="js/jquery-1.7.2.min.js"></script>
	<!-- jQuery UI -->
	<script src="js/jquery-ui-1.8.21.custom.min.js"></script>
	<!-- transition / effect library -->
	<script src="js/bootstrap-transition.js"></script>
	<!-- alert enhancer library -->
	<script src="js/bootstrap-alert.js"></script>
	<!-- modal / dialog library -->
	<script src="js/bootstrap-modal.js"></script>
	<!-- custom dropdown library -->
	<script src="js/bootstrap-dropdown.js"></script>
	<!-- scrolspy library -->
	<script src="js/bootstrap-scrollspy.js"></script>
	<!-- library for creating tabs -->
	<script src="js/bootstrap-tab.js"></script>
	<!-- library for advanced tooltip -->
	<script src="js/bootstrap-tooltip.js"></script>
	<!-- popover effect library -->
	<script src="js/bootstrap-popover.js"></script>
	<!-- button enhancer library -->
	<script src="js/bootstrap-button.js"></script>
	<!-- accordion library (optional, not used in demo) -->
	<script src="js/bootstrap-collapse.js"></script>
	<!-- carousel slideshow library (optional, not used in demo) -->
	<script src="js/bootstrap-carousel.js"></script>
	<!-- autocomplete library -->
	<script src="js/bootstrap-typeahead.js"></script>
	<!-- tour library -->
	<script src="js/bootstrap-tour.js"></script>
	<!-- library for cookie management -->
	<script src="js/jquery.cookie.js"></script>
	<!-- calander plugin -->
	<script src='js/fullcalendar.min.js'></script>
	<!-- data table plugin -->
	<script src='js/jquery.dataTables.min.js'></script>

	<!-- chart libraries start -->
	<script src="js/excanvas.js"></script>
	<script src="js/jquery.flot.min.js"></script>
	<script src="js/jquery.flot.pie.min.js"></script>
	<script src="js/jquery.flot.stack.js"></script>
	<script src="js/jquery.flot.resize.min.js"></script>
	<!-- chart libraries end -->

	<!-- select or dropdown enhancer -->
	<script src="js/jquery.chosen.min.js"></script>
	<!-- checkbox, radio, and file input styler -->
	<script src="js/jquery.uniform.min.js"></script>
	<!-- plugin for gallery image view -->
	<script src="js/jquery.colorbox.min.js"></script>
	<!-- rich text editor library -->
	<script src="js/jquery.cleditor.min.js"></script>
	<!-- notification plugin -->
	<script src="js/jquery.noty.js"></script>
	<!-- file manager library -->
	<script src="js/jquery.elfinder.min.js"></script>
	<!-- star rating plugin -->
	<script src="js/jquery.raty.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script src="js/jquery.iphone.toggle.js"></script>
	<!-- autogrowing textarea plugin -->
	<script src="js/jquery.autogrow-textarea.js"></script>
	<!-- multiple file upload plugin -->
	<script src="js/jquery.uploadify-3.1.min.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="js/jquery.history.js"></script>
	<!-- application script for Charisma demo -->
	<script src="js/charisma.js"></script>
	
	<script type="text/javascript">
		window.parent.frames.notyText("请填写家人健康信息表！");
	</script>
  </body>
</html>
