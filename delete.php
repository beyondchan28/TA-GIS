<?php

require("koneksi.php");
$id1 = $_REQUEST['id_del'];

$query1 = "DELETE FROM datasemuabengkel WHERE id_bengkel=".$id1;
$sql2 = mysqli_query($con, $query1);

header('Location: http://localhost/TA-GIS/admin.php');
die();

 ?>
