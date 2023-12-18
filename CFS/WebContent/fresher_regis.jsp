<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html >
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
				<center><h2 style="color:#0D0235;font-family:Algerian;">COLLEGE FEEDBACK SYSTEM</h2></center>
			</div>
			<div style="margin-top:0cm;background-color:#C9C7C7;height:1.2cm;width:60%;font-size:0.5cm;float:right;">
				<ul>
					  <li><a href="about.html">About</a></li>
					  <li><a href="stu_login.jsp">Student</a></li>
					  <li><a  href="fresher_login.jsp">Fresher</a></li>
					  <li><a  href="home.html">Home</a></li>
				</ul>
			</div>
		</div>
	 &nbsp; &nbsp;

		<div style="box-shadow: 0px 0px 4px;margin-left:25%;margin-right:25%;height:75%;float:middle;margin-top:5%;background-color:#A0C2CE;">
		<h1 align="center" style="font-size:1cm;color:#410306;font-family:Algerian;">Fresher Registration Form</h1>
<form action="fr_regisfun.jsp" method="get">
		
				<table align="center" height=40 width=500 style="font-size:100%;text-align:center">
				<tr>
					<td><b><p align="right" style ="color:#3F056A;font-family:Times New Roman;">First Name : </p></b></td>
					<td> <input class="focus" type="text"  name="fname" placeholder="Enter your First Name"style ="height:1cm;width:10cm;"></td>
				</tr>
				<tr>
					<td><b><p align="right" style ="color:#3F056A;font-family:Times New Roman;">Last Name : </p></b></td>
					<td> <input class="focus" type="text"  name="lname" placeholder="Enter your Last Name"style ="height:1cm;width:10cm;"></td>
				</tr>
				<tr>
					<td><b><p align="right" style ="color:#3F056A;font-family:Times New Roman;">Enter e-mail : </p></b></td>
					<td> <input class="focus" type="email" name="email" placeholder="Enter your e-mail ID"style ="height:1cm;width:10cm;"></td>
				</tr>
				<tr>
					<td><b><p align="right" height=20 style="color:#3F056A;font-family:Times New Roman;"><b>Password : </b><p> </td>
					<td><input class="focus" type="password" name="pass" placeholder="Enter your Password"style="height:1cm;width:10cm;"></td>
				</tr>
				<tr>
					<td><b><p align="right" height=20 style="color:#3F056A;font-family:Times New Roman;"><b>Phone No. : </b><p> </td>
					<td><input class="focus" type="number"  name="phone" placeholder="Enter your Phone No."style="height:1cm;width:10cm;"></td>
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
					<input type="submit" value="Register" style="border-radius:3pt;cursor:pointer;display:inline-block;position:relative;transition:0.5s;width:3cm;height:1cm;color:white;background-color:#154360;"> </td>
				</tr>
			</table>
		</form>
		</div>

	</body>
</html>