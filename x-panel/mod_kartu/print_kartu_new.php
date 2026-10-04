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

$siswaQ = mysqli_query($koneksi, "SELECT * FROM siswa WHERE id_kelas='$id_kelas' ORDER BY nama ASC");
$siswa_array = [];
while ($row = mysqli_fetch_array($siswaQ)) {
    $siswa_array[] = $row;
}

require_once(__DIR__ . '/../phpqrcode/phpqrcode.php');

function kartu_foto($siswa, $homeurl)
{
    $dir = __DIR__ . '/../../foto/fotosiswa/';
    $kandidat = [];
    $foto = isset($siswa['foto']) ? (string) $siswa['foto'] : '';
    if ($foto !== '' && $foto !== '1') {
        $kandidat[] = $foto;
    }
    $nopeserta = isset($siswa['no_peserta']) ? (string) $siswa['no_peserta'] : '';
    foreach ([
        str_replace(['/', ' '], '-', $nopeserta),
        str_replace(['/', ' '], '_', $nopeserta),
        isset($siswa['nis']) ? (string) $siswa['nis'] : '',
        isset($siswa['username']) ? (string) $siswa['username'] : '',
    ] as $nama) {
        if ($nama !== '') {
            $kandidat[] = $nama;
        }
    }
    $exts = ['', '.jpg', '.jpeg', '.png', '.JPG', '.JPEG', '.PNG'];
    foreach ($kandidat as $nama) {
        foreach ($exts as $ext) {
            $file = $nama . $ext;
            if (is_file($dir . $file)) {
                return $homeurl . '/foto/fotosiswa/' . $file;
            }
        }
    }
    return $homeurl . '/dist/img/avatar_default.png';
}

function kartu_qr($text)
{
    ob_start();
    QRcode::png($text, null, 'L', 3, 1);
    return base64_encode(ob_get_clean());
}
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Kartu Peserta Ujian</title>
<style>
* {
    box-sizing: border-box;
    font-family: 'Arial', sans-serif;
}

body {
    margin: 0;
}

.card {
    width: 9.2cm;
    height: 6.5cm;
    border: 1px solid #d0d7de;
    border-radius: 6px;
    background: #fff;
    overflow: hidden;
    margin: 2px;
}

