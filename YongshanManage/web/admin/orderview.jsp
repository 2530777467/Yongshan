<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
Map<String, Object> orderhead = (Map<String, Object>)request.getAttribute("orderhead");
List<Map<String, Object>> orderitems = (List<Map<String, Object>>)request.getAttribute("orderitems");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/comm.css"/>
</head>
<body>
<p class="path">商城后台系统/订单中心/订单明细</p>
<table border="0" cellspacing="0" cellpadding="0" class="tb tblis" style="margin-bottom:2px;">
<tr><td style="width:120px;">订单号</td><td style="text-align:left;"><%=orderhead.get("orderid")%></td></tr>

<tr><td>总金额</td><td style="text-align:left;"><%=orderhead.get("sumprice")%></td></tr>
<tr><td>收货人</td><td style="text-align:left;"><%=orderhead.get("sname")%></td></tr>
<tr><td>联系电话</td><td style="text-align:left;"><%=orderhead.get("stel")%></td></tr>
<tr><td>送货地址</td><td style="text-align:left;"><%=orderhead.get("saddress")%></td></tr>
<tr><td>下单时间</td><td style="text-align:left;"><%=orderhead.get("ctime")%></td></tr>
</table>

<table border="0" cellspacing="0" cellpadding="0" class="tb tblis">
       <tr>
       	  <td style="width:50%;">订单菜品明细</td><td style="width: 25%;">单价</td><td style="width:25%;">数量</td>
       </tr>
       <%for (Map<String, Object> m : orderitems) { %>
        <tr>
       		<td><%=m.get("proname")%></td>
       		<td><%=m.get("price")%></td>
       		<td><%=m.get("procount")%></td>

       </tr>
    	<% } %>
    </table>
    
    <div class="pager">
       		
    </div>
    
   
</body>
</html>