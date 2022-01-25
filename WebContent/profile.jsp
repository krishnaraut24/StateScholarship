<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Institution Profile</title>
</head>
<body>
<!--  code to view the Institution profile  -->
<%@ include file="headerInstitution.jsp" %>
<%
//Getting institution ID 
String institutionid = (String)session.getAttribute("institutionid");
%>
	<%
		try {
			//Establishing connection
			Connection con = DBUtil.getConnection();
			//Creating statement
			Statement st = con.createStatement();
			String strQuery = "SELECT * FROM institution where institutionid = '"+institutionid+"' ";
			//Executing above Select query
			ResultSet rs = st.executeQuery(strQuery);
	%>
	<!-- Below is the HTML code to display the details in tabular format -->
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
		//While loop to iterate through all rows in the ResultSet
			while (rs.next()) {
					String iname  = rs.getString("iname");
					String iaddress  = rs.getString("iaddress");
					String coursesoffered  = rs.getString("coursesoffered");
					String scholoffered  = rs.getString("scholoffered");
					String password  = rs.getString("password");
					String category  = rs.getString("category");
		%><tr>
			<td>Institution Name:</td>
			<td><%=iname%></td>
		</tr>
		<tr>
			<td>Institution Address:</td>
			<td><%=iaddress%></td>
		</tr>
		<tr>
			<td>Courses Offered:</td>
			<td><%=coursesoffered%></td>
		</tr>
		<tr>
			<td>Scholarship Offered:</td>
			<td><%=scholoffered%></td>
		</tr>
		<tr>
			<td>Institution Id:</td>
			<td><%=institutionid%></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td><%=password%></td>
		</tr>
		<tr>
			<td>Category:</td>
			<td><%=category%></td>
		</tr>
		<tr>
		<!-- Here we are passing instiution id as parameter to the next jsp page -->
		    <td colspan="2" align="center"><button class="actionBtn"
					onclick="location.href = 'editProfile.jsp?institutionid=<%=institutionid%>';">Edit</button></td>
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