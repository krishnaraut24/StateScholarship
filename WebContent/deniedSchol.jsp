<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Denied Scholarship</title>
</head>
<body>
<%@ include file="headerInstitution.jsp"%>
<div align="center">

	<%
	//Taking rquestid from previous jsp page by request.getParameter method
	      String requestid=request.getParameter("requestid");
	     
		try{
			//Establishing connection and creating statement
			Connection con = DBUtil.getConnection();
			Statement st = con.createStatement();
			//Query to update finalstatus in the details table
			String sql = "UPDATE details " + " SET finalstatus  =  'denied' " + " WHERE requestid = '"
					+ requestid + "' ";
			//Executing query
			int i = st.executeUpdate(sql);
			if(i==1){
				out.println("<h3> Request Denied With Request Id '" + requestid + "'<h3> <a href='processSchol.jsp'>View More Requests</a> " );
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
	</div>


</body>
</html>