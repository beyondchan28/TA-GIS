<?php 
session_start(); 
include "koneksi.php";

if (isset($_POST['username']) && isset($_POST['password'])) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$username = validate($_POST['username']);
	$password = validate($_POST['password']);
    $host=$_SERVER['HTTP_HOST'];
    $uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');

	if (empty($username)) {
		echo '<script>alert("Username atau Password Salah !!!"); window.location.href="index.php"</script>';
	}else if(empty($password)){
        echo '<script>alert("Username atau Password Salah !!!"); window.location.href="index.php"</script>';
	}else{
		$sql = "SELECT * FROM user WHERE username='$username' AND password='$password'";

		$result = mysqli_query($con, $sql);

		if (mysqli_num_rows($result) === 1) {
			$row = mysqli_fetch_assoc($result);
            if ($row['username'] === $username && $row['password'] === $password) {
            	$_SESSION['username'] = $row['username'];
            	header("location:http://$host$uri/$extra");
		        exit();
            }else{
                echo '<script>alert("Username atau Password Salah !!!"); window.location.href="index.php"</script>';
            }
		}
	}
	
}
