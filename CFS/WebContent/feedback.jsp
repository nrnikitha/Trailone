<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*" %>
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
			</style>
			</head>
<%
        if (request.getParameter("n1") != null) {%>
    <script>alert('Feedback Submitted Successfully');</script>
    <%}
        if (request.getParameter("n2") != null) {%>
    <script>alert('You have already submitted\n Thank You');</script> 

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
					  <li><a class="active" href="feedback.jsp">FeedBack</a></li>
					  <li><a  href="stu_home.jsp">Home</a></li>
				</ul>
			</div>
		</div>
<%
String user =(String)session.getAttribute("name");
String s1 ;
try{

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdatabase","root","");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from userdata where email='"+user+"' ");
if(rs.next()){
	s1=rs.getString(1);
%>
	<div style="box-shadow:1px 2px 4px;height:85%;width:50%;background:#E5B2B0;margin-top:5%;margin-left:27%;margin-right:27.5%;">
		<center><p style="color:#410306;font-size:1cm;font-family:Algerian;" >FeedBack Form</p></center>
		<form action="feedfun.jsp" method="post">
		
				<table align="center" height=40 width=500 style="margin-top:1cm;font-size:100%;text-align:center">	
				<tr>
					<td><b><p align="right" style ="color:#3F056A;font-family:Times New Roman;">SelectCollege : </p></b></td>
					<td >
           			<select style="box-shadow :0px 0px 3px;font-family:Times New Roman;height:1cm;width:10cm;" name="cname" required>
           				<option value="">Select</option>
				         <option value="c"><%out.println(s1); %></option>    
           			</select>
         		  </td>
				</tr>
				<tr>
					<td><b><p align="right" style ="color:#3F056A;font-family:Times New Roman;">Rate Studies : </p></b></td>
					<td>
						<select name="study" required id="select" style="font-family:Times New Roman;height:1cm;width:10cm;">
							<option default="select college" >Select</option>
							<option value="1">BAD</option>
							<option value="2">BELOW AVERAGE</option>
							<option value="3">AVERAGE</option>
							<option value="4">ABOVE AVERAGE</option>
							<option value="5">GOOD</option>
						</select>
					</td>
				</tr>
				<tr>
					<td><b><p align="right" style ="color:#3F056A;font-family:Times New Roman;">Rate Sports : </p></b></td>
					<td>
						<select name="sport" required id="select" style="font-family:Times New Roman;height:1cm;width:10cm;">
							<option default="select college" >Select</option>
							<option value="1">BAD</option>
							<option value="2">BELOW AVERAGE</option>
							<option value="3">AVERAGE</option>
							<option value="4">ABOVE AVERAGE</option>
							<option value="5">GOOD</option>
						</select>
					</td>
				</tr>
				<tr>
					<td><b><p align="right" style ="color:#3F056A;font-family:Times New Roman;">RatePlacements: </p></b></td>
					<td>
						<select name="placement" required id="select" style="font-family:Times New Roman;height:1cm;width:10cm;">
							<option default="select college" >Select</option>
							<option value="1">BAD</option>
							<option value="2">BELOW AVERAGE</option>
							<option value="3">AVERAGE</option>
							<option value="4">ABOVE AVERAGE</option>
							<option value="5">GOOD</option>
						</select>
					</td>
				</tr>
				<tr>
					<td><b><p align="right" style ="color:#3F056A;font-family:Times New Roman;">Overall Rating: </p></b></td>
					<td>
						<select name="overall" required id="select" style="font-family:Times New Roman;height:1cm;width:10cm;">
							<option default="select college" >Select</option>
							<option value="1">BAD</option>
							<option value="2">BELOW AVERAGE</option>
							<option value="3">AVERAGE</option>
							<option value="4">ABOVE AVERAGE</option>
							<option value="5">GOOD</option>
						</select>
					</td>
				</tr>
				<tr>
					<td><b><p align="right" style ="color:#3F056A;font-family:Times New Roman;">Comment : </p></b></td>
					<td> <input type="text" required name="comment" placeholder="Enter Here"style ="align:left;height:1.5cm;width:10cm;"></td>
				</tr>
				<tr>
					<td  align="left">
					<input type="reset" value="Reset" style="border-radius:4pt;cursor:pointer;display:inline-block;position:relative;transition:0.5s;width:3cm;height:1cm;color:white;background-color:#154360;"> </td>
					<td  align="right">
					<input type="submit" value="Submit" style="border-radius:4pt;cursor:pointer;display:inline-block;position:relative;transition:0.5s;width:3cm;height:1cm;color:white;background-color:#154360;"> </td>
				</tr>
	</form>
<%  
}
else{
	out.println("Error");
}
}
catch(Exception e){
	response.getWriter().println(e);
}	
%>	
	
	
	</div>
	</body>
</html>