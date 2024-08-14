<?php
include("connection/connect.php");
$email = $_POST['email'];  
$password = $_POST['password'];  
  
    //to prevent from mysqli injection  
    $email = stripcslashes($email);  
    $password = stripcslashes($password);  
    $email = mysqli_real_escape_string($con, $email);  
    $password = mysqli_real_escape_string($con, $password);  
  
    $sql = "select *from login where email = '$email' and password = '$password'";  
    $result = mysqli_query($con, $sql);  
    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
    $count = mysqli_num_rows($result);  
      
    if($count == 1){  
        echo "<h1><script>alert('login successfull');</script></h1>";
        session_start();

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
        
            $email = $_POST['email'];
            $password = $_POST['password'];

            $_SESSION['userid'] = $email;
            $_SESSION['password'] = $password;

            header("Location: profile/profile.php");
            exit;
        }
    }  
    else{  
        echo "<script>alert('NO USER LOGIN FOUND..!!');window.location='login.html';</script>";  
    }     
?>