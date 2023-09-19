<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS stylesheet -->
    <title>FAQ - Shopping Website</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" >
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"></script>
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
        <h1>Frequently Asked Questions</h1>
        
    </header>
    
    <section class="faq">
        <!-- FAQ Item 1 -->
        <div class="faq-item">
            <h2>How do I place an order?</h2>
            <p>To place an order, follow these steps:
            <ol>
                <li>Search for the product you want to purchase.</li>
                <li>Click on the product to view details.</li>
                <li>Click the "Add to Cart" button.</li>
                <li>Review your cart and click "Checkout."</li>
                <li>Enter your shipping and payment information.</li>
                <li>Review your order and click "Place Order."</li>
            </ol>
            </p>
        </div>

        <!-- FAQ Item 2 -->
        <div class="faq-item">
            <h2>What payment methods are accepted?</h2>
            <p>We accept the following payment methods:
            <ul>
                <li>Credit and Debit Cards (Visa, MasterCard, etc.)</li>
                <li>PayPal</li>
                <li>Online Banking (e.g., Net Banking)</li>
            </ul>
            </p>
        </div>

        <!-- FAQ Item 3 -->
        <div class="faq-item">
            <h2>How can I track my order?</h2>
            <p>To track your order:
            <ol>
                <li>Log in to your account.</li>
                <li>Go to the "Orders" section.</li>
                <li>Find your order and click "Track Order."</li>
                <li>You will see the current status and tracking information.</li>
            </ol>
            </p>
        </div>

        <!-- Add more FAQ items here -->
    </section>
</body>
</html>
