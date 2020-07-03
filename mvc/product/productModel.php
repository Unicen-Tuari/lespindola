<?php

class productModel{

    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;dbname=hardwareSales;charset=utf8', 'root', '');
     }

    function getProduct(){
        $sentence = $this->db->prepare("select * from product"); //select * from product //select c.name, p.* from product p join category c on p.fk_category = c.id_category
        $sentence->execute();
        return $sentence->fetchAll();
    }
    
    function createProduct($title, $category, $description){
        $sentence = $this->db->prepare("INSERT INTO product(title, fk_category, description) VALUES(?, ?, ?)"); 
        $sentence->execute(array($title, $category, $description));
    }
    
    function removeProduct ($id_product){
        $sentence = $this->db->prepare("DELETE FROM product WHERE id_product=?"); 
        $sentence->execute(array($id_product));
    }
    
    function markProductAsDone ($id_product){
        $sentence = $this->db->prepare("UPDATE product SET done=1 WHERE id_product=?"); 
        $sentence->execute(array($id_product));
    }

}

?>