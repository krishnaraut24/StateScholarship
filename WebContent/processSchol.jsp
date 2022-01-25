<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Process Scholarship</title>
</head>
<body>
<%@ include file="headerInstitution.jsp"%>
	<%
		try {
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			//Create the statement
			Statement st = conn.createStatement();
			String strQuery = "SELECT * FROM details where applied = 'yes' and finalstatus='pending' ";
			//Executing the above query
			ResultSet rs = st.executeQuery(strQuery);
	%>
	<!-- Code to display the result in the tabular form -->
	<table align="center" class="requestTable">
		<caption>
			<h3>Scholarship Requests</h3>
		</caption>
		<thead>
			<tr>
				<th>Request ID</th>
				<th>Action</th>
			</tr>
		</thead>
		<%
		//While llop the execute through all the rows in the result set
			while (rs.next()) {
					Integer requestid = rs.getInt("requestid");
		%><tr>
			<td><%=requestid%></td>
			<td><button class="actionBtn"
					onclick="location.href = 'processSchol2.jsp?requestid=<%=requestid%>';">View</button></td>
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