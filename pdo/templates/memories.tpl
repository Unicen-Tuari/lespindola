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
        <h1 class="titulo"><a href="index">Venta de Hardware</a></h1>
    </div>

    <hr>

    <div class="productos">
        <ul>
            <li><a href="cpu">• Procesadores</a></li>
            <li><a href="discs">• Almacenamiento</a></li>
            <li><a href="mother">• Mothers</a></li>
            <li><a href="gpu">• Placas de Video</a></li>
            <li><a href="memories">• Memorias RAM</a></li>
            <li><a href="sources">• Fuentes de Poder</a></li>
            <li><a href="cabinets">• Gabinetes</a></li>
        </ul>
    </div>

    <div class="subtituloProd">
        <h2>Memorias RAM</h2>
    </div>

    <div class="venta">
        <img src="../images/rams/Adata DDR4 8GB 3200MHz.jpg">
            <p>
                Memoria Adata DDR4 8GB 3200MHz XPG Spectrix D60G RGB
            </p>
            <p>
                Precio: $4.810
            </p>
            <table>
                <thead>
                    <tr>
                        <th>Caracteristicas</th>
                        <th>Generales</th>
                    </tr>
                </thead>
                <tr>
                    <td>Capacidad</td>
                    <td>8 GB</td>
                </tr>
                <tr>
                    <td>Velocidad</td>
                    <td>3200 MHz</td>
                </tr>
                <tr>
                    <td>Tipo</td>
                    <td>DDR4</td>
                </tr>
                <tr>
                    <td>Cantidad de memorias</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>Latencia</td>
                    <td>16 CL</td>
                </tr>
                <tr>
                    <td>Voltaje</td>
                    <td>1.35 V</td>
                </tr>
                <tr>
                    <td>Disipador</td>
                    <td>Si</td>
                </tr>
                <tr>
                    <td>Disipador alto</td>
                    <td>Si</td>
                </tr>
        </table>
        <a target="blank" href="sale">COMPRAR</a>
    </div>

    <div class="venta" id="homepage">
        <img src="../images/rams/DDR4 16GB 2666MHz.jpg">
            <p>
                Memoria Team DDR4 16GB 2666MHz T-Force Delta RGB Black <br>
            </p>
            <p>
                Precio: $7.300
            </p>
            <table>
                <thead>
                    <tr>
                        <th>Caracteristicas</th>
                        <th>Generales</th>
                    </tr>
                </thead>
                <tr>
                    <td>Capacidad</td>
                    <td>16 GB</td>
                </tr>
                <tr>
                    <td>Velocidad</td>
                    <td>2666 MHz</td>
                </tr>
                <tr>
                    <td>Tipo</td>
                    <td>DDR4</td>
                </tr>
                <tr>
                    <td>Cantidad de memorias</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>Latencia</td>
                    <td>15 CL</td>
                </tr>
                <tr>
                    <td>Voltaje</td>
                    <td>1.2 V</td>
                </tr>
                <tr>
                    <td>Disipador</td>
                    <td>Si</td>
                </tr>
                <tr>
                    <td>Disipador alto</td>
                    <td>Si</td>
                </tr>
        </table>
        <a target="blanck" href="sale">COMPRAR</a>
    </div>

    <div class="venta">
        <img src="../images/rams/Kingston DDR4 16GB (2x8GB).jpg">
            <p>
                Memoria Kingston DDR4 16GB (2x8GB) 4000MHz HyperX Predator RGB <br>
            </p>
            <p>
                Precio: $21.290
            </p>
            <table>
                <thead>
                    <tr>
                        <th>Caracteristicas</th>
                        <th>Generales</th>
                    </tr>
                </thead>
                <tr>
                    <td>Capacidad</td>
                    <td>32 GB</td>
                </tr>
                <tr>
                    <td>Velocidad</td>
                    <td>3200 MHz</td>
                </tr>
                <tr>
                    <td>Tipo</td>
                    <td>DDR4</td>
                </tr>
                <tr>
                    <td>Cantidad de memorias</td>
                    <td>2</td>
                </tr>
                <tr>
                    <td>Latencia</td>
                    <td>16 CL</td>
                </tr>
                <tr>
                    <td>Voltaje</td>
                    <td>1.35 V</td>
                </tr>
                <tr>
                    <td>Disipador</td>
                    <td>Si</td>
                </tr>
                <tr>
                    <td>Disipador alto</td>
                    <td>Si</td>
                </tr>
        </table>
        <a target="blank" href="sale">COMPRAR</a>
    </div>

    {foreach from=$products item=product}
    {if $product['category'] eq "Memory"}
    <div class="venta">
        <img src="../images/imagen-fija.png" alt="Imagen no encontrada">
        <p>
            {$product['title']}
        </p>
        <table class="table table-striped table-sm">
            <thead>
              <tr>
                <th>Id_product</th>
                <th>Description</th>
              </tr>
            </thead>
            <tbody>
             <td>
              {$product['id_product']|capitalize}
              </td>
              <td>
              {$product['description']|capitalize}
              </td>
            </tbody> 
          </table>
            <a target="blank" href="sale">COMPRAR</a>
    </div>
    {/if}
    {/foreach}


    <div class="contactos">
        <p>Para consutas, no dudes en comunicarte</p>
        <a href="https://www.facebook.com/LucaasEspindola"><img src="../images/contact/facebook.jpg"></a>
        <a class="instagram" href="https://www.instagram.com/lucas.espindola01/?hl=es-la"><img src="../images/contact/instagram.png"></a>
        <a class="twitter" href="https://twitter.com/EspindolaLucas1"><img src="../images/contact/twitter.png"></a>
    </div>
</body>
</html>