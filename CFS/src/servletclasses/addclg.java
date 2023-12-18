package servletclasses;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class addclg extends HttpServlet{
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
	
		String clgname=req.getParameter("clgname");
		String website=req.getParameter("website");
		String address=req.getParameter("address");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdatabase","root","");
			PreparedStatement ps = con.prepareStatement("Insert into clgdata(clgname,website,address) values(?,?,?)");
//			System.out.println("connected successfully");
			ps.setString(1,clgname);
			ps.setString(2,website);
			ps.setString(3,address);
			int st = ps.executeUpdate();
			if(st>0) {
				res.sendRedirect("add_clg.jsp?n1=success");
			}
			else {
				System.out.println("problem occur?n2=fail");
			}
			con.close();
		}
		catch(Exception e) {
			res.getWriter().println(e);
		}
	}

}
