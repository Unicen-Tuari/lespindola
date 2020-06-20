<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Venta de Hardware</title>
    <link rel="shortcut icon" type="image/x-icon" href="../images/icon.jpg">
    <link rel="stylesheet" href="../../styles/mainStyle.css">
    <base href="{BASE_URL}">
</head>
<body>
    <div>
        <h1 class="titulo"><a href="index">Venta de Hardware</a></h1>
    </div>

    <hr>

    <div class="productos">
        <ul>
            {foreach from=$categories item=category}
            <li><a href="category/{$category['id_category']}">• {$category['name']}</a></li>
            {/foreach}
        </ul>
    </div>

    <div class="subtituloProd">
        <h2>{{$title}}</h2>
    </div>

    {foreach from=$products item=product}
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
    {/foreach}

    <div class="contactos">
        <p>Para consultas, no dudes en comunicarte</p>
        <a href="https://www.facebook.com/LucaasEspindola"><img src="../images/contact/facebook.jpg"></a>
        <a class="instagram" href="https://www.instagram.com/lucas.espindola01/?hl=es-la"><img src="../images/contact/instagram.png"></a>
        <a class="twitter" href="https://twitter.com/EspindolaLucas1"><img src="../images/contact/twitter.png"></a>
    </div>
</body>
</html>