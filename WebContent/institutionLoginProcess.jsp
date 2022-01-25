<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Institution Login Process</title>
</head>
<body>
<!-- Here is the code for login process of institution  -->
	<div align="center">
		<%
		//Getting input values from user submitted in login form in the previous jsp page 
			String institutionid = request.getParameter("institutionid");
			String password = request.getParameter("password");
			try {
				//Establishing the conection
				Connection con = DBUtil.getConnection();
				//Creating the statement
				Statement st = con.createStatement();
				//Executing the query by using result set
				ResultSet rs = st.executeQuery(
						"select * from institution where institutionid='" + institutionid + "' AND password='" + password + "' ");
				boolean flag = false;
				while (rs.next()) {
					flag = true;
				}

				if (flag) {
					
                //If the condition is true the send redirect to institution home by setting the max inactive interval of 200sec
					session.setAttribute("institutionid", institutionid);
					session.setMaxInactiveInterval(200);
					response.sendRedirect("homeInstitution.jsp");

				} else {
					//Else print the below message
					out.println("<h3>Invalid password or username.<a href='loginInstitution.jsp'>Try Again</a> </h3>");
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</div>

</body>
</html>