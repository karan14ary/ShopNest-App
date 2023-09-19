<%@page import="java.util.List" %>
<%@page import="com.shopNest.dbHandler.DataFetcher" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> ShopNest</title>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" >
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"></script>
     
     <style>
        /* Adjust the size of the carousel container */
        .carousel {
            max-width: 800px; /* Set your desired maximum width */
            margin: 0 auto; /* Center the carousel */
        }

        /* Adjust the size of carousel images */
        .carousel-item img {
            max-width: 100%; /* Set your desired maximum width */
            height: 100%; /* Maintain aspect ratio */
            object-fit:fill;
        }
    </style>
    <link rel="stylesheet" href="homestyle.csss">

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
<h1><b>Welcome home,Let's start shopping</b></h1>
<div class="bd-example">
  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="slideImg/Dell.jpg" class="d-block w-100 h-auto" alt="Dell">
        <div class="carousel-caption d-none d-md-block">
          <h5>DellG-16</h5>
          <p>i7 13th gen (13880HS) DDR5 16gb ram/1tb ssd/nvidia geforce rtx 4090(12gb) 90whr battery/144hz refresh rate weight 2.5kg</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="slideImg/Lenovo.jpg" class="d-block w-100 " alt="Lenovo">
        <div class="carousel-caption d-none d-md-block">
          <h5>Lenovo Legion 7</h5>
          <p>i7 12th gen (12780H) DDR5 16gb ram/1tb ssd/nvidia geforce rtx 4070(8gb) 76whr battery/360hz refresh rate weight 2.3kg</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="slideImg/Samsung.jpg" class="d-block w-100 " alt="samsung">
        <div class="carousel-caption d-none d-md-block">
          <h5>Samsung galaxy s23 ultra</h5>
          <p>snapdragon 8+gen2 12gb ram/512gb storage  </p>
        </div>
      </div>
       <div class="carousel-item">
        <img src="slideImg/Boat.jpg" class="d-block w-100 " alt="boat">
        <div class="carousel-caption d-none d-md-block">
          <h5>Boat wave smart watch</h5>
          <p>samoled display/hear rate/spo2/250+ sports feartures </p>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<%
List prodList=DataFetcher.fetchProductDetail();
%>
<main>
<%
String[]prodArr2=null;
for(int i=0;i<prodList.size();i++){
	String []prodArr=((String)prodList.get(i)).split(":");
	prodArr2=prodArr;
%>
<section class="product">
<img src="prodImg/<%=prodArr[4] %>"alt="Product 1">
<h2><%=prodArr[1] %></h2>
<p><%=prodArr[2] %></p>
<span class="price"><%=prodArr[3] %></span><br>
<form method="post"action="add-to-cart">
<input type="hidden" name="productId" value="<%=Integer.parseInt(prodArr[0])%>">
<input type="submit" class="btn btn-primary"value="Add-to-Cart"><br>
</form>
<br>
</section>
<br><br>
<%
}
%>
</main>
</body>
</html>