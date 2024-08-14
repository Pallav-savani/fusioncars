<?php

require_once("connection/connect.php");

?>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FusionCars- Show Booking</title>
<link rel="shortcut icon" href="media/favicon.svg" type="image/x-icon">
<link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet"/>
<style>
@import url('https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100..900;1,100..900&display=swap');

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
body {
    width: 100%;
    height: 100vh;
    font-family: 'Jost', sans-serif;
    background: url("media/dodge-challenger.jpg") no-repeat;
    background-size: cover;
    background-position: center;
}
.container {
    max-width: 800px;
    margin: 20px auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 10px;
    background-color: rgba(255,255,255, .1);
    backdrop-filter: blur(30px);
    box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
}
h1, h2, h3 {
    text-align: center;
    color: #fff;
}
form{
    width: 100%;
    height: max-content;
    display: flex;
    padding: 10px;
    column-gap: 10px;
}
form input{
    width: 50%;
    height: 40px;
    padding: 10px;
    border: 1px solid #aaa;
    border-radius: 10px;
    outline: none;
}
form input[type="text"]{
    font-size: 16px;
}
form button{
    position: relative;
    width: 20%;
    font-size: 15px;
    border-radius: 8px;
    border: 1px solid #333;
    background-color: #f4f4f4;
    color: #333;
    cursor: pointer;
    transition: background-color 0.3s, border-color 0.3s, color 0.3s;
}
form button:hover {
    background-color: #ffebcc;
    border-color: #f60;
    color: #222;
}
.order-details {
    margin-top: 20px;
}
.order-details p {
    margin: 5px 0;
    color: #fff;
}
.cancel_msg{
    font-size: 18px;
    padding: 6px 20px;
    margin: 20px 0;
    border-radius: 4px;
    border: 1px solid #cc5c4d;
    background-color: #f0bab3;
}
.order-details hr {
    border-top: 1px solid #ccc;
    margin: 20px 0;
}
.order-details .header-info {
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.order-details .header-info p {
    margin: 5px 0;
}
.order-details .items-table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 10px;
}
.order-details .items-table th, .order-details .items-table td {
    padding: 10px;
    text-align: left;
    border-bottom: 1px solid #ddd;
    min-width: 100px;
    color: #fff;
}
.order-details .items-table th {
    background-color: rgba(255, 255, 255, 0.3);
    border-radius: 5px;
}
.footer-info {
    margin-top: 20px;
}
.footer-info p {
    margin: 5px 0;
}
.back-button {
    text-align: center;
    margin-top: 20px;
}
.button {
    display: inline-block;
    background-color: #f4f4f4;
    border: 2px solid black;
    color: #333;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s, border-color 0.3s, color 0.3s;
}
.button:hover {
    background-color: #ffebcc;
    border-color: #f60;
    color: #222;
}
.print-instruction {
    text-align: center;
    margin-top: 20px;
}
.print-instruction p {
    background-color: #f4f4f4;
    color: #333;
    padding: 10px 20px;
    border: 2px solid black;
    border-radius: 5px;
    font-weight: bold;
    display: inline-block;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    transition: all 0.3s ease;
}
.print-instruction p:hover {
    transform: translateY(-2px);
    box-shadow: 0 6px 8px rgba(0, 0, 0, 0.2);
}

@media screen and (max-width: 600px) {
    .container {
        max-width: 100%;
        border-radius: 0;
    }
    form{
        flex-direction: column;
        justify-content: center;
        align-items: center;
        row-gap: 10px;
    }
    form input[type="text"] {
        width: calc(100% - 10px);
        margin-right: 0;
        margin-bottom: 10px;
    }
    form button{
        width: 50%;
        height: 40px;
    }
}

button {
    width: calc(100% - 10px);
    margin-right: 0;

}
</style>
</head>
<body>

<div class="container">
<form action="#" method="post">
        <input type="text" name="order_id"  placeholder="Please Enter Booking-id" required>
        <button name="order" class="order" value="order">Show Booking</button>
        <button name="delet-order" class="del-order" value="delet-order">Cancel Booking</button>
    </form>
    <h1>Token Bill</h1>
<?php
if(isset($_POST['delet-order'])){
   $delet=$_POST['order_id'];

   $servername = "localhost";
   $username = "root"; 
   $password = ""; 
   $dbname = "fusioncars"; 

   $conn = new mysqli($servername, $username, $password, $dbname);

   if ($conn->connect_error) {
       die("Connection failed: " . $conn->connect_error);
   }

   $sql = "DELETE FROM orders WHERE order_id =$delet";
   $result = $conn->query($sql);
   $conn->close();

   $message = "Booking cancel successfully";
   echo "<p class=\"cancel_msg\">$message</p>";
}
?>
<?php
if (isset($_POST['order'])) {
    $order_id=$_POST['order_id'];
    

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "fusioncars";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM orders WHERE order_id = $order_id";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            echo "<div class='order-details'>";
            echo "<div class='header-info'>";
            echo "<p><strong>Booking ID :</strong> " . $row["order_id"] . "</p>";
            echo "<p><strong>Date :</strong> " . date("d-m-Y") . "</p>";
            echo "</div>";
            echo "<hr>";
            echo "<h2>Customer Information</h2>";
            echo "<p><strong>Customer Name :</strong> " . $row["name"] . "</p>";
            echo "<p><strong>Mobile Number :</strong> " . $row["mobile_number"] . "</p>";
            echo "<p><strong>Email :</strong> " . $row["email"] . "</p>";
            echo "<p><strong>Address :</strong> " . $row["address"] . ", " . $row["city"] . ", " . $row["state"] . ", " . $row["pin_code"] . "</p>";
            echo "<hr>";
            echo "<h2>Booking Items</h2>";
            echo "<table class='items-table'>";
            echo "<tr><th>Product Name</th><th>Price</th></tr>";
            echo "<tr><td>" . $row["cars_name"] . "</td><td>₹" . $row["cars_price"] . "</td></tr>";
            echo "</table>";
            echo "<div class='footer-info'>";
            echo "<p><strong>Booking Date :</strong> " . $row["order_date"] . "</p>";
            echo "</div>";
            echo "</div>";
        }
    } else {
        echo "Order details not found for order ID: $order_id";
    }

    $conn->close();
} else {
    echo "Booking ID not found.";
}
?>
 <div class="back-button">
        <a href="index.php" class="button">Back to Home</a>
    </div>
</div>

</body>
</html>