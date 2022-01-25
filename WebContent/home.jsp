<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home-State Scholarship</title>
</head>
<body>
<!-- Here is the code for Student home page -->
<%@ include file="header.jsp" %>
<%
String userid = (String)session.getAttribute("userid");
%>
	<div align="center">
		<h2>WELCOME TO STATE SCHOLARSHIP PORTAL</h2>  
		<label>Welcome <%= userid %></label>

	</div>
</body>
</html>