<?php

session_start();
require_once("connection/connect.php");


if(!isset($_SESSION['userid']) || !isset($_SESSION['password'])){
    header("Location: login.html");
    exit;
}

$userid = $_SESSION['userid'];
$password = $_SESSION['password'];

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FusionCars - Booking</title>
    <link rel="shortcut icon" href="media/favicon.svg" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet"/>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header class="header">
        <div id="menu-btn" class="fas fa-bars"></div>
        <a href="#" class="logo"><span>Fusion</span>cars</a>
        <nav class="navbar">
            <a href="index.php">HOME</a>
            <a href="vehicles.php">VEHICLES</a>
            <a href="index.php #services">SERVICES</a>
            <a href="index.php #featured">FEATURED</a>
            <a href="index.php #reviews">REVIEW</a>
            <a href="contact.php #contact">CONTACT</a>
            <a href="profile/profile.php"><i class="ri-user-3-fill"></i></a>
        </nav>
        <div id="login-btn">
            <a href="login.html">
                <button class="btn">Login</button>
            </a>
        </div> 
    </header>

<section class="booking">
    <div class="booking_container">
        <h1>Book The Car</h1>
        <form action="bill.php" method="POST" class="book_form">
            <div class="name_details">
                <div class="field">
                    <label for="name">Full Name</label>
                    <input type="text" id="name" name="name" placeholder="Enter your full name" required>
                </div>
                <div class="field">
                    <label for="mobileNum">Mo. No</label>
                    <input type="tel" id="mobileNum" name="mobileNum" placeholder="Enter your mobile number" required pattern="[0-9]{10}">
                </div>
            </div>
                
            <div class="loc_details">
                <div class="input1">
                    <label for="state">State</label>
                    <input type="text" id="state" name="state" placeholder="Enter your state" required>
                </div>
                <div class="input1">
                    <label for="pinCode">PIN Code</label>
                    <input type="text" id="pinCode" name="pinCode" placeholder="Enter your PIN code" required pattern="[0-9]{6}">
                </div>
                <div class="input1">
                    <label for="city">City</label>
                    <input type="text" id="city" name="city" placeholder="Enter your city" required>
                </div>
            </div>

            <div class="address_details">
                <div class="field1">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" placeholder="Enter your email" required>
                </div>
                <div class="field1">
                    <label for="address">Address</label>
                    <input type="text" id="address" name="address" placeholder="Enter your home address">
                </div>
            </div>

            <div class="cars_details">
                <div class="pro_field">
                    <label>Car Name</label>
                    <input type="text" id="cars_name" name="cars_name" readonly>
                </div>
                <div class="pro_field">
                    <label>Car Price</label>
                    <input type="text" id="cars_price" name="cars_price" readonly>
                </div>
                <!-- <div class="pro_field">
                    <label>Car Total Price</label>
                    <input type="text" id="total" name="total" readonly>
                </div> -->
            </div>


            <button type="submit" name="Book" class="book">Confirm Booking</button>
        </form>
    </div>
</section>
    

<!-- <script>
        window.onload = function() {
            // Call the function on page load
            calculateTotal();
        }

        // Function to calculate total
        function calculateTotal() {
            var productPrice = parseFloat(document.getElementById("cars_price").value);
            var total = productPrice;
        }

        // Event listeners to recalculate total when product price or quantity changes
        document.getElementById("cars_price").addEventListener("input", calculateTotal);
    </script> -->
<script>
        // Function to extract query parameter from URL
        function getQueryParam(name) {
            const urlParams = new URLSearchParams(window.location.search);
            return urlParams.get(name);
        }

        // Retrieve product data from URL and set values in text boxes
        document.addEventListener('DOMContentLoaded', function() {
            document.getElementById('cars_name').value = getQueryParam('cars_name');
            document.getElementById('cars_price').value = getQueryParam('cars_price');
            // calculateTotal();

        });
    </script>
</body>
</html>