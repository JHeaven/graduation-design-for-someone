<%@ page language="java" contentType="text/html;charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<c:set var="sysVersion" value="${applicationScope.SysVersion}"></c:set>

<!DOCTYPE html>
<html lang="zh-CN" ng-app="myApp">
	<head>
		<title>崇德小区商品房销售管理</title>
		<link rel="shortcut icon" href="${ctx}/resources/images/flow.png"/>
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
		
		<link rel="stylesheet" href="${ctx}/resources/login_bootstrap/css/form-elements.css">
        <link rel="stylesheet" href="${ctx}/resources/login_bootstrap/css/style.css">
        
		<link rel="stylesheet" href="${ctx}/resources/css/bootstrap/css/bootstrap.min.css?v=${sysVersion}">
		<link rel="stylesheet" href="${ctx}/resources/js/angular/toaster/toaster.css?v=${sysVersion}"/>
		<link rel="stylesheet" href="${ctx}/resources/js/angular/angular-busy/angular-busy.css?v=${sysVersion}"/>
	</head>
	<body ng-controller="LoginCtrl" ng-cloak>
		  <!-- Top content -->
        <div class="top-content">
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong style="color:#1a07a0">崇德小区商品房销售管理</strong></h1>
                            <div class="description">
                            	
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box" cg-busy="{promise:promise,templateUrl:'',message:'正在提交...',backdrop:true,delay:0,minDuration:0}">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h2 style="font-weight: 400;">登录</h2>
                            		
                        			<p>输入用户名和密码:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
                               
			                    <form class="form-horizontal login-form" role="form" novalidate name="myForm">
		                                    <button class="btn-success" onclick="fopen()">新用户注册</button>
					                    	<div class="form-group">
					                    		<label class="sr-only" for="form-username">Username</label>
					                        	<input type="text" required ng-model="loginForm.username" name="form-username" placeholder="用户名..." class="form-username form-control" id="form-username">
					                        </div>
					                        <div class="form-group">
					                        	<label class="sr-only" for="form-password">Password</label>
					                        	<input type="password" required ng-model="loginForm.password" name="form-password" placeholder="密码..." class="form-password form-control" id="form-password">
					                        </div>
					                        <table>
					                        	<tr>
					                        		<td>
					                        			<input required ng-model="loginForm.checkbox1" name="ddddd" type="radio" value="1" >用户登陆
					                        		</td>
					                        		<td>
					                        			<input required ng-model="loginForm.checkbox1" name="ddddd" type="radio" value="2">管理员登陆
					                        		</td>
					                        	</tr>
					                        </table>
					                    
					                        <button type="button" class="btn" ng-disabled="myForm.$invalid" ng-click="login()">登录</button>
		
			                        
			                    </form>
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <toaster-container toaster-options="{'time-out': 3000, 'close-button':true, 'position-class': 'toast-bottom-right'}"></toaster-container>
        
        <script src="${ctx}/resources/js/angular/angular.js?v=${sysVersion}"></script>
        <script src="${ctx}/resources/js/angular/i18n/angular-locale_zh-cn.js?v=${sysVersion}"></script>
		<script src="${ctx}/resources/js/angular/angular-animate/angular-animate.min.js?v=${sysVersion}"></script>
		<script src="${ctx}/resources/js/angular/toaster/toaster.js?v=${sysVersion}"></script>
		<script src="${ctx}/resources/js/angular/angular-busy/angular-busy.js?v=${sysVersion}"></script>
        
        <script type="text/javascript">
			var myApp = angular.module('myApp', ['toaster', 'cgBusy']);
			
			myApp.controller('LoginCtrl', function($scope, $http, $location, toaster) {
				$scope.loginForm = {username: '', password: ''};
				$scope.login = function() {
					$scope.promise = $http.post('${ctx}/sys/login', $scope.loginForm).success(function(data){
						if(data.result == "success") {
							window.location.href = "${ctx}/";
						}
						else {
							toaster.pop('error', '错误提示', data.info, 2000);
						}
					});
				}
			});
			
			
	
			
		</script>
		
		<script>
			function fopen(){
				window.location.href="/commercial/register";
			}
		</script>
	</body>
</html>