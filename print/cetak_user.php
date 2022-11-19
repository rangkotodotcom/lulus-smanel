<?php

session_start();

if(!isset($_SESSION['user'])){
	echo"
			<script>
				alert('Anda Belum Login. Silahkan Login Dahulu!!!');
				document.location.href = '../index.php';
			</script>
		";
}else{

require_once __DIR__ . '/../vendor/autoload.php';
include '../conn.php';
include '../functions.php';

$sql = mysqli_query($conn, "SELECT * FROM t_luser WHERE level = 'siswa' ");

$mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A4-P', 'margin_left' => 25, 'margin_right' =>25]);

$html = '<!DOCTYPE html>
<html>
<head>
	<title>Daftar Username Siswa</title>
</head>
<body>
	<div class="header">
		<center>
			<table style="text-align:center; width:100%; border-bottom:2px solid;">
				<tr>
					<td align="center"><img src="../img/tetap/prov.png" width="70"/></td>
					<td style="font-size:16px;">
					PEMERINTAH PROVINSI SUMATERA BARAT<br>
					<span style="font-size:14px;">DINAS PENDIDIKAN</span><br>
					<span style="font-size:18x;">SMAN 1 ENAM LINGKUNG</span><br>
					KABUPATEN PADANG PARIAMAN<br>
					</td>
					<td align="center"><img src="../img/tetap/pdd.png" width="80"/></td>
				</tr>
				<tr>
					<td colspan="3" style="font-size:10px; text-align:center;">Alamat : jl. Raya Padang-Bukittinggi KM. 40, Parit Malintang  Telp : 0751-96318 </td>
				</tr>
			</table>
		</center>

	</div>

	<div class="content">

		<h3 style="text-align:center;"><u>Daftar Username Siswa</u></h3><br>

		<table width="100%" cellspacing="0" cellpadding="3" border="1" style="text-align:center; border:2px solid;">
			<tr style="background-color:#ADD8E6;">
				<th>No</th>
				<th>Nama</th>
				<th>Username</th>
				<th>Password</th>
			</tr>';

			$i=1;
			while($data = mysqli_fetch_assoc($sql)) {
			
			$html.= '<tr>
						<td>'. $i++ .'</td>
						<td align="left">'. $data["nama"] .'</td>
						<td>'. $data["user"] .'</td>
						<td>'. $data["pass"] .'</td>
					</tr>';

			}

		$html.= '</table>
		<p>Siswa yang sudah mendapatkan Username dan Password nya, Silahkan Login pada laman <b><i>http://pengumuman.sman1el.sch.id</i></b> menggunakan Username dan Password masing-masing.</p><br><br>
	</div>
	<div class="footer">
		<table style="text-align:center; width:100%; ">
			<tr>
				<td align="left" style="padding-left:370px;">';
				$html.= 
					'<p>Parit Malintang, '. tanggal(date('j F Y')) .'<br>
					Kepala Sekolah,</p><br><br><br><br><br>
					<p><b>ERNAWATI, S.Pd, MM, M.Si</b><br>NIP. 19630210 198803 2 003</p>
				</td>
			</tr>
		</table>
	</div>

</body>
</html>
';

$mpdf->SetHTMLFooter('
<table width="100%" style="border-top:1px solid; font-size:10px;">
    <tr>
        <td width="37%">Dicetak oleh <i>'. $_SESSION[user] .'</i></td>
        <td width="27%" align="center">SMAN 1 Enam Lingkung</td>
        <td width="37%" align="right">{PAGENO}/{nbpg}</td>
    </tr>
</table>');

$mpdf->WriteHTML($html);
$mpdf->Output('Daftar Username Siswa.pdf', 'I');

mysqli_query($conn, "INSERT INTO t_history VALUES('', 'cetak user', '$_SESSION[user]', NULL) ");

}

?>