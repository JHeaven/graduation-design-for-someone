<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html;charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<c:set var="sysVersion" value="${applicationScope.SysVersion}"></c:set>

<!DOCTYPE html>
<html lang="zh-CN" ng-app="myApp">
	<head>
		<title>崇德小区商品房</title>
		<link rel="shortcut icon" href="${ctx}/resources/images/flow.png"/>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<link rel="stylesheet" href="${ctx}/resources/css/bootstrap/css/bootstrap.min.css?v=${sysVersion}"/>
		<link rel="stylesheet" href="${ctx}/resources/css/MaterialIcons/material-icons.css?v=${sysVersion}">
		<link rel="stylesheet" href="${ctx}/resources/css/fontawesome/css/font-awesome.min.css?v=${sysVersion}">
		<link rel="stylesheet" href="${ctx}/resources/js/angular/togglemenu_boot/togglemenu.css?v=${sysVersion}">
		<link rel="stylesheet" href="${ctx}/directive/ac-table/ac-table.css?v=${sysVersion}">
		<link rel="stylesheet" href="${ctx}/resources/js/angular/angular-aside/css/angular-aside.min.css?v=${sysVersion}">
		<link rel="stylesheet" href="${ctx}/resources/css/app.css?v=${sysVersion}"/>
		
		<script type="text/javascript">
			var ctx = '${ctx}';
			var sysVersion = '${sysVersion}';
		</script>
		
		<link rel="stylesheet" href="${ctx}/resources/js/angular/angular-busy/angular-busy.css?v=${sysVersion}"/>
		<link rel="stylesheet" href="${ctx}/resources/js/angular/toaster/toaster.css?v=${sysVersion}"/>
		
		<script src="${ctx}/resources/js/moment/moment.min.js?v=${sysVersion}"></script>
		<script src="${ctx}/resources/js/angular/angular.min.js?v=${sysVersion}"></script>
		<script src="${ctx}/resources/js/angular/i18n/angular-locale_zh-cn.js?v=${sysVersion}"></script>
		
		<script src="${ctx}/resources/js/angular/angular-route.js?v=${sysVersion}"></script>
		<script src="${ctx}/resources/js/angular/angular-sanitize.min.js?v=${sysVersion}"></script>
		<script src="${ctx}/resources/js/angular/ui-bootstrap-tpls-2.4.0.min.js"></script>
		<script src="${ctx}/resources/js/angular/angular-animate/angular-animate.min.js?v=${sysVersion}"></script>
		<script src="${ctx}/resources/js/angular/angular-busy/angular-busy.js?v=${sysVersion}"></script>
		<script src="${ctx}/resources/js/ocLazyLoad/ocLazyLoad.min.js?v=${sysVersion}"></script>
		<script src="${ctx}/resources/js/angular/toaster/toaster.js?v=${sysVersion}"></script>
		
		<script src="${ctx}/resources/js/angular/togglemenu_boot/togglemenu.js?v=${sysVersion}"></script>
		
		<script src="${ctx}/directive/ac-table/ac-table.js?v=${sysVersion}"></script>
		<script src="${ctx}/directive/ac-table/pagination.js?v=${sysVersion}"></script>
		
		<script src="${ctx}/resources/js/angular/angular-aside/js/angular-aside.min.js?v=${sysVersion}"></script>
		<script src="${ctx}/app/confirmDialogs.js?v=${sysVersion}"></script>
		<script src="${ctx}/app/app.js?v=${sysVersion}"></script>
		
		<script type="text/javascript">
			var projectName = '崇德小区商品房';
			myApp.config(['$routeProvider',
	        	function($routeProvider,$routeParams) {
	          		$routeProvider.
	          		when('/home', {
		          		templateUrl: ctx + '/templates/home.html?v=' + sysVersion,
		          		controller: 'HomeCtrl'
	         		})
	         }]);
	         myApp.navNames['/home']='首页';
	         myApp.controller('HomeCtrl', function($rootScope, $scope, $http, $location, $uibModal, toaster, confirmDialogs){
	         });
		</script>
	</head>

	<body ng-controller="MainCtrl">
		<!-- <div class="navtogglediv navtogglediv-show-hide" ng-show="$root.isRouteLoading" ng-cloak>
			<div style="font-size:25px;" class="fa fa-cog fa-spin"></div>
		</div> -->
		<div style="min-height: 100%;position: relative;overflow: hidden;">
			<header class="main-header">
				<nav class="navbar navbar-ac " role="navigation">
					<div class="navbar-header">
						<span class="navSilderShowSpan pull-left leftNavMenuToggle" ng-show="leftNavLock && isLeftNavShow()" ng-click="toggleLeftNavLock()"><i class="fa fa-outdent" aria-hidden="true"></i></span>
						<span class="navSilderShowSpan pull-left leftNavMenuToggle" ng-show="!leftNavLock || !isLeftNavShow()" ng-click="openAside()"><i class="fa fa-bars" aria-hidden="true"></i></span>
						<a role="button" class="navbar-brand" href="${ctx}/#/home">崇德小区商品房</a>
					</div>
					<nav class="collapse navbar-collapse bs-navbar-collapse" style="margin-right: 10px;">
						<ul class="nav navbar-nav navbar-right">
							
							
				            <li class="dropdown" uib-dropdown="">
			                    <a role="button" class="dropdown-toggle" uib-dropdown-toggle="" aria-haspopup="true" aria-expanded="false">
			                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span> 设置 <b class="caret"></b>
			                    </a>
			                    <ul class="dropdown-menu">
			                    	<li><a href="#accordion">帮助</a></li>
			                    	<li role="separator" class="divider"></li>
					           </ul>
			                </li>
				            <li><a ng-click="logout('${ctx}/sys/logout')" tooltip-placement="bottom" uib-tooltip="退出"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> 退出</a></li>
				       </ul>
					</nav>
				</nav>
			</header>
			<aside ng-show="isLeftNavShow()" class="main-sidebar" ng-class="{'leftNavMin':isToggleNavMin,'leftNavLockDiv':!isToggleNavMin}" ng-style="sideBodyStyle" >
				<div class="user-panel">
					<div class="pull-left image">
						<img alt="" class="img-circle" src="${ctx}/resources/images/yiyuan1.ico">
					</div>
					<div class="pull-left info">
						<p>崇德小区商品房系统</p>
					</div>
				</div>
				<div ng-style="sideMenuStyle" style="overflow-y: auto;overflow-x: hidden">
					<ul class="docs-menu">
						<li style="cursor: pointer;" ng-repeat="menu in menu.menus" ng-class="{'childActive' : isSectionSelected(menu)}">
				      		 <menu-link menu="menu" ng-if="menu.type === 'link'"></menu-link>
				             <menu-toggle menu="menu" ng-if="menu.type === 'toggle'"></menu-toggle>
				      	</li>
					</ul>
				</div>
				<div class="sidebar-footer" ng-click="toggleNavMin();">
					<div class="pull-right">
						<i class="toggleNavMin fa fa-angle-left" aria-hidden="true" ng-class="{'toggled' : isToggleNavMin}"></i>
					</div>
				</div>
			</aside>
			<div class="container-fluid" style="padding-left: 0px;padding-right: 0px;margin: 6px;" ng-style="pageContentStyle">
				<div class="well well-sm" style="font-size: 16px;margin: 0px 0px 3px 1px;padding: 5px;">
					<span><a style="color: #3a3a3a;" role="button" href="${ctx}/#/home"><i class="fa fa-home"></i>主页</a></span>
					<span style="color: #ccc;">></span> 
					{{getNavName()}}
				</div>
				<div ng-view></div>
			</div>
			<toaster-container toaster-options="{'time-out': 3000, 'close-button':true, 'position-class': 'toast-bottom-right'}"></toaster-container>
		</div>
	</body>
</html>
