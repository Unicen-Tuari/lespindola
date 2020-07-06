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
    <link rel="icon" href="../images/admin.jpeg">
    <meta name="msapplication-config" content="/docs/4.5/assets/img/favicons/browserconfig.xml">
    <meta name="theme-color" content="#563d7c">

    <!-- Custom styles for this template -->
    <link href="styles/admin.css" rel="stylesheet">
    <base href="{BASE_URL}">
  </head>
  
  <body>
    <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
      <a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="home">Venta de Hardware <span data-feather="cpu"></span></a>
      <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
      </button>
      <!-- <ul class="navbar-nav px-3">
        <a class="dropdown-item" href="logout" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Cerrar Sesion
        </a>
        <li class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="logout">Cerrar Sesion</a>
        </li>
      </ul> -->
        <ul class="navbar-nav px-3">
          <li class="nav-item text-nowrap">
             <a data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
                  aria-controls="collapseExample">
                    <a href ='logout'class="nav-link">Cerrar Sesion</a>
                     </a>
        </li>
      </ul>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
          <div class="sidebar-sticky pt-3">
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link active" href="home">
                  <span data-feather="box"></span>
                    Products
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="categories">
                  <span data-feather="bar-chart-2"></span>
                    Categories
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" target="blank" href="homePage">
                  <span data-feather="home"></span>
                    Hardware Sales  
                </a>
              </li>
            </ul>
        </nav>

        <!-- <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <form action="insert" method="get">
              <h1>Create New Product</h1>
                <div class="form-group">
                  <label>Name Product</label>
                  <input type="text" class="form-control" name="title" id="title">
                </div>
                <div class="form-group">
                  <label>Category</label>
                  <select id="category" name="category">
                    {foreach from=$categories item=category}
                    <option value="{{$category['id_category']}}">{{$category['name']}}</option>
                    {/foreach}
                  </select>
                </div>
                <div class="form-group">
                  <label>Description</label>
                  <textarea class="form-control" id="description" name="description" rows="3"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Add New Product</button>
            </form>
          </div>

          <div class="table-responsive">
          <h1>Products</h1> -->