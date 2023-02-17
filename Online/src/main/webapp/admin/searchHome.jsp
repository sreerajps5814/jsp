<%@page import="packag.ConnectionProvider" %>
<%@ page import="java.sql.*"%>
<%@ include file="adminHeader.jsp"%>


<html>
<head>
<title>Home</title>
<style>
table {
	border: 2px dotted black;
	width: 25%;
}
th{
border: 2px solid maroon;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Home</div>
<table>
	<thead>
	<tr>
		<th scope="col">ID</th>
		<th scope="col">Name</th>
		<th scope="col">Category</th>
		<th scope="col">price</th>
		<th scope="col">Add to cart</th>
		</tr>
		</thead>
		<tbody>
		<%
		int z=0;
		try
		{
			String search=request.getParameter("search");
			Connection con=ConnectionProvider.getCon();
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from product where name like '%"+search+"%' or category like '%"+search+"%' and active='yes'");
		
			while(rs.next())
			{
				z=1;
				%>
				
			<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><a href="addToCartAction.jsp?id=<%=rs.getString(1)%>">Add to cart</a></td>
			</tr>
			<% 
			}
		}catch(Exception e)
		{System.out.println(e);}
		%>
		</tbody>
		</table>
		<%if(z==0)
		{%>
		<h1 style="color: white; text-align: center;">Nothing to show</h1>
		<%}%>
</body>
</html>
<%@ include file="adminFooter.jsp"%>