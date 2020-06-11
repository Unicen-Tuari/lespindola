<?php

require_once 'productView.php';
require_once 'productModel.php';

class productController{

    private $view;
    private $model;

    function __construct(){
        $this->view = new productView();
        $this->Model = new productModel();
    }

    function showProduct($params){
        $product = $this->model->getProduct($params[0]);
        $this->view->showProduct($product);
    }

    function insertProduct(){
        $this->model->createProduct($_GET["title"], $_GET["description"]); 
        header ("Location: ../home");
    }

    function deleteProduct($params){
        $this->model->removeProduct($params[0]); 
        header ("Location: ../home");
    }
      
    function complete($params){
        $this->model->markProductAsDone($params[0]);
        header ("location: ../home");
    }
}

?>