<?php

function getProduct(){
    $db = new PDO('mysql:host=localhost;dbname=hardwareSales;charset=utf8', 'root', '');
    $sentence = $db->prepare("select * from product");
    $sentence->execute();
    return $sentence->fetchAll();
}

function getCategories(){
    $db = new PDO('mysql:host=localhost;dbname=hardwareSales;charset=utf8', 'root', '');
    $sentence = $db->prepare("select * from category");
    $sentence->execute();
    return $sentence->fetchAll();
}

function getCategory($id_category){
    $db = new PDO('mysql:host=localhost;dbname=hardwareSales;charset=utf8', 'root', '');
    $sentence = $db->prepare("select * from category where id_category=?");
    $sentence->execute([$id_category]);
    return $sentence->fetch();
}


function getProductByCategory($id_category){
    $db = new PDO('mysql:host=localhost;dbname=hardwareSales;charset=utf8', 'root', '');
    $sentence = $db->prepare("select * from product where fk_category=?");
    $sentence->execute([$id_category]);
    return $sentence->fetchAll();
}


function createProduct($title, $category, $description){
    $db = new PDO('mysql:host=localhost;dbname=hardwareSales;charset=utf8', 'root', '');
    $sentence = $db->prepare("INSERT INTO product(title, fk_category, description) VALUES(?, ?, ?)"); 
    $sentence->execute(array($title, $category, $description));
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