<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
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
        <link href="css/select2.css" rel="stylesheet" />
        <link href="css/style.datatables.css" rel="stylesheet">
        <link href="css/dataTables.responsive.css" rel="stylesheet">

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
                                <i class="fa fa-th-list"></i>
                            </div>
                            <div class="media-body">
                                <ul class="breadcrumb">
                                    <li><a href=""><i class="glyphicon glyphicon-home"></i></a></li>
                                    <li><a href="">课程分配管理</a></li>
                                    <li>查看课程分配</li>
                                </ul>
                                <h4>课程分配汇总</h4>
                            </div>
                        </div><!-- media -->
                    </div><!-- pageheader -->
                    
                    <div class="contentpanel">
                    
                        <div class="panel panel-primary-head">
                            <div class="panel-heading">
                                <h4 class="panel-title">您可以查看课程分配并操作</h4>
                           	</div> <!-- panel-heading -->
                            
                            <table id="basicTable" class="table table-striped table-bordered responsive">
                                <thead class="">
                                    <tr>
                                        <th>ID</th>
                                        <th>课程名称</th>
                                        <th>课程类型</th>
                                        <th>教师名称</th>
                                        <th>班级名称</th>
                                        <th>人数</th>
                                        <th>趋向排课时间段</th>
                                        <th>优先等级</th>
                                        <th>课时</th>
                                        <th>操作</th>
                                    </tr>
                                </thead>
                         
                                <tbody>
                                	<c:forEach var="p" items="${allList}"> 
                                    <tr>
                                        <td>${p.id}</td>
                                        <td>${p.cName}</td>
                                        <td>${p.cType}</td>
                                        <td>${p.tName}</td>
                                        <td>${p.className}</td>
                                        <td>${p.num}</td>
                                        <td>${p.bestSite}</td>
                                        <td>${p.site}</td>
                                        <td>${p.keshi}</td>
                                        <td>
                                        	<a class="btn btn-danger btn-xs" target="r" href="/ArrangeCourse/list/del/${p.id}">刪除</a>
                                        	<a class="btn btn-danger btn-xs" target="r" href="/ArrangeCourse/list/update/${p.id}">修改分配</a>
                                        </td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div><!-- panel -->
                        
                        <br />
                        
                        
                        
                        
                    </div><!-- contentpanel -->
            
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/jquery-migrate-1.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/modernizr.min.js"></script>
        <script src="js/pace.min.js"></script>
        <script src="js/retina.min.js"></script>
        <script src="js/jquery.cookies.js"></script>
        
        <script src="js/jquery.dataTables.min.js"></script>
        <script src="js/dataTables.bootstrap.js"></script>
        <script src="js/dataTables.responsive.js"></script>
        <script src="js/select2.min.js"></script>

        <script src="js/custom.js"></script>
        <script>
            jQuery(document).ready(function(){
                
                jQuery('#basicTable').DataTable({
                    responsive: true
                });
                
                var shTable = jQuery('#shTable').DataTable({
                    "fnDrawCallback": function(oSettings) {
                        jQuery('#shTable_paginate ul').addClass('pagination-active-dark');
                    },
                    responsive: true
                });
                
                // Show/Hide Columns Dropdown
                jQuery('#shCol').click(function(event){
                    event.stopPropagation();
                });
                
                jQuery('#shCol input').on('click', function() {

                    // Get the column API object
                    var column = shTable.column($(this).val());
 
                    // Toggle the visibility
                    if ($(this).is(':checked'))
                        column.visible(true);
                    else
                        column.visible(false);
                });
                
                var exRowTable = jQuery('#exRowTable').DataTable({
                    responsive: true,
                    "fnDrawCallback": function(oSettings) {
                        jQuery('#exRowTable_paginate ul').addClass('pagination-active-success');
                    },
                    "ajax": "ajax/objects.txt",
                    "columns": [
                        {
                            "class":          'details-control',
                            "orderable":      false,
                            "data":           null,
                            "defaultContent": ''
                        },
                        { "data": "name" },
                        { "data": "position" },
                        { "data": "office" },
                        { "data": "salary" }
                    ],
                    "order": [[1, 'asc']] 
                });
                
                // Add event listener for opening and closing details
                jQuery('#exRowTable tbody').on('click', 'td.details-control', function () {
                    var tr = $(this).closest('tr');
                    var row = exRowTable.row( tr );
             
                    if ( row.child.isShown() ) {
                        // This row is already open - close it
                        row.child.hide();
                        tr.removeClass('shown');
                    }
                    else {
                        // Open this row
                        row.child( format(row.data()) ).show();
                        tr.addClass('shown');
                    }
                });
               
                
                // DataTables Length to Select2
                jQuery('div.dataTables_length select').removeClass('form-control input-sm');
                jQuery('div.dataTables_length select').css({width: '60px'});
                jQuery('div.dataTables_length select').select2({
                    minimumResultsForSearch: -1
                });
    
            });
            
            function format (d) {
                // `d` is the original data object for the row
                return '<table class="table table-bordered nomargin">'+
                    '<tr>'+
                        '<td>Full name:</td>'+
                        '<td>'+d.name+'</td>'+
                    '</tr>'+
                    '<tr>'+
                        '<td>Extension number:</td>'+
                        '<td>'+d.extn+'</td>'+
                    '</tr>'+
                    '<tr>'+
                        '<td>Extra info:</td>'+
                        '<td>And any further details here (images etc)...</td>'+
                    '</tr>'+
                '</table>';
            }
        </script>
        
        
        <script type="text/javascript">
        ${message}
        </script>
  </body>
</html>
