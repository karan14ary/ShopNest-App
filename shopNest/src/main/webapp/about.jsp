<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" >
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS stylesheet -->
    <title>About Us - Shopping Website</title>
</head>
<body>
    <header>
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
        <h1>About Us</h1>
    </header>
    <section class="about-us">
        <h2>Our Story</h2>
        <p>Welcome to [Your Company Name], your one-stop online shopping destination. Founded in [Year], we have been dedicated to providing high-quality products and exceptional service to our customers.</p>

        <h2>Our Mission</h2>
        <p>Our mission is to make online shopping convenient, enjoyable, and accessible to everyone. We strive to offer a wide range of products, from electronics and fashion to home and lifestyle, at competitive prices.</p>

        <h2>Why Choose Us?</h2>
        <p>At India, we differentiate ourselves by:</p>
        <ul>
            <li>Offering a diverse selection of products to cater to various needs and preferences.</li>
            <li>Ensuring the quality and authenticity of our products through rigorous sourcing and quality control.</li>
            <li>Providing excellent customer support to assist you at every step of your shopping journey.</li>
            <li>Offering secure and convenient payment options for your peace of mind.</li>
            <li>Continuously improving our website to enhance your shopping experience.</li>
        </ul>

        <h2>Contact Us</h2>
        <p>If you have any questions, feedback, or inquiries, please don't hesitate to contact our customer support team. We're here to assist you.</p>
        <p>Email: support@yourcompany.com</p>
        <p>Phone: +918431727268</p>
    </section>
</body>
</html>
