<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Scholarship Details</title>
</head>
<body>
<!-- HTML page to edit the scholarship details  -->
<div align="center">
	<%@ include file="headerInstitution.jsp"%>
	<%
		String scholid = request.getParameter("scholid");
	%>
	<%
		try {
			//Establishing connection, creating statement and executing the Query
			Connection conn = DBUtil.getConnection();
			Statement st = conn.createStatement();
			String strQuery = "SELECT * FROM scholarshipdetails where scholid = '" + scholid + "' ";
			ResultSet rs = st.executeQuery(strQuery);
	%>
	<!-- Below is the HTML code to create the form to edit the scholarship details -->
	<form action="editScholDetailsProcess.jsp" method="post">
		<table align="center" class="requestTable">
			<caption>
				<h2>Scholarship Details</h2>
			</caption>
			<thead>
				<tr>
					<th>Field</th>
					<th>Value</th>
				</tr>
			</thead>
			<%
			       while(rs.next()){
						String scholdetails = rs.getString("scholdetails");
						String merit = rs.getString("merit");
			%><tr>
				<td><lable for="scholid">Scholarship ID:</lable></td>
				<td><input type="text" id="scholid" name="scholid" required readonly
					value="<%=scholid%>" /></td>
			</tr>
			<tr>

				<td><lable for="scholdetails">Scholarship Details:</lable></td>
				<td><input type="text" id="scholdetails" name="scholdetails" required
					value="<%=scholdetails%>" /></td>
			</tr>
			<tr>

				<td><lable for="merit">Merits Required:</lable></td>
				<td><input type="text" id="merit" name="merit" required
					value="<%=merit%>" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><button class="actionBtn">Update</button></td>
			</tr>


		<%
			}
		%><%
				} catch (Exception e) {
					e.printStackTrace();

				}
			%>

		</table>
	</form>
</div>
</body>
</html>