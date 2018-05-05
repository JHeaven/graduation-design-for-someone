<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_update.jsp' starting page</title>
    
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
                                    <li><a href="">个人信息</a></li>
                                    <li>我的个人信息</li>
                                </ul>
                                <h4>我的个人信息</h4>
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
                                        <h4 class="panel-title">以下内容为我的个人信息</h4>
                                        <p>您可以随意修改相应信息，别忘了点提交.</p>
                                    </div><!-- panel-heading -->
                                    
                                    <div class="panel-body nopadding">
          
                                        <form class="form-horizontal form-bordered" method="post" action="/ArrangeCourse/user/doUpdate">
                                        
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">ID</label>
                                                <div class="col-sm-10">
                                                    <input type="text" placeholder="" class="form-control" name="id" value="${user.id}" readonly="readonly"/>
                                                </div>
                                            </div><!-- form-group -->
                                            
                                            
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">登录帐号</label>
                                                <div class="col-sm-10">
                                                    <input type="text" placeholder="" class="form-control" name="loginName" value="${user.loginName}" readonly="readonly"/>
                                                </div>
                                            </div><!-- form-group -->
                                            
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">登录密码</label>
                                                <div class="col-sm-10">
                                                    <input type="text" placeholder="" class="form-control" name="loginPass" value="******"/>
                                                </div>
                                            </div><!-- form-group -->
                                            
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">您的角色</label>
                                                <div class="col-sm-10">
                                                    <select name="site" class="form-control" >
                                                    	<option value="${user.site}">当前为：${user.site}</option>
                                                    	<option value="教师">教师</option>
                                                    	<option value="学生">学生</option>
                                                    </select>
                                                </div>
                                            </div><!-- form-group -->
                                                
                                                
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">电子邮件</label>
                                                <div class="col-sm-10">
                                                    <input type="email" placeholder="" class="form-control" name="email" value="${user.email}"/>
                                                </div>
                                            </div><!-- form-group -->
                                            
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">姓名</label>
                                                <div class="col-sm-10">
                                                    <input type="text" placeholder="" class="form-control" name="name" value="${user.name}"/>
                                                </div>
                                            </div><!-- form-group -->
                                            
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">学号、工号</label>
                                                <div class="col-sm-10">
                                                    <input type="text" placeholder="" class="form-control" name="sId" value="${user.sId}"/>
                                                </div>
                                            </div><!-- form-group -->
                                            
                                            <div class="form-group">
                                                <button class="btn btn-danger btn-lg btn-block">保存我的修改</button>
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
        <script src="js/bootstrap-timepicker.min.js"></script>
        <script src="js/jquery.maskedinput.min.js"></script>
        <script src="js/select2.min.js"></script>
        <script src="js/colorpicker.js"></script>
        <script src="js/dropzone.min.js"></script>

        <script src="js/custom.js"></script>
        
        
        <script type="text/javascript">
        ${message}
        </script>
  </body>
</html>
