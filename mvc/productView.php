<?php

require_once('libs/Smarty.class.php');

class productView {

    private $smarty;

    function __construct(){
        $this->smarty = new Smarty;
    }

    function products($products, $categories){
        $this->smarty->assign('products',$products);
        $this->smarty->assign('categories',$categories);
        $this->smarty->display('templates/index.tpl');
    }
      

}

?>