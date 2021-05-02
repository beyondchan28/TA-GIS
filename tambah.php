<?php
include "koneksi.php";
$nama = $_POST['nama'];
$alamat = $_POST['alamat'];
$telepon = $_POST['telepon'];
$longitude = $_POST['longitude'];
$latitude = $_POST['latitude'];
$keterangan = $_POST['Keterangan'];

$query="INSERT INTO datasemuabengkel (nama, alamat, telepon, longitude, latitude, keterangan)
VALUES('".$nama."', '".$alamat."','".$telepon."', '".$longitude."','".$latitude."', '".$keterangan."')";
$result = $con->query($query);
header('location: http://localhost/index.php');
die();
