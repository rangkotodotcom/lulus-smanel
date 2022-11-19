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
$sql2 = mysqli_query($conn, "SELECT * FROM t_n_sekolah WHERE no_pes = '$kd' ");
$sql3 = mysqli_query($conn, "SELECT * FROM t_n_sekolah WHERE no_pes = '$kd' ");
$data = mysqli_fetch_assoc($sql);
$data1 = mysqli_fetch_assoc($sql1);
$data2 = mysqli_fetch_assoc($sql2);
$data3 = mysqli_fetch_assoc($sql3);

$bin = $data1['bin'];
$bing = $data1['bing'];
$mat = $data1['mat'];
$pil = $data1['pil'];
$ket = $data1['ket'];

$total_un = $bin + $bing + $mat + $pil ;
$rata_rata_un = $total_un/ 4 ;

$pai_r = $data2['pai'];
$ppkn_r = $data2['ppkn'];
$ind_r = $data2['ind'];
$mtk_r = $data2['mtk'];
$sejind_r = $data2['sejind'];
$ing_r = $data2['ing'];
$senbud_r = $data2['senbud'];
$pjok_r = $data2['pjok'];
$pkwu_r = $data2['pkwu'];
$mat_sej_r = $data2['mat_sej'];
$fis_eko_r = $data2['fis_eko'];
$kim_sos_r = $data2['kim_sos'];
$bio_geo_r = $data2['bio_geo'];
$lm_r = $data2['lm'];

$total_r = $pai_r + $ppkn_r + $ind_r + $mtk_r + $sejind_r + $ing_r + $senbud_r + $pjok_r + $pkwu_r + $mat_sej_r + $fis_eko_r + $kim_sos_r + $bio_geo_r + $lm_r ;

$rata_rata_r = $total_r/14;

$pai_us = $data3['pai'];
$ppkn_us = $data3['ppkn'];
$ind_us = $data3['ind'];
$mtk_us = $data3['mtk'];
$sejind_us = $data3['sejind'];
$ing_us = $data3['ing'];
$senbud_us = $data3['senbud'];
$pjok_us = $data3['pjok'];
$pkwu_us = $data3['pkwu'];
$mat_sej_us = $data3['mat_sej'];
$fis_eko_us = $data3['fis_eko'];
$kim_sos_us = $data3['kim_sos'];
$bio_geo_us = $data3['bio_geo'];
$lm_us = $data3['lm'];

$total_us = $pai_us + $ppkn_us + $ind_us + $mtk_us + $sejind_us + $ing_us + $senbud_us + $pjok_us + $pkwu_us + $mat_sej_us + $fis_eko_us + $kim_sos_us + $bio_geo_us + $lm_us ;

$rata_rata_us = $total_us/14;

$mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'Folio-P', 'margin_left' => 10, 'margin_right' => 10, 'margin_top' => 2, 'margin_bottom' => 0, 'margin-footer' => 0]);

$mpdf->SetWatermarkImage('../img/tetap/bg.png');
$mpdf->showWatermarkImage = true;
$mpdf->watermarkImageAlpha = 0.2;

