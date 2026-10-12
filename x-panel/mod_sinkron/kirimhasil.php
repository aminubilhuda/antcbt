<?php
require "../../config/config.default.php";
require "../../config/config.function.php";
cek_session_admin();

function kirim_hasil_alert($tipe, $judul, $pesan)
{
    echo '<div class="alert alert-' . $tipe . ' alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <h4><i class="icon fa fa-ban"></i>' . $judul . '</h4>
        ' . $pesan . '
      </div>';
}

if ($koneksi) {
    $idujian = isset($_POST['id']) ? $_POST['id'] : '';
    $base_url = rtrim(trim($setting['url_host']), '/');
    $token = trim($setting['token_api']);

    if ($base_url == '' or $token == '') {
        kirim_hasil_alert('danger', 'Pengaturan Belum Lengkap!', 'Isi Alamat IP / Nama Domain dan Token Sinkron pada menu Setting Sinkronisasi.');
    } else {
        $query = mysqli_query($koneksi, "select * from nilai where id_ujian='$idujian' and status is null and ujian_selesai is not null and ujian_selesai <> ''");
        $cek = mysqli_num_rows($query);
        if ($cek <> 0) {
            $array_nilai = array();
            $ids = array();
            while ($nilai = mysqli_fetch_assoc($query)) {
                $array_nilai[] = $nilai;
                $ids[] = (int) $nilai['id_nilai'];
            }

            $payload = (defined('JSON_INVALID_UTF8_SUBSTITUTE')) ? json_encode($array_nilai, JSON_INVALID_UTF8_SUBSTITUTE) : json_encode($array_nilai);
            if ($payload === false) {
                kirim_hasil_alert('danger', 'Gagal!', 'Data nilai mengandung karakter yang tidak valid sehingga tidak dapat dikirim.');
            } else {
                $url = $base_url . '/syncnilai.php?token=' . urlencode($token) . '&detail=1';

                //Initiate cURL.
                $ch = curl_init($url);

                //attach encoded JSON string to the POST fields
                curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);

                //set the content type to application/json
                curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type:application/json'));

                //return response instead of outputting
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 10);
                curl_setopt($ch, CURLOPT_TIMEOUT, 120);

                //execute the POST request
                $result = curl_exec($ch);
                $errno = curl_errno($ch);
                $error = curl_error($ch);
                $httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);

                //close cURL resource
                curl_close($ch);

                if ($errno <> 0 or $result === false) {
                    kirim_hasil_alert('danger', 'Gagal!', 'Tidak dapat terhubung ke server pusat. ' . htmlspecialchars($error));
                } else {
                    $detail = json_decode($result, true);
                    $berhasil = false;

                    if (is_array($detail) and isset($detail['status'])) {
                        $ringkasan = 'Terkirim: ' . (int) $detail['masuk'] . ', sudah ada: ' . (int) $detail['ada'] . ', gagal: ' . (int) $detail['gagal'] . '.';
                        $errlist = '';
                        if (!empty($detail['error'])) {
                            $errlist = ' (' . htmlspecialchars(implode('; ', array_slice($detail['error'], 0, 3))) . ')';
                        }
                        if ($detail['status'] == 'berhasil') {
                            $berhasil = true;
                            $info = $ringkasan;
                        } elseif ($detail['status'] == 'sebagian') {
                            kirim_hasil_alert('warning', 'Sebagian Gagal!', $ringkasan . $errlist . ' Silakan kirim ulang.');
                        } else {
                            $pesan = isset($detail['pesan']) ? $detail['pesan'] : 'Data gagal diproses oleh server pusat.';
                            kirim_hasil_alert('danger', 'Gagal!', $pesan . $errlist);
                        }
                    } elseif (trim($result) == 'berhasil') {
                        //kompatibel dengan server pusat versi lama
                        $berhasil = true;
                        $info = 'Data berhasil dikirimkan ...';
                    } else {
                        kirim_hasil_alert('danger', 'Gagal!', 'Respons tidak dikenal dari server pusat (HTTP ' . (int) $httpcode . '): ' . htmlspecialchars(substr(trim($result), 0, 200)));
                    }

                    if ($berhasil) {
                        if (count($ids) <> 0) {
                            mysqli_query($koneksi, "UPDATE nilai SET status='1' WHERE id_nilai IN (" . implode(',', $ids) . ")");
                        }
                        kirim_hasil_alert('success', 'Berhasil!', $info);
                    }
                }
            }
        } else {
            kirim_hasil_alert('warning', 'Ehmmm!', 'Tidak ada data yang dikirimkan. Semua nilai ujian ini sudah terkirim atau belum ada peserta yang menyelesaikan ujian.');
        }
    }
} else {
    echo "server tidak terhubung";
}
