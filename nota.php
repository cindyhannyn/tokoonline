<?php
session_start();
// skrip koneksi
$koneksi = new mysqli("localhost", "root","", "tokoonline");
?>


<!DOCTYPE html>
<html>
<head>
	<title>Nota Pembeliaan</title>
	 <link rel="stylesheet" href="admin/assets/css/bootstrap.css">
	<?php include 'menu.php';?>
	<section class="konten">
		<div class="container">
			<h2>Detail Pembelian</h2>

<?php 
$ambil= $koneksi->query("SELECT * FROM pembelian JOIN pelanggan ON pembelian.id_pelanggan=pelanggan.id_pelanggan
	WHERE pembelian.id_pembelian='$_GET[id]'");
$detail = $ambil->fetch_assoc();
?>

<div class="row">
	<div class="col-md-4">
		<h3>Peembelian</h3>
		<strong>No. Pembelian : <?php echo $detail['id_pembelian'];  ?></strong> <br>
		Tanggal :<?php echo $detail['tanggal_pembelian']; ?> <br>
		Total   :<?php echo $detail['total_pembelian'] ?>
	</div>
	<div class="col-md-4">
		<h3>Pelanggan</h3>
		<strong><?php echo $detail['nama_pelanggan'];  ?></strong> <br>
		<p>
			<?php echo $detail['telpon_pelanggan']; ?> <br>
			<?php echo $detail['email_pelanggan']; ?>
		</p>
	</div>
	<div class="col-md-4">
		<h3>Pengiriman</h3>
		<strong><?php echo $detail['nama_kota'];  ?></strong> <br>
		Ongkos kirim Rp. <?php echo number_format($detail['tarif']);  ?><br>
		Alamat : <?php echo $detail['alamat_pengiriman'] ?>
	</div>
</div>

<table class="table table-bordered">
<thead>
		<tr>
			<th>No</th>
			<th>Nama Produk</th>
			<th>Harga</th>
			<th>Jumlah</th>
			<th>Subtotal</th>
		</tr>
	</thead>
	<tbody>
		<?php $nomor=1  ?>
		<?php $ambil=$koneksi->query("SELECT * FROM pembeli_produk JOIN produk ON
		pembeli_produk.id_produk=produk.id_produk 
		WHERE pembeli_produk.id_pembelian='$_GET[id]' ");  ?>
		<?php while($pecah =$ambil->fetch_assoc()){ ?>
		<tr>
			<td> <?php echo $nomor;?> </td>
			<td> <?php echo $pecah['nama_produk']; ?></td>
			<td> Rp. <?php echo number_format($pecah['harga_produk']); ?></td>
			<td> <?php echo $pecah['jumlah']; ?></td>
			<td> Rp. 
				<?php echo number_format($pecah['harga_produk']*$pecah['jumlah']); ?>
			</td>
		</tr>
		<?php $nomor++; ?>
		<?php } ?>
	</tbody>
</table>
<div class="row">
	<div class="col-md-7">
		<div class="alert alert-info">
			<p>
				Silahkan Melakukan Pembayaran Rp. <?php echo number_format($detail['total_pembelian']); ?> ke <br>
				<strong>BANK MANDIRI 137-0010088-2376 AN. Sri Rahayu Ningsih</strong> <br>
				Dan Lakukan Konfirmasi Ke admin dengan nomer 0871-8746-6574
			</p>
		</div>
	</div>
</div>
		</div>
	</section>

</head>
<body>

</body>
</html>