<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup</title>
<link rel="stylesheet"  href="css/signup-style.css">
</head>
<body>
<div id="container">
	<div id="signup">
	<form action="SignupAction.jsp" method="post"><br>
	<input type="text" name="name" placeholder="Enter Name"required><br>
	<input type="email" name="email" placeholder="Enter Email"required><br>
	<input type="number" name="mobileNumber" placeholder="Enter Mobile Number"required><br>
	
	<select name="securityQuestion">
	<option value="What was your first car?">What was your first car?</option>
	<option value="What is the name of your first pet?">What is the name of your first pet?</option>
	<option value="What elementary school did you were born?">What elementary school did you were born?</option>
		</select>
	<input type="text" name="answer" placeholder="Enter answer"required><br>
	<input type="password" name="password" placeholder="Enter Password"required><br>
	<input type="submit" value="signup">
	
	</form>
	<h2><a href="login.jsp">Login</a></h2>
	</div>
<%
String msg=request.getParameter("msg");
if("valid".equals("msg"));
{
%>
	<h1>Successfully Registered !</h1>
<%} %>
<%if("invalid".equals("msg"))
{ 
%> 	
<h1>Some thing went wrong</h1>
<%} %>
</div>
<div class="signup-texts">
<a>Welcome all</a>
<h1>Get Set Shop...<br>An e-commerce website is one that allows people to buy and sell physical goods, services, and digital products over the internet rather than at a brick-and-mortar location. Through an e-commerce website, a business can process orders, accept payments, manage shipping and logistics, and provide customer service.</h1>
</div>

</body>
</html>