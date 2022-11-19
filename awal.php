<?php 

include 'conn.php';


if(isset($_POST['klik'])){
	$pass = password_hash('admin', PASSWORD_DEFAULT);

	$awal = mysqli_query($conn, "INSERT INTO t_luser VALUES('Admin', '', 'admin', '$pass', 'non-aktif', 'admin', 'belum') ");

	if($awal){
		echo "
		<script>
			alert('OK');
		</script>
		";
	}else{
		echo "
		<script>
			alert('KO');
		</script>
		";
	}
}
 ?>

 <!DOCTYPE html>
 <html>
 <head>
 	<title>Admin</title>
 </head>
 <body>
 	<form action="" method="post">
 		<button name="klik" type="submit">klik</button>
 	</form>
 </body>
 </html>