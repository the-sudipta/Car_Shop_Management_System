<?php

// Define routes
$routes = [
    'INDEX' => '/default.php',
    '500_error' => '/500.php',
    'login' => '/view/Login.php',
    'signup_decider' => '/view/Signup_Decider.php',
    'seller_signup' => '/view/seller/Seller_Signup.php',
    'seller_dashboard' => '/view/seller/Seller_Dashboard.php',
    'seller_add_cars' => '/view/seller/Add_Car.php',
    'seller_new_cars' => '/view/seller/New_Car.php',
    'seller_used_cars' => '/view/seller/Used_Car.php',
    'seller_rented_cars' => '/view/seller/Rented_Car.php',
    'seller_all_cars' => '/view/seller/All_Cars.php',
    'seller_car_requests' => '/view/seller/Customer_Requests.php',
    'seller_view_car' => '/view/seller/View_Car.php',
    'seller_edit_car' => '/view/seller/Edit_Car.php',
    'seller_sold_car' => '/view/seller/Sold_Car.php',
    'seller_all_comments' => '/view/seller/All_Comments.php',
];

$backend_routes = [
    'login_controller' => '/controller/LoginController.php',
    'logout_controller' => '/controller/LogoutController.php',
    'seller_signup_controller' => '/controller/seller/Seller_SignupController.php',
    'seller_add_car_controller' => '/controller/seller/Add_CarController.php',
    'seller_new_cars_used_controller' => '/controller/seller/New_CarController/New_Car_UsedController.php',
    'seller_rented_cars_available_controller' => '/controller/seller/Rented_CarController/Rented_Car_AvailableController.php',
    'seller_all_cars_delete_controller' => '/controller/seller/All_CarsController/All_Cars_DeleteController.php',
    'seller_edit_car_controller' => '/controller/seller/All_CarsController/All_Cars_EditController.php',
    'seller_car_request_accept_controller' => '/controller/seller/Customer_RequestsController/Customer_Requests_AcceptController.php',
    'seller_car_request_reject_controller' => '/controller/seller/Customer_RequestsController/Customer_Requests_RejectController.php',
];


$image_routes = [
    'contact' => '/view/static/image/contact.jpg',
    'seller_image' => '/view/static/image/seller.jpg',
    'user_icon' => '/view/static/image/user.png',
];

?>
