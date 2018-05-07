<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
    <meta http-equiv="description" content="This is my page" />
<title>${requestScope.id}</title>
<style>  
  /**重置标签默认样式*/   
        * {   
            margin: 0;   
            padding: 0;   
            list-style: none;   
            font-family: '微软雅黑'   
        }   
        #container {   
            width: 100%;   
            height: 100%;   
            background: #eee;   
        }  
        html,body{
            width:100%; height:100%;
        } 
        .header {   
            background: #e63900;   
            height: 40px;   
            color: #fff;   
            line-height: 34px;   
            font-size: 20px;   
            padding: 0 10px;   
        }   
        .footer {   
            width: 95%;   
            height: 8%; 
            background: #e63900;   
            position: absolute;   
            bottom: 0;   
            padding: 10px;   
        }   
        .footer input {   
            width: 75%;   
            height: 69%;
            outline: none;   
            font-size: 20px;   
            text-indent: 10px;   
            position: absolute;   
            border-radius: 6px;   
            right: 80px;   
        }   
        .footer span {   
            display: inline-block;   
            width: 62px;   
            height: 73%;
            color:#fff;
            background: #e67300;   
            font-weight: 900;   
            line-height: 350%;
            cursor: pointer;   
            text-align: center;   
            position: absolute;   
            right: 10px;   
            border-radius: 6px;   
        }   
        .footer span:hover {   
            background: #9a2600;   
        }   
        #user_face_icon {   
            display: inline-block;   
            background: red;   
            width: 78%;
            height: 78%;   
            border-radius: 30px;   
            position: absolute;   
            bottom: 6px;   
            left: 14px;   
            cursor: pointer;   
            overflow: hidden;   
        }   
        img {   
            width: 60px;   
            height: 60px;
            border-radius:50%;
        }   
        .content {   
            font-size: 20px;   
            width: 97%;   
            height: 87%;   
            overflow: auto;   
            padding: 5px;   
        }   
        .content li {   
            margin-top: 10px;   
            padding-left: 10px;   
            width: 95%;   
            display: block;   
            clear: both;   
            overflow: hidden;   
        }   
        .content li img {   
            float: left;   
        }   
        .content li span{   
        
            background: #7cfc00;   
            padding: 10px;   
            border-radius: 10px;   
            float: left;   
            margin: 6px 10px 0 10px;   
            max-width: 310px;   
            border: 1px solid #ccc;   
            box-shadow: 0 0 3px #ccc;   
        }   
        .content li img.imgleft {    
            float: left;    
        }   
        .content li img.imgright {    
            float: right;    
        }   
        .content li span.spanleft {    
            float: left;   
            background: #fff;   
        }   
        .content li span.spanright {    
            float: right;   
            background: #7cfc00;   
        }   
    </style>  
    <script>  
	    var userId = "${requestScope.id}";
	    var messageSite = "${requestScope.messagesite}";
	    var iNow = "${requestScope.num - 1}";    //用来累加改变左右浮动   
	    var num = 0;     //控制头像改变   
        window.onload = function(){
        	
            var arrIcon = ['pic/simple.jpg','pic/simple.jpg'];   
            
            
            var icon = "head.jpg";   
            var btn = document.getElementById('btn');   
            var text = document.getElementById('text');   
            var content = document.getElementsByTagName('ul')[0];
            var img = content.getElementsByTagName('img');   
            var span = content.getElementsByTagName('span');   

            content.scrollTop=content.scrollHeight;  

            icon[0].onclick = function(){   
                if(num==0){   
                    this.src = arrIcon[1];   
                    num = 1;   
                }else if(num==1){   
                    this.src = arrIcon[0];   
                    num = 0;   
                }                   
            }
            btn.onclick = function(){   
                if(text.value ==''){
                    alert('不能发送空消息');   
                }else {
                	sendMessage(text.value);
                    content.innerHTML += '<li><img src="'+arrIcon[num]+'"><span>'+text.value+'</span></li><br>';   
                    iNow++;   
                    if(num==0){   
                        img[iNow].className += 'imgright';   
                        span[iNow].className += 'spanright';   
                    }else {   
                        img[iNow].className += 'imgleft';   
                        span[iNow].className += 'spanleft';   
                    }
                    text.value = '';   
     // 内容过多时,将滚动条放置到最底端   
     content.scrollTop=content.scrollHeight;     
                }   
            }   
        }   
    </script>  
    
    <!--页面加载start-->
    <script src="js/jquery.min.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="css/loader.css">
	<script type="text/javascript">         
	    // 等待所有加载
	    $(window).load(function(){
	        $('body').addClass('loaded');
	        $('#loader-wrapper .load_title').remove();
	    }); 
	</script>
		
	
</head>
<body>
<div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
    <div class="load_title">正在卖力加载，请稍后...</div>
</div>
<div id="container">  
		<div class="header">  
            <span style="float: left;">你一言，我一语</span>  
            <span style="float: right;">${requestScope.id}</span>  
        </div> 
       
        <ul class="content">
        	<c:forEach var="ch" items="${requestScope.firstSite}">
        		<li>
	        		<img src="${ch.pic}" class="img${ch.sign}" />
	        		<span class="span${ch.sign}">${ch.content}</span>
        		</li>
        	</c:forEach>
        	<br>
        </ul>
        <div class="footer">  
            <input id="text" type="text" placeholder="说点什么吧..." />  
            <span id="btn">发送</span>  
        </div>  
    </div> 
    
    <script>
    var sendMessage = function(message){
    	$.ajax({
    		url : "MobileChartSend.do",
    		type : "POST",
    		data : {
    			id : userId,
    			content : message,
    		},
    		datatype : "json",
    		success : function(strValue) {
    			//alert(strValue);
    			messageSite ++ ;
    		},
    		error : function() {
    			alert("发送失败，请稍后再试！");
    		}
    	});
    }
    
    
    
    var getMessage = function(){
    	//alert(messageSite);
    	$.ajax({
			url : "MobileChartGet.do",//要传递的servlet地址
			type : "POST",//提交类型
			data : {
				site : messageSite,
				id : userId,
			},//传递到servlet中的参数
			datatype : "json",//请求页面返回的数据类型
			success : function(strValue) {//strValue：接收回调函数的返回结果
				
				//alert(strValue);
			
				//解析json
				//JsonObj = JSON.parse(strValue);
				var JsonObj = eval ("(" + strValue + ")");//更好的方案

				
				//alert(JsonObj.length);
				
				
				for (var i = 0; i < JsonObj.length; i++) { //循环后台传过来的Json数组  
					var data = JsonObj[i];
					var content1 = document.getElementsByTagName('ul')[0];
		            content1.innerHTML += '<li><img src="'+data.pic+'" class="img'+data.sign+'" /><span class="span'+data.sign+'">'+data.content+'</span></li>';   
		            messageSite = data.id;
		            iNow++;
				}
				
				if(JsonObj.length!=0){
					var content1 = document.getElementsByTagName('ul')[0];
					content1.innerHTML += '<br>';
					content1.scrollTop=content1.scrollHeight;
				}else{
					
				}
				
				
			},
			error : function() {
				alert("error");
			}
		});
    }
    
    window.setInterval(getMessage, 5000); 
    </script>
</body>
</html>