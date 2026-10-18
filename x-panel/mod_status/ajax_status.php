<?php
require("../../config/config.default.php");
require("../../config/config.function.php");
require("../../config/functions.crud.php");
require("../../config/functions.ujian.php");
cek_session_guru();
(isset($_GET['pg'])) ? $pg = $_GET['pg'] : $pg = '';
if ($pg == 'selesaikan') {
    $idnilais = (isset($_POST['id'])) ? (array) $_POST['id'] : array();
    $berhasil = $dilewati = 0;
    foreach ($idnilais as $idnilai) {
        $nilai = fetch($koneksi, 'nilai', array('id_nilai' => (int) $idnilai));
        if ($nilai == null || $nilai['ujian_selesai'] <> '') {
            $dilewati++;
            continue;
        }
        selesaikanUjian($koneksi, (int) $idnilai, $datetime, $tanggal, $waktu);
        $berhasil++;
    }
    if ($berhasil > 0) {
        echo "$berhasil ujian diselesaikan";
        if ($dilewati > 0) {
            echo ", $dilewati dilewati";
        }
    } else {
        echo "Tidak ada ujian berlangsung yang diproses";
        if ($dilewati > 0) {
            echo " ($dilewati dilewati)";
        }
    }
}
if ($pg == 'resetlogin') {
    $kode = $_POST['kode'];
    $query = mysqli_query($koneksi, "UPDATE nilai set online='0' where id_nilai in (" . $kode . ")");
    if ($query) {
        echo 1;
    } else {
        echo 0;
    }
}
if ($pg == 'ulangujian') {
    $idnilais = (isset($_POST['id'])) ? (array) $_POST['id'] : array();
    $berhasil = $dilewati = 0;
    foreach ($idnilais as $idnilai) {
        $idnilai = (int) $idnilai;
        $nilai = fetch($koneksi, 'nilai', array('id_nilai' => $idnilai));
        if ($nilai == null || $nilai['ujian_selesai'] == '') {
            $dilewati++;
            continue;
        }
        $where2 = array(
            'id_mapel' => $nilai['id_mapel'],
            'id_siswa' => $nilai['id_siswa'],
            'id_ujian' => $nilai['id_ujian']
        );
        delete($koneksi, 'nilai', ['id_nilai' => $idnilai]);
        delete($koneksi, 'pengacak', $where2);
        delete($koneksi, 'jawaban', $where2);
        $berhasil++;
    }
    if ($berhasil > 0) {
        echo "$berhasil ujian diulang";
        if ($dilewati > 0) {
            echo ", $dilewati dilewati";
        }
    } else {
        echo "Tidak ada ujian selesai yang diproses";
        if ($dilewati > 0) {
            echo " ($dilewati dilewati)";
        }
    }
}
