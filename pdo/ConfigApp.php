<?php

define('BASE_URL','//'.$_SERVER['SERVER_NAME'] . ':' .$_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');

class ConfigApp{
    public static $ACTION = "action";
    public static $PARAMS = "params";
    public static $ACTIONS = [
        'home' => 'products',
        'insert' => 'insertProducts',
        'delete' => 'deleteProduct',
        'done' => 'complete',
        'categories' => 'viewCategories',
        'homePage' => 'VentaDeHardware',
        'sale' => 'viewSale',
        'index' => 'VentaDeHardware',
        'category' => 'viewProducts'
    ];
}
?>