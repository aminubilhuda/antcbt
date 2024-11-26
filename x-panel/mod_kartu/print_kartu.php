<?php
require("../../config/config.default.php");
require("../../config/config.function.php");
require("../../config/functions.crud.php");
(isset($_SESSION['id_pengawas'])) ? $id_pengawas = $_SESSION['id_pengawas'] : $id_pengawas = 0;
($id_pengawas == 0) ? header('location:index.php') : null;
$id_kelas = @$_GET['id_kelas'];
if (date('m') >= 7 and date('m') <= 12) {
    $ajaran = date('Y') . "/" . (date('Y') + 1);
} elseif (date('m') >= 1 and date('m') <= 6) {
    $ajaran = (date('Y') - 1) . "/" . date('Y');
}
$kelas = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM kelas WHERE id_kelas='$id_kelas'"));

// Fetch all students first
$siswaQ = mysqli_query($koneksi, "SELECT * FROM siswa WHERE id_kelas='$id_kelas' ORDER BY nama ASC");
$siswa_array = [];
while ($row = mysqli_fetch_array($siswaQ)) {
    $siswa_array[] = $row;
}
?>
<style>
* {
    font-size: x-small;
    /* font-size: medium; */
    box-sizing: border-box;
}

.box {
    border: 1px solid #000;
    width: 100%;
    height: auto;
    min-height: 150px;
    padding: 5px;
}

.ukuran {
    font-size: 12px;
    word-wrap: break-word;
    overflow-wrap: break-word;
}

.ukuran2 {
    font-size: 13px;
    word-wrap: break-word;
    overflow-wrap: break-word;
}

.user {
    font-size: 12px;
    word-wrap: break-word;
    overflow-wrap: break-word;
}

.responsive-text {
    white-space: normal;
    word-break: break-all;
}

.page-break {
    page-break-after: always;
}
.signature-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
}

.signature-container img {
    max-height: 60px;
    /* margin-bottom: 10px; */
    /* position: relative; */
}
</style>

<table width='100%' align='center' cellpadding='10'>
    <?php 
    $total_students = count($siswa_array);
    for ($i = 0; $i < $total_students; $i += 2) : 
    ?>
    <tr>
        <?php for ($j = 0; $j < 2; $j++) : ?>
            <?php if ($i + $j < $total_students) : 
                $siswa = $siswa_array[$i + $j];
                $nopeserta = $siswa['no_peserta'];
            ?>
            <td width='50%'>
                <div style='width:10.4cm;border:1px solid #666;'>
                    <table style="text-align:center; width:100%">
                        <tr>
                            <td style="text-align:left; vertical-align:top">
                                <img src='../../foto/logo_tut.svg' height='50px'>
                            </td>
                            <td style="text-align:center">
                                <b class="ukuran responsive-text">
                                    <?= strtoupper($setting['header_kartu']) ?><BR>
                                    <?= strtoupper($setting['sekolah']) ?><BR>
                                    TAHUN PELAJARAN <?= $ajaran ?>
                                </b>
                            </td>
                            <td style="text-align:right; vertical-align:top">
                                <img src="../../<?= $setting['logo'] ?>" height='50px' />
                            </td>
                        </tr>
                    </table>
                    <hr>
                    <table style="text-align:left; width:100%">
                        <tr>
                            <td style="text-align:center; vertical-align:top; width:70px" rowspan="9">
                                <?php
                                    if ($siswa['foto'] <> '') {
                                        if (!file_exists("../foto/fotosiswa/$siswa[foto]")) {
                                            echo "<img src='$homeurl/dist/img/avatar_default.png' class='img' style='max-width:50px' alt='+'>";
                                        } else {
                                            echo "<img src='$homeurl/foto/fotosiswa/$siswa[foto]' class='img' style='max-width:50px'>";
                                        }
                                    } else {
                                        echo "<img src='$homeurl/dist/img/avatar-01.jpg' class='img' style='max-width:50px' alt='+'>";
                                    }
                                ?>
                            </td>
                        </tr>
                        <tr>
                            <td class="ukuran" valign='top' width="23%">No Peserta</td>
                            <td class="ukuran responsive-text" valign='top'>: <?= $siswa['no_peserta'] ?></td>
                        </tr>
                        <tr>
                            <td class="ukuran" valign='top'> Nama</td>
                            <td class="ukuran2 responsive-text" valign='top'>: <b class="ukuran2"><?= $siswa['nama'] ?></b></td>
                        </tr>
                        <tr>
                            <td class="ukuran" valign='top'>Kelas / Sesi</td>
                            <td class="ukuran responsive-text" valign='top'>: <?= $kelas['nama'] ?> / Sesi <?= $siswa['sesi'] ?></td>
                        </tr>
                        <tr>
                            <td class="ukuran" valign='top'>Username</td>
                            <td class="ukuran2 responsive-text" valign='top'>: <b class="user"><?= $siswa['username'] ?></b></td>
                        </tr>
                        <tr>
                            <td class="ukuran" valign='top'>Password</td>
                            <td class="ukuran2 responsive-text" valign='top'>: <b class="user"><?= $siswa['password'] ?></b></td>
                        </tr>
                        <tr>
                            <td class="ukuran" valign='top'>Ruang / No Meja</td>
                            <td class="ukuran2 responsive-text" valign='top'>: <b class="user"><?= $siswa['ruang'] ?> / <?= $siswa['no_meja'] ?></b></td>
                        </tr>
                        <tr>
                            <td valign='top'></td>
                            <td class="ukuran2 responsive-text" valign='top' align='center'>
                                <div class="signature-container">
                                    Kepala Sekolah<br>
                                    <img src='<?php echo '../../dist/img/ttd.png' . '?date=' . time(); ?> ?>' height='px'>
                                    <b><?= $setting['kepsek'] ?></b>
                                    <b>NIP. <?= $setting['nip'] ?></b>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
            <?php endif; ?>
        <?php endfor; ?>
    </tr>
    
    <?php 
    // Add page break every 6 cards
    if (($i + 2) % 6 == 0) : 
    ?>
    <tr>
        <td colspan="2" class="page-break"></td>
    </tr>
    <?php endif; ?>
    
    <?php endfor; ?>
</table>