<?php 

session_start();

include '../conn.php';

if(!isset($_SESSION['user'])){
	echo"
			<script>
				alert('Anda Belum Login. Silahkan Login Dahulu!!!');
				document.location.href = '../index.php';
			</script>
		";
}else{

$kd = base64_decode(@$_GET['user']);
$sql = mysqli_query($conn, "SELECT * FROM t_luser WHERE user = '$kd' ");
$data = mysqli_fetch_assoc($sql);

	if($data['email'] == ''){

 ?>

<!DOCTYPE html>
<html>
<head>
	<title>Pengumuman Kelulusan SMAN 1 Enam Lingkung</title>
	<link rel="icon" type="img/jpg" href="../img/tetap/icon.png">
	<link href="../css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-image: url(../img/tetap/back.png);">
	<div style="width: 400px; padding-top: 10%;" class="container">
		<center>
			<div class="panel panel-info">
				<div class="panel-heading">
					<h4>Daftarkan Email Anda</h4>
				</div>
				<div class="panel-body">
					<form action="" method="post">
						<div class="form-group">
							<label for="email">Masukan Email</label>
							<input type="email" name="email" id="email" class="form-control" required >
						</div>
						<button name="simpan" class="btn btn-success btn-md">
							<span class="glyphicon glyphicon-saved"></span> Simpan
						</button>
						<button type="reset" class="btn btn-danger btn-md">
							<span class="glyphicon glyphicon-repeat"></span> Reset
						</button>
						<a href="../logout.php" class="btn btn-warning btn-md">
							<span class="glyphicon glyphicon-remove"></span> Batal
						</a>

						
					</form>
				</div>
				<div class="panel-footer">
					Jangan Terlalu Lama Berpikir
				</div>
			</div>
		</center>
	</div>

	
	<?php

	$email = @$_POST['email'];

	if(isset($_POST['simpan'])){
		$cek_email = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM t_luser WHERE email = '$email' "));

		if($cek_email < 1){
			$query = mysqli_query($conn, "UPDATE t_luser SET email = '$email' WHERE user = '$kd' ");

			if($query){
				ini_set( 'display_errors', 1 );   
				error_reporting( E_ALL );

				$from = "Super Admin Web Kelulusan SMAN 1 Enam Lingkung<info@pengumuman.sman1el.sch.id>";    
				$to = $email;
				$subject = "Pendaftaran Email";
				$message = "Email anda sudah terdaftar di Web Kelulusan SMAN 1 Enam Lingkung";  
				$headers = 'MIME-Version: 1.0' . "\r\n";

				$lf= strtoupper(substr(PHP_OS, 0, 3)) == 'WIN'?"\r\n":"\n";

				$headers .= "From: $from" .$lf;
				$headers .= "Date: ".date('r') .$lf; 
				$headers .= "X-Mailer: PHP" .$lf; 
				$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n"; 

				$mail = mail($to,$subject,$message, $headers);

				echo "
						<script>
							window.location.href = '../beranda.php';
						</script>
					 ";
			}else{
				echo "
						<script>
							alert('Email Gagal Didaftarkan');
							window.location.href='?user=".base64_encode($_SESSION['user'])."';
						</script>
					 ";
			}

		}else{
			echo "
					<script>
						alert('Email tersebut Sudah pernah didaftarkan');
						window.location.href='?user=".base64_encode($_SESSION['user'])."';
					</script>
				 ";
		}

	}
	
	 ?>

<script type="text/javascript">
  var message="Oopss,, Sorry Nggak Bisa !";
  function clickIE4(){
    if(event.button==2){
      alert(message);
      return false;
    }
  }
  function clickNS4(e){
    if(document.layers||document.getElementById&&!document.all){
      if(e.which==2||e.which==3){
        alert(message);
        return false;
      }
    }
  }
  if(document.layers){
    document.captureEvents(Event.MOUSEDOWN);
    document.onmousedown=clickNS4;
  }else if(document.all&&!document.getElementById){
    document.onmousedown=clickIE4;
  }
  document.oncontextmenu=new Function("alert(message);return false");
</script>

</body>
</html>

	<?php }else{
		echo "<script>
				window.location.href = '../beranda.php';
			</script>";
	}

} ?>