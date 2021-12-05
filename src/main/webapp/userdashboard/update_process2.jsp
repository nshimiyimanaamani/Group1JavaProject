
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="javax.servlet.http.Part" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/shakaur";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String fullname= request.getParameter("fullname");
String email=request.getParameter("email");
int phone=Integer.parseInt(request.getParameter("phone"));
String department =request.getParameter("department");
String level=request.getParameter("level");
String password =request.getParameter("password");
String userid =request.getParameter("userid");
if(userid != null)

{
	Connection con = null;
	PreparedStatement ps = null;
	int personID = Integer.parseInt(userid);
	try
	{
		
		Class.forName(driverName);
		con = DriverManager.getConnection(url,user,psw);
		String sql="Update users set full_name=?,email=?,phone=?,department=?,level=?,password=? where id="+personID;
		ps = con.prepareStatement(sql);
		
		ps.setString(1, fullname);
		ps.setString(2, email);
		ps.setInt(3,phone);
		ps.setString(4, department);
		ps.setString(5, level);
		ps.setString(6,password);
		int i = ps.executeUpdate();
		if(i > 0)
		{
		out.print("Record Updated Successfully");
		}
		else
		{
		out.print("There is a problem in updating Record.");
		}	
	}
	catch(SQLException sql)
	{
	
	out.println(sql);
	request.setAttribute("error", sql);
	}
}
else
{
	out.print("There is a problem in updating Record.");
	}

%>