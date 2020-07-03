<?php
require_once "ConfigApp.php";
require_once "product/productView.php";
require_once "product/productModel.php";
require_once "product/productController.php";
require_once "user/userController.php";
require_once "user/userModel.php";
require_once "user/userView.php";
require_once "category/categoryController.php";
require_once "category/categoryModel.php";
require_once "category/categoryView.php";


function parceURL($url){

    $partesURL = explode("/", $url);

    $arrayReturn[ConfigApp::$ACTION] = $partesURL[0];
    $arrayReturn[ConfigApp::$PARAMS] = isset($partesURL[1]) ? array_slice($partesURL,1) : null;

    return $arrayReturn;
}

//arreglo de 2 posiciones
$urlData = parceURL($_GET[ConfigApp::$ACTION]);

$actionName = $urlData[ConfigApp::$ACTION];

if(array_key_exists($actionName, ConfigApp::$ACTIONS)){
    $params = $urlData[ConfigApp::$PARAMS];
    $controller_metodos = explode ('/', ConfigApp::$ACTIONS[$actionName]);
    $controllerMetodo = explode('#', $controller_metodos[1]);
    $controller = new $controllerMetodo[0];
    $methodName = $controllerMetodo[1];
    
    if(isset($params) && $params != null){
       echo $controller->$methodName($params);
    }else{
        echo $controller->$methodName();
    }
}else{
    echo $controller->products();
}


?>