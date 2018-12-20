<?php
session_start();
// skrip koneksi
$koneksi = new mysqli("localhost", "root","", "tokoonline");
?>

<!DOCTYPE html>
<html>
<head>
  <title>Login Pelanggan</title>
  <link rel="stylesheet" href="admin/assets/css/bootstrap.css">
  <style type="text/css">
    body{
    background-image: url("sale.jpg");
    background-size: 100%; }
  </style>

</head>
<body>
  <?php include 'menu.php';?>
 
  <div class="container">
    <div class="row text-center ">
      <div class="col-md-12">
        <br /><br />
        <br /><br />
      </div>
    </div>
    <div class="row ">
      <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
        <div class="panel panel-default">
          <div class="panel-heading">
            <strong>Login Pelanggan</strong>  
          </div>
          <div class="panel-body">
            <form role="form" method="post">
             <br />
             <div class="form-group">
              <label>Email</label>
              <input type="text" class="form-control" name="user" />
            </div>
            <div class="form-group">
              <label>Password</label>
              <input type="password" class="form-control"  name="pass" />
            </div>

           <button class ="btn btn-primary" name="login">Login</button>
           <hr />
           Not register ? <a href="registeration.html" >click here </a> 
         </form>
         <?php 
         if (isset($_POST['login'])) {
           $ambil = $koneksi->query("SELECT * FROM pelanggan WHERE email_pelanggan = '$_POST[user]' 
            AND password_pelanggan='$_POST[pass]'" );
           $yangcocok = $ambil -> num_rows;
           if ($yangcocok == 1) {
             $_SESSION['pelanggan']=$ambil-> fetch_assoc();
             echo "<div class='alert alert-info'>Login Berhasil</div>";
             echo "<script>location='checkout.php';</script>";
           }
           else{
             echo "<div class='alert alert-danger'>Login Gagal</div>";
             echo "<meta http-equiv='refresh' content='1';url=login.php</div>";
           }
         }
         ?>

       </div>
     </div>
   </div>


 </div>
</div>
</body>
</html>
