<%@page import="pojo.Customer"%>
<%@page import="pojo.FDisplay"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
String[] cs = (String[])request.getAttribute("customer");
if(cs != null)
{
	%>
	
	<table>
	<tr>
	<th>AccountNumber</th>
	<th>FirstName</th>
	<th>LastName</th>
	<th>Revenue</th>
	</tr>
		
		<tr>
		<td><%out.println(cs[3]); %></td>
		<td><%out.println(cs[1]); %></td>
		<td><%out.println(cs[2]); %></td>
		<td><%out.println(cs[0]); %></td>
		</tr>
	
	</table>
	<%
	
}
%>


<a href = "managerHome.jsp">Go To HomePage</a>

</body>
</html>