$html = '<!DOCTYPE html>
<html>
<head>
	<title>Surat Keterangan Capaian Kompetensi</title>
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
		<h3 align="center"><u><b>SURAT KETERANGAN CAPAIAN KOMPETENSI</b></u><br><span style="font-size:12px;">NOMOR:543/765/SMA 01/EL/2019</span></h3>
		<p style="font-size:13px;">Yang bertanda tangan dibawah ini, Kepala SMA Negeri 1 ENAM LINGKUNG , Kabupaten Padang Pariaman, Provinsi Sumatera Barat dengan ini menerangkan bahwa </p>
			<table width="90%" style="font-size:12px; padding-left:50px;">
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
			</table>

			<p align="justify" style="margin:0">A. Capaian Rata-Rata Nilai Rapor dan Nilai Ujian sekolah (USBN-BK & KP) Sebagai Berikut :</p>

			<table width="100%" cellspacing="0" cellpadding="1" border="1" style="text-align:center; border:2px solid;">
				<tr style="background-color:#d3d3d3">
					<th rowspan="2" style="text-align: center; line-height: 50px;">No</th>
					<th rowspan="2" style="text-align: center; line-height: 50px;">Mata Pelajaran</th>
					<th colspan="2" style="text-align: center;">Nilai</th>
				</tr>
				<tr style="background-color:#d3d3d3">
					<th style="text-align: center;">Rata-Rata Rapor</th>
					<th style="text-align: center;">Ujian Sekolah</th>
				</tr>
				<tr style="background-color:#d3d3d3">
					<td colspan="2" style="font-weight:bold;" align="left">Kelompok A (Umum)</td>
					<td>SMT 1-5</td>
					<td>USBN-BK & KP</td>
				</tr>
				<tr>
					<td>1</td>
					<td align="left">Pendidikan Agama dan Budi Pekerti</td>
					<td>'. $pai_r .'</td>
					<td>'. $pai_us .'</td>
				</tr>
				<tr>
					<td>2</td>
					<td align="left">Pendidikan Pancasila dan Kewarganegaraan</td>
					<td>'. $ppkn_r .'</td>
					<td>'. $ppkn_us .'</td>
				</tr>
				<tr>
					<td>3</td>
					<td align="left">Bahasa Indonesia</td>
					<td>'. $ind_r .'</td>
					<td>'. $ind_us .'</td>
				</tr>
				<tr>
					<td>4</td>
					<td align="left">Matematika</td>
					<td>'. $mtk_r .'</td>
					<td>'. $mtk_us .'</td>
				</tr>
				<tr>
					<td>5</td>
					<td align="left">Sejarah Indonesia</td>
					<td>'. $sejind_r .'</td>
					<td>'. $sejind_us .'</td>
				</tr>
				<tr>
					<td>6</td>
					<td align="left">Bahasa Inggris</td>
					<td>'. $ing_r .'</td>
					<td>'. $ing_us .'</td>
				</tr>
				<tr style="background-color:#d3d3d3">
					<td colspan="2" style="font-weight:bold;" align="left">Kelompok B (Umum)</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>1</td>
					<td align="left">Seni Budaya</td>
					<td>'. $senbud_r .'</td>
					<td>'. $senbud_us .'</td>
				</tr>
				<tr>
					<td>2</td>
					<td align="left">Pendidikan Jasmani, Olahraga dan Kesehatan</td>
					<td>'. $pjok_r .'</td>
					<td>'. $pjok_us .'</td>
				</tr>
				<tr>
					<td>3</td>
					<td align="left">Prakarya dan Kewirausahaan</td>
					<td>'. $pkwu_r .'</td>
					<td>'. $pkwu_us .'</td>
				</tr>
				<tr style="background-color:#d3d3d3">
					<td colspan="2" style="font-weight:bold;" align="left">Kelompok C (Peminatan)</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>1</td>
					<td align="left">Matematika / Sejarah</td>
					<td>'. $mat_sej_r .'</td>
					<td>'. $mat_sej_us .'</td>
				</tr>
				<tr>
					<td>2</td>
					<td align="left">Fisika / Ekonomi</td>
					<td>'. $fis_eko_r .'</td>
					<td>'. $fis_eko_us .'</td>
				</tr>
				<tr>
					<td>3</td>
					<td align="left">Kimia / Sosiologi</td>
					<td>'. $kim_sos_r .'</td>
					<td>'. $kim_sos_us .'</td>
				</tr>
				<tr>
					<td>4</td>
					<td align="left">Biologi / Geografi</td>
					<td>'. $bio_geo_r .'</td>
					<td>'. $bio_geo_us .'</td>
				</tr>
				<tr>
					<td>5</td>
					<td align="left">Lintas Minat</td>
					<td>'. $lm_r .'</td>
					<td>'. $lm_us .'</td>
				</tr>
				<tr style="background-color:#d3d3d3; font-weight:bold;">
					<td colspan="2" style="font-weight:bold;">RATA - RATA</td>
					<td>'. $rata_rata_r .'</td>
					<td>'. $rata_rata_r .'</td>
				</tr>
			</table>

			<p align="justify" style="margin:0">B. Capaian Hasil Ujian Nasional Berbasis Komputer (UNBK) Sebagai Berikut :</p>

			<table width="100%" cellspacing="0" cellpadding="1" border="1" style="text-align:center; border:2px solid;">
				<tr style="background-color:#d3d3d3">
					<th style="text-align: center;">No</th>
					<th style="text-align: center;">Mata Pelajaran</th>
					<th style="text-align: center;">Nilai UNBK</th>
					<th style="text-align: center;">Rata-Rata</th>
				</tr>
				<tr>
					<td>1</td>
					<td align="left">B Indonesia</td>
					<td>'. $bin .'</td>
					<td rowspan="4" style="line-height:50px;">'. $rata_rata_un .'</td>
				</tr>
				<tr>
					<td>2</td>
					<td align="left">B Inggris</td>
					<td>'. $bing .'</td>
				</tr>
				<tr>
					<td>3</td>
					<td align="left">Matematika</td>
					<td>'. $mat .'</td>
				</tr>
				<tr>
					<td>4</td>
					<td align="left">Mata Pelajaran Pilihan</td>
					<td>'. $pil .'</td>
				</tr>
				<tr style="background-color:#d3d3d3">
					<td colspan="2" style="font-weight:bold;">Jumlah</td>
					<td>'. $total_un .'</td>
					<td></td>
				</tr>
			</table>

			<h2 align="center" style="font-family:all;">'; $html .='<b>" '.$ket.' "</b></h2>
			<p align="justify" style="font-size:13px; margin:2px;">Demikian surat keterangan ini kami berikan untuk dapat dipergunakan oleh yang bersangkutan seperlunya, terima kasih.</p>

	</div>

	<div class="footer">
		<table style="text-align:center; width:100%; ">
			<tr>';
			$html .='
				<td align="left" style="padding-left:280px;">
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
$mpdf->Output('Surat_Keterangan_nilai_'.$data["nama"].'.pdf', 'I');

mysqli_query($conn, "INSERT INTO t_history VALUES('', 'cetak nilai', '$_SESSION[user]', NULL) ");

}

?>