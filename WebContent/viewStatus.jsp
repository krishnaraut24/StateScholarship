<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Status</title>
</head>
<body>
<%@ include file="header.jsp"%>
	<%
	//Getting parameter value passed through previos jsp page
	    String userid = (String)session.getAttribute("userid");
		try {
			//Esatblishing the connection
			Connection conn = DBUtil.getConnection();
			//Creating the statement
			Statement st = conn.createStatement();
			String strQuery = "SELECT * FROM details where userid='"+userid+"' ";
			//Executing the query
			ResultSet rs = st.executeQuery(strQuery);
	%>
	<!-- Code to display details in the tabular format -->
	<table align="center" class="requestTable">
		<caption>
			<h4>
				Scholarship Status
				</h4>
		</caption>
		<thead>
			<tr>
				<th>Scholarship ID For Which You Have Applied</th>
				<th>Approval From NGO</th>
				<th>Final Status</th>
			</tr>
		</thead>
		<%
		//While loop to iterate over each row in result set
			while (rs.next()) {
					Integer scholid = rs.getInt("applied_for");
					String status = rs.getString("status");
					String finalstatus = rs.getString("finalstatus");
		%><tr>
			<td><%=scholid%></td>
			<td><%=status %></td>
			<td><%=finalstatus %></td>
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