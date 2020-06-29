<?php
require_once "userView.php";
require_once "userModel.php";

class userController{

    private $model;
    private $view;

    function __construct(){
        $this->model = new userModel();
        $this->view = new userView();
    }

    function login(){
        return $this->view->login();
    }

    function registrarse(){
        return $this->view->registrarse();
    }
    
    function registro(){

        if($_POST['email'] == ""){
            return;
        }

        if($_POST['password'] == ""){
            return;
        }

        $this->model->createUser($_POST['email'], $_POST['password']);
        header ("Location: login");
    }

    function ingresar(){
        $email = $_POST["email"];
        $password = $_POST["password"];
        $user = $this->model->getUser($email);
        $hash = $user["password"];
        if (password_verify($password, $hash)){
            session_start();
            $_SESSION["nombre"] = $user["email"];
            header("Location: home");
        }else{
             header("Location: login");
        }
    }

    function logout(){
        session_start();
        session_destroy();
        header("location: login");
    }
}


?>
