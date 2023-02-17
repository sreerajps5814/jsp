<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>header</title>
<link rel="stylesheet" type="text/css" href="css/signup-style.css">
<style >
a{
padding-left: 2%;
color: black;
font-weight: bolder;
}
button {
position:absolute;
	display:flex;
	width: 35px;
	height: 20px;
	right:  1%;
}
input{
position:absolute;
right: 45px;
width: 85px;
}
.topnav-sticky{
background: maroon;
}
</style>
</head>

<body>
<div class="topnav-sticky" >
	<%String email=session.getAttribute("email").toString(); %>
	<center><h2>Online shopping</h2></center>
 <a href="addnewProduct.jsp">Add new product</a>
	<a href="allProductEditProduct.jsp">All Products & Edit Products</a>
	<a href="">Messages Received</a>
	<a href="">Cancel Orders</a>	
	<a href="">Delivered Orders</a>
	<a href="../logout.jsp">Logout</a>
		<div class="search-container" >
	<form action="searchHome.jsp" method="post">
	<input type="text" name="search" placeholder="search Here">
	<button type="submit" class="search" >go</button>
	</form>
		</div>
</div>

</body>
</html>