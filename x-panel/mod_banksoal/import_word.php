<?php
if ($_POST) {
    require "../../config/config.database.php";

    $id_mapel = $_POST['id_mapel'];
    $namaFile = $_FILES['word_file']['name'];
    $tmp      = $_FILES['word_file']['tmp_name'];

    // Definisikan variabel path di awal untuk blok finally
    $target_dir = "../../files/";
    $target_file = null;
    $new_name_path = null;
    $word_folder = null;
    $prop_folder = null;
    $relat_folder = null;
    $content_folder = null;

    try {
        // 1. Validasi Tipe MIME
        $finfo = finfo_open(FILEINFO_MIME_TYPE);
        $mime_type = finfo_file($finfo, $tmp);
        finfo_close($finfo);
        $allowed_mime_type = 'application/vnd.openxmlformats-officedocument.wordprocessingml.document';

        if ($mime_type !== $allowed_mime_type) {
            throw new Exception("File yang diunggah bukan file Word (.docx) yang valid.");
        }

        // 2. Dapatkan jumlah opsi dari DB (Menggunakan Prepared Statement)
        $stmt = mysqli_prepare($koneksi, "SELECT opsi FROM mapel WHERE id_mapel = ?");
        mysqli_stmt_bind_param($stmt, 'i', $id_mapel);
        mysqli_stmt_execute($stmt);
        $cari = mysqli_stmt_get_result($stmt);
        mysqli_stmt_close($stmt);
        
        if(mysqli_num_rows($cari) == 0) {
            throw new Exception("ID Mapel tidak ditemukan.");
        }
        $j_opt = mysqli_fetch_array($cari)['opsi'];

        $target_file = $target_dir . basename($namaFile);
        move_uploaded_file($tmp, $target_file);

        // 3. Regex yang lebih fleksibel
        $question_split = "/Soal\s*:\s*[0-9]+\)/i";
        $option_split   = "/\s*[A-E][:.]\s*/";
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
        
        $zip->extractTo($target_dir);
        $zip->close();

        $word_xml            = $target_dir . "word/document.xml";
        $word_xml_relational = $target_dir . "word/_rels/document.xml.rels";

        if (!file_exists($word_xml) || !file_exists($word_xml_relational)) {
            throw new Exception("Struktur file Word tidak valid atau korup.");
        }

        $content = file_get_contents($word_xml);
        $content = htmlentities(strip_tags($content, "<a:blip>"));
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

        $word_folder    = $target_dir . "word";
        $prop_folder    = $target_dir . "docProps";
        $relat_folder   = $target_dir . "_rels";
        $content_folder = $target_dir . "[Content_Types].xml";

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

            if(file_exists($old_path)) {
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
            $cqno = str_replace(['Soal:', ')'], '', $explflag[$ekey]);
            $cqno = trim($cqno);

            if ($cqno != ($ekey + 1)) {
                throw new Exception("Format soal salah pada soal nomor " . ($ekey + 1) . " atau soal tidak ditemukan.");
            }

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
                $val_option = str_replace("
", "<br>", $val_option);
            }
            $quesions[$cqno] = $options;
        }

        $stmt_mapel_jml = mysqli_prepare($koneksi, "SELECT jml_soal FROM mapel WHERE id_mapel = ?");
        mysqli_stmt_bind_param($stmt_mapel_jml, 'i', $id_mapel);
        mysqli_stmt_execute($stmt_mapel_jml);
        $mapel = mysqli_stmt_get_result($stmt_mapel_jml);
        mysqli_stmt_close($stmt_mapel_jml);
        
        $jml_soal = mysqli_fetch_array($mapel)[0];
        $jumlah_soal_diimpor = count($quesions);

        if ($jumlah_soal_diimpor < $jml_soal) {
            throw new Exception("Jumlah soal kurang. Jumlah soal di bank soal = " . $jml_soal . ". Soal diimport = " . $jumlah_soal_diimpor . ".");
        } else if ($jumlah_soal_diimpor > $jml_soal) {
            $stmt_update_mapel = mysqli_prepare($koneksi, "UPDATE mapel SET jml_soal = ? WHERE id_mapel = ?");
            mysqli_stmt_bind_param($stmt_update_mapel, 'ii', $jumlah_soal_diimpor, $id_mapel);
            mysqli_stmt_execute($stmt_update_mapel);
            mysqli_stmt_close($stmt_update_mapel);
        }

        $pg = 0; $es = 0; $g = 0; $gagal = "";
        
        $stmt_delete = mysqli_prepare($koneksi, "DELETE FROM soal WHERE id_mapel = ? AND nomor = ? AND jenis = ?");
        $stmt_insert = mysqli_prepare($koneksi, "INSERT INTO soal (id_mapel,nomor,soal,pilA,pilB,pilC,pilD,pilE,jawaban,jenis,file1) VALUES (?,?,?,?,?,?,?,?,?,?,?)");

        foreach ($quesions as $key => $value) {
            $jns = (count($value) == 1) ? 2 : 1;
            if ($jns == 2) {
                $es++; $no = $es;
                $value = [ $value[0], '', '', '', '', '', 'kunci' => '', 'audio' => '' ];
            } else {
                $no = $key;
            }
            
            if (!isset($value['audio'])) $value['audio'] = '';
            if (!isset($value['kunci'])) $value['kunci'] = '';
            for ($i=1; $i<=5; $i++) {
                if (!isset($value[$i])) $value[$i] = '';
            }

            mysqli_stmt_bind_param($stmt_delete, 'iii', $id_mapel, $no, $jns);
            mysqli_stmt_execute($stmt_delete);

            mysqli_stmt_bind_param($stmt_insert, 'issssssssis', $id_mapel, $no, $value[0], $value[1], $value[2], $value[3], $value[4], $value[5], $value['kunci'], $jns, $value['audio']);
            if (mysqli_stmt_execute($stmt_insert)) {
                if ($jns == 1) $pg++;
            } else {
                $g++;
                $gagal .= $no.",";
            }
        }
        mysqli_stmt_close($stmt_delete);
        mysqli_stmt_close($stmt_insert);

        $hasil = [
            "status" => "1",
            "id_mapel" => $id_mapel,
            "hasil" => "Jumlah Soal Pilihan Ganda = " . $pg . ".
Jumlah soal Essai = " . $es . ".
Jumlah soal gagal impor = " . $g . ($g > 0 ? ", Nomor " . rtrim($gagal, ',') : '') . "."
        ];
        echo json_encode($hasil);

    } catch (Exception $e) {
        echo json_encode(["status" => "0", "hasil" => $e->getMessage()]);
    } finally {
        // Blok ini akan selalu dieksekusi untuk membersihkan file sementara
        if (isset($word_folder) && is_dir($word_folder)) rrmdir($word_folder);
        if (isset($relat_folder) && is_dir($relat_folder)) rrmdir($relat_folder);
        if (isset($prop_folder) && is_dir($prop_folder)) rrmdir($prop_folder);
        if (isset($content_folder) && file_exists($content_folder)) @unlink($content_folder);
        if (isset($new_name_path) && file_exists($new_name_path)) @unlink($new_name_path);
        // Hapus file asli yang diupload jika masih ada
        if (isset($target_file) && file_exists($target_file)) @unlink($target_file);
    }

} else {
    echo "404";
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