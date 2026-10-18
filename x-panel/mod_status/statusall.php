<?php
include "../../config/config.default.php";
include "../../config/config.function.php";
cek_session_admin();
$pengawas = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM pengawas  WHERE id_pengawas='$_SESSION[id_pengawas]'"));
$tglsekarang = date('Y-m-d');
$kolom = "s.id_nilai, s.id_siswa, s.id_mapel, s.kode_ujian, s.ujian_mulai, s.ujian_berlangsung, s.ujian_selesai, s.jml_benar, s.jml_salah, s.skor, s.ipaddress, b.nis, b.nama AS nama_siswa, b.id_kelas, k.nama AS nama_kelas, m.nama AS nama_mapel, m.level AS level_mapel";
$dari = "FROM nilai s LEFT JOIN ujian c ON s.id_ujian=c.id_ujian LEFT JOIN siswa b ON b.id_siswa=s.id_siswa LEFT JOIN kelas k ON k.id_kelas=b.id_kelas LEFT JOIN mapel m ON m.id_mapel=s.id_mapel";
if ($pengawas['level'] == 'admin') {
    $nilaiq = mysqli_query($koneksi, "SELECT $kolom $dari WHERE c.status='1' AND s.id_siswa<>'' ORDER BY s.id_nilai DESC");
} elseif ($pengawas['level'] == 'pengawas') {
    $nilaiq = mysqli_query($koneksi, "SELECT $kolom $dari WHERE c.status='1' AND s.id_siswa<>'' AND b.ruang='$pengawas[ruang]' ORDER BY s.id_nilai DESC");
} else {
    $nilaiq = mysqli_query($koneksi, "SELECT $kolom $dari WHERE c.status='1' AND s.id_siswa<>'' AND c.id_guru='$_SESSION[id_pengawas]' ORDER BY s.id_nilai DESC");
}
while ($nilai = mysqli_fetch_array($nilaiq)) {
    $tglx = strtotime($nilai['ujian_mulai']);
    $tgl = date('Y-m-d', $tglx);
    if ($tgl == $tglsekarang) {
        $no++;
        $ket = '';
        $lama = $jawaban = $skor = '--';
        $selisih = 0;
        $siswa = array(
            'nis' => $nilai['nis'],
            'nama' => $nilai['nama_siswa'],
            'id_kelas' => $nilai['id_kelas']
        );
        $kelas = array('nama' => $nilai['nama_kelas']);
        $mapel = array('nama' => $nilai['nama_mapel'], 'level' => $nilai['level_mapel']);

        $lama = '';
        if ($nilai['ujian_mulai'] <> '' and $nilai['ujian_selesai'] <> '') {
            $selisih = strtotime($nilai['ujian_selesai']) - strtotime($nilai['ujian_mulai']);

            $jawaban = "<small class='label bg-green'>$nilai[jml_benar] <i class='fa fa-check'></i></small>  <small class='label bg-red'>$nilai[jml_salah] <i class='fa fa-times'></i></small>";
            $skor = "<small class='label bg-green'>" . number_format($nilai['skor'], 2, '.', '') . "</small>";
            $ket = "<label class='label label-success'>Tes Selesai</label>";
            $btn = "<button data-id='$nilai[id_nilai]' class='ulang btn btn-xs btn-danger'>ulang</button>";
        } elseif ($nilai['ujian_mulai'] <> '' and $nilai['ujian_selesai'] == '') {
            $selisih = strtotime($nilai['ujian_berlangsung']) - strtotime($nilai['ujian_mulai']);

            $ket = "<label class='label label-danger'><i class='fa fa-spin fa-spinner' title='Sedang ujian'></i>&nbsp;Masih Dikerjakan</label>";

            $btn = "<button data-id='$nilai[id_nilai]' class='hapus btn btn-xs btn-danger'>selesai</button>";
        }
        echo "
																<tr>
																	<td><input type='checkbox' class='cekpilihstatus' value='$nilai[id_nilai]'></td>
																	<td>$no</td>
																	<td>$siswa[nis]</td>
																	<td>$siswa[nama]</td>
																	<td>$kelas[nama]</td>
																	<td><small class='label bg-red'>$nilai[kode_ujian]</small> <small class='label bg-purple'>$mapel[nama]</small> <small class='label bg-blue'>$mapel[level]</small></td>
																	<td>" . lamaujian($selisih) . "</td>
																	<td>$jawaban</td>
																	<td>$skor</td>
																	<td>$nilai[ipaddress]</td>
																	<td>$ket</td>
																	<td>$btn</td>
																	
																</tr>
															";
    }
}
?>
<script>
    if (typeof window.statusallBound == 'undefined') {
        window.statusallBound = true;
    $(document).on('click', '.hapus', function() {
        var id = $(this).data('id');
        console.log(id);
        swal({
            title: 'Apa anda yakin?',
            text: "aksi ini akan menyelesaikan secara paksa ujian yang sedang berlangsung!",
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes!'
        }).then((result) => {
            if (result.value) {
                $.ajax({
                    url: 'mod_status/ajax_status.php?pg=selesaikan',
                    method: "POST",
                    data: 'id=' + id,
                    success: function(data) {
                        $('#htmlujianselesai').html('1');
                        toastr.success(data);
                    }
                });
            }
        })
    });

    $(document).on('click', '.ulang', function() {
        var id = $(this).data('id');
        console.log(id);
        swal({
            title: 'Apa anda yakin?',
            text: "Akan Mengulang Ujian Ini ??",

            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes!'
        }).then((result) => {
            if (result.value) {
                $.ajax({
                    url: 'mod_status/ajax_status.php?pg=ulangujian',
                    method: "POST",
                    data: 'id=' + id,
                    success: function(data) {
                        toastr.success(data);
                    }
                });
            }
        })
    });
    }
</script>