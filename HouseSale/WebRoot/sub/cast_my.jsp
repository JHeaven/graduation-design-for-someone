<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>Metronic | Dashboard 2</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta name="MobileOptimized" content="320">


<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="assets/plugins/select2/select2_metro.css"/>
<link rel="stylesheet" href="assets/plugins/data-tables/DT_bootstrap.css"/>
<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
<link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>

<!--Summernote [ OPTIONAL ]-->
<link href="assets/summernote/summernote.min.css" rel="stylesheet">

<style type="text/css">
body {
	font-family: "Verdana", "Hiragino Sans GB", "Microsoft YaHei",
		"WenQuanYi Micro Hei", sans-serif;
}
</style>



</head>

<body class="page-header-fixed page-full-width">
	
	
	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
							<h4 class="modal-title">Modal title</h4>
						</div>
						<div class="modal-body">
							 Widget settings form goes here
						</div>
						<div class="modal-footer">
							<button type="button" class="btn blue">Save changes</button>
							<button type="button" class="btn default" data-dismiss="modal">Close</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<!-- BEGIN STYLE CUSTOMIZER -->
			<div class="theme-panel hidden-xs hidden-sm">
				<div class="toggler">
				</div>
				<div class="toggler-close">
				</div>
				<div class="theme-options">
					<div class="theme-option theme-colors clearfix">
						<span>
							THEME COLOR
						</span>
						<ul>
							<li class="color-black current color-default" data-style="default">
							</li>
							<li class="color-blue" data-style="blue">
							</li>
							<li class="color-brown" data-style="brown">
							</li>
							<li class="color-purple" data-style="purple">
							</li>
							<li class="color-grey" data-style="grey">
							</li>
							<li class="color-white color-light" data-style="light">
							</li>
						</ul>
					</div>
					<div class="theme-option">
						<span>
							Layout
						</span>
						<select class="layout-option form-control input-small">
							<option value="fluid" selected="selected">Fluid</option>
							<option value="boxed">Boxed</option>
						</select>
					</div>
					<div class="theme-option">
						<span>
							Header
						</span>
						<select class="header-option form-control input-small">
							<option value="fixed" selected="selected">Fixed</option>
							<option value="default">Default</option>
						</select>
					</div>
					<div class="theme-option">
						<span>
							Sidebar
						</span>
						<select class="sidebar-option form-control input-small">
							<option value="fixed">Fixed</option>
							<option value="default" selected="selected">Default</option>
						</select>
					</div>
					<div class="theme-option">
						<span>
							Sidebar Position
						</span>
						<select class="sidebar-pos-option form-control input-small">
							<option value="left" selected="selected">Left</option>
							<option value="right">Right</option>
						</select>
					</div>
					<div class="theme-option">
						<span>
							Footer
						</span>
						<select class="footer-option form-control input-small">
							<option value="fixed">Fixed</option>
							<option value="default" selected="selected">Default</option>
						</select>
					</div>
				</div>
			</div>
			<!-- END STYLE CUSTOMIZER -->
			<!-- BEGIN PAGE HEADER-->
			<div class="row">
				<div class="col-md-12">
					<!-- BEGIN PAGE TITLE & BREADCRUMB-->
					<h3 class="page-title">
					 我的房屋 <small>您可以随意更改房屋内容</small>
					</h3>
					<ul class="page-breadcrumb breadcrumb">
						
						<li>
							<i class="fa fa-home"></i>
							<a href="index.html">主页</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">候选列表</a>
						</li>
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-md-12">
					<!-- BEGIN EXAMPLE TABLE PORTLET-->
					<div class="dashboard-stat red">
						<div class="visual">
							<i class="fa fa-shopping-cart"></i>
						</div>
						<div class="details">
							<div class="number">
								￥：${money}元
							</div>
							<div class="desc">
								<c:if test="${allCastSize != 1}">以上是选定所有房屋的合计，请删减至一套房子，才会出现合同按钮</c:if>
								<c:if test="${allCastSize == 1}">您当前选择了一套房子</c:if>
							</div>
						</div>
						<c:if test="${allCastSize == 1}">
							<a class="more" data-target="#stack1" data-toggle="modal">
							马上签合同 <i class="m-icon-swapright m-icon-white"></i>
							</a>
						</c:if>
					</div>
					<!-- END EXAMPLE TABLE PORTLET-->
					<!-- BEGIN EXAMPLE TABLE PORTLET-->
					<div class="portlet box blue">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-globe"></i>房屋信息
							</div>
							<div class="actions">
							</div>
						</div>
						<div class="portlet-body">
							<table class="table table-striped table-bordered table-hover table-full-width" id="sample_2">
							<thead>
							<tr>
								<th>
									ID
								</th>
								<th>
									商品名称
								</th>
								<th class="hidden-xs">
									商品图片
								</th>
								<th class="hidden-xs">
									商品价格
								</th>
								<th class="hidden-xs">
									购买数量
								</th>
								<th class="hidden-xs">
									操作
								</th>
							</tr>
							</thead>
							<tbody>
							<c:forEach var="p" items="${allCast}">
							<tr>
								<td>
									${p.id}
								</td>
								<td>
									${p.comName}
								</td>
								<td>
									<img alt="" src="<c:if test="${p.comPhoto != null}">${p.comPhoto}</c:if><c:if test="${p.comPhoto == null}">/HouseSale/assets/img/title.png</c:if>" height="100px">
								</td>
								<td>
									${p.price}
								</td>
								<td>
									${p.num}
								</td>
								<td>
									<a target="r" href="/HouseSale/com/delCast/${p.id}">刪除</a>
								</td>
							</tr>
							</c:forEach>
							
							</tbody>
							</table>
						</div>
					</div>
					<!-- END EXAMPLE TABLE PORTLET-->
					
					
					
					
				</div>
			</div>
			<!-- END PAGE CONTENT-->
		</div>
	</div>
	<!-- END CONTENT -->
	
	<div id="stack1" class="modal fade" tabindex="-1" data-width="400">
								<form method="post" action="/HouseSale/com/createOrder">
								<div class="modal-dialog modal-wide">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
											<h4 class="modal-title">请详细填写购房合同,完成乙方填写内容</h4>
										</div>
										<div class="modal-body">
											<div class="row">
												<div class="col-md-12">
													<h4>你的姓名</h4>
													<p>
														<input type="text" class="col-md-12 form-control" value="${userLoginFlag.name}" name="name">
													</p>
													<br>
													<h4>你的手机</h4>
													<p>
														<input type="text" class="col-md-12 form-control" value="${userLoginFlag.phone}" name="phone">
													</p>
													<br>
													<h4>你的地址</h4>
													<p>
														<input type="text" class="col-md-12 form-control" value="${userLoginFlag.areas}" name="address">
													</p>
													<h4>购房合同</h4>
													<p>
														<textarea class="summernote" id="contents" name="heTong" required><h1 style="text-align: center; margin-top: 10px; margin-bottom: 0px; padding: 0px; line-height: 30px;">　<span style="margin: 0px; padding: 0px;">购房合同</span></h1><p style="text-align: center; margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　出卖人(以下简称甲方)：__远远集团_____</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　法定代表人：__袁远___联系电话：__8888-88888888___注册地址：__北京__邮政编码：___010___</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　营业执照号码：__8888-8888_开户行：___8888-8888-8888-8888_帐号：__YUANY__</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　委托代理人(房地产经纪机构)：___远远集团_法定代表人：__袁远__联系电话：_8888-999999__</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　注册地址：__北京___邮政编码：__010_营业执照号码：____8888-8888-9999-7777___</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　房地产经纪机构资格证书编号：_01010101___开户行：__88888_帐号：_yuanyuan__</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　买受人(以下简称乙方)：______________________</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　国籍/法定代表人：_____身份证(<a href="http://visa.liuxue86.com/huzhaobanli/" target="_blank" style="margin: 0px; padding: 0px; color: rgb(102, 102, 102);">护照</a>)/营业执照号码：________ 地址：_____________邮政编码：_____________</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　联系电话：_________________________________委托代理人：_______________________________</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　国籍/法定代表人：________身份证(护照)/营业执照号码：_____________________地址：____________</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">&nbsp; &nbsp; &nbsp; &nbsp;邮政编码：______________联系电话：_____________________</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　根据《中华人民共和国<a href="http://www.liuxue86.com/hetongfanben/hetongfa/" target="_blank" style="margin: 0px; padding: 0px; color: rgb(102, 102, 102);">合同法</a>》、《中华人民共和国城市房地产管理法》及有关法律、法规的规定，甲乙双方遵循平等、自愿、公平、诚实信用、守法的原则，经协商一致，达成如下条款：</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　第一条 商品房情况</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　该商品房销售许可证号：____商品房座落：_____区、县__路、道、街_____。设计用途 _____，建筑结构_____，建筑层数为_____层。建筑面积_____平方米，其中：套内建筑面积_____平方米，公共部分分摊建筑面积 ____平方米。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　商品房平面图见附件一，商品房抵押、租赁等情况见附件二。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　商品房土地来源为：_____。以出让方式取得土地使用权的，土地使用年限为____年，自____年____月____日至___年___月___日止。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　第二条 商品房价款</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　商品房销售按建筑面积计算，每平方米价格为____元(币种：___)，价款为_______元，计_____(大写)。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　第三条 商品房交付日期</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　商品房竣工，经验收合格后，方可交付;未经验收或验收不合格的，不得交付。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　甲方于_____年____月____日前，将商品房交付乙方。如遇不可抗力，不能履行<a href="http://www.liuxue86.com/hetongfanben/" target="_blank" style="margin: 0px; padding: 0px; color: rgb(102, 102, 102);">合同</a>，双方同意按下列第____种方式处理：</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　1、 变更合同</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　2、 解除合同</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　第四条 乙方付款形式及付款<a href="http://www.liuxue86.com/shijian/" target="_blank" style="margin: 0px; padding: 0px; color: rgb(102, 102, 102);">时间</a></p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　乙方按下列第种形式付款：</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　1、一次性付款。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　2、分期付款。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　3、其他方式。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　第五条 甲方逾期交付商品房的处理</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　除遇不可抗力外，甲方如未按本合同第三条约定日期交付商品房，逾期在_____日内的，乙方有权向甲方追究已付款利息，利息自合同约定甲方应交付商品房之日次日起至实际交付商品房之日止，按银行同期贷款利率计算。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　如超过上述约定期限的，乙方有权按照下述的第_______种约定，追究甲方违约责任：</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　1、合同继续履行。甲方应支付乙方已付款利息，利息自合同约定甲方应交付商品房之日次日起至实际交付商品房之日止，按银行同期贷款利率计算。此外，甲方还应每日按商品房价款的万分之_____向乙方支付违约金。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　2、解除合同。甲方应退还乙方已付款、支付已付款利息，利息自合同约定甲方应交付商品房之日次日起至甲方退还乙方已付款之日止，按银行同期贷款利率计算。此外，甲方还应每日按商品房价款的万分之_____向乙方支付违约金。乙方的实际损失超过甲方支付的违约金时，甲方还应承担赔偿责任。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　第六条 乙方逾期付款的处理</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　乙方如未按本合同第四条约定日期付款，逾期在_______日内的，甲方有权追究乙方逾期付款及其利息，利息自合同约定乙方应付款之日次日起至实际付款之日止，按银行同期贷款利率计算。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　如超过上述约定期限的，甲方有权按照下述的第_______种约定，追究乙方违约责任：</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　1、合同继续履行。乙方应支付逾期付款及其利息，利息自合同约定乙方应付款之日次日起至实际付款之日止，按银行同期贷款利率计算。此外，乙方还应每日按商品房价款的万分之_____向甲方支付违约金。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　2、解除合同。乙方应按商品房价款的万分之_____向甲方支付违约金。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　第七条 商品房建筑面积与销售建筑面积差异的处理</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　商品房建筑面积以房屋所有权证记载面积为法定依据。商品房建筑面积与甲方销售面积差异不超过±3%(包括±3%)的，每平方米价格保持不变，商品房价款按商品房建筑面积与销售面积的差异多退少补。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　面积差异超过±3%的，双方约定如下：</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　第八条 商品房质量及保修责任</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　甲方交付的商品房的质量和设备等应符合国家有关规定和甲方的承诺(见附件三)，未达到国家规定标准和承诺的，甲方应承担责任。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　在乙方正常情况下，甲方应按照《**市商品房住宅质量<a href="http://www.liuxue86.com/fanwen/baozhengshu/" target="_blank" style="margin: 0px; padding: 0px; color: rgb(102, 102, 102);">保证书</a>》的规定履行保修责任。因乙方擅自拆改造成损坏的，甲方不承担责任。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　第九条 商品房配套设施运行的约定</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　下列配套设施运行日期约定如下：</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　1、上水_________________________ 。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　2、下水________________________ 。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　3、供电________________________ 。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　4、燃气(气源种类)_______________ 。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　5、暖气________________________ 。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　上述配套设施未按约定日期运行的，甲方应在 日内采取扑救措施，并赔偿乙方损失;超过上述约定期限的，甲方应赔偿损失，并且每项还应按商品房价款的____ %向乙方支付违约金。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　第十条 商品房设计变更的约定</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　甲方未征得乙方同意，不得擅自变更商品房的房屋设计和环境布局(见附件四)。确需变更的，甲方应自设计变更方案确定之日起___日内与乙方协商。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　乙方同意变更的，双方订立补充合同。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　乙方不同意变更，或甲方擅自变更的，乙方有权解除合同。解除合同的，甲方应退还乙方已付款、支付已付款的利息，利息自乙方付款之外，甲方还应按商品房价款的___ %向乙方支付违约金。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　第十一条 商品房交接</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　商品房交付时，甲方应书面<a href="http://www.liuxue86.com/tongzhi/" target="_blank" style="margin: 0px; padding: 0px; color: rgb(102, 102, 102);">通知</a>乙方办理商品房交接手续，提供《天津市商品住宅质量保证书》和《天津市商品住宅使用说明书》，交接房屋钥匙。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　第十二条 商品房产权登记</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　商品房竣工验收合格后，甲方须在30日内办理房屋所有权初始登记。初始登记完毕后，甲方应协助乙方办理房屋所有权转移登记。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　甲方未按时办理房屋所有权初始登记或未协助乙方办理房屋所有权转移登记，给乙方造成损失的，甲方应承担责任。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　第十三条 物业管理</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　关于物业管理的服务内容和收费标准等，按有关规定由乙方与物业管理企业订立物业管理合同。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　第十四条 产权纠纷和债权债务纠纷的约定</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　甲方保证在交付商品房时，无产权纠纷和债权债务纠纷。如存在产权纠纷和债权债务纠纷，由甲方承担全部责任。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　第十五条 争议处理</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　本合同发生争议，甲乙双方应协商解决。协商不成时，按下列第____种方式处理：</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　1、向_____________ 仲裁委员会申请仲裁;</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　2、向人<a href="http://www.liuxue86.com/sifa/minfa/" target="_blank" style="margin: 0px; padding: 0px; color: rgb(102, 102, 102);">民法</a>院提起诉讼。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　第十六条 合同附件</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　本合同未尽事宜，甲乙双方另行订立补充合同(见附件五)。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　附件一至附件五均为本合同不可分割的部分，具有同等效力。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　第十七条 合同份数</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　本合同连同附件共_________，一式五份，甲、乙双方各执一份，备案机关存留一份，其他二份备用，具有同等效力。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　第十八条 合同生效</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　本合同自甲乙双方签字或盖章之日起生效。当事人另有约定的，按照其约定。</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　甲方： _______________乙方：__________________</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　_________年 _________月 _________日</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　委托代理人：_______________委托代理人：_______________</p><p style="margin-top: 10px; margin-bottom: 0px; padding: 0px; font-size: 16px; font-family: &quot;microsoft yahei&quot;; line-height: 30px; color: rgb(51, 51, 51);">　　_________年 _________月 _________日</p></textarea>
													</p>
												</div>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" data-dismiss="modal" class="btn">考虑一下</button>
											<button type="submit" class="btn red">提交申请</button>
										</div>
									</div>
								</div>
								</form>
							</div>
	
	
	<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="assets/plugins/respond.min.js"></script>
<script src="assets/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="assets/plugins/select2/select2.min.js"></script>
<script type="text/javascript" src="assets/plugins/data-tables/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="assets/plugins/data-tables/DT_bootstrap.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!--Summernote [ OPTIONAL ]-->
<script src="assets/summernote/summernote.js"></script>

<!--Summernote [ OPTIONAL ]-->
<script src="assets/summernote/lang/summernote-zh-CN.js"></script>

<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/scripts/app.js"></script>
<script src="assets/scripts/table-advanced.js"></script>
<script>
jQuery(document).ready(function() {       
   App.init();
   TableAdvanced.init();
});

$(document).ready(function() {
	$('.summernote').summernote({
		height : '1000px',
		focus: true,
		lang: 'zh-CN'
	});
	
});

${message}
</script>
</body>
</html>
