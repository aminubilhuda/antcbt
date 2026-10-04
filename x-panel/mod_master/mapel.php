<?php
$pesan = '';
$info = '';
if (isset($_POST['simpanmapel'])) {
    $kode = trim(str_replace(' ', '', $_POST['kodemapel']));
    $nama = trim($_POST['namamapel']);
    if ($kode == '' or $nama == '') {
        $pesan = "<div class='alert alert-warning alert-dismissible'>
    <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
    <i class='icon fa fa-info'></i>
    Kode dan Nama Pelajaran wajib diisi !</div>";
    } else {
        $stmt_cek = mysqli_prepare($koneksi, "SELECT kode_mapel FROM mata_pelajaran WHERE kode_mapel = ?");
        mysqli_stmt_bind_param($stmt_cek, 's', $kode);
        mysqli_stmt_execute($stmt_cek);
        mysqli_stmt_store_result($stmt_cek);
        $cek = mysqli_stmt_num_rows($stmt_cek);
        mysqli_stmt_close($stmt_cek);
        if ($cek == 0) {
            $stmt_ins = mysqli_prepare($koneksi, "INSERT INTO mata_pelajaran (kode_mapel, nama_mapel, mapel_id) VALUES (?, ?, 0)");
            mysqli_stmt_bind_param($stmt_ins, 'ss', $kode, $nama);
            $exec = mysqli_stmt_execute($stmt_ins);
            $error = mysqli_stmt_error($stmt_ins);
            mysqli_stmt_close($stmt_ins);
            if ($exec) {
                $pesan = "<div class='alert alert-success alert-dismissible'>
    <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
    <i class='icon fa fa-info'></i>
    Data Berhasil ditambahkan ..</div>";
            } else {
                $pesan = "<div class='alert alert-danger alert-dismissible'>
    <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
    <i class='icon fa fa-warning'></i>
    Gagal menyimpan data: " . htmlspecialchars($error) . "</div>";
            }
        } else {
            $pesan = "<div class='alert alert-warning alert-dismissible'>
    <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
    <i class='icon fa fa-info'></i>
    Maaf Kode Mapel Sudah ada !</div>";
        }
    }
}
if (isset($_POST['importmapel'])) {
    $file = $_FILES['file']['name'];
    $temp = $_FILES['file']['tmp_name'];
    $ext = explode('.', $file);
    $ext = end($ext);
    if ($ext <> 'xls') {
        $info = info('Gunakan file Ms. Excel 93-2007 Workbook (.xls)', 'NO');
    } else {
        $data = new Spreadsheet_Excel_Reader($temp);
        $hasildata = $data->rowcount($sheet_index = 0);
        $sukses = $gagal = 0;
        $detail_gagal = [];
        $stmt_cek = mysqli_prepare($koneksi, "SELECT kode_mapel FROM mata_pelajaran WHERE kode_mapel = ?");
        $stmt_ins = mysqli_prepare($koneksi, "INSERT INTO mata_pelajaran (kode_mapel, nama_mapel, mapel_id) VALUES (?, ?, 0)");
        for ($i = 2; $i <= $hasildata; $i++) {
            $kode = trim(str_replace(' ', '', $data->val($i, 2)));
            $nama = trim($data->val($i, 3));
            if ($kode == '' or $nama == '') {
                $gagal++;
                $detail_gagal[] = "Baris $i: kode/nama kosong";
                continue;
            }
            mysqli_stmt_bind_param($stmt_cek, 's', $kode);
            mysqli_stmt_execute($stmt_cek);
            mysqli_stmt_store_result($stmt_cek);
            $cek = mysqli_stmt_num_rows($stmt_cek);
            if ($cek > 0) {
                $gagal++;
                $detail_gagal[] = "Baris $i: kode " . htmlspecialchars($kode) . " sudah ada (duplikat)";
                continue;
            }
            mysqli_stmt_bind_param($stmt_ins, 'ss', $kode, $nama);
            if (mysqli_stmt_execute($stmt_ins)) {
                $sukses++;
            } else {
                $gagal++;
                $detail_gagal[] = "Baris $i (" . htmlspecialchars($kode) . "): gagal disimpan - " . mysqli_stmt_error($stmt_ins);
            }
        }
        mysqli_stmt_close($stmt_cek);
        mysqli_stmt_close($stmt_ins);
        $total = $hasildata - 1;
        $info = info("Berhasil: $sukses | Gagal: $gagal | Dari: $total", 'OK');
        if ($detail_gagal) {
            $tampil = array_slice($detail_gagal, 0, 50);
            $info .= "<ul>";
            foreach ($tampil as $d) {
                $info .= "<li>$d</li>";
            }
            $info .= "</ul>";
            if (count($detail_gagal) > 50) {
                $info .= "<p>...dan " . (count($detail_gagal) - 50) . " baris lainnya</p>";
            }
        }
    }
}
?>
<div class='row'>
    <div class='col-md-12'><?= $pesan ?><?= $info ?></div>
    <div class='col-md-12'>
        <div class='box box-solid'>
            <div class='box-header with-border'>
                <h3 class='box-title'>Mata Pelajaran</h3>
                <div class='box-tools pull-right '>
                    <button class='btn btn-sm btn-flat btn-success' data-toggle='modal' data-target='#tambahmapel'><i class='fa fa-check'></i> Tambah Mapel</button>
                    <button class='btn btn-sm btn-flat btn-success' data-toggle='modal' data-target='#importmapel'><i class='fa fa-upload'></i> Import Mapel</button>
                </div>
            </div><!-- /.box-header -->
            <div class='box-body'>
                <div class='table-responsive'>
                    <table id='tablemapel' class='table table-bordered table-striped'>
                        <thead>
                            <tr>
                                <th width='5px'>#</th>
                                <th>Kode Mapel</th>
                                <th>Mata Pelajaran</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $mapelQ = mysqli_query($koneksi, "SELECT * FROM mata_pelajaran ORDER BY nama_mapel ASC"); ?>
                            <?php while ($mapel = mysqli_fetch_array($mapelQ)) : ?>
                                <?php $no++; ?>
                                <tr>
                                    <td><?= $no ?></td>
                                    <td><?= $mapel['kode_mapel'] ?></td>
                                    <td><?= $mapel['nama_mapel'] ?></td>
                                </tr>
                            <?php endwhile ?>
                        </tbody>
                    </table>
                </div>
            </div><!-- /.box-body -->
        </div><!-- /.box -->
    </div>
    <div class='modal fade' id='tambahmapel' style='display: none;'>
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class='modal-header bg-blue'>
                    <button class='close' data-dismiss='modal'><span aria-hidden='true'><i class='glyphicon glyphicon-remove'></i></span></button>
                    <h3 class='modal-title'>Tambah Mata Pelajaran</h3>
                </div>
                <div class='modal-body'>
                    <form action='' method='post'>
                        <div class='form-group'>
                            <label>Kode Mapel</label>
                            <input type='text' name='kodemapel' class='form-control' required='true' />
                        </div>
                        <div class='form-group'>
                            <label>Nama Pelajaran</label>
                            <input type='text' name='namamapel' class='form-control' required='true' />
                        </div>
                        <div class='modal-footer'>
                            <div class='box-tools pull-right '>
                                <button type='submit' name='simpanmapel' class='btn btn-sm btn-flat btn-success'><i class='fa fa-check'></i> Simpan</button>
                                <button type='button' class='btn btn-default btn-sm pull-left' data-dismiss='modal'>Close</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class='modal fade' id='importmapel' style='display: none;'>
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class='modal-header bg-blue'>
                    <button class='close' data-dismiss='modal'><span aria-hidden='true'><i class='glyphicon glyphicon-remove'></i></span></button>
                    <h3 class='modal-title'>Tambah Mata Pelajaran</h3>
                </div>
                <div class='modal-body'>
                    <form action='' method='post' enctype='multipart/form-data'>
                        <div class='form-group'>
                            <label>Pilih File</label>
                            <input type='file' name='file' class='form-control' required='true' />
                        </div>
                        <p>
                            Sebelum meng-import pastikan file yang akan anda import sudah dalam bentuk Ms. Excel 97-2003 Workbook (.xls) dan format penulisan harus sesuai dengan yang telah ditentukan. <br />
                        </p>

                        <a href='template/importdatamapel.xls'><i class='fa fa-file-excel-o'></i> Download Format</a>

                        <div class='modal-footer'>
                            <div class='box-tools pull-right '>
                                <button type='submit' name='importmapel' class='btn btn-sm btn-flat btn-success'><i class='fa fa-upload'></i> Simpan</button>
                                <button type='button' class='btn btn-default btn-sm pull-left' data-dismiss='modal'>Close</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>