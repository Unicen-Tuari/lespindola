 {include file="headerHomePage.tpl"}
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
    
    {foreach from=$products item=product}
    <div class="producto">
        <h3>{$product['title']}</h3>
        <img src="../images/imagen-fija.png" alt="Imagen no encontrada">
    </div>
    {/foreach}
{include file="footerProduct.tpl"}
 