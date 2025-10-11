<?php
require("../../config/config.default.php");
require("../../config/functions.crud.php");
require '../../vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Border;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Alignment;

$id_ujian = $_GET['m'];
$id_kelas = $_GET['k'];

$mapel = fetch($koneksi, 'mapel', ['id_mapel' => $id_ujian]);
$mata_pelajaran = fetch($koneksi, 'mata_pelajaran', ['kode_mapel' => $mapel['kode']]);
$id_mapel = $mapel['id_mapel'];

$ajaran = (date('m') >= 7 && date('m') <= 12) ? date('Y') . "/" . (date('Y') + 1) : (date('Y') - 1) . "/" . date('Y');
$file_name = "NILAI_" . preg_replace('/[^a-zA-Z0-9_\-]/', '_', $id_kelas . "_" . $mapel['nama']) . ".xlsx";

$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();

// Header Laporan
$sheet->setCellValue('A1', 'DAFTAR NILAI')->mergeCells('A1:H1');
$sheet->setCellValue('A2', 'UJIAN SATUAN PENDIDIKAN')->mergeCells('A2:H2');
$sheet->setCellValue('A3', 'SMK ABDI NEGARA TUBAN')->mergeCells('A3:H3');
$sheet->setCellValue('A4', 'TAHUN PELAJARAN ' . $ajaran)->mergeCells('A4:H4');

// Atur gaya header laporan
$sheet->getStyle('A1:A4')->applyFromArray([
    'font' => [
        'bold' => true,
        'size' => 14,
    ],
    'alignment' => [
        'horizontal' => Alignment::HORIZONTAL_CENTER,
    ],
]);

$nama_mapel_display = !empty($mata_pelajaran['nama_mapel']) ? $mata_pelajaran['nama_mapel'] : $mapel['nama'];
$sheet->setCellValue('A6', 'Mata Pelajaran: ' . $nama_mapel_display);
$sheet->setCellValue('A7', 'Jumlah Soal: ' . $mapel['jml_soal'] . ' PG / ' . $mapel['jml_esai'] . ' Esai');

// Header Tabel
$headers = ['No.', 'NIS', 'Nama', 'Kelas', 'Benar', 'Salah', 'Nilai', 'Nilai Esai'];
$columnIndex = 'A';
foreach ($headers as $header) {
    $sheet->setCellValue($columnIndex . '9', $header);
    $columnIndex++;
}

// Tambahkan kolom untuk jawaban PG dan atur lebarnya
for ($i = 1; $i <= $mapel['jml_soal']; $i++) {
    $sheet->setCellValue($columnIndex . '9', 'S' . $i);
    $sheet->getColumnDimension($columnIndex)->setWidth(4.25);
    $columnIndex++;
}

// Tambahkan kolom untuk jawaban Esai
for ($i = 1; $i <= $mapel['jml_esai']; $i++) {
    $sheet->setCellValue($columnIndex . '9', 'E' . $i);
    $sheet->getColumnDimension($columnIndex)->setWidth(20); // Beri lebar lebih untuk esai
    $columnIndex++;
}

$sheet->getColumnDimension('C')->setAutoSize(true);

// Atur gaya header tabel
$sheet->getStyle('A9:' . $columnIndex . '9')->applyFromArray([
    'font' => [
        'bold' => true,
        'color' => ['argb' => 'FFFFFF'],
    ],
    'fill' => [
        'fillType' => Fill::FILL_SOLID,
        'startColor' => ['argb' => '4CAF50'],
    ],
    'alignment' => [
        'horizontal' => Alignment::HORIZONTAL_CENTER,
        'vertical' => Alignment::VERTICAL_CENTER,
    ],
    'borders' => [
        'allBorders' => [
            'borderStyle' => Border::BORDER_THIN,
        ],
    ],
]);

// Ambil semua data soal dan kunci jawaban untuk ujian ini dalam satu query
$soal_data = [];
$query_soal = mysqli_query($koneksi, "SELECT id_soal, jawaban FROM soal WHERE id_mapel = '$id_mapel' ORDER BY id_soal ASC");
if ($query_soal) {
    $no_soal = 1;
    while ($s = mysqli_fetch_assoc($query_soal)) {
        $soal_data[(int)$s['id_soal']] = [
            'no' => $no_soal++,
            'jawaban' => $s['jawaban']
        ];
    }
}

// Fetch Data Siswa
$siswaQ = mysqli_query($koneksi, "SELECT * FROM siswa WHERE id_kelas = '$id_kelas' ORDER BY nama ASC");
if (!$siswaQ) {
    die("Tidak ada data siswa untuk kelas ini.");
}

$row = 10;
$no = 1;

