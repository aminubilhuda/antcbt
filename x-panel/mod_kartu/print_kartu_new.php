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
    box-sizing: border-box;
    font-family: 'Arial', sans-serif;
}

.card {
    width: 8.5cm;
    border: none;
    border-radius: 8px;
    background: #fff;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    overflow: hidden;
    margin: 5px;
    position: relative;
}

.card-header {
    background: linear-gradient(135deg, #2196F3, #1976D2);
    padding: 6px;
    color: white;
}

.header-content {
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.logo {
    height: 30px;
    filter: brightness(0) invert(1);
}

.school-info {
    text-align: center;
    font-size: 10px;
    line-height: 1.4;
}

.card-body {
    padding: 8px;
    background: #f8f9fa;
}

.student-info {
    display: flex;
    gap: 15px;
}

.photo-container {
    width: 60px;
}

.student-photo {
    width: 60px;
    height: 75px;
    object-fit: cover;
    border: 2px solid #fff;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    border-radius: 4px;
}

.info-container {
    flex: 1;
}

.info-row {
    display: flex;
    margin-bottom: 4px;
}

.label {
    width: 70px;
    font-size: 10px;
    color: #666;
}

.value {
    flex: 1;
    font-size: 10px;
    color: #333;
    font-weight: 500;
}

.credentials-box {
    margin-top: 8px;
    padding: 8px;
    background: #e3f2fd;
    border-radius: 4px;
    border-left: 4px solid #2196F3;
}

.signature-container {
    margin-top: 12px;
    text-align: center;
    padding-top: 8px;
    border-top: 1px dashed #ddd;
}

.signature-container img {
    height: 45px;
    margin: 5px 0;
}

.signature-title {
    font-size: 11px;
    color: #666;
}

.signature-name {
    font-size: 12px;
    font-weight: bold;
    margin: 4px 0;
}

.signature-nip {
    font-size: 11px;
}

.page-break {
    page-break-after: always;
    page-break-inside: avoid;
}

@media print {
    .card {
        break-inside: avoid;
        margin: 0;
        box-shadow: none;
        border: 1px solid #ddd;
    }
    
    body {
        background: #fff;
    }
    
    @page {
        margin: 1cm;
        size: A4;
    }
}
</style>

<table width='100%' align='center' cellpadding='5'>
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
                <div class="card">
                    <div class="card-header">
                        <div class="header-content">
                            <img src='../../foto/logo_tut.svg' class="logo">
                            <div class="school-info">
                                <strong><?= strtoupper($setting['header_kartu']) ?></strong><br>
                                <strong><?= strtoupper($setting['sekolah']) ?></strong><br>
                                <span>TAHUN PELAJARAN <?= $ajaran ?></span>
                            </div>
                            <img src="../../<?= $setting['logo'] ?>" class="logo">
                        </div>
                    </div>
                    
                    <div class="card-body">
                        <div class="student-info">
                            <div class="photo-container">
                                <?php
                                if ($siswa['foto'] <> '') {
                                    if (!file_exists("../foto/fotosiswa/$siswa[foto]")) {
                                        echo "<img src='$homeurl/dist/img/avatar_default.png' class='student-photo' alt='+'>";
                                    } else {
                                        echo "<img src='$homeurl/foto/fotosiswa/$siswa[foto]' class='student-photo'>";
                                    }
                                } else {
                                    echo "<img src='$homeurl/dist/img/avatar-01.jpg' class='student-photo' alt='+'>";
                                }
                                ?>
                            </div>
                            
                            <div class="info-container">
                                <div class="info-row">
                                    <div class="label">No Peserta</div>
                                    <div class="value">: <?= $siswa['no_peserta'] ?></div>
                                </div>
                                <div class="info-row">
                                    <div class="label">Nama</div>
                                    <div class="value">: <strong><?= $siswa['nama'] ?></strong></div>
                                </div>
                                <div class="info-row">
                                    <div class="label">Kelas/Sesi</div>
                                    <div class="value">: <?= $kelas['nama'] ?> / <?= $siswa['sesi'] ?></div>
                                </div>
                                
                                <div class="credentials-box">
                                    <div class="info-row">
                                        <div class="label">Username</div>
                                        <div class="value">: <strong><?= $siswa['username'] ?></strong></div>
                                    </div>
                                    <div class="info-row">
                                        <div class="label">Password</div>
                                        <div class="value">: <strong><?= $siswa['password'] ?></strong></div>
                                    </div>
                                    <div class="info-row">
                                        <div class="label">Ruang/Meja</div>
                                        <div class="value">: <?= $siswa['ruang'] ?> / <?= $siswa['no_meja'] ?></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="signature-container">
                            <div class="signature-title">Kepala Sekolah</div>
                            <img src='<?php echo '../../dist/img/ttd.png' . '?date=' . time(); ?>' alt="TTD">
                            <div class="signature-name"><?= $setting['kepsek'] ?></div>
                            <div class="signature-nip">NIP. <?= $setting['nip'] ?></div>
                        </div>
                    </div>
                </div>
            </td>
            <?php endif; ?>
        <?php endfor; ?>
    </tr>
    
    <?php 
    // Add page break every 8 cards
    if (($i + 2) % 10 == 0 && ($i + 2) < $total_students) : 
    ?>
    </table>
    <div class="page-break"></div>
    <table width='100%' align='center' cellpadding='5'>
    <?php endif; ?>
    
    <?php endfor; ?>
</table>