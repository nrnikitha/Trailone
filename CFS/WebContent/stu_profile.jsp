<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
	<title>Profile</title>
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
  border:  #855F5F;
  border-collapse: collapse;
  padding:  10px 65px;
  background-color:#D0E3FA;
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
					  <li><a href="logout.jsp">logout</a></li>
					  <li><a class="active" href="stu_profile.jsp">View Profile</a></li>
					   <li><a  href="sview_feed.jsp">View Feedback</a></li>
					  <li><a href="sview_clg.jsp">View College</a></li>
					  <li><a href="feedback.jsp">FeedBack</a></li>
					  <li><a href="stu_home.jsp">Home</a></li>
				</ul>
			</div>
		</div>
<div style="margin-left:25%;margin-top:1.5cm;height:10cm;width:17cm;background-color:lightblue;box-shadow:2px 3px 5px;">
<%
String user =(String) session.getAttribute("name");

String s1,s2,s3,s4,s5,s6,s7;
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdatabase","root","");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from userdata where email = '"+user+"' ");
	if (rs.next()){
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(1);
		s4=rs.getString(4);
		s5=rs.getString(6);
		s6=rs.getString(7);
		s7=rs.getString(8);

		
%>

<center><p style="font-size:1cm;font-family:Algerian;" ><% out.print(s1);%>'s Profile</p>
	<b><table>
	<tr>
		<td>Name : </td>
		<td><% out.print(s1+" "+s2); %></td>
	</tr>
	<tr>
		<td>College Name : </td>
		<td><% out.print(s3); %></td>
	</tr>
	<tr>
		<td>Email Id : </td>
		<td> <% out.print(s4); %></td>
	</tr>
	<tr>
		<td>Phone Number : </td>
		<td><% out.print(s5); %></td>
	</tr>
	<tr>
	 	<td>Gender : </td>
	 	<td><% out.print(s6); %></td>
	 </tr>
	 <tr>
	 	<td>Address : </td>
	 	<td><% out.print(s7); %></td>
	 </tr>
	</b> </table></center>
	 
<%
	
	}
	else{
		out.print("error");
	}
}
catch(Exception e){
	response.getWriter().println(e);
}

%>
</div>
	</body>	
</html>