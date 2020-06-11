<?php

class productModel{

    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;dbname=hardwareSales;charset=utf8', 'root', '');
    }

    function getProducts(){
        $sentence = $this->db->prepare("select * from product");
        $sentence->execute();
        return $sentence->fetchAll();
    }
    
    function createProduct($title, $description){
        $sentence = $this->db->prepare("INSERT INTO product(title, description) VALUES(?, ?)"); 
        $sentence->execute(array($title, $description));
    }
    
    function removeProduct ($id_product){
        $sentence = $this->db->prepare("DELETE FROM product WHERE id_product=?"); 
        $sentence->execute(array($id_product));
    }
    
    function markProductAsDone ($id_product){
        $sentence = $this->db->prepare("UPDATE product SET done=1 WHERE id_product=?"); 
        $sentence->execute(array($id_product));
    }

    function getProduct(){
        $sentence = $this->db->prepare("UPDATE product SET done=1 WHERE id_product=?"); 
        $sentence->execute(array($id_product));
        return $sentence->fetch();
    }
}

?>