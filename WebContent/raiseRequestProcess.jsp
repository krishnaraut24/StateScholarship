<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Raise Request Process</title>
</head>
<body>
<%@ include file="header.jsp" %>
	<div align="center">
		<%
		//Getting input values submitted by user in the previuos jsp page through the form
		    String userid=(String)session.getAttribute("userid");
			String issue = request.getParameter("issue");
			String description = request.getParameter("description");
			try {
				//Establishing the connection
				Connection conn = DBUtil.getConnection();
				//Creating the statement
				Statement st = conn.createStatement();
				String sql = "INSERT INTO ticket(issue,description,raised_by) values('"	+ issue + "','" + description + "','" + userid + "')  ";
				//Executing the above query
				int i = st.executeUpdate(sql);
				if(i==1){
					out.println("<h2>Ticket Raised Successfully</h2> ");
				}
				
			} catch (Exception e) {
				System.out.print(e);
				e.printStackTrace();
			}
		%>
	</div>

</body>
</html>