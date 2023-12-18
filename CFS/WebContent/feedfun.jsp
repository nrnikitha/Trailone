<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>

<body>
<%
String cname=request.getParameter("cname");
String study=request.getParameter("study");
String sport=request.getParameter("sport");
String placement=request.getParameter("placement");
String overall=request.getParameter("overall");
String comment=request.getParameter("comment");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdatabase","root","");
String user =(String)session.getAttribute("name");
Statement smt = con.createStatement();
ResultSet rs=smt.executeQuery("select * from userdata where email='"+user+"' ");
if(rs.next())
{
	
	PreparedStatement ps = con.prepareStatement("update userdata set study='"+study+"',sport='"+sport+"',placement='"+placement+"',overall='"+overall+"',comment='"+comment+"' where email= '"+user+"' ");
int st = ps.executeUpdate();
	if(st>0) {
		try{
			Statement s1 = con.createStatement();
			ResultSet r1=s1.executeQuery("select * from userdata where email='"+user+"' ");
			if(r1.next())
			{
				int i1,i2,i3,i4,i5;
				i1 =r1.getInt("study");
				i2 =r1.getInt("sport");
				i3 =r1.getInt("placement");
				i4 =r1.getInt("overall");
				int rating = (i1+i2+i3+i4)/4;
				
				String cn = r1.getString("cname");
				Statement s2 = con.createStatement();
				ResultSet r2=s2.executeQuery("select * from clgdata where clgname='"+cn+"' ");
				if(r2.next()){
					int p = r2.getInt("rating");
					
					Statement s3 = con.createStatement();
					ResultSet r3 = s3.executeQuery("select count(email),cname from userdata group by cname");
					int c=0;
					if (r3.next()){
					c = r3.getInt(1);
					
					rating = ((c*rating)+p)/c;
					
					PreparedStatement pss = con.prepareStatement("update clgdata set rating='"+rating+"' where clgname='"+cn+"'");
					int st2=pss.executeUpdate();
					}
					
				}
				
			}
		}
		catch(Exception e){
			response.getWriter().println(e);
		}
		response.sendRedirect("feedback.jsp?n1=success"); 	
	}
	else {
		 %>
		 &nbsp;&nbsp;
		<center> <img src="gifs\giphy1.gif"/>
	    <h2 style="color:#B04040;font-family:Century Schoolbook;">Error in Submission</h2>
	<br><a class ="focus" href="feedback.jsp">Try Again here</a></center>
	
	
	<%
	}
	
	
}
else{
	response.sendRedirect("feedback.jsp?n2=already submitted");
}

}
catch(Exception e){
	response.getWriter().println(e);
}	
%>
</body>
</html>