
/*---------------------------------------------------------------
  SQL DB BACKUP 11.10.2025 09:35 
  HOST: localhost
  DATABASE: antcbt
  TABLES: *
  ---------------------------------------------------------------*/

/*---------------------------------------------------------------
  TABLE: `berita`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `berita`;
CREATE TABLE `berita` (
  `id_berita` int(10) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(10) NOT NULL,
  `sesi` varchar(10) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `ikut` varchar(10) DEFAULT NULL,
  `susulan` varchar(10) DEFAULT NULL,
  `no_susulan` text DEFAULT NULL,
  `mulai` varchar(10) DEFAULT NULL,
  `selesai` varchar(10) DEFAULT NULL,
  `nama_proktor` varchar(50) DEFAULT NULL,
  `nip_proktor` varchar(50) DEFAULT NULL,
  `nama_pengawas` varchar(50) DEFAULT NULL,
  `nip_pengawas` varchar(50) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `tgl_ujian` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `file_pendukung`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `file_pendukung`;
CREATE TABLE `file_pendukung` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(11) DEFAULT 0,
  `nama_file` varchar(50) DEFAULT NULL,
  `status_file` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
INSERT INTO `file_pendukung` VALUES   ('1','2','17601489521.png',NULL);
INSERT INTO `file_pendukung` VALUES ('2','2','17601489851.png',NULL);
INSERT INTO `file_pendukung` VALUES ('3','1','17601495281.png',NULL);
INSERT INTO `file_pendukung` VALUES ('4','4','17601499811.png',NULL);
INSERT INTO `file_pendukung` VALUES ('5','4','17601499812.png',NULL);
INSERT INTO `file_pendukung` VALUES ('6','4','17601499813.png',NULL);
INSERT INTO `file_pendukung` VALUES ('7','4','17601499814.png',NULL);
INSERT INTO `file_pendukung` VALUES ('8','4','17601499815.png',NULL);
INSERT INTO `file_pendukung` VALUES ('9','4','17601499816.png',NULL);
INSERT INTO `file_pendukung` VALUES ('10','4','17601499817.png',NULL);
INSERT INTO `file_pendukung` VALUES ('11','4','17601499818.png',NULL);
INSERT INTO `file_pendukung` VALUES ('12','4','17601499819.png',NULL);
INSERT INTO `file_pendukung` VALUES ('13','4','176014998110.png',NULL);
INSERT INTO `file_pendukung` VALUES ('14','4','176014998111.png',NULL);

/*---------------------------------------------------------------
  TABLE: `jawaban`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jawaban`;
CREATE TABLE `jawaban` (
  `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `jawaban` char(1) DEFAULT NULL,
  `jawabx` char(1) DEFAULT NULL,
  `jenis` int(1) NOT NULL,
  `esai` text DEFAULT NULL,
  `nilai_esai` int(5) NOT NULL DEFAULT 0,
  `ragu` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `jawaban_tugas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jawaban_tugas`;
CREATE TABLE `jawaban_tugas` (
  `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) DEFAULT NULL,
  `id_tugas` int(11) DEFAULT NULL,
  `jawaban` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_dikerjakan` datetime DEFAULT NULL,
  `tgl_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nilai` varchar(5) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `jenis`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jenis`;
CREATE TABLE `jenis` (
  `id_jenis` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `jenis` VALUES   ('UAS','Ujian Akhir Semester','tidak');
INSERT INTO `jenis` VALUES ('UTS','Ujian Tengah Semester','aktif');

/*---------------------------------------------------------------
  TABLE: `jurusan`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jurusan`;
CREATE TABLE `jurusan` (
  `jurusan_id` varchar(25) NOT NULL,
  `nama_jurusan_sp` varchar(100) DEFAULT NULL,
  `kurikulum` varchar(120) DEFAULT NULL,
  `jurusan_sp_id` varchar(50) DEFAULT NULL,
  `kurikulum_id` varchar(20) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`jurusan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `kelas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas` (
  `id_kelas` varchar(11) NOT NULL,
  `level` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  `semester_id` varchar(10) DEFAULT NULL,
  `id_raport` int(11) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `kelas` VALUES   ('X AK','X','X AK',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('X BD','X','X BD',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('X LPKK','X','X LPKK',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('X PH','X','X PH',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('X RPL','X','X RPL',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('XI AK','XI','XI AK',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('XI BD','XI','XI BD',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('XI LPKKK','XI','XI LPKKK',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('XI PH','XI','XI PH',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('XI RPL','XI','XI RPL',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('XII AK','XII','XII AK',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('XII PH','XII','XII PH',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('XII RPL','XII','XII RPL',NULL,NULL,'0');

/*---------------------------------------------------------------
  TABLE: `level`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `kode_level` varchar(5) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `level` VALUES   ('X','X',NULL);
INSERT INTO `level` VALUES ('XI','XI',NULL);
INSERT INTO `level` VALUES ('XII','XII',NULL);

/*---------------------------------------------------------------
  TABLE: `log`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `mapel`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `mapel`;
CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) NOT NULL DEFAULT '0',
  `idpk` varchar(255) NOT NULL,
  `idguru` varchar(3) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL DEFAULT 0,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL DEFAULT 0,
  `bobot_pg` int(5) NOT NULL,
  `bobot_esai` int(5) NOT NULL DEFAULT 0,
  `level` varchar(5) NOT NULL,
  `opsi` int(1) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(2) NOT NULL,
  `kkm` int(3) DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mapel`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
INSERT INTO `mapel` VALUES   ('1','X-AGAMA-ISLAM','a:1:{i:0;s:5:\"semua\";}','268','PEND.-AGAMA-DAN-BUDI-PEKERTI','40','5','35','5','70','30','X','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 09:25:28','1','75','');
INSERT INTO `mapel` VALUES ('2','X-AGAMA-KRISTEN','a:1:{i:0;s:5:\"semua\";}','276','PEND.-AGAMA-DAN-BUDI-PEKERTI','40','5','35','5','70','30','X','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 09:16:25','1','75','');
INSERT INTO `mapel` VALUES ('3','X-PENDIDIKAN-PANCASILA','a:1:{i:0;s:5:\"semua\";}','288','PENDIDIKAN-PANCASILA','40','5','35','5','70','30','X','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 09:26:25','1','75','');
INSERT INTO `mapel` VALUES ('4','XI-AGAMA-ISLAM','a:1:{i:0;s:5:\"semua\";}','299','PEND.-AGAMA-DAN-BUDI-PEKERTI','40','5','35','5','70','30','XI','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 09:33:01','1','75','');
INSERT INTO `mapel` VALUES ('5','XI-AGAMA-KRISTEN','a:1:{i:0;s:5:\"semua\";}','276','PEND.-AGAMA-DAN-BUDI-PEKERTI','40','5','35','5','70','30','XI','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 09:33:16','1','75','');
INSERT INTO `mapel` VALUES ('6','XI-PENDIDIKAN-PANCASILA','a:1:{i:0;s:5:\"semua\";}','288','PENDIDIKAN-PANCASILA','40','5','35','5','70','30','XI','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 09:33:26','1','75','');
INSERT INTO `mapel` VALUES ('7','XII-AGAMA-ISLAM','a:1:{i:0;s:5:\"semua\";}','299','PEND.-AGAMA-DAN-BUDI-PEKERTI','40','5','35','5','70','30','XII','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 09:33:37','1','75','');
INSERT INTO `mapel` VALUES ('8','XII-AGAMA-KRISTEN','a:1:{i:0;s:5:\"semua\";}','276','PEND.-AGAMA-DAN-BUDI-PEKERTI','40','5','35','5','70','30','XII','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 09:33:52','1','75','');
INSERT INTO `mapel` VALUES ('9','XII-PENDIDIKAN-PANCASILA','a:1:{i:0;s:5:\"semua\";}','288','PENDIDIKAN-PANCASILA','40','5','35','5','70','30','XII','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 09:35:14','1','75','');

/*---------------------------------------------------------------
  TABLE: `mata_pelajaran`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `mata_pelajaran`;
CREATE TABLE `mata_pelajaran` (
  `kode_mapel` varchar(255) NOT NULL,
  `nama_mapel` varchar(255) NOT NULL,
  `mata_pelajaran_id` varchar(10) DEFAULT NULL,
  `mapel_id` int(11) NOT NULL,
  PRIMARY KEY (`kode_mapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `mata_pelajaran` VALUES   ('ADMINITRASI-FARMASI','ADMINITRASI FARMASI',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('AKUNTANSI-KEUANGAN','AKUNTANSI KEUANGAN',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('AKUNTANSI-KOPERASI/UMKM','AKUNTANSI KOPERASI/UMKM',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('AKUNTANSI-LEMBAGA','AKUNTANSI LEMBAGA',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('BAHASA-JAWA','BAHASA JAWA',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('BASIS-DATA','BASIS DATA',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('BHS.-INDONESIA','BHS. INDONESIA',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('BHS.-INGGRIS','BHS. INGGRIS',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('DASAR-DASAR-PROGRAM-KEAHLIAN','DASAR - DASAR PROGRAM KEAHLIAN',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('DESAIN-VISUAL-UI/UX','DESAIN VISUAL UI/UX',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('DIGITAL-MARKETING-DAN-DIGITAL-BRANDING','DIGITAL MARKETING DAN DIGITAL BRANDING',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('DIGITAL-ON-BOARDING','DIGITAL ON BOARDING',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('DIGITAL-OPERATION','DIGITAL OPERATION',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('ENGLISH-FOR-HOTEL','ENGLISH FOR HOTEL',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('FARMAKOGNISI','FARMAKOGNISI',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('FARMAKOLOGI','FARMAKOLOGI',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('FOOD-AND-BEVERAGE','FOOD AND BEVERAGE',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('FRONT-OFFICE','FRONT OFFICE',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('HOUSEKEEPING','HOUSEKEEPING',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('INFORMATIKA','INFORMATIKA',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('INTERNET-OF-THINGS','INTERNET OF THINGS',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('KOMPUTER-AKUNTANSI','KOMPUTER AKUNTANSI',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('KOMUNIKASI-BISNIS','KOMUNIKASI BISNIS',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('KREATIVITAS,-INOVASI-DAN-KEWIRAUSHAAN','KREATIVITAS, INOVASI DAN KEWIRAUSHAAN',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('LAUNDRY','LAUNDRY',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('MARKETING','MARKETING',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('MATEMATIKA','MATEMATIKA',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('PELAYANAN-FARMASI','PELAYANAN FARMASI',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('PEMOGRAMAN-BERORIENTASI-OBJEK','PEMOGRAMAN BERORIENTASI OBJEK',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('PEMOGRAMAN-PERANGKAT-BERGERAK','PEMOGRAMAN PERANGKAT BERGERAK',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('PEMOGRAMAN-TEKS-GRAFIS-DAN-MULTIMEDIA','PEMOGRAMAN TEKS GRAFIS DAN MULTIMEDIA',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('PEMOGRAMAN-WEB','PEMOGRAMAN WEB',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('PEND.-AGAMA-DAN-BUDI-PEKERTI','PEND. AGAMA DAN BUDI PEKERTI',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('PENDIDIKAN-PANCASILA','PENDIDIKAN PANCASILA',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('PERENCANAAN-BISNIS','PERENCANAAN BISNIS',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('PERPAJAKAN','PERPAJAKAN',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('PJOK','PJOK',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('PRAKTIKUM-AKUNTANSI-PERUSAHAAN-JASA,-DAGANG-DAN-MANUFAKTUR','PRAKTIKUM AKUNTANSI PERUSAHAAN JASA, DAGANG DAN MANUFAKTUR',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('PROJEK-IPAS','PROJEK IPAS',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('SEJARAH','SEJARAH',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('SENI-MUSIK','SENI MUSIK',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('SINONIM-BAHASA-LATIN-DAN-ADMINITRASI-DIGITAL','SINONIM BAHASA LATIN DAN ADMINITRASI DIGITAL',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('VM-DAN-ADMINISTRASI-TRANSAKSI','VM DAN ADMINISTRASI TRANSAKSI',NULL,'0');

/*---------------------------------------------------------------
  TABLE: `materi`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `materi`;
CREATE TABLE `materi` (
  `id_materi` int(255) NOT NULL AUTO_INCREMENT,
  `id_guru` int(255) NOT NULL DEFAULT 0,
  `kelas` text NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `materi` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_mulai` datetime NOT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_materi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `nilai`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `nilai`;
CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_ujian` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `kode_ujian` varchar(30) NOT NULL,
  `ujian_mulai` varchar(20) NOT NULL,
  `ujian_berlangsung` varchar(20) DEFAULT NULL,
  `ujian_selesai` varchar(20) DEFAULT NULL,
  `jml_benar` int(10) DEFAULT NULL,
  `jml_salah` int(10) DEFAULT NULL,
  `nilai_esai` varchar(10) DEFAULT NULL,
  `skor` varchar(10) DEFAULT NULL,
  `total` varchar(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `hasil` int(2) NOT NULL,
  `jawaban` text DEFAULT NULL,
  `jawaban_esai` longtext DEFAULT NULL,
  `nilai_esai2` text DEFAULT NULL,
  `online` int(1) NOT NULL DEFAULT 0,
  `id_soal` longtext DEFAULT NULL,
  `id_opsi` longtext DEFAULT NULL,
  `id_esai` text DEFAULT NULL,
  `blok` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_nilai`),
  KEY `id_mapel` (`id_mapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `pengawas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengawas`;
CREATE TABLE `pengawas` (
  `id_pengawas` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `no_ktp` varchar(16) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat_jalan` varchar(255) DEFAULT NULL,
  `rt_rw` varchar(8) DEFAULT NULL,
  `dusun` varchar(50) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(30) DEFAULT NULL,
  `kode_pos` int(6) DEFAULT NULL,
  `nuptk` varchar(20) DEFAULT NULL,
  `bidang_studi` varchar(50) DEFAULT NULL,
  `jenis_ptk` varchar(50) DEFAULT NULL,
  `tgs_tambahan` varchar(50) DEFAULT NULL,
  `status_pegawai` varchar(50) DEFAULT NULL,
  `status_aktif` varchar(20) DEFAULT NULL,
  `status_nikah` varchar(20) DEFAULT NULL,
  `sumber_gaji` varchar(30) DEFAULT NULL,
  `ahli_lab` varchar(10) DEFAULT NULL,
  `nama_ibu` varchar(40) DEFAULT NULL,
  `nama_suami` varchar(50) DEFAULT NULL,
  `nik_suami` varchar(20) DEFAULT NULL,
  `pekerjaan` varchar(20) DEFAULT NULL,
  `tmt` date DEFAULT NULL,
  `keahlian_isyarat` varchar(10) DEFAULT NULL,
  `kewarganegaraan` varchar(10) DEFAULT NULL,
  `npwp` varchar(16) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `ptk_id` varchar(50) DEFAULT NULL,
  `password2` text DEFAULT NULL,
  `ruang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pengawas`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8;
INSERT INTO `pengawas` VALUES   ('1','-','administrator','','admin','$2y$10$KUNIFi/JYf7d/tBHZyhSue5uzdspf2Khe4b6uMi51rWa5QPu4p/7O','admin','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','',NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('261','-','DRA. TUTIK RAHAYU',NULL,'guru1','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('262','-','USWATUN HASANAH, S.Pd',NULL,'guru2','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('263','-','DASA EKA NUGRAHA, S.Sos',NULL,'guru3','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('264','-','MIFTAKUL HUDA',NULL,'guru4','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('265','-','HERI KRISYONO',NULL,'guru5','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('266','-','NURISKA QODRIYAWATI,S.Pd',NULL,'guru6','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('267','-','SURYAWANTO, S.Pd',NULL,'guru7','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('268','-','SITI ELY NOVIYATI,S.Pd',NULL,'guru8','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('269','-','DYAH AYU MAULIDINA MUNITASARI, S.Pd',NULL,'guru9','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('270','-','NURUL KHOIRIYAH,S.Pd',NULL,'guru10','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('271','-','HERLINA FAIZAH, S.Pd.I',NULL,'guru11','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('272','-','AGUS TYAS FERRY FIRMANSYAH, S.PD',NULL,'guru12','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('273','-','UMU HANIK,S.AK',NULL,'guru13','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('274','-','SONNY WAHYU FAJAR ARIANTO, SE',NULL,'guru14','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('275','-','KONIS ZAITUN,A.MD',NULL,'guru15','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('276','-','ZAENI, S.TH',NULL,'guru16','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('277','-','YANNY HUSAIN KUSUMA, S.Pd',NULL,'guru17','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('278','-','SISCA SILVIANA, S.Pd',NULL,'guru18','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('279','-','SETIAWAN, S.PD',NULL,'guru19','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('280','-','DESTRI CAHYONO, S.Pd',NULL,'guru20','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('281','-','AMINU BIL HUDA',NULL,'guru21','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('282','-','INEZ GALUH APRILIAN, S.Pd',NULL,'guru22','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('283','-','HANIF ARIFANI AKBAR, S.FARM, APT',NULL,'guru23','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('284','-','DYNAR CANDRA SUKMAWAN, S.PD',NULL,'guru24','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('285','-','ANNALIS SETIYOWATI',NULL,'guru25','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('286','-','DORINA DINANDA AMELIA DWIE AUGUSTIEN',NULL,'guru26','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('287','-','SITI AMINUR ROHMAWATI, S.Pd',NULL,'guru27','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('288','-','EKO PUJI SANTOSO, S.PD',NULL,'guru28','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('289','-','KAMALLITA WAHYU SUKMAWATI,S.FARM, APT',NULL,'guru29','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('290','-','LIN NINGSIH AGUSTINA, S.PD',NULL,'guru30','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('291','-','DRS ROZIQIN, MA',NULL,'guru31','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('292','-','AHMAT SOLEH',NULL,'guru32','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('293','-','RUDIANTO',NULL,'guru33','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('294','-','YULISTYADI FIRMAN DWI PRAKOSO, S.KOM.',NULL,'guru34','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('295','-','NUR AKBAR ASH SHOMAD',NULL,'guru35','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('296','-','DANANG DWI PUTRA TEGUH WIYOSO',NULL,'guru36','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('297','-','M.SOLKAN, SH',NULL,'guru37','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('298','-','BAGUS PRASTYO',NULL,'guru38','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('299','-','MUHAMMAD SAHAL MAHFUDZ, MH',NULL,'guru39','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('300','-','DWI UDININGSIH, S.Pd',NULL,'guru40','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('301','-','SITI MEI SAROH, S.Pd',NULL,'guru41','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('302','-','MOCHAMMAD ALI ASY\'AD',NULL,'guru42','abdira','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*---------------------------------------------------------------
  TABLE: `pengumuman`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengumuman`;
CREATE TABLE `pengumuman` (
  `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `user` int(3) NOT NULL,
  `text` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `pk`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pk`;
CREATE TABLE `pk` (
  `id_pk` varchar(10) NOT NULL,
  `program_keahlian` varchar(50) NOT NULL,
  `jurusan_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `pk` VALUES   ('AK','AK',NULL);
INSERT INTO `pk` VALUES ('BD','BD',NULL);
INSERT INTO `pk` VALUES ('LPKKK','LPKKK',NULL);
INSERT INTO `pk` VALUES ('PH','PH',NULL);
INSERT INTO `pk` VALUES ('RPL','RPL',NULL);

/*---------------------------------------------------------------
  TABLE: `referensi_jurusan`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `referensi_jurusan`;
CREATE TABLE `referensi_jurusan` (
  `jurusan_id` varchar(10) NOT NULL,
  `nama_jurusan` varchar(100) DEFAULT NULL,
  `untuk_sma` int(1) NOT NULL,
  `untuk_smk` int(1) NOT NULL,
  `jenjang_pendidikan_id` int(1) DEFAULT NULL,
  PRIMARY KEY (`jurusan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `ruang`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `ruang`;
CREATE TABLE `ruang` (
  `kode_ruang` varchar(10) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  `proktor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode_ruang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `ruang` VALUES   ('LAB01','LAB01',NULL);
INSERT INTO `ruang` VALUES ('LAB02','LAB02',NULL);
INSERT INTO `ruang` VALUES ('LAB04','LAB04',NULL);

/*---------------------------------------------------------------
  TABLE: `semester`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester` (
  `semester_id` varchar(5) NOT NULL,
  `tahun_ajaran_id` varchar(4) NOT NULL,
  `nama_semester` varchar(50) NOT NULL,
  `semester` int(1) NOT NULL,
  `periode_aktif` enum('1','0') NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  PRIMARY KEY (`semester_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `server`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `server`;
CREATE TABLE `server` (
  `kode_server` varchar(20) NOT NULL,
  `nama_server` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `server` VALUES   ('SERVER01','SERVER01','aktif');
INSERT INTO `server` VALUES ('SERVER02','SERVER02','aktif');
INSERT INTO `server` VALUES ('SERVER03','SERVER03','aktif');
INSERT INTO `server` VALUES ('SERVER04','SERVER04','aktif');

/*---------------------------------------------------------------
  TABLE: `sesi`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `sesi`;
CREATE TABLE `sesi` (
  `kode_sesi` varchar(10) NOT NULL,
  `nama_sesi` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_sesi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `sesi` VALUES   ('1','1');
INSERT INTO `sesi` VALUES ('2','2');
INSERT INTO `sesi` VALUES ('3','3');

/*---------------------------------------------------------------
  TABLE: `session`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_time` varchar(10) NOT NULL,
  `session_hash` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `setting`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL AUTO_INCREMENT,
  `aplikasi` varchar(100) DEFAULT NULL,
  `kode_sekolah` varchar(10) DEFAULT NULL,
  `sekolah` varchar(50) DEFAULT NULL,
  `jenjang` varchar(5) DEFAULT NULL,
  `kepsek` varchar(50) DEFAULT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `header` text DEFAULT NULL,
  `header_kartu` text DEFAULT NULL,
  `nama_ujian` text DEFAULT NULL,
  `versi` varchar(10) DEFAULT NULL,
  `ip_server` varchar(100) DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL,
  `server` varchar(50) DEFAULT NULL,
  `id_server` varchar(50) DEFAULT NULL,
  `url_host` varchar(50) DEFAULT NULL,
  `token_api` varchar(50) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL,
  `npsn` varchar(10) DEFAULT NULL,
  `db_versi` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `setting` VALUES   ('1','ANT CBT','K05150115','SMK ABDI NEGARA TUBAN','SMK','Uswatun Hasanah, S.Pd','-','Jl. Dr. Wahidin SH No. 798 Tuban<br />\r\n','Tuban ','Tuban','03568832043','-','smkabdinegara.sch.id','smk.abdinegara798@gmail.com','dist/img/logo17.png','','KARTU PESERTA','Ujian Tengah Semester','2.5','http://192.168.0.200/antcbt','Asia/Jakarta','pusat','SR01','xxxxxx','VKLuYN7Lwjjwu','8cce47df-aae7-4274-83cb-5af3093eab56','69787351','2.8.1');

/*---------------------------------------------------------------
  TABLE: `sinkron`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `sinkron`;
CREATE TABLE `sinkron` (
  `nama_data` varchar(50) NOT NULL,
  `data` varchar(50) DEFAULT NULL,
  `jumlah` varchar(50) DEFAULT NULL,
  `tanggal` varchar(50) DEFAULT NULL,
  `status_sinkron` int(11) DEFAULT NULL,
  PRIMARY KEY (`nama_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `sinkron` VALUES   ('DATA1','siswa','','','0');
INSERT INTO `sinkron` VALUES ('DATA2','bank soal','','','0');
INSERT INTO `sinkron` VALUES ('DATA3','soal','','','0');
INSERT INTO `sinkron` VALUES ('DATA4','jadwal','','','0');

/*---------------------------------------------------------------
  TABLE: `siswa`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `id_kelas` varchar(11) DEFAULT NULL,
  `idpk` varchar(10) DEFAULT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `no_peserta` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `level` varchar(5) DEFAULT NULL,
  `ruang` varchar(10) DEFAULT NULL,
  `sesi` int(2) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(30) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `kebutuhan_khusus` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `dusun` varchar(100) DEFAULT NULL,
  `kelurahan` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kode_pos` int(10) DEFAULT NULL,
  `jenis_tinggal` varchar(100) DEFAULT NULL,
  `alat_transportasi` varchar(100) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `skhun` int(11) DEFAULT NULL,
  `no_kps` varchar(50) DEFAULT NULL,
  `nama_ayah` varchar(150) DEFAULT NULL,
  `tahun_lahir_ayah` int(4) DEFAULT NULL,
  `pendidikan_ayah` varchar(50) DEFAULT NULL,
  `pekerjaan_ayah` varchar(100) DEFAULT NULL,
  `penghasilan_ayah` varchar(100) DEFAULT NULL,
  `nohp_ayah` varchar(15) DEFAULT NULL,
  `nama_ibu` varchar(150) DEFAULT NULL,
  `tahun_lahir_ibu` int(4) DEFAULT NULL,
  `pendidikan_ibu` varchar(50) DEFAULT NULL,
  `pekerjaan_ibu` varchar(100) DEFAULT NULL,
  `penghasilan_ibu` varchar(100) DEFAULT NULL,
  `nohp_ibu` int(15) DEFAULT NULL,
  `nama_wali` varchar(150) DEFAULT NULL,
  `tahun_lahir_wali` int(4) DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(100) DEFAULT NULL,
  `penghasilan_wali` varchar(50) DEFAULT NULL,
  `angkatan` int(5) DEFAULT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `peserta_didik_id` varchar(50) DEFAULT NULL,
  `semester_id` varchar(10) DEFAULT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `online` int(1) DEFAULT 0,
  `no_meja` varchar(2) NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=latin1;
INSERT INTO `siswa` VALUES   ('1','X AK','AK','0108934560','3594/924/8.3.3','CHOKY FIRZAN DIAT MIKA','X','LAB01','1','41497','90288*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','1');
INSERT INTO `siswa` VALUES ('2','X AK','AK','0105026508','3595/925/8.3.3','JEIN KWAKTOLO','X','LAB01','1','89557','23277*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','2');
INSERT INTO `siswa` VALUES ('3','X AK','AK','0106597180','3596/926/8.3.3','PUTRI','X','LAB01','1','42776','76415*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','3');
INSERT INTO `siswa` VALUES ('4','X AK','AK','0099380551','3597/927/8.3.3','RAHMAD DZUL KIFLI','X','LAB01','1','11117','12287*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','4');
INSERT INTO `siswa` VALUES ('5','X AK','AK','0095824324','3598/928/8.3.3','RENI ICA OTAVIA','X','LAB01','1','27814','30734*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','5');
INSERT INTO `siswa` VALUES ('6','X AK','AK','0107697462','3599/929/8.3.3','SITI NUR KHOLIFAH','X','LAB01','1','75125','53129*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','6');
INSERT INTO `siswa` VALUES ('7','X AK','AK','0082063256','3600/930/8.3.3','TOTOK SAPUTRO','X','LAB01','1','34202','66048*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','7');
INSERT INTO `siswa` VALUES ('8','X AK','AK','0103237821','3601/931/8.3.3','ZASKIA ADIYA MEGA DEWI','X','LAB01','1','88948','99200*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','8');
INSERT INTO `siswa` VALUES ('9','X BD','BD','0101358015','3602/509/8.1.1','AHMAD SUHANDIKA','X','LAB01','1','79622','19045*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','9');
INSERT INTO `siswa` VALUES ('10','X BD','BD','0108680513 ','3603/510/8.1.1','AL YASARI FAROKAH','X','LAB01','1','44445','69088*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','10');
INSERT INTO `siswa` VALUES ('11','X BD','BD','0094588964','3604/511/8.1.1','ALLISYA MEYFANNY','X','LAB01','1','66977','53770*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','11');
INSERT INTO `siswa` VALUES ('12','X BD','BD','3085684324','3605/512/8.1.1','AMANDA DWI ANGGELIKA','X','LAB01','1','83659','73574*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','12');
INSERT INTO `siswa` VALUES ('13','X BD','BD','0083528080','3606/513/8.1.1','I\'IS RELAWATI','X','LAB01','1','42358','69137*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','13');
INSERT INTO `siswa` VALUES ('14','X BD','BD','0094158142','3607/514/8.1.1','MELISA CITRA WULAN','X','LAB01','1','63861','98067*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','14');
INSERT INTO `siswa` VALUES ('15','X BD','BD','0102952723','3608/515/8.1.1','MELLISA FERNANDA','X','LAB01','1','47195','68385*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','15');
INSERT INTO `siswa` VALUES ('16','X BD','BD','0099952457','3609/516/8.1.1','MOHAMAD DAFAA\' ADITYA ATMAJA','X','LAB01','1','89791','55012*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','16');
INSERT INTO `siswa` VALUES ('17','X BD','BD','0092452072','3610/517/8.1.1','NARENDRA ALVINO','X','LAB01','1','64296','63275*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','17');
INSERT INTO `siswa` VALUES ('18','X BD','BD','0102216343','3611/518/8.1.1','NAVA ETI SEJATI','X','LAB01','1','22621','86610*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','18');
INSERT INTO `siswa` VALUES ('19','X BD','BD','0091536988','3612/519/8.1.1','NAYSIFAFRANDA AKIUL NASWA','X','LAB01','1','77582','95522*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','19');
INSERT INTO `siswa` VALUES ('20','X BD','BD','0097564232','3613/520/8.1.1','NUR ESA RAHAYU','X','LAB01','1','67305','48869*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','20');
INSERT INTO `siswa` VALUES ('21','X BD','BD','0097067495','3614/521/8.1.1','NURUL JANNAH','X','LAB01','1','51335','52062*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','21');
INSERT INTO `siswa` VALUES ('22','X BD','BD','0096504463','3615/522/8.1.1','NURUL SAMAWATI','X','LAB01','1','97204','12913*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','22');
INSERT INTO `siswa` VALUES ('23','X BD','BD','0099980365','3616/523/8.1.1','RAHMAT DZUL KORNEN','X','LAB01','1','23033','50599*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','23');
INSERT INTO `siswa` VALUES ('24','X BD','BD','0102251710','3617/524/8.1.1','SHETYA DEWI NINGRUM','X','LAB01','1','74733','91234*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','24');
INSERT INTO `siswa` VALUES ('25','X BD','BD','0101963976','3618/525/8.1.1','SITI LAILATUL MARDHIYAH','X','LAB01','1','44489','92836*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','25');
INSERT INTO `siswa` VALUES ('26','X BD','BD','0084461020','3619/526/8.1.1','SUHARWO','X','LAB01','1','50721','79514*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','26');
INSERT INTO `siswa` VALUES ('27','X BD','BD','0101007913','3620/527/8.1.1','TIA MOURINA MARTHA','X','LAB01','1','54710','51443*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','27');
INSERT INTO `siswa` VALUES ('28','X LPKK','LPKKK','0095836125','3660/277/5.3.1','AHMAD ZAHIR HADI MAULANA','X','LAB02','1','98737','13262*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','1');
INSERT INTO `siswa` VALUES ('29','X LPKK','LPKKK','0098892795','3661/278/5.3.1','AJENG AYU LUPITA SARI','X','LAB02','1','78194','70388*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','2');
INSERT INTO `siswa` VALUES ('30','X LPKK','LPKKK','3106477072','3662/279/5.3.1','ASYIFA ICA FEBRIANA','X','LAB02','1','34234','21043*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','3');
INSERT INTO `siswa` VALUES ('31','X LPKK','LPKKK','0083994911','3663/280/5.3.1','BINTANG MEI AWALIYANTI','X','LAB02','1','23029','26940*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','4');
INSERT INTO `siswa` VALUES ('32','X LPKK','LPKKK','3094309742','3664/281/5.3.1','CAROLINE AWIDA PEKEI','X','LAB02','1','33727','17800*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','5');
INSERT INTO `siswa` VALUES ('33','X LPKK','LPKKK','3103576743','3665/282/5.3.1','DIFA JULIA SETIYA SARI','X','LAB02','1','18507','83576*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','6');
INSERT INTO `siswa` VALUES ('34','X LPKK','LPKKK','3106210106','3666/283/5.3.1','DINDA AMEILIA','X','LAB02','1','26655','78731*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','7');
INSERT INTO `siswa` VALUES ('35','X LPKK','LPKKK','3104235536','3667/284/5.3.1','GALUH ANANDA REVIOLA','X','LAB02','1','46814','61337*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','8');
INSERT INTO `siswa` VALUES ('36','X LPKK','LPKKK','0073790785','3668/285/5.3.1','HENNY MUDERCE  AMBRAU','X','LAB02','1','44272','58021*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','9');
INSERT INTO `siswa` VALUES ('37','X LPKK','LPKKK','0099064292','3669/286/5.3.1','MISCA NURMALASARI','X','LAB02','1','70334','18339*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','10');
INSERT INTO `siswa` VALUES ('38','X LPKK','LPKKK','0097316450','3670/287/5.3.1','MUHAMMAD QOBRIR JAILANI','X','LAB02','1','80730','25122*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','11');
INSERT INTO `siswa` VALUES ('39','X LPKK','LPKKK','0091559550','3671/288/5.3.1','NABIL ROSIDHA','X','LAB02','1','11275','69295*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','12');
INSERT INTO `siswa` VALUES ('40','X LPKK','LPKKK','0105326967','3672/289/5.3.1','NABILLA CAESARIA DANISWARA','X','LAB02','1','47123','57088*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','13');
INSERT INTO `siswa` VALUES ('41','X LPKK','LPKKK','0092556020','3673/290/5.3.1','NOVINA EKA SAFITRI','X','LAB02','1','12716','51394*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','14');
INSERT INTO `siswa` VALUES ('42','X LPKK','LPKKK','3103404247','3674/291/5.3.1','SALMA MUFIDAH RAMADHANI','X','LAB02','1','36115','47587*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','15');
INSERT INTO `siswa` VALUES ('43','X LPKK','LPKKK','0063426670','3675/292/5.3.1','SINTA MAHARANI','X','LAB02','1','56122','10779*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','16');
INSERT INTO `siswa` VALUES ('44','X LPKK','LPKKK','0083504030','3676/293/5.3.1','SINTIYA NURJANNAH','X','LAB02','1','83611','49230*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','17');
INSERT INTO `siswa` VALUES ('45','X LPKK','LPKKK','0108508534','3677/294/5.3.1','SULISTIA FEBRY MAULUDIA','X','LAB02','1','94481','89160*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','18');
INSERT INTO `siswa` VALUES ('46','X LPKK','LPKKK','0108221385','3678/295/5.3.1','WIDIA KESYA ANATASA','X','LAB02','1','48621','97377*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','19');
INSERT INTO `siswa` VALUES ('47','X LPKK','LPKKK','0109440737','3679/296/5.3.1','YULIANA TEBAI','X','LAB02','1','59036','82329*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','20');
INSERT INTO `siswa` VALUES ('48','X PH','PH','0099583315','3621/632/9.2.1','AGFIAN RAMA IZAL','X','LAB02','1','17557','41196*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','21');
INSERT INTO `siswa` VALUES ('49','X PH','PH','0098929895','3622/633/9.2.1','AHMAD ABDUL ROKHIM','X','LAB02','1','96581','64388*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','22');
INSERT INTO `siswa` VALUES ('50','X PH','PH','0096898031','3623/634/9.2.1','AHMAD ARIF WAHYUDI','X','LAB02','1','29003','16857*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','23');
INSERT INTO `siswa` VALUES ('51','X PH','PH','0083135490','3624/635/9.2.1','AHMAD SHAKA QOIRI','X','LAB02','1','85627','27070*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','24');
INSERT INTO `siswa` VALUES ('52','X PH','PH','0094365208','3625/636/9.2.1','AISYAH AURORA FARADILLAH','X','LAB02','1','30497','14244*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','25');
INSERT INTO `siswa` VALUES ('53','X PH','PH','3096132137','3626/637/9.2.1','ALDI NUR HERMANSYAH','X','LAB02','1','90316','46397*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','26');
INSERT INTO `siswa` VALUES ('54','X PH','PH','3109399086','3627/638/9.2.1','CHINDY AULIA PRATIWI','X','LAB02','1','16299','12237*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','27');
INSERT INTO `siswa` VALUES ('55','X PH','PH','0098042614','3628/639/9.2.1','CLARISTA DWI PUTRI KARTIKA','X','LAB04','1','20197','55054*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','1');
INSERT INTO `siswa` VALUES ('56','X PH','PH','0093014598','3629/640/9.2.1','DENI YULIA SETIAWAN','X','LAB04','1','70040','33537*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','2');
INSERT INTO `siswa` VALUES ('57','X PH','PH','0097545987','3630/641/9.2.1','EVI PUTRI PUSPITA SARI','X','LAB04','1','58488','86364*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','3');
INSERT INTO `siswa` VALUES ('58','X PH','PH','3097830393','3631/642/9.2.1','FERDI SETIO BEKTI','X','LAB04','1','98302','90148*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','4');
INSERT INTO `siswa` VALUES ('59','X PH','PH','0079668849','3632/643/9.2.1','FERDIANTO','X','LAB04','1','13401','33437*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','5');
INSERT INTO `siswa` VALUES ('60','X PH','PH','0108809871','3633/644/9.2.1','FERRI KURNIAWAN','X','LAB04','1','25892','52725*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','6');
INSERT INTO `siswa` VALUES ('61','X PH','PH','0092811081','3634/645/9.2.1','ICHA APRILIA KUSUMA NINGRUM','X','LAB04','1','80866','50550*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','7');
INSERT INTO `siswa` VALUES ('62','X PH','PH','0091425175','3635/646/9.2.1','KALILA ADELIA FEBRIANI','X','LAB04','1','48260','12925*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','8');
INSERT INTO `siswa` VALUES ('63','X PH','PH','0099867166','3636/647/9.2.1','LIES DIANTI','X','LAB04','1','19719','23271*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','9');
INSERT INTO `siswa` VALUES ('64','X PH','PH','0107629511','3637/648/9.2.1','MOHAMMAD ARDIANTO','X','LAB04','1','90350','52357*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','10');
INSERT INTO `siswa` VALUES ('65','X PH','PH','0094925399','3638/649/9.2.1','NADIA VICTORIA','X','LAB04','1','46504','22069*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','11');
INSERT INTO `siswa` VALUES ('66','X PH','PH','0091945794','3639/650/9.2.1','NUR FEBRI','X','LAB04','1','50331','96181*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','12');
INSERT INTO `siswa` VALUES ('67','X PH','PH','0094521050','3640/651/9.2.1','SALMA NUR LAELA','X','LAB04','1','23290','68445*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','13');
INSERT INTO `siswa` VALUES ('68','X PH','PH','3096777866','3641/652/9.2.1','SHOLIKHATUN NISAK','X','LAB04','1','55598','62280*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','14');
INSERT INTO `siswa` VALUES ('69','X PH','PH','3099948502','3642/653/9.2.1','SITI VIRA ARMANDA','X','LAB04','1','53753','76408*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','15');
INSERT INTO `siswa` VALUES ('70','X PH','PH','3097873998','3643/654/9.2.1','TAUFIQ NUR HIDAYAT','X','LAB04','1','40729','18926*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','16');
INSERT INTO `siswa` VALUES ('71','X PH','PH','0101425817','3644/655/9.2.1','WAHYU KURNIAWAN','X','LAB04','1','82763','62401*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','17');
INSERT INTO `siswa` VALUES ('72','X PH','PH','0116880490','3681/658/9.2.1','WILDA NURZILLA PUTRI','X','LAB04','1','33086','98647*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','18');
INSERT INTO `siswa` VALUES ('73','X PH','PH','0094031184','3645/656/9.2.1','WINDA AYU LALIANA','X','LAB04','1','36226','58657*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','19');
INSERT INTO `siswa` VALUES ('74','X PH','PH','0094954392','3646/657/9.2.1','YESSI DWI SETEFANI','X','LAB04','1','65970','21550*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','20');
INSERT INTO `siswa` VALUES ('75','X RPL','RPL','0099670166','3642/790/4.1.1','AFRILIA DWI LESTARI','X','LAB01','2','58935','17110*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','1');
INSERT INTO `siswa` VALUES ('76','X RPL','RPL','3099532844 ','3643/791/4.1.1','AHMAD SIHABUDIN H','X','LAB01','2','42512','57792*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','2');
INSERT INTO `siswa` VALUES ('77','X RPL','RPL','0093042659','3644/792/4.1.1','CHOKY AHMAD DHOHIR','X','LAB01','2','81711','64841*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','3');
INSERT INTO `siswa` VALUES ('78','X RPL','RPL','0088575983','3645/793/4.1.1','DIANG MUSTA KRISNA','X','LAB01','2','63140','78343*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','4');
INSERT INTO `siswa` VALUES ('79','X RPL','RPL','0099604567','3651/799/4.1.1','MUHAMMAD THOHIR AFANDHY','X','LAB01','2','53689','94328*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','5');
INSERT INTO `siswa` VALUES ('80','X RPL','RPL','0091738994','3648/796/4.1.1','MIGUEL MOBILALA','X','LAB01','2','39565','77611*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','6');
INSERT INTO `siswa` VALUES ('81','X RPL','RPL','0104145050','3649/797/4.1.1','MOCHAMAD ALIEF FEBRIYAN','X','LAB01','2','98347','67395*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','7');
INSERT INTO `siswa` VALUES ('82','X RPL','RPL','0109082726','3652/800/4.1.1','NELSON L. M. MAMORIBO','X','LAB01','2','35633','20088*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','8');
INSERT INTO `siswa` VALUES ('83','X RPL','RPL','0098183671','3655/803/4.1.1','RIYA PUJIATI','X','LAB01','2','65278','95999*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','9');
INSERT INTO `siswa` VALUES ('84','X RPL','RPL','0091640302','3656/804/4.1.1','SITI MUSHOLIKHAH KHOIRIAH','X','LAB01','2','36262','25031*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','10');
INSERT INTO `siswa` VALUES ('85','X RPL','RPL','3101897215','3658/806/4.1.1','WINARTI EKA PUTRI','X','LAB01','2','43106','61773*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','11');
INSERT INTO `siswa` VALUES ('86','X RPL','RPL','3100247045','3659/807/4.1.1','YONGKI FEBRIANSYAH','X','LAB01','2','23370','81118*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','12');
INSERT INTO `siswa` VALUES ('87','XI BD','BD','0091927818','3517/491/8.1.1','AHMAD FEBY PURWANTO','XI','LAB01','2','73430','77081*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','13');
INSERT INTO `siswa` VALUES ('88','XI BD','BD','0088984120','3518/492/8.1.1','AMANDA SISKA OLIVIA','XI','LAB01','2','34624','40716*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','14');
INSERT INTO `siswa` VALUES ('89','XI BD','BD','0095510294','3519/493/8.1.1','DENDRA','XI','LAB01','2','57229','69844*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','15');
INSERT INTO `siswa` VALUES ('90','XI BD','BD','0098359426','3520/494/8.1.1','DEWI LESTARI','XI','LAB01','2','19493','53035*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','16');
INSERT INTO `siswa` VALUES ('91','XI BD','BD','0092898410','3521/495/8.1.1','MAYA AL MAIROH','XI','LAB01','2','94708','47226*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','17');
INSERT INTO `siswa` VALUES ('92','XI BD','BD','0085607370','3522/496/8.1.1','NITALIYA','XI','LAB01','2','79513','43298*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','18');
INSERT INTO `siswa` VALUES ('93','XI BD','BD','0081784318','3523/497/8.1.1','NURVINA ELIVTIANA','XI','LAB01','2','68348','20027*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','19');
INSERT INTO `siswa` VALUES ('94','XI BD','BD','0093343110','3525/499/8.1.1','RINI NUR AULIA','XI','LAB01','2','57443','90969*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','20');
INSERT INTO `siswa` VALUES ('95','XI BD','BD','0086249441','3526/500/8.1.1','SAIFUL NURDIM','XI','LAB01','2','96773','70091*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','21');
INSERT INTO `siswa` VALUES ('96','XI BD','BD','0087772992','3527/501/8.1.1','SAL SABIL JULI BETHA SAFIRA','XI','LAB01','2','45273','14090*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','22');
INSERT INTO `siswa` VALUES ('97','XI BD','BD','0082884404','3528/502/8.1.1','SITI NUR\'AISYAH','XI','LAB01','2','63844','64141*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','23');
INSERT INTO `siswa` VALUES ('98','XI BD','BD','3096569562','3529/503/8.1.1','SITI YUNIA FAROATUN','XI','LAB01','2','62424','70241*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','24');
INSERT INTO `siswa` VALUES ('99','XI BD','BD','0085453517','3530/504/8.1.1','SRI RAHAYU TRIATMOJO','XI','LAB01','2','25573','82220*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','25');
INSERT INTO `siswa` VALUES ('100','XI BD','BD','0085336136','3531/505/8.1.1','SULISTIANA','XI','LAB01','2','94505','83738*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','26');
INSERT INTO `siswa` VALUES ('101','XI BD','BD','0096935017','3532/506/8.1.1','VIONALITA AFRIANTI','XI','LAB01','2','27347','36834*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','27');
INSERT INTO `siswa` VALUES ('102','XI BD','BD','0086936967','3533/507/8.1.1','YULFAIDA RAMADANI PUTRI AGUSTIN','XI','LAB01','2','58693','32203*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','28');
INSERT INTO `siswa` VALUES ('103','XI AK','AK','0083923417','3507/913/8.3.3','AFWINDA AFRIYANTI','XI','LAB02','2','41841','76436*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','1');
INSERT INTO `siswa` VALUES ('104','XI AK','AK','0088321882','3508/914/8.3.3','AURELLYA NAUFARA MEYLA PUTRI','XI','LAB02','2','11915','45079*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','2');
INSERT INTO `siswa` VALUES ('105','XI AK','AK','0095381824','3592/923/8.3.3','CINTA MAULIDYA','XI','LAB02','2','38144','73686*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','3');
INSERT INTO `siswa` VALUES ('106','XI AK','AK','0086492067','3509/915/8.3.3','FITRI OKTAVIA','XI','LAB02','2','68409','88592*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','4');
INSERT INTO `siswa` VALUES ('107','XI AK','AK','0097334140','3510/916/8.3.3','INTAN NUR QOMARIAH YUNITA','XI','LAB02','2','33001','47214*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','5');
INSERT INTO `siswa` VALUES ('108','XI AK','AK','3093035334','3511/917/8.3.3','JUNIA RIZKY AMELLIA','XI','LAB02','2','96227','19729*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','6');
INSERT INTO `siswa` VALUES ('109','XI AK','AK','0091419099','3512/918/8.3.3','KIKI OKTAVIANA PUTRI','XI','LAB02','2','31742','74620*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','7');
INSERT INTO `siswa` VALUES ('110','XI AK','AK','0087796692','3513/919/8.3.3','ROBIATUL CHULFIA','XI','LAB02','2','47671','68665*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','8');
INSERT INTO `siswa` VALUES ('111','XI AK','AK','0094814471','3514/920/8.3.3','SAFIRA NUR AULIA','XI','LAB02','2','32524','69246*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','9');
INSERT INTO `siswa` VALUES ('112','XI AK','AK','0098172557','3515/921/8.3.3','SINDI VIKA AULIA','XI','LAB02','2','26368','32606*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','10');
INSERT INTO `siswa` VALUES ('113','XI AK','AK','0081512484','3516/922/8.3.3','YASMIN ARA ISABEL','XI','LAB02','2','47165','69776*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','11');
INSERT INTO `siswa` VALUES ('114','XI LPKKK','LPKKK','0081829471','3561/246/5.3.1','AGUSTINA ZAYYAN NABILA','XI','LAB02','2','97037','67849*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','12');
INSERT INTO `siswa` VALUES ('115','XI LPKKK','LPKKK','3098143153','3562/247/5.3.1','AISYA SEPTIA PUTRI','XI','LAB02','2','47964','58761*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','13');
INSERT INTO `siswa` VALUES ('116','XI LPKKK','LPKKK','0082713422','3563/248/5.3.1','AISYAH SHALSA NUR IZAROH','XI','LAB02','2','60970','78652*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','14');
INSERT INTO `siswa` VALUES ('117','XI LPKKK','LPKKK','0088095402','3564/249/5.3.1','ALYA RIZKEYLA SAFITRI','XI','LAB02','2','89828','86502*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','15');
INSERT INTO `siswa` VALUES ('118','XI LPKKK','LPKKK','0087170788','3565/250/5.3.1','ANGGI FAJAR MULYANI','XI','LAB02','2','99265','26811*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','16');
INSERT INTO `siswa` VALUES ('119','XI LPKKK','LPKKK','0087183497','3566/251/5.3.1','AZARINA ROSNAIDA','XI','LAB02','2','86093','25367*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','17');
INSERT INTO `siswa` VALUES ('120','XI LPKKK','LPKKK','0087333210','3567/252/5.3.1','BINTANG IMAM SAFI\'I','XI','LAB02','2','41285','12842*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','18');
INSERT INTO `siswa` VALUES ('121','XI LPKKK','LPKKK','0081670305','3568/253/5.3.1','BUNGA BARBALINA WANIMBO','XI','LAB02','2','92612','46077*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','19');
INSERT INTO `siswa` VALUES ('122','XI LPKKK','LPKKK','0093682801','3569/254/5.3.1','CHERY KHANIARANI PERMANA','XI','LAB02','2','83519','62657*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','20');
INSERT INTO `siswa` VALUES ('123','XI LPKKK','LPKKK','0095716664','3570/255/5.3.1','DINDA AYU YULIANTI','XI','LAB02','2','24977','21474*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','21');
INSERT INTO `siswa` VALUES ('124','XI LPKKK','LPKKK','0094004442','3571/256/5.3.1','EVA ANJARSARI','XI','LAB02','2','73849','84571*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','22');
INSERT INTO `siswa` VALUES ('125','XI LPKKK','LPKKK','3085415312','3572/257/5.3.1','FERONIKA WAMINOP','XI','LAB02','2','19981','15390*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','23');
INSERT INTO `siswa` VALUES ('126','XI LPKKK','LPKKK','0086561931','3573/258/5.3.1','FIRDA NUR APIPAH','XI','LAB02','2','95935','30479*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','24');
INSERT INTO `siswa` VALUES ('127','XI LPKKK','LPKKK','0082462210','3574/259/5.3.1','INDAH SEPTYA RAMADHANI','XI','LAB02','2','22597','40425*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','25');
INSERT INTO `siswa` VALUES ('128','XI LPKKK','LPKKK','0095245735','3575/260/5.3.1','ISNA FITRIYAH','XI','LAB02','2','83119','97919*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','26');
INSERT INTO `siswa` VALUES ('129','XI LPKKK','LPKKK','0088586496','3576/261/5.3.1','JESSICA MALVA NYSA','XI','LAB02','2','88229','92352*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','27');
INSERT INTO `siswa` VALUES ('130','XI LPKKK','LPKKK','0092258995','3577/262/5.3.1','KAYLA FINDA ARZETA','XI','LAB04','2','93546','18337*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','1');
INSERT INTO `siswa` VALUES ('131','XI LPKKK','LPKKK','0085892694','3578/263/5.3.1','KERIN SILALAHI','XI','LAB04','2','27271','43269*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','2');
INSERT INTO `siswa` VALUES ('132','XI LPKKK','LPKKK','0089785434','3579/264/5.3.1','LU LU NUR ISMAH','XI','LAB04','2','40499','35828*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','3');
INSERT INTO `siswa` VALUES ('133','XI LPKKK','LPKKK','3098867550','3591/276/5.3.1','NILNA ROHMATAL MAULA','XI','LAB04','2','42586','11647*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','4');
INSERT INTO `siswa` VALUES ('134','XI LPKKK','LPKKK','0093092464','3580/265/5.3.1','REVITA MEISYA RINDANI','XI','LAB04','2','52486','43993*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','5');
INSERT INTO `siswa` VALUES ('135','XI LPKKK','LPKKK','0091172193','3581/266/5.3.1','SALSA BELA RAQIBATUN NAJA','XI','LAB04','2','65232','15027*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','6');
INSERT INTO `siswa` VALUES ('136','XI LPKKK','LPKKK','0086100441','3582/267/5.3.1','SELFI NUR AINI','XI','LAB04','2','68295','42802*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','7');
INSERT INTO `siswa` VALUES ('137','XI LPKKK','LPKKK','0092242063','3583/268/5.3.1','SIFA UL MUNAWAROH','XI','LAB04','2','20947','45231*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','8');
INSERT INTO `siswa` VALUES ('138','XI LPKKK','LPKKK','0085064949','3584/269/5.3.1','TAQIYATUL ANIQOH','XI','LAB04','2','41432','89378*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','9');
INSERT INTO `siswa` VALUES ('139','XI LPKKK','LPKKK','0092930844','3585/270/5.3.1','TIARA AYU AZZAHRA','XI','LAB04','2','91318','37936*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','10');
INSERT INTO `siswa` VALUES ('140','XI LPKKK','LPKKK','0084788525','3586/271/5.3.1','TIKA WAHYUNI ','XI','LAB04','2','65554','48274*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','11');
INSERT INTO `siswa` VALUES ('141','XI LPKKK','LPKKK','0089065992','3587/272/5.3.1','TRESYA DWI MARTHA','XI','LAB04','2','97307','39238*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','12');
INSERT INTO `siswa` VALUES ('142','XI LPKKK','LPKKK','0086514582','3588/273/5.3.1','VALENCIA NUR LAILA','XI','LAB04','2','51348','35992*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','13');
INSERT INTO `siswa` VALUES ('143','XI LPKKK','LPKKK','0099784935','3589/274/5.3.1','WIDYA WULAN APRILIA','XI','LAB04','2','74996','27633*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','14');
INSERT INTO `siswa` VALUES ('144','XI LPKKK','LPKKK','0076889226','3590/275/5.3.1','WINDA ESTURINA','XI','LAB04','2','28001','22369*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','15');
INSERT INTO `siswa` VALUES ('145','XI PH','PH','0088042575','3534/611/9.2.1','AHMAD AGUS SETYA ABADI','XI','LAB04','2','20171','90387*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','16');
INSERT INTO `siswa` VALUES ('146','XI PH','PH','0084433174','3535/612/9.2.1','AHMAD JALIL','XI','LAB04','2','52362','18831*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','17');
INSERT INTO `siswa` VALUES ('147','XI PH','PH','0085987867','3536/613/9.2.1','AHMAD ROBI','XI','LAB04','2','95729','24711*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','18');
INSERT INTO `siswa` VALUES ('148','XI PH','PH','0094524380','3537/614/9.2.1','ANGGA HANDAYANA SAPUTRA','XI','LAB04','2','61725','38741*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','19');
INSERT INTO `siswa` VALUES ('149','XI PH','PH','0046661092','3538/615/9.2.1','ANITA TABITA','XI','LAB04','2','51945','66481*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','20');
INSERT INTO `siswa` VALUES ('150','XI PH','PH','0074831450','3539/616/9.2.1','ARMAS DION SAPUTRA','XI','LAB01','3','87088','77535*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','1');
INSERT INTO `siswa` VALUES ('151','XI PH','PH','0084022362','3540/617/9.2.1','CIKA AGUSTINA','XI','LAB01','3','56020','48799*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','2');
INSERT INTO `siswa` VALUES ('152','XI PH','PH','0092199978','3541/618/9.2.1','CIKA AMELIA','XI','LAB01','3','54119','13797*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','3');
INSERT INTO `siswa` VALUES ('153','XI PH','PH','0082006355','3542/619/9.2.1','DURAKIM','XI','LAB01','3','56699','60084*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','4');
INSERT INTO `siswa` VALUES ('154','XI PH','PH','0072511826','3543/620/9.2.1','EKA WALUYO PUTRO','XI','LAB01','3','27242','83934*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','5');
INSERT INTO `siswa` VALUES ('155','XI PH','PH','0097868726','3545/622/9.2.1','KEREN SANGEROKI','XI','LAB01','3','24645','44699*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','6');
INSERT INTO `siswa` VALUES ('156','XI PH','PH','0094853593','3546/623/9.2.1','MOHAMMAD ZUBAERI AKBAR','XI','LAB01','3','23497','19146*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','7');
INSERT INTO `siswa` VALUES ('157','XI PH','PH','0082670430','3547/624/9.2.1','MONICA SILFIANA','XI','LAB01','3','33080','83726*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','8');
INSERT INTO `siswa` VALUES ('158','XI PH','PH','0085128954','3548/625/9.2.1','NANDA ANDIKA','XI','LAB01','3','70739','38405*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','9');
INSERT INTO `siswa` VALUES ('159','XI PH','PH','0097443987','3549/626/9.2.1','OCYROSE','XI','LAB01','3','77479','58884*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','10');
INSERT INTO `siswa` VALUES ('160','XI PH','PH','0085581657','3550/627/9.2.1','RINA RENATA','XI','LAB01','3','86871','43484*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','11');
INSERT INTO `siswa` VALUES ('161','XI PH','PH','0087112414','3551/628/9.2.1','SA IN DAVA OFANSA','XI','LAB01','3','59239','30122*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','12');
INSERT INTO `siswa` VALUES ('162','XI PH','PH','0087410172','3552/629/9.2.1','WIDIYANA PUTRI ANISYAH','XI','LAB01','3','85476','69045*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','13');
INSERT INTO `siswa` VALUES ('163','XI PH','PH','0092212153','3553/630/9.2.1','ZIDAN NIAM NUR ROHMAN','XI','LAB01','3','54708','25827*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','14');
INSERT INTO `siswa` VALUES ('164','XI RPL','RPL','3084817806','3554/782/4.1.1','AGUSTINUS SELEGANI','XI','LAB01','3','60777','64358*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','15');
INSERT INTO `siswa` VALUES ('165','XI RPL','RPL','0089385625','3555/783/4.1.1','BAYU SAMUDRA','XI','LAB01','3','81162','90560*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','16');
INSERT INTO `siswa` VALUES ('166','XI RPL','RPL','0092637522','3556/784/4.1.1','FRANSISKUS FERY KEGOU','XI','LAB01','3','63803','21424*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','17');
INSERT INTO `siswa` VALUES ('167','XI RPL','RPL','0095118059','3557/785/4.1.1','GIOVANNI ELYSIA DEWI','XI','LAB01','3','79060','92196*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','18');
INSERT INTO `siswa` VALUES ('168','XI RPL','RPL','0085892636','3558/786/4.1.1','KRISTIAN WAHYUDI ARDIASYAH','XI','LAB01','3','25042','77405*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','19');
INSERT INTO `siswa` VALUES ('169','XI RPL','RPL','0095147265','3559/787/4.1.1','MUHAMAD WAFIYUL AHDI','XI','LAB01','3','74534','17214*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','20');
INSERT INTO `siswa` VALUES ('170','XI RPL','RPL','0083092770','3560/788/4.1.1','MUHAMMAD NUR ALIF','XI','LAB01','3','40791','60160*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','21');
INSERT INTO `siswa` VALUES ('171','XII AK','AK','0076054715','3407/899.102','ALIYA PUTRI VERNANDA','XII','LAB01','3','49841','67783*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','22');
INSERT INTO `siswa` VALUES ('172','XII AK','AK','0079120258','3408/900.102','BARBIE GLADIS EXELZA','XII','LAB01','3','45986','67138*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','23');
INSERT INTO `siswa` VALUES ('173','XII AK','AK','0071808582','3409/901.102','CINTYA DWI FEBRIANTI','XII','LAB01','3','43727','96168*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','24');
INSERT INTO `siswa` VALUES ('174','XII AK','AK','0079226254','3410/902.102','DECHA MULYASARI','XII','LAB01','3','53119','97972*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','25');
INSERT INTO `siswa` VALUES ('175','XII AK','AK','0073876870','3411/903.102','DICHA AGRILYA ANGELITA','XII','LAB01','3','49124','69547*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','26');
INSERT INTO `siswa` VALUES ('176','XII AK','AK','0076394387','3412/904.102','EKA NUR AINI','XII','LAB01','3','31688','43862*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','27');
INSERT INTO `siswa` VALUES ('177','XII AK','AK','0078219451','3413/905.102','KHOIRIYA CINTA LESTARI','XII','LAB01','3','97702','14451*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','28');
INSERT INTO `siswa` VALUES ('178','XII AK','AK','0076864575','3414/906.102','KHOIRUR ROCHMAN AGUS FERDYANSYAH','XII','LAB02','3','98277','28565*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','1');
INSERT INTO `siswa` VALUES ('179','XII AK','AK','0072567640','3415/907.102','NIMATUL IZAA','XII','LAB02','3','32141','31362*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','2');
INSERT INTO `siswa` VALUES ('180','XII AK','AK','0072283326','3416/908.102','QOYYUM NAYMA PROVIDI','XII','LAB02','3','41858','75662*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','3');
INSERT INTO `siswa` VALUES ('181','XII AK','AK','0073086368','3417/909.102','RATNA AMELIA','XII','LAB02','3','75966','45690*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','4');
INSERT INTO `siswa` VALUES ('182','XII AK','AK','0082614169','3418/910.102','SELVI AYU ANJANI','XII','LAB02','3','23356','93927*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','5');
INSERT INTO `siswa` VALUES ('183','XII AK','AK','0073107529','3419/911.102','TASYA NUR FAIDA','XII','LAB02','3','32675','29860*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','6');
INSERT INTO `siswa` VALUES ('184','XII AK','AK','0066088767','3504/912.102','YUSFIKA AURALIA','XII','LAB02','3','63234','46840*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','7');
INSERT INTO `siswa` VALUES ('185','XII PH','PH','0086079783','3680/631.105','ADINDA SYHAVINA APRILYA IRAWAN','XII','LAB02','3','87330','43854*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','8');
INSERT INTO `siswa` VALUES ('186','XII PH','PH','0081317868','3439/581.105','AGENG HAYYU AL MUHYI','XII','LAB02','3','65048','21019*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','9');
INSERT INTO `siswa` VALUES ('187','XII PH','PH','0073805616','3442/584.105','CELSI OLIVVIA PUTRI','XII','LAB02','3','68815','87958*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','10');
INSERT INTO `siswa` VALUES ('188','XII PH','PH','0082041175','3443/585.105','CHESY ANASTASYA TERERE','XII','LAB02','3','24478','85320*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','11');
INSERT INTO `siswa` VALUES ('189','XII PH','PH','0072254352','3444/586.105','DELLA AFRILIA NANDA','XII','LAB02','3','56397','21142*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','12');
INSERT INTO `siswa` VALUES ('190','XII PH','PH','3071572751','3445/587.105','DIANA RAHAYU WARDHANA','XII','LAB02','3','14509','90484*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','13');
INSERT INTO `siswa` VALUES ('191','XII PH','PH','0077724216','3446/588.105','DICKY WAHYUDIN FEBRYEAN ARMANSYAH','XII','LAB02','3','77571','48674*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','14');
INSERT INTO `siswa` VALUES ('192','XII PH','PH','0074193670','3448/590.105','EKO BAGUS PRASETYO','XII','LAB02','3','47087','74212*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','15');
INSERT INTO `siswa` VALUES ('193','XII PH','PH','0077367362','3449/591.105','ELIS RISKI APRILIYANI','XII','LAB02','3','26878','88387*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','16');
INSERT INTO `siswa` VALUES ('194','XII PH','PH','0073264716','3450/592.105','FINA YULIA PRATIWI','XII','LAB02','3','65860','30100*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','17');
INSERT INTO `siswa` VALUES ('195','XII PH','PH','0072398743','3451/593.105','HANDIKA IRFAN FIRNANDA','XII','LAB02','3','87794','75345*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','18');
INSERT INTO `siswa` VALUES ('196','XII PH','PH','3081365402','3453/595.105','HIMA FITRIA FIDAYANTI','XII','LAB02','3','27854','50718*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','19');
INSERT INTO `siswa` VALUES ('197','XII PH','PH','0073682654','3454/596.105','IGO ARI PRATAMA SAPUTRA','XII','LAB02','3','62541','36105*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','20');
INSERT INTO `siswa` VALUES ('198','XII PH','PH','0078774458','3455/597.105','JAMILATUL HIDAYATI','XII','LAB02','3','33157','30514*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','21');
INSERT INTO `siswa` VALUES ('199','XII PH','PH','0077943081','3456/598.105','MAHENDRA','XII','LAB02','3','30987','11646*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','22');
INSERT INTO `siswa` VALUES ('200','XII PH','PH','0073149316','3457/599.105','MAR ATUS SHOLIHAH','XII','LAB02','3','52211','86636*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','23');
INSERT INTO `siswa` VALUES ('201','XII PH','PH','0083546000','3458/600.105','MAYA KIN-KIN ANGGRIYANI','XII','LAB02','3','92635','70571*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','24');
INSERT INTO `siswa` VALUES ('202','XII PH','PH','0084331161','3459/601.105','MILDA HIDAYATUL UMMAH','XII','LAB02','3','52001','37293*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','25');
INSERT INTO `siswa` VALUES ('203','XII PH','PH','3077263829','3460/602.105','MOHAMMAD AZKA NAUFAL HILMI','XII','LAB02','3','35716','61289*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','26');
INSERT INTO `siswa` VALUES ('204','XII PH','PH','0076848202','3461/603.105','NOVI AULIA RAHMAWATI','XII','LAB02','3','58482','85097*','','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','27');
INSERT INTO `siswa` VALUES ('205','XII PH','PH','0074952652','3462/604.105','REFA ZULI AMELIA','XII','LAB04','3','44441','17311*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','1');
INSERT INTO `siswa` VALUES ('206','XII PH','PH','0082299466','3464/606.105','RISKA MAULIDA RAHMA','XII','LAB04','3','21842','88997*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','2');
INSERT INTO `siswa` VALUES ('207','XII PH','PH','0075411891','3465/607.105','RISQI DWI FIRNANDO','XII','LAB04','3','45990','45323*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','3');
INSERT INTO `siswa` VALUES ('208','XII PH','PH','0072863667','3466/608.105','SELVIA FAIZURA','XII','LAB04','3','85006','20223*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','4');
INSERT INTO `siswa` VALUES ('209','XII PH','PH','0075759118','3467/609.105','SYAFINA NADYA PUTRI','XII','LAB04','3','62976','45139*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','5');
INSERT INTO `siswa` VALUES ('210','XII PH','PH','0088738928','3468/610.105','WISNU SAPUTRA','XII','LAB04','3','28386','40625*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','6');
INSERT INTO `siswa` VALUES ('211','XII RPL','RPL','0084976371','3470/767.063','ADINDA FATIMATUS ZAHRA ISLAMI','XII','LAB04','3','23511','50693*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','7');
INSERT INTO `siswa` VALUES ('212','XII RPL','RPL','0072726779','3471/768.063','AULIA RENANDA PASHA','XII','LAB04','3','42216','17396*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','8');
INSERT INTO `siswa` VALUES ('213','XII RPL','RPL','0073508319','3472/769.063','AZUHRIL REGA FAHRIN AKBAR MUHAMMAD','XII','LAB04','3','39438','76635*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','9');
INSERT INTO `siswa` VALUES ('214','XII RPL','RPL','0085026047','3473/770.063','CHRISTIABELLA','XII','LAB04','3','61380','80564*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','10');
INSERT INTO `siswa` VALUES ('215','XII RPL','RPL','0066246226','3474/771.063','DANIEL AGKWILA MANGGAPROW','XII','LAB04','3','41821','75361*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','11');
INSERT INTO `siswa` VALUES ('216','XII RPL','RPL','0079644925','3476/773.063','EVA OKTAVIANA','XII','LAB04','3','14694','48412*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','12');
INSERT INTO `siswa` VALUES ('217','XII RPL','RPL','0086599185','3477/774.063','FARIL FIRNANDA','XII','LAB04','3','84049','33184*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','13');
INSERT INTO `siswa` VALUES ('218','XII RPL','RPL','0087660050','3478/775.063','FRIZHA TRI ANGELS','XII','LAB04','3','13823','90206*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','14');
INSERT INTO `siswa` VALUES ('219','XII RPL','RPL','0089646116','3479/776.063','MOHAMMAD IWAN SAPUTRA','XII','LAB04','3','14930','84730*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','15');
INSERT INTO `siswa` VALUES ('220','XII RPL','RPL','0078615165','3480/777.063','NANDANA RIVA ARDIANSYAH','XII','LAB04','3','72537','74815*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','16');
INSERT INTO `siswa` VALUES ('221','XII RPL','RPL','0073825573','3481/778.063','RAGIL ABDULLOH RAJIB','XII','LAB04','3','76706','69792*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','17');
INSERT INTO `siswa` VALUES ('222','XII RPL','RPL','0088663562','3482/779.063','SITI NUR LAILATUS SHOLIHAH','XII','LAB04','3','87339','33950*','','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','18');
INSERT INTO `siswa` VALUES ('223','X RPL','RPL','0095445203','3647/789/4.1.1','ACHMAT RIZAL','X','LAB01','2','88281','47020*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','0');
INSERT INTO `siswa` VALUES ('224','X RPL','RPL','0081018536','3646/794/4.1.1','HAMDAN','X','LAB01','2','14788','29617*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','0');
INSERT INTO `siswa` VALUES ('225','X RPL','RPL','0095224087','3647/795/4.1.1','JAYSYA ASY SYAUQI','X','LAB01','2','71640','34854*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','0');
INSERT INTO `siswa` VALUES ('226','X RPL','RPL','0095124605','3650/798/4.1.1','MUHAMMAD KHOLIL IBRAHIM','X','LAB01','2','49583','62895*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','0');
INSERT INTO `siswa` VALUES ('227','X RPL','RPL','0096781604','3653/801/4.1.1','NOVAL ADI PUTRA AGUS FRIYONO','X','LAB01','2','36538','82046*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','0');
INSERT INTO `siswa` VALUES ('228','X RPL','RPL','0107749463','3654/802/4.1.1','RENDY FEBRIAN','X','LAB01','2','65487','89909*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','0');
INSERT INTO `siswa` VALUES ('229','X RPL','RPL','3103232349','3657/805/4.1.1','TORIQ HIDAYATULLAH PASARIBU','X','LAB01','2','11734','48148*','','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','0');

/*---------------------------------------------------------------
  TABLE: `soal`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `soal`;
CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(11) NOT NULL,
  `nomor` int(5) DEFAULT NULL,
  `soal` longtext DEFAULT NULL,
  `jenis` int(1) DEFAULT NULL,
  `pilA` longtext DEFAULT NULL,
  `pilB` longtext DEFAULT NULL,
  `pilC` longtext DEFAULT NULL,
  `pilD` longtext DEFAULT NULL,
  `pilE` longtext DEFAULT NULL,
  `jawaban` varchar(1) DEFAULT NULL,
  `file` mediumtext DEFAULT NULL,
  `file1` mediumtext DEFAULT NULL,
  `fileA` mediumtext DEFAULT NULL,
  `fileB` mediumtext DEFAULT NULL,
  `fileC` mediumtext DEFAULT NULL,
  `fileD` mediumtext DEFAULT NULL,
  `fileE` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_soal`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8;
INSERT INTO `soal` VALUES   ('41','2','1',' Dari kebudayaan seseorang memahami arti hidup, sekaligus nilai-nilai yang melahirkan tata krama, yang membuat umat manusia dapat hidup berdampingan dengan nilai-nilai kehidupan tersebut, yaitu untuk saling melengkapi dan saling &hellip;','1','Menghormati','Memperhatikan','Melayani','Menolong','Membantu','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('42','2','2',' Lantai ruang kelas sangat kotor, seorang guru mengambil sapu membersihkan lantai yang sangat kotor, Doni yang ada di tempat itu dia tidak peduli dengan guru yang membersihkan ruang kelas, bahkan asyik main HP dengan berdiri di ruang itu. Perhatikan pernyataan di atas, dalam kaitannya dengan etika dan sopan santun jika kalian seorang Doni apa yang seharusnya dilakukan?','1','Melanjutkan main HP','Menggantikan guru menyapu','Memperhatikan guru menyapu','Meninggalkan kelas kotor','Melihat guru menyapu','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('43','2','3',' Ilmu pengetahuan adalah usaha pencarian manusia untuk memahami segala sesuatu sehingga dapat menggunakan informasi tersebut. Teknologi adalah hasil dari terapan dari ilmu berupa segal hal atau produk yang dapat dimanfaatkan untuk memudahkan..','1','Kehidupan anak remaja','Kehidupan orang dewasa','Kehidupan orang tua','Kehidupan anak-anak','Kehidupan manusia','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('44','2','4',' IPTEK dalam pandangan Kristen adalah &hellip;','1','Bersumber dari Allah','Bersumber dari Musa','Bersumber dari alam semesta','Bersumber dari manusia sendiri','Ada dengan sendirinya','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('45','2','5',' Perhatikan dalam Mazmur 150:6, lengkapilah bunyi ayat tersebut! &ldquo;Biarlah segala yang bernafas &hellip;&rdquo;','1','Menyembah Tuhan','Memuji Tuhan','Menyanyi bagi Tuhan','Memuliakan Tuhan','Mengagungkan Tuhan','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('46','2','6',' Untuk mengembangkan teknologi yang lebih ramah lingkungan, seperti energi terbarukan dan teknik pengolahan limbah yang lebih baik yang membantu menjaga ekosistem dan mengurangi dapak negatif pada &hellip;','1','Lingkungan alam','Lingkungan negara','Lingkungan bumi','Lingkungan daerah','Lingkungan wilayah','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('47','2','7',' IPTEK dapat mendukung pendidikan dan penelitian. Hal ini memungkinkan penemuan pengetahuan baru dan memfasilitasi proses pembelajaran lebih efektif melalui sumber daya seperti perangkat lunak pembelajaran, literatur ilmiah dan &hellip;','1','Sumber daya offline','Sumber daya online','Sumber daya retail','Sumber daya elektronik','Sumber daya android','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('48','2','8',' Sektor IPTEK menyumbang secara signifikan pada pertumbuhan ekonomi dengan menciptakan peluang kerja, meningkatkan produktifitas, mendorong investasi dalam riset dan pengembangan. IPTEK telah mengubah cara kita belajar dengan menyediakan akses ke sumber daya pendidikan onlina, perangkat lunak pembelajaran dan teknologi pembelajaran yang canggih &hellip;','1','Dampak manfaat global','Dampak positif ilmu','Dampak positif IPTEK','Dampak positif pengetahuan','Dampak positif budaya','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('49','2','9',' Kitab Keluaran 35:30-35 melukiskan tentang langkah dan perkembangan teknologi secara luar biasa. Ada langkah-langkah yang disiapkan ada proses pengembangan yang dilakukan, bukan hanya pada skill atau kemampuan para pekerjanya, melainkan juga pada kualitas karya yang dihasilkan, termasuk nilai seni yang ada di dalamnya yang dituangkan dalam &hellip;','1','Rumah mereka','Perilaku mereka','Tenunan mereka','Suku mereka','Aturan mereka','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('50','2','10',' Dalam konteks Musa dapat kalian saksikan bahwa perjalanan teknologi justru disikapi dengan nilai awal yang penting yakni Tuhan menanam dalam hati  Aholiab bin Ahisamakh dari &hellip;','1','Suku Israel','Suku Yehuda','Suku Benyamin','Suku Dan','Suku Efraim','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('51','2','11',' Talenta bisa juga digunakan untuk menghancurkan. Talenta yang baik malah digunkan untuk hal yang kurang baik. Contohnya seseorang yang memiliki talenta melukis merusak fasilitas umum yang tersedia di tempat umum dengan &hellip;','1','Mencoret-coret buku gambar','Mencoret coret dinding','Mencoret-coret kain batik','Mencoret-coret lukisan','Mencoret-coret seragam','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('52','2','12',' Contoh lain, talenta bisa juga digunakan untuk menghancurkan, talenta untuk orasi disalahgunakan dan mendorong orang lain bertindak anarkis sehingga terjadi pengrusakan saat demonstrasi. Dengan demikian tujuan demonstrasi tidak tercapai dan justru berbagai fasilitas &hellip;','1','Menjadi baik','Menjadi bagus','Menjadi rusak','Menjadi Indah','Menjadi menarik','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('53','2','13',' Sebagai remaja Kristen kita menjadi umat Allah harus mensyukuri talenta dan mengembangkannya untuk membangun dan bukan untuk &hellip;','1','Menghargai talenta','Membangun talenta','Mengembangkan','Menghancurkan','Menerima talenta','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('54','2','14',' Pada masa pelayanan Yesus, talenta digunakan sebagai ukuran timbangan yang setara dengan 3.000 syikal perak (sekitar 34 Kg) Nilainya menjadi sangat besar jika dikaitkan dengan hitungan uang, yakni setara &hellip;','1','3.000 dinar','4.000 dinar','5.000 dinar','6.000 dinar','7.000 dinar','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('55','2','15',' Dalam Matius 20:2, satu dinar sama dengan &hellip;','1','Upah atau harga kerja seorang tukang dua hari','Anugerah yang diberikan Tuan','Upah bekerja dalam satu hari','Upah bekerja dalam satu jam','Upah bekerja dalam satu Minggu ','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('56','2','16',' Penghasilan ini merupakan angka yang sangat besar, apalagi jika digunakan ukuran timbangan, dan timbangan itu dikenakan pada emas. Sebuah angka yang fantastis. Betapa besarnya talenta yang Tuhan anugerahkan kepada setiap orang, tidak terkecuali kepada kalian yang tengah menjangkau masa depan yang dirintis sejak proses &hellip;','1','Studi saat ini','Studi masa lalu','Studi tahun depan','Studi hari depan','Studi masa depan','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('57','2','17',' Talenta berbeda dengan ketertarikan. Bisa saja seseorang tertarik pada bidang tertentu, tetapi sebenarnya tidak memiliki talenta di bidang tersebut. Contohnya, seseorang yang secara alamiah tidak memiliki bakat seni, tetapi ia memiliki ketertarikan pada bidang seni tersebut sebagai penikmat semata. Maka talentanya bukanlah pada &hellip;','1','Seni yang ditampilkan','Pelaku seni tersebut','Seni yang ditontonkan','Seni yang perform','Seni yang diunggah','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('58','2','18',' Keluaran 4:10-16 dan 31:1-11. Dua bacaan dari kitab Keluaran tersebut menggambarkan dua posisi yang berbeda. Pertama adalah Musa. Musa menjadi pribadi yang &ldquo;kehilangan&rdquo; kepercayaan diri sehingga ia sulit mengembangkan &hellip;','1','Kemahirannya','Kehebatannya','Keandalannya','Kemampuannya','Ketenarannya','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('59','2','19',' &ldquo;Lalu kata Musa kepada Tuhan: &ldquo;Ah, Tuhan aku ini tidak pandai bicara, dahulu pun tidak dan sejak Engkau berfirman kepada hamba-Mu pun tidak, sebab aku beratr mulut dan berat lidah&rdquo; (Kel. 4:10). Pernyataan Musa ini berpotensi menimbulkan &hellip;','1','Gambaran indah','Gambaran mempesona','Gambaran menarik','Gambaran negatif','Gambaran positif','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('60','2','20',' Sebagaimana diketahui, Musa pernah memiliki masa lalu yang suram di Mesir, yakni pernah membunuh salah seorang pengawas pekerjaan (Kel. 2:11-15). Pengalam itu membuatnya harus bergulat dengan perasaan bersalah dan ketakutan. Ini tentu harus di atasi dengan kekuatan besar. Namun, ketika berhadapan dengan kerajaan Mesir, Allah justru memilihnya untuk menjadi &hellip;','1','Mediator','Abitrator','Ambasador','Adjudicator','Negosiator','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('61','2','21',' Ayah Peter meninggal sejak Peter masih taman TK. Ibunyalah yang berjuang keras menghidupi Peter dan kakak perempuannya. Tidak jarang Peter pun ikut membantu ibunya berjualan pisang goreng produk rumahan, di samping bekerja sebagai buruh cuci baju keluarga-keluarga yang membutuhkan tenaganya. Perhatikan pernyataan di atas! Bagaimanakah sikap Peter terhadap orang tuanya? Sikap Peter adalah &hellip;','1','Melakukan perintah Tuhan 1','Melakukan perintah Tuhan 2','Melakukan perintah Tuhan 3','Melakukan perintah Tuhan 4','Melakukan perintah Tuhan 5','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('62','2','22',' Andrew dan Peter telah menjalin persahabatan sejak sekolah dasar. Mereka bersekolah di SD yang sama, SMP pun sama,. Sejak S, setiap akan berangkat sekolah, Andrew selalu menjemput Peter dengan mobil orang tuanya. Maklum, orang tua Andrew adalah direktur di sebuah perusahaan kontraktor besar. Rumahnya pun berada di kompleks perumahan mewah. Sedangkan Peter tinggal di perumahan sederhana tipe 21. Perhatikan pernyataan di atas, bagaimana sikap Andrew terhadap Peter?','1','Hedonisme','Hamburkan uang','Foya-foya','Bersahaja','Tidak peduli','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('63','2','23',' Seorang dengan kekayaan melimpah pun bisa menjalankan hidup dengan gaya hidup ugahari, yang penuh kesederhanaan, hidup sederhana berarti hidup berdasarkan kebutuhan dan akan membeli barang sesuai &hellip;','1','Dengan kekayaannya','Dengan keinginannya','Dengan fungsinya','Dengan koleksinya','Dengan hobinya','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('64','2','24',' Pola atau gaya hidup ugahari jauh dari  gaya hidup hedonistik. Gaya hidup ugahari benar-benar menampilkan sebuah model bersahaja yang di dalamnya spiritualitas hidup tampak dalam kesederhanaan tanpa kehilangan&hellip;','1','Bahagia hidup','Kualitas hidup','Kesenangan hidup','Kekayaan hidup','Kekuatan Hidup','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('65','2','25',' Sementara itu, gaya hidup lain sebagaimana digambarkan dalam Doa Bapa Kami adalah gaya hidup sederhana yang dikenal dengan nama ugahari. Ugahari adalah sebuah gaya hidup sederhana dan &hellip;','1','Berkecukupan','Berkekurangan','Berkemakmuran','Berkelas','Berkelimpahan','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('66','2','26',' Dalam situasi ini, keadilan, demokrasi, dan HAM bisa dipahami secara keliru akibat pola hidup yang dilakukan oleh segelintir orang tanpa mempertimbangkan situasi yang tengah berlangsung. Bahkan komunikasi antar warga masyarakat dan dalam keluarga bisa daja tidak terbentuk karena masing-masing hidup untuk kepentingan&hellip;','1','Diri anaknya','Diri keluarganya','Diri suaminya','Diri istrinya','Dirinya sendiri','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('67','2','27',' Gaya hidup loba dan hilangnya sikap empati juga berpotensi mengabaikan nilai-nilai kemanusiaan. Sikap loba dan perilaku hidup yang mengabaikan perasaan warga masyarakat yang berada pada garis kemiskinan atau di bawah kemiskinan berpotensi menumbuhkan pemahaman bahwa sila kelima Pancasila, yakni &ldquo;Keadilan bagi seluruh rakyat Indonesia&rdquo; akan sulit, bahkan mustahil &hellip;','1','Terjadi','Terlaksana','Terselenggara','Terwujud','Terdeteksi','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('68','2','28',' Mempertontonkan gaya hidup loba dan hilangnya sikap empati berpotensi memupus kemungkinan untuk membangun komunikasi yang baik dengan berbagai lapisan masyarakat. Gaya hidup seperti itu pun cenderung mengabaikan perasaan &hellip;','1','Orang-orang di Indonesia','Orang-orang Salatiga','Orang-orang sekelilingnya','Orang-orang di daerahnya','Orang-orang di kampungnya','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('69','2','29',' Sebagaimana diketahui, penduduk Indonesia yang berada pada garis kemiskinan berada pada posisi 9,4% dari seluruh penduduk. Angka tersebut memang menurun dibandingkan dengan tahun-tahun sebelumnya dan berada di bawah 10% dari seluruh jumlah penduduk Indonesia. Namun, data tersebut menunjukkan bahwa ada sebanyak 25,14 juta orang yang berkategori &hellip;','1','Miskin atau tidak bekerja','Miskin atau tidak mampu','Miskin atau tidak nganggur','Miskin atau tidak berdaya','Miskin atau tidak tidak semangat','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('70','2','30',' Ada orang berkecenderungan memaksakan diri untuk hidup mewah, bahkan tidak jarang ia melakukan hal itu di luar kemampuannya. Dampak dari pola hidup demikian berpotensi menimbulkan persoalan ketika diperhadapkan dengan &hellip;','1','Realitas sosial','Realitas ekonomi','Realitas akuntansi','Realitas manajemen','Realitas pembangunan','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('71','2','31',' Umat Allah harus mampu menata diri supaya tidak terjebak dalam pola hidup hedonistik. Hedonisme adalah sebuah gaya hidup yang mengupayakan kesenangan semata. Biasanya kesenangan tersebut diperoleh melalui upaya seperti menikmati hiburan berlebihan, menghamburkan dan memamerkan kekayaan, bahkan menunjukkan perilaku &hellip;','1','Hidup tak nyaman','Hidup atk menyenangkan','Hidup tak memiliki harta','Hidup tak mampu','Hidup tak terpuji','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('72','2','32',' Terdapat sebuah pola hidup yang membebbaskan diri dari pola hidup loba (serakah, tamak, selalu ingin mendapat banyak). Sebaliknya, Tuhan Yesus menghendaki agar umat yang dikasihi-Nya benar-benar mampu membawa diri dalam pengendalian hidup dan mampu mengedepankan pola hidup &hellip;','1','Kaya raya','Berkecukupan','Mewah','Sederhana','Berkelimpahan','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('73','2','33',' Salah satu bunyi Doa Bapa Kami adalah &ldquo;Berikanlah kami pada hari ini, makanan kami yang secukupnya.&rdquo; Kalimat doa yang diajarkan Tuhan Yesus ini tertuang dalam Injil Matius 6:11. Perhatikan ayat di atas, pada ayat tersebut Tuhan Yesus mengajarkan kepada kita tentang &hellip;','1','Kekayaan','Hedonisme','Kesederhanaan','Mamon','Nasihat','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('74','2','34',' Cara hidup ugahari adalah cara mencukupkan diri dengan apa yang ada. Perhatikan ayat berikut ini: &ldquo;Kukatakan ini  bukanlah karena kekurangan, sebab aku telah belajar mencukupkan diri dalam segala keadaan.&rdquo; Bunyi ayat tersebut terdapat pada kitab?','1','Filipi 4:10','Filipi 4:11','Filipi 4:12','Filipi 4:13','Filipi 4:14','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('75','2','35',' Pengertian hedonisme adalah gaya hidup yang berfokus mencari kesenangan dan kepuasan tanpa batas. Pengertian ugahari adalah kesederhanaan dan bersahaja, hidup sederhana dan berkecukupan. Yesus adalah contoh pemimpin yang telah menunjukkan gaya hidup &hellip;','1','Ugahari','Hedon','Modern','Kuno','Jadul','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('76','2','1',' Jelaskan pandangan Alkitab mengenai kebudayaan dan IPTEK sebagai anugerah Allah!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('77','2','2',' Deskripsikan sedikitnya tiga cara Allah merawat hidup manusia!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('78','2','3',' Sebutkan dan jelaskan secara singkat tiga talenta yang Tuhan sudah anugerahkn kepadamu!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('79','2','4',' Jelaskan pengertian gaya hidup ugahari dan gaya hidup hedonisme !','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('80','2','5',' Sebutkan minimal tiga (3) sikap ugahari dan tiga (3) sikap hedonsisme!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('81','1','1',' Ayat Al-Qur&rsquo;an tentang Berlomba dalam Kebaikan <br>Ayat tentang perintah <i>fastabiqul khairat</i> terdapat dalam &hellip;','1','QS. Al-Baqarah: 183','QS. Al-Baqarah: 148','QS. Al-Maidah: 32','QS. Al-Mulk: 1','QS. Al-Maidah: 3','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('82','1','2',' Lafadz   <img src=\"../../files/17601495281.png\"> artinya &hellip;','1','Berlomba-lomba dalam kejelekan','Berlomba-lomba dalam kebaikan','Menghindari tanggung jawab','Menyelesaikan pekerjaan dengan malas','Bermegah-megahan','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('83','1','3',' QS. Al-Mulk ayat 2 menjelaskan bahwa &hellip;','1','Mati adalah akhir segalanya','Hidup dan mati terjadi secara kebetulan','Hidup hanya untuk bersenang-senang','Hidup dan mati adalah ujian siapa yang paling baik amalnya','Hidup dan mati untuk mengumpulkan harta','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('84','1','4',' Kata kunci QS. Al-Baqarah: 148 adalah &hellip;','1','Takwa','Amanah','Fastabiqul khairat','Zuhud','Jihad','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('85','1','5',' Kandungan QS. Al-Maidah ayat 48 adalah &hellip;','1','Allah menciptakan manusia berbangsa-bangsa untuk berlomba dalam kebaikan','Larangan membunuh','Perintah zakat','Perintah puasa','Kewajiban berhaji','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('86','1','6',' <i>Ahsanu &lsquo;amala</i> dalam QS. Al-Mulk: 2 bermakna &hellip;','1','Amal yang paling baik dan ikhlas','Amal yang paling sedikit','Amal yang paling cepat','Amal yang hanya mengejar dunia','Amal yang tanpa niat','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('87','1','7',' Berlomba dalam kebaikan berarti &hellip;','1','Menjadi yang pertama dalam kejahatan','Mengutamakan amal shalih','Mengutamakan dunia dari akhirat','Malas beribadah','Membiarkan orang lain berbuat baik','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('88','1','8',' Hikmah <i>fastabiqul khairat</i> adalah &hellip;','1','Hidup menjadi malas','Terjadi perpecahan','Hidup produktif dan bermanfaat','Sombong','Bermegah-megahan','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('89','1','9',' Rasulullah SAW bersabda: <i>&ldquo;Sebaik-baik manusia adalah yang paling bermanfaat bagi manusia lain.&rdquo;</i> Maksudnya &hellip;','1','Hidup untuk diri sendiri','Menumpuk harta','Berlomba dalam kebaikan','Bermalas-malasan','Hidup bermegah-megahan','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('90','1','10',' Hadis tentang keutamaan bekerja dengan tangan sendiri bermakna &hellip;','1','Hidup berpangku tangan','Mandiri dan bekerja halal','Bergantung pada orang kaya','Tidak perlu bekerja','Bekerja dengan menipu','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('91','1','11',' &ldquo;Allah mencintai seorang mukmin yang bekerja dengan profesional.&rdquo; Hadis ini menekankan nilai &hellip;','1','Ikhlas','Amanah','Etos kerja','Zuhud','Sabar','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('92','1','12',' &ldquo;Sebaik-baik pekerjaan adalah pekerjaan dengan tangan sendiri&rdquo; bermakna &hellip;','1','Usaha yang cepat kaya','Usaha halal dan mandiri','Usaha penuh riba','Usaha menipu','Usaha tanpa niat','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('93','1','13',' Contoh fastabiqul khairat di sekolah adalah &hellip;','1','Membantu teman memahami pelajaran','Menyontek saat ujian','Malas belajar','Datang terlambat','Bermain saat guru mengajar','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('94','1','14',' Membersihkan masjid sekolah sukarela termasuk &hellip;','1','Amal sia-sia','Riya&rsquo;','Fastabiqul khairat','Perilaku tercela','Hedonisme','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('95','1','15',' Perilaku yang tidak mencerminkan fastabiqul khairat adalah &hellip;','1','Saling membantu','Menjadi penggerak kebaikan','Berebut giliran berinfak','Menghalangi teman berbuat baik','Menjadi yang pertama shalat berjamaah','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('96','1','16',' QS. Al-Maidah ayat 48 menegaskan bahwa Allah menurunkan kitab-kitab sebelumnya dan Al-Qur&rsquo;an sebagai &hellip;','1','Kitab yang melupakan syariat sebelumnya','Kitab pelengkap dan penyempurna kitab sebelumnya','Kitab yang bertentangan dengan syariat sebelumnya','Kitab yang hanya berlaku bagi bangsa Arab','Kitab yang meniadakan syariat para nabi terdahulu','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('97','1','17',' Kandungan QS. Al-Maidah ayat 48 tentang keberagaman manusia adalah &hellip;','1','Umat manusia diciptakan sama tanpa perbedaan','Perbedaan bangsa, suku, dan syariat adalah sunnatullah untuk berlomba dalam kebaikan','Perbedaan agama tidak perlu dihormati','Semua agama sama dan boleh dicampur','Umat Islam tidak perlu menghargai perbedaan','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('98','1','18',' QS. At-Taubah ayat 9 berisi kecaman terhadap orang-orang yang &hellip;','1','Menginfakkan harta di jalan Allah','Membeli kehidupan dunia dengan ayat-ayat Allah','Berjuang menegakkan agama Allah','Menolong sesama manusia','Membaca dan menghafal Al-Qur&rsquo;an','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('99','1','19',' Makna utama QS. At-Taubah ayat 9 adalah &hellip;','1','Larangan menjual ayat Allah dengan harga murah demi kepentingan dunia','Perintah meninggalkan jual beli','Anjuran memperkaya diri dengan cara apa saja','Larangan mencari nafkah secara halal','Perintah berperang tanpa aturan','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('100','1','20',' Relevansi QS. Al-Maidah (5): 48 bagi kehidupan bangsa Indonesia adalah &hellip;','1','Tidak perlu menjaga persatuan','Menghargai perbedaan suku, agama, dan budaya untuk hidup damai','Membenci orang yang berbeda agama','Tidak perlu berlomba dalam kebaikan','Menolak keberagaman','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('101','1','21',' Hikmah dari QS. At-Taubah (9) adalah &hellip;','1','Menjadikan dunia tujuan utama hidup','Mengutamakan akhirat dan tidak menjual ayat Allah demi kepentingan dunia','Melupakan Al-Qur&rsquo;an dalam kehidupan sehari-hari','Membiarkan orang lain berbuat maksiat','Menyepelekan syariat Allah','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('102','1','22',' Keterkaitan antara QS. Al-Maidah (5): 48 dan QS. At-Taubah (9) adalah &hellip;','1','Keduanya sama-sama membicarakan zakat','Keduanya menekankan pentingnya jihad fisik semata','Keduanya mengajarkan menghargai kebenaran wahyu dan tidak mengkhianatinya demi kepentingan dunia','Keduanya hanya berlaku di masa Nabi Muhammad SAW','Keduanya menghapus kewajiban berbuat baik','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('103','1','23',' Secara bahasa, iman berarti &hellip;','1','Islam','Takwa','Percaya','Taat','Ihsan','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('104','1','24',' Rukun iman jumlahnya adalah &hellip;','1','Tiga','Empat','Lima','Enam','Tujuh','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('105','1','25',' Berdasarkan hadis, syu&rsquo;abul iman berjumlah &hellip;','1','30','40','50','60','70 lebih','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('106','1','26',' Contoh syu&rsquo;abul iman berupa ucapan lisan adalah &hellip;','1','Membaca Al-Qur&rsquo;an','Berzikir','Mengucapkan syahadat','Menolong orang tua','Menyapu halaman','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('107','1','27',' Menjaga amanah termasuk syu&rsquo;abul iman yang berkaitan dengan &hellip;','1','Hati','Lisan','Perbuatan anggota badan','Pikiran','Doa','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('108','1','28',' Malu merupakan salah satu cabang iman yang termasuk dalam &hellip;','1','Perbuatan lisan','Perbuatan hati','Perbuatan anggota badan','Perbuatan jasmani','Perbuatan sosial','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('109','1','29',' Menyingkirkan duri dari jalan adalah syu&rsquo;abul iman dalam bentuk &hellip;','1','Hati','Lisan','Perbuatan anggota badan','Pikiran','Niat','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('110','1','30',' Meyakini adanya malaikat Allah termasuk cabang iman yang berhubungan dengan &hellip;','1','Hati','Lisan','Perbuatan anggota badan','Pikiran','Sosial','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('111','1','31',' Keutamaan iman bagi seorang mukmin adalah &hellip;','1','Mendapatkan kekuasaan','Menjadi orang kaya','Mendapat ketenangan hati dan kebahagiaan hidup','Tidak pernah diuji','Hidup bebas tanpa aturan','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('112','1','32',' Orang yang imannya kuat akan &hellip;','1','Mudah berputus asa','Mudah tergoda dunia','Ikhlas beramal dan sabar menghadapi ujian','Membenci orang lain','Tidak peduli aturan','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('113','1','33',' Hubungan iman dengan akhlak adalah &hellip;','1','Orang beriman bebas berbuat apa saja','Iman tidak ada hubungannya dengan akhlak','Iman melahirkan akhlak mulia dalam kehidupan sehari-hari','Akhlak lebih penting dari iman','Akhlak hanya untuk orang tertentu','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('114','1','34',' Contoh sikap beriman dalam kehidupan di sekolah adalah &hellip;','1','Membolos tanpa izin','Menyontek saat ujian','Berbuat jujur dan disiplin','Membiarkan sampah berserakan','Bermalas-malasan belajar','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('115','1','35',' Syu&rsquo;abul iman yang paling tinggi adalah &hellip;','1','Shalat berjamaah','Puasa Ramadan','Mengucapkan kalimat Laa ilaaha illallah','Menolong sesama','Membaca doa sebelum makan','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('116','1','1',' Jelaskan makna <i>&ldquo;fastabiqul khairat&rdquo;</i> (berlomba-lomba dalam kebaikan) sebagaimana terkandung dalam QS. Al-Maidah ayat 48!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('117','1','2',' Sebutkan minimal 3 ciri-ciri etos kerja Islami dan berikan penjelasan singkat!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('118','1','3',' Berdasarkan hadis, berapa jumlah syu&rsquo;abul iman? Sebutkan 3 contoh cabang iman tersebut!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('119','1','4',' Berikan 2 contoh perilaku siswa di sekolah yang mencerminkan syu&rsquo;abul iman dalam kehidupan sehari-hari!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('120','1','5',' Apa hikmah yang dapat diperoleh seorang muslim jika memiliki iman yang kuat, berlomba dalam kebaikan, dan beretos kerja?','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('121','3','1','  Piagam Jakarta dirumuskan oleh&hellip;&hellip;&hellip;&hellip;','1','BPUPKI','Panitia Delapan','PPKI','Panitia kecil','Panitia Sembilan','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('122','3','2',' Keadilan social menjamin bahwa setiap rakyat Indonesia diperlukan dengan adil dalam bidang hokum,ekonomi,kebudayaan, dan social. Pernyataan tersebut terkandung dalam sila&hellip;&hellip;..','1','Pertama','Kedua','Ketiga','Keempat','Kelima','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('123','3','3',' Seperangkat pemikiran yang berasal dari pengalaman kehidupan bangsa Indonesia yang diyakini kebenarannya lantaran mampu menjaga kehidupan bangsa merupakan kedudukan Pancasila sebagai&hellip;&hellip;&hellip;&hellip;','1','Dasar negara','Ideologi negara','Pandangan hidup','Kepribadian bangsa','Sumber dari segala sumber hokum','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('124','3','4',' BPUPKI dibubarkan pada tanggal&hellip;&hellip;&hellip;','1','22 Juni 1945','7 Agustus 1945','17 Agustus 1945','28 Mei 1945','2 Maret 1945','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('125','3','5',' Penyatuan bukan berarti menyeragamkan keberagaman dalam masyarakat. Melainkan dengan keberagaman dapat bersatu padu dan kompak memajukan negara Indonesia. Hal ini merupakan makna penerapan Pancasila sila&hellip;&hellip;&hellip;&hellip;&hellip;.','1','Pertama','Kedua','Ketiga','Keempat','Kelima','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('126','3','6',' Sikap hidup yang mencerminkan pelaksanaan sila ketuhanan Yang Maha Esa adalah&hellip;&hellip;&hellip;&hellip;','1','Besikap tidak peduli terhadap pemeluk agama lain','Menjelek-jelekan agama orang lain','Menghargai orang lain yang berbeda agama','Bersikap baik hanya kepada orang yang seagama','Memengaruhi orang lain untuk pindah agama','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('127','3','7',' Sukarno memiliki tujuan bukan hanya membangun nasionalisme dalam negeri yang dimerdekakan, melainkan untuk membangun kekeluargaan bangsa-bangsa. Pemikiran sukarno tersebut adalah&hellip;&hellip;&hellip;.','1','Kebangsaan','Internasionalisme','Kesejahteraan social','Mufakat dan permusyawaratan/ perwakilan','Ketuhanan','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('128','3','8',' Para pemuda mendesak sukarno dan Muhammad Hatta agar proklamasi kemerdekaan lekas dilakukan pada&hellip;&hellip;&hellip;.','1','15 Agustus 1945','16 Agustus 1945','17 Agustus 1945','18 Agustus 1945','19 Agustus 1945','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('129','3','9',' Untuk mempersiapkan proklamasi kemerdekaan, para tokoh bangsa mencari tempat aman untuk merumuskan naskah proklamasi. Perumusan naskah proklamasi terjadi dirumah milik&hellip;&hellip;&hellip;&hellip;','1','Sukarno','Miyoshi','Tomegoro Yoshizumi','Shigetada Nishijima','Laksmana Tadashi Maeda','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('130','3','10',' Teknologi Informasi membawa paham yang bertentanagn dengan ideology Pancasila. Contoh ide-ide yang bertentanagn dengan ideology Pancasila adalah&hellip;&hellip;.','1','Radikalisme','Toleransi','Disiplin waktu','Kebhinekaan global','Perdamaian dunia','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('131','3','11',' Dengan mematuhi protocol kesehatan,seperti memakai masker dan menjaga jarak, setiap individu sudah berusaha menjaga dan melindungi orang lain. Hal itu selaras dengan pengamalan Pancasila sila&hellip;&hellip;&hellip;&hellip;','1','Pertama','Kedua','Ketiga','Keempat','Kelima','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('132','3','12',' Contoh sikap sesuai nilai-nilai Pancasila dalam bermedia social adalah&hellip;&hellip;..','1','Menyebarkan berita HOAKS kepada masyarakat','Mempromosikan budaya dengan memanfaatkan media social','Menyebarkan ujaran kebencian melalui media social','Menyebarkan paham radikalisme','Memanfaatkan media social hanya untuyk mengenal budaya luar','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('133','3','13',' Informasi dimedia social dapat berupa ujaran kebencian dan diskriminasi yang dapat memecah belah persatuan bangsa. Permasalahan tersebut menunjukan bahwa penerapan nilai Pancasila sila&hellip;&hellip;&hellip;belum optimal','1','Pertama','Kedua','Ketiga','Keempat','Kelima','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('134','3','14',' Jepang menyerah kepada sekutu setelah pengeboman terhadap dua kota di jepang, yaitu&hellip;&hellip;.','1','Fukuoka dan Hiroshima','Hiroshima dan Nagasahaki','Nagashaki dan Fukuoka','Yokohama dan Hiroshima','Hiroshima dan Fujisawa','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('135','3','15',' Sidang pertama BPUPKI dilaksanakan pada tanggal&hellip;&hellip;&hellip;&hellip;','1','1 Mei -  1 Juni 1945','29 Mei- 1 Juni 1945','30 Mei- 1 Juni 1945','1 Juni- 10 Juli 1945','10-17 Juli 1945','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('136','3','16',' Berdasarkan catatan sejarah, Jepang secara resmi mengambil alih Indonesia dari tangan Belanda setelah penandatanganan Perjanjian kalijati pada tanggal&hellip;&hellip;&hellip;..','1','5 Maret 1942','6 Maret 1942','7 Maret 1942','8 Maret 1942','9 Maret 1942','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('137','3','17',' Jendral kumakici harada mengumumkan dibentuknya badan Penyelidik Usaha-Usaha Persiapan Kemerdekaan pada&hellip;&hellip;.','1','7 Agustus 1945','2 Maret 1945','27 Mei 1945','22 Juni 1945','9 Agustus 1945','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('138','3','18',' Panitia Sembilan dibentuk dengan tugas menyelidiki usul-usul mengenai perumusan dasar negara. Berikut yang bukan anggota panitia Sembilan adalah&hellip;..','1','Ir. Soekarno','R.P Soeroso','H.Agus salim','K.H Wachid Hasyim','Moh. Hatta','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('139','3','19',' Gotong royong merupakan jiwa masyarakat Indonesia. Hal tersebut pernah disampaiakn oleh&hellip;&hellip;&hellip;','1','Soeharto','Sukarno','Drs. Moh. Hatta','Mohammad Yamin','Dr. Radjiman Wedyodininingrat','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('140','3','20',' Nilai-nilai luhur dalam sila pertama Pancasila adalah&hellip;&hellip;&hellip;..','1','Pengakuan atas keberadaan Tuhan Yang Maha Esa sebagai pencipta alam semesta','Semua manusia harus diperlakukan sama','Musyawarah dan mufakat','Terciptanya masyarakat adil dan makmur','Menanamkan nilai keadilan dalam kehidupan bangsa','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('141','3','21',' BPUPKI merupakan salah satu wujud janji jepang kepada Indonesia karena&hellip;&hellip;..','1','Kalah perang melawan sekutu','Dikucilkan bangsa-bangsa lain','Ingin menjajah Indonesia','Sebagai saudara tua','Ingin memberi hadiah kepada Indonesia','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('142','3','22',' Pelaksanaan siding pertama BPUPKI bertujuan&hellip;&hellip;&hellip;..','1','Penentuan proklamsi','Pembagian wilayah','Membuat dasar negara','Menetapakn wilayah RI','Menyusun strategis dalam mengusir penjajah','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('143','3','23',' Menjalankan pemerintahan yang bersih tanpa tindakan korupsi merupakan penerapan Pancasila sila&hellip;&hellip;&hellip;&hellip;','1','Pertama','Kedua','Ketiga','Keempat','Kelima','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('144','3','24',' Si A orang yang sombong. Ia selalu menilai orang dari kekayaan dan kedudukannya. Sikap si A bertentangan dengan sila&hellip;&hellip;&hellip;&hellip;.','1','Pertama','Kedua','Ketiga','Keempat','Kelima','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('145','3','25',' Negara Indonesia merupakan negara demokrasi. Hal tersebut merupakan penjabaran sila&hellip;&hellip;&hellip;&hellip;&hellip;','1','Pertama','Kedua','Ketiga','Keempat','Kelima','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('146','3','26',' Pembentukan pemerintahan negara Indonesia dilandasi oleh Pancasila. Pernyataan tersebut terdapat dalam pembukaan Undang-Undang Dasar Negara Republik Indonesia Tahun 1945 Alinea&hellip;&hellip;&hellip;','1','Pertama','Kedua','Ketiga','Keempat','Kelima','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('147','3','27',' Perbedaan piagam Jakarta dengan Pembukaan Undang-Undang Daasar Negara Republik Indonesia Tahun 1945 terletak pada sila&hellip;&hellip;&hellip;..','1','Pertama','Kedua','Ketiga','Keempat','Kelima','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('148','3','28',' Berikut bukan manfaat media social adalah&hellip;&hellip;.','1','Media untuk penggalangan dana','Menyebarkan informasi dan wawasan penting','Pengenalan budaya antar negara','Media untuk mencari lowongan pekerjaan','Media menyebarkan hoaks','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('149','3','29',' Menyelesaiakan masalah dengan kekeluargaan termasuk semangat para pendiri negara dalam hal&hellip;&hellip;&hellip;&hellip;','1','Menghargai orang lain','Cinta tanah air','Musyawarah untuk mufakat','Rela berkorban','Bekerja tanpa pamrih','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('150','3','30',' Ancaman demokrasi dalam kehidupan berbagsa dan bernegara adalah&hellip;&hellip;&hellip;.','1','Intoleransi','Gerakan separatism','Korupsi','Hilangnya rasa kemanusiaan','Kesenjangan social','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('151','3','31',' Perhatikan pernyataan berikut!<br>1>Kebangsaan Indonesia<br>2>Internasionalisme atau perikemanusiaan<br>3>Mufakat dan demokrasi<br>4>Kesejahteraan social<br>5>Ketuhanan yang berkebudayaan<br>Dasar negara tersebut dikemukakan oleh&hellip;&hellip;..','1','Sukarno','Soepomo','Moh. Hatta','Moh. Yamin','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('152','3','32',' Pembentukan pemerintahan negara Indonesia dilandasi oleh Pancasila.pernyataan tersebut terdapat dalam pembukaan Undang-Undang Dasar Negara Republik Indonesia Tahun 1945 Alinea&hellip;&hellip;&hellip;&hellip;','1','Pertama','Kedua','Ketiga','Keempat','Kelima','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('153','3','33',' Pancasila mampu menyatukan masyarakat Indonesia yang beragam suku, agama, dan budaya. Hal ini menunjukkan fungsi Pancasila sebagai&hellip;&hellip;&hellip;.','1','Dasar negara','Pandangan hidup','Ideologi terbuka','Pemersatu bangsa','Sumber hukum','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('154','3','34',' Salah satu peran penting Pancasila adalah menjadi dasar dalam membina kerukunan antarsuku dan antaragama. Hal ini memperlihatkan Pancasila sebagai&hellip;&hellip;&hellip;.','1','Landasan hukum','Jiwa dan kepribadian bangsa','Alat pemersatu bangsa','Norma hukum tertinggi','Arah pembangunan nasional','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('155','3','35',' Indonesia terdiri dari berbagai kelompok etnis, bahasa, dan adat istiadat. Namun, bangsa Indonesia tetap bersatu karena memiliki ideologi yang sama, yaitu Pancasila. Pernyataan tersebut menunjukkan bahwa Pancasila berperan sebagai&hellip;&hellip;&hellip;','1','Sistem pemerintahan','Sumber budaya nasional','Alat pemersatu dalam keberagaman','Alat kontrol sosial','Dasar pelaksanaan otonomi daerah','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('156','3','1','Mengapa Pancasila di sebut sebagai pemersatu bangsa?','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('157','3','2','Sebutkan 5 Contoh Anggota BPUPKI!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('158','3','3',' Pancasila sebagai pandangan hidup dapat dimaknai sebagai sebuah tata nilai yang berfungsi seperti halnya budaya atau norma yang telah hidup turun-temurun ditengah-tengah masyarakat. Bagaiamana fungsi Pancasila sila persatuan Indonesia yang berkedudukan sebagai pandangan hidup bangsa Indonesia?','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('159','3','4','Sebutkan nilai-nilai yang terkandung dalam Pancasila!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('160','3','5','Sebutkan 3 Contoh nilai yang terkandung dalam sila pertama Pancasila dalam kehidupan dalam lingkungan sekolah dan bermasyarakat.','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('161','4','1',' Syekh Wahbah Az-Zuhaili dalam <i>Tafsir al-Munir</i> mengatakan bahwa surah ar-Rahman ayat 33 berkaitan dengan&hellip;..','1','Yaumul Mahsyar','Alam semesta','Hari manusia dilahirkan','Yaumul Ba&rsquo;as','Yaumul Hisab','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('162','4','2',' Segala sesuatu yang diciptakan Allah Swt. di muka bumi pasti memiliki manfaat. Manusia harus berpikir kritis agar dapat mengambil manfaat tersebut. Peran siswa dalam hal ini adalah&hellip;.','1','Membuat penelitian terupdate','Membangun laboratorium penelitian','Menambah relasi belajar','Membaca buku agar menambah wawasan yang luas','Mengoleksi berbagai buku','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('163','4','3',' Perhatikan penggalan ayat berikut!<br><img src=\"../../files/17601499819.png\"><br>Kandungan yang sesuai dengan penggalan di atas adalah&hellip;.<br>','1','Tidak akan bisa seorang manusia menembus langit tanpa ilmu dari Allah Swt.','Allah Swt. memerintahkan manusia untuk melintasi penjuru langit','Perintah Allah terhadap manusia untuk beriman kepadanya','Manusia tidak boleh membuat roket untuk melintasi alam semesta','Manusia bisa menembus langit dengan ilmunya sindiri','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('164','4','4','  <img src=\"../../files/17601499817.png\">   Lafaz di atas memilki hukum bacaan&hellip;.','1','Idgam bigunnah','Ikhfa&rsquo; haqiqi','Idhar','Idgam bilagunnah','Iqlab','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('165','4','5',' Ciri orang yang cerdas menurut hadis Nabi Muhammad saw. adalah&hellip;.','1','Berbuat curang','Mampu menundukan dirinya','Mampu menahan amarah','Mampu memelihara hawa nafsu','Melakukan perbuatan yang diperintah Allah','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('166','4','6',' Ciri-ciri orang berakal menurut surah Ali Imran ayat 191 adalah&hellip;.','1','Selalu membaca buku','Selalu berpikir kritis','Selalu bertafakur dan merenungi tanda-tanda kebesara-Nya','Mampu menciptakan ilmu-ilmu terbaru','Banyak berdiskusi dengan teman','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('167','4','7',' Allah Swt. memperlihatkan kebesaran dan kuasanya melalui penciptaan langit dan bumi, serta pergantian siang dan malam. Manusia harus&hellip;..dari kejadian tersebut agar dapat menambah keimanan dan mengambil manfaat darinya.','1','Taqarrub','Tadarrus','Tadabbur','Tafakur','Tahanus','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('168','4','8',' Sesungguhnya setiap manusia sudah mengikrarkan bahwa Allah Swt. Tuhan mereka sejak&hellip;','1','Alam gaib','Alam kubur','Alam Rahim','Alam dunia','Alam barzah','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('169','4','9',' Sinta dan Jojo berjanji akan bertemu setelah pulng sekolah. Mereka telah merencanakan akan mengambil durian milik tetangganya tanpa sepengetahuan pemiliknya. Namun, Jojo tidak menepati janjinya. Bagaimanakah hukum tidak menepati janji tersebut&hellip;','1','Sunah','Wajib','Haram','Mubah','Makruh','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('170','4','10',' Bersyukur kepada Allah Swt. dapat dilakukan dengan berbagai cara.  Bagaimana cara bersyukur menggunakan lisan &hellip;','1','Mengucap bismillah','Mengucap salawat','Mengucap hamdalah','Melakukan puasa','Bertutur kata yang baik','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('171','4','11',' Seorang muslim telah melakukan janji terhadap temanya. Namun, ia tidak sanggup menunaikan jajnjinya karena di luar batas kemampuan dan keadaan. Cara yang tepat yang harus dilakukan oleh orang tersebut adalah&hellip;','1','Meminta maaf kepada yang bersangkutan','Berusaha menepati janji','Membuat janji lain','Diam dan meninggalkan yang bersangkutan','Mencari alasan yang masuk akal','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('172','4','12',' Berbicarah dengan sopan dan tidak menyakiti orang lain karena dapat membawa kemaslahatan. Berikut yang bukan maslahat didapat adalah&hellip;','1','Banyak orang menyukainya','Mendamaikan pihak-pihak yang berselisih','Keadilan  nampak bagi seluruh masyarakat','Tertariknya orang sangat dipengaruhi lisan','Mendekatnya pergaulan yang harmonis','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('173','4','13',' Kata janji dalam bahasa Arab adalah&hellip;','1','Aqad','Qabul','Ijab','Sigat','Talak','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('174','4','14',' Ketika berada di alam Rahim, setiap , setiap manusia sudah menyampaikan janji setia kepada Allah Swt. diantara janji tersebut adalah&hellip;','1','Akan kembali ke alam akhirat sesuai batas waktunya','Menjadi hamba Allah yang baik dan tetap hidup di jalan fitrah','Kembali ke jalan yang dijanjikan','Menjahui gaya hidup berlebihan','Kembali pada aturanya','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('175','4','15',' Islam adalah agama yang menebar keselamatan dan kedamaian. Itu sebabnya setiap muslim dilarang melakukan&hellip;','1','Terror dan menakuti pihak lain','Menyapa orang asing','Khiyar dalam interaksi','Jasa timbal balik yang saling menguntungkan','Selalu berbuat baik','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('176','4','16',' Teknologi dapat memudahkan pekerjaan dalam hidup, namun juga disalahgunakan untuk hal-hal yang negative, contohnya&hellip;','1','Harga barang pasar global bersaing','Meningkatkan produktivitas','Menjatuhkan nama baik dan martabat seseorang','Memudahkan interaksi social masyarakat','Keamanan negara menjadi rapuh dan lemah','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('177','4','17',' Aib berasal dari salah, dosa, dan kemaksiatan yang dilakukan. Bertumpuknya dosa sama halnya menumpuk aib. Namun, selalu ada waktu untuk memperbaiki. Berikut ini yang dibolehkan membuka aib seseorang adalah&hellip;','1','Menggunakan bukti-bukti yang handal','Menahan keinginan pihak-pihak yang terlibat','Melaporkan tindak kejahatan kepada pihak berwenang','Memperlakukan lembaga yang paham tentang masalah','Menyebarluaskan keburukan orang','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('178','4','18',' &ldquo;Dan penuhilah janji (karena) sesungguhnya janji itu pasti diminta&hellip;&rdquo; Kalimat yang tepat untuk melengkapi pernyataan tersebut adalah&hellip;','1','Kasih sayang','Tanggung jawab','Belas kasihan','Pertanyaan','Kejujuran','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('179','4','19',' Media social merupakan media yang bisa digunakan untuk mencari berita apapun. Hal negatif yang tidak boleh dilakukan &hellip;','1','Mencari aib orang lain','Mengetahui prestasi','Mencari kebenaran','Mempelajari cara-cara bermedia yang bijak','Mengamati perkembangan ','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('180','4','20',' <img src=\"../../files/17601499815.png\"> Lanjutkan lafaz tersebut &hellip;.','1','<img src=\"../../files/17601499813.png\">','<img src=\"../../files/17601499811.png\">','<img src=\"../../files/176014998110.png\">','<img src=\"../../files/17601499818.png\">','<img src=\"../../files/17601499816.png\">','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('181','4','21',' Sebagai pelajar Islam, harus memperhatikan norma-norma sosial yang berkaitan dengan hukum Islam. Berikut tidak termasuk sikap memperhatikan norma Islam, yaitu &hellip;.','1','Membantu teman belajar','Mengucilkan teman yang berbeda','Membersihkan ruang kelas','Membuat kelompok bermain','Menghormati guru dan kepala sekolah','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('182','4','22',' Tawuran antarpelajar termasuk perbuatan &hellip;.','1','Terbaik','Tercela','Terpuji','Terpandang','Terpelajar ','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('183','4','23',' Berikut bukan dampak dari terjadinya tawuran antarpelajar adalah &hellip;.','1','Luka','Wafat','Cidera','Cacat','Sehat ','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('184','4','24',' Islam adalah agama yang cinta kasih sayang kepada umatnya. Istilah tersebut adalah&hellip;','1','Dinul qoyyimah','Karimun akhlaqiyyun','Salamatan fid-din','Rahmatan lil &lsquo;alamin','Uswatun hasanatun','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('185','4','25',' Perhatikan ayat berikut!<br><img src=\"../../files/17601499814.png\"><br>Kandungan yang tepat sesuai ayat di atas adalah &hellip;<br>','1','Allah Swt. melarang manusia meminum khamar','Mabuk adalah perkara yang dilarang Islam','Perkelahian pelajar disebabkan faktor lingkungan','Larangan mendekati salat bagi orang yang tidak suci','Orang yang meminum khamar dilarang melaksanakan salat','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('186','4','26',' Berdasarkan Surah al-Ma&rsquo;idah ayat 91, banyak akibat buruk yang didapatkan, apabila seseorang itu meminum khamar dan melakukan <i>maisir</i>, yaitu ...','1','Iman yang menjadi penopang mencari rezeki menjadi turun','Tidak salat, jauh dari Allah, timbul permusuhan dan kebencian','Kepentingan jangka pendek dan jauh semakin berpadu','Pola pikirnya runtuh dan kemalasan yang terus-menerus','Derajat dan martabatnya jauh dari jalan Allah Swt.','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('187','4','27',' Zat atau obat, baik alamiah maupun sintetis, bukan narkotika, yang berkhasiat psikoaktif melalui pengaruh selektif pada susunan saraf pusat yang menyebabkan perubahan khas pada aktivitas mental dan perilaku disebut&hellip;','1','Psikotropika','Narkotika','Zat adiktif','Khamar','Kopi','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('188','4','28',' Pelajar muslim mengerjakan Islam secara menyeluruh sehingga seimbang antara amalan dunia dan akhirat. Amalan yang mencerminkan keseimbangan dunia dan akhirat adalah&hellip;.','1','Belajar siang dan malam tanpa henti','Berpuasa terus-menerus tanpa henti','Belajar di siang hari dan tidur di malam hari','Berpuasa terus-menerus tanpa henti','Mengerjakan salat malam sampai pagi','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('189','4','29',' Hukum mengonsumsi narkoba tidak dijelaskan secara khusus di dalam Al-Qur&rsquo;an maupun hadis. Namun, dikaji dalam &hellip;','1','Kitabullah','Kitab tafsir','Ijtihad ulama','Sunah','Tarikh islamiah','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('190','4','30',' Perhatikan hadis berikut!<br><img src=\"../../files/17601499812.png\"><br>Cara yang tepat agar selamat dunia dan akhirat sesuai hadis di atas adalah &hellip;<br>','1','Menyambung silaturahmi','Beriman kepada Allah Swt','Mengedepankan kejujuran','Berkata dengan keras','Mengimani hari Akhir','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('191','4','31',' Surah al-Ma&rsquo;idah ayat 91 menyebutkan larangan Allah tentang &hellip;.','1','Zina','Permusuhan','Dengki','Khamr','Riba ','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('192','4','32',' Khamar adalah minuman dan segala sesuatu yang memabukkan dan merusak akal sehat. Berlandaskan pengertian tersebut yang termasuk makna dari khamar adalah &hellip;.','1','Semua jenis zat yang merusak keimanan','Jenis bahan yang dapat mengubah kekalutan','Bahan-bahan tanaman yang tumbuh di bukit','Jenis zat yang bikin orang tenang','Zat-zat yang membuat lupa diri','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('193','4','33',' Penanganan pelajar yang menyimpang membutuhkan banyak cara yang intinya fokus kepada pribadi pelajar, yaitu &hellip;','1','Kebesaran niat dan keihklasan untuk menasihati','Posisi pelajar sendiri dengan masalah yang dibuat','Kepentingan besar dari yang mempunyai kebutuhan','Melibatkan banyak unsur yang menangani situasi dan kondisi','Dengan cara memberi ancaman ','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('194','4','34',' Adapun tafsir surah al-Maidah ayat 90-91 menurut Kemenag RI sebagai berikut, kecuali&hellip;','1','Judi','Khamr','Mempersembahkan kurban kepada berhala','Mengundi nasib dengan anak-anak panah','Menutup aib orang lain ','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('195','4','35',' Perhatikan penggalan ayat berikut!<br><img src=\"../../files/176014998111.png\"><br>Ilustrasi kasus yang sesuai ayat di atas adalah &hellip;<br>','1','Ridwan menyampaikan amanah dari orang tuanya','manusia yang akan lahir ke dunia melupakan janjinya kepada Allah Swt.','Hamzah menepati janji kepada adiknya akan memberi hadiah','Fahri tidak termasuk orang munafik karena berkata jujur','Fulan tidak menepati janji temannya karena dalam kemaksiatan','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('196','4','1',' Dinamakan Kitab <i>Tafsir al-Misbah</i> karena memiliki makna&hellip;?','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('197','4','2',' Apa janji Allah Swt. Bagi orang yang menutuo aib orang lain&hellip;?','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('198','4','3',' Perkataan berupa keburukan dan bohong besar disebut&hellip;?','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('199','4','4',' Apa yang anda ketahui tentang Islam <i>rahmatan lil alamin</i>&hellip;?','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('200','4','5',' Bagaimana para Ulama mengkiaskan hukum narkoba&hellip;?','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('201','5','1',' Dari kebudayaan seseorang memahami arti hidup, sekaligus nilai-nilai yang melahirkan tata krama, yang membuat umat manusia dapat hidup berdampingan dengan nilai-nilai kehidupan tersebut, yaitu untuk saling melengkapi dan saling &hellip;','1','Menghormati','Memperhatikan','Melayani','Menolong','Membantu','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('202','5','2',' Lantai ruang kelas sangat kotor, seorang guru mengambil sapu membersihkan lantai yang sangat kotor, Doni yang ada di tempat itu dia tidak peduli dengan guru yang membersihkan ruang kelas, bahkan asyik main HP dengan berdiri di ruang itu. Perhatikan pernyataan di atas, dalam kaitannya dengan etika dan sopan santun jika kalian seorang Doni apa yang seharusnya dilakukan?','1','Melanjutkan main HP','Menggantikan guru menyapu','Memperhatikan guru menyapu','Meninggalkan kelas kotor','Melihat guru menyapu','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('203','5','3',' Ilmu pengetahuan adalah usaha pencarian manusia untuk memahami segala sesuatu sehingga dapat menggunakan informasi tersebut. Teknologi adalah hasil dari terapan dari ilmu berupa segal hal atau produk yang dapat dimanfaatkan untuk memudahkan..','1','Kehidupan anak remaja','Kehidupan orang dewasa','Kehidupan orang tua','Kehidupan anak-anak','Kehidupan manusia','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('204','5','4',' IPTEK dalam pandangan Kristen adalah &hellip;','1','Bersumber dari Allah','Bersumber dari Musa','Bersumber dari alam semesta','Bersumber dari manusia sendiri','Ada dengan sendirinya','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('205','5','5',' Perhatikan dalam Mazmur 150:6, lengkapilah bunyi ayat tersebut! &ldquo;Biarlah segala yang bernafas &hellip;&rdquo;','1','Menyembah Tuhan','Memuji Tuhan','Menyanyi bagi Tuhan','Memuliakan Tuhan','Mengagungkan Tuhan','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('206','5','6',' Untuk mengembangkan teknologi yang lebih ramah lingkungan, seperti energi terbarukan dan teknik pengolahan limbah yang lebih baik yang membantu menjaga ekosistem dan mengurangi dapak negatif pada &hellip;','1','Lingkungan alam','Lingkungan negara','Lingkungan bumi','Lingkungan daerah','Lingkungan wilayah','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('207','5','7',' IPTEK dapat mendukung pendidikan dan penelitian. Hal ini memungkinkan penemuan pengetahuan baru dan memfasilitasi proses pembelajaran lebih efektif melalui sumber daya seperti perangkat lunak pembelajaran, literatur ilmiah dan &hellip;','1','Sumber daya offline','Sumber daya online','Sumber daya retail','Sumber daya elektronik','Sumber daya android','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('208','5','8',' Sektor IPTEK menyumbang secara signifikan pada pertumbuhan ekonomi dengan menciptakan peluang kerja, meningkatkan produktifitas, mendorong investasi dalam riset dan pengembangan. IPTEK telah mengubah cara kita belajar dengan menyediakan akses ke sumber daya pendidikan onlina, perangkat lunak pembelajaran dan teknologi pembelajaran yang canggih &hellip;','1','Dampak manfaat global','Dampak positif ilmu','Dampak positif IPTEK','Dampak positif pengetahuan','Dampak positif budaya','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('209','5','9',' Kitab Keluaran 35:30-35 melukiskan tentang langkah dan perkembangan teknologi secara luar biasa. Ada langkah-langkah yang disiapkan ada proses pengembangan yang dilakukan, bukan hanya pada skill atau kemampuan para pekerjanya, melainkan juga pada kualitas karya yang dihasilkan, termasuk nilai seni yang ada di dalamnya yang dituangkan dalam &hellip;','1','Rumah mereka','Perilaku mereka','Tenunan mereka','Suku mereka','Aturan mereka','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('210','5','10',' Dalam konteks Musa dapat kalian saksikan bahwa perjalanan teknologi justru disikapi dengan nilai awal yang penting yakni Tuhan menanam dalam hati  Aholiab bin Ahisamakh dari &hellip;','1','Suku Israel','Suku Yehuda','Suku Benyamin','Suku Dan','Suku Efraim','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('211','5','11',' Talenta bisa juga digunakan untuk menghancurkan. Talenta yang baik malah digunkan untuk hal yang kurang baik. Contohnya seseorang yang memiliki talenta melukis merusak fasilitas umum yang tersedia di tempat umum dengan &hellip;','1','Mencoret-coret buku gambar','Mencoret coret dinding','Mencoret-coret kain batik','Mencoret-coret lukisan','Mencoret-coret seragam','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('212','5','12',' Contoh lain, talenta bisa juga digunakan untuk menghancurkan, talenta untuk orasi disalahgunakan dan mendorong orang lain bertindak anarkis sehingga terjadi pengrusakan saat demonstrasi. Dengan demikian tujuan demonstrasi tidak tercapai dan justru berbagai fasilitas &hellip;','1','Menjadi baik','Menjadi bagus','Menjadi rusak','Menjadi Indah','Menjadi menarik','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('213','5','13',' Sebagai remaja Kristen kita menjadi umat Allah harus mensyukuri talenta dan mengembangkannya untuk membangun dan bukan untuk &hellip;','1','Menghargai talenta','Membangun talenta','Mengembangkan','Menghancurkan','Menerima talenta','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('214','5','14',' Pada masa pelayanan Yesus, talenta digunakan sebagai ukuran timbangan yang setara dengan 3.000 syikal perak (sekitar 34 Kg) Nilainya menjadi sangat besar jika dikaitkan dengan hitungan uang, yakni setara &hellip;','1','3.000 dinar','4.000 dinar','5.000 dinar','6.000 dinar','7.000 dinar','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('215','5','15',' Dalam Matius 20:2, satu dinar sama dengan &hellip;','1','Upah atau harga kerja seorang tukang dua hari','Anugerah yang diberikan Tuan','Upah bekerja dalam satu hari','Upah bekerja dalam satu jam','Upah bekerja dalam satu Minggu ','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('216','5','16',' Penghasilan ini merupakan angka yang sangat besar, apalagi jika digunakan ukuran timbangan, dan timbangan itu dikenakan pada emas. Sebuah angka yang fantastis. Betapa besarnya talenta yang Tuhan anugerahkan kepada setiap orang, tidak terkecuali kepada kalian yang tengah menjangkau masa depan yang dirintis sejak proses &hellip;','1','Studi saat ini','Studi masa lalu','Studi tahun depan','Studi hari depan','Studi masa depan','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('217','5','17',' Talenta berbeda dengan ketertarikan. Bisa saja seseorang tertarik pada bidang tertentu, tetapi sebenarnya tidak memiliki talenta di bidang tersebut. Contohnya, seseorang yang secara alamiah tidak memiliki bakat seni, tetapi ia memiliki ketertarikan pada bidang seni tersebut sebagai penikmat semata. Maka talentanya bukanlah pada &hellip;','1','Seni yang ditampilkan','Pelaku seni tersebut','Seni yang ditontonkan','Seni yang perform','Seni yang diunggah','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('218','5','18',' Keluaran 4:10-16 dan 31:1-11. Dua bacaan dari kitab Keluaran tersebut menggambarkan dua posisi yang berbeda. Pertama adalah Musa. Musa menjadi pribadi yang &ldquo;kehilangan&rdquo; kepercayaan diri sehingga ia sulit mengembangkan &hellip;','1','Kemahirannya','Kehebatannya','Keandalannya','Kemampuannya','Ketenarannya','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('219','5','19',' &ldquo;Lalu kata Musa kepada Tuhan: &ldquo;Ah, Tuhan aku ini tidak pandai bicara, dahulu pun tidak dan sejak Engkau berfirman kepada hamba-Mu pun tidak, sebab aku beratr mulut dan berat lidah&rdquo; (Kel. 4:10). Pernyataan Musa ini berpotensi menimbulkan &hellip;','1','Gambaran indah','Gambaran mempesona','Gambaran menarik','Gambaran negatif','Gambaran positif','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('220','5','20',' Sebagaimana diketahui, Musa pernah memiliki masa lalu yang suram di Mesir, yakni pernah membunuh salah seorang pengawas pekerjaan (Kel. 2:11-15). Pengalam itu membuatnya harus bergulat dengan perasaan bersalah dan ketakutan. Ini tentu harus di atasi dengan kekuatan besar. Namun, ketika berhadapan dengan kerajaan Mesir, Allah justru memilihnya untuk menjadi &hellip;','1','Mediator','Abitrator','Ambasador','Adjudicator','Negosiator','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('221','5','21',' Ayah Peter meninggal sejak Peter masih taman TK. Ibunyalah yang berjuang keras menghidupi Peter dan kakak perempuannya. Tidak jarang Peter pun ikut membantu ibunya berjualan pisang goreng produk rumahan, di samping bekerja sebagai buruh cuci baju keluarga-keluarga yang membutuhkan tenaganya. Perhatikan pernyataan di atas! Bagaimanakah sikap Peter terhadap orang tuanya? Sikap Peter adalah &hellip;','1','Melakukan perintah Tuhan 1','Melakukan perintah Tuhan 2','Melakukan perintah Tuhan 3','Melakukan perintah Tuhan 4','Melakukan perintah Tuhan 5','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('222','5','22',' Andrew dan Peter telah menjalin persahabatan sejak sekolah dasar. Mereka bersekolah di SD yang sama, SMP pun sama,. Sejak S, setiap akan berangkat sekolah, Andrew selalu menjemput Peter dengan mobil orang tuanya. Maklum, orang tua Andrew adalah direktur di sebuah perusahaan kontraktor besar. Rumahnya pun berada di kompleks perumahan mewah. Sedangkan Peter tinggal di perumahan sederhana tipe 21. Perhatikan pernyataan di atas, bagaimana sikap Andrew terhadap Peter?','1','Hedonisme','Hamburkan uang','Foya-foya','Bersahaja','Tidak peduli','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('223','5','23',' Seorang dengan kekayaan melimpah pun bisa menjalankan hidup dengan gaya hidup ugahari, yang penuh kesederhanaan, hidup sederhana berarti hidup berdasarkan kebutuhan dan akan membeli barang sesuai &hellip;','1','Dengan kekayaannya','Dengan keinginannya','Dengan fungsinya','Dengan koleksinya','Dengan hobinya','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('224','5','24',' Pola atau gaya hidup ugahari jauh dari  gaya hidup hedonistik. Gaya hidup ugahari benar-benar menampilkan sebuah model bersahaja yang di dalamnya spiritualitas hidup tampak dalam kesederhanaan tanpa kehilangan&hellip;','1','Bahagia hidup','Kualitas hidup','Kesenangan hidup','Kekayaan hidup','Kekuatan Hidup','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('225','5','25',' Sementara itu, gaya hidup lain sebagaimana digambarkan dalam Doa Bapa Kami adalah gaya hidup sederhana yang dikenal dengan nama ugahari. Ugahari adalah sebuah gaya hidup sederhana dan  &hellip;','1','Berkecukupan','Berkekurangan','Berkemakmuran','Berkelas','Berkelimpahan','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('226','5','26',' Dalam situasi ini, keadilan, demokrasi, dan HAM bisa dipahami secara keliru akibat pola hidup yang dilakukan oleh segelintir orang tanpa mempertimbangkan situasi yang tengah berlangsung. Bahkan komunikasi antar warga masyarakat dan dalam keluarga bisa daja tidak terbentuk karena masing-masing hidup untuk kepentingan&hellip;','1','Diri anaknya','Diri keluarganya','Diri suaminya','Diri istrinya','Dirinya sendiri','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('227','5','27',' Gaya hidup loba dan hilangnya sikap empati juga berpotensi mengabaikan nilai-nilai kemanusiaan. Sikap loba dan perilaku hidup yang mengabaikan perasaan warga masyarakat yang berada pada garis kemiskinan atau di bawah kemiskinan berpotensi menumbuhkan pemahaman bahwa sila kelima Pancasila, yakni &ldquo;Keadilan bagi seluruh rakyat Indonesia&rdquo; akan sulit, bahkan mustahil &hellip;','1','Terjadi','Terlaksana','Terselenggara','Terwujud','Terdeteksi','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('228','5','28',' Mempertontonkan gaya hidup loba dan hilangnya sikap empati berpotensi memupus kemungkinan untuk membangun komunikasi yang baik dengan berbagai lapisan masyarakat. Gaya hidup seperti itu pun cenderung mengabaikan perasaan &hellip;','1','Orang-orang di Indonesia','Orang-orang Salatiga','Orang-orang sekelilingnya','Orang-orang di daerahnya','Orang-orang di kampungnya','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('229','5','29',' Sebagaimana diketahui, penduduk Indonesia yang berada pada garis kemiskinan berada pada posisi 9,4% dari seluruh penduduk. Angka tersebut memang menurun dibandingkan dengan tahun-tahun sebelumnya dan berada di bawah 10% dari seluruh jumlah penduduk Indonesia. Namun, data tersebut menunjukkan bahwa ada sebanyak 25,14 juta orang yang berkategori &hellip;','1','Miskin atau tidak bekerja','Miskin atau tidak mampu','Miskin atau tidak nganggur','Miskin atau tidak berdaya','Miskin atau tidak tidak semangat','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('230','5','30',' Ada orang berkecenderungan memaksakan diri untuk hidup mewah, bahkan tidak jarang ia melakukan hal itu di luar kemampuannya. Dampak dari pola hidup demikian berpotensi menimbulkan persoalan ketika diperhadapkan dengan &hellip;','1','Realitas sosial','Realitas ekonomi','Realitas akuntansi','Realitas manajemen','Realitas pembangunan','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('231','5','31',' Umat Allah harus mampu menata diri supaya tidak terjebak dalam pola hidup hedonistik. Hedonisme adalah sebuah gaya hidup yang mengupayakan kesenangan semata. Biasanya kesenangan tersebut diperoleh melalui upaya seperti menikmati hiburan berlebihan, menghamburkan dan memamerkan kekayaan, bahkan menunjukkan perilaku &hellip;','1','Hidup tak nyaman','Hidup atk menyenangkan','Hidup tak memiliki harta','Hidup tak mampu','Hidup tak terpuji','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('232','5','32',' Terdapat sebuah pola hidup yang membebbaskan diri dari pola hidup loba (serakah, tamak, selalu ingin mendapat banyak). Sebaliknya, Tuhan Yesus menghendaki agar umat yang dikasihi-Nya benar-benar mampu membawa diri dalam pengendalian hidup dan mampu mengedepankan pola hidup &hellip;','1','Kaya raya','Berkecukupan','Mewah','Sederhana','Berkelimpahan','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('233','5','33',' Salah satu bunyi Doa Bapa Kami adalah &ldquo;Berikanlah kami pada hari ini, makanan kami yang secukupnya.&rdquo; Kalimat doa yang diajarkan Tuhan Yesus ini tertuang dalam Injil Matius 6:11. Perhatikan ayat di atas, pada ayat tersebut Tuhan Yesus mengajarkan kepada kita tentang &hellip;','1','Kekayaan','Hedonisme','Kesederhanaan','Mamon','Nasihat','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('234','5','34',' Cara hidup ugahari adalah cara mencukupkan diri dengan apa yang ada. Perhatikan ayat berikut ini: &ldquo;Kukatakan ini  bukanlah karena kekurangan, sebab aku telah belajar mencukupkan diri dalam segala keadaan.&rdquo; Bunyi ayat tersebut terdapat pada kitab?','1','Filipi 4:10','Filipi 4:11','Filipi 4:12','Filipi 4:13','Filipi 4:14','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('235','5','35',' Pengertian hedonisme adalah gaya hidup yang berfokus mencari kesenangan dan kepuasan tanpa batas. Pengertian ugahari adalah kesederhanaan dan bersahaja, hidup sederhana dan berkecukupan. Yesus adalah contoh pemimpin yang telah menunjukkan gaya hidup &hellip;','1','Ugahari','Hedon','Modern','Kuno','Jadul','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('236','5','1',' Jelaskan pandangan Alkitab mengenai kebudayaan dan IPTEK sebagai anugerah Allah!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('237','5','2',' Deskripsikan sedikitnya tiga cara Allah merawat hidup manusia!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('238','5','3',' Sebutkan dan jelaskan secara singkat tiga talenta yang Tuhan sudah anugerahkn kepadamu!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('239','5','4',' Jelaskan pengertian gaya hidup ugahari dan gaya hidup hedonisme !','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('240','5','5',' Sebutkan minimal tiga (3) sikap ugahari dan tiga (3) sikap hedonsisme!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('241','6','1',' Nilai dalam Pancasila yang menjiwai dan mendasari serta membimbing perwujudan sila kedua sampai sila kelima adalah nilai&hellip;&hellip;&hellip;.','1','Kemanusiaan','Kekeluargaan','Gotong royong','Ketuhanan','Keadilan','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('242','6','2',' Nilai-nilai yang terkandung dalam Pancasila bersifat sistematis dan rasional. Pernyataan tersebut merupakan dimensi suatu idoelogi, yaitu&hellip;&hellip;&hellip;&hellip;','1','Dimensi idealis','Dimensi realita','Dimensi Praktis','Dimensi Fleksibel','Dimensi instrumental','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('243','6','3',' Seluruh siswa dan siswi mengikuti upacara hari pendidikan Nasional dengan khidmad. Hal tersebut merupakan cerminan memiliki jiwa&hellip;&hellip;&hellip;.','1','Demokratis','Nasionalisme','Patriotisme','Integritas','Chauvanisme','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('244','6','4',' Pemerintahan yang bersih tanpa tindakan korupsi merupakan penerapan Pancasila sila&hellip;&hellip;&hellip;.','1','Pertama','Kedua','Ketiga','Keempat','Kelima','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('245','6','5',' Contoh nilai praksis sila kelima Pancasila adalah&hellip;&hellip;&hellip;.','1','Tidak semena-mena terhadap orang lain','Beribadah sesuai ajaran agama','Cinta tanah air dan bangsa','Tidak bergaya hidup mewah','Menghormati hak-hak orang lain','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('246','6','6',' Sukarno adalah orang yang pertama kali ,mengulas sacara filosofi Pancasila sebagai . dasar dan idelogi negara. Sukarno menyebut padanan kata yang sama artinya dengan &ldquo; ideology&rdquo; yaitu&hellip;&hellip;&hellip;&hellip;','1','Weltanschaung','Philosofische Grondslag','Paradigm','Norms','Fundamental','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('247','6','7',' Perbuatan yang bertentangan dengan Pancasila sila kedua adalah&hellip;&hellip;','1','Memberikan bantuan kepada yang membutuhkan','Siswa dinyatakan tidak lulus karena nilainya kurang','Bersikap tenggang rasa','Memecat karyawan karena sering melakukan pelanggaran','Menolak korban bencana alam karena tidak memiliki identitas diri','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('248','6','8',' Sikap intoleransi dalam masyarakat bertentangan dengan Undang-undang Republik Indonesia Tahun 1945 khususnya pasal&hellip;&hellip;..','1','23 Ayat 1','27 Ayat 1 dan 2','28A- 28 J','29 Ayat 2','30 Ayat 1','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('249','6','9',' Contoh pengamalan nilai-nilai keadilan dalam kehdiupan masyarakat adalah&hellip;&hellip;','1','Memberikan bantuan secara merata pada semua masyarakat','Memberikan sesuatu kepada masyarakat sesuai haknya','Pemberian gaji karyawan dengan jumlah yang sama','Perlakuan yang berbeda antara masyarakat umum dengan pejabat','Enggan mengikuti kegiatan dilingkungan masyarakat','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('250','6','10',' Contoh sikap yang mencerminkan nasionalisme dan patriotisme dilingkungan masyarakat adalah&hellip;&hellip;..','1','Ikut upavara bendera setiap hari senin','Aktif dalam gerakan Pramuka','Ikut membantu korban bencana alam','Menjadi anggota paskibraka','Menjaga nama baik orang tua','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('251','6','11',' Indonesia merupakan negara demokrasi. Hal tersebut merupakan penjabaran sila&hellip;&hellip;&hellip;.','1','Ketuhanan yang maha esa','Kemanusiaan yang adil dan beradap','Persatuan Indonesia','Kerakyatan yang dipimpin oleh hikmat kebijaksanaan dalam permusyawaratan perwakilan','Keadilan social bagi seluruh rakyat Indonesia','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('252','6','12',' Jaminan hak mengemukakan pendapat hak berkumpul dan mnegadakan rapat, serta hak ikut serta dalam pemerintahan menunjukan penerapan Pancasila terutama sila&hellip;&hellip;&hellip;&hellip;..','1','Pertama','Kedua','Ketiga','Keempat','Kelima','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('253','6','13',' Sikap saling menghormatui dan menghargai antar umat beragama merupakan bentuk pengamalan Pancasila sila&hellip;&hellip;&hellip;..','1','Pertama','Kedua','Ketiga','Keempat','Kelima','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('254','6','14',' Contoh nilai praksis sila ketiga Pancasila adalah&hellip;&hellip;&hellip;.','1','Tidak semena-mena terhadap orang lain','Aktif dalan kegiatan kemanusiaan','Tidak bergaya hidup mewah','Cinta tanah air dan bangsa','Menghormati hak-hak orang lain','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('255','6','15',' Manusia harus saling menghormati,tidak memandang rendah atau merendahkan satu sama lain, apalagi memperbudak sesama karena&hellip;&hellip;&hellip;','1','Dihadapan tuhan status manusia sama','Setiap manusia dapat melakukan perlawanan apanila ditindas','Manusia adalah mahluk paling mulia','Manusia memiliki hak asasai manusia','Manusia memiliki derajat yang berbeda-beda','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('256','6','16',' Patriotisme dapat menciptakan rasa solidaritas terhadap sesama sehingga mampu mencapai&hellip;&hellip;&hellip;..','1','Disentrigasi bangsa','Keruntuhan bangsa','Kehancuran bangsa','Kesejahteraan bangsa','Kemrosotan moral','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('257','6','17',' Sesuai sila persatuan Indonesia bahwa semua warga negara Indonesia tidak boleh melakukan aksi-aksi yang dapat merengangkan persatuan dan kesatuan seperti tindakan&hellip;&hellip;&hellip;.','1','Toleransi','Intoleran','Gotong royong','Solidaritas','Bakti social ','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('258','6','18',' Sila Pancasila yang bermakna bahwa Indonesia adalah negara yang menganut demokrasi adalah&hellip;&hellip;&hellip;','1','Sila pertama','Sila kedua','Sila ketiga','Sila keempat','Sila kelima','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('259','6','19',' Hakikat makna sila kelima terdapat pada pembukaan UUD NRI Tahun 1945 Alinea&hellip;&hellip;&hellip;..','1','Pertama','Kedua','Ketiga','Keempat','Kelima','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('260','6','20',' Sila yang menekankan hak individu yang adil sesuai dengan prinsip keadilan masyarakat adalah&hellip;&hellip;.','1','Persatuan Indonesia','Ketuhanan yang maha esa','Keadilan social bagi seluruh rakyat Indonesia','Kemanusiaan yang adil dan beradap','Kerakyatan yang di pimpin oleh hikmat kebijaksanaan dalam permusyawaratan perwakilan','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('261','6','21',' Penggundulan hutan biasa menyebabkan alam semakin rusak. Tindakan tersebut bertentanagn dengan sila&hellip;&hellip;&hellip;.','1','Pertama','Kedua','Ketiga','Keempat','Kelima','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('262','6','22',' Dika bersama teman-temannya berusaha mengumpulkan pakaian layak dipakai, selimut dan makanan instan untuk disumbangkan kepada masyarakat yang terkena musibah banjir. Tindakan dika dan teman-temannya menerapkan nilai-nilai Pancasila, yauitu&hellip;&hellip;&hellip;&hellip;..','1','Berani membela kebenaran','Menghargai hak-hak orang lain','Mewujudkan keadilan masyarakat','Gemar melakukan kegiatan kemanusiaan','Saling mencintai sesama manusia','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('263','6','23',' Kelompok separatis dalam upaya mewujudkan keinginannya tidak jarang melakukan terror kepada penduduk. Perilaku tersebut bertentangan dengan Pancasila sila&hellip;&hellip;..','1','Pertama','Kedua','Ketiga','Keempat','Kelima','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('264','6','24',' Setiap warga negara dituntut untuk meningkatkan taraf hidupnya yang lebih baik dengan berusaha dan bekerja keras. Hal tersebut merupakan perwujudan nilai dasar Pancasila sebagai ideology terbuka, yaitu nilai&hellip;&hellip;&hellip;..','1','Ketuhanan','Kemanusiaan','Persatuan','Kerakyatan','Keadilan','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('265','6','25',' Seorang warga negara dengan sukarela membantu korban bencana alam tanpa memandang suku, agama, maupun ras. Hal ini merupakan perwujudan nilai dasar Pancasila sebagai ideologi terbuka, yaitu nilai&hellip;&hellip;&hellip;..','1','Ketuhanan','Kemanusiaan','Persatuan','Kerakyatan','Keadilan','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('266','6','26',' Dalam kegiatan pemilu, rakyat berhak memilih pemimpin yang sesuai dengan hati nurani mereka. Ini mencerminkan nilai dasar Pancasila sebagai ideologi terbuka, yaitu nilai&hellip;&hellip;&hellip;..','1','Ketuhanan','Kemanusiaan','Persatuan','Kerakyatan','Keadilan','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('267','6','27','  Masyarakat dari berbagai daerah di Indonesia tetap saling menghormati budaya dan adat istiadat satu sama lain demi menjaga keutuhan NKRI. Hal ini mencerminkan nilai dasar Pancasila sebagai ideologi terbuka, yaitu nilai&hellip;&hellip;&hellip;..','1','Ketuhanan','Kemanusiaan','Persatuan','Kerakyatan','Keadilan','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('268','6','28',' Warga negara menjalankan ibadah sesuai dengan agama dan kepercayaannya masing-masing tanpa ada tekanan dari pihak mana pun. Ini menunjukkan perwujudan nilai dasar Pancasila sebagai ideologi terbuka, yaitu nilai&hellip;&hellip;&hellip;..','1','Ketuhanan','Kemanusiaan','Persatuan','Kerakyatan','Keadilan','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('269','6','29',' Pemerintah mengadakan program bantuan sosial untuk masyarakat kurang mampu agar dapat hidup sejahtera dan layak. Ini merupakan perwujudan nilai dasar Pancasila sebagai ideologi terbuka, yaitu nilai&hellip;&hellip;&hellip;.','1','Ketuhanan','Kemanusiaan','Persatuan','Kerakyatan','Keadilan','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('270','6','30',' Dalam setiap pengambilan keputusan di sekolah, semua anggota kelas diajak berdiskusi dan memberikan pendapat. Ini mencerminkan nilai dasar Pancasila sebagai ideologi terbuka, yaitu nilai&hellip;&hellip;&hellip;..','1','Ketuhanan','Kemanusiaan','Persatuan','Kerakyatan','Keadilan','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('271','6','31',' Siswa di sekolah bekerja sama dalam kegiatan bakti sosial, tanpa membedakan suku, agama, maupun latar belakang lainnya. Hal ini mencerminkan keterkaitan antara sila.........','1','Ketuhanan dan Kemanusiaan','Kemanusiaan dan Persatuan','Persatuan dan Kerakyatan','Kerakyatan dan Keadilan','Ketuhanan dan Keadilan','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('272','6','32',' Warga masyarakat mengadakan musyawarah untuk menentukan program kerja desa, dan hasil keputusan disepakati bersama untuk kepentingan seluruh warga. Ini mencerminkan keterkaitan antara sila............','1','Persatuan dan Ketuhanan','Kemanusiaan dan Keadilan','Kerakyatan dan Keadilan','Kemanusiaan dan Persatuan','Ketuhanan dan Kerakyatan','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('273','6','33',' Dalam kegiatan keagamaan, umat beragama saling menghargai dan tidak memaksakan keyakinannya kepada orang lain. Sikap ini mencerminkan keterkaitan antara sila...........','1','Ketuhanan dan Kemanusiaan','Kerakyatan dan Persatuan','Persatuan dan Keadilan','Ketuhanan dan Persatuan','Kemanusiaan dan Kerakyatan','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('274','6','34',' Para pelajar mengikuti upacara bendera dengan penuh khidmat dan menjaga ketertiban sebagai bentuk cinta tanah air dan menghormati simbol negara. Hal ini mencerminkan keterkaitan antara sila...............','1','Kemanusiaan dan Keadilan','Ketuhanan dan Kerakyatan','Persatuan dan Ketuhanan','Persatuan dan Kerakyatan','Persatuan dan Kemanusiaan','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('275','6','35',' Setiap siswa diberi kesempatan yang sama untuk mendapatkan fasilitas belajar tanpa diskriminasi, mencerminkan keterkaitan antara sila...','1','Ketuhanan dan Kemanusiaan','Kemanusiaan dan Keadilan','Kerakyatan dan Persatuan','Persatuan dan Keadilan','Ketuhanan dan Persatuan','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('276','6','1','Sebutkan Nilai-nilai yang terkandung dalam Pancasila','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('277','6','2',' Bagiamana cara menjiwai Pancasila dalam kehidupan sehari-hari?','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('278','6','3',' Jelaskan keterkaitan antar sila Pancasila khususnya sila pertama dengan sila kedua','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('279','6','4',' Sebutkan manfaat yang bisa di rasakan dari menjadikan Pancasila sebagai penuntun hidup!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('280','6','5',' Apakah menjadi supporter sepak bola mencerminkan sikap bangga pada bangsa dan negara? Jelaskan alasan anda!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('281','7','1',' Pengertian tawakkal yang benar adalah&hellip;','1','Menyerah pada nasib','Tidak melakukan usaha','Meremehkan usaha','Berserah diri setelah berusaha','Tidak percaya pada usaha','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('282','7','2',' Istilah musibah dalam al-qur&rsquo;an. Adalah&hellip;','1','Kesushan','Bencana','Pandemi','Ujian','Kesusahan ','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('283','7','3',' Manusia diuji oleh Allah untuk menambah&hellip;','1','Kualitas keimanan','Keberuntungan','Kekayaan harta','Pengetahuan','Kekuatan fisik','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('284','7','4',' Siapa yang memelihara  kehidupan seorang manusia,dia seakan- akan telah memelihara Kehidupan &hellip;','1','Kedua orang tuanya','Keluarganya','Dirinya sendiri','Seluruh makhluk hidup','Semua manusia','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('285','7','5',' Sikap seorang muslim ketika menghadapi ujian adalah&hellip;','1','Menyerah pada nasib','Bersabar','Menangis terus','Melupakan semua','Menyalahkan orang lain','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('286','7','6',' Lafal Inna lillahi nwainna ilaihi rojiun diucapkan ketika&hellip;','1','Menapat hadiah','Melihat sesuatu yabg buruk','Tertimpah musibah','Bersyukur kepada Allah','Mendapat amanah','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('287','7','7','   Lafal Inna lillahi nwainna ilaihi rojiun terdapat dalam surat&hellip;','1','Al-baqarah','Al-fatihah','Yasiin','An-nisak','Ali-imron','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('288','7','8',' Allah Swt. menguji manusia dengan&hellip;','1','Kesengsaraan','Kesdihan','Kelaparan','Ketakutan','Kesenangan dan kesedihan','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('289','7','9',' Maksud dari sabar sebagai kekuatan positip adalah&hellip;','1','Menahan lisan dari keluh kesah','Kekuatan untuk melawan kemungkaran','Kekuatan untuk melawan kejahatan','Melakukan kewajiban','Kemampuan menahan diri','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('290','7','10',' Yang dimaksud dengan asbabun nuzul adalah','1','Sebab-sebab turunnya sunnah rasul','Sebab sebab turunnya hadist nabi','Sebab sebab turunnya al-quran','Sebab sebab turunnya hujan','Sebab sebab turunnya rejeki','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('291','7','11',' Arti kata musibah menurut bahasa adalah&hellip;','1','Mencari','Merana','Menerima','Menimpa','Menjaga','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('292','7','12',' Kata Iman  menurut bahasa adalah&hellip;','1','Melaksanakan ajaran islam','Kewajiban','Beribadah','Beramal baik','Percaya atau yakin','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('293','7','13',' Iman dianggap lebih tinggi dari pada islam sebab&hellip;','1','Iman hanya mencakup keyakinan dalam hati','Islam hanya melibatkan amal perbuatan','Islam adalah implementasi dari iman','Islam tidak memerlukan keyakinan','Iman tidak terkait dengan perbuatan','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('294','7','14',' Berdasarkan al-quran hubungan antara iman dan amal adalah&hellip;','1','Tiddak ada hubungan','Amal merupakan hasil dari keimanan','Amal hanya merupakan syarat formal','Amal bisa menggantikan iman','Iman dan amal tidak ada kaitannya','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('295','7','15',' Iman bisa bertambah dan bisa berkurang karena&hellip;','1','Iman tidak terkait dengan amal','Karakter hati selalu stabil','Iman tidak pernah mengalami perubahan','Iman ada di dihati yang punya karakter berubah','Iman tidak berkaitan dengan perasaan','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('296','7','16',' Menurut hadist Nabi ada 3 perkara yang membuat orang merasakan manisnya iman salah satunya adalah&hellip;','1','Mencintai orang yang tidak dicintai kecuali karena Allah','Menolak keyakinan sendiri','Mencintai diri sendiri','Mencintai harta,kedudukan dan ketenaran','Membenci orang yang berbeda agama                                                                                                                                                            ','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('297','7','17',' Menurut bahasa islam berarti&hellip;','1','Keindahan dan kesejahtraan','Penyerahan diri','Kemakmuran','Kebanggaan','Kemandirian','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('298','7','18',' Menurut bahasa kata iman  berarti&hellip;','1','Beribadah','Percaya atau yakin','Menyembah','Berbuat baik','Beriman','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('299','7','19',' Hal yang dapat meninggkatkan keimanan  seseorang adalah&hellip;','1','Hanya melakukan ibdah formal','Menolak melakukan kebaikan','Terus melakukan amal sholeh','Enggan melakukan kebaikan','Tidak melakukan apa apa.','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('300','7','20',' Salah satu tanda orang munafik adalah &hellip;','1','Suka berdusta','Suka tertawa','Suka berhayal','Suka bertanya','Suka bermain','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('301','7','21',' Yang dimaksud qolbun salim adalah &hellip;','1','Hati yang merana','Hati yang tersiksa','Hati yang sehat','Hati yang sakit','Hati yang mati','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('302','7','22',' Pengertian ihsan secara istilah adalah&hellip;','1','Ibadah sosial','Kebaikan lahiriyah','Menjaga alam sekitar','Kesadaran bahwa Allah selalu hadir bersama manusia','Menjadi khalifah di bumi','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('303','7','23',' Secara bahasa munafik artinya orang yang&hellip;','1','Beriman','Setia kepada agama','Jujur','Tulus hati','Berpura pura                                                                                                                                                    ','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('304','7','24',' Hal hal yang harus dilakukan untuk menghindari sifat munafik adalah&hellip;','1','Menghormati orang yang bermuka dua','Mempercayai setiap kata orang','Mencari tahu ciri ciri sifat munafik','Menjadi orang yang bermuka dua','Tidak peduli dengan perilaku orang','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('305','7','25',' Salah satu cara menghindari sifat munafik adalah&hellip;','1','Selalu bersenang-senang','Selalu tersenyum','Selalu berteman','Selalu bersyukur','Selalu belajar','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('306','7','26',' Cara untuk menghindari dari sifat munafik adalah&hellip;','1','Menepati janji','Berdoa','Beribadah','Bersedekah','Berjuang','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('307','7','27',' Salah satu cara untuk menghindari sifat keras hati adalah&hellip;','1','Mendengarkan pendapat orang lain','Mengakui kesalahan dengan mudah','Bermalas malasan dalam ketaatan','Memperbanyak bicara','Tertawa terbahak bahak','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('308','7','28',' Ciri ciri orang yang keras kepala adalah&hellip;','1','Selalu melakukan hal hal yang diinginkan orang lain','Menerima ide orang lain','Ide orang lain selalu dianggap buruk','Mengakui kesalahan dengan mudah','Tidak memiliki ide apapun','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('309','7','29',' Sikap keras kepala dapat diartikan&hellip;','1','Selalu ingin menang','Tidak mau menuruti nasehat','Selalu berusaha keras','Mudah mersa tertantang','Selalu ingin mendiminasi','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('310','7','30',' Hal hal yang dapat menjadi alasan seseorang memiliki perilaku keras kepala yaitu..','1','Kebutuhan untuk berbeda pendapat','Tidak pernah tersinggung','Tidak memiliki tujuan tertentu','Kesulitan dalam berfikir','Kehendak untuk mendapatkan imbalan','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('311','7','31',' Ajaran islam disampaikan kepada nabi Muhammad nelalui&hellip;','1','Malaikat  Mikail','Malaikat Isrofil','Malaikat izroil','Malaikat jibril','Malaikat Ridlwan','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('312','7','32','  Ayat al-quran menyatakan bahwa..','1','Agama tidak memiliki kedudukan di akhirat','Agama disisi Allah adalah islam','Semua agama setara disisi Allah','Agama hanya berlaku di dunia','Agama yang sempurna adalah semua agama','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('313','7','33',' Kata ihsan berasal dari bahasa&hellip;','1','Jawa','Indonesia','Malaya','Arabiyah','Turky','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('314','7','34',' Hal yang dapat menghindakan kita dari kekufuran adalah&hellip;','1','Merasa sombong','Berdusta','Mengingkari janji','Bersyukur terhadap nikmat Allah','Malas beribadah','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('315','7','35',' Hal hal yang dapat menutup hati seseorang dari menerima kebenaran adalah&hellip;','1','Kemusrikan, kekufuran dan kemunafikan','Ketaatan kepada Allah','Tertawa berlebihan','Sering mengaji','Membaca sholawat.','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('316','7','1',' Apa terjemahan Lafadl Inna lillahi wainna ilaihi rojiun?','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('317','7','2',' Apa saja manfaat bagi orang yang bisa menjaga kesabaran','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('318','7','3',' Bedakan antara iman, islam dan ihsan                                                                                                                                                          ','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('319','7','4',' Apa saja tanda tanda orang munafiq','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('320','7','5',' Sebutkan 3 ciri-ciri orang yang keras hati           ','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('321','8','1',' Alkitab menyebutkan bahwa HAM adalah &hellip;','1','Anugerah Allah','Pemberian manusia','Usaha manusia semata','Karangan manusia','Karunia manusia','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('322','8','2',' Kitab manakah di bawah ini yang menunjukkan seseorang melakukan pelanggaran HAM?','1','1 Raja-raja 20:1-25','1 Raja-raja 21:1-29','1 Raja-raja 23:1-25','2 Raja-raja 20:1-25','2 Raja-raja 21:1-29','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('323','8','3',' Demokrasi adalah &hellip;','1','Sistem pemerintahan dimana kekuasaan dipegang oleh Presiden.','Sistem pemerintahan dimana kekuasaan dipegang oleh wakil Presiden.','Sistem pemerintahan dimana kekuasaan dipegang oleh MPR.','Sistem pemerintahan dimana kekuasaan dipegang oleh DPR.','Sistem pemerintahan dimana kekuasaan dipegang oleh rakyat.','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('324','8','4',' Dalam demokratis yang baik, pemerintah diharapkan untuk &hellip;','1','Melarang orang menuntut haknya','Mengayomi masyarakat yang membutuhkan','Membatasi masyarakat berpendapat','Menghormati dan melindungi HAM warganya','Memberikan batasan masyarakat menyampaikan kritikan','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('325','8','5',' Pesan yang terdapat dalam Mazmur 133 berkaitan dengan demokrasi dan HAM adalah &hellip;','1','Agar setiap orang Kristen saling hidup rukun dan saling menghargai satu sama lain','Agar setiap orang bisa saling kumpul bersama','Agar setiap orang saling membenci','Agar setiap orang hanya mempedulikan diri sendiri','Agar setiap orang saling menyapa','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('326','8','6',' Salah satu prinsip demokrasi adalah &hellip;','1','Mengakui dan menghormati HAM','Mengambil keputusan sepihak','Mengemukakan pendapat sambil menghina orang lain','Melakukan pengrusakan bangunan','Ikut demo secara anarkis','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('327','8','7',' Siapakah pemilik kebun anggur yang disebutkan dalam 1 Raja-raja 21:1-29?','1','Daud','Ahab','Zakharia','Nabot','Nahor','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('328','8','8',' Siapakah nama istri Raja Ahab?','1','Debora','Izebel','Ruth','Elisabet','Maria','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('329','8','9',' Dalam 1 Raja-raja 21:1-29 menjelaskan bagaimana cara Izebel membantu Ahab merebut kebun anggur Nabot. Menurut saudara, tindakan Izebel tersebut tergolong perbuatan &hellip;','1','Merampas hak milik orang lain','Menghargai HAM','Menghormati pekerjaan Nabot','Melanggar HAM','Menaati aturan raja','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('330','8','10',' Yang meminta kebun anggur kepada anbot adalah &hellip;','1','Raja Ahab','Raja Izebel','Raja Darius','Raja Nebukadnezar','Raja Daud','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('331','8','11',' Pernyataan manakah yang tepat untuk melengkapi ayat Mazmur 133:1? &ldquo;Sungguh, alangkah baiknya dan indahnya, apabila &hellip;&rdquo;','1','Hidup rukun bersama','Saudara-saudara diam bersama','Diam dan duduk bersama','Saudara-saudara diam bersama dengan rukun','Semua diam tenang bersama','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('332','8','12',' Hak paling mendasar yang dianugerahkan Tuhan kepada manusia adalah &hellip;','1','Hak untuk berkuasa','Hak untuk hidup','Hak untuk Memerintah','Hak untuk berpendapat','Hak untuk melayani','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('333','8','13',' Negara-negara yang tergabung dalam organisasi PBB menandatangani deklarasi HAM pada tahun &hellip;','1','1947','1948','1949','1950','1951','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('334','8','14',' Pesan firman Tuhan bagi bangsa Israel dalam Yesaya 1:17 dalam hubungannya dengan HAM adalah &hellip;','1','Menghina para janda','Menghormati anak yatim','Membela hak kaum miskin','Membela hak anak yaitm dan memperjuangkan perkara janda-janda','Menghargai para janda','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('335','8','15',' Kalimat di bawah ini adalah contoh penerapan demokrasi di sekolah, <b><i>kecuali</i></b> &hellip;','1','Mengadakan forum atau rapat yang melibatkan siswa, guru, kepala sekolah untuk membahas masalah-masalah penting dan pengambilan keputusan bersama','Memberi kesempatan kepada siswa untuk mengembangkan keterampilan dan berpartisipasi dalam pengambilan keputusan','Siswa memiliki kesempatan untuk memilih ketua Osis secara demokrasi melalui pemilu','Siswa tidak diberi kesempatan berpendapat ketika menentukan kegiatan','Siswa berkesempatan menyampaikan kritik dan saran kepada sekolah','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('336','8','16',' Dengan adanya demokrasi maka setiap orang memiliki kesempatan untuk &hellip;','1','Menindas orang lain','Menikmati kebebasan secara berlebihan','Menikmati kebebasannya secara wajar','Menghormati orang lain','Menyampaikan pendapat dengan paksaan','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('337','8','17',' Hak Asasi Manusia adalah hak paling mendasar yang dimiliki oleh manusia dan tidak dapat diambil oleh orang lain bahkan oleh negara sekali pun. Hak untuk hidup adalah salah satu bentuk hak paling mendasar yang diberikan Tuhan pada manusia. Hak-hak asasi mencakup berikut, <i>kecuali</i> ...','1','Hak untuk hidup dan merasa aman','Hak menyatakan pendapat dengan bebas','Hak membentuk partai politik','Hak untuk bebas dari kemiskinan','Hak untuk menentukan kepercayaan orang lain','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('338','8','18',' Paulus menghargai hak asasi Onesimus sebagai manusia dengan sikapnya yang ditunjukkan dengan cara ...','1','Menjadikan Onesimus pelayannya','Meminta Filemon menerima Onesimus sebagai saudaranya','Meminta orang percaya untuk menerima Onesimus','Membeli sebuah rumah untuk Onesimus dan isterinya','Menerima pelayanan Onesimus selama berada di penjara','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('339','8','19',' Bagi orang Yahudi, orang Samaria lebih rendah martabatnya daripada orang Yahudi. Sikap orang Yahudi yang tidak dilakukan Tuhan Yesus terhadap orang Samaria adalah ...','1','Menimba air di sumur','Bercakap-cakap dengan sesama','Minum dari air sumur yang sama','Tidak bercakap-cakap dengan orang Samaria','Bercakap-cakap dengan orang Samaria','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('340','8','20',' Menurut Diane Revitch dan Abigail Thernstrom (ed.) dalam buku &ldquo;Demokrasi Klasik dan Modern&rdquo;, pada tahun 1941 <i>Franklin Delano Roosevelt</i> menyampaikan pidatonya yang terkenal mengenai empat kebebasan yang diharapkan dapat diberlakukan di seluruh dunia, yang <b>bukan</b> isi dari pidato tersebut yaitu:','1','Kebebasan berbicara dan berpendapat di mana pun juga di dunia','Kebebasan kepada setiap orang untuk beribadah kepada Tuhan dengan caranya sendiri','Kebebasan dari kekurangan','Kebebasan dari masalah keuangan','Kebebasan dari rasa takut','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('341','8','21',' Satu kisah menarik yang diceritakan di Alkitab tentang penggunaan hak individu ini ditunjukkan oleh Paulus pada saat ia akan dihukum karena dianggap menjadi penyebab timbulnya keributan. Dituliskan dalam nats kitab ...','1','1 Raja-raja 21:1-16','Yesaya 59:1','Kisah Para Rasul 22:23-29','Roma 13:4','Yesaya 55:4','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('342','8','22',' Seperangkat hak yang melekat pada hakikat dan keberadaan manusia sebagai mahluk Tuhan Yang Maha Esa sejak dia dilahirkan dan merupakan anugerah yang wajib, dihormati, dijunjung tinggi disebut dengan:','1','Hak dasar','Hak hidup','Hak asasi','Hak seseorang','Hak bersama','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('343','8','23',' Jika kamu menyaksikan teman di sekolah diperlakukan secara tidak adil dan harkat serta martabatnya direndahkan, maka yang kamu lakukan adalah &hellip;','1','Meminta pertolongan dan bantuan orang lain, kemudian kita dapat meneruskan melaporkan kejadian tersebut kepada pihak guru.','Ikut menindas dan menghina teman yang diperlakukan secara tidak adil.','Memukul orang yang memperlakukan dengan tidak adil.','Tidak berbuat apa-apa karena merasa tidak ada kaitannya dengan dirimu sendiri','Mempersekusi dengan teman lainnya.','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('344','8','24',' Kota perlindungan di sebelah barat sungai Yordan yang dibuat bagi orang yang tidak sengaja membunuh seseorang yaitu &hellip;','1','Ramot di Gilead, Bezer, dan Hebron','Golan, Ramot di Gilead, dan Sikhem','Kadesh, Sikhem dan Hebron','Golan, Kadesh dan Sikhem','Golan, Ramot di Gilead dan Bezer','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('345','8','25',' Butir Pancasila yang mengatur dan menjamin HAM adalah &hellip;','1','Butir 1 dan 2','Butir 2 dan 4','Butir 2 dan 5','Butir 1 dan 3','Butir 3 dan 4','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('346','8','26',' Manusia diciptakan menurut gambar dan rupa siapakah?','1','Orang tua','Kera','Allah','Makhluk hidup','Semua jawaban salah','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('347','8','27',' Di bawah ini merupakan faktor yang mempengaruhi bakat seseorang berkembang, <b><i>kecuali</b></i> &hellip;','1','Lingkungan','Struktur saraf motorik','Sekolah','Motivasi seseorang untuk terus berlatih','Tingkat pendidikan seseorang','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('348','8','28',' Terjemahan dari kata &ldquo;ora et labora&rdquo; adalah','1','Bekerja keras','Berdoa setiap hari','Berdoa tanpa bekerja','Bekerja dan berdoa','Semua jawaban salah','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('349','8','29',' Salah satu contoh bakat khusus adalah dalam verbal. Yang dimaksud dengan bakat verbal adalah &hellip;','1','Kemampuan khusus seseorang dalam hal membuat sesuatu.','Kemampuan khusus seseorang dalam bentuk prinsip umum.','Kemampuan khusus seseorang dalam penalaran analisis bahasa.','Kemampuan khusus seseorang dalam verbal yang ditunjukkan dengan konsep atau dalam bentuk tindakan.','Kemampuan khusus seseorang dalam verbal yang ditunjukkan dengan konsep atau dalam bentuk kata-kata.','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('350','8','30',' Tuhan memberikan talenta bermain musik kepada seseorang, sehingga ia dapat memainkan berbagai jenis musik. Menurutmu bagaimana sikap yang harus dimiliki oleh orang yang diberikan talenta oleh Tuhan?','1','Digunakan untuk mengamen agar dapat uang mencukupi keinginan.','Digunakan untuk mengisi acara pernikahan','Digunakan untuk mengisi acara kelulusan sekolah','Dikelola dengan baik untuk memuliakan Tuhan dan melayani sesama','Dikelola dengan baik untuk semakin terkenal','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('351','8','31',' Apabila saudara memiliki bakat olahraga di voli, namun saudara tidak terlalu mahir seperti pemain voli profesional. Apa yang akan saudara lakukan agar bakat itu berkembang?','1','Latihan terus menerus','Berdoa supaya Tuhan mengembangkan talenta saudara.','Belajar kepada ahlinya','Diam di rumah supaya tidak banyak yang tahu','Jawaban A, B dan C benar','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('352','8','32',' Agar remaja Kristen dapat bertumbuh dan berkembang dalam talenta maka perlu &hellip;','1','Mencari mentor yang tepat sesuai kebutuhan','Bergabung dengan komunitas yang mendukung untuk berkembang','Mencari teman yang tidak mendukung untuk mengembangkan talenta','Jawaban A dan B benar','Semua jawaban benar','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('353','8','33',' Nama seorang anak remaja dalam Alkitab yang memiliki talenta memainkan kecapi dan digunakan untuk menghibur raja apabila raja dihinggapi roh jahat adalah &hellip;','1','Nathan','Saul','Daud','Musa','Yosua','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('354','8','34',' Salah satu bentuk menggunakan talenta untuk bangsa dan negara adalah &hellip;','1','Berkontribusi dalam mempromosikan seni dan budaya Indonesia','Menghina seni dan budaya Indonesia di media sosial','Mewariskan seni dan budaya Indonesia kepada adik kelas dengan cara melatih mereka','Jawaban A dan C benar','Semua jawaban benar','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('355','8','35',' Berikut cara berbakti kepada bangsa dan negara melalui talenta yang dimiliki, <b><i>kecuali</b></i> &hellip;','1','Berbagi pengetahuan dengan sesama','Menggunakan teknologi untuk kebaikan','Kontribusi seni dan budaya','Membantu komunitas yang membutuhkan','Berbagi pengetahuan dengan komunitas tertentu saja','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('356','8','1',' Jelaskan menurut pendapatmu pernyataan ini: &ldquo;HAM adalah anugerah dari Tuhan&rdquo;!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('357','8','2',' Jelaskan hubungan antara demokrasi dan HAM!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('358','8','3',' Bagaimana penjelasan Kitab Bilangan 35:16-21 jika seseorang tidak sengaja membunuh orang lain, apa yang akan dilakukan?','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('359','8','4',' Bagaimna kamu sebagai remaja Kristen ikut mewujudkan demokrasi dan HAM di Indonesia? ','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('360','8','5',' Menurut Alkitab bahwa manusia adalah ciptaan Allah yang istimewa. Silakan jelaskan pernyataan tersebut dalam kaitannya dengan talenta.','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('361','9','1',' Salah satu bentuk kerja sama yang merupakan ciri khas bangsa Indonesia yang dilakukan sebagai solidaritas social yang terjadi dalam kehidupan masyarakat adalah&hellip;&hellip;&hellip;&hellip;.','1','Gotong royong','Siskampling','Musyawarah','Ronda malam','Bakti social','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('362','9','2',' Gotong royong sebagai perbuatan bangsa Indonesia mengandung manfaat untuk&hellip;&hellip;..','1','Menumbuhkan sikap individualism','Mempererat tali persaudaraan','Mewujudkan masyarakat yang lebih maju','Mingkatkan taraf hidup setiap warganya','Meningkatkan primodialisme','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('363','9','3',' Gotong royong merupakan contoh penerapan nilai Pancasila&hellip;&hellip;&hellip;&hellip;.','1','Persatuan','Keadilan','Kemanusiaan','Kerakyatan','Ketuhanan','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('364','9','4',' Kita sebagai warga negara Indonesia harus memiliki sifat yang terkandung dalam sila pertama, yaitu saling&hellip;&hellip;&hellip;..','1','Menghormati anatar agama','Mengejek antar agama','Menghina antar agama','Menginformasikan apa tang diajarkan agamanya','Mengingatkan waktu ibadah','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('365','9','5',' Ketika terjadi banjir, banyak suka relawan yang memberikan bantuan kepada korban bencana alam. Aktivitas tersebut merupakan pelaksanaan nilai praktis Pancasila untuk sila&hellip;&hellip;&hellip;&hellip;','1','Pertama','Kedua','Ketiga','Keempat','Kelima','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('366','9','6',' Perilaku yang tidak sesuai dengan nilai-nilai Pancasila dimasyarakat yaitu&hellip;&hellip;&hellip;&hellip;..','1','Hanya bergaul dengan kelompoknya saja','Ikut bekerja bakti dikampung','Menghormati orang lain','Berbuat secara adil dan benar','Menjaga kerukunan masyarakat','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('367','9','7',' Menyelesaiakan masalah dengan kekeluargaan termasuk semangat para pendiri negara dalam hal&hellip;&hellip;..','1','Menghargai orang lain','Cinta tanah air','Musywarah untuk mufakat','Rela berkorban','Bekerja tanpa pamprih','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('368','9','8',' Keselamatan bangsa dan negara diatas kepentingan pribadi atau golongan adalah perwujudan sila Pancasila&hellip;&hellip;&hellip;','1','Pertama','Kedua','Ketiga','Keempat','Kelima','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('369','9','9',' Contoh upaya penerapan  nilai kepribadian bangsa Indonesia sesuai sila pertama Pancasila yaitu&hellip;&hellip;&hellip;..','1','Mendisiplinkan diri waktu belajar','Menegakkan ajaran agama dengan segala cara','Melestarikan gotong royong dan kerja sama','Membantu teman-teman disekolah','Memupuk diri dengan akhlak yang baik','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('370','9','10',' Nama Pancasila sebagai dasar negara Indonesia pertama kali dikukuhkan oleh&hellip;&hellip;&hellip;.','1','Moh. Yamin','Ir. Soekarno','Drs. Moh. Hatta','Mr. Achmad Soebardjo','H. Agus Salim','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('371','9','11',' Pancasila menjadi pedoman untuk mengatur kehidupan bernegara yang berlandaskan peraturan peraturan perundang-undangan. Hal tersebut termasuk fungsi Pancasila sebagai&hellip;&hellip;..','1','Dasar negara','Kepribadian bangsa','Ideologi negara','Pandangan hidup bangsa','Perjanjian luhur bangsa','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('372','9','12',' Kegiatan gotong royong dalam masyarakat jawa yang lazim dilakukan pada acara pernikahan dinamakan&hellip;&hellip;&hellip;','1','Sinoman','Sungkeman','Ruwatan','Syawalan','Sekaten','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('373','9','13',' Berikut yang termasuk contoh perilaku ber-Pancasila dalam kehidupan masyarakat adalah&hellip;&hellip;&hellip;','1','Menghentikan hoaks','Memusuhi tetangga tanpa alasan  yang jelas','Menyebarkan ujaran kebencian','Membeda- bedakan dalam pergaulan','Bersikap egois dan Individualis','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('374','9','14',' Fungsi Pancasila dalam hubungannya dengan pengaruh budaya asing dan kemajuan IPTEK adalah sebagai&hellip;&hellip;&hellip;','1','Pandangan hidup','Penyaring/filter','Pedoman hidup','Penangkal budaya','Landasan berpijak','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('375','9','15',' Menebang pohon secara liar dapat merusak alam. Tindakan tersebut bertentangan dengan Pancasila sila&hellip;&hellip;&hellip;','1','Pertama','Kedua','Ketiga','Keempat','Kelima','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('376','9','16',' Gotong royong merupakan ciri khas bangsa Indonesia. Gotong royong bermanfaat untuk&hellip;&hellip;.','1','Menumbuhkan sikap individualism dan provinsialisme','Mempererat tali persaudaraan','Mewujudkan masyarakat yang lebih maju','Meningkatkan taraf hidup setiap warganya','Meningkatkan primodialisme','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('377','9','17',' Gotong royong merupakan ciri khas bangsa Indonesia. Gotong royong bermanfaat untuk&hellip;&hellip;','1','Menumbuhkan sikap individualisme dan provinsialisme','Mempererat tali persaudaraan','Mewujudkan masyarakat yang lebih maju','Meningkatkan taraf hidup setiap warganya','Meningkatkan primodialisme','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('378','9','18',' Sikap saling menghargai pendapat orang lain dalam musyawarah mencerminkan nilai Pancasila, terutama sila ke&hellip;&hellip;&hellip;&hellip;.','1','Pertama','Kedua','Ketiga','Keempat','Kelima','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('379','9','19',' Hidup rukun dengan tetangga tanpa memandang suku, agama, maupun ras mencerminkan pengamalan sila ke&hellip;&hellip;&hellip;','1','Pertama','Kedua','Ketiga','Keempat','Kelima','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('380','9','20',' Contoh perilaku yang tidak sesuai dengan nilai-nilai Pancasila dalam kehidupan masyarakat adalah&hellip;&hellip;','1','Menjaga kebersihan lingkungan bersama','Mengutamakan musyawarah dalam mengambil keputusan','Membantu korban bencana alam','Mementingkan kepentingan kelompok sendiri','Menghormati perbedaan keyakinan','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('381','9','21',' Memberikan kesempatan yang sama kepada setiap warga untuk berpartisipasi dalam kegiatan masyarakat mencerminkan sila&hellip;&hellip;.','1','Kedua','Ketiga','Keempat','Kelima','Pertama','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('382','9','22',' Menjenguk tetangga yang sakit merupakan bentuk pengamalan Pancasila yang menunjukkan nilai&hellip;&hellip;','1','Kemanusiaan yang adil dan beradab','Persatuan Indonesia','Kerakyatan yang dipimpin oleh hikmat kebijaksanaan','Ketuhanan Yang Maha Esa','Keadilan social','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('383','9','23',' Dalam kehidupan masyarakat, menghargai perbedaan agama antarwarga mencerminkan pengamalan sila&hellip;&hellip;..','1','Kelima','Kedua','Pertama','Keempat','Ketiga','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('384','9','24',' Sikap adil dalam membagi tugas piket kebersihan di lingkungan RT merupakan cerminan sila ke&hellip;&hellip;..','1','Kedua','Ketiga','Keempat','Kelima','Pertama','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('385','9','25',' Mengikuti kegiatan kerja bakti membersihkan selokan di lingkungan masyarakat merupakan bentuk pengamalan sila&hellip;&hellip;&hellip;','1','Ketuhanan Yang Maha Esa','Kemanusiaan yang adil dan beradab','Persatuan Indonesia','Kerakyatan yang dipimpin oleh hikmat kebijaksanaan','Keadilan sosial bagi seluruh rakyat Indonesia','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('386','9','26',' Menghormati dan tidak mengejek teman yang berbeda agama menunjukkan sikap berpancasila dalam pengamalan sila&hellip;&hellip;&hellip;','1','Ketuhanan Yang Maha Esa','Kemanusiaan yang adil dan beradab','Persatuan Indonesia','Kerakyatan yang dipimpin oleh hikmat kebijaksanaan','Keadilan sosial bagi seluruh rakyat Indonesia','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('387','9','27',' Memberikan bantuan kepada korban bencana alam tanpa membedakan latar belakang suku dan agama merupakan contoh pengamalan sila&hellip;&hellip;&hellip;&hellip;','1','Ketuhanan Yang Maha Esa','Kemanusiaan yang adil dan beradab','Persatuan Indonesia','Kerakyatan yang dipimpin oleh hikmat kebijaksanaan','Keadilan sosial bagi seluruh rakyat Indonesia','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('388','9','28',' Mengikuti upacara bendera dengan tertib dan khidmat merupakan bentuk sikap berpancasila sesuai sila&hellip;&hellip;&hellip;&hellip;.','1','Ketuhanan Yang Maha Esa','Kemanusiaan yang adil dan beradab','Persatuan Indonesia','Kerakyatan yang dipimpin oleh hikmat kebijaksanaan','Keadilan sosial bagi seluruh rakyat Indonesia','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('389','9','29',' Menghargai pendapat teman saat diskusi kelompok di sekolah merupakan pengamalan sila&hellip;&hellip;&hellip;.','1','Ketuhanan Yang Maha Esa','Kemanusiaan yang adil dan beradab','Persatuan Indonesia','Kerakyatan yang dipimpin oleh hikmat kebijaksanaan','Keadilan sosial bagi seluruh rakyat Indonesia','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('390','9','30',' Berpatisipasi dalam kegiatan sosial di lingkungan sekitar tanpa pamrih merupakan cerminan pengamalan sila&hellip;&hellip;&hellip;.','1','Ketuhanan Yang Maha Esa','Kemanusiaan yang adil dan beradab','Persatuan Indonesia','Kerakyatan yang dipimpin oleh hikmat kebijaksanaan','Keadilan sosial bagi seluruh rakyat Indonesia','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('391','9','31',' Tidak memaksakan kehendak kepada orang lain ketika berbeda pendapat adalah sikap yang mencerminkan sila&hellip;&hellip;&hellip;..','1','Ketuhanan Yang Maha Esa','Kemanusiaan yang adil dan beradab','Persatuan Indonesia','Kerakyatan yang dipimpin oleh hikmat kebijaksanaan','Keadilan sosial bagi seluruh rakyat Indonesia','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('392','9','32',' Menjalankan ibadah sesuai agama masing-masing dan saling menghormati menunjukkan pengamalan sila&hellip;&hellip;&hellip;.','1','Ketuhanan Yang Maha Esa','Kemanusiaan yang adil dan beradab','Persatuan Indonesia','Kerakyatan yang dipimpin oleh hikmat kebijaksanaan','Keadilan sosial bagi seluruh rakyat Indonesia','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('393','9','33',' Menjaga kerukunan dengan tetangga yang berbeda budaya adalah contoh pengamalan sila&hellip;&hellip;&hellip;','1','Ketuhanan Yang Maha Esa','Kemanusiaan yang adil dan beradab','Persatuan Indonesia','Kerakyatan yang dipimpin oleh hikmat kebijaksanaan','Keadilan sosial bagi seluruh rakyat Indonesia','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('394','9','34',' Bersikap adil kepada teman tanpa membeda-bedakan status sosial mencerminkan pengamalan sila&hellip;&hellip;&hellip;','1','Ketuhanan Yang Maha Esa','Kemanusiaan yang adil dan beradab','Persatuan Indonesia','Kerakyatan yang dipimpin oleh hikmat kebijaksanaan','Keadilan sosial bagi seluruh rakyat Indonesia','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('395','9','35',' Menjunjung tinggi nilai kemanusiaan dan menolak tindakan kekerasan merupakan sikap berpancasila yang sesuai dengan sila&hellip;&hellip;&hellip;','1','Ketuhanan Yang Maha Esa','Kemanusiaan yang adil dan beradab','Persatuan Indonesia','Kerakyatan yang dipimpin oleh hikmat kebijaksanaan','Keadilan sosial bagi seluruh rakyat Indonesia','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('396','9','1','Apakah keseharian anda sudah sesuai dengan Nilai-nilai Pancasila?','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('397','9','2','Sebutkan beberapa jenis tradisi gotong royong yang masih dipelihara masyarakat sampai sekarang?','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('398','9','3','Sebutkan Nilai-nilai yang terkandung dalam Pancasila','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('399','9','4','Jelaskan yang dimaksud solidaritas!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('400','9','5','Sebutkan 5 contoh perilaku empati','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);

/*---------------------------------------------------------------
  TABLE: `token`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id_token` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(6) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `masa_berlaku` time NOT NULL,
  PRIMARY KEY (`id_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `token` VALUES   ('1','VGGPDF','2020-04-04 23:29:17','00:15:00');

/*---------------------------------------------------------------
  TABLE: `tugas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `tugas`;
CREATE TABLE `tugas` (
  `id_tugas` int(255) NOT NULL AUTO_INCREMENT,
  `id_guru` int(255) NOT NULL DEFAULT 0,
  `kelas` text NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `tugas` longtext NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tugas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `ujian`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `ujian`;
CREATE TABLE `ujian` (
  `id_ujian` int(5) NOT NULL AUTO_INCREMENT,
  `kode_nama` varchar(255) DEFAULT '0',
  `id_pk` varchar(255) NOT NULL,
  `id_guru` int(5) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `kode_ujian` varchar(30) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL,
  `bobot_pg` int(5) NOT NULL,
  `opsi` int(1) NOT NULL,
  `bobot_esai` int(5) NOT NULL,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL,
  `lama_ujian` int(5) NOT NULL,
  `tgl_ujian` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `waktu_ujian` time DEFAULT NULL,
  `selesai_ujian` time DEFAULT NULL,
  `level` varchar(5) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `sesi` varchar(1) DEFAULT NULL,
  `acak` int(1) NOT NULL,
  `token` int(1) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `hasil` int(1) DEFAULT NULL,
  `kkm` varchar(128) DEFAULT NULL,
  `ulang` int(2) DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  `reset` int(1) DEFAULT NULL,
  `waktuselesai` int(3) NOT NULL,
  PRIMARY KEY (`id_ujian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
