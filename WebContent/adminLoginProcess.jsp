<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Admin Login Process</title>
</head>
<body>
<div align="center">
	<%
	// Taking input values from the user by request.getParameter() method from loginAdmin.jsp page
		String adminid = request.getParameter("adminid");
		String password = request.getParameter("password");
		try {
			// Establishing connection with the database
			Connection con = DBUtil.getConnection();
			//creating statement
			Statement st = con.createStatement();
			//Executing query
			ResultSet rs = st.executeQuery(
					"select * from admin where adminid='" + adminid + "' AND password='" + password + "' ");
			boolean flag = false;
			while (rs.next()) {
				flag = true;
			}

			if(flag) {
				
				 // if true then sending to home.jsp by setting up the max inactive interval of 200 sec

	session.setAttribute("adminid",adminid);
	session.setMaxInactiveInterval(200); 
	response.sendRedirect("homeAdmin.jsp");

		}else{
				out.println("<h3>Invalid Admin Credential.<a href='loginAdmin.jsp'>Try Again</a> </h3>");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</div>

</body>
</html>