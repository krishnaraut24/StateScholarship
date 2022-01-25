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
	//Getting value from the previous jsp page
	       String requestid= request.getParameter("requestid");
	
		try {
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			//Create the statement
			Statement st = conn.createStatement();
			String strQuery = "SELECT * FROM details where requestid='"+requestid+"' ";
			//Executing the above query
			ResultSet rs = st.executeQuery(strQuery);
	%>
	<!-- Code to display the result in the tabular form -->
	<table align="center" class="requestTable">
		<thead>
			<tr>
				<th>Request ID</th>
				<th>Marks</th>
				<th>Grade</th>
				<th>Course</th>
				<th>College</th>
				<th>Submitted By</th>
				<th>Applied For</th>
				<th>Final Status</th>
				<th colspan="2">Action</th>
			</tr>
		</thead>
		<%
		//While llop the execute through all the rows in the result set
			while (rs.next()) {
					String marks = rs.getString("marks");
					String grade = rs.getString("grade");
					String course = rs.getString("course");
					String college = rs.getString("college");
					String userid = rs.getString("userid");
					String scholid = rs.getString("applied_for");
					String finalstatus = rs.getString("finalstatus");
		%><tr>
			<td><%=requestid%></td>
			<td><%=marks%></td>
			<td><%=grade%></td>
			<td><%=course%></td>
			<td><%=college%></td>
			<td><%=userid%></td>
			<td><%=scholid%></td>
			<td><%=finalstatus%></td>
			<td><button class="actionBtn" onclick="location.href = 'approveSchol.jsp?requestid=<%=requestid%>';">Approve</button></td>
			<td><button class="actionBtn" onclick="location.href = 'deniedSchol.jsp?requestid=<%=requestid%>';">Denied</button></td>
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