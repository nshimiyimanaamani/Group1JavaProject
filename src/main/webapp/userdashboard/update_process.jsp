
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="javax.servlet.http.Part" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/shakaur";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String type = request.getParameter("type");
String address=request.getParameter("address");
String date=request.getParameter("date");
String currentLocation=request.getParameter("current");
String review=request.getParameter("review");
String userid =request.getParameter("id");
if(userid != null)

{
	Connection con = null;
	PreparedStatement ps = null;
	int personID = Integer.parseInt(userid);
	try
	{
		
		Class.forName(driverName);
		con = DriverManager.getConnection(url,user,psw);
		String sql="Update lostsitems set type=?,address=?,date=?,currentLocation=?,comment=? where id="+personID;
		ps = con.prepareStatement(sql);
		
		ps.setString(1, type);
		ps.setString(2, address);
		ps.setString(3, date);
		ps.setString(4, currentLocation);
		ps.setString(5, review);
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