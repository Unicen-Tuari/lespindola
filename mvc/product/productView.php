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
      
    function VentaDeHardware($products, $categories){
        $this->smarty->assign('products',$products);
        $this->smarty->assign('categories',$categories);
        $this->smarty->display('templates/homePage.tpl');
    }

    function viewProducts($products, $categories, $category){
        $this->smarty->assign('title',$category['name']);
        $this->smarty->assign('products',$products);
        $this->smarty->assign('categories',$categories);
        $this->smarty->display('templates/product.tpl');
    }

    function viewSale($products){
        $this->smarty->assign('products',$products);
        $this->smarty->display('templates/sale.tpl');
    }
    
    function editProduct($products, $categories){
        $this->smarty->assign('products',$products);
        $this->smarty->assign('categories',$categories);
        $this->smarty->display('templates/formEditProduct.tpl');
    }
    
}

?>