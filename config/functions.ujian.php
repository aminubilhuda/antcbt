<?php

function selesaikanUjian($koneksi, $idnilai, $datetime, $tanggal, $waktu)
{
    $nilai = fetch($koneksi, 'nilai', array('id_nilai' => $idnilai));
    if ($nilai == null || $nilai['ujian_selesai'] <> '') {
        return false;
    }
    $idm = $nilai['id_mapel'];
    $ids = $nilai['id_siswa'];
    $idu = $nilai['id_ujian'];
    $where = array(
        'id_mapel' => $idm,
        'id_siswa' => $ids,
        'id_ujian' => $idu
    );

    $benar = $salah = 0;
    $mapel = fetch($koneksi, 'mapel', array('id_mapel' => $idm));
    $ceksoal = select($koneksi, 'soal', array('id_mapel' => $idm, 'jenis' => 1));
    $ceksoalesai = select($koneksi, 'soal', array('id_mapel' => $idm, 'jenis' => 2));

    $arrayjawabesai = array();
    foreach ($ceksoalesai as $getsoalesai) {
        $w2 = array(
            'id_siswa' => $ids,
            'id_mapel' => $idm,
            'id_soal' => $getsoalesai['id_soal'],
            'jenis' => 2
        );

        $getjwb2 = fetch($koneksi, 'jawaban', $w2);
        if ($getjwb2) {
            $jawabxx = str_replace(["\r\n", "\r"], "\n", (string) $getjwb2['esai']);
            $arrayjawabesai[$getsoalesai['id_soal']] = $jawabxx;
        } else {
            $arrayjawabesai[$getsoalesai['id_soal']] = 'Tidak Diisi';
        }
    }
    $arrayjawab = array();
    foreach ($ceksoal as $getsoal) {
        $w = array(
            'id_siswa' => $ids,
            'id_mapel' => $idm,
            'id_soal' => $getsoal['id_soal'],
            'jenis' => 1
        );
        $getjwb = fetch($koneksi, 'jawaban', $w);
        if ($getjwb) {
            $arrayjawab[$getsoal['id_soal']] = $getjwb['jawaban'];
        } else {
            $arrayjawab[$getsoal['id_soal']] = 'X';
        }
        ($getjwb['jawaban'] == $getsoal['jawaban']) ? $benar++ : $salah++;
    }
    $bagi = ($mapel['tampil_pg'] > 0) ? $mapel['tampil_pg'] / 100 : 1;
    $bobot = $mapel['bobot_pg'] / 100;
    $skor = ($benar / $bagi) * $bobot;
    $jml_salah = $mapel['tampil_pg'] - $benar;
    $ser_jawab = serialize($arrayjawab);
    $ser_jawabesai = serialize($arrayjawabesai);
    $stmt_upd = mysqli_prepare($koneksi, "UPDATE nilai SET ujian_selesai=?, jml_benar=?, jml_salah=?, skor=?, total=?, online=0, jawaban=?, jawaban_esai=? WHERE id_nilai=?");
    mysqli_stmt_bind_param($stmt_upd, 'siiddssi', $datetime, $benar, $jml_salah, $skor, $skor, $ser_jawab, $ser_jawabesai, $idnilai);
    mysqli_stmt_execute($stmt_upd);
    mysqli_stmt_close($stmt_upd);
    mysqli_query($koneksi, "INSERT INTO log (id_siswa,type,text,date) VALUES ('$ids','login','Selesai Ujian','$tanggal $waktu')");
    return true;
}
