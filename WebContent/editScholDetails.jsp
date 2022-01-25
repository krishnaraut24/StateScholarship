<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Scholarship Details</title>
</head>
<!-- HTML page to edit the scholarship details  -->
<body>
	<%@ include file="headerInstitution.jsp"%>
	<div align="center">
		<form action="editScholDetails2.jsp" method="post">
			<table class="loginForm">
				<tr>
					<td>Enter Schol Id For Which You Want To Edit The Details:</td>
					<td><input type="text" name="scholid" class="searchTextField" required /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><button class="actionBtn">Next</button></td>
				</tr>

			</table>


		</form>

	</div>
</body>
</html>