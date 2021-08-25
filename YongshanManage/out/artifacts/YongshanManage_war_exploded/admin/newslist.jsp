<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
<%--		<link rel="stylesheet" type="text/css" href="css/comm.css"/>--%>
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
<%
List<Map<String, Object>> list = (List<Map<String, Object>>)request.getAttribute("newslist");
String pagestr = (String)request.getAttribute("pagestr");
%>
<p class="path">融智信息系统/信息中心/信息管理</p>

<table border="0" cellspacing="0" cellpadding="0" class="tb tblis">
       <tr>
       	 <td style="width:50px;">ID</td><td>标题</td><td style="width:80px;">类别</td><td style="width:80px;">作者</td><td style="width:80px;">来源</td><td style="width:120px;">时间</td><td style="width:80px;">操作</td>   
       </tr>
       <%for (Map<String, Object> m : list) { %>
        <tr>
       		<td><%=m.get("id")%></td>
       		<td><%=m.get("title")%></td>
       		<td data-typeid="<%=m.get("typeid")%>" class="typename"></td>
       		<td><%=m.get("author")%></td>
       		<td><%=m.get("source")%></td>
       		<td><%=m.get("createtime")%></td>
       		<td><a href="newsedit?id=<%=m.get("id")%>">修改</a> <a href="newsdelete?id=<%=m.get("id")%>">删除</a></td>
       </tr>
    	<% } %>
    </table>

	<div class="pager" style="text-align: center;margin-top: 30px;">
		<%=pagestr%>
	</div>
    
    <script src="js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
    	$("td.typename").each(function(index,item){
    		var typeid=$(item).attr("data-typeid");
    		//console.log(typeid);
    		switch(typeid)
    		{
    			case "1":$(item).text("学校公告"); break;
    			case "2":$(item).text("菁菁校园"); break;
    			case "3":$(item).text("学校趣闻"); break;
    			case "4":$(item).text("班级通知"); break;
    			case "5":$(item).text("数学建模"); break;
    			case "6":$(item).text("生活攻略"); break;
    		}
    	});
    </script>

</body>
</html>