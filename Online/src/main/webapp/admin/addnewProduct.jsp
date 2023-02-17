<%@page import="java.sql.*"%>

<%@page import="packag.ConnectionProvider"%>
<%@ include file="adminHeader.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"  href="css/signup-style.css">
<style>

.left-div {
position: absolute;
width: 350px;
height: 20px;

}
.left-div1 {
position: absolute;
width: 350px;
height: 20px;
left: 35%;

}
.left-div2 {
position: absolute;
width: 350px;
height: 20px;
top: 250px;
}
.left-div3 {
position: absolute;
width: 350px;
height: 20px;
left: 35%;
top: 250px;
}
button{
position: absolute;
top: 360px;
left: 25%;
width: 100px;
background:lime;
}
button:hover{
background: red;
}
.input-style{
position:absolute;
width: 300px;
}



</style>
<meta charset="ISO-8859-1">
<title>Add new product</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{%>
<h3 class="alert">Product added</h3>
	
<%} %>
<%
if("wrong".equals(msg))
{%>
<h3 class="alert">Some thing went wrong</h3>
<% }%>
<%
int id=1;
try
{Connection con=ConnectionProvider.getCon();
	Statement stsmt=con.createStatement();
	ResultSet rs=stsmt.executeQuery("select max(id)from product");
	while(rs.next())
	{
		id=rs.getInt(1);
		id=id+1;
	}
	
	}
	catch(Exception e)
{
		}
	%>
	<h3 style="color: black;">Product id:<%out.println(id);%></h3>
	<div class="main">
	<form action="addNewProductAction.jsp" method="post">
	<input type="hidden" name="id" value="<%out.println(id);%>">
	<div class="left-div">
	<h3>EnterName</h3>
	<input class="input-style" type="text" name="name" placeholder="Enter product"required="required">
	<hr>
	</div>
	
	<div class="left-div1">
	<h3>EnterCatergory</h3>
	<input class="input-style" type="text" name="category" placeholder="Enter category"required="required">
	<hr>
	</div>
	
	<div class="left-div2">
	<h3>EnterPrice</h3>
	<input class="input-style" type="number" name="price" placeholder="Enter price"required="required">
	<hr>
	</div>
	
	<div class="left-div3">
	<h3>Active</h3>
	<select class="input-style" name="active">
	<option value="yes">yes</option>
	<option value="no">No</option>
	</select>
	<hr>
	</div>
	
	<button class="button">save</button>
	</form></div>

</body>
</html>