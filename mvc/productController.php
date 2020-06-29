<?php

require_once "productView.php";
require_once "productModel.php";

class productController{

    private $view;
    private $model;

    function __construct(){
        $this->view = new productView();
        $this->model = new productModel();
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
        $categories = $this->model->getCategories();
        $this->view->products($products, $categories);
      }

      function viewCategories($member = null){
        $products = $this->model->getProduct();
        $categories = $this->model->getCategories();
        $this->view->viewCategories($products, $categories);
      }

      function VentaDeHardware($member = null){
        $products = $this->model->getProduct();
        $categories = $this->model->getCategories();
        $this->view->VentaDeHardware($products, $categories);
      }
      
      function viewProducts($params){
        $products = $this->model->getProductByCategory($params[0]);
        $category =$this->model-> getCategory($params[0]);
        $categories = $this->model->getCategories();
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
      
      function insertCategory(){
        $this->model->createCategory($_GET["id_category"], $_GET["name"]); 
        header ("location: categories");
      }
      
      function deleteProduct($params){
        $this->model->removeProduct($params[0]); 
        header ("location: ../home");
      }
      
      function deleteCategory($params){
        $this->model->removeCategory($params[0]);
        header ("location: ../categories");
      }
      
      function complete($params){
        $this->model->markProductAsDone($params[0]);
        header ("location: ../home");
      }
      

}

?>