<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
  <meta charset="UTF-8">

  <title></title>

  <link rel="stylesheet" href="/HumanResourceManagement/asserts/css/normalize-ku.css">

    <link rel="stylesheet" href="/HumanResourceManagement/asserts/css/style-ku.css" media="screen" type="text/css" />

  </head>
  
  <body>
   <div style="text-align:center;clear:both;position:absolute;top:0;left:260px">
</div>
<canvas class="canvas"></canvas>

<div class="help"></div> 

<div class="ui">
  <input class="ui-input" type="text" />
  <span class="ui-return">↵</span>
</div>

<div class="overlay">
  <div class="tabs">
    <div class="tabs-labels"><span class="tabs-label"></span><span class="tabs-label"></span><span class="tabs-label"></span></div>

    <div class="tabs-panels">
      <ul class="tabs-panel commands">
        <li class="commands-item"><span class="commands-item-title"></span><span class="commands-item-info" data-demo="Hello :)"></span><span class="commands-item-action"></span></li>
        <li class="commands-item"><span class="commands-item-title"></span><span class="commands-item-info" data-demo="#countdown 10"><span class="commands-item-mode"></span></span><span class="commands-item-action"></span></li>
        <li class="commands-item"><span class="commands-item-title"></span><span class="commands-item-info" data-demo="#time"></span><span class="commands-item-action"></span></li>
        <li class="commands-item"><span class="commands-item-title"></span><span class="commands-item-info" data-demo="#rectangle 30x15"><span class="commands-item-mode"></span></span><span class="commands-item-action"></span></li>
        <li class="commands-item"><span class="commands-item-title"></span><span class="commands-item-info" data-demo="#circle 25"><span class="commands-item-mode"></span></span><span class="commands-item-action"></span></li>

        <li class="commands-item commands-item--gap"><span class="commands-item-title"></span><span class="commands-item-info" data-demo="The time is|#time|#countdown 3|#icon thumbs-up"><span class="commands-item-mode"></span>&nbsp;|<span class="commands-item-mode"></span></span><span class="commands-item-action"></span></li>
      </ul>

      <div class="tabs-panel ui-details">
        <div class="ui-details-content">
          <h1></h1>
          <p>
            <a href="//www.kennethcachia.com" target="_blank"> <a/>.<br/>
            <a href="//fortawesome.github.io/Font-Awesome/#icons-new" target="_blank"> </a> 
          </p>

          <br/><p> <a href="http://www.kennethcachia.com/shape-shifter/?a=#icon thumbs-up" target="_blank"> </a></p>
        </div>
      </div>

      <div class="tabs-panel ui-share">
        <div class="ui-share-content">
        </div>
      </div>
    </div>
  </div>
</div>

  <script src="/HumanResourceManagement/asserts/js/index-ku.js"></script>

  </body>
</html>
