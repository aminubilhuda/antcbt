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

    if (!is_dir($target_dir)) {
        @mkdir($target_dir, 0755, true);
    }
    if (!is_dir($target_dir)) {
        throw new Exception("Folder tujuan tidak ditemukan: " . (realpath($target_dir) ?: $target_dir));
    }
    if (!is_writable($target_dir)) {
        $pemilik = @fileowner($target_dir);
        if ($pemilik !== false && function_exists('posix_getpwuid')) {
            $info_pemilik = posix_getpwuid($pemilik);
            $pemilik = isset($info_pemilik['name']) ? $info_pemilik['name'] : $pemilik;
        }
        throw new Exception("Folder files/ tidak bisa ditulis oleh PHP. Path: " . (realpath($target_dir) ?: $target_dir) . " | owner: " . $pemilik . " | user PHP: " . get_current_user() . ". Ubah permission folder ke 775/777 atau sesuaikan owner-nya.");
    }

    $safe_name = time() . '_' . preg_replace('/[^A-Za-z0-9._-]/', '_', basename($namaFile));
    $target_file = $target_dir . $safe_name;

    error_clear_last();
    if (!move_uploaded_file($tmp, $target_file)) {
        if (is_uploaded_file($tmp) && @copy($tmp, $target_file)) {
            @unlink($tmp);
        } else {
            $alasan = error_get_last();
            $pesan_alasan = isset($alasan['message']) ? $alasan['message'] : 'tidak diketahui';
            error_log('[import word] gagal simpan upload ke ' . $target_file . ' - ' . $pesan_alasan);
            throw new Exception("Gagal menyimpan file yang diunggah. Path: " . $target_file . " | alasan: " . $pesan_alasan);
        }
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
    $image_tags = [];

    foreach ($relation_image as $key => $value) {
        $ext_img = strtolower(pathinfo($value, PATHINFO_EXTENSION));
        $imagenew_name = time() . $rand_inc_number . "." . $ext_img;
        $old_path = $word_folder . "/" . $value;
        $new_path = $target_dir . $imagenew_name;

        if (file_exists($old_path)) {
            rename($old_path, $new_path);
            $image_tags[$key] = '<img src="../../files/' . $imagenew_name . '">';

            mysqli_stmt_bind_param($stmt_file, 'is', $id_mapel, $imagenew_name);
            mysqli_stmt_execute($stmt_file);

            $rand_inc_number++;
        }
    }
    mysqli_stmt_close($stmt_file);

    $content = docx_extract_formatted_content($word_xml, $image_tags);
    $content = preg_replace('/Materi\s+[0-9]+\s*:.*?(?=Soal\s*:\s*[0-9]+\))/is', ' ', $content);

    $explflag = get_numerics($content);
    $raw_parts = preg_split($question_split, $content);
    array_shift($raw_parts);
    $expl = $raw_parts;

    $hitung_pg = [];
    $hitung_esai = [];
    $quesions = [];

    foreach ($expl as $ekey => $value) {
        if (!isset($explflag[$ekey])) {
            continue;
        }
        $cqno = trim(preg_replace('/[^0-9]/', '', $explflag[$ekey]));
        $cqno = ltrim($cqno, '0');
        if ($cqno === '') {
            $cqno = '0';
        }

        $options = array_values(array_filter(preg_split($option_split, $value), function ($p) {
            return trim(strip_tags($p)) !== '' || stripos($p, '<img') !== false;
        }));
        $jindex = count($options);
        $jpil = $jindex - 1;
        $jns = ($jindex <= 1) ? 2 : 1;

        if ($jns == 1) {
            $hitung_pg[$cqno] = isset($hitung_pg[$cqno]) ? $hitung_pg[$cqno] + 1 : 1;
        } else {
            $hitung_esai[$cqno] = isset($hitung_esai[$cqno]) ? $hitung_esai[$cqno] + 1 : 1;
        }

        if (($jindex > 1) && ($jindex < ($j_opt + 1))) {
            throw new Exception("Jumlah pilihan jawaban pada soal nomor " . $cqno . " hanya ada " . $jpil . ". Sedangkan di bank soal jumlah pilihan adalah " . $j_opt . ".");
        } else if ($jindex > $j_opt + 3) {
            throw new Exception("Format soal salah pada soal nomor " . ($cqno + 1) . ".");
        }

        $option_count = count($options);

        foreach ($options as $key_option => &$val_option) {
            if ($option_count > 1) {
                if ($key_option == ($option_count - 1)) {
                    if (preg_match($correct_split, $val_option)) {
                        if (!preg_match('/Kunci\s*:\s*(?:<[^>]+>\s*)*([A-E])/i', $val_option, $mk)) {
                            throw new Exception("Kunci jawaban pada soal nomor " . $cqno . " tidak valid (harus huruf A-E).");
                        }
                        $correct = array_values(array_filter(preg_split($correct_split, $val_option)));
                        $val_option = isset($correct[0]) ? $correct[0] : '';
                        $options['kunci'] = strtoupper($mk[1]);
                    } else {
                        throw new Exception("Format kunci jawaban pada soal nomor " . $cqno . " salah.");
                    }
                } elseif ($key_option == 0) {
                    if (preg_match($audio_split, $val_option)) {
                        $audio = array_values(array_filter(preg_split($audio_split, $val_option)));
                        $val_option = $audio[0];
                        $options['audio'] = trim(strip_tags($audio[1]));
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
                "&amp;apos;" => "'",
                "&apos;" => "'",
                " &ndash;" => "-"
            ];
            $val_option = strtr($val_option, $replace_chars);
            $val_option = str_replace("'", "&#39;", $val_option);
            if ($key_option == 0) {
                $val_option = preg_replace('/^[ \r\n]+|[ \r\n\t]+$/', '', $val_option);
            } else {
                $val_option = trim($val_option, " \t\r\n");
            }
            $val_option = str_replace("\n", "<br>", $val_option);
            $val_option = preg_replace('/^(?:<br>[ \r\n]*)+|(?:[ \r\n\t]*<br>)+$/i', '', $val_option);
            $val_option = str_replace("\t", "&nbsp;&nbsp;&nbsp;&nbsp;", $val_option);
            $val_option = docx_balance_inline_tags($val_option);
        }
        unset($val_option);

        $quesions[] = [
            'jenis' => $jns,
            'nomor' => (int) $cqno,
            'options' => $options
        ];
    }

    $duplikat_pg = [];
    foreach ($hitung_pg as $n => $jumlah) {
        if ($jumlah > 1) {
            $duplikat_pg[] = $n . ' (muncul ' . $jumlah . ' kali)';
        }
    }
    if ($duplikat_pg) {
        throw new Exception("Nomor soal Pilihan Ganda duplikat: " . implode(', ', $duplikat_pg) . ". Perbaiki file lalu impor ulang.");
    }

    $duplikat_esai = [];
    foreach ($hitung_esai as $n => $jumlah) {
        if ($jumlah > 1) {
            $duplikat_esai[] = $n . ' (muncul ' . $jumlah . ' kali)';
        }
    }
    if ($duplikat_esai) {
        throw new Exception("Nomor soal Essai duplikat: " . implode(', ', $duplikat_esai) . ". Perbaiki file lalu impor ulang.");
    }

    $jumlah_pg_diimpor = 0;
    $jumlah_esai_diimpor = 0;
    foreach ($quesions as $q) {
        if ($q['jenis'] == 1) {
            $jumlah_pg_diimpor++;
        } else {
            $jumlah_esai_diimpor++;
        }
    }

    $stmt_mapel_jml = mysqli_prepare($koneksi, "SELECT jml_soal, jml_esai FROM mapel WHERE id_mapel = ?");
    mysqli_stmt_bind_param($stmt_mapel_jml, 'i', $id_mapel);
    mysqli_stmt_execute($stmt_mapel_jml);
    mysqli_stmt_bind_result($stmt_mapel_jml, $jml_soal_db, $jml_esai_db);
    mysqli_stmt_fetch($stmt_mapel_jml);
    mysqli_stmt_close($stmt_mapel_jml);

    if ($jumlah_pg_diimpor != $jml_soal_db || $jumlah_esai_diimpor != $jml_esai_db) {
        $stmt_update_mapel = mysqli_prepare($koneksi, "UPDATE mapel SET jml_soal = ?, jml_esai = ? WHERE id_mapel = ?");
        mysqli_stmt_bind_param($stmt_update_mapel, 'iii', $jumlah_pg_diimpor, $jumlah_esai_diimpor, $id_mapel);
        mysqli_stmt_execute($stmt_update_mapel);
        mysqli_stmt_close($stmt_update_mapel);
    }

    $pg = 0;
    $es = 0;
    $g = 0;
    $gagal = [];

    $stmt_delete = mysqli_prepare($koneksi, "DELETE FROM soal WHERE id_mapel = ? AND nomor = ? AND jenis = ?");
    $stmt_insert = mysqli_prepare($koneksi, "INSERT INTO soal (id_mapel,nomor,soal,pilA,pilB,pilC,pilD,pilE,jawaban,jenis,file1) VALUES (?,?,?,?,?,?,?,?,?,?,?)");

    foreach ($quesions as $item) {
        $jns = $item['jenis'];
        $value = $item['options'];
        if ($jns == 2) {
            $es++;
            $no = $es;
            $value = [ isset($value[0]) ? $value[0] : '', '', '', '', '', '', 'kunci' => '', 'audio' => '' ];
        } else {
            $no = $item['nomor'];
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
            $gagal[] = $no . " (" . mysqli_stmt_error($stmt_insert) . ")";
        }
    }
    mysqli_stmt_close($stmt_delete);
    mysqli_stmt_close($stmt_insert);

    $response = [
        "status" => "1",
        "id_mapel" => $id_mapel,
        "hasil" => "Jumlah Soal Pilihan Ganda = " . $pg . ".\nJumlah soal Essai = " . $es . ".\nJumlah soal gagal impor = " . $g . ($g > 0 ? ", Nomor " . implode(', ', $gagal) : '') . "."
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

function docx_extract_formatted_content($word_xml, $image_tags)
{
    $dom = new DOMDocument();
    $prev = libxml_use_internal_errors(true);
    $loaded = $dom->load($word_xml, LIBXML_NOERROR | LIBXML_NOWARNING);
    libxml_clear_errors();
    libxml_use_internal_errors($prev);

    if (!$loaded) {
        return htmlentities(strip_tags(file_get_contents($word_xml), "<a:blip>"));
    }

    $xpath = new DOMXPath($dom);
    $xpath->registerNamespace('w', 'http://schemas.openxmlformats.org/wordprocessingml/2006/main');
    $xpath->registerNamespace('a', 'http://schemas.openxmlformats.org/drawingml/2006/main');
    $xpath->registerNamespace('r', 'http://schemas.openxmlformats.org/officeDocument/2006/relationships');

    $paragraphs = $xpath->query('//w:body//w:p');
    $lines = [];

    foreach ($paragraphs as $p) {
        $runs = $xpath->query('.//w:r', $p);
        $segments = [];

        foreach ($runs as $r) {
            $fmt = docx_read_run_format($xpath, $r);
            $part = '';

            foreach ($r->childNodes as $child) {
                if ($child->nodeType !== XML_ELEMENT_NODE) {
                    continue;
                }
                $local = $child->localName;
                if ($local === 't') {
                    $part .= docx_escape_text_keep_safe_tags($child->textContent);
                } elseif ($local === 'tab') {
                    $part .= "\t";
                } elseif ($local === 'br' || $local === 'cr') {
                    $part .= "\n";
                } elseif ($local === 'drawing' || $local === 'pict') {
                    $blips = $xpath->query('.//a:blip', $child);
                    foreach ($blips as $blip) {
                        $embed = $blip->getAttributeNS('http://schemas.openxmlformats.org/officeDocument/2006/relationships', 'embed');
                        if ($embed !== '' && isset($image_tags[$embed])) {
                            $part .= $image_tags[$embed];
                        }
                    }
                }
            }

            if ($part === '') {
                continue;
            }

            $lastIdx = count($segments) - 1;
            if ($lastIdx >= 0 && $segments[$lastIdx]['fmt'] === $fmt) {
                $segments[$lastIdx]['text'] .= $part;
            } else {
                $segments[] = ['fmt' => $fmt, 'text' => $part];
            }
        }

        $line = '';
        foreach ($segments as $seg) {
            $line .= docx_wrap_format($seg['text'], $seg['fmt']);
        }

        // Lepaskan tag format yang menempel ketat di penanda Soal/Opsi/Kunci/Audio agar pemisahan tetap bersih
        $line = preg_replace('/<(b|i|u)>\s*(Soal\s*:\s*[0-9]+\)|[A-E]:|Kunci\s*:|Audio\s*:)\s*<\/\1>/i', '$2', $line);
        $lines[] = $line;
    }

    return implode("\n", $lines);
}

function docx_read_run_format($xpath, $runNode)
{
    $bold = false;
    $italic = false;
    $underline = false;
    $vert = '';

    $rPrList = $xpath->query('./w:rPr', $runNode);
    if ($rPrList && $rPrList->length > 0) {
        $rPr = $rPrList->item(0);

        $bNodes = $xpath->query('./w:b', $rPr);
        if ($bNodes && $bNodes->length > 0) {
            $val = strtolower((string) $bNodes->item(0)->getAttributeNS('http://schemas.openxmlformats.org/wordprocessingml/2006/main', 'val'));
            if ($val === '' || ($val !== '0' && $val !== 'false' && $val !== 'off')) {
                $bold = true;
            }
        }

        $iNodes = $xpath->query('./w:i', $rPr);
        if ($iNodes && $iNodes->length > 0) {
            $val = strtolower((string) $iNodes->item(0)->getAttributeNS('http://schemas.openxmlformats.org/wordprocessingml/2006/main', 'val'));
            if ($val === '' || ($val !== '0' && $val !== 'false' && $val !== 'off')) {
                $italic = true;
            }
        }

        $uNodes = $xpath->query('./w:u', $rPr);
        if ($uNodes && $uNodes->length > 0) {
            $val = strtolower((string) $uNodes->item(0)->getAttributeNS('http://schemas.openxmlformats.org/wordprocessingml/2006/main', 'val'));
            if ($val !== 'none') {
                $underline = true;
            }
        }

        $vNodes = $xpath->query('./w:vertAlign', $rPr);
        if ($vNodes && $vNodes->length > 0) {
            $val = strtolower((string) $vNodes->item(0)->getAttributeNS('http://schemas.openxmlformats.org/wordprocessingml/2006/main', 'val'));
            if ($val === 'superscript' || $val === 'subscript') {
                $vert = $val;
            }
        }
    }

    return ($bold ? 'B' : '') . ($italic ? 'I' : '') . ($underline ? 'U' : '') . ($vert ? ':' . $vert : '');
}

function docx_wrap_format($text, $fmt)
{
    if ($fmt === '' || trim($text) === '') {
        return $text;
    }
    $out = $text;
    if (strpos($fmt, ':superscript') !== false) {
        $out = '<sup>' . $out . '</sup>';
    } elseif (strpos($fmt, ':subscript') !== false) {
        $out = '<sub>' . $out . '</sub>';
    }
    if (strpos($fmt, 'U') !== false) {
        $out = '<u>' . $out . '</u>';
    }
    if (strpos($fmt, 'I') !== false) {
        $out = '<i>' . $out . '</i>';
    }
    if (strpos($fmt, 'B') !== false) {
        $out = '<b>' . $out . '</b>';
    }
    return $out;
}

function docx_escape_text_keep_safe_tags($text)
{
    $escaped = htmlspecialchars($text, ENT_NOQUOTES, 'UTF-8');
    // Izinkan tag <br> yang ditulis manual di Word
    $escaped = preg_replace('/&lt;br\s*\/?&gt;/i', '<br>', $escaped);
    // Izinkan tag format berpasangan (<b>...</b>, <i>...</i>, <u>...</u>, dll.) yang memang berisi teks
    $escaped = preg_replace('/&lt;(b|i|u|strong|em|sup|sub)&gt;(.+?)&lt;\/\1&gt;/is', '<$1>$2</$1>', $escaped);
    return $escaped;
}

function docx_balance_inline_tags($html)
{
    $tags = ['b', 'i', 'u', 'strong', 'em', 'sup', 'sub'];
    foreach ($tags as $tag) {
        // Hapus penutup yatim di awal
        $html = preg_replace('/^\s*<\/' . $tag . '>/i', '', $html);
        // Hapus pembuka yatim di akhir
        $html = preg_replace('/<' . $tag . '>\s*$/i', '', $html);
        $openCount = preg_match_all('/<' . $tag . '>/i', $html);
        $closeCount = preg_match_all('/<\/' . $tag . '>/i', $html);
        while ($openCount > $closeCount) {
            $html .= '</' . $tag . '>';
            $closeCount++;
        }
        while ($closeCount > $openCount) {
            $html = '<' . $tag . '>' . $html;
            $openCount++;
        }
    }
    return $html;
}
