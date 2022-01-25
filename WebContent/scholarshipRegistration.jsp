<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Scholarship Registration</title>
</head>
<body>
<!-- Below is the code for scholarship registration page -->
<%@ include file="header.jsp" %>
<div align="center">

<!-- After submitting form data will be handled by form action -->

	<form action="scholarshipRegistrationProcess.jsp" method="post">
		<table class="loginForm">
			<caption><h3>Scholarship Registration Form</h3></caption>
			<tr>
				<td>Marks:</td>
				<td><input type="text" name="marks" placeholder="Enter marks"
					pattern="[0-9]{2}" required class="searchTextField"/></td>
			</tr>
			<tr>
				<td>Grade:</td>
				<td><input type="text" name="grade" placeholder="Enter grade"
					pattern="[A-D]{1}" required class="searchTextField"/>
				<td>
			</tr>
			<tr>

				<td>Course :</td>
				<td><select name="course" class="searchTextField">
						<option value="Course">Course</option>
						<option value="BCA">BCA</option>
						<option value="BBA">BBA</option>
						<option value="B.Tech">B.Tech</option>
						<option value="MBA">MBA</option>
						<option value="MCA">MCA</option>
						<option value="M.Tech">M.Tech</option>
				</select></td>
			</tr>
			<tr>

				<td>College:</td>
				<td><input type="text" name="college"
					placeholder="Enter Your College Name" size="50" required class="searchTextField" />
				<td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="actionBtn">Register For
						Scholarship</button>
				</td>
			</tr>
		</table>
	</form>
	</div>

</body>
</html>