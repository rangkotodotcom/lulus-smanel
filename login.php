<?php

session_start();

include 'conn.php';
include 'functions.php';

if(isset($_SESSION['user'])){
	echo "<script>window.location='beranda.php'</script>";
}

$_SESSION['n1'] = rand(1,9);
$_SESSION['n2'] = rand(1,9);
$_SESSION['hasil'] = ($_SESSION['n1']+$_SESSION['n2']);
$_SESSION['hasil2'] = ($_SESSION['n2']+$_SESSION['n1']);

$akses = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM t_izin_login "));

?>

<!DOCTYPE html>
<html>
<head>
	<title>Login | Pengumuman Kelulusan SMAN 1 ENAM LINGKUNG</title>
	<link rel="icon" type="img/jpg" href="img/tetap/icon.png">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/dscountdown.css" media="all">
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/dscountdown.min.js"></script>
	<script>
		jQuery(document).ready(function($){
				
			$('.buka').dsCountDown({
				endDate: new Date("<?= $data['waktu_mundur']; ?>"),
				theme: 'flat'
			});				
			
		});
	</script>

</head>
<body style="background-image: url(img/tetap/dark.png);">
	<div style="width: 450px; padding-top: 12%;" class="container">
		<center>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 style="font-size: 20px;"><b><marquee><?=  tanggal(date('D, j F Y')); ?></marquee></b></h4>
				</div>
				<div class="panel-body" style="height: 240px;">
					<div style="line-height: 170px;">
						<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#admin">
							<span class="glyphicon glyphicon-user"></span> Admin
						</button> &nbsp; &nbsp;
						<?php 

						if($akses['akses'] == 'buka'){

						 ?>

						<button class="btn btn-danger btn-lg" data-toggle="modal" data-target="#siswa">
							<span class="glyphicon glyphicon-user"></span> Siswa
						</button>

						<?php }else{ ?>

						<button class="btn btn-danger btn-lg" data-toggle="modal" data-target="#kunci">
							<span class="glyphicon glyphicon-user"></span> Siswa
						</button>

						<?php } ?>

					</div>	
						<button class="btn btn-default btn-md" data-toggle="modal" data-target="#lupa"> Lupa Password</button>
				</div>
				<div class="panel-footer">
					&copy 2018-2019 <i>
						<a href="https://facebook.com/jamilur.kotomambang" target="_blank" rel="noopener" style="color: black; text-decoration: none;">Kali</a>
					</i>
				</div>
			</div>
		</center>
	</div>

<!-- modal admin -->
	<div id="admin" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title" align="center"><b>Halaman Login Admin</b></h4>
				</div>
				<div class="modal-body">
					<form action="" method="post">
                        <div class="input-group" style="margin: 13px 0;">
                            <span class="input-group-addon">
                            	<i class="glyphicon glyphicon-user"></i>
                            </span>
                            <input type="text" name="user" class="form-control" placeholder="Username" required autocomplete="off">
                        </div>
                        <div class="input-group" style="margin: 13px 0;">
                            <span class="input-group-addon">
                            	<i class="glyphicon glyphicon-lock"></i>
                            </span>
                            <input type="password" name="pass" class="form-control" placeholder="Password">
                        </div>
                        <div class="input-group" style="margin: 13px 0;">
                            <span class="input-group-addon">
                            	<b>Berapa Hasil Dari <?= $_SESSION['n1'] ?> + <?= $_SESSION['n2'] ?></b>
                            </span>
                            <input type="text" name="cap" class="form-control" autocomplete="off" placeholder="Hasil">
                            <input type="hidden" name="cap2" value="<?= $_SESSION['hasil'] ?>">
                        </div>
                        <button name="login" class="btn btn-primary">
                        	<span class="glyphicon glyphicon-log-in"></span> Login
                        </button>
                        <button type="reset" class="btn btn-warning">
                        	<span class="glyphicon glyphicon-repeat"></span> Reset
                        </button>
                    </form>

                    <?php

					if(isset($_POST['login'])){
						$user = $_POST['user'];
						$pass = $_POST['pass'];
						$cap = $_POST['cap'];
						$cap2 = $_POST['cap2'];

						$data_user = mysqli_query($conn, "SELECT * FROM t_luser WHERE user = '$user' ");
						$r = mysqli_fetch_assoc($data_user);
						$nama = $r['nama'];
						$username = $r['user'];
						$password = $r['pass'];
						$status = $r['status'];
						$level = $r['level'];

						$cek = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM t_online WHERE user = '$user' "));
						$cek_user = $cek['user'];

						if($user == $cek_user){
							echo"
								<script>
								alert('User Tersebut Sudah Login');
								window.location.href='index.php';
								</script>
							";
						}else{

							if($user == $username){
								if(password_verify($pass, $password)){
									if($cap == $cap2){
										if($status == 'aktif'){

											$_SESSION['nama'] = $nama;
											$_SESSION['user'] = $username;
											$_SESSION['level'] = $level;

											if($user != 'admin'){

												mysqli_query($conn, "INSERT INTO t_online VALUES('$_SESSION[nama]', '$_SESSION[user]', '$_SESSION[level]', 'ONLINE', NULL) ");
											}

											echo"
												<script>
												document.location.href = 'beranda.php';
												</script>
											";
											}else{
												echo"
													<script>
													alert('User Anda Belum Aktif. Tunggu Beberapa Menit!');
													window.location.href='index.php';
													</script>
												";
											}
									}else{
										echo"
											<script>
											alert('Jawaban Anda Salah');
											window.location.href='index.php';
											</script>
										";
									}
								}else{
									echo"
										<script>
										alert('Password anda salah');
										window.location.href='index.php';
										</script>
									";
								}
							}else{
								echo"
									<script>
									alert('Username anda salah');
									window.location.href='index.php';
									</script>
								";
							}
						}
					}

					?>

				</div>
				<div class="modal-footer">
					<button class="btn btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
				</div>
			</div>
		</div>
	</div>
