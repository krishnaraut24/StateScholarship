<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- Page to update the submitted details in the database -->
<%@ include file="headerInstitution.jsp"%>
	<div align="center">

		<%
		//Taking input values entered by the user through previous HTML page
			String scholid = request.getParameter("scholid");
			String scholdetails = request.getParameter("scholdetails");
			String merit = request.getParameter("merit");

			try {
				//Establishing connection and creating statement and executing update query
				Connection conn = DBUtil.getConnection();
				Statement st = conn.createStatement();
				String sql = "UPDATE scholarshipdetails " + " SET scholdetails  =  '" + scholdetails + "', merit='" + merit
						+ "' " + " WHERE scholid = '" + scholid + "' ";
				int i = st.executeUpdate(sql);
				if (i == 1) {
					out.println("<h2> Scholarship Details Updated Successfully !</h2>");
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</div>


</body>
</html>