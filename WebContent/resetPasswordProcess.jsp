<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Reset Password Process</title>
</head>
<body>
<!-- Submitted data in previous page will be handled by this page -->
<div align="center">
	<%
	//Getting input values from previous inpput form submitted by the user
		String userid = request.getParameter("userid");
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");

		try {
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			//Creating the statement
			Statement st = conn.createStatement();
			//Executing the Query
			ResultSet rs = st.executeQuery("SELECT COUNT(*) FROM users where userid = '" + userid + "' ");
			rs.next();
			String countrow = rs.getString(1);
			if(countrow.equals("1")){
			if(password1.equals(password2)){
				String sql = "UPDATE users " + " SET password  = '" + password1 + "' " + " WHERE userid = '"
						+ userid + "' ";
				int i = st.executeUpdate(sql);
				out.println("Password Reset Successfully..<a href='login.jsp'>Login</a> ");
			}else{
				out.println("Password Not Matched <a href='resetPassword.html'>Try Again</a>");
			}
			}else{
				out.println("User Id Not Exist <a href='resetPassword.html'>Try Again</a> ");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	</div>
</body>
</html>