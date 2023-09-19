<%@page import="java.util.List" %>
<%@page import="com.shopNest.dbHandler.DataFetcher" %>
<%@page import="com.shopNest.product.Product" %>
<%@page import="com.shopNest.product.Cart" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" >
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="home.jsp">ShopNest</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="cart.jsp">cart </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="about.jsp">About us</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Account
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color:lightgrey"style="color:white">
          <a class="dropdown-item" href="profile.jsp">Profile</a>
          <a class="dropdown-item" href="wish.jsp">Wishlist</a>
          <a class="dropdown-item" href="order.jsp">Order</a>
            <a class="dropdown-item" href="faq.jsp">FAQ</a>
          <div class="dropdown-divider"></div>
          <div class="dropdown-item">
          <button type="submit"onclick="document.location='login.jsp'" class="btn btn-outline-success my-2 my-sm-0">Log Out</button>
        </div>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"></a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-4 my-sm-0" type="submit" style="color:white"style="border:4px">Search</button>
    </form>
  </div>
</nav>
<h1><b>Items in Cart</b></h1>

<%
// Retrieve the Cart object from the session
Cart cart = (Cart) session.getAttribute("cart");
if (cart == null) {
	cart=new Cart();
	session.setAttribute("cart", cart);
%>
	
    
	<p><b>Your cart is empty!</b></p>

<%
} 
%>

<section>
    <ul>
        <%
        List<Product> cartItems = cart.getItems();
        for (Product item : cartItems) {
        %>
        <li>
        	<b>Product Id</b><%=item.getPid() %><br>
            <b>Product Name:</b> <%= item.getPname() %><br>
            <b>Product Price:</b> <%= item.getPprice() %><br>
        </li>
        <%
        }
        %>
    </ul>
</section>
<%double total=cart.getTotal(); %>
<main>
    <p><b>Total:</b> <%= total %></p>
</main>

</body>
</html>