<?php
require("config/config.default.php");
require("config/config.function.php");
require("config/functions.crud.php");
require("config/functions.ujian.php");
cek_session_siswa();
$idm = $_POST['id_mapel'];
$ids = $_POST['id_siswa'];
$idu = $_POST['id_ujian'];
$nilai = fetch($koneksi, 'nilai', array('id_mapel' => $idm, 'id_siswa' => $ids, 'id_ujian' => $idu));
if ($nilai) {
    selesaikanUjian($koneksi, $nilai['id_nilai'], $datetime, $tanggal, $waktu);
}
