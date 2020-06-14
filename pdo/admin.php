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

function viewCPU($member = null){
  $products = getProduct();
  $smarty = new Smarty();
  $smarty->assign('products',$products);
  $smarty->display('templates/cpu.tpl');
}

function viewGPU($member = null){
  $products = getProduct();
  $smarty = new Smarty();
  $smarty->assign('products',$products);
  $smarty->display('templates/gpu.tpl');
}

function viewCabinets($member = null){
  $products = getProduct();
  $smarty = new Smarty();
  $smarty->assign('products',$products);
  $smarty->display('templates/cabinets.tpl');
}

function viewDiscs($member = null){
  $products = getProduct();
  $smarty = new Smarty();
  $smarty->assign('products',$products);
  $smarty->display('templates/discs.tpl');
}

function viewSources($member = null){
  $products = getProduct();
  $smarty = new Smarty();
  $smarty->assign('products',$products);
  $smarty->display('templates/sources.tpl');
}

function viewMemories($member = null){
  $products = getProduct();
  $smarty = new Smarty();
  $smarty->assign('products',$products);
  $smarty->display('templates/memories.tpl');
}

function viewMother($member = null){
  $products = getProduct();
  $smarty = new Smarty();
  $smarty->assign('products',$products);
  $smarty->display('templates/mother.tpl');
}

function viewSale($member = null){
  $products = getProduct();
  $smarty = new Smarty();
  $smarty->assign('products',$products);
  $smarty->display('templates/sale.tpl');
}


?>

