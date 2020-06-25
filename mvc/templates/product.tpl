{include file="headerProduct.tpl"}
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
{include file="footerProduct.tpl"}