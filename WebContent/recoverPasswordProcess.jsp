<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Recover Password Process..</title>
</head>
<body>
<div align="center">
	<%
	//Getting input values submitted by the user through the previous jsp page
		String userid = request.getParameter("userid");
		try {
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			//Creating the statement
			Statement st = conn.createStatement();
			//Executing query
			ResultSet rs = st.executeQuery("SELECT COUNT(*) FROM users where userid= '" + userid + "' ");
			//Checking whether data is present or not in resultset
			rs.next();
			String Countrow = rs.getString(1);
			if (Countrow.equals("1")){
				
				out.println("<h2>Reset Your Password <a href='resetPassword.html'>here</a></h2> ");
			}else{
				out.println("<h2> Wrong User Id <a href='recoverPassword.html'>Try Again</a></h2> ");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</div>
</body>
</html>