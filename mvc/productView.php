<?php

require_once('libs/Smarty.class.php');

class productView{

    private $smarty;

    function __construct(){
        $this->smarty = new Smarty;
    }

    function showProduct($product){
        $this->smarty->assign('product', $product);
        $this->smarty->display('templates/product.tpl');
    }

    function products($products){
        $this->smarty->assign('products', $products);
        $this->smarty->display('templates/index.tpl');
    }
}

?>