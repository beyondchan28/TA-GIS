<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">

    <link href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css" rel="stylesheet">

    <!-- Bootstrap core JavaScript-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>

    <script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>

    <title>Document</title>
</head>

<body>
<?php
session_start();
echo 'Anda masuk sebagai <strong>Admin</strong>';
 
echo '<p><a href="logout.php">logout</a></p>';
?>
    <div class="container">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
                <tr>
                    <th>ID </th>
                    <th>Nama Bengkel</th>
                    <th>Alamat</th>
                    <th>Telepon</th>
                    <th>Longitude</th>
                    <th>Latitude</th>
                    <th>Tipe Bengkel</th>
                    <th>Edit</th>
                    <th>Hapus</th>
                </tr>
            </thead>
            <tbody>
                <?php
                include "koneksi.php";
                $sql = mysqli_query($con, "SELECT * FROM datasemuabengkel") or die(mysqli_error($con));

                while ($data = mysqli_fetch_array($sql)) {
                    echo '
						<tr><th>' . $data['id_bengkel'] . '</th>
							<td>' . $data['nama'] . '</td>
							<td>' . $data['alamat'] . '</td>
							<td>' . $data['telepon'] . '</td>
							<td>' . $data['longitude'] . '</td>
                            <td>' . $data['latitude'] . '</td>
                            <td>' . $data['tipe'] . '</td>
							<td><a href="edit.php?id=' . $data['id_bengkel'] . '" class="btn btn-warning btn-sm"><i class="fas fa-pencil-alt"></i></a></td>
							<td><a href="delete.php?id=' . $data['id_bengkel'] . '" class="btn btn-danger btn-sm" onclick="return confirm(\'Yakin ingin menghapus data ini?\')"><i class="fas fa-backspace"></i></a></td>
						';
                }
                ?>
            </tbody>
            <script>
            $(document).ready(function() {
                $('#dataTable').DataTable();
            });
            </script>
            <script>
            $(function() {
                $('#dataTable').DataTable({
                    "pageLength": 3,
                    "paging": true,
                    "lengthChange": false,
                    "searching": false,
                    "ordering": true,
                    "info": true,
                    "autoWidth": false
                });
            });
            </script>
        </table>
    </div>

</body>

</html>