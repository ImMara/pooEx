<?php
    namespace  App;
    require ('controller/HomeController.php');

    include 'view/frontend/template.php';

    try{
        if(isset($_GET['action'])){

        }else{
            HomeController::getRecommandation();
            HomeController::getMenu();
        }

    }catch (\Exception $e){
        $errorMessage = $e->getMessage();
        require('view/frontend/errorView.php');
    }

