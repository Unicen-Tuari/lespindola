<?php
require_once ('database.php');
require_once ('libs/Smarty.class.php');
function products($member = null){
  $products = getProduct();
  $smarty = new Smarty();
  $smarty->assign('products',$products);
  $smarty->display('templates/index.tpl');


function insertProducts(){
  echo "title: " . $_GET["title"];
  echo "description: " . $_GET["description"]; 
  createProduct($_GET["title"], $_GET["description"]); 
  header ("location: home");
}

function deleteProduct($params){
  removeProduct($params[0]); 
  header ("location: ../home");
}

function complete($params){
  markProductAsDone($params[0]);
  header ("location: ../home");
}

?>

    </div>
  </div>
    <script src="https://unpkg.com/feather-icons"></script>
    <script src="../javascript/admin.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
  </body>
</html>