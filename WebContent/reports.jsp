<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reports</title>
</head>
<body>
<!-- HTML code to view the reports list -->
<!-- By clicking each button will and you on the corresponding jsp page -->
<%@ include file="headerInstitution.jsp"%>
	<div align="center">
		<table class="requestTable">
			<tr>
				<td><h2>Scholarship Details =></h2></td>
				<td><button class="actionBtn"
						onclick="location.href = 'scholDetails.jsp'">View</button></td>
			</tr>
			<tr>
				<td><h2>Scholarship Requests =></h2></td>
				<td><button class="actionBtn"
						onclick="location.href = 'scholRequests.jsp'">View</button></td>
			</tr>
			<tr>
				<td><h2>Availing Students =></h2></td>
				<td><button class="actionBtn"
						onclick="location.href = 'availingStudents.jsp'">View</button></td>
			</tr>
		</table>


	</div>
</body>
</html>