<?php
session_start();
require_once("connection/connect.php");
require_once("function/car-model.php");


require_once("connection/db.php");
$db1 = $result1;


if(isset($_POST['remove'])){
    if($_GET['action']=='remove'){
        foreach($_SESSION['cars'] as $key=>$value){
            if($value['cars_id'] == $_GET['cars_id']){
                unset($_SESSION['cars'][$key]);
                echo "<script>window.location='vehicles.php';</script>";
            }
        }
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FusionCars - Car Details</title>
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
            <!-- <a href="profile/profile.php"><i class="ri-user-3-fill"></i></a> -->
        </nav>
        <div id="login-btn">
            <a href="login.html">
                <button class="btn">Login</button>
            </a>
        </div> 
    </header>

<div class="s_product">
    <div class="detail_container">
        <?php
            if(isset($_SESSION['cars']))
            {
                $pro_id=array_column($_SESSION['cars'],'cars_id');
                $result1=$db1;
                while($row=mysqli_fetch_assoc($result1))
                {
                    foreach($pro_id as $id1)
                    {
                        if($row['cars_id'] == $id1)
                        {
                            cars($row['cars_id'], $row['cars_name'], $row['cars_price'], $row['cars_image'], $row['cars_desc'], $row['milage'], $row['fule_type'], $row['engine'], $row['BHP'], $row['transmission'],$row['seating'],$row['bootspace'],$row['airbag'],$row['park_sence']);
                        }
                        
                    }
                }
            }
            else{
                echo "ERROR";
            }
        ?>
 
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<!-- <script>
    var loader = document.getElementById("preLoader");

    window.addEventListener("load", function(){
        loader.style.display = "none";
    })
</script> -->
</body>
</html>