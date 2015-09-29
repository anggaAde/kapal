<?php
	$namahost = "localhost";
	$pengguna = "root";
	$passwd = "";
	$database = "db_kapal";

	$konek = mysql_connect($namahost,$pengguna,$passwd) or die("Gagal koneksi dengan database");
	mysql_select_db($database,$konek) or die ("login database telah gagal");
?>
