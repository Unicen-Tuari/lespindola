<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Venta de Hardware</title>
    <link rel="shortcut icon" type="image/x-icon" href="../images/icon.jpg">
    <link rel="stylesheet" href="../styles/mainStyle.css">
</head>
<body>
    <div>
        <h1 class="titulo">Venta de Hardware</h1>
    </div>

    <div>
        <p class="informacion">
            En la siguiente pagina encontraras distintos productos de hardware, motherboard, CPU, almacenamiento,
            memorias RAM, fuentes de poder, y gabinetes. Todo las ventas son por separado, para que puedas armar
            tu propia PC a tu gusto. Trabajamos con distintas marcas, para que no tengan solamente una opcion que 
            no sea de su preferencia.
        </p>
    </div>

    <div class="contenedor_random">
        <p>
            Si no sabe por que producto empezar a ver, nosotros tenemos una ayuda para ese problema. Aqui abajo
            encontraras una opcion para hacer una eleccion aleatoria. 
        </p>
        <button id="generar">Pulsame</button>
        <div class="aleatorio">Tu producto aleatorio es: <span id="random"></span></div>
    </div>

     <div class="nav">
        <nav>
            {foreach from=$categories item=category}
            <li><a href="category/{$category['id_category']}">{$category['name']}</a></li>
            {/foreach}
        </nav>
    </div>

    <hr>

    <div class="subtitulo">
        <h2>Algunos de nuestros productos</h2>
    </div>
    
    <div class="producto"><a href="mother.html#homepage">
        <h3>Mother Gigabyte B450M-S2H AM4 M.2 Gen3 x4</h3>
        <img src="../images/mothers/Gigabyte B450M.jpg" alt="Foto de Mother B450M-S2H"></a>
    </div>

    <div class="producto"><a href="cpu.html#homepage">
        <h3>Procesador AMD RYZEN 5 3600 4.2GHz AM4</h3>
        <img src="../images/CPU/AMD RYZEN 5 3600X 4.4GHz.jpg" alt="Foto de CPU Ryzen 5"></a>
    </div>

    <div class="producto"><a href="memories.html#homepage">
        <h3>Memoria DDR4 16GB 2666MHz T-Force</h3>
        <img src="../images/rams/DDR4 16GB 2666MHz.jpg" alt="Foto de DDR4 16GB"></a>
    </div>

    <div class="producto"><a href="gpu.html#homepage">
        <h3>Placa de Video Asrock RX 570 4GB</h3>
        <img src="../images/GPU/Asrock RX 570.jpg" alt="Foto de Asrock RX 570"></a>
    </div>

    <div class="contactos">
        <h4>Para consultas, no dudes en comunicarte</h4>
        <a href="https://www.facebook.com/LucaasEspindola"><img src="../images/contact/facebook.jpg"></a>
        <a href="https://www.instagram.com/lucas.espindola01/?hl=es-la"><img src="../images/contact/instagram.png"></a>
        <a href="https://twitter.com/EspindolaLucas1"><img src="../images/contact/twitter.png"></a>
    </div>
    <script src="../javascript/random.js"></script>
</body>
</html>