<?php
$id_mapel = $_GET['id'];
$mapelQ = mysqli_query($koneksi, "SELECT * FROM mapel where id_mapel='$id_mapel'");
$mapel = mysqli_fetch_array($mapelQ);
$cekmapel = mysqli_num_rows($mapelQ);
$dataKelas = @unserialize($mapel['kelas']);
if (!is_array($dataKelas)) {
    $dataKelas = [$mapel['kelas']];
}
?>
<div class='row'>
    <div id="boxpesan"></div>
    <div class='col-md-12'>

        <div class='box box-solid'>
            <div class='box-header with-border'>
                <h3 class='box-title'>Import Soal Candy</h3>
                <div class='box-tools pull-right '>

                    <a href='?pg=<?= $pg ?>' class='btn btn-sm bg-maroon' title='Batal'><i class='fa fa-times'></i></a>
                </div>
            </div><!-- /.box-header -->
            <div class='box-body'>
                <div class='col-md-6'>
                    <form id="formsoalcandy" method='post' enctype='multipart/form-data'>
                        <div class='box box-solid'>
                            <div class='box-header with-border'>
                                <h3 class='box-title'>Import Soal Candy</h3>
                                <div class='box-tools pull-right '>
                                    <button type='submit' name='submit' class='btn btn-sm btn-flat btn-success'><i class='fa fa-check'></i> Import</button>
                                    <a href='?pg=<?= $pg ?>' class='btn btn-sm bg-maroon' title='Batal'><i class='fa fa-times'></i></a>
                                </div>
                            </div><!-- /.box-header -->
                            <div class='box-body'>
                                <?= $info ?>
                                <div class='form-group'>
                                    <label>Mata Pelajaran</label>
                                    <input type='hidden' name='id_mapel' class='form-control' value="<?= $mapel['id_mapel'] ?>" />
                                    <p class='form-control-static' style='margin-bottom:0'>
                                        <b><?= htmlspecialchars($mapel['nama']) ?></b>
                                        &nbsp;<small class='label label-primary'>Kelas <?= htmlspecialchars($mapel['level']) ?></small>
                                        <?php foreach ($dataKelas as $k) : ?>
                                            <small class='label label-success'><?= htmlspecialchars($k) ?></small>
                                        <?php endforeach; ?>
                                    </p>
                                </div>
                                <div class='form-group'>
                                    <label>Pilih File</label>
                                    <input type='file' name='file' class='form-control' required='true' />
                                </div>
                                <p>
                                    Sebelum meng-import pastikan file yang akan anda import sudah dalam bentuk Ms. Excel 97-2003 Workbook (.xls) dan format penulisan harus sesuai dengan yang telah ditentukan. <br />
                                </p>
                            </div><!-- /.box-body -->
                            <div class='box-footer'>
                                <a href='template/importdatasoal.xls'><i class='fa fa-file-excel-o'></i> Download Format</a>
                            </div>

                        </div><!-- /.box -->
                    </form>
                </div>
                <div class='col-md-6'>
                    <form id="formsoalword" action='mod_banksoal/import_word.php' method='post' enctype='multipart/form-data'>
                        <div class='box box-solid'>
                            <div class='box-header with-border'>
                                <h3 class='box-title'>Import Soal Ms Word</h3>
                                <div class='box-tools pull-right '>
                                    <button type='submit' name='submit' class='btn btn-sm btn-flat btn-success'><i class='fa fa-check'></i> Import</button>
                                    <a href='?pg=<?= $pg ?>' class='btn btn-sm bg-maroon' title='Batal'><i class='fa fa-times'></i></a>
                                </div>
                            </div><!-- /.box-header -->
                            <div class='box-body'>
                                <div class='form-group'>
                                    <label>Mata Pelajaran</label>
                                    <input type='hidden' name='id_mapel' class='form-control' value="<?= $mapel['id_mapel'] ?>" />
                                    <p class='form-control-static' style='margin-bottom:0'>
                                        <b><?= htmlspecialchars($mapel['nama']) ?></b>
                                        &nbsp;<small class='label label-primary'>Kelas <?= htmlspecialchars($mapel['level']) ?></small>
                                        <?php foreach ($dataKelas as $k) : ?>
                                            <small class='label label-success'><?= htmlspecialchars($k) ?></small>
                                        <?php endforeach; ?>
                                    </p>
                                </div>
                                <div class='form-group'>
                                    <label>Pilih File</label>
                                    <input type='file' name='word_file' class='form-control' required='true' />
                                </div>
                                <p>
                                    Sebelum meng-import pastikan file yang akan anda import sudah dalam bentuk Ms. Word (.docx) dan format penulisan harus sesuai dengan yang telah ditentukan. <br />
                                </p>
                            </div><!-- /.box-body -->
                            <div class='box-footer'>
                                <a href='template/importsoal.docx'><i class='fa fa-file-word-o'></i> Download Format</a>
                            </div>
                        </div><!-- /.box -->
                    </form>
                </div>
                <div class='col-md-6'>
                    <form id='formsoalbee' action='' method='post' enctype='multipart/form-data'>
                        <div class='box box-solid'>
                            <div class='box-header with-border'>
                                <h3 class='box-title'>Import Soal Excel (Bee)</h3>
                                <div class='box-tools pull-right '>
                                    <button type='submit' name='importbee' class='btn btn-sm btn-flat btn-success'><i class='fa fa-check'></i> Import</button>
                                    <a href='?pg=<?= $pg ?>' class='btn btn-sm bg-maroon' title='Batal'><i class='fa fa-times'></i></a>
                                </div>
                            </div><!-- /.box-header -->
                            <div class='box-body'>
                                <div class='form-group'>
                                    <label>Mata Pelajaran</label>
                                    <input type='hidden' name='id_mapel' class='form-control' value="<?= $mapel['id_mapel'] ?>" />
                                    <p class='form-control-static' style='margin-bottom:0'>
                                        <b><?= htmlspecialchars($mapel['nama']) ?></b>
                                        &nbsp;<small class='label label-primary'>Kelas <?= htmlspecialchars($mapel['level']) ?></small>
                                        <?php foreach ($dataKelas as $k) : ?>
                                            <small class='label label-success'><?= htmlspecialchars($k) ?></small>
                                        <?php endforeach; ?>
                                    </p>
                                </div>
                                <div class='form-group'>
                                    <label>Pilih File</label>
                                    <input type='file' name='file' class='form-control' required='true' />
                                </div>
                                <p>
                                    Sebelum meng-import pastikan file yang akan anda import sudah dalam bentuk Ms. Excel 97-2003 Workbook (.xls) dan format penulisan harus sesuai dengan yang telah ditentukan. <br />
                                </p>
                            </div><!-- /.box-body -->
                        </div><!-- /.box -->
                    </form>
                </div>
                <div class='col-md-6'>
                    <div class='box box-solid'>
                        <div class='box-header with-border'>
                            <h3 class='box-title'>File Pendukung Soal</h3>
                        </div>
                        <div class='box-body'>

                            <div class='alert alert-danger '>
                                <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
                                <h4><i class='icon fa fa-info'></i> Info</h4>
                                Upload hanya file bertipe zip
                            </div>
                            <form id="formfilesoal" method="post" enctype="multipart/form-data">

                                <div class='col-md-6'>
                                    <div class='form-group'>

                                        <input class='form-control' type="file" name="zip_file" />
                                    </div>
                                </div>

                                <button type="submit" name="btn_zip" class="btn btn-info">Upload File</button>

                            </form>
                            <br />
                            <p>
                                Silahkan upload file pendukung soal seperti gambar dan audio ke dalam arsip bertipe zip setelah itu upload kesini dan komputer akan mengekstraknya ke dalam folder files <br />
                            </p>
                            <?php
                            if (isset($output)) {
                                echo $output;
                            }
                            ?>
                        </div>
                    </div>
                </div>
            </div><!-- /.box-body -->

        </div><!-- /.box -->

    </div>


