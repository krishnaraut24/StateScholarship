<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Institution Registration</title>
</head>
<body>
<!--Below HTML code for Institute registration page -->
	<div align="center">
<!-- After submitting data will be handled by the form action -->
		<form action="institutionRegistrationProcess.jsp" method="post">
			<table class="loginForm">
				<caption>
					<h3>Institute Registration Form</h3>
				</caption>
				<tr>
					<td><lable for="iname">Institution Name:</lable></td>
					<td><input type="text" id="iname" name="iname" required /></td>
				</tr>
				<tr>

					<td><lable for="iaddress">Institution Address:</lable></td>
					<td><input type="text" id="iaddress" name="iaddress" required /></td>
				</tr>
				<tr>

					<td><lable for="coursesoffered">Courses Offered:</lable></td>
					<td><select name="coursesoffered" id="coursesoffered">
							<option value="btech">BTech</option>
							<option value="mtech">MTech</option>
							<option value="bca">BCA</option>
							<option value="mca">MCA</option>
					</select></td>
				</tr>
				<tr>

					<td><lable for="scholoffered">Scholarship Offered:</lable></td>
					<td><input type="text" name="scholoffered" id="scholoffered"
						required /></td>
				</tr>
				<tr>

					<td><lable for="institutionid">Institution Id:</lable></td>
					<td><input type="text" id="institutionid" name="institutionid"
						required /></td>
				</tr>
				<tr>

					<td><lable for="password">Password:</lable></td>
					<td><input type="password" id="password" name="password"
						required /></td>
				</tr>
				<tr>

					<td><lable for="category">Category:</lable></td>
					<td><select name="category" id="category">
							<option value="institution">Institution</option>
					</select></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="Register" class="actionBtn" /></td>
				</tr>
			</table>
		</form>
	</div>
	<button class="actionBtn" style="float:right;position: absolute;top: 8px;right: 16px;" 
	onclick="location.href = 'loginInstitution.jsp';">Login Page</button> 

</body>
</html>