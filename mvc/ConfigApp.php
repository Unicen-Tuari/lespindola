<?php

class ConfigApp{
    public static $ACTION = "action";
    public static $PARAMS = "params";
    public static $ACTIONS = [
        'home' => 'productController#products',
        'insertProducts' => 'productController#insertProducts',
        'deleteProduct' => 'productController#deleteProduct',
        'done' => 'productController#complete'
    ];
}
?>