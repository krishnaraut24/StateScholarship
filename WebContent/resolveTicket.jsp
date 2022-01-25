<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resolving Ticket</title>
</head>
<body>
<%@ include file="headerAdmin.jsp" %>
<div align="center">

	<%
	//Getting req id from previous page
	      String reqid=request.getParameter("reqid");
	     
		try{
			//Establishing the connection
			Connection con = DBUtil.getConnection();
			//Creating the statement
			Statement st = con.createStatement();
			String sql = "UPDATE ticket " + " SET status  =  'resolved' " + " WHERE reqid = '"
					+ reqid + "' ";
			//Executing the update query for ticket table in the database
			int i = st.executeUpdate(sql);
			if(i==1){
				out.println("<h3>Request resolved SuccessFully..No Pending Request With Request Id '" + reqid + "'<h3> <a href='viewHelpRequests.jsp'>View More Requests</a> " );
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
	</div>

</body>
</html>