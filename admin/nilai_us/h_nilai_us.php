<?php

$kd = base64_decode(@$_GET['nama']);

$target = ucwords($kd);

mysqli_query($conn, "DELETE FROM t_n_sekolah WHERE nama = '$kd' ");
mysqli_query($conn, "INSERT INTO t_history VALUES('', 'hapus nilai sekolah $target', '$_SESSION[user]', NULL) ");

?>

<script type="text/javascript">
	window.location.href="?page=<?= base64_encode("nilai_us"); ?>";
</script>