<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>地猫后台管理系统V1.0</title>
		<link rel="stylesheet" type="text/css" href="../css/comm.css" />
		<link rel="stylesheet" href="../css/flipclock.css">
		<link rel="stylesheet" href="../css/style03.css">

		<style type="text/css">
			@font-face {
				font-family: 'icomoon';
				src:  url('../fonts/icomoon.eot?xe8q0p');
				src:  url('../fonts/icomoon.eot?xe8q0p#iefix') format('embedded-opentype'),
				url('../fonts/icomoon.ttf?xe8q0p') format('truetype'),
				url('../fonts/icomoon.woff?xe8q0p') format('woff'),
				url('../fonts/icomoon.svg?xe8q0p#icomoon') format('svg');
				font-weight: normal;
				font-style: normal;
				font-display: block;
			}

			.linear {
				width: 100%;
				height: 100px;
				background-color: #4D4D4D;
			}
			
			.nav {
				width: 100%;
				height: 34px;
				list-style: none;
				background-color: white;
				border-bottom: solid 1px #EBC175;
			}
			
			.nav li {
				float: left;
				height: 30px;
				position: relative;
				background-color: #4D4D4D;
				margin-right: 3px;
				margin-top: 2px;
				border-top-left-radius: 0px;
				border-top-right-radius: 15px;
			}
			.nav li:hover{
				background-color: #EBC175;
			}
			.nav li a {
				text-decoration: none;
				padding: 0 15px 0 5px;
				line-height: 30px;
				color: #EBC175;
				display: block;
			}
			.nav li a:hover{
				color: #282828;
			}
			.nav li a::before{
				font-family: 'icomoon';
				content: '\e9d7';
				padding-right: 5px;
			}
			.timeanduser {
				width:500px;
				text-align: right;
				height: 60px;
				position: absolute;
				right:5px;
				top: 15px;
				font-size: 12px;
				padding-right: 10px;
				padding-top: 10px;
				color: #EBC175;
				border: 1px;
				border-radius: 20px;
				background-color:#4D4D4D;
				border-bottom-right-radius: 0;
				border-top-right-radius: 0;
				box-shadow: 1px 1px 7px 1px #EBC175;
				line-height: 22px;
			}
			
			#currentuser{
				/*background-image: url(img/logout.png);*/
				background-repeat: no-repeat;
				background-size:18px auto;
				background-position:right 5px;
                position:relative;
			}
			#logout{
				color: #EBC175;
			}
		    #logout::before{
		    	font-family: 'icomoon';
				content: '\ea2b';
				font-size: 14px;
            }
			#logout:hover{
				color: #FFFFFF;
			}
             #logout  img{
		        width:20px;
                height:20px;
                position:absolute;
                right:0px;
                top:1px;
            }
		</style>

	</head>

	<body>
		
			<div class="linear">
				<img src="../img/yongshan.png" style="height:100px;" />
			</div>
			<ul class="nav">
                <li><a href="left.jsp?id=1" target="left">系统设置</a></li>
                <li><a href="left.jsp?id=2" target="left">意见反馈</a></li>
                <li><a href="left.jsp?id=4" target="left">菜品中心</a></li>
                <li><a href="left.jsp?id=5" target="left">订单中心</a></li>
                <li><a href="left.jsp?id=6" target="left">会员中心</a></li>
           		<li> <a href="/YongshanManage/logout" target="_top" >退出系统</a></li>
			</ul>
			<div class="timeanduser">
				<div class="clock" ></div>
				<p id="timecontainer"></p>
				<p id="currentuser">当前管理员: 【<%= ((Map<String,Object>)session.getAttribute("currentuser")).get("truename")%>】<a href="/YongshanManage/logout" target="_top" id="logout" title="退出系统"></a> </p>
			</div>

		<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="../js/flipclock.js"></script>
		<script type="text/javascript">
			var clock = $('.clock').FlipClock({
				clockFace: 'TwelveHourClock'
			});
		</script>
		<script type="text/javascript">
		    t();

		    function t() {
		        var obj = document.getElementById('timecontainer');
		        var now = new Date();
		        var yy = now.getFullYear();
		        var mm = now.getMonth() + 1;
		        var dd = now.getDate();
		        var hhh = now.getHours();
		        var mmm = now.getMinutes();
		        var sss = now.getSeconds();
		        if (mm < 10) mm = "0" + mm;
		        if (dd < 10) dd = "0" + dd;
		        if (hhh < 10) hhh = "0" + hhh;
		        if (mmm < 10) mmm = "0" + mmm;
		        if (sss < 10) sss = "0" + sss;
		        var week;
		        if (now.getDay() == 0) week = "星期日";
		        if (now.getDay() == 1) week = "星期一";
		        if (now.getDay() == 2) week = "星期二";
		        if (now.getDay() == 3) week = "星期三";
		        if (now.getDay() == 4) week = "星期四";
		        if (now.getDay() == 5) week = "星期五";
		        if (now.getDay() == 6) week = "星期六";
				var time = yy + "年" + mm + "月" + dd + "日 " +week;
		        obj.innerHTML = time;
		        setTimeout('t()', 1000);
		    }
		</script>
	</body>

</html>