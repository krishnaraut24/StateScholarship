<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Profile Process</title>
</head>
<body>
<!-- Edit profile process will happen here  -->
<%@ include file="headerInstitution.jsp" %>
	<div align="center">

		<%
		//Taking all input values from the previous jsp page submitted by the user through the input form
			String iname = request.getParameter("iname");
			String iaddress = request.getParameter("iaddress");
			String coursesoffered = request.getParameter("coursesoffered");
			String scholoffered = request.getParameter("scholoffered");
			String institutionid = request.getParameter("institutionid");
			String password = request.getParameter("password");
			String category = request.getParameter("category");

			try {
				//Establishing connection and creating the statement 
				Connection conn = DBUtil.getConnection();
				Statement st = conn.createStatement();
				//Query to update the institution table
				String sql = "UPDATE institution " + " SET iname  =  '" +iname+ "', iaddress='" +iaddress+ "', coursesoffered= '" + coursesoffered + "', scholoffered='" +scholoffered+ "',password='" +password+ "' " + " WHERE institutionid = '"
						+ institutionid + "' ";
				int i = st.executeUpdate(sql);
				if (i == 1) {
					out.println("<h2> Profile Updated Successfully !</h2>");
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</div>

</body>
</html>