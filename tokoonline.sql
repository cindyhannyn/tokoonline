-- MySQL dump 10.16  Distrib 10.1.19-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.19-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'kkhitimah@gmail.com','anjatan1','Khusnul Khotimah');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ongkir`
--

DROP TABLE IF EXISTS `ongkir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ongkir` (
  `id_ongkir` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  PRIMARY KEY (`id_ongkir`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ongkir`
--

LOCK TABLES `ongkir` WRITE;
/*!40000 ALTER TABLE `ongkir` DISABLE KEYS */;
INSERT INTO `ongkir` VALUES (3,'Aceh',35000),(4,'Sumatera Utara',30000),(5,'Sumatera Barat',32000),(6,'Riau',40000),(7,'Kepulauan Riau',40000),(8,'Jambi',36000),(9,'Bengkulu',38000),(10,'Sumatera Selatan',30000),(11,'Bangka Belitung',38000),(12,'Lampung',29000),(13,'Banten',25000),(14,'Jawa Barat',18000),(15,'Jakarta',20000),(16,'Jawa Tengah',22000),(17,'Daerah Istimewa Yogyakarta',23000),(18,'Jawa Timur',23000),(19,'Bali',33000),(20,'Nusa Tenggara Barat',35000),(21,'Nusa Tenggara Timur',35000),(22,'Kalimantan Barat',31000),(23,'Kalimantan Selatan',32000),(24,'Kalimantan Tengah',30000),(25,'Kalimantan Timur',32000),(26,'Kalimanttan Utara',32000),(27,'Gorontalo',28000),(28,'Sulawesi Selatan',28000),(29,'Sulawesi Tenggara',29000),(30,'Sulawesi Tengah',28000),(31,'Sulawesi Utara',29000),(32,'Sulawesi Barat',29000),(33,'Maluku',31000),(34,'Maluku Utara',34000),(35,'Maluku',31000),(36,'Maluku Utara',34000),(37,'Papua',45000),(38,'Papua Barat',44000),(39,'Papua',45000),(40,'Papua Barat',44000);
/*!40000 ALTER TABLE `ongkir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelanggan`
--

DROP TABLE IF EXISTS `pelanggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telpon_pelanggan` varchar(25) NOT NULL,
  `alamat_pelanggan` text NOT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelanggan`
--

LOCK TABLES `pelanggan` WRITE;
/*!40000 ALTER TABLE `pelanggan` DISABLE KEYS */;
INSERT INTO `pelanggan` VALUES (2,'mitamit@gmail.com','mitamit','Mita Ayu Moica','081232638163',''),(3,'diann123@gmail.com','diann','Dian Nuryani','08212474537829',''),(4,'janijanday@gmail.com','jandai','anjani','098643790476',''),(6,'copysop@gmail.com','sopayam','sophia','09876543436','Bandung'),(7,'mitza@gmail.com','mitza','mitza','087654875378','bandung');
/*!40000 ALTER TABLE `pelanggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembeli_produk`
--

DROP TABLE IF EXISTS `pembeli_produk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pembeli_produk` (
  `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  PRIMARY KEY (`id_pembelian_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembeli_produk`
--

LOCK TABLES `pembeli_produk` WRITE;
/*!40000 ALTER TABLE `pembeli_produk` DISABLE KEYS */;
INSERT INTO `pembeli_produk` VALUES (20,29,8,1),(21,30,3,4),(22,30,2,2),(23,31,8,1),(24,31,1,1),(25,32,2,1),(26,32,6,1),(27,33,5,1),(28,33,7,1),(29,34,38,1),(30,35,3,5),(31,36,3,1),(32,36,8,4),(33,37,1,1),(34,38,3,1),(35,39,8,0),(36,40,3,1),(37,41,8,1);
/*!40000 ALTER TABLE `pembeli_produk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembelian`
--

DROP TABLE IF EXISTS `pembelian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int(11) NOT NULL,
  `id_ongkir` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  `alamat_pengiriman` text NOT NULL,
  PRIMARY KEY (`id_pembelian`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembelian`
--

LOCK TABLES `pembelian` WRITE;
/*!40000 ALTER TABLE `pembelian` DISABLE KEYS */;
INSERT INTO `pembelian` VALUES (29,3,14,'2018-05-13',123000,'Jawa Barat',18000,'Jl.Cipadung Permai No 168. Kode Pos : 1456'),(30,3,21,'2018-05-13',605000,'Nusa Tenggara Timur',35000,'gggghhhkkkkk'),(31,2,0,'2018-05-13',195000,'',0,'hjhhnnjg'),(32,2,14,'2018-05-13',203000,'Jawa Barat',18000,'jkgjjhh'),(33,2,13,'2018-05-13',210000,'Banten',25000,'kkjkjkj'),(34,2,40,'2018-05-15',134000,'Papua Barat',44000,'jkt 1234556\r\n'),(35,3,19,'2018-05-16',508000,'Bali',33000,'jdgdjd'),(36,3,7,'2018-05-17',555000,'Kepulauan Riau',40000,'hdhdisk'),(37,3,14,'2018-05-21',108000,'Jawa Barat',18000,'Bandung '),(38,2,0,'2018-05-27',95000,'',0,''),(39,2,6,'2018-06-01',40000,'Riau',40000,'semarang'),(40,2,0,'2018-06-06',95000,'',0,''),(41,2,39,'2018-06-07',150000,'Papua',45000,'mkldfrghgf');
/*!40000 ALTER TABLE `pembelian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produk`
--

DROP TABLE IF EXISTS `produk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produk`
--

LOCK TABLES `produk` WRITE;
/*!40000 ALTER TABLE `produk` DISABLE KEYS */;
INSERT INTO `produk` VALUES (1,'Fanissa Tunic',90000,1,'1.jpg','ld : 98cm\r\npj : 95cm\r\nmat : cotton rayon\r\nberkancing depan'),(2,'Kenzo Tunik',95000,1,'2.jpg','ld : 105cm\r\npj : 95cm\r\nmat : cotton Supernova\r\nall color in pict'),(3,'Khevamauza',95000,1,'3.jpg','fit to L\r\nmat : cotton Supernova\r\nall color in pict'),(4,'Turtle Neck',90000,1,'4.jpg','fit to L\r\nmat : rajut\r\nall color in pict'),(5,'RoundHand Navy',90000,1,'5.jpg','fit to L\r\nmat : Rajut Tebal\r\nNavy'),(6,'Roundhand Denim',90000,1,'6.jpg','fit to L\r\nmat : Rajut\r\ncolor : in pict'),(7,'Sawa Jaket',95000,1,'7.jpg','fit to L\r\nmat : fleace bordir'),(8,'Linella Dress',105000,1,'8.jpg','fit to L\r\nmat : Wolfice\r\ncolor : Milo, Mustrad, Rose, Maroon\r\nKet : dalaman dan luaran Menyatu'),(9,'Zero Heroes',95000,1,'9.jpg','size : M, L, XL\r\nmat : cotton\r\n'),(10,'Azuera Dress',110000,1,'10.jpg','Lenght : 140cm\r\nmat : Babyterry Import\r\ncolor : White'),(13,'Bomber Jacket Origial',140000,1,'13.jpg','Size : Allsize fit XL\r\nmat : Taslan Despo & Darkon\r\nColor : Green Comby Army'),(14,'Bomber Couple',235000,1,'14.jpg','Size : Medium ad Large\r\nmat : Mayer Import Printing\r\n'),(16,'Cape Glitter Red',170000,1,'16.jpg','ld : 150cm\r\npj : 50cm\r\nmat : brokat gliter fit xxxl\r\nKain lilit allsize'),(17,'Elnira Tanga Pendek',155000,1,'17.jpg','Size : s-xxl\r\nmat : cotton Supernova\r\nsilver'),(18,'Zahra Dress',110000,1,'18.jpg','Fit to L\r\nmat : Katun\r\nColor : Grey, Pink, Blue'),(19,'Flowery Blouse',95000,1,'19.jpg','Fit to L\r\nmat : Balotelly\r\nColor : Pink, Black, Navy, Green'),(20,'Wilasa Shirt',90000,1,'20.jpg','Size : Fit to L\r\nmat : Wolfis'),(21,'Millu Dress',120000,1,'21.jpg','Size Fit to L\r\nmat : Balotelly mix Katun\r\nColor : Marooon, Black, Navy, Latte'),(22,'Webbing Shirt',95000,1,'22.jpg','Size Fit to L\r\nmat : Balotelly\r\nColor : White, Peach, Blue, Dusty'),(23,'Jacket Panda',85000,1,'23.jpg','Size Fit to L\r\nmat : Katun\r\nColor : White'),(24,'Tube Blouse',90000,1,'24.jpg','Size Fit to L\r\nmat : Wolfice\r\nColor : All in Pict'),(25,'Uttu Blouse',95000,1,'25.jpg','Size Fit to L\r\nmat : Balotelly\r\nColor : Black, White'),(26,'Maika Blouse',95000,1,'26.jpg','Size Fit to L\r\nmat : Balotelly mix Mutiara\r\nColor : Grey'),(27,'FLSHVN',65000,1,'27.jpg','Size : Allsize\r\nmat : Babyterry\r\nColor : Marooon'),(28,'Pompom Outer',90000,1,'28.jpg','Size Fit to L\r\nmat : Katun Salur mix pompom\r\nColor : All in Pict'),(29,'Universe Sweater',85000,1,'29.jpg','Size : Allsize\r\nmat : Flecee'),(30,'Snoopy Sweater',80000,1,'30.jpg','Size : Allsize\r\nmat : Babyterry\r\n'),(31,'Maurin Set 2in1',120000,1,'31.jpg','Size : M-XXL\r\nmat : Tunik Pants Balotelly\r\nColor : Navy, Milo'),(32,'Lexsa Blouse Burbery',95000,1,'32.jpg','Size Fit to L\r\nmat : Balotelly\r\nColor : Marooon, Black, White, Mil'),(33,'Fannia Set Dress',120000,1,'33.jpg','Size Fit to L\r\nmat : innner+overal wolfice, aplikasi lasercut\r\nColor : Rose, Navy, Marooon, Salmon'),(34,'Jacket Rubby',105000,1,'34.jpg','Size Fit to L\r\nColor : Grey'),(35,'Sushi Sweater',65000,1,'35.jpg','Size : Allsize\r\nmat : Babyterry'),(36,'Oreo Sweater',90000,1,'36.jpg','Size : Allsize\r\nmat : fleace aplikasi sablon\r\nColor : Pink, Black, White'),(37,'Blesser Overall 2in1',115000,1,'37.jpg','Size Fit to L\r\nmat : Balotelly innner Wlfis\r\nColor : Navy'),(38,'Natasha Jumpsuit',90000,1,'38.jpg','Size Fit to L\r\nmat : Balotelly\r\nColor : Black'),(39,'Flamingo Bomber Jacket',100000,1,'39.jpg','Size Fit to L\r\nmat : Lotto\r\nColor : White, Black, Rose'),(40,'Widya Top',85000,1,'40.jpg','Size Fit to L\r\nmat : Wolfis\r\nColor : Cream, Silver, bw');
/*!40000 ALTER TABLE `produk` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-07  7:23:30
