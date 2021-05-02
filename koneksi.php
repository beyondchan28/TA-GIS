<?php

$server = "localhost";
$username = "root";
$pass = "";
$db = "peta";

$con = mysqli_connect($server,$username,$pass);
$db_=mysqli_select_db($con,$db);

if($con -> connect_errno){
    echo "koneksi gagal";
    exit();
}
?>
