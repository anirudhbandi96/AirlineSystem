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
ArrayList<FDisplay> allFlights = (ArrayList<FDisplay>)request.getAttribute("allFlights");
if(allFlights.size() != 0)
{
	%>
	
	<table>
	<tr>
	<th>FlightNumber</th>
	<th>AirlineName</th>
	<th>Route String</th>
	<th>No Of Seats</th>
	<th>Fare</th>
	</tr>
		
	<%
	
	for(FDisplay fd : allFlights)
	{
		
		%>
		
		<tr>
		<td><%out.println(fd.getFlightNumber()); %></td>
		<td><%out.println(fd.getAirlineName()); %></td>
		<td><%out.println(fd.getRouteString()); %></td>
		<td><%out.println(fd.getSeats()); %></td>
		<td><%out.println(fd.getPrice()); %></td>
		</tr>
		
		<%
		
	}
	
	%>
	</table>
	<%
	
}
%>


<a href = "managerHome.jsp">Go To HomePage</a>

</body>
</html>