<!-- /.modal admin -->

<!-- modal siswa -->
	<div id="siswa" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title" align="center"><b>Halaman Login Siswa</b></h4>
				</div>
				<div class="modal-body">
					<form action="" method="post">
                        <div class="input-group" style="margin: 13px 0;">
                            <span class="input-group-addon">
                            	<i class="glyphicon glyphicon-user"></i>
                            </span>
                            <input type="text" name="user" class="form-control" placeholder="12-0xx-xxx-x" required autocomplete="off">
                        </div>
                        <div class="input-group" style="margin: 13px 0;">
                            <span class="input-group-addon">
                            	<i class="glyphicon glyphicon-lock"></i>
                            </span>
                            <input type="password" name="pass" class="form-control" placeholder="Password" required>
                        </div>
                        <div class="input-group" style="margin: 13px 0;">
                            <span class="input-group-addon">
                            	<b>Berapa Hasil Dari <?= $_SESSION['n2'] ?> + <?= $_SESSION['n1'] ?></b>
                            </span>
                            <input type="text" name="cap" class="form-control" autocomplete="off" placeholder="Hasil">
                            <input type="hidden" name="cap2" value="<?= $_SESSION['hasil2'] ?>">
                        </div>
                        <button name="login_s" class="btn btn-primary">
                        	<span class="glyphicon glyphicon-log-in"></span> Login
                        </button>
                        <button type="reset" class="btn btn-warning">
                        	<span class="glyphicon glyphicon-repeat"></span> Reset
                        </button>
                    </form>

                    <?php

					if(isset($_POST['login_s'])){
						$user = $_POST['user'];
						$pass = $_POST['pass'];
						$cap = $_POST['cap'];
						$cap2 = $_POST['cap2'];
						
						$data_user = mysqli_query($conn, "SELECT * FROM t_luser WHERE user = '$user' AND pass = '$pass' ");
						$r = mysqli_fetch_assoc($data_user);
						$nama = $r['nama'];
						$username = $r['user'];
						$password = $r['pass'];
						$level = $r['level'];

						$online = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM t_online WHERE level = 'siswa' " ) );

						$cek = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM t_online WHERE user = '$user' "));
						$cek_user = $cek['user'];

						if($user == $cek_user){
							echo"
								<script>
								alert('User Tersebut Sudah Login');
								window.location.href='index.php';
								</script>
							";
						}else{

							if($user == $username && $pass == $password ){
								if($cap == $cap2){
									if($online <= 125 ){

									$_SESSION['nama'] = $nama;
									$_SESSION['user'] = $username;
									$_SESSION['level'] = $level;

									mysqli_query($conn, "INSERT INTO t_online VALUES('$_SESSION[nama]', '$_SESSION[user]', '$_SESSION[level]', 'ONLINE', NULL) ");

									echo"
										<script>
										document.location.href = 'beranda.php';
										</script>
									";
									}else{
										echo"
											<script>
											alert('Harap Bersabar. Server Lagi Penuh');
											window.location.href='index.php';
											</script>
										";
									}
								}else{
									echo"
										<script>
										alert('Jawaban Anda Salah');
										window.location.href='index.php';
										</script>
									";
								}
							}else{
								echo"
									<script>
									alert('Username / password anda salah');
									window.location.href='index.php';
									</script>
								";
							}
						}
					}

					?>

				</div>
				<div class="modal-footer">
					<button class="btn btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
				</div>
			</div>
		</div>
	</div>
