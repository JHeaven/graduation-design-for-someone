<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport" content="width=device-width" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>${com.name} - 校内竞赛报名系统</title>
<link href="plugins/transactional-email-templates/templates/styles.css"
	media="all" rel="stylesheet" type="text/css" />

</head>


<body>

<table class="body-wrap" style="background-image: url('img/qyqx.jpg'); height: 700px;">
    <tr>
        <td></td>
        <td class="container" width="600">
            <div class="content">
            <br><br>
                <table class="main" width="100%" cellpadding="0" cellspacing="0" itemprop="action" itemscope itemtype="http://schema.org/ConfirmAction">
                    <tr>
                        <td class="content-wrap">
                            <meta itemprop="name" content="Confirm Email"/>
                            <table width="100%" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <img src="img/email-templates/email-header.jpg">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="content-block">
                                        <h3>【${com.name}】即将开赛！</h3>
                                        <h3>赶快把页面分享给好友一起来参赛吧！</h3>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="content-block">
                                       <h3> 赛事描述：${com.ps}.</h3>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="content-block aligncenter" itemprop="handler" itemscope itemtype="http://schema.org/HttpActionHandler">
                                        <c:if test="${com.status=='报名进行中'}">
                                        	<a href="/CompetionRegistration/game/iregs/${com.id}" class="btn-primary" itemprop="url">我要马上报名！</a>
                                        </c:if>
                                        <c:if test="${com.status != '报名进行中'}">
                                        	<a class="btn-primary" itemprop="url">抱歉！报名已结束！</a>
                                        </c:if>
                                        <a href="/CompetionRegistration/index" class="btn-primary" itemprop="url">回到系统首页</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
              </div>
        </td>
        <td></td>
    </tr>
</table>
<script type="text/javascript">
${message}
</script>
</body>
</html>
