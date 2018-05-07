<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <meta charset="utf-8">
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${userLoginFlag.name}</title>


    <!--STYLESHEET-->
    <!--=================================================-->

    <!--Open Sans Font [ OPTIONAL ]-->
     


    <!--Bootstrap Stylesheet [ REQUIRED ]-->
    <link href="css/bootstrap.min.css" rel="stylesheet">


    <!--Nifty Stylesheet [ REQUIRED ]-->
    <link href="css/nifty.min.css" rel="stylesheet">


    <!--Nifty Premium Icon [ DEMONSTRATION ]-->
    <link href="css/demo/nifty-demo-icons.min.css" rel="stylesheet">


    <!--Demo [ DEMONSTRATION ]-->
    <link href="css/demo/nifty-demo.min.css" rel="stylesheet">


        
    <!--Morris.js [ OPTIONAL ]-->
    <link href="plugins/morris-js/morris.min.css" rel="stylesheet">


    <!--Magic Checkbox [ OPTIONAL ]-->
    <link href="plugins/magic-check/css/magic-check.min.css" rel="stylesheet">


<!--FooTable [ OPTIONAL ]-->
<link href="plugins/fooTable/css/footable.core.css" rel="stylesheet">

    <!--Nifty Premium Icon [ DEMONSTRATION ]-->
    <link href="css/demo/nifty-demo-icons.min.css" rel="stylesheet">


    <!--Demo [ DEMONSTRATION ]-->
    <link href="css/demo/nifty-demo.min.css" rel="stylesheet">

    
    <!--JAVASCRIPT-->
    <!--=================================================-->

    <!--Pace - Page Load Progress Par [OPTIONAL]-->
    <link href="plugins/pace/pace.min.css" rel="stylesheet">
    <script src="plugins/pace/pace.min.js"></script>


    <!--jQuery [ REQUIRED ]-->
    <script src="js/jquery-2.2.4.min.js"></script>


    <!--BootstrapJS [ RECOMMENDED ]-->
    <script src="js/bootstrap.min.js"></script>


    <!--NiftyJS [ RECOMMENDED ]-->
    <script src="js/nifty.min.js"></script>



    <!--Nifty Premium Icon [ DEMONSTRATION ]-->
    <link href="css/demo/nifty-demo-icons.min.css" rel="stylesheet">



    <!--=================================================-->
    
    <!--Demo script [ DEMONSTRATION ]-->
    <script src="js/demo/nifty-demo.min.js"></script>

    
    <!--Morris.js [ OPTIONAL ]-->
    <script src="plugins/morris-js/morris.min.js"></script>
	<script src="plugins/morris-js/raphael-js/raphael.min.js"></script>


    <!--Sparkline [ OPTIONAL ]-->
    <script src="plugins/sparkline/jquery.sparkline.min.js"></script>


    <!--Specify page [ SAMPLE ]-->
    <script src="js/demo/dashboard.js"></script>


<!--FooTable [ OPTIONAL ]-->
<script src="plugins/fooTable/dist/footable.all.min.js"></script>


