<?php

function getProduct(){
    $db = new PDO('mysql:host=localhost;dbname=hardwareSales;charset=utf8', 'root', '');
    $sentence = $db->prepare("select * from product");
    $sentence->execute();
    return $sentence->fetchAll();
}

function createProduct($title, $description){
    $db = new PDO('mysql:host=localhost;dbname=hardwareSales;charset=utf8', 'root', '');
    $sentence = $db->prepare("INSERT INTO product(title, description) VALUES(?, ?)"); 
    $sentence->execute(array($title, $description));
}

function removeProduct ($id_product){
    $db = new PDO('mysql:host=localhost;dbname=hardwareSales;charset=utf8', 'root', '');
    $sentence = $db->prepare("DELETE FROM product WHERE id_product=?"); 
    $sentence->execute(array($id_product));
}

function markProductAsDone ($id_product){
    $db = new PDO('mysql:host=localhost;dbname=hardwareSales;charset=utf8', 'root', '');
    $sentence = $db->prepare("UPDATE product SET done=1 WHERE id_product=?"); 
    $sentence->execute(array($id_product));
}

?>