<?php
require_once ('database.php');
require_once ('libs/Smarty.class.php');

function products($member = null){
  $products = getProduct();
  $smarty = new Smarty();
  $smarty->assign('products',$products);
  $smarty->display('templates/index.tpl');
}

function insertProducts(){
  createProduct($_GET["title"], $_GET["category"], $_GET["description"]); 
  header ("location: home");
}

function deleteProduct($params){
  removeProduct($params[0]); 
  header ("location: ../home");
}

function complete($params){
  markProductAsDone($params[0]);
  header ("location: ../home");
}

function viewCategories($member = null){
  $products = getProduct();
  $smarty = new Smarty();
  $smarty->assign('products',$products);
  $smarty->display('templates/categories.tpl');
}

function VentaDeHardware($member = null){
  $products = getProduct();
  $smarty = new Smarty();
  $smarty->assign('products',$products);
  $smarty->display('templates/homePage.tpl');
}

?>

