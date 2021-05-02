<?php

include "koneksi.php"; // Using database connection file here

$id = $_GET['id']; // get id through query string

$qry = mysqli_query($con,"select * from datasemuabengkel where id='$id'"); // select query

$data = mysqli_fetch_array($qry); // fetch data

if(isset($_POST['update'])) // when click on Update button
{
    $nama = $_POST['nama'];
    $alamat = $_POST['alamat'];
    $telepon = $_POST['telepon'];
    $website = $_POST['website'];
    $longitude = $_POST['longitude'];
    $latitude = $_POST['latitude'];
	
    $edit = mysqli_query($con,"update datasemuabengkel set nama='$nama', alamat='$alamat', telepon='$telepon', longitude='$longitude', latitude='$latitude', keterangan='$keterangan'");
	
    if($edit)
    {
        header("location:all_records.php");
        exit;
    }
}
?>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Form Login</title>
        <link rel="canonical" href="index.php">
        <!-- Bootstrap core CSS -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="#" rel="stylesheet">
    </head>
    <body class="text-left">
        <div class="container">
            <div class="row">
                <div class="col-4">
                <h2>Update Data Lokasi</h2>
                <br>
                <form method = "POST">
                    <div class="mo-3">
                    <label class = "form-label">Nama Lokasi</label>
                    <div class="col-sm-10">
                    <input type="text" name = "nama" class="form-control form-control-sm">
                    </div>
                    </div>
                    <div class="mo-3">
                    <label class = "form-label">Alamat</label>  
                    <div class="col-sm-10">
                    <textarea name = "alamat" class="form-control form-control-sm"></textarea>
                    </div>
                    <div class="mo-3">
                    <label class="form-label">No.Telepon</label>
                    <div class="col-sm-10">
                    <input type="text" name ="telepon" class="form-control form-control-sm">
                    </div>
                    </div>
                    <div class="mo-3">
                    <label class = "form-label">Longitude</label>
                    <div class="col-sm-10">
                        <input type="text" name = "lng" class="form-control form-control-sm">
                    </div>
                    </div>
                    <div class="mo-3">
                    <label class = "form-label">Latitude</label>
                    <div class="col-sm-10">
                        <input type="text" name = "lat" class="form-control form-control-sm">
                    </div>
                    </div>
                    <div class="mo-3">
                    <label class = "form-label">Keterangan</label>
                    <div class="col-sm-10">
                        <input type="text" name = "keterangan" class="form-control form-control-sm">
                    </div>
                    </div>
                <button type="submit" name="update" value="Update">SUBMIT</button>
                </form>
                </div>
            </div>
        </div>
</body>
</html>