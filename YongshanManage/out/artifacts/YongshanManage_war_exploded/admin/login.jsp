<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String msg =(String)request.getAttribute("msg");
	if(msg==null)
	{
		msg="";
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>用膳外卖软件后台管理系统V1.0</title>
	<link rel="stylesheet" type="text/css" href="../css/comm.css" />
	<style type="text/css">
		body {
				background-color: #4D4D4D;
				font-family: 'Microsoft YaHei';
				font-size: 14px;
				background-repeat: no-repeat;
				background-position: 0 0;
			}
						
			#logincontainer {
				width: 662px;
				height: 332px;
				position: absolute;
				left:calc(50% - 331px);
				top:calc(50% - 166px);
				border: 0;
				border-radius: 30px;
				color: white;
				background-image: url(../img/login001.png);
				box-shadow: 0px 0px 40px #EBC175;
			}
			
			#logincontainer p {
				position: relative;
				height: 50px;
				line-height: 50px;
				clear: both;
				margin-left: 70px;
			}
			
			#logincontainer p span {
				display: block;
				float: left;
			}
			
			#logincontainer p span.lablespan {
				width: 80px;
				text-align: right;
				padding-right: 3px;
			}
			
			#logincontainer p span input {
				height: 35px;
				width: 200px;
				border: solid 1px #EBC175;
				padding-left: 5px;
				margin-left: 5px;
				background-color: white;
				outline: none;
				border-radius: 5px;
			}
			
			#logincontainer p span input#btnlogin {
				width: 207px;
				height: 35px;
				border: 0;
				border-radius: 5px;
				background-color: #EBC175;
				color: white;
			}
			
			#msg {
				padding-left: 80px;
				color: red;
			}
			
			#btnsearch {
				color: white;
				text-decoration: none;
				position: absolute;
				right: 34px;
				font-size: 16px;
			}
			
			#msglist {
				width: 350px;
				height: 500px;
				border: solid 1px white;
				position: absolute;
				right: 50px;
				top: 50px;
				list-style: none;
				border-radius: 5px;
				padding: 10px;
				overflow: hidden;
			}
			
			#msglist li a {
				color: white;
				line-height: 35px;
				text-decoration: none;
				display: block;
				font-size: 16px;
				height: 35px;
				overflow: hidden;
			}
			
			#msglist li a:before {
				content: '>';
				margin-right: 5px;
			}
						
			.title{
				margin: 0 25px;
				margin-top:25px;
				font-size:26px;
				text-align: center;
			}
			
			.loginform{
				margin-left: 230px;
			}

	</style>
</head>
<body>
    <form  method="post" action="/YongshanManage/login">
    	<div id="logincontainer">
			<h3 class="title">用膳后台管理系统v1.0</h3>
			<div class="loginform">
				<p id="msg"><strong><%=msg%></strong></p>
				<p> <span><input name="username" type="text" id="username" placeholder="用户名"/></span></p>
				<p> <span><input name="password" type="password" id="password"  placeholder="密码"/></span> </p>
				<p><span><input type="submit" name="btnlogin" value="登 录" id="btnlogin" /></span></p>
			</div>
		</div>
    </form>
    <script src="../js/jquery-1.11.0.js"></script>
    <script>
        $("#btnlogin").click(function (e) {
            var username = $("#username");
            if (!username.val().length > 0)
            {
                $("#msg").text("请输入用户名");
                username.focus();
                e.preventDefault();
                return false;
            }

            var password = $("#password");
            if (!password.val().length > 0) {
                $("#msg").text("请输入密码");
                password.focus();
                e.preventDefault();
                return false;
            }
        });
    </script>
</body>
</html>
    