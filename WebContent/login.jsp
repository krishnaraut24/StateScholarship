<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>State Scholarship</title>
</head>
<body>
<%@ include file="buttonGroup.jsp" %>
	<!-- Below is the html code for student login page -->
	<div align="center">

		<form action="loginProcess.jsp" method="post">
			<table class="loginForm">
				<caption>
					<h3>State Scholarship- Student Login</h3>
				</caption>
				<tr>
					<td><lable for="userid"> <b>User name :</b></lable></td>
					<td><input type="text" name="userid"
						placeholder="Enter your user id" required class="searchTextField" /></td>
				</tr>
				<tr>
					<td><lable for="password"> <b>Password :</b></lable></td>
					<td><input type="password" name="password"
						placeholder="Enter your password" required class="searchTextField" /></td>
				</tr>
				<tr>
					<td align="center" colspan="2"><input type="submit"
						value="Login" class="actionBtn" /> <a href="register.jsp">Register</a></td>
				</tr>
			</table>
		</form>
		<br> <b>Forgot User ID:</b> <a href="recoverUserid.html"> Get
			Now</a> <br> <br> <b>Forgot Password:</b> <a
			href="recoverPassword.html">Reset Now</a>
	</div>
</body>
</html>