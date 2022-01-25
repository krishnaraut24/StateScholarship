<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
</head>
<body>
<!-- Below is the html code for admin login page -->
<%@ include file="buttonGroup.jsp" %>
<div align="center">

		<form action="adminLoginProcess.jsp" method="post">
			<table class="loginForm">
				<caption>
					<h2>Admin Login</h2>
				</caption>
				<tr>
					<td><lable for="adminid"> <b>Admin ID :</b></lable></td>
					<td><input type="text" name="adminid"
						placeholder="Enter your id" required class="searchTextField" /></td>
				</tr>
				<tr>
					<td><lable for="password"> <b>Password :</b></lable></td>
					<td><input type="password" name="password"
						placeholder="Enter your password" required class="searchTextField" /></td>
				</tr>
				<tr>
					<td align="center" colspan="2"><input type="submit"
						value="Login" class="actionBtn" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>