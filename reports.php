<?php
require_once "authcontroller/Authcontroller.php";
$auth = new AuthController;
$number=0;
$number1=0;
$x=0;
$type;
if(isset($_POST["movie"])){
    $type='movie';
    $x=1;
    $results = $auth ->Selectadmin($number,$type);
    $res = $auth ->report($number1,$type);
}
if(isset($_POST["shows"])){
    $type='shows';
    $x=1;
    $results = $auth ->Selectadmin($number,$type);
    $res = $auth ->report($number1,$type);
}
if(isset($_POST["plays"])){
    $type='plays';
    $x=1;
    $results = $auth ->Selectadmin($number,$type);
    $res = $auth ->report($number1,$type);
}
if(isset($_POST["comedy"])){
    $type='comedy';
    $x=1;
    $results = $auth ->Selectadmin($number,$type);
    $res = $auth ->report($number1,$type);
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Admin - Generate Reports</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/06.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Roboto:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Work+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: UpConstruction
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/upconstruction-bootstrap-construction-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <?php
  require_once "./shared/headeradmin.php"
  ?>

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs d-flex align-items-center" style="background-image: url('assets/img/04.jpg');">
      <div class="container position-relative d-flex flex-column align-items-center" data-aos="fade">

        <h2>Reports</h2>
        <ol>
          <li><a href="index.php">Home</a></li>
          <li>Reports</li>
        </ol>

      </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services section-bg">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-3 text-center">
                <form action='#' method='post'>
                    <button type='submit' class='btn btn-primary' style='margin-top: 10px;' name='movie'>Movies</button>
                </form>
            </div>

            <div class="col-md-3 text-center">
                <form action='#' method='post'>
                    <button type='submit' class='btn btn-warning' style='margin-top: 10px; ' name='shows'>TV Shows</button>
                </form>
            </div>

            <div class="col-md-3 text-center">
                <form action='#' method='post'>
                    <button type='submit' class='btn btn-success' style='margin-top: 10px;' name='plays'>Live Plays</button>
                </form>
            </div>

            <div class="col-md-3 text-center">
                <form action='#' method='post'>
                    <button type='submit' class='btn btn-danger' style='margin-top: 10px;' name='comedy'>StandUp Comedy</button>
                </form>
            </div>
        </div>
    </div>
    <hr style="padding-top:20px;">
</section>
<section id="blog" class="blog">
      <div class="container" data-aos="fade-up" data-aos-delay="100">

      <div class="row gy-4 posts-list">

        <style>
          /* Remove default styles for select */
select {
    border: none;
    background-color: transparent;
    -webkit-appearance: none;
    -moz-appearance: none;
    pointer-events: none;
    appearance: none;
    padding: 0; /* Adjust padding if necessary */
    font-family: inherit;
    font-size: inherit;
    color: inherit;
    outline: none;
}

        </style>
      <?php for ($i = 0; $i < $number; $i++) {
        $a=0;
        echo '<div class="col-xl-4 col-md-6"><form action"#" method="post"><div class="post-item position-relative h-100">';
        
              echo'<div class="post-img position-relative overflow-hidden"><img src="'.$results[$i]['image'].'" style="width:500px;height:320px"class="img-fluid" alt=""><select class="post-date" name="date" id="date"><option>' . $results[$i]['date'] . '</option></select></div>';

              echo'<div class="post-content d-flex flex-column"><select class ="post-title" name="name" id="name"><option>' . $results[$i]['name'] . '</option></select></h3>';

                echo'<div class="meta d-flex align-items-center"><div class="d-flex align-items-center"><i class="bi bi-folder2"></i> <span class="ps-2">'.$results[$i]['description'].'</span></div></div>';
                echo'<label style="margin-top:10px;">Price For One Ticket : '.$results[$i]['price'].'</label>';
                echo'<label style="margin-top:10px;">Time Begin & End : <select name="time" id="time"><option>' . $results[$i]['time'] . '</option></select></label>';
                echo '<label style="margin-top:10px;">Hall Name: <select name="hallname" id="hallname">';
                echo '<option>' . $results[$i]['Hname'];
                for ($j =0; $j < $number1; $j++){
                  if($results[$i]['id']==$res[$j]['movie_id']) {
                    $a++;
                    break;
                  }
                }
                if($a==0){
                    echo '</select><span "> No ticket is booked.</span></label>';
                    echo'<label style="margin-top:10px; color:red; ">There Is No Profit</label>';
                }
                else{
                  echo '</select><span ">   Seats : '.$res[$j]['numofseats'].'</span></label>';
                  echo'<label style="margin-top:10px;">Number Of Tickets Booked : '. $res[$j]['sum_1'] . '</label>';
                  echo '<label style="margin-top:10px; color:red;"> Remaining Seats : '. ($res[$j]['numofseats'] - $res[$j]['sum_1']) . '</label>';
                }
                
                echo'<div>';
                echo'</div>';
                
              echo'</div>
              </form>
            </div>

          </div><!-- End post list item -->';
      }
      ?>
      <?php
      if($x===1)
      echo '<button class="btn btn-warning" style=" margin-top:12px;" onclick="printContent()">Print</button>';
      ?>
      

    </div><!-- End blog posts list -->


</div>
</section><!-- End Blog Section -->


<script>
  function printContent() {
    window.print();
  }
</script>

    
  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <?php
  require_once "./shared/footer.php"
  ?>
  <!-- End Footer -->

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>