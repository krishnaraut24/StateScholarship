<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Scholarship Provider Login </title>
</head>
<body>
<!-- Code for login page of scholarship provider -->
<%@ include file="buttonGroup.jsp" %>
<div align="center">
<!-- After submitting data will be checked by the form action -->
		<form action="scholProviderLoginProcess.jsp" method="post">
		<table class="loginForm">
			<caption><h3>State Scholarship-NGO Login</h3></caption>
			<tr>

			<td>User Id:</td>
			<td><input type="text" name="userid"
				placeholder="Enter your user id" required class="searchTextField" /></td>
			</tr>
			<tr>
			<td> Password:</td>
			<td><input type="password" name="password"
				placeholder="Enter your password" required class="searchTextField"/></td>
			</tr>
			<tr>
			<td colspan="2" align="center"> <input type="submit" value="Login" class="actionBtn"></td>
			</tr>
   </table>
		</form>
	</div>
</body>
</html>