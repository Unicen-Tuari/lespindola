<?php
require_once "ConfigApp.php";
require_once "about.php";
require_once "pi.php";
require_once "operandos.php";

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
    $methodName = ConfigApp::$ACTIONS[$actionName];

    if(isset($params) && $params != null){
       echo $methodName($params);
    }else{
        echo $methodName();
    }
}else{
    echo about();
}

?>