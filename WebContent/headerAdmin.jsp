<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Admin Header</title>
</head>
<body>
<!-- This is header page that is going to be imported in the all admin home pages -->
	<%
	// Here code to check the if userid null 
	if(session.getAttribute("adminid") == null)
	{
		response.sendRedirect("loginAdmin.jsp"); 
	}
	%>
	<nav class="navbar">
		<ul class="navbar-nav">
			<li><a href="homeAdmin.jsp">Home</a></li>
			<li><a href="viewHelpRequests.jsp">View Help Request</a></li>
			<li><a href="reportsAdmin.jsp">Reports</a></li>
			<li style="float:right;margin-right:10px"><a href="logoffProcess4.jsp">Log Off</a></li>
		</ul>
	</nav>
</body>
</html>