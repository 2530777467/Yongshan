<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
List<Map<String, Object>> list = (List<Map<String, Object>>)request.getAttribute("list");
String pagestr = (String)request.getAttribute("pagestr");
%>
<p class="path">用膳外卖后台管理系统/产品中心/产品列表</p>

<table border="0" cellspacing="0" cellpadding="0" class="tb tblis">
       <tr>
       	 <td style="width:50px;">ID</td>
		   <td style="width:150px;">菜品图片</td>
		   <td style="width:100px;">类别</td>
		   <td>菜品名称</td>
		   <td>菜系</td>
		   <td style="width:80px;">价格</td>
		   <td style="width:80px;">产地</td>
		   <td style="width:80px;">首页推荐</td>
		   <td style="width:120px;">首页单品</td>
		   <td style="width:80px;">操作</td>
       </tr>
       <%for (Map<String, Object> m : list) { %>
        <tr>
       		<td><%=m.get("id")%></td>
       		<td><img src="upload/<%=m.get("imgurl")%>" style="width:120px;height:35px;padding:5px 0px;"></td>
       		<td data-typeid="<%=m.get("typeid")%>" class="typename"></td>
       		<td><%=m.get("proname")%></td>
			<td><%=m.get("kind")%></td>
       		<td><%=m.get("price")%></td>
       		<td><%=m.get("address")%></td>
       		<td><input type="checkbox" <%=(m.get("istop").toString().equals("1"))?"checked='checked'":"" %>  style="width:15px;height:15px;font-size: 12px;font-weight: lighter; " disabled="disabled">  </td>
       		<td><input type="checkbox" <%=(m.get("isstar").toString().equals("1"))?"checked='checked'":"" %>  style="width:15px;height:15px;font-size: 12px;font-weight: lighter;" disabled="disabled">  </td>
       		<td><a href="proedit?id=<%=m.get("id")%>">修改</a> <a href="prodelete?id=<%=m.get("id")%>">删除</a></td>
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
    			case "1":$(item).text("炒菜"); break;
    			case "2":$(item).text("爆炒"); break;
    			case "3":$(item).text("焖煮"); break;
    			case "4":$(item).text("清蒸"); break;
    			case "5":$(item).text("红烧"); break;
    			case "6":$(item).text("卤煮"); break;
    			case "7":$(item).text("清炒"); break;
    			case "8":$(item).text("清炖"); break;
    			case "9":$(item).text("干锅"); break;
    		}
    	});
    </script>

</body>
</html>