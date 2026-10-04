<?php
require(__DIR__ . '/../../config/config.default.php');

ini_set('display_errors', '0');
error_reporting(E_ALL & ~E_DEPRECATED & ~E_NOTICE & ~E_WARNING);
ob_start();

if (!isset($_SESSION['id_pengawas']) || (int) $_SESSION['id_pengawas'] === 0) {
    if (ob_get_length()) {
        ob_clean();
    }
    http_response_code(401);
    header('Content-Type: application/json; charset=utf-8');
    echo json_encode(["status" => "0", "hasil" => "Sesi berakhir. Silakan login ulang."]);
    exit;
}

if (!$_POST) {
    if (ob_get_length()) {
        ob_clean();
    }
    echo "404";
    exit;
}

$response = ["status" => "0", "hasil" => "Terjadi kesalahan yang tidak diketahui."];
$id_mapel = isset($_POST['id_mapel']) ? (int) $_POST['id_mapel'] : 0;
$namaFile = isset($_FILES['word_file']['name']) ? $_FILES['word_file']['name'] : '';
$tmp      = isset($_FILES['word_file']['tmp_name']) ? $_FILES['word_file']['tmp_name'] : '';

$target_dir = __DIR__ . "/../../files/";
$target_file = null;
$new_name_path = null;
$word_folder = null;
$prop_folder = null;
$relat_folder = null;
$content_folder = null;

