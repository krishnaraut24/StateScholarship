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
            printWindow.document.write('<html><head><title>Scholarship Details</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(divContents);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();
        });
    </script>
<title>Scholarship Details</title>
</head>
<body>
<!-- Code to display the scholarship provided -->
<%@ include file="headerAdmin.jsp"%>
    <form id="form1">
	<div id="dvContainer">
		<%
			try {
				//Establishing the connection
				Connection conn = DBUtil.getConnection();
				//Creating statement
				Statement st = conn.createStatement();
				String strQuery = "SELECT * FROM scholarshipdetails";
				//Executing above query
				ResultSet rs = st.executeQuery(strQuery);
		%>
		<table align="center" class="requestTable">
		<caption><h2>Institution Scholarship Provided</h2></caption>
			<thead>
				<tr>
					<th>Scholarship ID</th>
					<th>Scholarship Details</th>
					<th>Merit Required</th>
				</tr>
			</thead>
			<%
			//While loop to iterate through the all rows present the resultset
				while (rs.next()) {
						String scholid = rs.getString("scholid");
						String scholdetails = rs.getString("scholdetails");
						String merit = rs.getString("merit");
			%><tr>
				<td><%=scholid%></td>
				<td><%=scholdetails%></td>
				<td><%=merit%></td>
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