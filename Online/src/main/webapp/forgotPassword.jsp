<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"  href="css/signup-style.css">
<meta charset="ISO-8859-1">
<title>ForgotPassword</title>
</head>
<body>
<div id="container">
	<div id="signup">
	<form action="SignupAction.jsp" method="post"><br>
	<input type="text" name="name" placeholder="Enter Name"required><br>
	<input type="email" name="email" placeholder="Enter Email"required><br>
	<input type="number" name="mobile number" placeholder="Enter Mobile Number"required><br>
	
	<select name="securityQuestion">
	<option value="What was your first car?">What was your first car?</option>
	<option value="What is the name of your first pet?">What is the name of your first pet?</option>
	<option value="What elementary school did you were bron?">What elementary school did you were bron?</option>
		</select>
	<input type="text" name="answer" placeholder="Enter answer"required><br>
	<input type="password" name="passwoed" placeholder="Enter Password"required><br>
	<input type="submit" value="signup">
	
	</form>
	<h2><a href="login.jsp">Login</a></h2>
	</div>
	<div class="whyforgetPassword">
	<%
	
	String msg=request.getParameter("msg");
	if("done".equals("msg"))
	{%>
	<h1>Password changed Successfully</h1>
	<%} %>
	<%if("invalid".equals("msg")) 
	{%>
	<h1>try Again</h1>
	<%} %>
	
	</div>
</div>
</body>
</html>