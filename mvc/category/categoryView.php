<?php

require_once('libs/Smarty.class.php');

class categoryView {

    private $smarty;

    function __construct(){
        $this->smarty = new Smarty;
    }

    function viewCategories($products, $categories){
        $this->smarty->assign('products',$products);
        $this->smarty->assign('categories',$categories);
        $this->smarty->display('templates/categories.tpl');
    }

}

?>