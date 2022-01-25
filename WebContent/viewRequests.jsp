<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>View Request</title>
</head>
<body>
<%@ include file="headerScholProvider.jsp" %>

	<%
		try {
			//Esatblishing the connection
			Connection conn = DBUtil.getConnection();
			//Creating the statement
			Statement st = conn.createStatement();
			String strQuery = "SELECT * FROM details where status = 'pending' ";
			//Executing the query
			ResultSet rs = st.executeQuery(strQuery);
	%>
	<!-- Code to display details in the tabular format -->
	<table align="center" class="requestTable">
		<caption>
			<h4>Pending Requests</h4>
		</caption>
		<thead>
			<tr>
				<th>Request ID</th>
				<th>Action</th>
			</tr>
		</thead>
		<%
		//While loop to iterate over each row in result set
			while (rs.next()) {
					Integer requestid = rs.getInt("requestid");
		%><tr>
			<td><%=requestid%></td>
			<td><button class="actionBtn"
					onclick="location.href = 'viewRequestDetails.jsp?requestid=<%=requestid%>';">View</button></td>
		</tr>

		<%
			}
		%>
		<%
			} catch (Exception e) {
				e.printStackTrace();

			}
		%>

	</table>
	<br>
	<br>
	<div align="center">
	<form action="viewApprovedRequests.jsp" method="post">
	<input type="submit" value="View AR" class="actionBtn"/>
	</form>
	</div>
</body>
</html>




