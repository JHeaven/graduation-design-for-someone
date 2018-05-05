<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'section_go.jsp' starting page</title>
    
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
                                    <li><a href="">排课管理</a></li>
                                    <li>自动排课</li>
                                </ul>
                                <h4>自动排课</h4>
                            </div>
                        </div><!-- media -->
                    </div><!-- pageheader -->
                    
                    <div class="contentpanel">
                        
                        <div class="row">
                            
                            
                            
                            
                            <div class="col-md-12">
                                <form action="/ArrangeCourse/section/dogo" method="post">
                                
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <div class="panel-btns">
                                            <a href="" class="panel-minimize tooltips" data-toggle="tooltip" title="Minimize Panel"><i class="fa fa-minus"></i></a>
                                            <a href="" class="panel-close tooltips" data-toggle="tooltip" title="Close Panel"><i class="fa fa-times"></i></a>
                                        </div><!-- panel-btns -->
                                        <h4 class="panel-title">请选择上课时间段</h4>
                                    </div><!-- panel-heading -->
                                    <div class="panel-body">
                                      
                                        <p>警告，本操作将【清空】所有已排课程记录，请想好了再继续，另外，本系统自动剔除时间段内的周六和周日。</p>
                                        <br />
                                        <label>请选择课程开始日期</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="mm/dd/yyyy" id="datepicker" name="from">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                        </div><!-- input-group -->
                                      
                                        <br />
                                      
                                        <br />
                                        <label>请选择课程结束日期</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="mm/dd/yyyy" id="datepicker-multiple" name="to">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                        </div><!-- input-group -->
                                      
                                        <br />
                                        <br />
                                      
                                        
                                        <label>想好了就点下面按钮开始排课吧【Tips:排課可能需要30秒左右，请耐心等待。】</label>
                                        <div class="input-group">
                                            <button class="btn btn-primary btn-block" type="submit">开始排课</button>
                                        </div><!-- input-group -->
                                      
                                      <br />
                                      
                                        
                                    </div><!-- panel-body -->
                                </div><!-- panel -->
                                </form>
                                
                                
                                
                            </div><!-- col-md-6 -->
                        </div><!-- row -->
                        
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
        <script>
            jQuery(document).ready(function() {
                
                // Tags Input
                jQuery('#tags').tagsInput({width:'auto'});
                 
                // Textarea Autogrow
                jQuery('#autoResizeTA').autogrow();
                
                // Spinner
                var spinner = jQuery('#spinner').spinner();
                spinner.spinner('value', 0);
                
                // Form Toggles
                jQuery('.toggle').toggles({on: true});
                
                // Time Picker
                jQuery('#timepicker').timepicker({defaultTIme: false});
                jQuery('#timepicker2').timepicker({showMeridian: false});
                jQuery('#timepicker3').timepicker({minuteStep: 15});
                
                // Date Picker
                jQuery('#datepicker').datepicker();
                jQuery('#datepicker-inline').datepicker();
                jQuery('#datepicker-multiple').datepicker({
                    numberOfMonths: 3,
                    showButtonPanel: true
                });
                
                // Input Masks
                jQuery("#date").mask("99/99/9999");
                jQuery("#phone").mask("(999) 999-9999");
                jQuery("#ssn").mask("999-99-9999");
                
                // Select2
                jQuery("#select-basic, #select-multi").select2();
                jQuery('#select-search-hide').select2({
                    minimumResultsForSearch: -1
                });
                
                function format(item) {
                    return '<i class="fa ' + ((item.element[0].getAttribute('rel') === undefined)?"":item.element[0].getAttribute('rel') ) + ' mr10"></i>' + item.text;
                }
                
                // This will empty first option in select to enable placeholder
                jQuery('select option:first-child').text('');
                
                jQuery("#select-templating").select2({
                    formatResult: format,
                    formatSelection: format,
                    escapeMarkup: function(m) { return m; }
                });
                
                // Color Picker
                if(jQuery('#colorpicker').length > 0) {
                    jQuery('#colorSelector').ColorPicker({
			onShow: function (colpkr) {
			    jQuery(colpkr).fadeIn(500);
                            return false;
			},
			onHide: function (colpkr) {
                            jQuery(colpkr).fadeOut(500);
                            return false;
			},
			onChange: function (hsb, hex, rgb) {
			    jQuery('#colorSelector span').css('backgroundColor', '#' + hex);
			    jQuery('#colorpicker').val('#'+hex);
			}
                    });
                }
  
                // Color Picker Flat Mode
                jQuery('#colorpickerholder').ColorPicker({
                    flat: true,
                    onChange: function (hsb, hex, rgb) {
			jQuery('#colorpicker3').val('#'+hex);
                    }
                });
                
                
            });
            
            
            
            ${message}
        </script>
  </body>
</html>
