<?php
session_start();
require 'koneksi.php'; // menyisipkan file koneksi
 
if (isset($_POST['username'])) { // check apakah ada pengiriman data
    $username = $_POST['username'];
    $password = $_POST['password'];
 
 
    $sql = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
 
    $query = $con->query($sql);
 
    if ($query->num_rows > 0) { // jika datanya ada
        $row = $query->fetch_assoc();
        $_SESSION['username'] = $row['username']; // menyimpan nama yang login pada session
        header("Location: admin.php");

 
    } else { // jika datanya tidak ada
        echo "<script>alert('Username & Password Salah !!!'); window.location.href='index.php'</script>";
    }
    exit();
}
?>