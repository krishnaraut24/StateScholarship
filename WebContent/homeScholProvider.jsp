<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Schol Provider Home</title>
</head>
<body>
<!-- Here is the code for Scholarship provider home page -->
<%@ include file="headerScholProvider.jsp" %>
<%
String userid = (String)session.getAttribute("userid");
%>
	<div align="center">
		<h2>Scholarship Provider Home</h2>  
		<label>Welcome <%= userid %></label>

	</div>
</body>
</html>