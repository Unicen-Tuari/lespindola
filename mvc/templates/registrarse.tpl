<!-- <!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
         <link rel="icon" href="../images/admin.jpeg">
        <title>Venta de Hardware</title> -->

        <!-- Bootstrap core CSS -->
        <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"> -->
        <!-- Favicons -->
            <!-- <meta name="msapplication-config" content="/docs/4.5/assets/img/favicons/browserconfig.xml">
            <meta name="theme-color" content="#563d7c"> -->

        <!-- Custom styles for this template -->
        <!-- <link href="../styles/registrarse.css" rel="stylesheet">
    </head> -->
{include file="headerLogin.tpl"}
    <body class="text-center">
        <form class="form-signin" action="registro" method="POST">  
            <img class="mb-4" src="../images/registrase.jpg" alt="" width="180" height="150">
            <h1 class="h3 mb-3 font-weight-normal">Registrese, por favor</h1>
            <label for="email" class="sr-only">Email address</label>
            <input type="email" id="email" name="email" class="form-control" placeholder="Email" required autofocus>
            <label for="password" class="sr-only">Password</label>
            <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Contraseña" required>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Registrarse</button>
            <!-- <br>
            <a href="registrarse"><button class="btn btn-lg btn-primary btn-block">Registrarse</button></a>
            <p class="mt-5 mb-3 text-muted">&copy; 2017-2020</p> -->
        </form>
    </body>
</html>
