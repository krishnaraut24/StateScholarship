<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Recover User Id Process..</title>
</head>
<body>
<div align="center">
	<%
	//Getting input values submitted by user through previous jsp page
		String question = request.getParameter("question");
		String email = request.getParameter("email");
		try {
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			//Creating the statement
			Statement st = conn.createStatement();
			//Executing the Query
			ResultSet rs = st.executeQuery("SELECT * FROM users WHERE email = '" + email + "' ");
			if (rs.next()) {
				//Checking whether the enterd question and present question for same email is equal or not
				if (rs.getString("favquestion").equals(question)) {

					String userid = rs.getString("userid");
					out.println("Your User Id Is " + userid );
					out.println("Go To Login Page <a href='login.jsp'>Click Here</a>");

				} else {
					out.println("Wrong Secret Question Selected <a href='recoverUserid.html'>Try Again</a>");
				}
			}else{
				out.println("Wrong E-Mail <a href='recoverUserid.html'>Try Again</a> ");
			}

		} catch (Exception e) {
			e.printStackTrace();

		}
	%>
	</div>
</body>
</html>