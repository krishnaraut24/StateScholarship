<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Registration Form</title>
</head>
<body>
<!-- Below is the HTML code for registration page -->
	<div align="center">
<!-- After submitting data will be handled by action -->
		<form action="registrationProcess.jsp">
			<table class="loginForm">
				<caption>
					<h3>Registration Form</h3>
				</caption>
				<tr>
					<td><lable for="fname">First Name:</lable></td>
					<td><input type="text" id="fname" name="fname" required /></td>
				</tr>
				<tr>

					<td><lable for="lname">Last Name:</lable></td>
					<td><input type="text" id="lname" name="lname" required /></td>
				</tr>
				<tr>

					<td><lable for="dob">DOB:</lable></td>
					<td><input type="text" id="dob" name="dob" required /></td>
				</tr>
				<tr>

					<td><lable for="gender">Gender:</lable></td>
					<td><input type="radio" id="gender" name="gender" value="male" />Male
						<input type="radio" id="gender" name="gender" value="female" />Female
					</td>
				</tr>
				<tr>

					<td><lable for="contactnumber">Contact Number:</lable></td>
					<td><input type="text" id="contactnumber" name="contactnumber"
						required /></td>
				</tr>
				<tr>

					<td><lable for="email">E-Mail:</lable></td>
					<td><input type="email" id="email" name="email" required /></td>
				</tr>
				<tr>

					<td><lable for="category">User Category:</lable></td>
					<td><select name="category" id="category">
							<option value="student">Student</option>
							<option value="scholarshipProvider">Scholarship Provider</option>
					</select></td>
				</tr>
				<tr>

					<td><lable for="userid">User Id:</lable></td>
					<td><input type="text" id="userid" name="userid" required /></td>
				</tr>
				<tr>

					<td><lable for="password">Password:</lable></td>
					<td><input type="password" id="password" name="password"
						required /></td>
				</tr>
				<tr>


					<td colspan="2" align="center"><input type="submit"
						value="Register" class="actionBtn" /></td>
				</tr>
			</table>
		</form>
	</div>
	<button class="actionBtn" style="float:right;position: absolute;top: 8px;right: 16px;" 
	onclick="location.href = 'login.jsp';">Login Page</button> 
</body>
</html>