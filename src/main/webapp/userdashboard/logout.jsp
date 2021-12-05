<%@page import="javax.servlet.http.HttpSession"%>
<%
HttpSession test=request.getSession();
session.removeAttribute("username");
session.invalidate();
response.sendRedirect("../Post.jsp");

%>