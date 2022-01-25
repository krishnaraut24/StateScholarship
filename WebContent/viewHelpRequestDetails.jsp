<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Help Request Details</title>
</head>
<body>
<%@ include file="headerAdmin.jsp" %>
<%
   //Getting parameter value passed through previos jsp page
	       String reqid= request.getParameter("reqid");
	
		try {
			//Esatblishing the connection
			Connection conn = DBUtil.getConnection();
			//Creating the statement
			Statement st = conn.createStatement();
			String strQuery = "SELECT * FROM ticket where status = 'pending' AND reqid='"+reqid+"' ";
			//Executing the query
			ResultSet rs = st.executeQuery(strQuery);
	%>
	<!-- Code to display details in the tabular format -->
	<table align="center" class="requestTable">
		<thead>
			<tr>
				<th>Request ID</th>
				<th>Issue</th>
				<th>Description</th>
				<th>Date of Ticket</th>
				<th>Raised By</th>
				<th>Status</th>
				<th>Action</th>
			</tr>
		</thead>
		<%
		//While loop to iterate over each row in result set
			while (rs.next()) {
					
					String issue = rs.getString("issue");
					String description = rs.getString("description");
					String dateofticket = rs.getString("dateofticket");
					String userid = rs.getString("raised_by");
					String status = rs.getString("status");
		%><tr>
			<td><%=reqid%></td>
			<td><%=issue%></td>
			<td><%=description%></td>
			<td><%=dateofticket%></td>
			<td><%=userid%></td>
			<td><%=status%></td>
			<td><button class="actionBtn"
					onclick="location.href = 'resolveTicket.jsp?reqid=<%=reqid%>';">Resolve Request</button></td>
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