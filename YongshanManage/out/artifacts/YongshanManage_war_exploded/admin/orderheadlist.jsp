<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
List<Map<String, Object>> list = (List<Map<String, Object>>)request.getAttribute("list");
String pagestr = (String)request.getAttribute("pagestr");
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<%--<link rel="stylesheet" type="text/css" href="css/comm.css"/>--%>
	<style type="text/css">
		*{
			margin: 0;
			padding: 0;
			font-family: "微软雅黑";
		}

		a{
			text-decoration: none;
			color: #333;
		}

		ul{
			list-style: none;
		}

		h3{
			border-bottom: dashed 1px #eee;
			line-height: 38px;
		}

		*{
			margin: 0;
			padding: 0;
		}

		body{
			font-family: "微软雅黑";
			font-size: 14px;
		}

		.pager {
			height:30px;
			line-height:30px;
			border:solid 1px #eee;
			margin:5px;
			padding-left:3px;
			font-size:12px;
		}

		.pager a {
			text-decoration:none;
			color:#000;
		}

		a{
			text-decoration: none;
			color: #333;
		}

		ul{
			list-style: none;
		}

		h3{
			line-height: 38px;
		}

		.tb{
			width:calc(100% - 10px);
			border-collapse: collapse;
			margin-left: 5px;
			margin-right: 5px;
		}

		.tb td{
			border: solid 1px #eee;
			height:30px;
			padding-left: 5px;
		}

		.tb td.lable{
			width: 100px;
			text-align: right;
			padding-right: 5px;
		}



		.tb input{
			width:300px;
			height: 20px;
		}

		textarea{
			width: 650px;
			height:200px;
			margin: 3px 0;
		}
		.path{
			height: 30px;
			line-height: 30px;
			color: #333;
		}

		.tblis tr:hover{
			background-color: #EBC175;
			color: white;
		}

		.tblis tr:hover a{
			color: white;
			background-color: #EBC175;
		}

		.tblis td{
			text-align: center;
		}

		.tblis td.tdleft{
			text-align: left;
		}

		.tblis td a{
			margin-left:5px;
		}

		#btnsave{
			width: 80px;
			height: 26px;
		}
	</style>
</head>
<body>
<p class="path">用膳外卖后台系统/订单中心/订单列表</p>

<table border="0" cellspacing="0" cellpadding="0" class="tb tblis">
       <tr>
       	  <td style="width:160px;">订单号</td><td style="width:100px;">姓名</td><td style="width:100px;">电话</td><td>地址</td><td>门牌号</td><td style="width:100px;">金额</td><td style="width:180px;">时间</td><td style="width:120px;">操作</td>
       </tr>
       <%for (Map<String, Object> m : list) { %>
        <tr>
       		<td><%=m.get("orderid")%></td>
       		<td><%=m.get("sname")%></td>
       		<td><%=m.get("stel")%></td>
       		<td><%=m.get("saddress")%></td>
			<td><%=m.get("snumber")%></td>
       		<td><%=m.get("sumprice")%></td>
       		<td><%=m.get("ctime")%></td>
       		<td><a href="orderview?orderid=<%=m.get("orderid")%>">查看详细</a><a href="orderdelete?orderid=<%=m.get("orderid")%>">删除</a>  </td>
       </tr>
    	<% } %>
    </table>

	<div class="pager" style="text-align: center;margin-top: 30px;">
		<%=pagestr%>
	</div>
    
   
</body>
</html>