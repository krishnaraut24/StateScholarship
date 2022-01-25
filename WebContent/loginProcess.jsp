<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<head>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div align="center">
	<% 
	// Taking input values from the user by request.getParameter() method
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		try {
			// Establishing connection with the database
			Connection con = DBUtil.getConnection();
			//creating statement
			Statement st = con.createStatement();
			//Executing query
			ResultSet rs = st.executeQuery(
					"select * from users where user_category ='student' AND userid='" + userid + "' AND password='" + password + "' ");
			boolean flag = false;
			while (rs.next()) {
				flag = true;
			}

			if(flag) {
				
    // if true then sending to home.jsp by setting up the max inactive interval of 200 sec
	session.setAttribute("userid",userid);
	session.setMaxInactiveInterval(200); 
	response.sendRedirect("home.jsp"); 

		}else{
				out.println("<h3>Invalid password or username.<a href='login.jsp'>Try Again</a> </h3>");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</div>
</body>
