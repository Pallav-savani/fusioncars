<?php
session_start();
if ($_SERVER["REQUEST_METHOD"] == "POST"){
// Connect to MySQL database (replace with your actual database credentials)
$mysqli = new mysqli("localhost", "root", "", "fusioncars");

// Check connection
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

// Generate random order ID
$order_id = rand(100000, 999999);

// Retrieve and sanitize form data
$name = $mysqli->real_escape_string($_POST['name']);
$mobile_number = $mysqli->real_escape_string($_POST['mobileNum']);
$state = $mysqli->real_escape_string($_POST['state']);
$pin_code = $mysqli->real_escape_string($_POST['pinCode']);
$city = $mysqli->real_escape_string($_POST['city']);
$email = $mysqli->real_escape_string($_POST['email']);
$address = $mysqli->real_escape_string($_POST['address']);
$car_name = $mysqli->real_escape_string($_POST['cars_name']);
$car_price = $mysqli->real_escape_string($_POST['cars_price']);

// Prepare SQL statement to prevent SQL injection
$stmt = $mysqli->prepare("INSERT INTO orders (order_id, name, mobile_number, state, pin_code, city, email, address, cars_name, cars_price) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

// Bind parameters
$stmt->bind_param("issssssssi", $order_id, $name, $mobile_number, $state, $pin_code, $city, $email, $address, $car_name, $car_price);    

// Execute the statement
if ($stmt->execute()) {
    $_SESSION['order_id'] = $order_id;
    header("Location: billshow.php");
    exit();
} else {
    echo "Error: " . $stmt->error;
}
// Close the statement and connection
$stmt->close();
$mysqli->close();
}
?>