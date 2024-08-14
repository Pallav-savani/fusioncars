<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car selling</title>
    <link rel="shortcut icon" href="media/favicon.svg" type="image/x-icon">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet"/>

    <!--font  awsom cdn link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>z
    <header class="header">
        <div id="menu-btn" class="fas fa-bars"></div>
        <a href="#" class="logo"><span>Fusion</span>cars</a>
        <nav class="navbar">
            <a href="#">HOME</a>
            <a href="vehicles.php">VEHICLES</a>
            <a href="#services">SERVICES</a>
            <a href="#featured">FEATURED</a>
            <a href="#reviews">REVIEW</a>
            <a href="#contact">CONTACT</a>
            <a href="show-booking.php">SHOW BOOKING</a>
            <a href="profile/profile.php"><i class="ri-user-3-fill"></i></a>
        </nav>
        <div id="login-btn">
            <a href="login.html">
                <button class="btn">Login</button>
            </a>
        </div> 
    </header>

    <div class="login-form-cotainer">
        <a href="index.php">
            <span class="fas fa-times" id="close-login-form"></span>    
        </a>
        <form action="login.php" method="post">
            <h3>User login</h3>
            <input type="email" name="email" placeholder="email" class="box">
            <input type="password" name="password" placeholder="password" class="box">
            <p>Forget your password <a href="#">Click here</a></p>
            <input type="submit" name="login" value="login now" class="btn">
            <p>or login with</p>
            <div class="button">
                <a href="https://www.google.com/" class="btn">google</a>
                <a href="#"class="btn">facebook</a>
            </div>
            <p>don't have an account <a href="#">create one </a></p>
        </form>
    </div> 

    <section class="home">
        <h1 class="home-parallax" data-speed="-2">find your car</h1>
        <img class="home-parallax" data-speed="5" src="media/allcars.png" alt="">
        <a href="vehicles.php" class="btn home-parallax" data-speed="7">explore cars</a>
    </section>

    <section class="icons-container">
        <div class="icons">
            <i class="fas fa-home"></i>
            <div class="content">
                <h3>150+</h3>
                <p>branches</p>
            </div>
        </div>

        <div class="icons">
            <i class="fas fa-car"></i>
            <div class="content">
                <h3>4770+</h3>
                <p>cars sold</p>
            </div>
        </div>

        <div class="icons">
            <i class="fas fa-user"></i>
            <div class="content">
                <h3>590+</h3>
                <p>happy customer</p>
            </div>
        </div>

        <div class="icons">
            <i class="fas fa-car"></i>
            <div class="content">
                <h3>890+</h3>
                <p>new cars</p>
            </div>
        </div>
    </section>

    
    <section class="vehicles" id="featured">
        <h1 class="heading">popular <span>vehicles</span></h1>
        <div class="swiper vehicles-slider">
            <div class="swiper-wrapper">
                <div class="swiper-slide box">
                    <img src="media/mustang.png" alt="">
                    <div class="content">
                        <h3>Ford Mustang</h3>
                        <div class="price"> <span>price: </span> ₹74.61 lakh</div>
                        <p>
                            <span class="fas fa-circle"></span>2021
                            <span class="fas fa-circle"></span>automatic
                            <span class="fas fa-circle"></span>petrol
                            <span class="fas fa-circle"></span>183mph
                            
                        </p>
                        <a href="" class="btn">View Details</a>
                    </div>
                </div>
    
                <div class="swiper-slide box">
                    <img src="media/toyota-landcruser.png" alt="">
                    <div class="content">
                        <h3>Toyota Landcruser</h3>
                        <div class="price"> <span>price: </span> ₹2.10 crore</div>
                        <p>
                            <span class="fas fa-circle"></span>2023
                            <span class="fas fa-circle"></span>automatic
                            <span class="fas fa-circle"></span>Diesel
                            <span class="fas fa-circle"></span>190 Kmph
                            
                        </p>
                        <a href="toyota/toyota-landcruser.php" class="btn">View Details</a>
                    </div>
                </div>
    
                <div class="swiper-slide box">
                    <img src="media/chevrolet-camaro.png" alt="">
                    <div class="content">
                        <h3>Chevrolet Camaro</h3>
                        <div class="price"> <span>price: </span> ₹50.00 lakh</div>
                        <p>
                            <span class="fas fa-circle"></span>2024
                            <span class="fas fa-circle"></span>Manual
                            <span class="fas fa-circle"></span>Petrol
                            <span class="fas fa-circle"></span>180 Kmph
                            
                        </p>
                        <a href="chevrolet/chevrolet-camaro.php" class="btn">View Details</a>
                    </div>
                </div>
    
                <div class="swiper-slide box">
                    <img src="media/bmw-xm.png" alt="">
                    <div class="content">
                        <h3>BMW XM</h3>
                        <div class="price"> <span>price: </span> ₹3.00 crore</div>
                        <p>
                            <span class="fas fa-circle"></span>2023
                            <span class="fas fa-circle"></span>automatic
                            <span class="fas fa-circle"></span>Hybrid
                            <span class="fas fa-circle"></span>249 Kmph
                            
                        </p>
                        <a href="bmw/bmw-xm.php" class="btn">View Details</a>
                    </div>
                </div>
    
                <div class="swiper-slide box">
                    <img src="media/nissan-GTR-r35.png" alt="">
                    <div class="content">
                        <h3>Nissan Skyline GTR R35</h3>
                        <div class="price"> <span>price: </span> ₹2.12 crore</div>
                        <p>
                            <span class="fas fa-circle"></span>2021
                            <span class="fas fa-circle"></span>automatic
                            <span class="fas fa-circle"></span>petrol
                            <span class="fas fa-circle"></span>300 Kmph
                            
                        </p>
                        <a href="nissan/nissan-GTR-r35.php" class="btn">View Details</a>
                    </div>
                </div>
    
                <div class="swiper-slide box">
                    <img src="media/mercedes-maybatch-GLS-600.png" alt="">
                    <div class="content">
                        <h3>Mercedes Mybach GLS 600</h3>
                        <div class="price"> <span>price: </span> ₹3.35 crore</div>
                        <p>
                            new
                            <span class="fas fa-circle"></span>2021
                            <span class="fas fa-circle"></span>automatic
                            <span class="fas fa-circle"></span>petrol
                            <span class="fas fa-circle"></span>300 Kmph
                            
                        </p>
                        <a href="mercedes/mercedes-maybatch-GLS-600.php" class="btn">View Details</a>
                    </div>
                </div>
    
                <div class="swiper-slide box">
                    <img src="media/volvo-s90.png" alt="">
                    <div class="content">
                        <h3>Volvo s90</h3>
                        <div class="price"> <span>price: </span> ₹68.25 lakh</div>
                        <p>
                            <span class="fas fa-circle"></span>2023
                            <span class="fas fa-circle"></span>automatic
                            <span class="fas fa-circle"></span>Hybrid
                            <span class="fas fa-circle"></span>180 Kmph
                            
                        </p>
                        <a href="volvo/volvo-s90.php" class="btn">View Details</a>
                    </div>
                </div>
                
                <div class="swiper-slide box">
                    <img src="media/aston-martin-vantage.png" alt="">
                    <div class="content">
                        <h3>Aston Martin Vantage</h3>
                        <div class="price"> <span>price: </span> ₹3.99 crore</div>
                        <p>
                            <span class="fas fa-circle"></span>2021
                            <span class="fas fa-circle"></span>automatic
                            <span class="fas fa-circle"></span>petrol
                            <span class="fas fa-circle"></span>325 Kmph
                            
                        </p>
                        <a href="astonmartin/aston-martin-vantage.php" class="btn">View Details</a>
                    </div>
                </div>
    
            </div>
            <div class="swiper-pagination"></div>
        </div>
    </section>

   

