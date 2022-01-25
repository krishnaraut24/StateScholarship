<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Institution Scholarship</title>
</head>
<body>
<!-- Input html form to submit the scholarship details -->
<%@ include file="headerInstitution.jsp" %>
<div align="center">
	<form action="institutionScholProcess.jsp" method="post">
		<table class="loginForm">
			<caption><h3>Enter Schol Details</h3></caption>
			<tr>
				<td>Scholarship Id:</td>
				<td><input type="text" name="scholid" placeholder="Enter Schol Id"
					 required class="searchTextField"/></td>
			</tr>
			<tr>
				<td>Scholarship Details:</td>
				<td><input type="text" name="scholdetails" placeholder="Enter Scholarship Details" size="50"
					 required class="searchTextField"/>
				<td>
			</tr>
			<tr>
				<td>Merits Required:</td>
				<td><input type="text" name="merit" pattern="[0-9]{2}"
					placeholder="Enter Merit required" required class="searchTextField" />
				<td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="actionBtn">Submit Details</button>
				</td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>