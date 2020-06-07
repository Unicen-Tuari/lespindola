<?php

class ConfigApp{
    public static $ACTION = "action";
    public static $PARAMS = "params";
    public static $ACTIONS = [
        'home' => 'products',
        'insertProducts' => 'insertProducts',
        'deleteProduct' => 'deleteProduct',
        'done' => 'complete',
        'show' => 'showProduct'
    ];
}
?>