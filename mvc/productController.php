<?php

require_once "productView.php";
require_once "productModel.php";

class productController{

    private $view;
    private $model;

    function __construct(){
        $this->view = new productView();
        $this->model = new productModel();
    }

    function products($member = null){
        $products = $this->model->getProduct();
        $categories = $this->model->getCategories();
        $this->view->products($products, $categories);
      }

}

?>