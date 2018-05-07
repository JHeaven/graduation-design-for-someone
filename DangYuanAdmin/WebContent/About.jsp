<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="pic/danghui.png">
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/templatemo_style.css">
</head>
<body>







<!-- Home -->
        <section id="templatemo_home">
            <div class="container">
                <div class="templatemo_home_inner_wapper">
                    <h1 class="text-center"><span class="glyphicon glyphicon-off"></span> APP</h1>
                </div>
                <div class="templatemo_home_inner_wapper">
                    <h2 class="text-center">红色科文</h2>
                    <p class="text-center">
                        软件当前版本:${requestScope.version}
						<br>
						软件最新版本:${requestScope.newversion}
                    </p>
                </div>
                <div class="templatemo_home_inner_wapper btn_wapper">
                    <div class="col-sm-6">
                        <a href="#" class="btn col-xs-12 scroll_effect shadow-top-down">
                            <span class="glyphicon glyphicon-apple"></span> IOS版下载(敬请期待)
                        </a>
                    </div>
                    <div class="col-sm-6">
                        <a href="apk/RedKeWen.apk" class="btn col-xs-12 scroll_effect shadow-top-down">
                            <span class="glyphicon glyphicon-save-file"></span> Android版下载
                        </a>
                    </div>
                </div>
            </div>
        </section>

</body>
</html>