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
        <h2>Procesadores</h2>
    </div>


    <div class="venta" id="homepage">
        <img src="../images/CPU/AMD RYZEN 5 3600X 4.4GHz.jpg">
            <p>
                Procesador AMD RYZEN 5 3600X 4.4GHz Turbo AM4 Wraith Spire Cooler
            </p>
            <p>
                Precio: $20.790
            </p>
            <table>
                <thead>
                    <tr>
                        <th>Caracteristicas</th>
                        <th>Generales</th>
                    </tr>
                </thead>
                <tr>
                    <td>Modelo</td>
                    <td>RYZEN 5 3600X</td>
                </tr>
                <tr>
                    <td>Familia</td>
                    <td>AMD RYZEN 5</td>
                </tr>
                <tr>
                    <td>Núcleos</td>
                    <td>6</td>
                </tr>
                <tr>
                    <td>Hilos</td>
                    <td>12</td>
                </tr>
                <tr>
                    <td>Frecuencia</td>
                    <td>3.8 GHz</td>
                </tr>
                <tr>
                    <td>Frecuencia Turbo</td>
                    <td>4 GHz</td>
                </tr>
                <tr>
                    <td>Proceso de Fabricación</td>
                    <td>7 nm</td>
                </tr>
                <tr>
                    <td>Socket</td>
                    <td>AM4 Ryzen 3th Gen</td>
                </tr>
            </table>
            <a target="blank" href="sale">COMPRAR</a>
    </div>

    <div class="venta">
        <img src="../images/CPU/AMD Ryzen Threadripper 3960X.jpg">
            <p>
                Procesador AMD Ryzen Threadripper 3960X 3.8GHz 24-Core TRX4 <br>
            </p>
            <p>
                Precio: $130.970
            </p>
            <table>
                <thead>
                    <tr>
                        <th>Caracteristicas</th>
                        <th>Generales</th>
                    </tr>
                </thead>
                <tr>
                    <td>Modelo</td>
                    <td>Threadripper 3960X</td>
                </tr>
                <tr>
                    <td>Familia</td>
                    <td>AMD Threadripper</td>
                </tr>
                <tr>
                    <td>Núcleos</td>
                    <td>24</td>
                </tr>
                <tr>
                    <td>Hilos</td>
                    <td>48</td>
                </tr>
                <tr>
                    <td>Frecuencia</td>
                    <td>3.8 GHz</td>
                </tr>
                <tr>
                    <td>Frecuencia Turbo</td>
                    <td>5 GHz</td>
                </tr>
                <tr>
                    <td>Proceso de Fabricación</td>
                    <td>7 nm</td>
                </tr>
                <tr>
                    <td>Socket</td>
                    <td>TRX4</td>
                </tr>
            </table>
            <a target="blank" href="sale">COMPRAR</a>
    </div> 

    <div class="venta">
        <img src="../images/CPU/Core i7 9700F.jpg">
            <p>
                Procesador Intel Core i7 9700F 4.7GHz Turbo 1151 Coffee Lake <br>
            </p>
            <p>
                Precio: $31.490
            </p>
            <table>
                <thead>
                    <tr>
                        <th>Caracteristicas</th>
                        <th>Generales</th>
                    </tr>
                </thead>
                <tr>
                    <td>Modelo</td>
                    <td>Core i7 9700F</td>
                </tr>
                <tr>
                    <td>Familia</td>
                    <td>Intel Core i7</td>
                </tr>
                <tr>
                    <td>Núcleos</td>
                    <td>8</td>
                </tr>
                <tr>
                    <td>Hilos</td>
                    <td>8</td>
                </tr>
                <tr>
                    <td>Frecuencia</td>
                    <td>3 GHz</td>
                </tr>
                <tr>
                    <td>Frecuencia Turbo</td>
                    <td>5 GHz</td>
                </tr>
                <tr>
                    <td>Proceso de Fabricación</td>
                    <td>14 nm</td>
                </tr>
                <tr>
                    <td>Socket</td>
                    <td>1151 Coffe Lake</td>
                </tr>
            </table>
            <a target="blank" href="sale">COMPRAR</a>
    </div>

    {foreach from=$products item=product}
    {if $product['category'] eq "Processors"}
    <div class="venta">
        <img src="#" alt="Imagen no encontrada">
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
        <p>Para consultas, no dudes en comunicarte</p>
        <a href="https://www.facebook.com/LucaasEspindola"><img src="../images/contact/facebook.jpg"></a>
        <a class="instagram" href="https://www.instagram.com/lucas.espindola01/?hl=es-la"><img src="../images/contact/instagram.png"></a>
        <a class="twitter" href="https://twitter.com/EspindolaLucas1"><img src="../images/contact/twitter.png"></a>
    </div>
</body>
</html>