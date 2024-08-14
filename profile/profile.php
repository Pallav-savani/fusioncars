<?php
session_start();

// Check if user is logged in
if (!isset($_SESSION['userid']) || !isset($_SESSION['password'])) {
    // Redirect to login page if not logged in
    header("Location: ../login.php");
    exit;
}

// Retrieve user ID from session
$userid = $_SESSION['userid'];
$password = $_SESSION['password'];

// Logout logic
if (isset($_POST['logout'])) {
    // Unset all session variables
    $_SESSION = array();
    
    // Destroy the session
    session_destroy();
    
    // Redirect to login page after logout
    header("Location: ../index.php");
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FusionCars - User Profile</title>
    <link rel="shortcut icon" href="../media/favicon.svg" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet"/>
    <link rel="stylesheet" href="../style.css">

</head>
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
    background: url("../media/back.png") no-repeat;
    background-position: center;
    background-size: cover;
    display: flex;
    padding: 0 30px;
    align-items: center;
}

.container1{
    position: relative;
    width: 480px;
    height: 300px;
    background-color: rgba(0, 0, 0, 0.250);
    backdrop-filter: blur(10px);
    border-radius: 10px;
    border: 1px solid #000;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
    display: flex;
    flex-direction: column;
    align-items: center;
}
.profile{
    position: relative;
    width: 100%;
    height: 250px;
    overflow: hidden;
    display: flex;
    flex-direction: column;
    justify-content: center;
    row-gap: 10px;
}
.head{
    position: relative;
    font-size: 28px;
    color: #333;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-bottom: 10px;
    column-gap: 5px;
}
.head i{
    font-size: 24px;
}
.form1{
    position: relative;
    width: 100%;
    height: max-content;
    display: flex;
    justify-content: space-between;
    flex-direction: column;
    row-gap: 16px;
}
.email,
.passw{
    position: relative;
    width: 100%;
    height: 40px;
    display: flex;
    align-items: center;
    justify-content: space-between;
}
.name{
    position: relative;
    width: 28%;
    height: 100%;
    font-size: 18px;
    display: flex;
    align-items: center;
    color: #000;
    font-weight: 500;
}
.field{
    position: relative;
    width: 72%;
    height: 100%;
    border-radius: 20px;
    background: transparent;
    background-color: rgba(255, 255, 255, 0.2);
    padding: 0 10px;
    transition: .3s ease;
    outline: none;
    border: none;
}
input[type="text"]{
    font-size: 18px;
}
.field:hover{
    border: 1px solid #000;
}

.form2{
    position: relative;
    width: 100%;
    height: max-content;
    padding: 5px 0;
    display: flex;
    justify-content: space-around;
    align-items: center;
}
.logout{
    position: relative;
    width: 50%;
    height: 40px;
    border: none;
    outline: none;
    border-radius: 20px;
    font-size: 16px;
    background-color: #ff809c;
    color: #fff;
    cursor: pointer;
    transition: .3s ease;
}
.logout:hover{
    background-color: #ef6885;
}
.homeButton{
    position: relative;
    width: max-content;
    padding: 10px 20px;
    background-color: #fff;
    color: #000;
    border-radius: 20px;
    text-decoration: none;
    font-size: 16px;
    transition: .3s ease;
}
.homeButton:hover{
    background-color: #00040d;
    color: #fff;
}

@media screen and (max-width: 600px) {
    .container {
        max-width: 100%;
        height: 100vh;
        border-radius: 0px;
        outline: none;
    }
    .profile{
        top: 50px;
    }
    .email,
    .passw{
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        height: max-content;
        padding: 4px 0;
    }
    .name,
    .field{
        width: 100%;
        margin-bottom: 5px;
    }
    .field{
        height: 40px;
        border: 1px solid #aaa;
    }
}
</style>
<body>

<?php 
include("../php/header.php");
?>

<div class="container1">
    <div class="profile">
        <h1 class="head">
            <i class="ri-user-3-fill"></i> User Profile
        </h1>
        <form method="post" class="form1">
            <div class="email">
                <label for="userid" class="name">User Email ID:</label>
                <input type="text" id="userid" name="userid" class="field" value="<?php echo $userid; ?>" readonly>
            </div>
            <div class="passw">
                <label for="password" class="name">Password:</label>
                <input type="text" id="password" name="password" class="field" value="<?php echo $password; ?>" readonly>
            </div>
        </form>
        <form method="post" class="form2">
            <input type="submit" id="logoutButton" class="logout" name="logout" value="Log Out">
            <a href="../index.php" class="homeButton">Home</a>
        </form>
    </div>
</div>

</body>
</html>