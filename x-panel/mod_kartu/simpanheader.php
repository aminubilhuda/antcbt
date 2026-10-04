<?php
require("../../config/config.default.php");
	require("../../config/config.function.php");
	cek_session_admin();
	$jawab = mysqli_real_escape_string($koneksi, $_POST['jawab']);
	$exec = mysqli_query($koneksi, "UPDATE setting set header_kartu='$jawab' where id_setting='1'");
