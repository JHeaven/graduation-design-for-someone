<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/style.default.css" rel="stylesheet">
        <link href="css/jquery.tagsinput.css" rel="stylesheet" />
        <link href="css/toggles.css" rel="stylesheet" />
        <link href="css/bootstrap-timepicker.min.css" rel="stylesheet" />
        <link href="css/select2.css" rel="stylesheet" />
        <link href="css/colorpicker.css" rel="stylesheet" />
        <link href="css/dropzone.css" rel="stylesheet" />

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->

  </head>
  
  <body>
                    <div class="pageheader">
                        <div class="media">
                            <div class="pageicon pull-left">
                                <i class="fa fa-pencil"></i>
                            </div>
                            <div class="media-body">
                                <ul class="breadcrumb">
                                    <li><a href=""><i class="glyphicon glyphicon-home"></i></a></li>
                                    <li><a href="">排课详情</a></li>
                                    <li>修改排课详情</li>
                                </ul>
                                <h4>修改排课详情</h4>
                            </div>
                        </div><!-- media -->
                    </div><!-- pageheader -->
                    
                    <div class="contentpanel">
                        
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <div class="panel-btns">
                                            <a href="" class="panel-minimize tooltips" data-toggle="tooltip" title="Minimize Panel"><i class="fa fa-minus"></i></a>
                                            <a href="" class="panel-close tooltips" data-toggle="tooltip" title="Close Panel"><i class="fa fa-times"></i></a>
                                        </div><!-- panel-btns -->
                                        <h4 class="panel-title">以下内容为修改排课详情</h4>
                                        <p>您可以随意填写相应信息，别忘了点提交.</p>
                                    </div><!-- panel-heading -->
                                    
                                    <div class="panel-body nopadding">
          
                                        <form class="form-horizontal form-bordered" method="post" action="/ArrangeCourse/section/doupdate">
                                        
                                            
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">ID</label>
                                                <div class="col-sm-10">
                                                    <input type="number" placeholder="" class="form-control" name="id" value="${sec.id}" readonly="readonly"/>
                                                </div>
                                            </div><!-- form-group -->
                                            
                                            
                                            
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">编排日期</label>
                                                <div class="col-sm-10">
                                                    <input type="text" placeholder="" class="form-control" name="" value="<fmt:formatDate value="${sec.secDate}" type="date"/>" readonly="readonly"/>
                                                </div>
                                            </div><!-- form-group -->
                                            
                                            
                                            
                                             <div class="form-group">
                                                <label class="col-sm-2 control-label">教室名称</label>
                                                <div class="col-sm-10">
                                                    <input type="text" placeholder="" class="form-control" name="" value="${sec.roomName}"/>
                                                </div>
                                            </div><!-- form-group -->
                                            
                                            
                                            
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">上午第一节课</label>
                                                <div class="col-sm-10">
                                                    <select class="form-control" name="le1Id">
                                                    	<option value="${sec.le1Id}">${sec.le1Name}</option>
                                                    	<option value="">置空本课程</option>
                                                    	<c:forEach var="p" items="${list}">
                                                    		<option value="${p.id}">${p.cName}</option>
                                                    	</c:forEach>
                                                    </select>
                                                </div>
                                            </div><!-- form-group -->
                                            
                                            
                                            
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">上午第二节课</label>
                                                <div class="col-sm-10">
                                                    <select class="form-control" name="le2Id">
                                                    	<option value="${sec.le2Id}">${sec.le2Name}</option>
                                                    	<option value="">置空本课程</option>
                                                    	<c:forEach var="p" items="${list}">
                                                    		<option value="${p.id}">${p.cName}</option>
                                                    	</c:forEach>
                                                    </select>
                                                </div>
                                            </div><!-- form-group -->
                                            
                                            
                                            
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">下午第一节课</label>
                                                <div class="col-sm-10">
                                                    <select class="form-control" name="le3Id">
                                                    	<option value="${sec.le3Id}">${sec.le3Name}</option>
                                                    	<option value="">置空本课程</option>
                                                    	<c:forEach var="p" items="${list}">
                                                    		<option value="${p.id}">${p.cName}</option>
                                                    	</c:forEach>
                                                    </select>
                                                </div>
                                            </div><!-- form-group -->
                                            
                                            
                                            
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">下午第二节课</label>
                                                <div class="col-sm-10">
                                                    <select class="form-control" name="le4Id">
                                                    	<option value="${sec.le4Id}">${sec.le4Name}</option>
                                                    	<option value="">置空本课程</option>
                                                    	<c:forEach var="p" items="${list}">
                                                    		<option value="${p.id}">${p.cName}</option>
                                                    	</c:forEach>
                                                    </select>
                                                </div>
                                            </div><!-- form-group -->
                                            
                                            
                                             <div class="form-group">
                                                <label class="col-sm-2 control-label">晚上的课</label>
                                                <div class="col-sm-10">
                                                    <select class="form-control" name="le5Id">
                                                    	<option value="${sec.le5Id}">${sec.le5Name}</option>
                                                    	<option value="">置空本课程</option>
                                                    	<c:forEach var="p" items="${list}">
                                                    		<option value="${p.id}">${p.cName}</option>
                                                    	</c:forEach>
                                                    </select>
                                                </div>
                                            </div><!-- form-group -->
                                            
                                            
                                            
                                            <div class="form-group">
                                                <button class="btn btn-danger btn-lg btn-block">保存修改</button>
                                            </div><!-- form-group -->
                                        </form>          
                                    </div><!-- panel-body -->       
                                </div><!-- panel -->
                                
                            </div><!-- col-md-6 -->
                            
                            
                            
                            
                        </div><!-- row -->
                        
                        
                    
                    </div><!-- contentpanel -->
				<script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/jquery-migrate-1.2.1.min.js"></script>
        <script src="js/jquery-ui-1.10.3.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/modernizr.min.js"></script>
        <script src="js/pace.min.js"></script>
        <script src="js/retina.min.js"></script>
        <script src="js/jquery.cookies.js"></script>
        
        <script src="js/jquery.autogrow-textarea.js"></script>
        <script src="js/jquery.mousewheel.js"></script>
        <script src="js/jquery.tagsinput.min.js"></script>
        <script src="js/toggles.min.js"></script>
        <script src="js/jquery.maskedinput.min.js"></script>
        <script src="js/dropzone.min.js"></script>

        <script src="js/custom.js"></script>
        
        
        <script type="text/javascript">
        ${message}
        </script>
  </body>
</html>