</div>


<script>
    function notify(pesan) {
        toastr.success(pesan);
    }

    function notifygagal(pesan) {
        toastr.error(pesan);
    }
    //IMPORT FILE PENDUKUNG 
    $('#formfilesoal').on('submit', function(e) {
        e.preventDefault();
        $.ajax({
            type: 'post',
            url: 'mod_banksoal/crud_soal.php?pg=import_file',
            data: new FormData(this),
            processData: false,
            contentType: false,
            cache: false,
            beforeSend: function() {
                $('.loader').css('display', 'block');
            },
            success: function(response) {
                $('.loader').css('display', 'none');
                $('#boxpesan').html(response);
                if (response == 'OK') {
                    notify('berhasil');
                } else {
                    notifygagal('gagal menyimpan');
                }

            }
        });
    });

    //IMPORT FILE PENDUKUNG 
    $('#formsoalcandy').on('submit', function(e) {
        e.preventDefault();
        $.ajax({
            type: 'post',
            url: 'mod_banksoal/crud_soal.php?pg=import_candy',
            data: new FormData(this),
            processData: false,
            contentType: false,
            cache: false,
            beforeSend: function() {
                $('.loader').css('display', 'block');
            },
            success: function(response) {
                $('.loader').css('display', 'none');
                $('#boxpesan').html(response);
                notify(response);
            }
        });
    });

    //IMPORT SOAL BEE
    $('#formsoalbee').on('submit', function(e) {
        e.preventDefault();
        $.ajax({
            type: 'post',
            url: 'mod_banksoal/crud_soal.php?pg=import_bee',
            data: new FormData(this),
            processData: false,
            contentType: false,
            cache: false,
            beforeSend: function() {
                $('.loader').css('display', 'block');
            },
            success: function(response) {
                $('.loader').css('display', 'none');
                $('#boxpesan').html(response);
                notify(response);
            }
        });
    });

    // IMPORT SOAL WORD
    $('#formsoalword').on('submit', function(e){
        e.preventDefault();
        var form = this;
        var tombol = $(form).find('button[type=submit]');
        $.ajax({
            type: 'post',
            url: 'mod_banksoal/import_word.php',
            data: new FormData(this),
            processData: false,
            contentType: false,
            cache: false,
            beforeSend: function() {
                $('.loader').css('display', 'block');
                tombol.prop('disabled', true);
            },
            success: function(response) {
                console.log('[import word] respons mentah:', response);
                var obj = null;
                try {
                    obj = (typeof response === 'object' && response !== null) ? response : JSON.parse(response);
                } catch (err) {
                    var cuplik = String(response).substring(0, 200);
                    swal({
                        type: 'error',
                        title: 'Respons Tidak Valid',
                        html: 'Server tidak mengirim JSON yang valid:<br><code>' + $('<div>').text(cuplik).html() + '</code>'
                    });
                    return;
                }

                if (obj.status == 1) {
                    var hasil = String(obj.hasil).replace(/\n/g, '<br>').replace(/([0-9]+)/g, '<b>$1</b>');
                    swal({
                        type: 'success',
                        title: 'Import Sukses!',
                        html: hasil
                    }).then(function() {
                        window.location = "index.php?pg=banksoal&ac=lihat&id="+obj.id_mapel;
                    });
                } else {
                    swal({
                        type: 'error',
                        title: 'Oops...',
                        text: obj.hasil
                    })
                }
            },
            error: function(xhr, status, err) {
                swal({
                    type: 'error',
                    title: 'Import Gagal',
                    html: 'Terjadi kesalahan koneksi/server: <b>' + status + '</b> (' + err + ')'
                });
            },
            complete: function() {
                $('.loader').css('display', 'none');
                tombol.prop('disabled', false);
                $(form).find('input[type=file]').val('');
            }
        });
        return false;
    });
</script>