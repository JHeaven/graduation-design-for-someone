<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
	  

    <!-- Bootstrap -->
    <link href="css/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="css/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="css/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="css/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- bootstrap-wysiwyg -->
    <link href="css/vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
    <!-- Select2 -->
    <link href="css/vendors/select2/dist/css/select2.min.css" rel="stylesheet">
    <!-- Switchery -->
    <link href="css/vendors/switchery/dist/switchery.min.css" rel="stylesheet">
    <!-- starrr -->
    <link href="css/vendors/starrr/dist/starrr.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="css/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

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
      
      
      <form action="/CivilServiceExamination/game/doUpdateEx" method="post" id="xxxxxx">
      <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
            
              <div class="title_left">
                <h3>修改试题</h3>
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
            
            
            
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>题目详细<small></small></h2>
                  <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                  <div id="alerts"></div>
                  <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor-one">
                    <div class="btn-group">
                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
                      <ul class="dropdown-menu">
                      </ul>
                    </div>

                    <div class="btn-group">
                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
                      <ul class="dropdown-menu">
                        <li>
                          <a data-edit="fontSize 5">
                            <p style="font-size:17px">Huge</p>
                          </a>
                        </li>
                        <li>
                          <a data-edit="fontSize 3">
                            <p style="font-size:14px">Normal</p>
                          </a>
                        </li>
                        <li>
                          <a data-edit="fontSize 1">
                            <p style="font-size:11px">Small</p>
                          </a>
                        </li>
                      </ul>
                    </div>

                    <div class="btn-group">
                      <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
                      <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
                      <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
                      <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
                    </div>

                    <div class="btn-group">
                      <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
                      <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
                      <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
                      <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
                    </div>

                    <div class="btn-group">
                      <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
                      <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
                      <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
                      <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
                    </div>

                    <div class="btn-group">
                      <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
                      <div class="dropdown-menu input-append">
                        <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
                        <button class="btn" type="button">Add</button>
                      </div>
                      <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
                    </div>

                    <div class="btn-group">
                      <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a>
                      <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
                    </div>

                    <div class="btn-group">
                      <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
                      <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
                    </div>
                  </div>

                  <div id="editor-one" class="editor-wrapper">${ex.content}</div>

                  <input type="hidden" name="content" id="content"/>
                  <input type="hidden" name="id" value="${ex.id}"/>
                  <br />

                  <div class="ln_solid"></div>

                </div>
              </div>
            </div>
            
            </div>
            
            
            
            
            
            
            
            
            <div class="row">
						<div class="col-sm-12">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">题目答案</h3>
								</div>

								<!--Horizontal Form-->
								<!--===================================================-->
								<div class="panel-body">
									<div class="form-group">
										<label class="col-sm-3 control-label"></label>
										<div class="col-sm-9">
											<div class="radio">
												<input id="demo-form-radio1" class="magic-radio"
													type="radio" name="ans" value="A" <c:if test="${ex.ans=='A,'}">checked</c:if>>
												<label
													for="demo-form-radio1">选项A正确</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label"></label>
										<div class="col-sm-9">
											<div class="radio">
												<input id="demo-form-radio2" class="magic-radio"
													type="radio" name="ans" value="B" <c:if test="${ex.ans=='B,'}">checked</c:if>> <label
													for="demo-form-radio2">选项B正确</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label"></label>
										<div class="col-sm-9">
											<div class="radio">
												<input id="demo-form-radio3" class="magic-radio"
													type="radio" name="ans" value="C" <c:if test="${ex.ans=='C,'}">checked</c:if>> <label
													for="demo-form-radio3">选项C正确</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label"></label>
										<div class="col-sm-9">
											<div class="radio">
												<input id="demo-form-radio4" class="magic-radio"
													type="radio" name="ans" value="D" <c:if test="${ex.ans=='D,'}">checked</c:if>> <label
													for="demo-form-radio4">选项D正确</label>
											</div>
										</div>
									</div>
									
									
									<div class="form-group">
										<label class="col-sm-3 control-label"></label>
										<div class="col-sm-9">
											<div class="radio">
												<a class="btn btn-success" onclick="subLogin();">提交题目</a>
											</div>
										</div>
										
									</div>

								</div>

								<!--===================================================-->
								<!--End Horizontal Form-->

							</div>
						</div>
						<div class="col-sm-4" style="display: none;">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">题目答案(【填空题】请填写此处)</h3>
								</div>

								<!--Horizontal Form-->
								<!--===================================================-->
								<div class="panel-body">
									<div class="form-group">
										<label class="col-sm-3 control-label"
											for="demo-hor-inputemail">答案</label>
										<div class="col-sm-9">
											<input type="text" placeholder="" id="demo-hor-inputemail"
												class="form-control" name="ans">
										</div>
									</div>
								</div>

								<!--===================================================-->
								<!--End Horizontal Form-->

							</div>
						</div>
						<div class="col-sm-4" style="display: none;">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">题目答案(【判断题】请填写此处)</h3>
								</div>

								<!--Horizontal Form-->
								<!--===================================================-->
								<div class="panel-body">
									<div class="form-group">
										<label class="col-sm-3 control-label"></label>
										<div class="col-sm-9">
											<div class="radio">
												<input id="demo-form-radio5" class="magic-radio"
													type="radio" name="ans"  value="Y"> <label
													for="demo-form-radio5">正确</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label"></label>
										<div class="col-sm-9">
											<div class="radio">
												<input id="demo-form-radio6" class="magic-radio"
													type="radio" name="ans"  value="N"> <label
													for="demo-form-radio6">错误</label>
											</div>
										</div>
									</div>
								</div>
								<!--===================================================-->
								<!--End Horizontal Form-->

							</div>
						</div>
					</div>
					
					
					
					
					
					
					
					
					
					
					
            </div>
            </div>
            
      
      
      
      
      </form>
      
      
      </div></div>
      
      
      
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
    
    
    
    var subLogin = function(){
    	
    	//alert($("#editor-one").html());
    	//alert($("#content").text());
    	
    	
    	document.getElementById("content").value = document.getElementById("editor-one").innerHTML;
		document.getElementById("xxxxxx").submit();    
	}
    
    ${message}
    
    </script>
    
    
  </body>
</html>
