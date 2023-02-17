<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
a{
color: black;
padding: 15px;
font-weight: bolder;
}
.topnav-sticky{
background: maroon;
}
</style>
</head>
<div class="topnav-sticky">
	<%String email=session.getAttribute("email").toString(); %>
	<center><h2>Online shopping</h2></center>
 <a href=""><%out.println(email); %></a>
	
	<a href="">Messages Received</a>
	<a href="myCart.jsp">My Cart</a>
	<a href="">Cancel Orders</a>	
	<a href="">Delivered Orders</a>
	<a href="logout.jsp">Logout</a>
</div>
<div class="search-container" >
	<form action="searchHome.jsp" method="post">
	<input type="text" name="search" placeholder="search Here">
	<button type="submit" class="search" >go</button>
	</form>
		</div>
<body>

</body>
</html>