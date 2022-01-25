<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Institution Login</title>
</head>
<body>
<!-- Below is the html code for institution login page -->
<%@ include file="buttonGroup.jsp" %>
	<div align="center">

		<form action="institutionLoginProcess.jsp" method="post">
			<table class="loginForm">
				<caption>
					<h3>State Scholarship-Institution Login</h3>
				</caption>
				<tr>
					<td><lable for="institutionid"> <b>Institution Id:</b></lable></td>
					<td><input type="text" name="institutionid"
						placeholder="Enter your id" required class="searchTextField" /></td>
				</tr>
				<tr>
					<td><lable for="password"> <b>password</b></lable></td>
					<td><input type="password" name="password"
						placeholder="Enter your password" required class="searchTextField" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="Login" class="actionBtn" /> <input type="button"
						value="Register" class="actionBtn"
						onclick="location.href = 'registerInstitution.jsp';" /></td>

				</tr>
			</table>
		</form>
	</div>

</body>
</html>