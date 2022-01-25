<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Institution Scholarship Details</title>
</head>
<body>
<%@ include file="header.jsp"%>
<%
//Getting parameter value passed through previos jsp page
	       String scholid= request.getParameter("scholid");
	
		try {
			//Esatblishing the connection
			Connection conn = DBUtil.getConnection();
			//Creating the statement
			Statement st = conn.createStatement();
			String strQuery = "SELECT * FROM scholarshipdetails where scholid ='"+scholid+"' ";
			//Executing the query
			ResultSet rs = st.executeQuery(strQuery);
	%>
		<!-- Code to display details in the tabular format -->
	<table align="center" class="requestTable">
		<thead>
			<tr>
				<th>Scholarship ID</th>
				<th>Scholarship Details</th>
				<th>merit</th>
				<th>Action</th>
			</tr>
		</thead>
		<%
		//While loop to iterate over each row in result set
			while (rs.next()) {
					String scholdetails = rs.getString("scholdetails");
					String merit = rs.getString("merit");
		%><tr>
			<td><%=scholid%></td>
			<td><%=scholdetails%></td>
			<td><%=merit%></td>
			<td><button class="actionBtn"
					onclick="location.href = 'applyScholarship.jsp?scholid=<%=scholid%>';">Apply</button></td>
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