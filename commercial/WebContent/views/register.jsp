<%@ page language="java" contentType="text/html;charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<c:set var="sysVersion" value="${applicationScope.SysVersion}"></c:set>

<!DOCTYPE html>
<html lang="zh-CN" ng-app="myApp">
	<head>
		<title></title>
	
		<meta charset="utf-8">
		<meta name="description" content="healthservice">
		<meta name="title" content="healthservice" />
		<meta name="keywords" content="healthservice" />
		<meta name="description" content="healthservice" />
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<style type="text/css">
			body {
				background-image: url("${ctx}/resources/login_bootstrap/img/backgrounds/bgimage2.jpg");
			}
		</style>

		<link rel="stylesheet" href="${ctx}/resources/css/MaterialIcons/material-icons.css?v=${sysVersion}">
		<link rel="stylesheet" href="${ctx}/resources/css/fontawesome/css/font-awesome.min.css?v=${sysVersion}">
		

		<link rel="stylesheet" href="${ctx}/resources/login_bootstrap/css/form-elements-register.css">
        <link rel="stylesheet" href="${ctx}/resources/login_bootstrap/css/style.css">
        
		<link rel="stylesheet" href="${ctx}/resources/css/bootstrap/css/bootstrap.min.css?v=${sysVersion}">
		<link rel="stylesheet" href="${ctx}/resources/js/angular/toaster/toaster.css?v=${sysVersion}"/>
		<link rel="stylesheet" href="${ctx}/resources/js/angular/angular-busy/angular-busy.css?v=${sysVersion}"/>
		
		<script src="${ctx}/resources/js/jquery/jquery-1.11.1.min.js"></script>
		
		<script src="${ctx}/resources/js/jquery/sweetalert-dev.js"></script>
  		<link rel="stylesheet" href="${ctx}/resources/js/jquery/sweetalert.css">
		
	</head>
	<body>
				<div class="modal-header">
					<div class="row">
						<div class="col-sm-7">
							<h2 class="modal-title"> <b>注册</b></h2>
						</div>
					</div>
				</div>
				<div class="modal-body" >
					<form class="form-horizontal" role="form" novalidate name="myForm">
						<input type="hidden" name="userPeopleID" ng-model="editForm.userPeopleID">
						<div class="form-group form-group-sm">
							<label class="col-md-3 control-label">用户姓名：</label>
							<div class="col-md-9">
									<input type="text" id="userpeopleName" name="userpeopleName" class="form-control" placeholder="" >
							</div>
						</div>
						<div class="form-group form-group-sm">
						<label class="col-md-3 control-label">用户邮箱：</label>
						<div class="col-md-9">
								<input type="text" id="userpeopleMail" name="userpeopleMail" class="form-control" placeholder="" ng-model="editForm.userpeopleMail" required>
						</div>
						</div>
						<div class="form-group form-group-sm">
							<label class="col-md-3 control-label">电话：</label>
							<div class="col-md-9">
									<input type="text" id="userpeopleTEL" name="userpeopleTEL" class="form-control" placeholder="" ng-model="editForm.userpeopleTEL" required>
							</div>
						</div>
						<div class="form-group form-group-sm">
							<label class="col-md-3 control-label">年龄：</label>
							<div class="col-md-9">
									<input type="text" id="userPeopleAge" name="userPeopleAge" class="form-control" placeholder="" ng-model="editForm.userPeopleAge" required>
							</div>
						</div>
						<div class="form-group form-group-sm">
							<label class="col-md-3 control-label">性别：</label>
							<div class="col-md-9">
									<input type="text" id="userPeoplesex" name="userPeoplesex" class="form-control" placeholder="" ng-model="editForm.userPeoplesex" required>
							</div>
						</div>
						<div class="form-group form-group-sm">
							<label class="col-md-3 control-label">用户密码：</label>
							<div class="col-md-9">
									<input type="password" id="userPeoplePasswrod" name="userPeoplePasswrod" class="form-control" placeholder="" ng-model="editForm.userPeoplePasswrod" required>
							</div>
						</div>
						<div class="form-group form-group-sm">
							<label class="col-md-3 control-label">再次输入密码：</label>
							<div class="col-md-9">
									<input type="password" id="reuserPeoplePasswrod" name="reuserPeoplePasswrod" class="form-control" placeholder="" ng-model="editForm.userPeoplePasswrod" required>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<div class="form-group">
						<div class="col-md-offset-4 col-md-2 ">
							<button type="submit" class="btn btn-primary" onclick="save()" ng-disabled="myForm.$invalid">保存</button>
						</div>
						<div class="col-md-0 col-sm-2 col-xs-2">
							<button type="button" class="btn btn-default" onclick="cancel1()">取消</button>
						</div>
					</div>
				</div>
				<script>
				    
				    function perSave(){
				    	var userpeopleName = $("#userpeopleName").val();
				    	
				    	if(userpeopleName==undefined || userpeopleName=="" || userpeopleName==null){    
				    		swal('提示', '用户姓名必填!', 'error')
				    		return fasle; 
				    	} 
				    	
		                var userpeopleMail = $("#userpeopleMail").val();
		                if(userpeopleMail==undefined || userpeopleMail=="" || userpeopleMail==null){    
				    		swal('提示', '邮件必填!', 'error')
				    		return fasle; 
				    	} 
		                
		                var userpeopleTEL = $("#userpeopleTEL").val();
		                if(userpeopleTEL==undefined || userpeopleTEL=="" || userpeopleTEL==null){    
				    		swal('提示', '电话号必填!', 'error')
				    		return fasle; 
				    	} 
		                
		                var userPeopleAge = $("#userPeopleAge").val();
		                
		                if(userPeopleAge==undefined || userPeopleAge=="" || userPeopleAge==null){    
				    		swal('提示', '用户年龄必填!', 'error')
				    		return fasle; 
				    	} 
		                var userPeoplesex = $("#userPeoplesex").val();
		                
		                if(userPeoplesex==undefined || userPeoplesex=="" || userPeoplesex==null){    
				    		swal('提示', '用户性别必填!', 'error')
				    		return fasle; 
				    	} 
		                
		                var userPeoplePasswrod = $("#userPeoplePasswrod").val();
		                if(userPeoplePasswrod==undefined || userPeoplePasswrod=="" || userPeoplePasswrod==null){    
				    		swal('提示', '用户密码必填!', 'error')
				    		return fasle; 
				    	} 
		                
		                
		                var reuserPeoplePasswrod = $("#reuserPeoplePasswrod").val();
		                if(reuserPeoplePasswrod==undefined || reuserPeoplePasswrod=="" || reuserPeoplePasswrod==null){    
				    		swal('提示', '用户再次密码必填!', 'error')
				    		return fasle; 
				    	} 
		                
		                if(userPeoplePasswrod != reuserPeoplePasswrod){    
				    		swal('提示', '两次密码输入不一致!', 'error')
				    		return fasle; 
				    	} 
				    }
				
					function save(){
						   perSave();
						   //userpeopleMail  userpeopleTEL
						    var userpeopleName = $("#userpeopleName").val();
			                var userpeopleMail = $("#userpeopleMail").val();
			                var userpeopleTEL = $("#userpeopleTEL").val();
			                var userPeopleAge = $("#userPeopleAge").val();
			                var userPeoplesex = $("#userPeoplesex").val();
			                var userPeoplePasswrod = $("#userPeoplePasswrod").val();
			                var reuserPeoplePasswrod = $("#reuserPeoplePasswrod").val();
			             
			                var data={
			                		  "userPeopleID":"",
			                		  "userpeopleName":""+userpeopleName+"",
			                		  "userpeopleMail":""+userpeopleMail+"",
			                		  "userpeopleTEL":""+userpeopleTEL+"",
			                		  "userPeopleAge":""+userPeopleAge+"",
			                		  "userPeoplesex":""+userPeoplesex+"",
			                		  "userPeoplePasswrod":""+userPeoplePasswrod+""
			                		  };

			                $.ajax({
			                    type: 'POST',
			                    url: '/commercial/guanliyonghuxinxi/GuanliyonghuxinxiCtrl/save',
								data: JSON.stringify(data),
			                    contentType:"application/json",
			                    dataType: 'json',
			                    success: function (obj) {
			                    	swal({
			                    	    title: "提示信息",
			                    	    text: "恭喜注册成功",
			                    	    type: "success",
			                    	    showCancelButton: true,
			                    	    closeOnConfirm: false,
			                    	    showLoaderOnConfirm: true,
			                    	},
			                    	function() {
			                    		window.location.href="/commercial/login"; 
			                    	    /* setTimeout(function() {
			                    	        swal("Ajax request finished!");
			                    	    },
			                    	    2000); */
			                    	});
			                    	
			                    	/* var result = confirm('恭喜注册成功');  
			                        if(result){  
			                        	window.location.href="/healthservice/login"; 
			                        }else{  
			                        	window.location.href="/healthservice/login"; 
			                        } */        
			                    	
			                    },error:function(textStatus, errorThrown){
			                    }
			                });
					}
					
					function cancel1(){
						window.location.href="/commercial/login";
					}
				</script>		
				
				
</body>
</html>