<!-- /.modal siswa -->

<!-- modal kunci -->
	<div id="kunci" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title" align="center"><b>Halaman Login Siswa</b></h4>
				</div>
				<div class="modal-body" style="height: 250px;">
					<!-- <p style="font-size: 30px;" align="center">
						Sabar Dulu Ya!!!<br>
						Akses Login Siswa Sementara Di Tutup<br>
						Akan Dibuka Kembali Setelah Pesan-pesan Berikut ini!!<br>
						Pantengin Terus Web Kita Ya!!
					</p> -->
					<table width="100%" align="center">
						<tr>
							<td colspan="2" align="center">
								<h1>Login Dibuka Dalam Waktu</h1>
							</td>
						</tr>
						<tr>
							<td>
								<div class="buka"></div>
							</td>
							<td>
								<img src="img/tetap/doraemon.gif" width="120px" align="right">
							</td>
						</tr>
					</table>
				</div>
				<div class="modal-footer">
					<button class="btn btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Tutup</button>
				</div>
			</div>
		</div>
	</div>
<!-- /.modal kunci -->

<!--  modal lupa -->
	<div id="lupa" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title" align="center"><b>Lupa Password</b></h4>
				</div>
				<div class="modal-body" style="height: 200px;">
					<div align="center" style="line-height: 150px;">
						<button class="btn btn-success btn-lg" data-toggle="modal" data-target="#lupa_admin">
							<span class="glyphicon glyphicon-user"></span> Admin
						</button> &nbsp; &nbsp;

						<button class="btn btn-warning btn-lg" data-toggle="modal" data-target="#lupa_siswa">
							<span class="glyphicon glyphicon-user"></span> Siswa
						</button>
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-danger btn-md" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Tutup</button>
				</div>
			</div>
		</div>
	</div>
<!-- /.modal lupa -->

<!--  modal lupa_siswa -->
	<div id="lupa_siswa" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title" align="center"><b>Lupa Password Siswa</b></h4>
				</div>
				<div class="modal-body" style="height: 150px;">
					<form action="" method="post">
						<div class="input-group" style="margin: 15px 0;">
                            <span class="input-group-addon">
                            	<i class="glyphicon glyphicon-user"></i>
                            </span>
                            <input type="text" name="user" class="form-control" placeholder="12-0xx-0xx-x" required autocomplete="off">
                        </div>
                        <button name="kirim_s" class="btn btn-primary">
                        	<span class="glyphicon glyphicon-send"></span> Kirim
                        </button>
					</form>
					<?php  

					if(isset($_POST['kirim_s'])){

						ini_set( 'display_errors', 1 );   
						error_reporting( E_ALL );

						$user = $_POST['user'];

						$cari_user = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM t_luser WHERE user = '$user' AND level = 'siswa' "));

						$sql = mysqli_query($conn, "SELECT * FROM t_luser WHERE user = '$user' AND level = 'siswa' ");
						$data = mysqli_fetch_assoc($sql);
						$nama = $data['nama'];
						$user = $data['user'];
						$email = $data['email'];

						if($email != ''){
						
							if($cari_user > 0){
								$pass = kodeAcak(8);

								$pasbar = mysqli_query($conn, "UPDATE t_luser SET pass = '$pass' WHERE user = '$user' ");

								if($pasbar){
									$from = "Super Admin Web Kelulusan SMAN 1 Enam Lingkung<info@pengumuman.sman1el.sch.id>";    
									$to = $email;
									$subject = "Reset Password";    
									$message = file_get_contents(__DIR__.'/pesan.html'); 
									$message = str_replace("%nama%", $nama, $message);
									$message = str_replace("%user%", $user, $message);
									$message = str_replace("%pass%", $pass, $message);  
									$headers = 'MIME-Version: 1.0' . "\r\n";

									$lf= strtoupper(substr(PHP_OS, 0, 3)) == 'WIN'?"\r\n":"\n";

									$headers .= "From: $from" .$lf;
									$headers .= "Date: ".date('r') .$lf; 
									$headers .= "X-Mailer: PHP" .$lf; 
									$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n"; 

									$mail = mail($to,$subject,$message, $headers); 
									if($mail){
										echo"
												<script>
													alert('Terima Kasih, Password Baru Anda Dikirim ke ".$email." ');
													window.location.href='index.php';
												</script>
											";
									}else{
										echo"
												<script>
													alert('Gagal Mengirim Email, Ulangi Lagi!!');
													window.location.href='index.php';
												</script>
											";
									}
								}else{
									echo"
										<script>
											alert('Gagal Terhubung, Coba Lagi Nanti.!!');
											window.location.href='index.php';
										</script>
									";
								}
							}else{
								echo"
									<script>
										alert('Username Anda Tidak Terdaftar. Mau Membobol Ya??');
										window.location.href='index.php';
									</script>
								";
							}
						}else{
							echo"
								<script>
									alert('Anda Belum Mendaftarkan Email, Daftarkan Email Dahulu.');
									window.location.href='index.php';
								</script>
							";
						}
					}

					 ?>
				</div>
				<div class="modal-footer">
					<button class="btn btn-danger btn-md" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Tutup</button>
				</div>
			</div>
		</div>
	</div>