try {
    if (!docx_validate_upload($tmp, $namaFile)) {
        throw new Exception("File yang diunggah bukan file Word (.docx) yang valid.");
    }

    $stmt = mysqli_prepare($koneksi, "SELECT opsi FROM mapel WHERE id_mapel = ?");
    mysqli_stmt_bind_param($stmt, 'i', $id_mapel);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_bind_result($stmt, $j_opt);
    $mapel_ada = mysqli_stmt_fetch($stmt);
    mysqli_stmt_close($stmt);

    if (!$mapel_ada) {
        throw new Exception("ID Mapel tidak ditemukan.");
    }

    $safe_name = time() . '_' . preg_replace('/[^A-Za-z0-9._-]/', '_', basename($namaFile));
    $target_file = $target_dir . $safe_name;
    if (!move_uploaded_file($tmp, $target_file)) {
        throw new Exception("Gagal menyimpan file yang diunggah.");
    }

    $question_split = "/Soal\s*:\s*[0-9]+\)/i";
    $option_split   = "/[A-E]:/";
    $correct_split  = "/Kunci\s*:/i";
    $audio_split    = "/Audio\s*:/i";

    $info          = pathinfo($target_file);
    $new_name      = $info['filename'] . '.Zip';
    $new_name_path = $target_dir . $new_name;
    rename($target_file, $new_name_path);

    $zip = new ZipArchive;
    if ($zip->open($new_name_path) !== true) {
        throw new Exception("Gagal membuka file arsip Word.");
    }

    for ($zi = 0; $zi < $zip->numFiles; $zi++) {
        $entry = $zip->getNameIndex($zi);
        if ($entry === false) {
            continue;
        }
        $entry_norm = str_replace('\\', '/', $entry);
        if (strpos($entry_norm, '..') !== false || preg_match('#^/#', $entry_norm) || preg_match('#^[A-Za-z]:#', $entry_norm)) {
            $zip->close();
            throw new Exception("Arsip Word berisi path yang tidak valid.");
        }
    }

    $zip->extractTo($target_dir);
    $zip->close();

    $word_folder    = $target_dir . "word";
    $prop_folder    = $target_dir . "docProps";
    $relat_folder   = $target_dir . "_rels";
    $content_folder = $target_dir . "[Content_Types].xml";

    $word_xml            = $target_dir . "word/document.xml";
    $word_xml_relational = $target_dir . "word/_rels/document.xml.rels";

    if (!file_exists($word_xml) || !file_exists($word_xml_relational)) {
        throw new Exception("Struktur file Word tidak valid atau korup.");
    }

    $content = file_get_contents($word_xml);
    $content = htmlentities(strip_tags($content, "<a:blip>"));

    $hitung_nomor = [];
    foreach (get_numerics($content) as $marker) {
        $n = trim(preg_replace('/[^0-9]/', '', $marker));
        $n = ltrim($n, '0');
        if ($n === '') {
            $n = '0';
        }
        $hitung_nomor[$n] = isset($hitung_nomor[$n]) ? $hitung_nomor[$n] + 1 : 1;
    }
    $nomor_duplikat = [];
    foreach ($hitung_nomor as $n => $jumlah) {
        if ($jumlah > 1) {
            $nomor_duplikat[] = $n . ' (muncul ' . $jumlah . ' kali)';
        }
    }
    if ($nomor_duplikat) {
        throw new Exception("Nomor soal duplikat: " . implode(', ', $nomor_duplikat) . ". Perbaiki file lalu impor ulang.");
    }

    $xml     = simplexml_load_file($word_xml_relational);

    $supported_image = ['gif', 'jpg', 'jpeg', 'png'];
    $relation_image = [];
    foreach ($xml as $key => $qjd) {
        $ext = strtolower(pathinfo($qjd['Target'], PATHINFO_EXTENSION));
        if (in_array($ext, $supported_image)) {
            $id = xml_attribute($qjd, 'Id');
            $target = xml_attribute($qjd, 'Target');
            $relation_image[$id] = $target;
        }
    }

    mysqli_query($koneksi, "DELETE FROM file_pendukung WHERE id_mapel = " . (int) $id_mapel);

    $rand_inc_number = 1;
    $stmt_file = mysqli_prepare($koneksi, "INSERT INTO file_pendukung (id_mapel, nama_file) VALUES (?, ?)");

    foreach ($relation_image as $key => $value) {
        $rplc_str  = '&lt;a:blip r:embed=&quot;' . $key . '&quot; cstate=&quot;print&quot;/&gt;';
        $rplc_str2 = '&lt;a:blip r:embed=&quot;' . $key . '&quot;&gt;&lt;/a:blip&gt;';
        $rplc_str3 = '&lt;a:blip r:embed=&quot;' . $key . '&quot;/&gt;';
        $rplc_str4 = '&lt;a:blip r:embed=&quot;' . $key . '&quot; cstate=&quot;print&quot;&gt;&lt;/a:blip&gt;';

        $ext_img = strtolower(pathinfo($value, PATHINFO_EXTENSION));
        $imagenew_name = time() . $rand_inc_number . "." . $ext_img;
        $old_path = $word_folder . "/" . $value;
        $new_path = $target_dir . $imagenew_name;

        if (file_exists($old_path)) {
            rename($old_path, $new_path);
            $img = '<img src="../../files/' . $imagenew_name . '">';

            mysqli_stmt_bind_param($stmt_file, 'is', $id_mapel, $imagenew_name);
            mysqli_stmt_execute($stmt_file);

            $content = str_replace([$rplc_str, $rplc_str2, $rplc_str3, $rplc_str4], $img, $content);
            $rand_inc_number++;
        }
    }
    mysqli_stmt_close($stmt_file);

    $content2 = $content;
    $expl = array_values(array_filter(preg_split($question_split, $content)));
    if (trim($expl[0]) == '') {
        unset($expl[0]);
    }
    $expl = array_values($expl);
    $explflag = get_numerics($content2);
    $quesions = [];

    foreach ($expl as $ekey => $value) {
        $cqno = preg_replace('/[^0-9]/', '', $explflag[$ekey]);
        $cqno = trim($cqno);

        $quesions[$cqno] = array_filter(preg_split($option_split, $value));
        $jindex = count($quesions[$cqno]);
        $jpil = $jindex - 1;

        if (($jindex > 1) && ($jindex < ($j_opt + 1))) {
            throw new Exception("Jumlah pilihan jawaban pada soal nomor " . $cqno . " hanya ada " . $jpil . ". Sedangkan di bank soal jumlah pilihan adalah " . $j_opt . ".");
        } else if ($jindex > $j_opt + 3) {
            throw new Exception("Format soal salah pada soal nomor " . ($cqno + 1) . ".");
        }

        $options = $quesions[$cqno];
        $option_count = count($options);

        foreach ($options as $key_option => &$val_option) {
            if ($option_count > 1) {
                if ($key_option == ($option_count - 1)) {
                    if (preg_match($correct_split, $val_option)) {
                        $correct = array_values(array_filter(preg_split($correct_split, $val_option)));
                        $val_option = $correct[0];
                        if (count($correct) < 2 || trim($correct[1]) == '') {
                            throw new Exception("Kunci jawaban pada soal nomor " . $cqno . " tidak ada.");
                        }
                        $options['kunci'] = trim(strtoupper($correct[1]));
                    } else {
                        throw new Exception("Format kunci jawaban pada soal nomor " . $cqno . " salah.");
                    }
                } elseif ($key_option == 0) {
                    if (preg_match($audio_split, $val_option)) {
                        $audio = array_values(array_filter(preg_split($audio_split, $val_option)));
                        $val_option = $audio[0];
                        $options['audio'] = trim($audio[1]);
                    }
                }
            }

            $replace_chars = [
                "‘" => "'",
                "’" => "'",
                "â€œ" => '"',
                "â€˜" => "'",
                "â€™" => "'",
                "â€" => '"',
                "&amp;lt;" => "<",
                "&amp;gt;" => ">",
                " &ndash;" => "-"
            ];
            $val_option = strtr($val_option, $replace_chars);
            $val_option = str_replace("'", "&#39;", $val_option);
            $val_option = str_replace("\n", "<br>", $val_option);
        }
        $quesions[$cqno] = $options;
    }

    $jumlah_pg_diimpor = 0;
    foreach ($quesions as $q) {
        if (count($q) > 1) {
            $jumlah_pg_diimpor++;
        }
    }

    $stmt_mapel_jml = mysqli_prepare($koneksi, "SELECT jml_soal FROM mapel WHERE id_mapel = ?");
    mysqli_stmt_bind_param($stmt_mapel_jml, 'i', $id_mapel);
    mysqli_stmt_execute($stmt_mapel_jml);
    mysqli_stmt_bind_result($stmt_mapel_jml, $jml_soal_db);
    mysqli_stmt_fetch($stmt_mapel_jml);
    mysqli_stmt_close($stmt_mapel_jml);

    if ($jumlah_pg_diimpor != $jml_soal_db) {
        $stmt_update_mapel = mysqli_prepare($koneksi, "UPDATE mapel SET jml_soal = ? WHERE id_mapel = ?");
        mysqli_stmt_bind_param($stmt_update_mapel, 'ii', $jumlah_pg_diimpor, $id_mapel);
        mysqli_stmt_execute($stmt_update_mapel);
        mysqli_stmt_close($stmt_update_mapel);
    }

    $pg = 0;
    $es = 0;
    $g = 0;
    $gagal = "";

    $stmt_delete = mysqli_prepare($koneksi, "DELETE FROM soal WHERE id_mapel = ? AND nomor = ? AND jenis = ?");
    $stmt_insert = mysqli_prepare($koneksi, "INSERT INTO soal (id_mapel,nomor,soal,pilA,pilB,pilC,pilD,pilE,jawaban,jenis,file1) VALUES (?,?,?,?,?,?,?,?,?,?,?)");

    foreach ($quesions as $key => $value) {
        $jns = (count($value) == 1) ? 2 : 1;
        if ($jns == 2) {
            $es++;
            $no = $es;
            $value = [ $value[0], '', '', '', '', '', 'kunci' => '', 'audio' => '' ];
        } else {
            $no = $key;
        }

        if (!isset($value['audio'])) $value['audio'] = '';
        if (!isset($value['kunci'])) $value['kunci'] = '';
        for ($i = 1; $i <= 5; $i++) {
            if (!isset($value[$i])) $value[$i] = '';
        }

        mysqli_stmt_bind_param($stmt_delete, 'iii', $id_mapel, $no, $jns);
        mysqli_stmt_execute($stmt_delete);

        mysqli_stmt_bind_param($stmt_insert, 'issssssssis', $id_mapel, $no, $value[0], $value[1], $value[2], $value[3], $value[4], $value[5], $value['kunci'], $jns, $value['audio']);
        if (mysqli_stmt_execute($stmt_insert)) {
            if ($jns == 1) $pg++;
        } else {
            $g++;
            $gagal .= $no . ",";
        }
    }
    mysqli_stmt_close($stmt_delete);
    mysqli_stmt_close($stmt_insert);

    $response = [
        "status" => "1",
        "id_mapel" => $id_mapel,
        "hasil" => "Jumlah Soal Pilihan Ganda = " . $pg . ".\nJumlah soal Essai = " . $es . ".\nJumlah soal gagal impor = " . $g . ($g > 0 ? ", Nomor " . rtrim($gagal, ',') : '') . "."
    ];
} catch (Exception $e) {
    $response = ["status" => "0", "hasil" => $e->getMessage()];
} finally {
    if (isset($word_folder) && is_dir($word_folder)) rrmdir($word_folder);
    if (isset($relat_folder) && is_dir($relat_folder)) rrmdir($relat_folder);
    if (isset($prop_folder) && is_dir($prop_folder)) rrmdir($prop_folder);
    if (isset($content_folder) && file_exists($content_folder)) @unlink($content_folder);
    if (isset($new_name_path) && file_exists($new_name_path)) @unlink($new_name_path);
    if (isset($target_file) && file_exists($target_file)) @unlink($target_file);
}

