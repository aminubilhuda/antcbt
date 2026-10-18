<?php
cek_session_guru();
$pengawas = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM pengawas WHERE id_pengawas='$_SESSION[id_pengawas]'"));
$filterguru = ($pengawas['level'] == 'admin') ? '' : " AND c.id_guru='$_SESSION[id_pengawas]'";
$idu = isset($_GET['idu']) ? (int) $_GET['idu'] : 0;
$ujianQ = mysqli_query($koneksi, "SELECT c.id_ujian, c.kode_ujian, c.nama, c.tgl_ujian FROM ujian c WHERE c.status='1' $filterguru ORDER BY c.id_ujian DESC LIMIT 100");
?>
<div class='row'>
    <div class='col-md-12'>
        <div class='box box-solid'>
            <div class='box-header with-border'>
                <h3 class='box-title'><i class='fa fa-exclamation-triangle'></i> Laporan Pelanggaran</h3>
            </div>
            <div class='box-body'>
                <form method='get' class='form-inline' style='margin-bottom:15px'>
                    <input type='hidden' name='pg' value='laporanpelanggaran' />
                    <div class='form-group'>
                        <label>Pilih Ujian : </label>
                        <select name='idu' class='form-control' onchange='this.form.submit()'>
                            <option value='0'>-- pilih ujian --</option>
                            <?php while ($uj = mysqli_fetch_array($ujianQ)) : ($uj['id_ujian'] == $idu) ? $s = 'selected' : $s = ''; ?>
                                <option value='<?= $uj['id_ujian'] ?>' <?= $s ?>><?= $uj['kode_ujian'] ?> - <?= $uj['nama'] ?> (<?= $uj['tgl_ujian'] ?>)</option>
                            <?php endwhile; ?>
                        </select>
                    </div>
                </form>
                <?php if ($idu > 0) : ?>
                    <?php
                    $ujian = fetch($koneksi, 'ujian', array('id_ujian' => $idu));
                    $dataQ = mysqli_query($koneksi, "SELECT l.id_siswa, b.nis, b.nama, k.nama AS nama_kelas, COUNT(*) AS jml, MAX(l.date) AS terakhir, GROUP_CONCAT(l.date ORDER BY l.date SEPARATOR '|') AS waktu FROM log l JOIN nilai n ON n.id_siswa = l.id_siswa AND n.id_ujian = '$idu' AND l.date >= n.ujian_mulai AND (n.ujian_selesai IS NULL OR n.ujian_selesai = '' OR l.date <= n.ujian_selesai) LEFT JOIN siswa b ON b.id_siswa = l.id_siswa LEFT JOIN kelas k ON k.id_kelas = b.id_kelas WHERE l.type='pelanggaran' GROUP BY l.id_siswa ORDER BY jml DESC, terakhir DESC");
                    $total = mysqli_num_rows($dataQ);
                    ?>
                    <div class='alert alert-info'>Ujian: <b><?= $ujian['kode_ujian'] ?> - <?= $ujian['nama'] ?></b> | Jumlah siswa melanggar: <b><?= $total ?></b></div>
                    <div class='table-responsive'>
                        <table class='table table-bordered table-striped'>
                            <thead>
                                <tr>
                                    <th width='5px'>#</th>
                                    <th>NIS</th>
                                    <th>Nama</th>
                                    <th>Kelas</th>
                                    <th width='90px'>Pelanggaran</th>
                                    <th>Terakhir</th>
                                    <th>Waktu Pelanggaran</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $no = 0;
                                while ($row = mysqli_fetch_array($dataQ)) : $no++; ?>
                                    <tr>
                                        <td><?= $no ?></td>
                                        <td><?= $row['nis'] ?></td>
                                        <td><?= $row['nama'] ?></td>
                                        <td><?= $row['nama_kelas'] ?></td>
                                        <td><label class='label label-danger'><?= $row['jml'] ?>x</label></td>
                                        <td><?= $row['terakhir'] ?></td>
                                        <td>
                                            <?php foreach (explode('|', $row['waktu']) as $w) : ?>
                                                <small class='label label-warning'><?= date('d/m H:i:s', strtotime($w)) ?></small>
                                            <?php endforeach; ?>
                                        </td>
                                    </tr>
                                <?php endwhile; ?>
                                <?php if ($total == 0) : ?>
                                    <tr>
                                        <td colspan='7' class='text-center'>Tidak ada pelanggaran untuk ujian ini.</td>
                                    </tr>
                                <?php endif; ?>
                            </tbody>
                        </table>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>
