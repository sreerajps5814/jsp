<%@page import="packag.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%@ include file="header.jsp" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
<style>
table {
	border: 2px dotted black;
	width: 25%;
}
th{
border: 2px solid maroon;
}
td{
border: 2px solid maroon;
text-align: center;
}
.back{
position:absolute;

font-size:12px;
height:5px;
color:white;

background:black;
left: 2%;

top: 25px;

border-radius: 15px;

}
</style>
</head>
<body>

<table>
	<thead>
	<tr>
	<th scope="col">ID</th>
	<th scope="col">Name</th>
	<th scope="col">Category</th>
	<th scope="col">Price</th>
	</tr>
	</thead>
	<tbody>
	<%String Email=session.getAttribute("email").toString(); %>
	<%
	
	try
	{	
		Connection con=ConnectionProvider.getCon();
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from cart where email='"+Email+"'");
		while(rs.next())
		{
			%>
			<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			
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
<a  class="back" href="home.jsp">BACK</a>
</body>
</html>
<%@ include file="footer.jsp" %>