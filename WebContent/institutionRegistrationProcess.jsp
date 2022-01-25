<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Institution Registration Process</title>
</head>
<body>
	<div align="center">
		<%
		//Getting input values from user submitted in the previous jsp form
			String iname = request.getParameter("iname");
			String iaddress = request.getParameter("iaddress");
			String coursesoffered = request.getParameter("coursesoffered");
			String scholoffered = request.getParameter("scholoffered");
			String institutionid = request.getParameter("institutionid");
			String password = request.getParameter("password");
			String category = request.getParameter("category");
			try {
				//Establishing the connection 
				Connection conn = DBUtil.getConnection();
				//creating the statement
				Statement st = conn.createStatement();
				String strQuery = "SELECT COUNT(*) FROM institution where institutionid= '" + institutionid + "' "; 
				//Executing the query by using resultset 
				ResultSet rs = st.executeQuery(strQuery);
				rs.next();
				String Countrow = rs.getString(1);
                //Checking whether institution id already present or not...if not the execute if other wise else
				if (Countrow.equals("0")) {
					int i = st.executeUpdate(
							"insert into institution(iname, iaddress, coursesoffered, scholoffered, institutionid, password, category) values('"
									+ iname + "','" + iaddress + "','" + coursesoffered + "','" + scholoffered + "','" + institutionid + "','"
									+ password + "','" + category + "')");
					out.println(
							"Thank you for register ! <a href='loginInstitution.jsp'>Login</a>");
				} else {
					out.println(
							"<h2>Registration Not Completed..institution id already exist..<a href='registerInstitution.jsp'>Try Again </a></h2>");
				}
			} catch (Exception e) {
				System.out.print(e);
				e.printStackTrace();
			}
		%>
	</div>

</body>
</html>