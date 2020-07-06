<?php

require_once "productView.php";
require_once "productModel.php";
require_once "category/categoryModel.php";

class productController{

    private $view;
    private $model;
    private $category_model;

    function __construct(){
        $this->view = new productView();
        $this->model = new productModel();
        $this->category_model = new categoryModel();
        session_start();
        if(!isset($_SESSION["nombre"])){ 
                header("Location: login");
                die();
              }else{ 
                if (isset($_SESSION['LAST_ACTIVITY']) && (time() - $_SESSION['LAST_ACTIVITY'] > 1000)) { 
                  header("Location: logout");
                  die();
                } 
                $_SESSION['LAST_ACTIVITY'] = time();
              }
    }
    
      function products($member = null){
        $products = $this->model->getProduct();
        $categories = $this->category_model->getCategories();
        $this->view->products($products, $categories);
      }

      function VentaDeHardware($member = null){
        $products = $this->model->getProduct();
        $categories = $this->category_model->getCategories();
        $this->view->VentaDeHardware($products, $categories);
      }
      
      function viewProducts($params){
        $products = $this->category_model->getProductByCategory($params[0]);
        $category =$this->category_model-> getCategory($params[0]);
        $categories = $this->category_model->getCategories();
        $this->view->viewProducts($products, $categories, $category);
      }
      
      function viewSale($member = null){
        $products = $this->model->getProduct();
        $this->view->viewSale($products);
      }

      function insertProducts(){
        $this->model->createProduct($_GET["title"], $_GET["category"], $_GET["description"]); 
        header ("location: home");
      }

      function editProducts($params){
        $products = $this->model->fn_editProduct($params[0]);
        $categories = $this->category_model->getCategories();
        $this->view->editProduct($products, $categories);
      }

      function editProduct(){
        $this->model->updateEdit($_GET["title"], $_GET["category"], $_GET["description"], $_GET["id_product"]);
        header ("location: home");
      }
      
      function deleteProduct($params){
        $this->model->removeProduct($params[0]); 
        header ("location: ../home");
      }
      
      function complete($params){
        $this->model->markProductAsDone($params[0]);
        header ("location: ../home");
      }
      

}

?>