<!--FooTable Example [ SAMPLE ]-->
<script src="js/demo/tables-footable.js"></script>
        
    <!--Ion Icons [ OPTIONAL ]-->
    <link href="plugins/ionicons/css/ionicons.min.css" rel="stylesheet">



    <!--Skycons [ OPTIONAL ]-->
    <script src="plugins/skycons/skycons.min.js"></script>
    
        <!--Gauge js [ OPTIONAL ]-->
    <script src="plugins/gauge-js/gauge.min.js"></script>
    
    
    
	<style type="text/css">
    body {
		font-family: "Verdana", "Hiragino Sans GB", "Microsoft YaHei","WenQuanYi Micro Hei", sans-serif;
	}
    </style>
  </head>
  
  <body>
    			<!--Page Title-->
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<div id="page-title">
					<h1 class="page-header text-overflow">校内竞赛管理系统</h1>

				</div>
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<!--End page title-->
                
                 <!--Page content-->
                <!--===================================================-->
                <div id="page-content">
                	<div class="row">
					    <div class="col-lg-2">
					    	<!--Primary panel-->
					        <!--===================================================-->
					        <div class="panel panel-colorful panel-primary">
					            <div class="panel-heading">
					                <h3 class="panel-title">学校概况</h3>
					            </div>
					         </div> 
					        <!--===================================================-->
					        <!--End Primary Panel-->
					    	
					    </div>
					    
					    <div class="col-lg-2">
					    	<!--Info Panel-->
					        <!--===================================================-->
					        <div class="panel panel-colorful panel-info">
					            <div class="panel-heading">
					                <h3 class="panel-title">组织机构</h3>
					            </div>
					        </div>
					        <!--===================================================-->
					        <!--End Info Panel-->
					    	
					    </div>
					    <div class="col-lg-2">
					    	<!--Success Panel-->
					        <!--===================================================-->
					        <div class="panel panel-colorful panel-success">
					            <div class="panel-heading">
					                <h3 class="panel-title">院系设置</h3>
					            </div>
					        </div>
					        <!--===================================================-->
					        <!--End Success Panel-->
					    	
					    </div>
					    <div class="col-lg-2">
					    	<!--Mint Panel-->
					        <!--===================================================-->
					        <div class="panel panel-colorful panel-mint">
					            <div class="panel-heading">
					                <h3 class="panel-title">师资队伍</h3>
					            </div>
					        </div>
					        <!--===================================================-->
					        <!--End Mint Panel-->
					
					    	
					    </div>
					    <div class="col-lg-2">
					    	<!--Warning Panel-->
					        <!--===================================================-->
					        <div class="panel panel-colorful panel-warning">
					            <div class="panel-heading">
					                <h3 class="panel-title">人才培养</h3>
					            </div>
					        </div>
					        <!--===================================================-->
					        <!--End Primary Panel-->
					    	
					    </div>
					    <div class="col-lg-2">
					    	<!--Danger Panel-->
					        <!--===================================================-->
					        <div class="panel panel-colorful panel-danger">
					            <div class="panel-heading">
					                <h3 class="panel-title">学科建设</h3>
					            </div>
					        </div>
					        <!--===================================================-->
					        <!--End Danger Panel-->
					    	
					    </div>
					</div>
                
                
                
                
                    <div class="row">
					    <div class="col-lg-8">
					    	<embed src="/CompetionRegistration/img/banner.swf" width="100%" height="230px"></embed>
					    </div>
					    <div class="col-lg-4">
					    
					    	<!--Horizontal Form-->
					            <!--===================================================-->
					            <div class="panel">
					            <div class="panel-heading">
					                <h3 class="panel-title">若要进行操作，请登陆</h3>
					            </div>
					            
					            <form class="form-horizontal" action="/CompetionRegistration/login" method="post">
					                <div class="panel-body">
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputemail">用户名</label>
					                        <div class="col-sm-9">
					                            <input type="text" class="form-control" placeholder="用户名" autofocus name="username">
					                        </div>
					                    </div>
					                    <div class="form-group">
					                        <label class="col-sm-3 control-label" for="demo-hor-inputpass">密码</label>
					                        <div class="col-sm-9">
					                            <input type="password" class="form-control" placeholder="密码" name="password">
					                        </div>
					                    </div>
					                </div>
					                <div class="panel-footer text-right">
					                    <button class="btn btn-success" type="submit">登录</button>
					                </div>
					            </form>
					            </div>
					            <!--===================================================-->
					            <!--End Horizontal Form-->
					    	
					    
					    
					    </div>
					</div>
					
					
					
					<div class="row">
					    <div class="col-lg-6">
					    	<!--Panel with Table-->
					        <!--===================================================-->
					        <div class="panel">
					
					            <!--Panel heading-->
					            <div class="panel-heading">
					                <h3 class="panel-title">工大新闻</h3>
					            </div>
					            
					            <!--Table-->
					            <table class="table">  
					                <tbody>
					                    <tr>
					                        <td class="text-center">1</td>
					                        <td>第七届全国大学生电子商务“三创“大赛辽宁工大校级决</td>
					                        <td>2017-5-9</td>
					                    </tr>
					                    <tr>
					                        <td class="text-center">2</td>
					                        <td>学校举行体育辅导员聘任仪式(图）</td>
					                        <td>2017-5-9</td>
					                    </tr>
					                    <tr>
					                        <td class="text-center">3</td>
					                        <td>我校召开国家自然科学基金在研项目负责人交流会</td>
					                        <td>2017-5-9</td>
					                    </tr>
					                </tbody>
					            </table>
					        </div>
					        <!--===================================================-->
					        <!--End Panel with Table-->
					    	
					    	
					    </div>
					    <div class="col-lg-6">
					    	<!--Panel with Table-->
					        <!--===================================================-->
					        <div class="panel">
					
					            <!--Panel heading-->
					            <div class="panel-heading">
					                <h3 class="panel-title">工大公告</h3>
					            </div>
					
					
					            <!--Table-->
					            <table class="table">
					
					                <tbody>
					                    <tr>
					                        <td class="text-center">1</td>
					                        <td>第101期工大讲堂：朱继东学术报告会——“文化自信</td>
					                        <td>2017-4-23</td>
					                    </tr>
					                    <tr>
					                        <td class="text-center">2</td>
					                        <td>关于选派第五批优秀在读本科生赴美国劳伦斯科技大</td>
					                        <td>2017-4-23</td>
					                    </tr>
					                    <tr>
					                        <td class="text-center">3</td>
					                        <td>关于推荐付华教授参评2017年国家“万人计划”教学</td>
					                        <td>2017-4-23</td>
					                    </tr>
					                </tbody>
					            </table>
					        </div>
					        <!--===================================================-->
					        <!--End Panel with Table-->
					    	
					    	
					    </div>
					</div>
					    
					
					
					
					<div class="row">
						<div class="col-lg-12">
						
						
						
							
							<div class="panel">
						    <div class="panel-heading">
						        <h3 class="panel-title">近期竞赛</h3>
						    </div>
						
						    <!-- Foo Table - Filtering -->
						    <!--===================================================-->
						    <div class="panel-body">
						        <table id="demo-foo-filtering" class="table table-bordered table-hover toggle-circle" data-page-size="7">
						            <thead>
						                <tr>
						                    <th data-toggle="true">赛事名称</th>
						                    <th data-hide="all">赛事描述</th>
						                    <th data-hide="phone, tablet">开始时间</th>
						                    <th data-hide="phone, tablet">结束时间</th>
						                    <th data-hide="phone, tablet">状态</th>
						                </tr>
						            </thead>
						            <div class="pad-btm form-inline">
						                <div class="row">
						                    <div class="col-sm-6 text-xs-center">
						                        <div class="form-group">
						                            <label class="control-label">赛事状态</label>
						                            <select id="demo-foo-filter-status" class="form-control">
						                                <option value="">所有</option>
						                                <option value="即将开放报名">即将开放报名</option>
						                                <option value="报名进行中">报名进行中</option>
						                                <option value="报名截止、竞赛即将开始">报名截止、竞赛即将开始</option>
						                                <option value="竞赛进行中">竞赛进行中</option>
						                                <option value="竞赛结束">竞赛结束</option>
						                            </select>
						                        </div>
						                    </div>
						                    <div class="col-sm-6 text-xs-center text-right">
						                        <div class="form-group">
						                            <input id="demo-foo-search" type="text" placeholder="Search" class="form-control" autocomplete="off">
						                        </div>
						                    </div>
						                </div>
						            </div>
						            <tbody>
						            <c:forEach var="p" items="${allCom}">
						                <tr>
						                    <td><a target="_blank" href="/CompetionRegistration/share/${p.id}">${p.name}</a></td>
						                    <td>${p.ps}</td>
						                    <td><fmt:formatDate value="${p.fromTime}" type="both" pattern="yyyy年MM月dd日 HH时mm分"/></td>
						                    <td><fmt:formatDate value="${p.toTime}" type="both" pattern="yyyy年MM月dd日 HH时mm分"/></td>
						                    <td><span class="label label-table label-success">${p.status}</span></td>
						                </tr>
						                
						            </c:forEach>
						            </tbody>
						            <tfoot>
						                <tr>
						                    <td colspan="6">
						                        <div class="text-right">
						                            <ul class="pagination"></ul>
						                        </div>
						                    </td>
						                </tr>
						            </tfoot>
						        </table>
						    </div>
						    <!--===================================================-->
						    <!-- End Foo Table - Filtering -->
						
						</div>
						
					
						
						
						
						</div>
					</div>
					
					
					
					
					
                </div>
                <!--===================================================-->
                <!--End page content-->
                <script type="text/javascript">
		if (self != top) {  
		     top.location=self.location;
		}
		</script>
  </body>
</html>
