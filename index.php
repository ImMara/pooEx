<?php
    namespace  App;
    require ('controller/HomeController.php');

    try{
        if(isset($_GET['action'])){

        }else{
            HomeController::getRecommandation();
            HomeController::getMenu();
            HomeController::getReview();
        }

    }catch (\Exception $e){
        $errorMessage = $e->getMessage();
        require('view/frontend/errorView.php');
    }

