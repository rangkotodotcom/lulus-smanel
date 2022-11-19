<?php

	$host = "localhost";
    $user = "root";
    $pass = "";
    $db = "smanel";
    
    date_default_timezone_set('Asia/Jakarta');
    
    $conn = mysqli_connect("$host", "$user", "$pass", "$db");
    
    if(!$conn){
        echo "tidak terkoneksi ke database";
    }

?>