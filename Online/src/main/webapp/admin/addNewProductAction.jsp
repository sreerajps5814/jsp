<%@ page import="packag.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String id= request.getParameter("id");
String name= request.getParameter("name");
String category= request.getParameter("category");
String price= request.getParameter("price");
String active= request.getParameter("active");

try
{
Connection con=ConnectionProvider.getCon();
PreparedStatement stmnt=con.prepareStatement("insert into product values(?,?,?,?,?)");
stmnt.setString(1, id);
stmnt.setString(2, name);
stmnt.setString(3, category);
stmnt.setString(4, price);
stmnt.setString(5, active);
stmnt.executeUpdate();
response.sendRedirect("addnewProduct.jsp?msg=done");
}
catch(Exception e)
{
	response.sendRedirect("addnewProduct.jsp?msg=wrong");
	System.out.println(e);
}
%>