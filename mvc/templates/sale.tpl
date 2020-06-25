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
    
    <div class="cuarentena">
        <p>
            <strong>CUARENTENA OBLIGATORIA</strong>. Sólo operamos con ENVÍOS y estamos teniendo <strong>DEMORAS de hasta 10 dias en el despacho de productos.</strong>
        </p>
    </div>

    <!--Manera de entrega-->
    <div class="manera_de_envio">
        <form>
            <input type="radio" name="envio">
            <label>Envío a Domicilio</label>
            <input type="radio" name="envio">
            <label>Retira en local</label>  
        </form>
        <p class="retiro">
            RETIRO EN NUESTRO LOCAL SUSPENDIDO TEMPORALMENTE POR CUARENTENA OBLIGATORIA.
        </p>
    </div>
    
    <!--Datos del cliente-->
    <form class="cliente">
        <label>Nombre</label>
        <input type="text" placeholder="Escribe tu nombre">
        <label>Apellido</label>
        <input type="text" placeholder="Escribe tu apellido"> <br>
        <label>Provincia</label>
        <input type="text" placeholder="Escribe su pais">
        <label>Localidad/Ciudad</label>
        <input type="text" placeholder="Escriba su ciudad"> <br>
        <label>Direccion</label>
        <input type="text" placeholder="Escriba su direccion">
        <label>Numero Piso</label>
        <input type="text" placeholder="Escriba su nro de piso">
        <label>Numero de departamento</label>
        <input type="text" placeholder="Escriba su nro de departamento">
    </form>

    <!--Contacto-->
    <form class="contacto">
        <p>
            Por favor llene los siguientes datos, para poder comunicarnos con usted por algun problema.
        </p>
        <label>Mail</label>
        <input type="text" placeholder="Escriba su mail">
        <label>Celular</label>
        <input type="text" placeholder="Escriba su nro de celular">
    </form>
    <button class="button" type="button">Enviar Información</button>
</body>
</html>