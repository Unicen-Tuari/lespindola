<?php

define('BASE_URL','//'.$_SERVER['SERVER_NAME'] . ':' .$_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');

class ConfigApp{
    public static $ACTION = "action";
    public static $PARAMS = "params";
    public static $ACTIONS = [
        'home' => 'productController#products',
        'insert' => 'productController#insertProducts',
        'delete' => 'productController#deleteProduct',
        'done' => 'productController#complete',
        'categories' => 'productController#viewCategories',
        'homePage' => 'productController#VentaDeHardware',
        'sale' => 'productController#viewSale',
        'index' => 'productController#VentaDeHardware',
        'category' => 'productController#viewProducts',
        'insertCategory' => 'productController#insertCategory',
        'deleteCategory' => 'productController#deleteCategory'
    ];
}
?>