.card-header {
    height: 1.1cm;
    background: linear-gradient(135deg, #2196F3, #1976D2);
    padding: 3px 6px;
    color: #fff;
}

.header-content {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 4px;
    height: 100%;
}

.logo-badge {
    height: 32px;
    width: auto;
    background: #fff;
    border-radius: 50%;
    padding: 2px;
}

.school-info {
    text-align: center;
    font-size: 9px;
    line-height: 1.25;
}

.card-body {
    height: calc(6.5cm - 1.1cm);
    padding: 4px 6px;
    background: #f8f9fa;
    display: flex;
    flex-direction: column;
}

.student-info {
    display: flex;
    gap: 5px;
    flex: 1;
    min-height: 0;
}

.photo-container {
    width: 52px;
    flex-shrink: 0;
}

.student-photo {
    width: 52px;
    height: 64px;
    object-fit: cover;
    border: 2px solid #fff;
    border-radius: 4px;
}

.info-container {
    flex: 1;
    min-width: 0;
}

.info-row {
    display: flex;
    margin-bottom: 1px;
}

.label {
    width: 56px;
    flex-shrink: 0;
    font-size: 9px;
    color: #555;
}

.value {
    flex: 1;
    min-width: 0;
    font-size: 9px;
    color: #222;
}

.name-clamp {
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
    word-break: break-word;
}

.credentials-box {
    margin-top: 2px;
    padding: 2px 5px;
    background: #e3f2fd;
    border-radius: 4px;
    border-left: 3px solid #2196F3;
}

.qr-container {
    width: 50px;
    flex-shrink: 0;
    text-align: center;
}

.qr-img {
    width: 48px;
    height: 48px;
}

.signature-container {
    margin-top: auto;
    padding-top: 2px;
    text-align: center;
    border-top: 1px dashed #ddd;
}

.signature-title {
    font-size: 9px;
    color: #555;
}

.ttd-img {
    height: 34px;
    margin: 1px 0;
}

.signature-name {
    font-size: 10px;
    font-weight: bold;
    margin: 1px 0;
}

.signature-nip {
    font-size: 9px;
}

.page-break {
    page-break-after: always;
    page-break-inside: avoid;
}

@media print {
    body {
        background: #fff;
    }

    .card {
        break-inside: avoid;
        box-shadow: none;
    }

    .card-header,
    .credentials-box {
        -webkit-print-color-adjust: exact;
        print-color-adjust: exact;
    }

    @page {
        size: A4;
        margin: 1cm;
    }
}
</style>

<table width='100%' align='center' cellpadding='0' cellspacing='0'>
    <?php
    $total_students = count($siswa_array);
    for ($i = 0; $i < $total_students; $i += 2) :
    ?>
    <tr>
        <?php for ($j = 0; $j < 2; $j++) : ?>
            <?php if ($i + $j < $total_students) :
                $siswa = $siswa_array[$i + $j];
            ?>
            <td width='50%' valign='top'>
                <div class="card">
                    <div class="card-header">
                        <div class="header-content">
                            <img src='../../foto/logo_tut.svg' class="logo-badge" alt="Logo">
                            <div class="school-info">
                                <strong><?= strtoupper($setting['header_kartu']) ?></strong><br>
                                <strong><?= strtoupper($setting['sekolah']) ?></strong><br>
                                <span>TAHUN PELAJARAN <?= $ajaran ?></span>
                            </div>
                            <img src="../../<?= $setting['logo'] ?>" class="logo-badge" alt="Logo">
                        </div>
                    </div>

                    <div class="card-body">
                        <div class="student-info">
                            <div class="photo-container">
                                <img src="<?= htmlspecialchars(kartu_foto($siswa, $homeurl)) ?>" class="student-photo" alt="Foto">
                            </div>

                            <div class="info-container">
                                <div class="info-row">
                                    <div class="label">No Peserta</div>
                                    <div class="value">: <?= htmlspecialchars((string) $siswa['no_peserta']) ?></div>
                                </div>
                                <div class="info-row">
                                    <div class="label">Nama</div>
                                    <div class="value name-clamp">: <strong><?= htmlspecialchars((string) $siswa['nama']) ?></strong></div>
                                </div>
                                <div class="info-row">
                                    <div class="label">Kelas/Sesi</div>
                                    <div class="value">: <?= htmlspecialchars((string) $kelas['nama']) ?> / <?= htmlspecialchars((string) $siswa['sesi']) ?></div>
                                </div>

                                <div class="credentials-box">
                                    <div class="info-row">
                                        <div class="label">Username</div>
                                        <div class="value">: <strong><?= htmlspecialchars((string) $siswa['username']) ?></strong></div>
                                    </div>
                                    <div class="info-row">
                                        <div class="label">Password</div>
                                        <div class="value">: <strong><?= htmlspecialchars((string) $siswa['password']) ?></strong></div>
                                    </div>
                                    <div class="info-row">
                                        <div class="label">Ruang/Meja</div>
                                        <div class="value">: <?= htmlspecialchars((string) $siswa['ruang']) ?> / <?= htmlspecialchars((string) $siswa['no_meja']) ?></div>
                                    </div>
                                </div>
                            </div>

                            <div class="qr-container">
                                <img src="data:image/png;base64,<?= kartu_qr((string) $siswa['no_peserta']) ?>" class="qr-img" alt="QR">
                            </div>
                        </div>

                        <div class="signature-container">
                            <div class="signature-title">Kepala Sekolah</div>
                            <img src="../../dist/img/ttd.png?date=<?= time() ?>" class="ttd-img" alt="TTD">
                            <div class="signature-name"><?= htmlspecialchars((string) $setting['kepsek']) ?></div>
                            <div class="signature-nip">NIP. <?= htmlspecialchars((string) $setting['nip']) ?></div>
                        </div>
                    </div>
                </div>
            </td>
            <?php endif; ?>
        <?php endfor; ?>
    </tr>

    <?php
    if (($i + 2) % 8 == 0 && ($i + 2) < $total_students) :
    ?>
    </table>
    <div class="page-break"></div>
    <table width='100%' align='center' cellpadding='0' cellspacing='0'>
    <?php endif; ?>

    <?php endfor; ?>
</table>
</body>
</html>
