<%@page import="java.util.List" %>
<%@page import="com.shopNest.dbHandler.DataFetcher" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<link rel="stylesheet" type="text/css" href="adminstyle.css">
<script>
function myClick(evt, tabs) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(tabs).style.display = "block";
  evt.currentTarget.className += " active";
}
</script>
</head>
<body>
<%
List userList=DataFetcher.fetchUsersInfo();
%>
<%
List prodList=DataFetcher.fetchProductInfo();
%>
<div class="tab">
<button class="tablinks" onclick="myClick(event,'tab1')">View customers info</button>
<button class="tablinks" onclick="myClick(event,'tab2')">View products info</button>
<button class="tablinks" onclick="myClick(event,'tab3')">Add new product</button>
<div style="float:right">
<button type="submit" onclick="document.location='login.jsp'">Logout</button>
</div>
</div>
<br><br>
<div class="tabcontent" id="tab1">
<table >
<caption><b>Users Information</b></caption>
<thead>
<tr>
<th>Username</th>
<th>Email</th>
<th>Gender</th>
<th>Address</th>
</tr>
</thead>
<tbody>
<%
for(int i=0;i<userList.size();i++){
String[] custArr=((String)userList.get(i)).split(":");
%>
<tr>
<td><%= custArr[0] %></td>
<td><%= custArr[1] %></td>
<td><%= custArr[2] %></td>
<td><%= custArr[3] %></td>
</tr>
<%
}
%>

</tbody>
</table>
</div>
<div class="tabcontent" id="tab2">

<table >
<caption><b>Products Information</b></caption>
<thead>
<tr>
<th>ID</th>
<th>Name</th>
<th>Description</th>
<th>Price</th>
<th>Image</th>
</tr>
</thead>
<tbody>
<%
for(int j=0;j<prodList.size();j++){
String[] prodArr=((String)prodList.get(j)).split(":");
%>
<tr>
<td><%= prodArr[0] %></td>
<td><%= prodArr[1] %></td>
<td><%= prodArr[2] %></td>
<td><%= prodArr[3] %></td>
<td><img src="prodImg/<%= prodArr[4] %>"alt="Image 1"height="100%"width="100%"></td>
</tr>
<%
}
%>
</tbody>
</table>
</div>
<div class="tabcontent" id="tab3">
<h1><b>Add New Products</b></h1>
<form action="addp" method="post">
<div class=form-group>
<label for="product-id">Product ID:</label>
<input type ="text" id="product-id" name="product-id" required>
</div>
<br>
<div class=form-group>
<label for="product-name">Product Name:</label>
<input type ="text" id="product-name" name="product-name" required>
</div>
<br>
<div class=form-group>
<label for="product-description">Product Description:</label>
<input type ="text" id="product-description" name="product-description" required>
</div>
<br>
<div class=form-group>
<label for="product-price">Product Price:</label>
<input type ="text" id="product-price" name="product-price" required>
</div>
<br>
<div class=form-group>
<label for="product-image">Product Image file:</label>
<input type ="text" id="product-image" name="product-image" required>
</div>
<br>
<button type="submit">Submit</button>
</form>
</div>
</body>
</html>