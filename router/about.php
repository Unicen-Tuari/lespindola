<?php

function about($member = null){
    $html = '
    <!DOCTYPE html>
        <html lang="en">
        <head>
            <base href="http://'. $_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']). '/" target="_blank">   
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>About</title>
        </head>
        <body>';

        if(isset($member)){
            $html .= '<h1>About ' . $member[0] .  '</h1>
            <img src="images/juan.jpg" alt="">';

        }else{
            $html .= '<h1>About Equipo</h1>
            <img src="images/equipo.jpg" alt="">';
        }
    
    $html .= '</body>
        </html>';

    return $html;
}


?>