<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Scholarship Registration Process.jsp</title>
</head>
<body>
<%@ include file="header.jsp" %>
<div align="center">
	<%  
	
	//Getting input values from the previous page
	
	    String userid = (String)session.getAttribute("userid");
		String marks = request.getParameter("marks");
		String grade = request.getParameter("grade");
		String course = request.getParameter("course");
		String college = request.getParameter("college");
		
		try{
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			//Creating the statement
			Statement st = conn.createStatement();
			String sql = "INSERT INTO details(marks,grade,course,college,userid) values('"	+ marks + "','" + grade + "','" + course + "','" + college + "','" + userid + "')  ";
			//Executing above insert query
			int i= st.executeUpdate(sql);
			if(i==1){
				out.println("<h2>Your Details Are Submitted Successfully !</h2> ");
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	   
	%>
	
</div>	
</body>
</html>