<%@page import="DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Apply Scholarship</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div align="center">
		<%
		//// Taking input values from the user by request.getParameter() method
			String userid = (String) session.getAttribute("userid");
			String scholid = request.getParameter("scholid");

			try {
				//Establishing database connection
				Connection conn = DBUtil.getConnection();
				//creating statement
				Statement st = conn.createStatement();
				String sql = "SELECT * FROM details WHERE userid='" + userid + "' AND status='approved' AND applied_for='null' ";
				//executing query
				ResultSet rs = st.executeQuery(sql);
				boolean flag = false;
				while (rs.next()) {
					int marks = Integer.parseInt(rs.getString("marks"));
					String finalstatus = rs.getString("finalstatus");
					flag = true;

					Connection conn2 = DBUtil.getConnection();
					Statement st2 = conn2.createStatement();
					String sql2 = "SELECT * FROM scholarshipdetails WHERE scholid='" + scholid + "' ";
					ResultSet rs2 = st2.executeQuery(sql2);
					rs2.next();
					int merit = Integer.parseInt(rs2.getString("merit"));
					
					if (marks >= merit) {
						if (finalstatus.equals("pending")) {
							Connection conn3 = DBUtil.getConnection();
							Statement st3 = conn3.createStatement();
							//query for updating status in database's details table
							String sql3 = "UPDATE details " + " SET applied  =  'yes', applied_for='" + scholid + "' "
									+ " WHERE userid = '" + userid + "' ";
							int i = st3.executeUpdate(sql3);
							if (i == 1) {
								out.println("<h2>Applied Successfully</h2>");
							}
						} else if (finalstatus.equals("denied")) {
							Connection conn4 = DBUtil.getConnection();
							Statement st4 = conn4.createStatement();
							//query for updating status in database's details table
							String sql4 = "UPDATE details " + " SET applied  =  'yes', applied_for='" + scholid
									+ "', finalstatus='pending' " + " WHERE userid = '" + userid + "' ";
							int i = st4.executeUpdate(sql4);
							if (i == 1) {
								out.println(
										"<h2>Your Previous Request For This Schol Have Denied.. Applied Successfully Again</h2>");
							}

						} else {
							out.println("<h2>Your Request For This Schol Has Already Approved..You Cant Apply Again</h2>");
						}
					} else {
						out.println("<h2>Not Eligible</h2>");
					}
				}
				if (!flag) {
					out.println(
							"<h3>Your Schol Registration Request May Not be Approved By Scholarship Provider OR Not Registered OR You have already Apllied..Check Status</h3>");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>

	</div>

</body>
</html>