<section class="services" id="services">
    <h1 class="heading">our <span>services</span></h1>
    <div class="box-container">
    <div class="box">
        <i class="fas fa-car"></i>
        <h3>car selling</h3>
        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.</p>
        <a href="#" class="btn">read more</a>
    </div>

    <div class="box">
        <i class="fas fa-tools"></i>
        <h3>parts repair</h3>
        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.</p>
        <a href="#" class="btn">read more</a>
    </div>

    <div class="box">
        <i class="fas fa-car-crash"></i>
        <h3>car insurance</h3>
        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.</p>
        <a href="#" class="btn">read more</a>
    </div>

    <div class="box">
        <i class="fas fa-car-battery"></i>
        <h3>battery replacement</h3>
        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.</p>
        <a href="#" class="btn">read more</a>
    </div>

    <div class="box">
        <i class="fas fa-gas-pump"></i>
        <h3>oil chnaging</h3>
        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.</p>
        <a href="#" class="btn">read more</a>
    </div>

    <div class="box">
        <i class="fas fa-headset"></i>
        <h3>24/7</h3>
        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.</p>
        <a href="#" class="btn">read more</a>
    </div>


    </div>
</section>


<section class="newsletter">
    <h3>subscribe for latest updates</h3>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero, vero perspiciatis repellat quam, suscipit magnam error </p>
    <form action="">
        <input type="email" placeholder="enter your email" name=""  id="">
        <input type="submit" class="subscribe" name="" id="">
    </form>
