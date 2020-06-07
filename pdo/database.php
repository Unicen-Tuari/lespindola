<?php

function getProduct(){
    $db = new PDO('mysql:host=localhost;dbname=hardwareSales;charset=utf8', 'root', '');
    $sentence = $db->prepare("select * from product");
    $sentence->execute();
    return $sentence->fetchAll();
}

function createProduct($id_product, $title, $description){
    $db = new PDO('mysql:host=localhost;dbname=hardwareSales;charset=utf8', 'root', '');
    $sentence = $db->prepare("INSERT INTO product(id_product, title, description) VALUES(?, ?, ?"); 
    $sentence->execute(array($id_product, $title, $description));
}


?>