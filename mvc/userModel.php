<?php

class userModel{
  
    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;dbname=hardwareSales;charset=utf8', 'root', '');
    }

    function createUser($email, $password){
        $sentencia = $this->db->prepare( "INSERT INTO user (email, password) VALUES (?,?)");
        $sentencia->execute(array($email, password_hash($password, PASSWORD_DEFAULT)));
    }

    function getUser($email){
        $sentencia = $this->db->prepare("SELECT * FROM user WHERE email = ?");
        $sentencia->execute(array($email));
        return $sentencia->fetch();
    }
}

 ?>