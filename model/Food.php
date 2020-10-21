<?php


namespace App;


class Food
{
    use HTML\BootstrapCards;

    public function getURL(){
        return 'index.php?action=food&id='.$this->id_food;
    }

    public function getExtrait(){
        $texte = strip_tags($this->content);
        if(preg_match('#(\w+\W+){20}\w+#s',$texte,$out)){
            $html = "<div>".$out[0]."...<a href='".$this->getURL()."'>voir la suite</a></div>";
        }else{
            $html = "<div>".$texte."</div>";
        }
        return $html;
    }
}