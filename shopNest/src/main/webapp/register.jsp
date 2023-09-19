<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Customer Registration</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<h1>Register here</h1>
<div class="register">
<form method="post" action="reg">
<label><b>User Name
</b>
</label><br>
<input type="text" name="uname" id="textbox"placeholder="UserName">
<br><br>
<label><b>Email
</b>
</label><br>
<input type="text" name="mail" id="textbox"placeholder="Email">
<br><br>
<label><b>Password
</b></label><br>
<input type="password"name="pass"id="textbox"placeholder="Password">
<br><br>
<label><b>Gender
</b>
</label><br>
<input type="radio" name="gender" value="male"/>Male
<input type="radio" name="gender" value="female"/>Female
<input type="radio" name="gender" value="other"/>Other
<br><br>
<label><b>Address
</b></label><br>
<textarea rows="2" cols="20" id="textbox"class="form-c"name="address"></textarea>
<br><br>
<input type="submit"id="sub"value="Register">
<br><br>
<a href="login.jsp">Already registerd? Signin instead</a>
</form>
</div>
</body>
</html>