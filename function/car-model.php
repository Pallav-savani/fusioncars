<?php

function carcomponent($cars_id, $car_name, $car_price, $car_image, $carid){
    $element = "

    <div class=\"featured_item\">
        <form action=\"ford.php\" method=\"post\" class=\"form_container\">

            <div class=\"box\">
                <div class=\"img_box\">
                    <img src=\"$car_image\" alt=\"\">
                </div>
                <h3>$car_name</h3>
                <div class=\"stars\">
                    <i class=\"fas fa-star\"></i>
                    <i class=\"fas fa-star\"></i>
                    <i class=\"fas fa-star\"></i>
                    <i class=\"fas fa-star\"></i>
                    <i class=\"fas fa-star-half-alt\"></i>
                </div>
                <div class=\"price\">₹ $car_price </div>
                <div class=\"view_btn\">
                    <button type=\"submit\" name=\"view_detail\" class=\"detail_btn\"><i class=\"ri-error-warning-fill\"></i> Details</button>
                    <input type='hidden' name='cars_id' value='$cars_id'>

                    <a href=\"../car-booking.php?cars_id=$carid&cars_name=$car_name&cars_price=$car_price\" class=\"book_btn\">Book The Car <i class=\"ri-arrow-right-line\"></i></a>
                </div>
            </div>

        </form>
    </div>
    ";

    echo $element;
}

function cars($car_id, $name, $price, $image, $desc, $mileage, $fule, $engine, $bhp, $transmission, $seating, $bootspace, $airbags, $parksence){
    $element = "
    
    <div class=\"endeavour_container\">
    <form action=\"cars-view.php?action=remove&cars_id=$car_id\" method=\"post\" class=\"form_container\">
        <div class=\"endeavour\">
            <div class=\"endeavour_content\">
                <div class=\"price_tag\">
                    $name [ ₹ $price ]
                </div>
                <div class=\"endeavour_info\">
                    <div class=\"endeavour_imgbox\">
                        <img src=\"$image\" alt=\"\">
                    </div>
                    <div class=\"end_spec\">
                        <div class=\"endeavour_specs\">
                            <div class=\"economy_specs\">
                                <div class=\"economy\">
                                    <h2>Economy</h2>
                                    <h3>Mileage : $mileage</h3>
                                    <h3>Fuel Type : $fule</h3>
                                </div>
                                <div class=\"preformence\">
                                <h2>Preformence</h2>
                                    <h3>Engine : $engine</h3>
                                    <h3>BHP & Nm : $bhp</h3>
                                </div>
                            </div>
                        </div>
                        <div class=\"endeavour_specs\">
                            <div class=\"economy_specs\">
                                <div class=\"economy\">
                                    <h2>Comfort</h2>
                                    <h3>Transmission : $transmission</h3>
                                    <h3>Seating capacity : $seating</h3>
                                    <h3>Bootspace : $bootspace</h3>
                                </div>
                                <div class=\"preformence\">
                                <h2>Safety</h2>
                                    <h3>Air Bag : $airbags</h3>
                                    <h3>ABS : Yes</h3>
                                    <h3>Parking Sensor : $parksence</h3>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>

            <div class=\"highlights_container\">
                <div class=\"highlights_head\">
                    <b>$name</b> highlights 
                </div>
                <div class=\"highlights_desc\">
                    $desc
                </div>

                <div class=\"buyBtn\">
                    <a href=\"car-booking.php?cars_id=$car_id&cars_name=$name&cars_price=$price\" class=\"buy_car\">Book The Car <i class=\"ri-arrow-right-line\"></i></a>
                    <button type=\"submit\" name=\"remove\" class=\"buy_car\">Cancel</button>
                </div>

            </div>

        </div>
        
    </form>
        
    </div>
    
    ";

    echo $element;
}

?>
