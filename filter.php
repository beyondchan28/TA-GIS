<?php
require "koneksi.php";

$result = $_GET['data'];
$query = "SELECT * FROM datasemuabengkel";
$sql = mysqli_query($con, $query);


if($result === "Mobil") {
    $query = "SELECT * FROM datasemuabengkel WHERE tipe='mobil'";
    $sql = mysqli_query($con, $query);
    header("Location: index.php");
}
else if($result === "Motor") {
    $query = "SELECT * FROM datasemuabengkel WHERE tipe='motor'";
    $sql = mysqli_query($con, $query);
    header("Location: index.php");
}
else if($result === "Sepeda") {
    $query = "SELECT * FROM datasemuabengkel WHERE tipe='sepeda'";
    $sql = mysqli_query($con, $query);
    header("Location: index.php");
}
else{
    $query = "SELECT * FROM datasemuabengkel";
    $sql = mysqli_query($con, $query);
    header("Location: index.php");
}
?>