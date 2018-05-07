<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
						<a href="#">问题汇总</a> <span class="divider">/</span>
					</li>
					<li>
						<a href="#">查看问题</a>
					</li>
				</ul>
			</div>
			
			

			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-edit"></i> 健康问题咨询【下拉打开问题】</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-down"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content" style="display: none;">
						<form class="form-horizontal" method="post" action="/FamilyHealthRecord/question-ans.do">
							<fieldset>
							<table>
							<tr>
							<td>
							  <div class="control-group">
								<label class="control-label" for="focusedInput">用户的ID</label>
								<div class="controls">
								  <input class="input-xlarge" id="focusedInput" readonly type="text" name="userId" value="${question.userId}" style="height: 4%">
								</div>
							  </div>
							
							<div class="control-group">
								<label class="control-label" for="focusedInput">咨询数据库ID</label>
								<div class="controls">
								  <input class="input-xlarge" id="focusedInput" readonly type="text" name="id" value="${question.id}" style="height: 4%">
								</div>
							  </div>
							  
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">为他的家人咨询</label>
								<div class="controls">
								  <select id="selectError3">
								  	<option>${question.peopleName}</option>
								  </select>
								</div>
							  </div>
							  
									
							<div class="control-group">
								<label class="control-label" for="focusedInput">详情描述</label>
								<div class="controls">
								  ${question.ask}
								</div>
							  </div>
							  
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">我的诊断</label>
								<div class="controls">
								  <textarea class="cleditor" id="editor" rows="3" name="ans"></textarea>
								</div>
							  </div>
							  
							  
							</td>
							</tr>
							</table>
							  
							
						<div class="form-actions">
								<button type="submit" class="btn btn-primary">确认回复</button>
							  </div>
							</fieldset>
						  </form>
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
			
			
			
			
			
			
			
			
			
			
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-edit"></i> ${r.name} 的健康信息</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal" method="post" action="/FamilyHealthRecord/health-update.do">
							<fieldset>
							<table>
							<tr>
							<td>
									
							
							
							  <div class="control-group">
								<label class="control-label" for="focusedInput">数据库档案ID</label>
								<div class="controls">
								  <input class="input-xlarge" id="focusedInput" readonly type="text" name="id" value="${r.id}" style="height: 4%">
								</div>
							  </div>
							  
							   <div class="control-group">
								<label class="control-label" for="focusedInput">用户所属ID</label>
								<div class="controls">
								  <input class="input-xlarge" id="focusedInput" readonly type="text" name="userId" value="${r.userId}" style="height: 4%">
								</div>
							  </div>
							  
							  
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">姓名</label>
								<div class="controls">
								  <input class="input-xlarge" id="focusedInput" type="text"  value="${r.name}" name="name" style="height: 4%">
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">性别</label>
								<div class="controls">
								  <select id="selectError3" name="sex">
									<option value="${r.sex}">${r.sex}</option>
									<option value="男">男</option>
									<option value="女">女</option>
								  </select>
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">出生日期</label>
								<div class="controls">
								  <input type="text" class="input-xlarge datepicker" id="date01" name="birth" value="<fmt:formatDate value="${r.birth}" type="both" pattern="MM/dd/yyyy"/>" style="height: 4%">
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">电话</label>
								<div class="controls">
								  <input class="input-xlarge" id="focusedInput"  value="${r.phone}"  type="text" name="phone" style="height: 4%">
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">身高（CM）</label>
								<div class="controls">
								  <input class="input-xlarge" id="focusedInput"  value="${r.height}" type="text" name="height" style="height: 4%">
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">体重（KG）</label>
								<div class="controls">
								  <input class="input-xlarge" id="focusedInput" value="${r.weight}" type="text" name="weight" style="height: 4%">
								</div>
							  </div>
							  
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">血型</label>
								<div class="controls">
								  <input class="input-xlarge" id="focusedInput" value="${r.xuexing}" type="text" name="xuexing" style="height: 4%">
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">地址</label>
								<div class="controls">
								  <input class="input-xlarge" id="focusedInput" type="text" name="address" style="height: 4%" value="${r.address}">
								</div>
							  </div>
							  
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">家庭病史</label>
								<div class="controls">
								  <textarea class="autogrow" id="focusedInput" name="jiaTingBingShi">${r.jiaTingBingShi}</textarea>
								</div>
							  </div>
							  
							  
							</td>
							<td>
									
									
							  <div class="control-group">
								<label class="control-label" for="focusedInput">既往病史</label>
								<div class="controls">
								  <textarea class="autogrow" id="focusedInput" name="jiWangBingShi">${r.jiWangBingShi}</textarea>
								</div>
							  </div>
									
									
							  <div class="control-group">
								<label class="control-label" for="focusedInput">现有病史</label>
								<div class="controls">
								  <textarea class="autogrow" id="focusedInput" name="xianYouBingShi">${r.xianYouBingShi}</textarea>
								</div>
							  </div>
									
							
							
							  <div class="control-group">
								<label class="control-label" for="focusedInput">治疗记录</label>
								<div class="controls">
								  <textarea class="autogrow" id="focusedInput" name="zhiLiaoJiLu">${r.zhiLiaoJiLu}</textarea>
								</div>
							  </div>
									
									
									
									
							<div class="control-group">
								<label class="control-label" for="focusedInput">职业经历</label>
								<div class="controls">
								  <textarea class="autogrow" id="focusedInput" name="zhiYeJingLi">${r.zhiYeJingLi}</textarea>
								</div>
							  </div>
									
									
									
							<div class="control-group">
								<label class="control-label" for="focusedInput">生活习惯</label>
								<div class="controls">
								  <textarea class="autogrow" id="focusedInput" name="shengHuoXiGuan">${r.shengHuoXiGuan}</textarea>
								</div>
							  </div>
									
									
						
							<div class="control-group">
								<label class="control-label" for="focusedInput">饮食习惯</label>
								<div class="controls">
								  <textarea class="autogrow" id="focusedInput" name="yingShiXiGuan">${r.yingShiXiGuan}</textarea>
								</div>
							  </div>
							</td>
							</tr>
							</table>
							  
							
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
	
	<script src="js/bootstrap-wysiwyg.js"></script>
	
	<script type="text/javascript">
		${message}
	</script>
  </body>
</html>
