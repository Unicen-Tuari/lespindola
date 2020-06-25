<?php
require_once ('database.php');
require_once ('libs/Smarty.class.php');


function products($member = null){
  $products = getProduct();
  $categories = getCategories();
  $smarty = new Smarty();
  $smarty->assign('products',$products);
  $smarty->assign('categories',$categories);
  $smarty->display('templates/index.tpl');
}

function insertProducts(){
  createProduct($_GET["title"], $_GET["category"], $_GET["description"]); 
  header ("location: home");
}

function insertCategory(){
  createCategory($_GET["id_category"], $_GET["name"]); 
  header ("location: categories");
}

function deleteProduct($params){
  removeProduct($params[0]); 
  header ("location: ../home");
}

function deleteCategory($params){
  removeCategory($params[0]);
  header ("location: ../categories");
}

function complete($params){
  markProductAsDone($params[0]);
  header ("location: ../home");
}

function viewCategories($member = null){
  $products = getProduct();
  $categories = getCategories();
  $smarty = new Smarty();
  $smarty->assign('products',$products);
  $smarty->assign('categories',$categories);
  $smarty->display('templates/categories.tpl');
}

function VentaDeHardware($member = null){
  $products = getProduct();
  $categories = getCategories();
  $smarty = new Smarty();
  $smarty->assign('products',$products);
  $smarty->assign('categories',$categories);
  $smarty->display('templates/homePage.tpl');
}

function viewProducts($params){
  $products = getProductByCategory($params[0]);
  $category = getCategory($params[0]);
  $categories = getCategories();
  $smarty = new Smarty();
  $smarty->assign('title',$category['name']);
  $smarty->assign('products',$products);
  $smarty->assign('categories',$categories);
  $smarty->display('templates/product.tpl');
}

function viewSale($member = null){
  $products = getProduct();
  $smarty = new Smarty();
  $smarty->assign('products',$products);
  $smarty->display('templates/sale.tpl');
}


?>