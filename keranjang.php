<?php 
session_start();
$koneksi = new mysqli("localhost","root", "","tokoonline");
//echo "<pre>";
//print_r($_SESSION['keranjang']);
//echo "</pre>";
if (empty($_SESSION["keranjang"]) OR !isset($_SESSION["keranjang"])) {
	  echo "<script>alert('Keranjang Anda Kosong, Silahkkan Berbelanja');</script>";
 	   echo "<script>location='index.php';</script>";
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Keranjang Belanja</title>
	<link rel="stylesheet"  href="admin/assets/css/bootstrap.css">
	<style type="text/css">
		body{
		background-image: url("sr1.jpg");
		background-size: 100%; }
	</style>
</head>
<body>
<!--navbar -->
 <?php include 'menu.php';?>
 

<section class="konten">
	<div class="container">
		<br /><br />
		<br /><br />
		<h1>Keranjang Belanja</h1>
		<hr>
		<div class="col-md-13">
				<div class="thumbnail">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>No</th>
					<th>Produk</th>
					<th>Harga</th>
					<th>Jumlah</th>
					<th>Harga Total</th>
					<th>Aksi</th>
				</tr>
			</thead>
			<tbody>
				<?php $nomor=1; ?>
				<?php foreach ($_SESSION["keranjang"] as $id_produk => $jumlah): ?>
				<?php 
				$ambil = $koneksi->query("SELECT * FROM produk WHERE  id_produk='$id_produk'");
				$pecah = $ambil->fetch_assoc(); 
				$hargatot = $pecah["harga_produk"]*$jumlah;
				?>
				
				<tr>
					<td><?php echo $nomor; ?></td>
					<td><?php echo $pecah["nama_produk"]; ?></td>
					<td>Rp. <?php echo number_format($pecah["harga_produk"]); ?></td>
					<td><?php echo $jumlah; ?></td>
					<td>Rp. <?php echo number_format($hargatot); ?></td>
					<td>
						<a href="hapuskeranjang.php?id=<?php echo $id_produk ?>" class="btn btn-danger btn-xs">Hapus</a>
					</td>
				</tr>
				<?php $nomor++; ?>
				<?php endforeach ?>
			</tbody>
		</table>
	</div>
</div>
		<a href="index.php" class="btn btn-default">Lanjutkan Belanja</a>
		<a href="checkout.php" class="btn btn-primary">Checkout</a>
	</div>

</section>
</body>
</html>