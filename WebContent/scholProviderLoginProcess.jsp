<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Schol Provider Login Process..</title>
</head>
<body>
<div align="center">
	<%
	//Getting input values submitted by the user in the previous form
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");

		try {
            //Esatblishing the connection
			Connection con = DBUtil.getConnection();
            //Creating the statement
			Statement st = con.createStatement();
			String sql = "SELECT * FROM users WHERE user_category ='scholarshipProvider' AND userid='"+userid+"' AND password='"+password+"' ";
			//Executing the query 
			ResultSet rs = st.executeQuery(sql);
			boolean flag = false;
			while(rs.next()){
				flag=true;
			}
			
			if (!flag){
				out.println("<h2>Not A Valid Scholarship Provider <a href='scholProviderLogin.jsp'>Try Again</a></h2>");
			}else{
				//If flag then sending redirect to the homeScholProvider.jsp by setting max inactive interval of 200 sec
				session.setAttribute("userid", userid);
				session.setMaxInactiveInterval(200);
				response.sendRedirect("homeScholProvider.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	</div>
</body>
</html>



