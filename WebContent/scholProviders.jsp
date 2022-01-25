<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Importing the java script library -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <!-- Java script code to print the div content of HTML page -->
    <script type="text/javascript">
        $("#btnPrint").live("click", function () {
            var divContents = $("#dvContainer").html();
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head><title>List of NGOs</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(divContents);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();
        });
    </script>
<title>Scholarship Providers</title>
</head>
<body>
<%@ include file="headerAdmin.jsp"%>
    <form id="form1">
	<div id="dvContainer">
		<%
			try {
				//Establishing the connection
				Connection conn = DBUtil.getConnection();
				//Creating statement and executing the query
				Statement st = conn.createStatement();
				String strQuery = "SELECT * FROM users where user_category='scholarshipProvider'";
				ResultSet rs = st.executeQuery(strQuery);
		%>
		<!-- Code to display data in the tabular format -->
		<table align="center" class="requestTable">
		<caption><h2>List Of Scholarship Providers</h2></caption>
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>DOB</th>
					<th>Gender</th>
					<th>Contact Number</th>
					<th>Email</th>
					<th>User ID</th>
				</tr>
			</thead>
			<%
			//While loop to iterate over each row present in the result set
				while (rs.next()) {
						String first_name = rs.getString("first_name");
						String last_name = rs.getString("last_name");
						String dob = rs.getString("dob");
						String gender = rs.getString("gender");
						String contact_number = rs.getString("contact_number");
						String email = rs.getString("email");
						String userid = rs.getString("userid");
			%><tr>
				<td><%=first_name%></td>
				<td><%=last_name%></td>
				<td><%=dob%></td>
				<td><%=gender%></td>
				<td><%=contact_number%></td>
				<td><%=email%></td>
				<td><%=userid%></td>
			</tr>

			<%
				}
			%>
			<%
				} catch (Exception e) {
					e.printStackTrace();

				}
			%>

		</table>
	</div>
	<br><br>
	<div align="center">
	<input class="actionBtn" type="button" value="Download" id="btnPrint" />
	</div>
	</form>
</body>
</html>