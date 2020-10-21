<?php


namespace App;
use PDO;

class MenuManager extends Manager
{
    public function getMenuEntree()
    {
        $req = $this->dbConnect()->query('SELECT * FROM food WHERE cat="entree"');
        $datas = $req->fetchAll(PDO::FETCH_CLASS, 'App\Food');
        $req->closeCursor();
        return $datas;
    }
    public function getMenuRepas()
    {
        $req = $this->dbConnect()->query('SELECT * FROM food WHERE cat="repas"');
        $datas = $req->fetchAll(PDO::FETCH_CLASS,'App\Food');
        $req->closeCursor();
        return $datas;
    }
    public function getMenuDessert()
    {
        $req = $this->dbConnect()->query('SELECT * FROM food WHERE cat="dessert"');
        $datas = $req->fetchAll(PDO::FETCH_CLASS,'App\Food');
        $req->closeCursor();
        return $datas;
    }
}