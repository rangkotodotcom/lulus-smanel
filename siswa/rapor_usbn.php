<?php 

$kd = base64_decode(@$_GET['user']);
$sql = mysqli_query($conn, "SELECT * FROM t_n_rapor WHERE no_pes = '$kd' ");
$sql1 = mysqli_query($conn, "SELECT * FROM t_n_sekolah WHERE no_pes = '$kd' ");
$sql2 = mysqli_query($conn, "SELECT * FROM t_luser WHERE user = '$kd' ");
$data = mysqli_fetch_assoc($sql);
$data1 = mysqli_fetch_assoc($sql1);
$data2 = mysqli_fetch_assoc($sql2);
	
?>

<fieldset>
	<legend style="font-size: 30px;"><b>Nilai Rapor dan USBN</b></legend>
	<div class="table-responsive">
		<table align="center" cellspacing="0" class="table table-bordered">
			<tr>
				<th rowspan="2" style="text-align: center; line-height: 50px;">Mata Pelajaran</th>
				<th colspan="2" style="text-align: center;">Nilai</th>
			</tr>
			<tr>
				<th style="text-align: center;">Rata-Rata Rapor</th>
				<th style="text-align: center;">Nilai USBN</th>
			</tr>
			<tr>
				<td>Pendidikan Agama</td>
				<td style="text-align: center;"><?= $data['pai']; ?></td>
				<td style="text-align: center;"><?= $data1['pai']; ?></td>
			</tr>
			<tr>
				<td>Pendidikan Pancasila</td>
				<td style="text-align: center;"><?= $data['ppkn']; ?></td>
				<td style="text-align: center;"><?= $data1['ppkn']; ?></td>
			</tr>
			<tr>
				<td>B. Indonesia</td>
				<td style="text-align: center;"><?= $data['ind']; ?></td>
				<td style="text-align: center;"><?= $data1['ind']; ?></td>
			</tr>
			<tr>
				<td>Matematika</td>
				<td style="text-align: center;"><?= $data['mtk']; ?></td>
				<td style="text-align: center;"><?= $data1['mtk']; ?></td>
			</tr>
			<tr>
				<td>Sejarah Indonesia</td>
				<td style="text-align: center;"><?= $data['sejind']; ?></td>
				<td style="text-align: center;"><?= $data1['sejind']; ?></td>
			</tr>
			<tr>
				<td>Bahasa Inggris</td>
				<td style="text-align: center;"><?= $data['ing']; ?></td>
				<td style="text-align: center;"><?= $data1['ing']; ?></td>
			</tr>
			<tr>
				<td>Seni Budaya</td>
				<td style="text-align: center;"><?= $data['senbud']; ?></td>
				<td style="text-align: center;"><?= $data1['senbud']; ?></td>
			</tr>
			<tr>
				<td>Pendidikan Jasmani</td>
				<td style="text-align: center;"><?= $data['pjok']; ?></td>
				<td style="text-align: center;"><?= $data1['pjok']; ?></td>
			</tr>
			<tr>
				<td>Prakarya dan Kewirausahaan</td>
				<td style="text-align: center;"><?= $data['pkwu']; ?></td>
				<td style="text-align: center;"><?= $data1['pkwu']; ?></td>
			</tr>
			<tr>
				<td>Matematika / Sejarah</td>
				<td style="text-align: center;"><?= $data['mat_sej']; ?></td>
				<td style="text-align: center;"><?= $data1['mat_sej']; ?></td>
			</tr>
			<tr>
				<td>Fisika / Ekonomi</td>
				<td style="text-align: center;"><?= $data['fis_eko']; ?></td>
				<td style="text-align: center;"><?= $data1['fis_eko']; ?></td>
			</tr>
			<tr>
				<td>Kimia / Sosiologi</td>
				<td style="text-align: center;"><?= $data['kim_sos']; ?></td>
				<td style="text-align: center;"><?= $data1['kim_sos']; ?></td>
			</tr>
			<tr>
				<td>Biologi / Geografi</td>
				<td style="text-align: center;"><?= $data['bio_geo']; ?></td>
				<td style="text-align: center;"><?= $data1['bio_geo']; ?></td>
			</tr>
			<tr>
				<td>Lintas Minat</td>
				<td style="text-align: center;"><?= $data['lm']; ?></td>
				<td style="text-align: center;"><?= $data1['lm']; ?></td>
			</tr>

		</table><br><br>
	</div>

			<?php
				$status = $data2['status'] == 'aktif';
				if($status){
				 ?>

				<a href="print/cetak_nilai.php?user=<?= base64_encode($_SESSION['user']); ?>" target="blank" class="btn btn-success btn-lg">
					<span class="glyphicon glyphicon-print"></span> Cetak Surat Capaian Kompetensi 
				</a>

			<?php }else{ ?>

				<a onclick="return confirm('Status Anda Belum Aktif. Silahkan Hubungi Admin')" href="?page=<?= base64_encode("rapor_usbn"); ?>&user=<?= base64_encode($_SESSION['user']);?>" class="btn btn-success btn-lg">
					<span class="glyphicon glyphicon-print"></span> Cetak Surat Capaian Kompetensi 
				</a>

			<?php } ?>

</fieldset>		