</section>


<section class="reviews" id="reviews">
    <h1 class="heading"> client's <span>reviews</span></h1>
    <div class="swiper reviews-slider">
        <div class="swiper-wrapper">
            <div class="swiper-slide box">
                <img src="media/spider.jpeg" alt="">
                <div class="content">
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sint deserunt nihil saepe sapiente consectetur? Dolorum omnis culpa reprehenderit doloribus sunt ullam sapiente eos nisi expedita deserunt provident, ratione nam quo.</p>
                    <h3>pallav savani</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="media/user-logo.jpeg" alt="">
                <div class="content">
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sint deserunt nihil saepe sapiente consectetur? Dolorum omnis culpa reprehenderit doloribus sunt ullam sapiente eos nisi expedita deserunt provident, ratione nam quo.</p>
                    <h3>pallav savani</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="media/user3.jpeg" alt="">
                <div class="content">
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sint deserunt nihil saepe sapiente consectetur? Dolorum omnis culpa reprehenderit doloribus sunt ullam sapiente eos nisi expedita deserunt provident, ratione nam quo.</p>
                    <h3>pallav savani</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="media/user4.jpeg" alt="">
                <div class="content">
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sint deserunt nihil saepe sapiente consectetur? Dolorum omnis culpa reprehenderit doloribus sunt ullam sapiente eos nisi expedita deserunt provident, ratione nam quo.</p>
                    <h3>pallav savani</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="media/user1.jpeg" alt="">
                <div class="content">
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sint deserunt nihil saepe sapiente consectetur? Dolorum omnis culpa reprehenderit doloribus sunt ullam sapiente eos nisi expedita deserunt provident, ratione nam quo.</p>
                    <h3>pallav savani</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="media/user2.jpeg" alt="">
                <div class="content">
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sint deserunt nihil saepe sapiente consectetur? Dolorum omnis culpa reprehenderit doloribus sunt ullam sapiente eos nisi expedita deserunt provident, ratione nam quo.</p>
                    <h3>pallav savani</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </div>

        </div>
        <div class="swiper-pagination"></div>
    </div>
</section>


<section class="contact" id="contact">
    <h1 class="heading"> <span>contact</span> us</h1>
    <div class="row">
        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3362.311738710183!2d70.45791202952083!3d21.515129293498635!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e1!3m2!1sen!2sin!4v1721476934646!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        <form action="con_contact.php" method="post">
            <h3>get in touch</h3>
            <input type="text" name="con_name" placeholder="Name" class="box">
            <input type="email" name="con_email" placeholder="E-mail" class="box">
            <input type="number" name="con_num" placeholder="Mobile number" class="box">
            <input placeholder="Enter message" name="con_msg" class="box" cols="30" rows="10"></input>
            <button type="submit" name="send" class="btn">Send Message</button>
        </form>
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
            <a href="https://www.instagram.com/mr._savani_022/"><i class="fab fa-instagram"></i>instagram</a>
            <a href="#"><i class="fab fa-twitter"></i>twitter</a>
            <a href="#"><i class="fab fa-linkedin"></i>linkedin</a>
            <a href="#"><i class="fab fa-pinterest"></i>pinterest</a>

        </div>
    </div>
    <div class="credit">create by team fusion</div>

</section>





<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script src="script.js"></script>
</body>
</html>


