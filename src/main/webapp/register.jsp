<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>briup电子商务-注册页</title>
<link rel="stylesheet" href="css/common.css"/>
<link rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#name").blur(function() {
			var name = $("#name").val();
			$.post("CheckNameServlet",{"name":name},function(data) {
				$("#sp").html(data);
			},"text");
		});
	});
</script>
</head>
<body>
	<div class="container2">
    	<div class="header2">
        	<div>
            	<a href="#"><img class="logo" src="images/logon_register.png"></a>
            </div>
            <div>
            	<ul class="tabs">
                	<li class="phone current"><a href="#">用户注册，请将信息填写完整</a></li>
                </ul>
            </div>
            <div class="tlg">
            	已有账号 <a href="login.jsp">登陆</a>
            </div>
        </div>
        <div class="content2">
			<form action="RegisterServlet" method="post">
            <ul class="reg_box">
                <li>
                    <span><b>*</b>用户名：</span>
                    <input type="text" name="name" id="name"/><span id="sp"></span>
                </li>
               <li>
                    <span><b>*</b>密码：</span>
                    <input type="password" name="password"/>
                </li>
                <li>
                    <span><b>*</b>邮编：</span>
                    <input type="text" name="zipCode"/>
                </li>
                <li>
                    <span><b>*</b>地址：</span>
                    <input type="text" name="address"/>
                </li>
                <li>
                    <span><b>*</b>电话：</span>
                    <input type="text" name="telephone"/>
                </li>
                <li>
                    <span><b>*</b>电子邮箱：</span>
                    <input type="text" name="email"/>
                </li>
            </ul>
            <p>
                <input type="checkbox" checked/>
                 我已阅读并同意
                <a href="#">用户注册协议</a>
            </p>
            <input class="btn_submit" type="submit" value="立即注册"/>
           </form>
        </div>
   	</div>
</body>
</html>
