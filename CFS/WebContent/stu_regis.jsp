<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
<title>Student Registration</title>
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
			 <%
        if (request.getParameter("n1") != null) {%>
    <script>alert('Registration Successful');</script>
    <%}
        if (request.getParameter("n2") != null) {%>
    <script>alert('Registration Failed');</script> 

    <%}
    %>
<body style="background-color:#DBD9D9">
	
		<div>
			<div style="margin-top:0cm;float:left;height:1.4cm;width:40%;background-color:#C9C7C7;"  >
				<h2 style="align:center;color:#0D0235;font-family:Algerian;">COLLEGE FEEDBACK SYSTEM</h2>
			</div>
			
			<div style="margin-top:0cm;background-color:#C9C7C7;height:1.2cm;width:60%;font-size:0.5cm;float:right;">
				<ul>
					  <li><a href="about.html">About</a></li>
					  <li><a href="fresher_login.jsp">Fresher</a></li>
					   <li><a href="stu_login.jsp">Student</a></li>
					  <li><a  href="home.html">Home</a></li>
				</ul>
			</div>
		</div>
		 &nbsp;
		<div style="border-radius:3pt;margin-top:2cm;box-shadow: 0px 0px 4px;margin-left:25%;margin-right:25%;height:85%;float:middle;background-color:#A0C2CE;">
<% 
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdatabase","root","");
Statement st = con.createStatement();
ResultSet  res=st.executeQuery("select * from clgdata");
%>
		<h1 align="center" style="font-size:1cm;color:#410306;font-family:Algerian;">Student Registration Form</h1>
		<form action="stu_regisfun.jsp" method="post">
				
				<table align="center" height=40 width=500 style="margin-top:2cm;font-size:100%;text-align:center">
				<tr>
				<td align="right" style ="color:#3F056A;font-family:Times New Roman;"><b>College Name : </b></td>
					<td >
           			<select style="box-shadow :0px 0px 3px;font-family:Times New Roman;height:1cm;width:10cm;" name="cname" required>
           				<option value="">Select</option>
				         <%
				         while(res.next()){
				         %>
				         <option value="<%=res.getString("clgname")%>"><%=res.getString("clgname")%></option>
				
				         <%}%>
           			</select>
         		  </td>
				</tr>
				<tr>
					<td align="right" style ="color:#3F056A;font-family:Times New Roman;"><b>First Name :</b> </td>
					<td> <input class="focus" type="text" name="fname" required placeholder="Enter your First Name"style ="height:1cm;width:10cm;"></td>
				</tr>
				<tr>
					<td align="right" style ="color:#3F056A;font-family:Times New Roman;"><b>Last Name : </b></td>
					<td> <input class="focus" type="text"  name="lname" required placeholder="Enter your Last Name"style ="height:1cm;width:10cm;"></td>
				</tr>
				<tr>
					<td align="right" style ="color:#3F056A;font-family:Times New Roman;"><b>Enter e-mail : </b></td>
					<td> <input class="focus" type="email" name="email" required placeholder="Enter your e-mail ID"style ="height:1cm;width:10cm;"></td>
				</tr>
				<tr>
					<td align="right" height=20 style="color:#3F056A;font-family:Times New Roman;"><b>Password : </b> </td>
					<td><input class="focus" type="password" name="pass" required placeholder="Enter your Password"style="height:1cm;width:10cm;"></td>
				</tr>
				<tr>
					<td align="right" height=20 style="color:#3F056A;font-family:Times New Roman;"><b>Phone No. : </b></td>
					<td><input class="focus" type="number" name="phone" required placeholder="Enter your Phone No."style="height:1cm;width:10cm;"></td>
				</tr>
				<tr>
					<td align="right" style="color:#3F056A;font-family:Times New Roman;"><b>Gender : </b></td>
					<td align="left"><input type="radio" name="gender" required value="m" >Male <input type="radio" required name="gender" value="f">Female</td>
				</tr>
				<tr>
					<td align="right" style ="color:#3F056A;font-family:Times New Roman;"><b>Address :</b> </td>
					<td> <input class="focus" type="text" name="address" required placeholder="Enter your Address"style ="height:1cm;width:10cm;"></td>
				</tr>
				<tr>
					<td  align="left">
					<input type="reset" value="Reset" style="border-radius:3pt;cursor:pointer;display:inline-block;position:relative;transition:0.5s;width:3cm;height:1cm;color:white;background-color:#154360;"> </td>
					<td  align="right">
					<input type="submit" value="Submit" style="border-radius:3pt;cursor:pointer;display:inline-block;position:relative;transition:0.5s;width:3cm;height:1cm;color:white;background-color:#154360;"> </td>
				</tr>
				<tr >
				<td></td>
					<td align="left" ><b>Already Registered?</b> <a href = "stu_login.jsp">Sign in Here!</a></td>
				</tr>
				</table>
		</form>
<%  
}
catch(Exception e){
	response.getWriter().println(e);
}	
%>
		</div>
	
	</body>
</html>