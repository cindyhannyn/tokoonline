<!--navbar -->
</html>
 <nav class="navbar navbar-default">
  <div class="container">
    <ul class="nav navbar-nav">
       <img src="logoo.jpg" width='90' style="float:left;position: relative;" >
      <li><a href="index.php">Home</a></li>
      <li><a href="keranjang.php">Keranjang</a></li>

      <?php if (isset($_SESSION["pelanggan"])): ?>
        <li><a href="logout.php">Logout</a></li>
      <?php else: ?>
        <li><a href="login.php">Login</a></li>
        <li><a href="daftar.php">Daftar</a></li>
      <?php endif ?>
      <li><a href="checkout.php">Checkout</a></li>
    </ul>
  </div>
</nav>