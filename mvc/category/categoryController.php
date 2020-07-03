<?php

require_once "categoryView.php";
require_once "categoryModel.php";
require_once "product/productModel.php";

class categoryController{

    private $view;
    private $model;
    private $product_model;

    function __construct(){
        $this->view = new categoryView();
        $this->model = new categoryModel();
        $this->product_model = new productModel();
    }

    function viewCategories($member = null){
        $products = $this->product_model->getProduct();
        $categories = $this->model->getCategories();
        $this->view->viewCategories($products, $categories);
    }

    function insertCategory(){
        $this->model->createCategory($_GET["id_category"], $_GET["name"]); 
        header ("location: categories");
    }

    function deleteCategory($params){
        $this->model->removeCategory($params[0]);
        header ("location: ../categories");
    }
      
}


?>