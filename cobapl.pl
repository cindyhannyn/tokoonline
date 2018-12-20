#!"C:\xampp\apache\perl\bin\perl.exe" 
print "Content-type:text/html\r\n\r\n";
use strict;
use CGI;

print"
<!DOCTYPE html>
<html>
<head>
	<title>srningsih_allshop</title>
	<style type="text/css">
		body{
		background-image: url("moonland.png");
		background-size: 60%; }
	</style>
	<link rel="stylesheet" href="admin/assets/css/bootstrap.css">
</head>
<body>
 
<?php include 'menu.php';?>
 

</body>
</html>"
