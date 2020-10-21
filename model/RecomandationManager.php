<?php
namespace App;
use \PDO;

class RecomandationManager extends Manager{

    public function getRecomandation()
    {
        $req = $this->dbConnect()->query('SELECT * FROM food LIMIT 0,2');
        $datas = $req->fetchAll(PDO::FETCH_CLASS,'App\Food');
        $req->closeCursor();
        return $datas;
    }

}