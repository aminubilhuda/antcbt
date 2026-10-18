<?php
$setting_refresh = (isset($setting['refresh_status']) && $setting['refresh_status'] > 0) ? (int) $setting['refresh_status'] : 5;
if ($ac == '') : ?>
    <div class='row'>
        <div class='col-md-12'>

            <div class='box box-solid'>
                <div class='box-header with-border'>
                    <h3 class='box-title'>Status Peserta </h3>
                    <div class='box-tools pull-right '>
                        <button id='btnselsaikantepilih' class='btn btn-sm btn-flat btn-success' disabled><i class='fa fa-check'></i> Selesaikan Terpilih</button>
                        <button id='btnulangtepilih' class='btn btn-sm btn-flat btn-danger' disabled><i class='fa fa-refresh'></i> Ulangi Terpilih</button>
                    </div>
                </div><!-- /.box-header -->
                <div class='box-body'>
                    <div class='alert alert-info'>
                        <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
                        <i class='icon fa fa-info'></i>
                        Status peserta akan muncul saat ujian berlangsung dan refresh setiap <?= $setting_refresh ?> detik..
                    </div>

                    <div class='table-responsive'>
                        <table id='tablestatus' class='table table-bordered table-striped'>
                            <thead>
                                <tr>
                                    <th width='5px'><input type='checkbox' id='ceksemuastatus'></th>
                                    <th width='5px'>#</th>
                                    <th>NIS</th>
                                    <th>Nama</th>
                                    <th>Kelas</th>
                                    <th>Mapel</th>
                                    <th>Lama Ujian</th>
                                    <th>Jawaban</th>
                                    <th>Nilai</th>
                                    <th>Ip Address</th>
                                    <th>Status</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody id='divstatus'>
                            </tbody>
                        </table>
                    </div>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div>
    </div>
<?php endif ?>
<script>
    var pilihanStatus = {};
    var statusPilihSemua = false;

    function perbaruiTombolMassal() {
        var jml = Object.keys(pilihanStatus).length;
        $('#btnselsaikantepilih').prop('disabled', jml == 0);
        $('#btnulangtepilih').prop('disabled', jml == 0);
        $('#btnselsaikantepilih').html("<i class='fa fa-check'></i> Selesaikan Terpilih (" + jml + ")");
        $('#btnulangtepilih').html("<i class='fa fa-refresh'></i> Ulangi Terpilih (" + jml + ")");
    }

    function pulihkanCeklis() {
        $('.cekpilihstatus').each(function() {
            var id = $(this).val();
            if (statusPilihSemua || pilihanStatus[id]) {
                pilihanStatus[id] = true;
                $(this).prop('checked', true);
            }
        });
        perbaruiTombolMassal();
    }

    $(document).on('change', '.cekpilihstatus', function() {
        var id = $(this).val();
        if ($(this).is(':checked')) {
            pilihanStatus[id] = true;
        } else {
            delete pilihanStatus[id];
            statusPilihSemua = false;
            $('#ceksemuastatus').prop('checked', false);
        }
        perbaruiTombolMassal();
    });

    $(document).on('change', '#ceksemuastatus', function() {
        statusPilihSemua = $(this).is(':checked');
        pilihanStatus = {};
        if (statusPilihSemua) {
            $('.cekpilihstatus').each(function() {
                pilihanStatus[$(this).val()] = true;
            });
        }
        $('.cekpilihstatus').prop('checked', statusPilihSemua);
        perbaruiTombolMassal();
    });

    function kirimAksiMassal(pg, judul, teks) {
        var ids = Object.keys(pilihanStatus);
        if (ids.length == 0) return;
        swal({
            title: judul,
            text: teks.replace('%d', ids.length),
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Ya, Lanjutkan'
        }).then((result) => {
            if (result.value) {
                $.ajax({
                    url: 'mod_status/ajax_status.php?pg=' + pg,
                    method: "POST",
                    data: {
                        id: ids
                    },
                    success: function(respon) {
                        toastr.success(respon);
                        pilihanStatus = {};
                        statusPilihSemua = false;
                        $('#ceksemuastatus').prop('checked', false);
                        perbaruiTombolMassal();
                    }
                });
            }
        });
    }

    $('#btnselsaikantepilih').click(function() {
        kirimAksiMassal('selesaikan', 'Apa anda yakin?', 'Aksi ini akan menyelesaikan secara paksa %d ujian terpilih yang sedang berlangsung!');
    });

    $('#btnulangtepilih').click(function() {
        kirimAksiMassal('ulangujian', 'Apa anda yakin?', 'Akan mengulang %d ujian terpilih?');
    });

    var intervalStatusUjian = <?= $setting_refresh ?> * 1000;
    var timerStatusUjian = null;

    function muatStatus() {
        $('#divstatus').load("mod_status/statusall.php", pulihkanCeklis);
    }

    function mulaiRefreshStatus() {
        if (timerStatusUjian) return;
        timerStatusUjian = setInterval(muatStatus, intervalStatusUjian);
    }

    function hentikanRefreshStatus() {
        if (timerStatusUjian) {
            clearInterval(timerStatusUjian);
            timerStatusUjian = null;
        }
    }

    mulaiRefreshStatus();

    document.addEventListener('visibilitychange', function() {
        if (document.hidden) {
            hentikanRefreshStatus();
        } else {
            muatStatus();
            mulaiRefreshStatus();
        }
    });
</script>