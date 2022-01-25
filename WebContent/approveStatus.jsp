<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Updating Status</title>
</head>
<body>
<%@ include file="headerScholProvider.jsp" %>
<div align="center">

	<%
	//taking request id from previous jsp page
	      String requestid=request.getParameter("requestid");
	     
		try{
			//Establishing connection and creating statement
			Connection con = DBUtil.getConnection();
			Statement st = con.createStatement();
			//Query for updating status in details table
			String sql = "UPDATE details " + " SET status  =  'approved' " + " WHERE requestid = '"
					+ requestid + "' ";
			int i = st.executeUpdate(sql);
			if(i==1){
				out.println("<h3>Request Approved SuccessFully..No Pending Request With Request Id '" + requestid + "'<h3> <a href='viewRequests.jsp'>View More Requests</a> " );
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
	</div>
</body>
</html>