<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

<link
	href="css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css"
	rel="stylesheet">

</head>

<body id="page-top" class="landing-page no-skin-config">
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>我的信息</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a>主页</a>
                        </li>
                        <li>
                            <a>我的信息</a>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        <div class="wrapper wrapper-content animated fadeInRight">
            
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>我的信息 </h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <form method="post" class="form-horizontal" action="/FilmReview/user/doUpdate2">
                                
                                
                                <div class="form-group"><label class="col-sm-2 control-label">ID</label>
                                    <div class="col-sm-10">
                                    	<input type="text" class="form-control" name="id" value="${user.id}" readonly="readonly">
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                
                                
                                <div class="form-group"><label class="col-sm-2 control-label">登录名</label>
                                    <div class="col-sm-10">
                                    	<input type="text" class="form-control" name="loginName" value="${user.loginName}" readonly="readonly">
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                
                                
                                
                                <div class="form-group"><label class="col-sm-2 control-label">登录密码</label>
                                    <div class="col-sm-10">
                                    	<input type="text" class="form-control" name="loginPass" value="******">
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                
                                <div class="form-group"><label class="col-sm-2 control-label">email</label>
                                    <div class="col-sm-10">
                                    	<input type="email" class="form-control" name="email" value="${user.email}">
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                
                                
                                
                                <div class="form-group"><label class="col-sm-2 control-label">手机</label>
                                    <div class="col-sm-10">
                                    	<input type="text" class="form-control" name="phone" value="${user.phone}">
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                
                                
                                
                                
                                
                                <div class="form-group"><label class="col-sm-2 control-label">昵称</label>
                                    <div class="col-sm-10">
                                    	<input type="text" class="form-control" name="nickName" value="${user.nickName}">
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                
                                <div class="form-group">
                                    <div class="col-sm-4 col-sm-offset-2">
                                        <button class="btn btn-white" type="reset">重置</button>
                                        <button class="btn btn-primary" type="submit">保存</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="pull-right">
                10GB of <strong>250GB</strong> Free.
            </div>
            <div>
                <strong>Copyright</strong> Example Company &copy; 2014-2017
            </div>
        </div>

        </div>
        
    <!-- Mainly scripts -->
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

    <!-- iCheck -->
    <script src="js/plugins/iCheck/icheck.min.js"></script>
        <script>
        	${message}
        </script>
  </body>
</html>