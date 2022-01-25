<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Request Details</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<%@ include file="headerScholProvider.jsp" %>
	<%
	//Getting parameter value passed through previos jsp page
	       String requestid= request.getParameter("requestid");
	
		try {
			//Esatblishing the connection
			Connection conn = DBUtil.getConnection();
			//Creating the statement
			Statement st = conn.createStatement();
			String strQuery = "SELECT * FROM details where status = 'pending' AND requestid='"+requestid+"' ";
			//Executing the query
			ResultSet rs = st.executeQuery(strQuery);
	%>
	<!-- Code to display details in the tabular format -->
	<table align="center" class="requestTable">
		<thead>
			<tr>
				<th>Request ID</th>
				<th>Marks</th>
				<th>Grade</th>
				<th>Course</th>
				<th>College</th>
				<th>Status</th>
				<th>Action</th>
			</tr>
		</thead>
		<%
		//While loop to iterate over each row in result set
			while (rs.next()) {
					String marks = rs.getString("marks");
					String grade = rs.getString("grade");
					String course = rs.getString("course");
					String college = rs.getString("college");
					String status = rs.getString("status");
		%><tr>
			<td><%=requestid%></td>
			<td><%=marks%></td>
			<td><%=grade%></td>
			<td><%=course%></td>
			<td><%=college%></td>
			<td><%=status%></td>
			<td><button class="actionBtn"
					onclick="location.href = 'approveStatus.jsp?requestid=<%=requestid%>';">Approve Request</button></td>
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