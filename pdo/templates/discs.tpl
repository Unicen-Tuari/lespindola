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
        <h2>Almacenamiento</h2>
    </div>

    <div class="venta">
        <img src="../images/discs/SSD Adata 960GB.jpg">
            <p>
                Disco Sólido SSD Adata 960GB Ultimate SU630 520MB/s
            </p>
            <P>
                Precio: $9.700
            </P>
            <table>
                <thead>
                    <tr>
                        <th>Caracteristicas</th>
                        <th>Generales</th>
                    </tr>
                </thead>
                <tr>
                    <td>Tipo de Conexión</td>
                    <td>SATA</td>
                </tr>
                <tr>
                    <td>Consumo</td>
                    <td>3 W</td>
                </tr>
                <tr>
                    <td>Tipo de Disco</td>
                    <td>Sólido</td>
                </tr>
                <tr>
                    <td>Capacidad</td>
                    <td>960 GB</td>
                </tr>
                <tr>
                    <td>Factor</td>
                    <td>2.5</td>
                </tr>
            </table>
            <a target="blank" href="sale">COMPRAR</a>
    </div>

    <div class="venta">
        <img src="../images/discs/SSD M.2 ADATA 1TB XPG.jpg">
            <p>
                Disco Solido SSD M.2 ADATA 1TB XPG Gammix S50 5000MB/s NVMe PCI-E 4.0 x4
            </p>
            <p>
                Precio: $22.120
            </p>
            <table>
                <thead>
                    <tr>
                        <th>Caracteristicas</th>
                        <th>Generales</th>
                    </tr>
                </thead>
                <tr>
                    <td>Tipo de Conexión</td>
                    <td>M2</td>
                </tr>
                <tr>
                    <td>Consumo</td>
                    <td>5 W</td>
                </tr>
                <tr>
                    <td>Tipo de Disco</td>
                    <td>Sólido</td>
                </tr>
                <tr>
                    <td>Capacidad</td>
                    <td>1000 GB</td>
                </tr>
                <tr>
                    <td>Factor</td>
                    <td>M2</td>
                </tr>
            </table>
            <a target="blank" href="sale">COMPRAR</a>
    </div>

    <div class="venta">
        <img src="../images/discs/WD 4TB.jpg">
            <p>
                Disco Rígido WD 4TB Blue SATA 6GB/s
            </p>
            <p>
                Precio: $9.210
            </p>
            <table>
                <thead>
                    <tr>
                        <th>Caracteristicas</th>
                        <th>Generales</th>
                    </tr>
                </thead>
                <tr>
                    <td>Tipo de Conexión</td>
                    <td>SATA</td>
                </tr>
                <tr>
                    <td>Consumo</td>
                    <td>10 W</td>
                </tr>
                <tr>
                    <td>Tipo de Disco</td>
                    <td>Sólido</td>
                </tr>
                <tr>
                    <td>Capacidad</td>
                    <td>4000 GB</td>
                </tr>
                <tr>
                    <td>Factor</td>
                    <td>2.5</td>
                </tr>
            </table>
            <a target="blank" href="sale">COMPRAR</a>
    </div>

    {foreach from=$products item=product}
    {if $product['category'] eq "Discs"}
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
              {$product['id_product']}
              </td>
              <td>
              {$product['description']}
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