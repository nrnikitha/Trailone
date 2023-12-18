<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
			  padding: 16px 20px 17px;
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
			<%
        if (request.getParameter("n1") !=null) {%>
    <script>alert('Registration Successful');</script>
    <%}
        if (request.getParameter("n2") !=null) {%>
    <script>alert('Login Failed\nTry Again');</script> 

    <%}
    %>
		
	<body style="background-color:#DBD9D9">
	
		<div style="margin-top:0;height:1.4cm;width:100%;background-color:#C9C7C7;">
			<div style="float:left;height:1.4cm;width:10cm;" >
				<center><h2 style="color:#0D0235;font-family:Algerian;">COLLEGE FEEDBACK SYSTEM</h2></center>
			</div>
			
			<div style="font-size:0.5cm;float:right;height:1.2cm;width:20cm;">
				<ul>
					  <li><a href="about.html">About</a></li>
					  <li><a href="stu_login.jsp">student</a></li>
					  <li><a class="active" href="fresher_login.jsp">Fresher</a></li>
					  <li><a href="admin_login.html">Admin</a></li>
					  <li><a  href="home.html">Home</a></li>
				</ul>
			</div>
		</div>
		<marquee style="box-shadow:2px 3px 4px;font-size:0.5cm;font-family:Cooper Black;" scrollamount=4 scrolldelay=4 height=4% width=100% bgcolor=#DBD9D9>Use your email as Username and enter password</marquee>

	<div style="height:10.5cm;width:30cm;margin-top:7%;margin-left:5%;margin-right:10%;">
			<div style="box-shadow:0 4px 5px;height:10.5cm;width:14cm;background:#E5B2B0;float:left;">
				<img src="images\stulogin.jpg" height="100%" width="100%">
			</div>
			<div style="border-style:solid;height:10.4cm;width:15.8cm;float:right;">
			<h1 align="center" style="font-size:1cm;color:#410306;font-family:Algerian;">Fresher Login</h1>
				<form action="f_loginfun.jsp" >
					<table align="center" height=40 width=500 style="font-size:100%;text-align:center">
					<tr>
						<td style ="font-size:0.7cm;color:#3F056A;font-family:Garamond;"><b>UserName</b></td>
					</tr>
					<tr >
						<td > <input class="focus" type="text"  name="email" placeholder="Enter your ID"style ="height:1.2cm;width:10cm;"></td>
					</tr>
					<tr>
						<td height=20 style="font-size:0.7cm;color:#3F056A;font-family:Garamond;"><b>Password</b> </td>
					</tr>
					<tr>
						<td><input class="focus" type="password"  name="pass" placeholder="Enter your Password"style="height:1.2cm;width:10cm;"></td>

					</tr>
					<tr>
					<td><input type="submit" value="Submit" style="border-radius:4pt;cursor:pointer;display:inline-block;position:relative;transition:0.5s;width:3cm;height:1cm;color:white;background-color:#154360;"></td>
					</tr>
					<tr>
					<td>Not Registered? <a href = "fresher_regis.jsp">Register!</a></td>
					</tr>
					</table>
				</form>
		</div>
	</div>
</body>
</html>