<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Registration processing</title>
</head>
<body>
<!-- Below is the code to handle the data submitted by the user in the previous jsp page -->
<div align="center">
<%
//Getting input values submitted by the user in the previous jsp page 
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	String dob = request.getParameter("dob");
	String gender = request.getParameter("gender");
	String contact = request.getParameter("contactnumber");
	String email = request.getParameter("email");
	String category = request.getParameter("category");
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	try {
		//Establishing the connection
		Connection conn = DBUtil.getConnection();
		//Creating the statement
		Statement st = conn.createStatement();
		String strQuery = "SELECT COUNT(*) FROM users where userid='" + userid + "' OR email = '" + email + "' ";
		//Executing the above query
		ResultSet rs = st.executeQuery(strQuery);
		//Checking whether data is present or not in result set
		rs.next();
		String Countrow = rs.getString(1);

		if (Countrow.equals("0")) {
			//If false then insert data in the users table
			int i = st.executeUpdate(
					"insert into users(first_name,last_name,dob,gender,contact_number,email,user_category,userid,password) values('"
							+ fname + "','" + lname + "','" + dob + "','" + gender + "','" + contact + "','"
							+ email + "','" + category + "','" + userid + "','" + password + "')");
			out.println(
					"Thank you for register ! Please click here for credential recovery <a href='credentialRecovery.html'>Click</a>");
		} else {
			out.println(
					"<h2>Registration Not Completed..userid or email already exist..  <a href='register.jsp'>Try Again </a></h2>");
		}
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>
</div>
</body>
</html>