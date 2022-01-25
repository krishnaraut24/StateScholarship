<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Institution Scholarship Page</title>
</head>
<body>
<!-- Code to display the scholarship details provided by the institution -->
<%@ include file="header.jsp"%>
	<%
		try {
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			//creating the statement
			Statement st = conn.createStatement();
			String strQuery = "SELECT * FROM scholarshipdetails ";
			//Executing the query
			ResultSet rs = st.executeQuery(strQuery);
	%>
	<table align="center" class="requestTable">
		<caption>
			<h4>
				Scholarship Details
				</h4>
		</caption>
		<thead>
			<tr>
				<th>Scholarship ID</th>
				<th>Action</th>
			</tr>
		</thead>
		<%
			while (rs.next()) {
					Integer scholid = rs.getInt("scholid");
		%><tr>
			<td><%=scholid%></td>
			<td><button class="actionBtn"
					onclick="location.href = 'viewInstitutionScholarshipDetails.jsp?scholid=<%=scholid%>';">View</button></td>
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
</body>
</html>