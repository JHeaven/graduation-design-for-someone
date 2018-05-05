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
                                    <li><a href="">排课管理</a></li>
                                    <li>查看排课</li>
                                </ul>
                                <h4>排课汇总</h4>
                            </div>
                        </div><!-- media -->
                    </div><!-- pageheader -->
                    
                    <div class="contentpanel">
                    
                        <div class="panel panel-primary-head">
                            <div class="panel-heading">
                                <h4 class="panel-title">您可以查看排课并操作</h4>
                           	</div> <!-- panel-heading -->
                            
                            <table id="basicTable" class="table table-striped table-bordered responsive">
                                <thead class="">
                                    <tr>
                                        <th>ID</th>
                                        <th>日期</th>
                                        <th>教室</th>
                                        <th>上午(1)课程</th>
                                        <th>上午(1)班级</th>
                                        <th>上午(1)教师</th>
                                        
                                        <th>上午(2)课程</th>
                                        <th>上午(2)班级</th>
                                        <th>上午(2)教师</th>
                                        
                                        <th>下午(1)课程</th>
                                        <th>上午(1)班级</th>
                                        <th>下午(1)教师</th>
                                        
                                        <th>下午(2)课程</th>
                                        <th>下午(2)班级</th>
                                        <th>下午(2)教师</th>
                                        
                                        <th>晚上课程</th>
                                        <th>晚上班级</th>
                                        <th>晚上教师</th>
                                        
                                        <th>操作</th>
                                    </tr>
                                </thead>
                         
                                <tbody>
                                	<c:forEach var="p" items="${allSec}"> 
                                    <tr>
                                        <td>${p.id}</td>
                                        <td><fmt:formatDate value="${p.secDate}" type="date"/></td>
                                        <td>${p.roomName}</td>
                                        
                                        
                                        <td>${p.le1Name}</td>
                                        <td>${p.le1Class}</td>
                                        <td>${p.le1Tea}</td>
                                        
                                        <td>${p.le2Name}</td>
                                        <td>${p.le2Class}</td>
                                        <td>${p.le2Tea}</td>
                                        
                                        <td>${p.le3Name}</td>
                                        <td>${p.le3Class}</td>
                                        <td>${p.le3Tea}</td>
                                        
                                        <td>${p.le4Name}</td>
                                        <td>${p.le4Class}</td>
                                        <td>${p.le4Tea}</td>
                                        
                                        <td>${p.le5Name}</td>
                                        <td>${p.le5Class}</td>
                                        <td>${p.le5Tea}</td>
                                        
                                        <td>
                                        	<a class="btn btn-danger btn-xs" target="r" href="/ArrangeCourse/section/update/${p.id}">修改课程</a>
                                        	<a class="btn btn-danger btn-xs" target="r" href="/ArrangeCourse/section/del/${p.id}">刪除</a>
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
