<?php


namespace App;

class Reviews
{
    /**
     * Review system ( Font awesome required )
     * @return string
     */
    public function getStar()
    {
        $rating='';
        $empty='';
        $rates = $this->rating;
        $emptyStar= '<span><i class="far fa-star"></i></span>';
        $star = '<span><i class="fas fa-star"></i></span>';

        for($i=0;$i<5;$i++){
            if($i<$rates){
                $rating .= $star;
            }else{
                $empty .= $emptyStar;
            }
        }
        return '<div class="rating">'.$rating.$empty.'</div>';
    }
}