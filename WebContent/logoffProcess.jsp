<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LogOff Process</title>
</head>
<body>
<!-- Here setting attribute value equal to null and sending redirect to login page -->
<%
session.setAttribute("userid", null);
response.sendRedirect("login.jsp");
%>
</body>
</html>