<!-- /.modal lupa_siswa -->

<!--  modal lupa_admin -->
	<div id="lupa_admin" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title" align="center"><b>Lupa Password Admin</b></h4>
				</div>
				<div class="modal-body" style="height: 150px;">
					<form action="" method="post">
						<div class="input-group" style="margin: 15px 0;">
                            <span class="input-group-addon">
                            	<i class="glyphicon glyphicon-user"></i>
                            </span>
                            <input type="text" name="user" class="form-control" placeholder="Username" required autocomplete="off">
                        </div>
                        <button name="kirim" class="btn btn-primary">
                        	<span class="glyphicon glyphicon-send"></span> Kirim
                        </button>
					</form>
					<?php  

					if(isset($_POST['kirim'])){

						ini_set( 'display_errors', 1 );   
						error_reporting( E_ALL );

						$user = $_POST['user'];

						$cari_user = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM t_luser WHERE user = '$user' AND level = 'admin' "));

						$sql = mysqli_query($conn, "SELECT * FROM t_luser WHERE user = '$user' AND level = 'admin' ");
						$data = mysqli_fetch_assoc($sql);
						$nama = $data['nama'];
						$user = $data['user'];
						$email = $data['email'];

						if($email != ''){
						
							if($cari_user > 0){
								$pas = kodeAcak(8);
								$pass = password_hash($pas, PASSWORD_DEFAULT);

								$pasbar = mysqli_query($conn, "UPDATE t_luser SET pass = '$pass' WHERE user = '$user' ");

								if($pasbar){
									$from = "Super Admin Web Kelulusan SMAN 1 Enam Lingkung<info@pengumuman.sman1el.sch.id>";    
									$to = $email;
									$subject = "Reset Password";    
									$message = file_get_contents(__DIR__.'/pesan.html'); 
									$message = str_replace("%nama%", $nama, $message);
									$message = str_replace("%user%", $user, $message);
									$message = str_replace("%pass%", $pas, $message);  
									$headers = 'MIME-Version: 1.0' . "\r\n";

									$lf= strtoupper(substr(PHP_OS, 0, 3)) == 'WIN'?"\r\n":"\n";

									$headers .= "From: $from" .$lf;
									$headers .= "Date: ".date('r') .$lf; 
									$headers .= "X-Mailer: PHP" .$lf; 
									$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n"; 

									$mail = mail($to,$subject,$message, $headers); 
									if($mail){
										echo"
												<script>
													alert('Terima Kasih, Password Baru Anda Dikirim ke ".$email." ');
													window.location.href='index.php';
												</script>
											";
									}else{
										echo"
												<script>
													alert('Gagal Mengirim Email, Ulangi Lagi!!');
													window.location.href='index.php';
												</script>
											";
									}
								}else{
									echo"
										<script>
											alert('Gagal Terhubung, Coba Lagi Nanti.!!');
											window.location.href='index.php';
										</script>
									";
								}
							}else{
								echo"
									<script>
										alert('Username Anda Tidak Terdaftar. Mau Membobol Ya??');
										window.location.href='index.php';
									</script>
								";
							}
						}else{
							echo"
								<script>
									alert('Anda Belum Mendaftarkan Email, Daftarkan Email Dahulu.');
									window.location.href='index.php';
								</script>
							";
						}
					}

					 ?>
				</div>
				<div class="modal-footer">
					<button class="btn btn-danger btn-md" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Tutup</button>
				</div>
			</div>
		</div>
	</div>
<!-- /.modal lupa_admin -->


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