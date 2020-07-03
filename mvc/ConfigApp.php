<?php

define('BASE_URL','//'.$_SERVER['SERVER_NAME'] . ':' .$_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');

class ConfigApp{
    public static $ACTION = "action";
    public static $PARAMS = "params";
    public static $ACTIONS = [
        '' => 'product/productController#products',
        'home' => 'product/productController#products',
        'insert' => 'product/productController#insertProducts',
        'delete' => 'product/productController#deleteProduct',
        'done' => 'product/productController#complete',
        'categories' => 'category/categoryController#viewCategories',
        'homePage' => 'product/productController#VentaDeHardware',
        'sale' => 'product/productController#viewSale',
        'index' => 'product/productController#VentaDeHardware',
        'category' => 'product/productController#viewProducts',
        'insertCategory' => 'category/categoryController#insertCategory',
        'deleteCategory' => 'category/categoryController#deleteCategory',
        'login' => 'user/userController#login',
        'sing_in' => 'user/userController#sing_in',
        'registry' => 'user/userController#registry',
        'enter' => 'user/userController#enter',
        'logout' => 'user/userController#logout'
    ];
}
?>