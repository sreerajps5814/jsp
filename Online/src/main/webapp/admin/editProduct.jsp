
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="packag.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add new product</title>
<style >
*{
background: aqua;
}
.left-div{
border-left: 5px solid red;
border-right:5px solid red;
background-color: white;
}

.main{
padding:25px;
position: absolute;
left: 25px;
background: white;
height: 50%;
width: 25%;
}
form {
	background-color: white;
}
h2,a{
position: relative;
font-weight: bolder;
color: black;
left: 10px;
}
h3{
background-color: white;
}
</style>
</head>
<body>
<h2><a class="back" href="allProductEditProduct.jsp">Back</a></h2>
<%
try
{
	String id=request.getParameter("id");
	Connection con=ConnectionProvider.getCon();
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select * from product where id ='"+id+"'");
	while(rs.next())
	{
		%>
		<div class="main">
		<form action="editProductAction.jsp" method="post">
		<input class="input-style" type="hidden" name="id" value="<%out.print(id);%>">
		<div class="left-div">
		<h3>Enter name</h3>
		<input class="input-style" type="text" name="name" value="<%=rs.getString(2)%>">
		<hr>
		</div>
		
		<div class="left-div">
		<h3>Enter category</h3>
		<input class="input-style" type="text" name="category" value="<%=rs.getString(3)%>">
		<hr>
		</div>
		
		<div class="left-div">
		<h3>Enter price</h3>
		<input class="input-style" type="text" name="price" value="<%=rs.getString(4)%>">
		<hr>
		</div>
		
		<div class="left-div">
		<h3>Active</h3>
		<select class="input-style" name="active">
		<option value="yes">yes</option>
		<option value="no">no</option>
		</select>
		<hr>
		
		</div>
		<button class="button">save</button>
		
		</form></div>
		
	<%}
	}
catch(Exception e)
{
	System.out.println(e);
	}
%>

</body>
</html>