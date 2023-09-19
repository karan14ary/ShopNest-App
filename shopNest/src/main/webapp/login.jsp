<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer logIn</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<h1><b>Login to Start Shopping</b></h1>
<div class="login">
<form id="login" method="post" action="log">
<label><b>User Name
</b>
</label><br>
<input type="text" name="uname" id="textbox"placeholder="UserName">
<br><br>
<label><b>Password
</b></label><br>
<input type="password"name="pass"id="textbox"placeholder="Password">
<br><br>
<input type="submit" id="sub" value="Log In">
<br><br>
<a href="register.jsp">New user? Register here</a>
</form>
</div>
</body>
</html>