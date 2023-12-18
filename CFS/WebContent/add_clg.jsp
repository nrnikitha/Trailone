<!DOCTYPE html>
<html>
<title>Add College</title>
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
			   box-shadow :0px 0px 3px;
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
        if (request.getParameter("n1") != null) {%>
    <script>alert('College Added Successfully');</script>
    <%}
        if (request.getParameter("n2") != null) {%>
    <script>alert('Failed');</script> 

    <%}
    %>
	<body style="background-color:#DBD9D9" >
	
	<div style="margin-top:0;height:1.4cm;width:100%;background-color:#C9C7C7;">
			<div style="float:left;height:1.4cm;width:10cm;" >
				<center><h2 style="color:#0D0235;font-family:Algerian;">COLLEGE FEEDBACK SYSTEM</h2></center>
			</div>
			
			<div style="font-size:0.5cm;float:right;height:1.2cm;width:20cm;">
				<ul>
					<li><a href="logout.jsp">Logout</a></li>
					<li><a   href="aview_feed.jsp">View Feedback</a>
					  <li><a href="aview_clg.jsp">view college</a></li>
					  <li><a class="active" href="add_clg.jsp">Add college</a></li>
					  <li><a  href="admin_home.jsp">Home</a></li>
				</ul>
			</div>
		</div>
	<div style="box-shadow: 1px 1px 5px;height:55%;width:45%;background:#A0C2CE;margin-top:7%;margin-left:27.5%;margin-right:27.5%;">
	<p align="center" style="color:#410306;font-size:1cm;font-family:Algerian;" >Add College</p>
	
	<form action="add" method="post">
				<table align="center" height=60 width=500 style="margin-top:1cm;font-size:100%;text-align:center">				
				<tr>
					<td align="right" style ="color:#3F056A;font-family:Times New Roman;"><b> College Name :</b></td>
					<td> <input class="focus" type="text" name="clgname" placeholder="Enter college Name"style ="height:1cm;width:10cm;" required></td>
				</tr>
				<tr>
					<td align="right" style ="color:#3F056A;font-family:Times New Roman;"><b> Website : </b></td>
					<td> <input class="focus" type="url"  name="website" placeholder="Enter college Link"style ="height:1cm;width:10cm;" required></td>
				</tr>
				<tr>
					<td align="right" style ="color:#3F056A;font-family:Times New Roman;"> <b> Address : </b></td>
					<td> <input class="focus" type="text"  name="address" placeholder="Enter college Address"style ="height:1cm;width:10cm;"required></td>
				</tr>
				
				<tr>
					<td  align="left">
					<input type="reset" value="Reset" style="border-radius:4pt;cursor:pointer;display:inline-block;position:relative;transition:0.5s;width:3cm;height:1cm;color:white;background-color:#154360;"> </td>
					<td  align="right">
					<button type="submit" style="border-radius:4pt;cursor:pointer;display:inline-block;position:relative;transition:0.5s;width:3cm;height:1cm;color:white;background-color:#154360;">Upload</button>
				</td>
				</tr>
			

	</form>
	</table>
	</div>
</body>
</html>