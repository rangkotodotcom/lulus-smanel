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

$kd = base64_decode(@$_GET['user']);
$sql = mysqli_query($conn, "SELECT * FROM t_ld_siswa WHERE no_pes = '$kd' ");
$sql1 = mysqli_query($conn, "SELECT * FROM t_ln_siswa WHERE no_pes = '$kd' ");
$data = mysqli_fetch_assoc($sql);
$data1 = mysqli_fetch_assoc($sql1);

$bin = $data1['bin'];
$bing = $data1['bing'];
$mat = $data1['mat'];
$pil = $data1['pil'];
$ket = $data1['ket'];

$total = $bin + $bing + $mat + $pil ;
$rata_rata = $total/ 4 ;


$mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A4-P', 'margin_left' => 25, 'margin_right' =>25]);

$mpdf->SetWatermarkImage('../img/tetap/bg.png');
$mpdf->showWatermarkImage = true;
$mpdf->watermarkImageAlpha = 0.1;

$html = '<!DOCTYPE html>
<html>
<head>
	<title>Surat Keterangan Lulus</title>
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
		<h2 align="center"><u><b>SURAT KETERANGAN</b></u><br><span style="font-size:12px;">NOMOR:543/765/SMA 01/EL/2019</span></h2>
		<p style="font-size:13px;">Yang bertanda tangan dibawah ini, Kepala SMA Negeri 1 ENAM LINGKUNG , Kabupaten Padang Pariaman, Provinsi Sumatera Barat dengan ini menerangkan bahwa </p><br>
			<table width="90%" style="font-size:13px; padding-left:50px;">
				<tr>
					<td>Nama</td>
					<td> : </td>';
					$html .=' 
					<td>'. $data["nama"] .'</td>
				</tr>
				<tr>
					<td>NIS / NISN</td>
					<td> : </td>';
					$html .=' 
					<td>'. $data["nis"] .' / '. $data["nisn"] .'</td>
				</tr>
				<tr>
					<td>Nomor Peserta</td>
					<td> : </td>';
					$html .=' 
					<td>'. $data["no_pes"] .'</td>
				</tr>
				<tr>
					<td>Kelas / Jurusan</td>
					<td> : </td>';
					$html .=' 
					<td>'. $data["kelas"] .'</td>
				</tr>
			</table><br>

			<p align="justify">Berdasarkan Hasil Ujian Nasional Berbasis Komputer (UNBK) yang dilaksanakan pada Tanggal 1,2,4 dan 8 April 2018 dan Pelaksanaan Ujian Sekolah Berbasis Nasional (USBN-BK) serta (USBN-KP) yang dilaksanakan pada tanggal 13 s/d 27 Maret 2019. Keputusan Rapat Dinas Pimpinan Sekolah dan Majelis Guru tentang Kelulusan Siswa Kelas XII Tahun Pelajaran 2018/2019 Pada tanggal 13 Mei 2019 dengan ini menyatakan yang namanya tersebut di atas : </p>

			<h2 align="center" style="font-family:all;">'; $html .='<b>" '.$ket.' "</b></h2>
			<p align="justify">Demikian surat keterangan ini kami berikan untuk dapat dipergunakan oleh yang bersangkutan seperlunya, terima kasih.</p>

	</div><br>

	<div class="footer">
		<table style="text-align:center; width:100%; ">
			<tr>';
			$html .=' 
				<td align="left" style="padding-left:220px;">
					<img src="../img/siswa/'. $data["foto"] .'" width="110" />
				</td>
				<td align="left" style="padding-left:2px;">
					<img src="../img/tetap/ttd.png" width="250" />
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
        <td width="37%"><i>'. $data["nama"] .'</i></td>
        <td width="27%" align="center">SMAN 1 Enam Lingkung</td>
        <td width="37%" align="right"><i>'. $data["nisn"] .'</i></td>
        
    </tr>
</table>');

$mpdf->WriteHTML($html);
$mpdf->Output('SKL_'.$data["nama"].'.pdf', 'I');

mysqli_query($conn, "INSERT INTO t_history VALUES('', 'cetak skl', '$_SESSION[user]', NULL) ");

}

?>