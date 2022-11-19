<?php

$kd = base64_decode(@$_GET['user']);
$sql = mysqli_query($conn, "SELECT * FROM t_ld_siswa WHERE no_pes = '$kd' ");
$data = mysqli_fetch_assoc($sql);

$foto_lama = $data['foto'];

 ?>

 <fieldset>
 	<legend>Upload Foto</legend>
 	<style>
 		form input[type=submit]{
 			width: 100px;
 			height: 25px;
 			cursor: pointer;
 		}

 	</style>

 	<form action="" method="post" enctype="multipart/form-data">
 		<div class="form-group" style="width: 35%;">
 			<input type="file" class="form-control" name="foto" required />
 		</div>

 		<button name="upload" class="btn btn-success btn-md">
 			<span class="glyphicon glyphicon-upload"></span> Upload
 		</button>
 		<a href="beranda.php" class="btn btn-warning btn-md">
 			<span class="glyphicon glyphicon-remove"></span> Batal
 		</a>

 		<br><br>
 		<p>Foto berekstensi jpg atau png dan berukuran 3x4 atau ukuran maksimal 100kb.</p>
 	</form><br><br>

 	<?php

	$valid_ext = array('jpg','jpeg','png');

	$file_name = @$_FILES['foto']['name'];
	$tmp_name = @$_FILES['foto']['tmp_name'];
	$size = @$_FILES['foto']['size'];
	
 	$pecah = explode('.', $file_name);
 	$ujung = end($pecah);
 	$ext = strtolower($ujung);
 	$tahun = date('Y');
 	$nama_file = $tahun . '_' . $kd . '.' . $ext;

 	if(isset($_POST['upload'])){

 		if($size < 100000){

 			if(in_array($ext, $valid_ext)){

 				unlink('img/siswa/' .$foto_lama);

 				$upload = move_uploaded_file($tmp_name, "img/siswa/".$nama_file);	

		 		if($upload){
		 			mysqli_query($conn, "UPDATE t_ld_siswa SET foto = '$nama_file' WHERE no_pes = '$kd' " );

			 			echo "<script>
								alert('Foto Sudah Di Simpan');
								document.location.href = '?page=".base64_encode("upload_foto")."&user=".base64_encode($_SESSION['user'])."';
							</script>
							";
		 			}else{
		 				echo "<script>
								alert('Foto Gagal Di Simpan');
								document.location.href = '?page=".base64_encode("upload_foto")."&user=".base64_encode($_SESSION['user'])."';
							</script>
							";
		 			}
			 	}else{
			 		echo "<script>
							alert('Ekstensi File tidak Di izinkan');
							window.location.href='?page=".base64_encode("upload_foto")."&user=".base64_encode($_SESSION['user'])."';
						</script>
						";
			 	}
	 		}else{
	 			echo "<script>
						alert('Ukuran File Terlalu Besar');
						window.location.href='?page=".base64_encode("upload_foto")."&user=".base64_encode($_SESSION['user'])."';
					</script>
						";
	 		}

	 		
 	}

 	 ?>

 </fieldset>