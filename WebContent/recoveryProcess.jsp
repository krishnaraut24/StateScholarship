<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Recovery Page</title>
</head>
<body>
<div align="center">
	<%
	//Getting input values from the prvious jsp page 
		String userid = request.getParameter("userid");
		String question = request.getParameter("question");
		try {
			//Establishing the connection
			Connection con = DBUtil.getConnection();
			//Creating the statement
			Statement st = con.createStatement();
			//Executing the query
			ResultSet rs = st.executeQuery("SELECT COUNT(*) FROM users WHERE userid= '" + userid + "' ");
			//Checking whether record present in rs or not
			rs.next();
			String Countrow = rs.getString(1);
			if (Countrow.equals("1")) {
				String sql = "UPDATE users " + " SET favquestion  = '" + question + "' " + " WHERE userid = '"
						+ userid + "' ";
				int i = st.executeUpdate(sql);

				if (i == 1) {
					out.println(
							"You have successfully completed the registration <a href='login.jsp'>click here to login</a> ");
				} else {
					out.println("error...");
				}
			}else{
				out.println("User Id Not Matched<a href='credentialRecovery.html'>");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	</div>
</body>
</html>

