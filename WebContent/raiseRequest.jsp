<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Raise Request</title>
</head>
<body>
	<!-- HTML code to raise the help request -->
	<%@ include file="header.jsp"%>
	<%
		String userid = (String) session.getAttribute("userid");
	%>
	<div align="center">
		<form action="raiseRequestProcess.jsp" method="post">
			<table class="loginForm">
				<caption>
					<h3>Raise Help Request</h3>
				</caption>
				<tr>
					<td>issue:</td>
					<td><input type="text" name="issue"
						placeholder="Type your issue" required class="searchTextField" /></td>
				</tr>
				<tr>
					<td>Description:</td>
					<td><textarea name="description" rows="4" cols="50" required></textarea>
					<td>
				</tr>

				<tr>
					<td colspan="2" align="center">
						<button type="submit" class="actionBtn">Raise Request</button>
					</td>
				</tr>
			</table>
		</form>
		<br> <br>
		<!-- Passing userid as parameter to the next jsp page -->
		<button class="actionBtn"
			onclick="location.href = 'oldHelpRequest.jsp?userid=<%=userid%>';">Old
			Requests</button>
	</div>
</body>
</html>