<?php

class categoryModel{

    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;dbname=hardwareSales;charset=utf8', 'root', '');
     }

     function getCategories(){
        $sentence = $this->db->prepare("select * from category");
        $sentence->execute();
        return $sentence->fetchAll();
    }
    
    function getCategory($id_category){
        $sentence = $this->db->prepare("select * from category where id_category=?");
        $sentence->execute([$id_category]);
        return $sentence->fetch();
    }
    
    
    function getProductByCategory($id_category){
        $sentence = $this->db->prepare("select * from product where fk_category=?");
        $sentence->execute([$id_category]);
        return $sentence->fetchAll();
    }
    
    function createCategory($id_category, $name){
        $sentence = $this->db->prepare("INSERT INTO category(id_category, name) VALUES(?, ?)"); 
        $sentence->execute(array($id_category, $name));
    }
    
    function removeCategory ($id_product){
        $sentence = $this->db->prepare("DELETE FROM category WHERE id_category=?"); 
        $sentence->execute(array($id_product));
    }

}

?>