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
    <!-- Java script code to print the html div content -->
    <script type="text/javascript">
        $("#btnPrint").live("click", function () {
            var divContents = $("#dvContainer").html();
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head><title>Availing Students</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(divContents);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();
        });
    </script>
<title>Institution scholarship availing students</title>
</head>
<body>
<!-- Code to display the student availing the scholarship -->
<%@ include file="headerAdmin.jsp"%>
    <form id="form1">
	<div id="dvContainer">
		<%
			try {
				//Establishing the connection
				Connection conn = DBUtil.getConnection();
				//Creating the statement
				Statement st = conn.createStatement();
				String strQuery = "SELECT * FROM details where finalstatus='approved'";
				//Executing the update
				ResultSet rs = st.executeQuery(strQuery);
		%>
		<table align="center" class="requestTable">
		<caption><h2>Students Availing Scholarship Institutions</h2></caption>
			<thead>
				<tr>
					<th>Request ID</th>
					<th>Marks</th>
					<th>Grade</th>
					<th>Course</th>
					<th>College</th>
					<th>Status</th>
					<th>Applied By</th>
					<th>Applied For</th>
					<th>Final Status</th>
				</tr>
			</thead>
			<%
			//While loop to iterate through the all rows present the resultset
				while (rs.next()) {
						String requestid = rs.getString("requestid");
						String marks = rs.getString("marks");
						String grade = rs.getString("grade");
						String course = rs.getString("course");
						String college = rs.getString("college");
						String status = rs.getString("status");
						String userid = rs.getString("userid");
						String scholid = rs.getString("applied_for");
						String finalstatus = rs.getString("finalstatus");
			%><tr>
				<td><%=requestid%></td>
				<td><%=marks%></td>
				<td><%=grade%></td>
				<td><%=course%></td>
				<td><%=college%></td>
				<td><%=status%></td>
				<td><%=userid%></td>
				<td><%=scholid%></td>
				<td><%=finalstatus%></td>
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