<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

	<title>Admin Login</title>
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
				<h2 style="align:center;color:#0D0235;font-family:Algerian;">COLLEGE FEEDBACK SYSTEM</h2>
			</div>
			
			<div style="font-size:0.5cm;float:right;height:1.2cm;width:20cm;">
				<ul>
					  <li><a href="about.html">About</a></li>
					  <li><a href="fresher_regis.html">Fresher</a></li>
					  <li><a href="stu_login.html">Student</a></li>
					  <li><a  href="home.html">Home</a></li>
				</ul>
			</div>
		</div>


<%

      try {

           String uname = request.getParameter("uname");
           String pass = request.getParameter("pass");

           if ( (uname.equals("admin")) && (pass.equals("admin")) ) {       	   
				
			 response.sendRedirect("admin_home.jsp?n1=success"); 
              

           }
           else {

        	   %>
			 &nbsp;&nbsp;
			<center> <img src="gifs\giphy1.gif"/>
		    <h2 style="color:#B04040;font-family:Century Schoolbook;">"<%=uname%>" is Not Registered/Valid</h2>
		<br><a class ="focus" href="admin_login.html">Try Again here</a></center>
		
		
	<% 	
 }
      }
		catch (Exception e) {
           	response.getWriter().println(e);
        }

         
%>                
                   


</body>
</html>