<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Header</title>
</head>
<body>
<!-- This is header page that is going to be imported in the all student home pages -->
	<%
	// Here code to check the if userid null 
	if(session.getAttribute("userid") == null)
	{
		response.sendRedirect("login.jsp"); 
	}
	%>
	<nav class="navbar">
		<ul class="navbar-nav">
			<li><a href="home.jsp">Home</a></li>
			<li><a href="scholarshipRegistration.jsp">Register For Scholarship</a></li>
			<li><a href="institutionScholarshipPage.jsp">Institution Scholarship</a></li>
			<li><a href="viewStatus.jsp">View Status</a></li>
			<li><a href="raiseRequest.jsp">Help</a></li>
			<li style="float:right;margin-right:10px"><a href="logoffProcess.jsp">Log Off</a></li>
		</ul>
	</nav>

</body>
</html>