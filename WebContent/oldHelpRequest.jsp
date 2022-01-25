<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Old Help Request</title>
</head>
<body>
<!-- Here is the code to see old help request -->
<%@ include file="header.jsp" %>
<%
  //Getting userid from previous jsp page
	       String userid= request.getParameter("userid");
	
		try {
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			//Creating the statement
			Statement st = conn.createStatement();
			String strQuery = "SELECT * FROM ticket where raised_by='"+userid+"' ";
			//Executing the above query
			ResultSet rs = st.executeQuery(strQuery);
	%>
	<!-- Code to display data in the tabular format -->
	<table align="center" class="requestTable">
		<thead>
			<tr>
				<th>Request ID</th>
				<th>Issue</th>
				<th>Description</th>
				<th>Date Of Ticket</th>
				<th>Status</th>
				<th>Raised By</th>
			</tr>
		</thead>
		<%
		//While loop to iterate through the all rows of result set
			while (rs.next()) {
					String reqid = rs.getString("reqid");
					String issue = rs.getString("issue");
					String description = rs.getString("description");
					String dateofticket = rs.getString("dateofticket");
					String status = rs.getString("status");
		%><tr>
			<td><%=reqid%></td>
			<td><%=issue%></td>
			<td><%=description%></td>
			<td><%=dateofticket%></td>
			<td><%=status%></td>
			<td><%=userid%></td>
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