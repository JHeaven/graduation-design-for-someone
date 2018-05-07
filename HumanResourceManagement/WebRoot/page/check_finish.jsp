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
	  
    <title> </title>

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
<style type="text/css">
    body {
		font-family: "Verdana", "Hiragino Sans GB", "Microsoft YaHei","WenQuanYi Micro Hei", sans-serif;
	}
    </style>
  </head>
  
  <body>
    <div class="container body">
      <div class="main_container">
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>【${check.name}】的培训结业管理</h3>
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
                    <h2>请填入分数和评语 <span style="color: red;">${message1}</span></h2>
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
                    <br />
                    <form class="form-horizontal form-label-left" method="post" action="/HumanResourceManagement/check/doFinish">
						<input value="${check.id}" name="id" hidden />
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">
							沟通能力【100为满分】
						</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <select name="goutongSc" class="select2_group form-control">
                            <option value="${check.goutongSc}">当前 ${check.goutongSc} 分</option>
                            <optgroup label="非常优秀">
                              <option value="100">100分</option>
                              <option value="99">97分</option>
                              <option value="95">95分</option>
                            </optgroup>
                            <optgroup label="优秀">
                              <option value="93">93分</option>
                              <option value="91">91分</option>
                              <option value="90">90分</option>
                            </optgroup>
                            <optgroup label="良好">
                              <option value="88">88分</option>
                              <option value="86">86分</option>
                              <option value="84">84分</option>
                              <option value="82">82分</option>
                              <option value="80">80分</option>
                            </optgroup>
                            <optgroup label="一般">
                              <option value="79">79分</option>
                              <option value="77">77分</option>
                              <option value="75">75分</option>
                              <option value="74">74分</option>
                              <option value="72">72分</option>
                              <option value="70">70分</option>
                            </optgroup>
                            <optgroup label="及格">
                              <option value="69">69分</option>
                              <option value="67">67分</option>
                              <option value="65">65分</option>
                              <option value="62">62分</option>
                              <option value="60">60分</option>
                            </optgroup>
                            <optgroup label="不及格">
                              <option value="55">55分</option>
                              <option value="45">45分</option>
                              <option value="35">35分</option>
                              <option value="25">25分</option>
                              <option value="15">15分</option>
                              <option value="5">5分</option>
                            </optgroup>
                          </select>
                        </div>
                      </div>
                      


					<div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">
							执行能力【100为满分】
						</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <select name="zhixingSc" class="select2_group form-control">
                            <option value="${check.zhixingSc}">当前 ${check.zhixingSc} 分</option>
                            <optgroup label="非常优秀">
                              <option value="100">100分</option>
                              <option value="99">97分</option>
                              <option value="95">95分</option>
                            </optgroup>
                            <optgroup label="优秀">
                              <option value="93">93分</option>
                              <option value="91">91分</option>
                              <option value="90">90分</option>
                            </optgroup>
                            <optgroup label="良好">
                              <option value="88">88分</option>
                              <option value="86">86分</option>
                              <option value="84">84分</option>
                              <option value="82">82分</option>
                              <option value="80">80分</option>
                            </optgroup>
                            <optgroup label="一般">
                              <option value="79">79分</option>
                              <option value="77">77分</option>
                              <option value="75">75分</option>
                              <option value="74">74分</option>
                              <option value="72">72分</option>
                              <option value="70">70分</option>
                            </optgroup>
                            <optgroup label="及格">
                              <option value="69">69分</option>
                              <option value="67">67分</option>
                              <option value="65">65分</option>
                              <option value="62">62分</option>
                              <option value="60">60分</option>
                            </optgroup>
                            <optgroup label="不及格">
                              <option value="55">55分</option>
                              <option value="45">45分</option>
                              <option value="35">35分</option>
                              <option value="25">25分</option>
                              <option value="15">15分</option>
                              <option value="5">5分</option>
                            </optgroup>
                          </select>
                        </div>
                      </div>
                      
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">
							心里素质【100为满分】
						</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <select name="xinliSc" class="select2_group form-control">
                            <option value="${check.xinliSc}">当前 ${check.xinliSc} 分</option>
                            <optgroup label="非常优秀">
                              <option value="100">100分</option>
                              <option value="99">97分</option>
                              <option value="95">95分</option>
                            </optgroup>
                            <optgroup label="优秀">
                              <option value="93">93分</option>
                              <option value="91">91分</option>
                              <option value="90">90分</option>
                            </optgroup>
                            <optgroup label="良好">
                              <option value="88">88分</option>
                              <option value="86">86分</option>
                              <option value="84">84分</option>
                              <option value="82">82分</option>
                              <option value="80">80分</option>
                            </optgroup>
                            <optgroup label="一般">
                              <option value="79">79分</option>
                              <option value="77">77分</option>
                              <option value="75">75分</option>
                              <option value="74">74分</option>
                              <option value="72">72分</option>
                              <option value="70">70分</option>
                            </optgroup>
                            <optgroup label="及格">
                              <option value="69">69分</option>
                              <option value="67">67分</option>
                              <option value="65">65分</option>
                              <option value="62">62分</option>
                              <option value="60">60分</option>
                            </optgroup>
                            <optgroup label="不及格">
                              <option value="55">55分</option>
                              <option value="45">45分</option>
                              <option value="35">35分</option>
                              <option value="25">25分</option>
                              <option value="15">15分</option>
                              <option value="5">5分</option>
                            </optgroup>
                          </select>
                        </div>
                      </div>
                      
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">
							时间管理【100为满分】
						</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <select name="shijianSc" class="select2_group form-control">
                            <option value="${check.shijianSc}">当前 ${check.shijianSc} 分</option>
                            <optgroup label="非常优秀">
                              <option value="100">100分</option>
                              <option value="99">97分</option>
                              <option value="95">95分</option>
                            </optgroup>
                            <optgroup label="优秀">
                              <option value="93">93分</option>
                              <option value="91">91分</option>
                              <option value="90">90分</option>
                            </optgroup>
                            <optgroup label="良好">
                              <option value="88">88分</option>
                              <option value="86">86分</option>
                              <option value="84">84分</option>
                              <option value="82">82分</option>
                              <option value="80">80分</option>
                            </optgroup>
                            <optgroup label="一般">
                              <option value="79">79分</option>
                              <option value="77">77分</option>
                              <option value="75">75分</option>
                              <option value="74">74分</option>
                              <option value="72">72分</option>
                              <option value="70">70分</option>
                            </optgroup>
                            <optgroup label="及格">
                              <option value="69">69分</option>
                              <option value="67">67分</option>
                              <option value="65">65分</option>
                              <option value="62">62分</option>
                              <option value="60">60分</option>
                            </optgroup>
                            <optgroup label="不及格">
                              <option value="55">55分</option>
                              <option value="45">45分</option>
                              <option value="35">35分</option>
                              <option value="25">25分</option>
                              <option value="15">15分</option>
                              <option value="5">5分</option>
                            </optgroup>
                          </select>
                        </div>
                      </div>
                      
                      
                      
                      
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">
							职业素养【100为满分】
						</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <select name="zhiyeSc" class="select2_group form-control">
                            <option value="${check.zhiyeSc}">当前 ${check.zhiyeSc} 分</option>
                            <optgroup label="非常优秀">
                              <option value="100">100分</option>
                              <option value="99">97分</option>
                              <option value="95">95分</option>
                            </optgroup>
                            <optgroup label="优秀">
                              <option value="93">93分</option>
                              <option value="91">91分</option>
                              <option value="90">90分</option>
                            </optgroup>
                            <optgroup label="良好">
                              <option value="88">88分</option>
                              <option value="86">86分</option>
                              <option value="84">84分</option>
                              <option value="82">82分</option>
                              <option value="80">80分</option>
                            </optgroup>
                            <optgroup label="一般">
                              <option value="79">79分</option>
                              <option value="77">77分</option>
                              <option value="75">75分</option>
                              <option value="74">74分</option>
                              <option value="72">72分</option>
                              <option value="70">70分</option>
                            </optgroup>
                            <optgroup label="及格">
                              <option value="69">69分</option>
                              <option value="67">67分</option>
                              <option value="65">65分</option>
                              <option value="62">62分</option>
                              <option value="60">60分</option>
                            </optgroup>
                            <optgroup label="不及格">
                              <option value="55">55分</option>
                              <option value="45">45分</option>
                              <option value="35">35分</option>
                              <option value="25">25分</option>
                              <option value="15">15分</option>
                              <option value="5">5分</option>
                            </optgroup>
                          </select>
                        </div>
                      </div>
                      
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">
							人格品质【100为满分】
						</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <select name="pinzhiSc" class="select2_group form-control">
                            <option value="${check.pinzhiSc}">当前 ${check.pinzhiSc} 分</option>
                            <optgroup label="非常优秀">
                              <option value="100">100分</option>
                              <option value="99">97分</option>
                              <option value="95">95分</option>
                            </optgroup>
                            <optgroup label="优秀">
                              <option value="93">93分</option>
                              <option value="91">91分</option>
                              <option value="90">90分</option>
                            </optgroup>
                            <optgroup label="良好">
                              <option value="88">88分</option>
                              <option value="86">86分</option>
                              <option value="84">84分</option>
                              <option value="82">82分</option>
                              <option value="80">80分</option>
                            </optgroup>
                            <optgroup label="一般">
                              <option value="79">79分</option>
                              <option value="77">77分</option>
                              <option value="75">75分</option>
                              <option value="74">74分</option>
                              <option value="72">72分</option>
                              <option value="70">70分</option>
                            </optgroup>
                            <optgroup label="及格">
                              <option value="69">69分</option>
                              <option value="67">67分</option>
                              <option value="65">65分</option>
                              <option value="62">62分</option>
                              <option value="60">60分</option>
                            </optgroup>
                            <optgroup label="不及格">
                              <option value="55">55分</option>
                              <option value="45">45分</option>
                              <option value="35">35分</option>
                              <option value="25">25分</option>
                              <option value="15">15分</option>
                              <option value="5">5分</option>
                            </optgroup>
                          </select>
                        </div>
                      </div>
                      
                      
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">
							技术实力【100为满分】
						</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <select name="jishuSc" class="select2_group form-control">
                            <option value="${check.jishuSc}">当前 ${check.jishuSc} 分</option>
                            <optgroup label="非常优秀">
                              <option value="100">100分</option>
                              <option value="99">97分</option>
                              <option value="95">95分</option>
                            </optgroup>
                            <optgroup label="优秀">
                              <option value="93">93分</option>
                              <option value="91">91分</option>
                              <option value="90">90分</option>
                            </optgroup>
                            <optgroup label="良好">
                              <option value="88">88分</option>
                              <option value="86">86分</option>
                              <option value="84">84分</option>
                              <option value="82">82分</option>
                              <option value="80">80分</option>
                            </optgroup>
                            <optgroup label="一般">
                              <option value="79">79分</option>
                              <option value="77">77分</option>
                              <option value="75">75分</option>
                              <option value="74">74分</option>
                              <option value="72">72分</option>
                              <option value="70">70分</option>
                            </optgroup>
                            <optgroup label="及格">
                              <option value="69">69分</option>
                              <option value="67">67分</option>
                              <option value="65">65分</option>
                              <option value="62">62分</option>
                              <option value="60">60分</option>
                            </optgroup>
                            <optgroup label="不及格">
                              <option value="55">55分</option>
                              <option value="45">45分</option>
                              <option value="35">35分</option>
                              <option value="25">25分</option>
                              <option value="15">15分</option>
                              <option value="5">5分</option>
                            </optgroup>
                          </select>
                        </div>
                      </div>
                      
                      
                      
                      
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">
							培训进度【100%即为培训结束】
						</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <select name="process" class="select2_group form-control">
                              <option value="${check.process}">当前进度 ${check.process} %</option>
                              <option value="100">100%</option>
                              <option value="99">97%</option>
                              <option value="95">95%</option>
                              <option value="93">93%</option>
                              <option value="91">91%</option>
                              <option value="90">90%</option>
                              <option value="88">88%</option>
                              <option value="86">86%</option>
                              <option value="84">84%</option>
                              <option value="82">82%</option>
                              <option value="80">80%</option>
                              <option value="79">79%</option>
                              <option value="77">77%</option>
                              <option value="75">75%</option>
                              <option value="74">74%</option>
                              <option value="72">72%</option>
                              <option value="70">70%</option>
                              <option value="69">69%</option>
                              <option value="67">67%</option>
                              <option value="65">65%</option>
                              <option value="62">62%</option>
                              <option value="60">60%</option>
                              <option value="55">55%</option>
                              <option value="45">45%</option>
                              <option value="35">35%</option>
                              <option value="25">25%</option>
                              <option value="15">15%</option>
                              <option value="5">5%</option>
                          </select>
                        </div>
                      </div>
                      
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">评语<span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <textarea name="remark" class="form-control" rows="3" placeholder=''>${check.remark}</textarea>
                        </div>
                      </div>
                      
                      
                      

                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
                          <button type="reset" class="btn btn-primary">重置</button>
                          <button type="submit" class="btn btn-success">提交</button>
                        </div>
                      </div>

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
    
  </body>
</html>
