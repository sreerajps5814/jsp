
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/signup-style.css">
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<div id="container">
	<div class="signup">
	<form action="loginAction.jsp" method="post">
	<input type="email" name="email" placeholder="Enter Email" required="required"><br>
	<input type="password" name="password" placeholder="Enter password" required="required"><br>
	<input type="submit" value="Login">
	</form>
	<h2><a href="signup.jsp">SignUp</a></h2>
	<h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
	</div>
	<div class="whysignlogin">
	<%
	String msg=request.getParameter("msg");
	if("notexist".equals("msg"))
	{%>
	<h1>Incorrect Username or Password</h1>
	<%} %>
	<%if("invalid".equals("msg")) 
	{%>
	<h1>please signup</h1>
	<%} %>
	</div>	
</div>

</body>
</html>