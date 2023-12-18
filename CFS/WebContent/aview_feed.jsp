<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>

	<title>FeedBack</title>
	<head>
			<style>
		div	div ul {
			  list-style-type: none;
			  margin: 0;
			  padding: 0;
			  overflow: hidden;
			  background-color:#C9C7C7;
			}

			li {
			  float: right;
			}

			li a {
			  display: block;
			  color: #212F3D;
			  text-align: center;
			  padding: 16px 20px 17px;
			  text-decoration: none;
			  font-family:Berlin Sans FB;
			}

			li a:hover {
			  background-color:#D5D3D3;
			}
			table, th, td {
			 border: 2px #345849 #855F5F;
			  border-collapse: collapse;
			  padding:  10px 65px;
			  background-color:#87B8A3;
			}
			</style>
			</head>
<body style="background-color:#DBD9D9">
	
		<div style="margin-top:0;height:1.4cm;width:100%;background-color:#C9C7C7;">
			<div style="float:left;height:1.4cm;width:10cm;" >
				<center><h2 style="color:#0D0235;font-family:Algerian;">COLLEGE FEEDBACK SYSTEM</h2></center>
			</div>
			
			<div style="font-size:0.5cm;float:right;height:1.2cm;width:20cm;">
				<ul>
					<li><a href="logout.jsp">Logout</a></li>
					<li><a  class="active" href="aview_feed.jsp">View Feedback</a>
					  <li><a href="aview_clg.jsp">View College</a></li>
					  <li><a href="add_clg.jsp">Add College</a></li>
					  <li><a href="admin_home.jsp">Home</a></li>
				</ul>
			</div>
		</div>
<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdatabase","root","");
	Statement smt = con.createStatement();
	ResultSet rs=smt.executeQuery("select * from userdata");
	
%>
<center><p style="font-size:1cm;font-family:Algerian;" >Feedback</p></center>
<table align="center">

<thead>
	<tr>
		<th>College</th>
		<th>Name</th>
		<th>Overall Rating</th>
		<th>Comment</th>
	</tr>
</thead>
	
		<% while(rs.next()){ %>
		<tr>
		<th> <%= rs.getString("cname") %> </th>
		<th><%= rs.getString("fname") %></th>
		<th><%= rs.getInt("overall") %></th>
		<th> <%= rs.getString("comment") %></th>
		</tr>
		<%} %>
	
</table>

<%
}
catch(Exception e){
	response.getWriter().println(e);
}%>

</body>
</html>