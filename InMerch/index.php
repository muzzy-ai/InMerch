<?php
session_start();
?>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="img/lifestyleStore.png" />
        <title>Lifestyle Store</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- latest compiled and minified CSS -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css">
        <!-- jquery library -->
        <script type="text/javascript" src="bootstrap/js/jquery-3.2.1.min.js"></script>
        <!-- Latest compiled and minified javascript -->
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <!-- External CSS -->
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <div>
           <?php
            require 'header.php';
           ?>
           <div id="bannerImage">
               <div class="container">
                   <center>
                   <div id="bannerContent">
                       <h1>We sell Informatics merchandise.</h1>
                       <p>Flat 40% OFF on all premium material.</p>
                       <a href="products.php" class="btn btn-danger">Shop Now</a>
                   </div>
                   </center>
               </div>
           </div>
           <div class="container">
               <div class="row">
                   <div class="col-xs-4">
                       <div  class="thumbnail">
                           <a href="products.php">
                                <img src="img/smallmerch.png" alt="Camera">
                           </a>
                           <center>
                                <div class="caption">
                                        <p id="autoResize">Small merch</p>
                                        <p>good quality with new and interesting design</p>
                                </div>
                           </center>
                       </div>
                   </div>
                   <div class="col-xs-4">
                       <div class="thumbnail">
                           <a href="products.php">
                               <img src="img/tshirt.png" alt="Watch">
                           </a>
                           <center>
                                <div class="caption">
                                    <p id="autoResize">Shirt</p>
                                    <p>Original Informatics shirt from the best cotton.</p>
                                </div>
                           </center>
                       </div>
                   </div>
                   <div class="col-xs-4">
                       <div class="thumbnail">
                           <a href="products.php">
                               <img src="img/buckethatcap.png" alt="Shirt">
                           </a>
                           <center>
                               <div class="caption">
                                   <p id="autoResize">bucket hat/cap</p>
                                   <p>Our exquisite collection of cap.</p>
                               </div>
                           </center>
                       </div>
                   </div>
               </div>
           </div>
            <br><br> <br><br><br><br>
           <footer class="footer"> 
               <div class="container">
               <center>
                   <p>Copyright &copy InMerch. All Rights Reserved.</p>
                   <p>This website is developed by muzzy,naufal,apip,choirul</p>
               </center>
               </div>
           </footer>
        </div>
    </body>
</html>