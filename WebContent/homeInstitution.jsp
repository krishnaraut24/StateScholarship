<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Institution Home</title>
</head>
<body>
<!-- Here is the code Institution home page -->
<%@ include file="headerInstitution.jsp" %>
<%
String institutionid = (String)session.getAttribute("institutionid");
%>
	<div align="center">
		<h2>Institution Home</h2>  
		<label>Welcome <%= institutionid %></label>

	</div>
</body>
</html>