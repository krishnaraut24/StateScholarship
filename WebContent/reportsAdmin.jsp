<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reports Admin</title>
</head>
<body>
<!-- HTML code to view the reports list -->
<!-- By clicking each button will and you on the corresponding jsp page -->
	<%@ include file="headerAdmin.jsp"%>
	<div align="center">
		<table class="requestTable">
			<tr>
				<td><h2>Institution Scholarship Provided =></h2></td>
				<td><button class="actionBtn"
						onclick="location.href = 'institutionScholProvided.jsp'">View</button></td>
			</tr>
			<tr>
				<td><h2>Students Availing Scholarship Institutions =></h2></td>
				<td><button class="actionBtn"
						onclick="location.href = 'institutionScholAvailing.jsp'">View</button></td>
			</tr>
			<tr>
				<td><h2>Scholarship Providers (NGO) =></h2></td>
				<td><button class="actionBtn"
						onclick="location.href = 'scholProviders.jsp'">View</button></td>
			</tr>
			<tr>
				<td><h2>Students Benefited Of NGO =></h2></td>
				<td><button class="actionBtn"
						onclick="location.href = 'ngoBenefited.jsp'">View</button></td>
			</tr>
			<tr>
				<td><h2>Students Awaiting Scholarship =></h2></td>
				<td><button class="actionBtn"
						onclick="location.href = 'awaitingStudents.jsp'">View</button></td>
			</tr>
		</table>


	</div>
</body>
</html>