<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
	
	<title>Student Home</title>
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
			</style>
			</head>
			<%
        if (request.getParameter("n1") != null) {%>
    <script>alert('Login Successful');</script>
    <%}
        if (request.getParameter("n2") != null) {%>
    <script>alert('Login Failed');</script> 

    <%}
    %>
	<body style="background-color:#DBD9D9">
	
		<div style="margin-top:0;height:1.4cm;width:100%;background-color:#C9C7C7;">
			<div style="float:left;height:1.4cm;width:10cm;" >
				<center><h2 style="color:#0D0235;font-family:Algerian;">COLLEGE FEEDBACK SYSTEM</h2></center>
			</div>
			
			<div style="font-size:0.5cm;float:right;height:1.2cm;width:20cm;">
				<ul>
					<li><a href="logout.jsp">logout</a></li>
					  <li><a href="stu_profile.jsp">View Profile</a></li>
					   <li><a  href="sview_feed.jsp">View Feedback</a></li>
					  <li><a href="sview_clg.jsp">View College</a></li>
					  <li><a href="feedback.jsp">FeedBack</a></li>
					  <li><a class="active" href="stu_home.jsp">Home</a></li>
				</ul>
			</div>
		</div>
		<div style="margin-top:0cm;height:10cm;width:60%;margin-left:20%;margin-right:20%">
		<img height="100%" width="100%" style="box-shadow:5px 5px 7px;margin-top:2cm;"src="images\stuhome.jpg" >
		</div>
		<div style="margin-top:1cm;">
		 &nbsp;&nbsp;
		  &nbsp;&nbsp;
<p align="center" style="font-size:1cm;font-family:Algerian;" >


<% 
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdatabase","root","");
	String s1 =(String) session.getAttribute("name");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from userdata where email= '"+s1+"' ");
	if(rs.next()){
	String fname=rs.getString(2);
	out.print("Welcome "+fname);
	}
	else{
		out.print("error");
	}
	
}
catch(Exception e){
	response.getWriter().println(e);
}
%>
</p>
</div>
	</body>
	
	
	
	
</html>