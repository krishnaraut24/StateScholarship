<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home</title>
</head>
<body>
<!-- Here is the code for Admin home page -->
<%@ include file="headerAdmin.jsp" %>
<%
String adminid = (String)session.getAttribute("adminid");
%>
	<div align="center">
		<h2>Admin Home</h2>  
		<label>Welcome <%= adminid %></label>
	</div>

</body>
</html>