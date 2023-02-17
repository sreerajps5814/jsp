
<%@page import="packag.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>
h3
{
color: black;
text-align: center;
}
table {
	border: 3px solid black;
	border-color: black;
}
th{
background-color: red;
width: 3%;
}
td{
border: 2px solid black;
text-align: center;
}
</style>
</head>
<body>
<div style="color: black; text-align: center; font-size: 30px;">Home</div>
<%String msg=request.getParameter("msg"); 
if("added".equals(msg))
{
%>
<h3 class="alert">Product added successfully</h3>
<%} %>
<%
if("exist".equals(msg))
{%>
<h3 class="alert">Quantity increased</h3>
<%} %>
<%if("invalid".equals(msg))
	{%>
<h3 class="alert">try again....</h3>
<%} %>
<table>
	<thead>
	<tr>
	<th scope="col">ID</th>
	<th scope="col">Name</th>
	<th scope="col">Category</th>
	<th scope="col">Price</th>
	<th scope="col">Add to cart</th>
	</tr>
	</thead>
	<tbody>
	<%
	try
	{
		Connection con=ConnectionProvider.getCon();
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from product where active='yes'");
		while(rs.next())
		{
			%>
			<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><a href="addToCartAction.jsp?id=<%=rs.getString(1)%>">add to cart</a></td>
			</tr>
			<%
		}
		
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
	</tbody>
</table>
</body>
</html>
<%@ include file="footer.jsp" %>