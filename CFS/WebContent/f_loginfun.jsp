<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>

	<title>Fresher Login</title>
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
				  box-shadow :0px 0px 3px;
			}

			.focus:focus {
			  background-color:#868686 ; 
			  color: white;
			  outline: none;
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
					  <li><a href="about.html">About</a></li>
					  <li><a href="stu_login.html">Student</a></li>
					  <li><a href="admin_login.html">Admin</a></li>
					  <li><a class="active" href="home.html">Home</a></li>
				</ul>
			</div>
		</div>
<%
String email = request.getParameter("email");
String pass = request.getParameter("pass");
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdatabase","root","");
	Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from fdata where email= '"+email+"' and pass='"+pass+"'");
    if(rs.next()) {
    String user = rs.getString(2);
  	session.setAttribute("name",email);
    response.sendRedirect("fresher_home.jsp?n1=success");
	}
    else {
    response.sendRedirect("fresher_login.jsp?n2=LoginFail");
    }
}
catch(Exception e) {
	response.getWriter().println(e);
}
    

%>		
		
		
</body>
</html>