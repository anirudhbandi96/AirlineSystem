<%@page import="java.time.LocalDate"%>
<%@page import="pojo.FDetailsDisplay"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

FDetailsDisplay fd = (FDetailsDisplay)session.getAttribute("fdSelcted");
int BaseFare = fd.getFare();

double discount = (double)session.getAttribute("discount");
double bookingFee = (double)session.getAttribute("bookingFee");

int totalFare = (int)(BaseFare - discount + bookingFee); 
session.setAttribute("totalFare", totalFare);
%>

Base Fare : <%out.println(BaseFare); %>
Discount : <%out.println(discount); %>
Booking Fee : <%out.println(bookingFee); %>
<hr>
Total Fare : <%out.println(totalFare); %>


<form action = "CustomerServlet" method = "post">
<input type = "hidden" value = "confirmSubmit" name = "action">
<input type = "submit" value = "Confirm Booking">

</form>

</body>
</html>