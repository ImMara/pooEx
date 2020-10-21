<?php

namespace App\HTML;
trait BootstrapCards
{
    /**
     * Boostrap Card html template
     *
     * @param string $image
     * @param string $nom
     * @param string $p
     * @param string $url
     * @return string
     */
    public function bootstrapCards($image,$nom,$p,$url){
        if(preg_match('#(\w+\W+){30}\w+#s',$p,$out)){
            $p = $out[0]."...";
        }
        return '<div class="card ml-5">
                        <img src="view/assets/img/'.$image.'" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">'.$nom.'</h5>
                            <p class="card-text">'.$p.'</p>
                            <a href="'.$url.'" class="btn btn-outline-dark">Plus d\'informations</a>
                        </div>
                    </div>';
    }
}