if (ob_get_length()) {
    ob_clean();
}
header('Content-Type: application/json; charset=utf-8');
echo json_encode($response);

function docx_validate_upload($tmp, $namaFile)
{
    $is_docx_ext = (bool) preg_match('/\.docx$/i', (string) $namaFile);
    $signature = '';
    if ($tmp !== '' && is_file($tmp)) {
        $fh = @fopen($tmp, 'rb');
        if ($fh) {
            $signature = fread($fh, 4);
            fclose($fh);
        }
    }
    $is_zip = ($signature === "PK\x03\x04" || $signature === "PK\x05\x06");

    if (function_exists('finfo_open')) {
        $finfo = finfo_open(FILEINFO_MIME_TYPE);
        $mime = $finfo ? finfo_file($finfo, $tmp) : '';
        if ($finfo) {
            finfo_close($finfo);
        }
        if ($mime === 'application/vnd.openxmlformats-officedocument.wordprocessingml.document') {
            return true;
        }
        return ($is_docx_ext && $is_zip);
    }

    return ($is_docx_ext && $is_zip);
}

function xml_attribute($object, $attribute)
{
    if (isset($object[$attribute])) {
        return (string) $object[$attribute];
    }
    return '';
}

function get_numerics($str)
{
    preg_match_all('/Soal\s*:\s*[0-9]+\)/i', $str, $matches);
    return $matches[0];
}

function rrmdir($dir)
{
    if (is_dir($dir)) {
        $objects = scandir($dir);
        foreach ($objects as $object) {
            if ($object != "." && $object != "..") {
                if (filetype($dir . "/" . $object) == "dir") {
                    rrmdir($dir . "/" . $object);
                } else {
                    @unlink($dir . "/" . $object);
                }
            }
        }
        reset($objects);
        @rmdir($dir);
    } elseif (is_file($dir)) {
        @unlink($dir);
    }
}