while ($siswa = mysqli_fetch_assoc($siswaQ)) {
    $sheet->setCellValue('A' . $row, $no++);
    $sheet->setCellValue('B' . $row, $siswa['nis']);
    $sheet->setCellValue('C' . $row, $siswa['nama']);
    $sheet->setCellValue('D' . $row, $siswa['id_kelas']);

    $query_nilai = mysqli_query($koneksi, "SELECT * FROM nilai WHERE id_mapel = '$id_mapel' AND id_siswa = '" . $siswa['id_siswa'] . "'");
    if (mysqli_num_rows($query_nilai) > 0) {
        $nilai = mysqli_fetch_assoc($query_nilai);
        $sheet->setCellValue('E' . $row, $nilai['jml_benar']);
        $sheet->setCellValue('F' . $row, $nilai['jml_salah']);
        $sheet->setCellValue('G' . $row, round($nilai['skor'], 2));
        $sheet->setCellValue('H' . $row, round($nilai['nilai_esai'], 2));

        // Jawaban PG
        if (!empty($nilai['jawaban'])) {
            $jawaban_pg = unserialize($nilai['jawaban']);
            foreach ($jawaban_pg as $id_soal => $jawaban_siswa) {
                if (isset($soal_data[$id_soal])) {
                    $detail_soal = $soal_data[$id_soal];
                    $nomor_soal_urut = $detail_soal['no'];
                    $kunci_jawaban = $detail_soal['jawaban'];

                    // Hitung kolom yang benar untuk soal ini (I adalah kolom ke-9)
                    $col_index = 9 + $nomor_soal_urut - 1;
                    $column = \PhpOffice\PhpSpreadsheet\Cell\Coordinate::stringFromColumnIndex($col_index);
                    
                    $warna = ($jawaban_siswa == $kunci_jawaban) ? '00FF00' : (($jawaban_siswa == 'X') ? 'FFEB3B' : 'F44336');
                    $sheet->setCellValue($column . $row, $jawaban_siswa);
                    $sheet->getStyle($column . $row)
                        ->getFill()
                        ->setFillType(Fill::FILL_SOLID)
                        ->getStartColor()
                        ->setARGB($warna);
                }
            }
        }

        // Jawaban Esai
        if ($mapel['jml_esai'] > 0 && !empty($nilai['jawaban_esai'])) {
            $jawaban_esai = unserialize($nilai['jawaban_esai']);
            $i = 0;
            // Kolom esai dimulai setelah semua kolom PG (A-H adalah 8 kolom)
            $start_col_esai_index = 8 + $mapel['jml_soal'] + 1; 

            foreach ($jawaban_esai as $key => $value) {
                $col_index = $start_col_esai_index + $i;
                $column_letter = \PhpOffice\PhpSpreadsheet\Cell\Coordinate::stringFromColumnIndex($col_index);
                
                $sheet->setCellValue($column_letter . $row, $value);
                $sheet->getStyle($column_letter . $row)->getAlignment()->setWrapText(true);
                $i++;
            }
        }
    } else {
        $sheet->setCellValue('E' . $row, 'Tidak mengikuti ujian')->mergeCells('E' . $row . ':' . $columnIndex . $row);
    }

    // Terapkan border untuk baris saat ini
    $sheet->getStyle('A' . $row . ':' . $columnIndex . $row)->applyFromArray([
        'borders' => [
            'allBorders' => [
                'borderStyle' => Border::BORDER_THIN,
                'color' => ['argb' => '000000'],
            ],
        ],
    ]);

    $row++;
}

// Menambahkan border ke seluruh tabel (termasuk header)
$lastColumn = chr(ord('A') + 7 + $mapel['jml_soal'] + $mapel['jml_esai']); // Hitung kolom terakhir (jumlah soal pg + jumlah soal esai + 8 kolom tetap - 1)
$lastRow = $row - 1;

$sheet->getStyle('A9:' . $lastColumn . $lastRow)->applyFromArray([
    'borders' => [
        'allBorders' => [
            'borderStyle' => Border::BORDER_THIN,
            'color' => ['argb' => '000000'],
        ],
    ],
]);

// Atur perataan data tabel
$sheet->getStyle('A10:' . $lastColumn . $lastRow)->applyFromArray([
    'alignment' => [
        'horizontal' => Alignment::HORIZONTAL_CENTER,
        'vertical' => Alignment::VERTICAL_CENTER,
    ],
]);

// Atur perataan kiri khusus untuk kolom Nama
$sheet->getStyle('C10:C' . $lastRow)->applyFromArray([
    'alignment' => [
        'horizontal' => Alignment::HORIZONTAL_LEFT,
    ],
]);

$writer = new Xlsx($spreadsheet);

// Header untuk unduhan file
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header("Content-Disposition: attachment; filename=\"$file_name\"");
header('Cache-Control: max-age=0');
$writer->save('php://output');
exit;