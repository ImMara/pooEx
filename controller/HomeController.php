<?php
    namespace App;
    require "model/Autoloader.php";
    Autoloader::register();

class HomeController
{
    public static function getRecommandation()
    {
        $recommandation = new RecomandationManager();
        $reco = $recommandation->getRecomandation();
        require ('view/frontend/recommandation.php');
    }

    public static function getMenu()
    {
        $menu = new MenuManager();
        $entree = $menu->getMenuEntree();
        $repas = $menu->getMenuRepas();
        $dessert = $menu->getMenuDessert();
        require ('view/frontend/menu.php');
    }
}