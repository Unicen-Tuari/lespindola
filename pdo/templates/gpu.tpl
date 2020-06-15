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
        <h2>Placas de Video</h2>
    </div>

    <div class="venta" id="homepage">
        <img src="../images/GPU/Asrock RX 570.jpg">
            <p>
                Placa de Video Asrock RX 570 4GB Phantom Gaming D 
            </p>
            <P>
                Precio: $10.500
            </P>
            <table>
                <thead>
                    <tr>
                        <th>Caracteristicas</th>
                        <th>Generales</th>
                    </tr>
                </thead>
                <tr>
                    <td>Tipo</td>
                    <td>pcie</td>
                </tr>
                <tr>
                    <td>Chipset GPU</td>
                    <td>RX 570</td>
                </tr>
                <tr>
                    <td>Puente para SLI/CroosfireX</td>
                    <td>Crossfire</td>
                </tr>
                <tr>
                    <td>Características especiales</td>
                    <td>Otras tegnologias</td>
                </tr>
                <tr>
                    <td>DVI digital</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>HDMI</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>DisplayPorts</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>Ancho de la placa</td>
                    <td>127 mm</td>
                </tr>
                <tr>
                    <td>largo de la placa</td>
                    <td>236 mm</td>
                </tr>
                <tr>
                    <td>Espesor de la placa</td>
                    <td>2 slots</td>
                </tr>
            </table>
            <a target="blank" href="sale">COMPRAR</a>
    </div>

    <div class="venta">
        <img src="../images/GPU/ASUS GeForce RTX 2080 Ti 11GB.jpg">
            <p>
                Placa de Video ASUS GeForce RTX 2080 Ti 11GB GDDR6 ROG STRIX OC 
            </p>
            <p>
                Precio: $140.800
            </p>
            <table>
                <thead>
                    <tr>
                        <th>Caracteristicas</th>
                        <th>Generales</th>
                    </tr>
                </thead>
                <tr>
                    <td>Tipo</td>
                    <td>pcie</td>
                </tr>
                <tr>
                    <td>Chipset GPU</td>
                    <td>RTX 2080 Ti</td>
                </tr>
                <tr>
                    <td>Puente para SLI/CroosfireX</td>
                    <td>SLI</td>
                </tr>
                <tr>
                    <td>Características especiales</td>
                    <td>Ray Tracing + DLSS</td>
                </tr>
                <tr>
                    <td>HDMI</td>
                    <td>2</td>
                </tr>
                <tr>
                    <td>DisplayPorts</td>
                    <td>2</td>
                </tr>
                <tr>
                    <td>USB Type-C</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>Ancho de la placa</td>
                    <td>130 mm</td>
                </tr>
                <tr>
                    <td>Largo de la placa</td>
                    <td>305 mm</td>
                </tr>
                <tr>
                    <td>Espesor de la placa</td>
                    <td>2.5 slots</td>
                </tr>
        </table>
        <a target="blank" href="sale">COMPRAR</a>
    </div>

    <div class="venta">
        <img src="../images/GPU/MSI GeForce GTX 1660 Ti 6GB.jpg">
            <p>
                Placa de Video MSI GeForce GTX 1660 Ti 6GB GDDR6 Gaming X
            </p>
            <P>
                Precio: $31.440
            </P>
            <table>
                <thead>
                    <tr>
                        <th>Caracteristicas</th>
                        <th>Generales</th>
                    </tr>
                </thead>
                <tr>
                    <td>Tipo</td>
                    <td>pcie</td>
                </tr>
                <tr>
                    <td>Chipset GPU</td>
                    <td>GTX 1660 Ti</td>
                </tr>
                <tr>
                    <td>Puente para SLI/CroosfireX</td>
                    <td>-</td>
                </tr>
                <tr>
                    <td>Características especiales</td>
                    <td>Ray Tracing por software</td>
                </tr>
                <tr>
                    <td>HDMI</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>DisplayPorts</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>Ancho de la placa</td>
                    <td>127 mm</td>
                </tr>
                <tr>
                    <td>largo de la placa</td>
                    <td>247 mm</td>
                </tr>
                <tr>
                    <td>Espesor de la placa</td>
                    <td>2 slots</td>
                </tr>
        </table>
        <a target="blank" href="sale">COMPRAR</a>
    </div>

    {foreach from=$products item=product}
    {if $product['category'] eq "Graphics Cards"}
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
        <p>Para consultas, no dudes en comunicarte</p>
        <a href="https://www.facebook.com/LucaasEspindola"><img src="../images/contact/facebook.jpg"></a>
        <a class="instagram" href="https://www.instagram.com/lucas.espindola01/?hl=es-la"><img src="../images/contact/instagram.png"></a>
        <a class="twitter" href="https://twitter.com/EspindolaLucas1"><img src="../images/contact/twitter.png"></a>
    </div>
</body>
</html>