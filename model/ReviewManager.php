<?php


namespace App;
use PDO;

class ReviewManager extends Manager
{
    public function getReview()
    {
        $req = $this->dbConnect()->query('SELECT * FROM reviews ORDER BY submit_date ASC LIMIT 0,3');
        $datas = $req->fetchAll(PDO::FETCH_CLASS,'App\Reviews');
        $req->closeCursor();
        return $datas;
    }
}