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
//HttpSession ses2 = request.getSession(false);
//System.out.println(ses2 + "hello");
boolean addFlag = (boolean)request.getAttribute("addFlag");
System.out.println(addFlag);
if(addFlag)
{
	%>
	
	<script>
	alert("Successful Operation");
	</script>
	<%
}
%>
<a href = "managerHome.jsp">Go To HomePage</a>

</body>
</html>