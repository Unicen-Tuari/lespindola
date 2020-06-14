<?php

class ConfigApp{
    public static $ACTION = "action";
    public static $PARAMS = "params";
    public static $ACTIONS = [
        'home' => 'products',
        'insert' => 'insertProducts',
        'delete' => 'deleteProduct',
        'done' => 'complete',
        'categories' => 'viewCategories',
        'homePage' => 'VentaDeHardware'
    ];
}
?>