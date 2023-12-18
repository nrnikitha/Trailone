<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>


<!DOCTYPE html>
<html>
<title>Fresher Registration</title>
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
			  padding: 16px 35px 17px;
			  text-decoration: none;
			  font-family:Berlin Sans FB;
			 
			}

			li a:hover {
			  background-color:#D5D3D3;
			}
			.focus {
				  width:99%;
				  padding: 15px 20px;
				  box-sizing: border-box;
				  border: 1px solid #8E8E8E;
				 
			}

			.focus:focus {
			  background-color:#868686 ; 
			  color: white;
			  outline: none;
			}
			</style>
			</head>
<body style="background-color:#DBD9D9">
	
		<div>
			<div style="margin-top:0cm;float:left;height:1.4cm;width:40%;background-color:#C9C7C7;"  >
				<h2 style="align:center;color:#0D0235;font-family:Algerian;">COLLEGE FEEDBACK SYSTEM</h2>
			</div>
			
			<div style="margin-top:0cm;background-color:#C9C7C7;height:1.2cm;width:60%;font-size:0.5cm;float:right;">
				<ul>
					  <li><a href="about.html">About</a></li>
					  <li><a href="stu_login.jsp">Student</a></li>
					  <li><a class="active" href="home.html">Home</a></li>
				</ul>
			</div>
		</div>
<%

String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String pass=request.getParameter("pass");
String phone=request.getParameter("phone");
String gender=request.getParameter("gender");
String address=request.getParameter("address");
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdatabase","root","");
	PreparedStatement ps = con.prepareStatement("Insert into fdata(fname,lname,email,pass,phone,gender,address) values(?,?,?,?,?,?,?)");
	

	ps.setString(1,fname);
	ps.setString(2,lname);
	ps.setString(3,email);
	ps.setString(4,pass);
	ps.setString(5,phone);
	ps.setString(6,gender);
	ps.setString(7,address);
	int st = ps.executeUpdate();
	if(st>0) {
		response.sendRedirect("fresher_login.jsp?n1=success"); 	
	}
	else {
		  %>
			 &nbsp;&nbsp;
			<center> <img src="gifs\giphy1.gif"/>
		    <h2 style="color:#B04040;font-family:Century Schoolbook;">"<%=fname%>" is Not Registered/Valid</h2>
		<br><a class ="focus" href="fresher_regis.jsp">Try Again here</a></center>
		
		
	<% 	}
	con.close();
}
catch(Exception e) {
	response.getWriter().println(e);
}
%>

</body>
</html>