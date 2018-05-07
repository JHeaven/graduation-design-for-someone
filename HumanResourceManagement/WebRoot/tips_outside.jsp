<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
  </head>
  
  <body>
  <iframe id="iframepage" name="right" src="/HumanResourceManagement/tips.jsp?a=${message1}|当前时间|#countdown 3|#time" frameborder="0" style="width: 100%;height: 600px;" scrolling="no">
          </iframe>
          
  </body>
</html>
