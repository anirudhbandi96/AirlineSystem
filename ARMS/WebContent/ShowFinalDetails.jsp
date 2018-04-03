<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h3>Successfully booked.<br>Find flight Reservation Details below</h3>
<%
int totalFare = (int)session.getAttribute("totalFare");
String passengerNames[] = (String[])session.getAttribute("PassengerNames");

String flight = (String)session.getAttribute("flight");

if(flight.equals("round"))
{
	int[] ReservationNumbers = (int[])session.getAttribute("bookingRound");
	LocalDate date = (LocalDate)session.getAttribute("date");
	LocalDate date2 = (LocalDate)session.getAttribute("date2");
	String from = (String)session.getAttribute("from");
	String to = (String)session.getAttribute("to");
	
	
	%>
	<table>
	<tr><td>Reservation Number</td>	<td><%out.println(ReservationNumbers[0]); %></tr>
	<tr><td>Date of Travel</td> <td><%out.println(date); %></td></tr>
	<tr><td>From</td><td><%out.println(from); %></td></tr>
	<tr><td>To</td><td><%out.println(to); %></td></tr>
	</table>
	
	<table>
	<tr><td>Reservation Number</td>	<td><%out.println(ReservationNumbers[1]); %></tr>
	<tr><td>Date of Travel</td> <td><%out.println(date2); %></td></tr>
	<tr><td>From</td><td><%out.println(to); %></td></tr>
	<tr><td>To</td><td><%out.println(from); %></td></tr>
	</table>
	
	<%
	
}

else 
	
{
	int ReservationNumber = (int)session.getAttribute("booking");
	LocalDate depart = (LocalDate)session.getAttribute("depart");
	String from = (String)session.getAttribute("from");
	String to = (String)session.getAttribute("to");
	%>
	<table>
	<tr><td>Reservation Number</td>	<td><%out.println(ReservationNumber); %></tr>
	<tr><td>Date of Travel</td> <td><%out.println(depart); %></td></tr>
	<tr><td>From</td><td><%out.println(from); %></td></tr>
	<tr><td>To</td><td><%out.println(to); %></td></tr>
	</table>
	
	<%

}

%>

<table>
<tr><td>Passengers Traveling:</td></tr>

<%

for(int i = 0 ; i < passengerNames.length ; i++)
{
	
	%>
	
	<tr><td>Passenger <%out.println(i+1);%> : </td><td><%out.println(passengerNames[i]); %></td></tr>
	<%
	
	
}
%>

<tr><td>Total Fare</td><td><%out.println(totalFare);%></td></tr>
</table>



<form action = "CustomerServlet" method = "post">
<input type = "hidden" value = "GoToHome" name = "action">
<input type = "submit" value = "Go to HomePage">
</form>
</body>
</html>
