<?php

class productModel{

    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;dbname=hardwareSales;charset=utf8', 'root', '');
     }

    function getProduct(){
        $sentence = $this->db->prepare("select p.*, c.name name_category
                                        from product p 
                                        join category c on (p.fk_category = c.id_category)"); 
        $sentence->execute();
        return $sentence->fetchAll(PDO::FETCH_ASSOC);
    }
    
    function createProduct($title, $category, $description){
        $sentence = $this->db->prepare("INSERT INTO product(title, fk_category, description) VALUES(?, ?, ?)"); 
        $sentence->execute(array($title, $category, $description));
    }

    function fn_editProduct($id_product){
        $sentence = $this->db->prepare("select p.*, c.name name_category
                                        from product p 
                                        join category c on (p.fk_category = c.id_category)
                                        where p.id_product = ?");
        $sentence->execute([$id_product]);
        return $sentence->fetch(PDO::FETCH_ASSOC);
    }

    function updateEdit($title, $category, $description, $id_product){
        $sentence = $this->db->prepare("update product set title = ?, fk_category = ?, description = ?
                                        where id_product = ?");
        $sentence->execute(array($title, $category, $description, $id_product));
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