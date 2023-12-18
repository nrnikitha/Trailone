<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>


<!DOCTYPE html>
<html>
	
	<title>View College</title>
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
						<li><a   href="aview_feed.jsp">View Feedback</a>
					  <li><a class= " active" href="aview_clg.jsp">view college</a></li>
					  <li><a href="add_clg.jsp">Add college</a></li>
					  <li><a  href="admin_home.jsp">Home</a></li>
				</ul>
			</div>
		</div>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdatabase","root","");
PreparedStatement ps = con.prepareStatement("select * from clgdata");
ResultSet res = ps.executeQuery();
%>
		
	<center><p style="font-size:1cm;font-family:Algerian;" >Colleges</p></center>
		<table border="6" align=center>
			<thead>
				<tr>
					<th>College Name</th>
					<th>Website</th>
					<th>Address</th>
					<th>Rating</th>
				</tr>
				<%
				while(res.next()){
				%>
					<tr>
					<th> <%=res.getString("clgname")%></th>
					<th> <%=res.getString("website")%></th>
					<th> <%=res.getString("address")%></th>
					<th><%= res.getInt("rating")	%></th>
					</tr>
				
				<%} %>
				
					
		
		
		</table>
	
</html>