<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Institution Schol Process</title>
</head>
<body>
<!-- Code to insert the scholarship data submitted in the previous jsp page into the database -->
<%@ include file="headerInstitution.jsp" %>
	<div align="center">
		<%
		//Getting input values submitted through the html form
			String scholid = request.getParameter("scholid");
			String scholdetails = request.getParameter("scholdetails");
			String merit = request.getParameter("merit");

			try {
				//Establishing the connection
				Connection conn = DBUtil.getConnection();
				//Creating statement
				Statement st = conn.createStatement();
				String sql = "INSERT INTO scholarshipdetails(scholid,scholdetails,merit) values('" + scholid + "','" + scholdetails + "','"
						+ merit + "') ";
				//Executing above query
				int i = st.executeUpdate(sql);
				if (i == 1) {
					out.println("<h2>Your Details Are Submitted Successfully !</h2> ");

				}else{
					out.println("<h2>Error While Submitting Details !</h2> ");
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		%>

	</div>
</body>
</html>