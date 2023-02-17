<%@page import="packag.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>home</title>
<style>
h3{
color:blue;
text-align: center;
}
table {
	
	border-width: 10px;
	border: 3px solid red;
	text-align: center;
	width: 30%;'
}
th,td{
background-color: gray;
border-spacing: 20px;
}
</style>
</head>
<body>

<div style="color:black; text-align: center; font-size: 30px" >All products & Edit products</div>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{%>
	<h3 class="alert">Product Successfully updated</h3>
	
	<%} %>
	<%if("wrong".equals("msg"))
		{%>
		<h3 class="alert">Some thing went wrong</h3>
<%} %>
<table>
		<thead>
		<tr>
		<th scope="col">id</th>
		<th scope="col">name</th>
		<th scope="col">category</th>
		<th scope="col">price</th>
		<th>status</th>
		<th scope="col">edit</th>
		</tr>
		</thead>
		<tbody>
		<tr>
		<%
		try
		{ Connection con=ConnectionProvider.getCon();
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from product");
		while(rs.next())
		{
		%>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td>
		<td><%=rs.getString(5) %></td>
		<td><a href="editProduct.jsp?id=<%=rs.getString(1)%>">edit</a></td>
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
<br>
</body>
</html>
<%@ include file="adminFooter.jsp" %>