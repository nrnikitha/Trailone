<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<title>Admin Home</title>
	<head><style>
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
	 		<div >
		
			<div style="float:left;height:1.4cm;width:40%;background-color:#C9C7C7;" >
				<center><h2 style="color:#0D0235;font-family:Algerian;">COLLEGE FEEDBACK SYSTEM</h2></center>
			</div>
			
			<div style="background-color:#C9C7C7;height:1.2cm;width:60%;font-size:0.5cm;float:right;">
				<ul>
					<li><a href="logout.jsp">Logout</a></li>
					<li><a  href="aview_feed.jsp">View Feedback</a>
					  <li><a href="aview_clg.jsp">View College</a></li>
					  <li><a href="add_clg.jsp">Add College</a></li>
					  <li><a class="active" href="admin_home.jsp">Home</a></li>
				</ul>
			</div>
		</div>	
	<div style="margin-top:0cm;height:10cm;width:60%;margin-left:20%;margin-right:20%">
		<img height="100%" width="100%" style="box-shadow:5px 5px 7px;margin-top:2cm;"src="images\admin.jpg" >
	</div>
		 &nbsp;
		<center><h2 style="color:white;font-size:1cm;font-family:Algerian;">Welcome Admin</h2></center>

</body>
</html>