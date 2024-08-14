<?php
session_start();
include("../connection/connect.php");
include("../function/car-model.php");

require_once("../connection/db.php");
$db1 = $result1;

if(isset($_POST['view_detail']))
{
    $item_arrays = array('cars_id' => $_POST['cars_id']);
    $_SESSION['cars'][0] = $item_arrays;
    echo "<script>window.location = '../cars-view.php';</script>";
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FusionCars - Toyota</title>
    <link rel="shortcut icon" href="../media/favicon.svg" type="image/x-icon">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css">

    <!--font  awsom cdn link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" href="../style.css">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet"/>

</head>
<body>
<section class="featured" id="featured">
    <h1 class="heading"> <span>Volvo</span> cars</h1>

        <div class="featured_content">
            <?php

                $conn = mysqli_connect("localhost", "root", "", "fusioncars");

                $sql_query = "SELECT * FROM cars WHERE category='volvo' ";
                $result = mysqli_query($conn, $sql_query);

                while($row = mysqli_fetch_assoc($result)){
                    carcomponent($row['car_id'], $row['car_name'], $row['car_price'], $row['car_image'], $row['car_id']);
                }

            ?>
        </div>
    
    

</section>

<section class="footer">
    <div class="box-container">
        <div class="box">
            <h3>our branches</h3>
            <a href="#"><i class="fas fa-map-marker-alt"></i>india</a>
            <a href="#"><i class="fas fa-map-marker-alt"></i>france</a>
            <a href="#"><i class="fas fa-map-marker-alt"></i>africa</a>
            <a href="#"><i class="fas fa-map-marker-alt"></i>australia</a>
            <a href="#"><i class="fas fa-map-marker-alt"></i>russia</a>
        </div>

        <div class="box">
            <h3>quick links</h3>
            <a href="#"><i class="fas fa-arrow-right"></i>home</a>
            <a href="#"><i class="fas fa-arrow-right"></i>vehicles</a>
            <a href="#"><i class="fas fa-arrow-right"></i>services</a>
            <a href="#"><i class="fas fa-arrow-right"></i>featured</a>
            <a href="#"><i class="fas fa-arrow-right"></i>reviews</a>
            <a href="#"><i class="fas fa-arrow-right"></i>contact</a>
        </div>

        <div class="box">
            <h3>quick links</h3>
            <a href="#"><i class="fas fa-phone"></i>+123-456-7890</a>
            <a href="#"><i class="fas fa-phone"></i>+222-555-1234</a>
            <a href="#"><i class="fas fa-envelope"></i>fusioncars@gmail.com</a>
            <a href="#"><i class="fas fa-map-marker-alt"></i>mumbai,india -400104</a>

        </div>
        <div class="box">
            <h3>quick links</h3>
            <a href="#"><i class="fab fa-facebook"></i>facebook</a>
            <a href="#"><i class="fab fa-instagram"></i>instagram</a>
            <a href="#"><i class="fab fa-twitter"></i>twitter</a>
            <a href="#"><i class="fab fa-linkedin"></i>linkedin</a>
            <a href="#"><i class="fab fa-pinterest"></i>pinterest</a>

        </div>
    </div>
    <div class="credit">create by team fusion</div>

</section>




<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

<script>
    var swiper = new Swiper(".featured-slider", {
    slidesPerView: 1,
    spaceBetween: 20,
    loop:true,
    grabCursor:true,
    centeredSlides:true,
    autoplay: {
        delay: 4000,
        disableOnInteraction: false,
      },
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    breakpoints: {
      0: {
        slidesPerView: 1,
        
      },
      768: {
        slidesPerView: 2,
      },
      991: {
        slidesPerView: 3,
        
      },
    },
  });
</script>

<!-- <script src="script.js"></script>     -->
</body>
</html>