<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Profile</title>
</head>
<body>
<!-- Page to edit the profile of institution -->
<%@ include file="headerInstitution.jsp" %>
	<%
		String institutionid = (String) session.getAttribute("institutionid");
	%>
	<%
		try {
			//Establishing connection and creating statement
			Connection conn = DBUtil.getConnection();
			Statement st = conn.createStatement();
			String strQuery = "SELECT * FROM institution where institutionid = '" + institutionid + "' ";
			//Executing query
			ResultSet rs = st.executeQuery(strQuery);
	%>
	<form action="editProfileProcess.jsp" method="post">
	<table align="center" class="requestTable">
		<caption>
			<h2>Institution Details</h2>
		</caption>
		<thead>
			<tr>
				<th>Field</th>
				<th>Value</th>
			</tr>
		</thead>
		<%
		//While loop to iterate over the each row stored in the result set
			while (rs.next()) {
					String iname = rs.getString("iname");
					String iaddress = rs.getString("iaddress");
					String coursesoffered = rs.getString("coursesoffered");
					String scholoffered = rs.getString("scholoffered");
					String password = rs.getString("password");
					String category = rs.getString("category");
		%>
		<!-- Below is the html code for editing the profile -->
		<tr>
			<td><lable for="iname">Institution Name:</lable></td>
			<td><input type="text" id="iname" name="iname" required value="<%=iname%>" /></td>
		</tr>
		<tr>

			<td><lable for="iaddress">Institution Address:</lable></td>
			<td><input type="text" id="iaddress" name="iaddress" required value="<%=iaddress%>"/></td>
		</tr>
		<tr>

			<td><lable for="coursesoffered">Courses Offered:</lable></td>
			<td><select name="coursesoffered" id="coursesoffered" value="<%=coursesoffered%>">
					<option value="btech">BTech</option>
					<option value="mtech">MTech</option>
					<option value="bca">BCA</option>
					<option value="mca">MCA</option>
			</select></td>
		</tr>
		<tr>

			<td><lable for="scholoffered">Scholarship Offered:</lable></td>
			<td><input type="text" name="scholoffered" id="scholoffered"
				required value="<%=scholoffered%>"/></td>
		</tr>
		<tr>

			<td><lable for="institutionid">Institution Id:</lable></td>
			<td><input type="text" id="institutionid" name="institutionid"
				required readonly value="<%=institutionid%>"/></td>
		</tr>
		<tr>

			<td><lable for="password">Password:</lable></td>
			<td><input type="password" id="password" name="password"
				required value="<%=password%>"/></td>
		</tr>
		<tr>

			<td><lable for="category">Category:</lable></td>
			<td><select name="category" id="category">
					<option value="institution" value="<%=category%>">Institution</option>
			</select></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><button class="actionBtn"
					onclick="location.href = 'editProfileProcess.jsp?institutionid=<%=institutionid%>';">Update</button></td>
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
	</form>
</body>
</html>