<?php
include_once ('database.php');
function products($member = null){
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <title>Administration</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <!-- Favicons -->
<link rel="icon" href="images/admin.jpeg">
<meta name="msapplication-config" content="/docs/4.5/assets/img/favicons/browserconfig.xml">
<meta name="theme-color" content="#563d7c">

    <!-- Custom styles for this template -->
    <link href="styles/admin.css" rel="stylesheet">
  </head>
  <body>
    <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="#">Venta de Hardware <span data-feather="cpu"></span></a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <ul class="navbar-nav px-3">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Lucas Nahuel Espindola
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Editar Perfil</a>
                <a class="dropdown-item" href="#">Cerrar Sesion</a>
              </div>
    </ul>
</nav>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="sidebar-sticky pt-3">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" href="#">
              <span data-feather="box"></span>
              Productos
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="bar-chart-2"></span>
              Estadisticas
            </a>
          </li>
        </ul>

    </nav>

    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <form action="insertProducts" method="GET">
        <h1>Create New Product</h1>
          <div class="form-group">
            <label>Id Product</label>
            <input type="text" class="form-control" name="id_product">
          </div>
          <div class="form-group">
            <label>Name Product</label>
            <input type="text" class="form-control" name="title">
          </div>
          <div class="form-group">
            <label>Description</label>
            <textarea class="form-control" id="description" name="description" rows="3"></textarea>
          </div>
          <button type="submit" class="btn btn-primary">Add New Product</button>
        </form>
      </div>

      <div class="table-responsive">
      <h1>Products</h1>
      <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th>Id_product</th>
              <th>Product</th>
              <th>Description</th>
              <th>Done</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            
          <?php 
            $products = getProduct();
            foreach($products as $product){
            '<tr>';
            echo '<td>'.$product['id_product'].'</td>';
            echo '<td>'.$product['title'].'</td>';
            echo '<td>'.$product['description'].'</td>';
            echo '<td>'.$product['done'].'</td>';
          ?>   
           <td><a href="a"><span data-feather="edit">
                <a href="a"><span data-feather="upload"></span>
                <a href="a"><span data-feather="delete"></span>
            </td>
            </tr>
          </tbody> 
            
          <?php
          }
          ?> 
        </table>
    </main>
  </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="/docs/4.5/assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="/docs/4.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-1CmrxMRARb6aLqgBO7yyAxTOQE2AKb9GfXnEo760AUcUmFx3ibVJJAzGytlQcNXd" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
        <script src="javascript/admin.js"></script></body>
</html>
<?php
}


function insertProducts(){
  echo "insert Products";
  echo "id_product: " . $_GET["id_product"];
  echo "title: " . $_GET["title"];
  echo "description: " . $_GET["description"]; 
  createProduct($_GET["id_product"], $_GET["title"], $_GET["description"]);  
  header ("Location: home");
}
?>