
/*---------------------------------------------------------------
  SQL DB BACKUP 16.10.2026 14:11 
  HOST: localhost
  DATABASE: antcbt
  TABLES: *
  ---------------------------------------------------------------*/

/*---------------------------------------------------------------
  TABLE: `berita`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `berita`;
CREATE TABLE `berita` (
  `id_berita` int NOT NULL AUTO_INCREMENT,
  `id_mapel` int NOT NULL,
  `sesi` varchar(10) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `ikut` varchar(10) DEFAULT NULL,
  `susulan` varchar(10) DEFAULT NULL,
  `no_susulan` text,
  `mulai` varchar(10) DEFAULT NULL,
  `selesai` varchar(10) DEFAULT NULL,
  `nama_proktor` varchar(50) DEFAULT NULL,
  `nip_proktor` varchar(50) DEFAULT NULL,
  `nama_pengawas` varchar(50) DEFAULT NULL,
  `nip_pengawas` varchar(50) DEFAULT NULL,
  `catatan` text,
  `tgl_ujian` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `file_pendukung`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `file_pendukung`;
CREATE TABLE `file_pendukung` (
  `id_file` int NOT NULL AUTO_INCREMENT,
  `id_mapel` int DEFAULT '0',
  `nama_file` varchar(50) DEFAULT NULL,
  `status_file` int DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
INSERT INTO `file_pendukung` VALUES   ('41','3','17910819781.png',NULL);
INSERT INTO `file_pendukung` VALUES ('42','3','17910819782.png',NULL);
INSERT INTO `file_pendukung` VALUES ('43','3','17910819783.png',NULL);
INSERT INTO `file_pendukung` VALUES ('44','3','17910819784.png',NULL);
INSERT INTO `file_pendukung` VALUES ('45','3','17910819785.png',NULL);

/*---------------------------------------------------------------
  TABLE: `jawaban`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jawaban`;
CREATE TABLE `jawaban` (
  `id_jawaban` int NOT NULL AUTO_INCREMENT,
  `id_siswa` int NOT NULL,
  `id_mapel` int NOT NULL,
  `id_soal` int NOT NULL,
  `id_ujian` int NOT NULL,
  `jawaban` char(1) DEFAULT NULL,
  `jawabx` char(1) DEFAULT NULL,
  `jenis` int NOT NULL,
  `esai` text,
  `nilai_esai` int NOT NULL DEFAULT '0',
  `ragu` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `jawaban_tugas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jawaban_tugas`;
CREATE TABLE `jawaban_tugas` (
  `id_jawaban` int NOT NULL AUTO_INCREMENT,
  `id_siswa` int DEFAULT NULL,
  `id_tugas` int DEFAULT NULL,
  `jawaban` longtext,
  `file` varchar(255) DEFAULT NULL,
  `tgl_dikerjakan` datetime DEFAULT NULL,
  `tgl_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nilai` varchar(5) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
INSERT INTO `jenis` VALUES   ('UAS','Ujian Akhir Semester','aktif');
INSERT INTO `jenis` VALUES ('UTS','Ujian Tengah Semester','tidak');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
  `id_raport` int NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `kelas` VALUES   ('X AK','X','X AK',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('X BD','X','X BD',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('X LPKKK','X','X LPKKK',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('X PH','X','X PH',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('X RPL','X','X RPL',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('XI AK','XI','XI AK',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('XI BD','XI','XI BD',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('XI LPKKK','XI','XI LPKKK',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('XI PH','XI','XI PH',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('XI RPL','XI','XI RPL',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('XII AK','XII','XII AK',NULL,NULL,'0');
INSERT INTO `kelas` VALUES ('XII LPKKK','XII','XII LPKKK',NULL,NULL,'0');
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
  `id_log` int NOT NULL AUTO_INCREMENT,
  `id_siswa` int NOT NULL,
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
  `id_mapel` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) NOT NULL DEFAULT '0',
  `idpk` varchar(255) NOT NULL,
  `idguru` varchar(3) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jml_soal` int NOT NULL,
  `jml_esai` int NOT NULL DEFAULT '0',
  `tampil_pg` int NOT NULL,
  `tampil_esai` int NOT NULL DEFAULT '0',
  `bobot_pg` int NOT NULL,
  `bobot_esai` int NOT NULL DEFAULT '0',
  `level` varchar(5) NOT NULL,
  `opsi` int NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(2) NOT NULL,
  `kkm` int DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mapel`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
INSERT INTO `mapel` VALUES   ('3','123','a:1:{i:0;s:5:\"semua\";}','260','123','35','5','40','5','70','30','semua','5','a:1:{i:0;s:5:\"semua\";}','2026-10-04 09:46:18','1','75','');

/*---------------------------------------------------------------
  TABLE: `mata_pelajaran`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `mata_pelajaran`;
CREATE TABLE `mata_pelajaran` (
  `kode_mapel` varchar(255) NOT NULL,
  `nama_mapel` varchar(255) NOT NULL,
  `mata_pelajaran_id` varchar(10) DEFAULT NULL,
  `mapel_id` int NOT NULL,
  PRIMARY KEY (`kode_mapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `mata_pelajaran` VALUES   ('123','123',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('BINDO','BAHASA INDONESIA',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('BING','BAHASA INGGRIS',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('FISIKA','FISIKA',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('KIMIA','KIMIA',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('MTK','MATEMATIKA',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('PAI','PENDIDIKAN AGAMA ISLAM',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('PJOK','PENJASKES',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('PKN','PENDIDIKAN KEWARGANEGARAAN',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('PRODTKJ','PRODUKTIF TKJ',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('pw','pemrograman web',NULL,'0');
INSERT INTO `mata_pelajaran` VALUES ('SEJINDO','SEJARAH INDONESIA',NULL,'0');

/*---------------------------------------------------------------
  TABLE: `materi`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `materi`;
CREATE TABLE `materi` (
  `id_materi` int NOT NULL AUTO_INCREMENT,
  `id_guru` int NOT NULL DEFAULT '0',
  `kelas` text NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `materi` longtext,
  `file` varchar(255) DEFAULT NULL,
  `tgl_mulai` datetime NOT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id_materi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*---------------------------------------------------------------
  TABLE: `nilai`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `nilai`;
CREATE TABLE `nilai` (
  `id_nilai` int NOT NULL AUTO_INCREMENT,
  `id_ujian` int NOT NULL,
  `id_mapel` int NOT NULL,
  `id_siswa` int NOT NULL,
  `kode_ujian` varchar(30) NOT NULL,
  `ujian_mulai` varchar(20) NOT NULL,
  `ujian_berlangsung` varchar(20) DEFAULT NULL,
  `ujian_selesai` varchar(20) DEFAULT NULL,
  `jml_benar` int DEFAULT NULL,
  `jml_salah` int DEFAULT NULL,
  `nilai_esai` varchar(10) DEFAULT NULL,
  `skor` varchar(10) DEFAULT NULL,
  `total` varchar(10) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `hasil` int NOT NULL,
  `jawaban` text,
  `jawaban_esai` longtext,
  `nilai_esai2` text,
  `online` int NOT NULL DEFAULT '0',
  `id_soal` longtext,
  `id_opsi` longtext,
  `id_esai` text,
  `blok` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_nilai`),
  KEY `id_mapel` (`id_mapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `pengawas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengawas`;
CREATE TABLE `pengawas` (
  `id_pengawas` int NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` text,
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
  `kode_pos` int DEFAULT NULL,
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
  `password2` text,
  `ruang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pengawas`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8mb3;
INSERT INTO `pengawas` VALUES   ('1','-','administrator','','admin','$2y$10$KUNIFi/JYf7d/tBHZyhSue5uzdspf2Khe4b6uMi51rWa5QPu4p/7O','admin','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','',NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('260','-','AMINU',NULL,'guru','guru','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*---------------------------------------------------------------
  TABLE: `pengumuman`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengumuman`;
CREATE TABLE `pengumuman` (
  `id_pengumuman` int NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `user` int NOT NULL,
  `text` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  `untuk_sma` int NOT NULL,
  `untuk_smk` int NOT NULL,
  `jenjang_pendidikan_id` int DEFAULT NULL,
  PRIMARY KEY (`jurusan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
INSERT INTO `ruang` VALUES   ('LAB 1','LAB 1',NULL);
INSERT INTO `ruang` VALUES ('LAB 2','LAB 2',NULL);
INSERT INTO `ruang` VALUES ('LAB 4','LAB 4',NULL);

/*---------------------------------------------------------------
  TABLE: `semester`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester` (
  `semester_id` varchar(5) NOT NULL,
  `tahun_ajaran_id` varchar(4) NOT NULL,
  `nama_semester` varchar(50) NOT NULL,
  `semester` int NOT NULL,
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
INSERT INTO `sesi` VALUES ('4','4');

/*---------------------------------------------------------------
  TABLE: `session`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id` int NOT NULL AUTO_INCREMENT,
  `session_time` varchar(10) NOT NULL,
  `session_hash` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `setting`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id_setting` int NOT NULL AUTO_INCREMENT,
  `aplikasi` varchar(100) DEFAULT NULL,
  `kode_sekolah` varchar(10) DEFAULT NULL,
  `sekolah` varchar(50) DEFAULT NULL,
  `jenjang` varchar(5) DEFAULT NULL,
  `kepsek` varchar(50) DEFAULT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `alamat` text,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `logo` text,
  `header` text,
  `header_kartu` text,
  `nama_ujian` text,
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
INSERT INTO `setting` VALUES   ('1','ANT CBT','K05150115','SMK ABDI NEGARA TUBAN','SMK','Uswatun Hasanah, S.Pd','-','Jl. Dr. Wahidin SH No. 798 Tuban<br />\r\n','Tuban ','Tuban','03568832043','-','smkabdinegara.sch.id','smk.abdinegara798@gmail.com','dist/img/logo17.png','','KARTU PESERTA','Ujian Akhir Semester','2.5','http://192.168.0.200/antcbt','Asia/Jakarta','pusat','SR01','xxxxxx','VKLuYN7Lwjjwu','8cce47df-aae7-4274-83cb-5af3093eab56','69787351','2.8.1');

/*---------------------------------------------------------------
  TABLE: `sinkron`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `sinkron`;
CREATE TABLE `sinkron` (
  `nama_data` varchar(50) NOT NULL,
  `data` varchar(50) DEFAULT NULL,
  `jumlah` varchar(50) DEFAULT NULL,
  `tanggal` varchar(50) DEFAULT NULL,
  `status_sinkron` int DEFAULT NULL,
  PRIMARY KEY (`nama_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
INSERT INTO `sinkron` VALUES   ('DATA1','siswa','','','0');
INSERT INTO `sinkron` VALUES ('DATA2','bank soal','','','0');
INSERT INTO `sinkron` VALUES ('DATA3','soal','','','0');
INSERT INTO `sinkron` VALUES ('DATA4','jadwal','','','0');

/*---------------------------------------------------------------
  TABLE: `siswa`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa` (
  `id_siswa` int NOT NULL AUTO_INCREMENT,
  `id_kelas` varchar(11) DEFAULT NULL,
  `idpk` varchar(10) DEFAULT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `no_peserta` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `level` varchar(5) DEFAULT NULL,
  `ruang` varchar(10) DEFAULT NULL,
  `sesi` int DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text,
  `foto` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(30) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `kebutuhan_khusus` varchar(20) DEFAULT NULL,
  `alamat` text,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `dusun` varchar(100) DEFAULT NULL,
  `kelurahan` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kode_pos` int DEFAULT NULL,
  `jenis_tinggal` varchar(100) DEFAULT NULL,
  `alat_transportasi` varchar(100) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `skhun` int DEFAULT NULL,
  `no_kps` varchar(50) DEFAULT NULL,
  `nama_ayah` varchar(150) DEFAULT NULL,
  `tahun_lahir_ayah` int DEFAULT NULL,
  `pendidikan_ayah` varchar(50) DEFAULT NULL,
  `pekerjaan_ayah` varchar(100) DEFAULT NULL,
  `penghasilan_ayah` varchar(100) DEFAULT NULL,
  `nohp_ayah` varchar(15) DEFAULT NULL,
  `nama_ibu` varchar(150) DEFAULT NULL,
  `tahun_lahir_ibu` int DEFAULT NULL,
  `pendidikan_ibu` varchar(50) DEFAULT NULL,
  `pekerjaan_ibu` varchar(100) DEFAULT NULL,
  `penghasilan_ibu` varchar(100) DEFAULT NULL,
  `nohp_ibu` int DEFAULT NULL,
  `nama_wali` varchar(150) DEFAULT NULL,
  `tahun_lahir_wali` int DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(100) DEFAULT NULL,
  `penghasilan_wali` varchar(50) DEFAULT NULL,
  `angkatan` int DEFAULT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `peserta_didik_id` varchar(50) DEFAULT NULL,
  `semester_id` varchar(10) DEFAULT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  `status` int DEFAULT '1',
  `online` int DEFAULT '0',
  `no_meja` varchar(2) NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000 DEFAULT CHARSET=latin1;
INSERT INTO `siswa` VALUES   ('1','XII RPL','RPL','3084817806','3554/782/4.1.1','AGUSTINUS SELEGANI','XII','LAB 1','1','87172','23549*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','1');
INSERT INTO `siswa` VALUES ('2','XII RPL','RPL','0089385625','3555/783/4.1.1','BAYU SAMUDRA','XII','LAB 1','1','21933','71082*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','2');
INSERT INTO `siswa` VALUES ('3','XII RPL','RPL','0092637522','3556/784/4.1.1','FRANSISKUS FERY KEGOU','XII','LAB 1','1','80060','16310*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','3');
INSERT INTO `siswa` VALUES ('4','XII RPL','RPL','0095118059','3557/785/4.1.1','GIOVANNI ELYSIA DEWI','XII','LAB 1','1','78358','90322*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','4');
INSERT INTO `siswa` VALUES ('5','XII RPL','RPL','0085892636','3558/786/4.1.1','KRISTIAN WAHYUDI ARDIASYAH','XII','LAB 1','1','24049','79338*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','5');
INSERT INTO `siswa` VALUES ('6','XII RPL','RPL','0083092770','3559/787/4.1.1','MUHAMAD WAFIYUL AHDI','XII','LAB 1','1','98712','99293*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','6');
INSERT INTO `siswa` VALUES ('7','XII RPL','RPL','0095147265','3560/788/4.1.1','MUHAMMAD NUR ALIF','XII','LAB 1','1','11934','81204*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','7');
INSERT INTO `siswa` VALUES ('8','XII PH','PH','0088042575','3534/611/9.2.1','AHMAD AGUS SETYA ABADI','XII','LAB 2','1','30739','36869*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','15');
INSERT INTO `siswa` VALUES ('9','XII PH','PH','0084433174','3535/612/9.2.1','AHMAD JALIL','XII','LAB 2','1','56580','77339*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','16');
INSERT INTO `siswa` VALUES ('10','XII PH','PH','0085987867','3536/613/9.2.1','AHMAD ROBI','XII','LAB 2','1','67650','35328*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','17');
INSERT INTO `siswa` VALUES ('11','XII PH','PH','0094524380','3537/614/9.2.1','ANGGA HANDAYANA SAPUTRA','XII','LAB 2','1','63014','86320*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','18');
INSERT INTO `siswa` VALUES ('12','XII PH','PH','0046661092','3538/615/9.2.1','ANITA TABITA','XII','LAB 2','1','35681','69544*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','19');
INSERT INTO `siswa` VALUES ('13','XII PH','PH','0074831450','3539/616/9.2.1','ARMAS DION SAPUTRA','XII','LAB 2','1','95272','20482*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','20');
INSERT INTO `siswa` VALUES ('14','XII PH','PH','0084022362','3540/617/9.2.1','CIKA AGUSTINA','XII','LAB 2','1','54520','58182*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','21');
INSERT INTO `siswa` VALUES ('15','XII PH','PH','0092199978','3541/618/9.2.1','CIKA AMELIA','XII','LAB 2','1','87365','69827*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','22');
INSERT INTO `siswa` VALUES ('16','XII PH','PH','0082006355','3542/619/9.2.1','DURAKIM','XII','LAB 2','1','92235','31515*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','23');
INSERT INTO `siswa` VALUES ('17','XII PH','PH','0072511826','3543/620/9.2.1','EKA WALUYO PUTRO','XII','LAB 2','1','13036','19300*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','24');
INSERT INTO `siswa` VALUES ('18','XII PH','PH','0097868726','3545/622/9.2.1','KEREN SANGEROKI','XII','LAB 2','1','45571','46960*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','25');
INSERT INTO `siswa` VALUES ('19','XII PH','PH','0094853593','3546/623/9.2.1','MOHAMMAD ZUBAERI AKBAR','XII','LAB 2','1','12301','18092*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','26');
INSERT INTO `siswa` VALUES ('20','XII PH','PH','0082670430','3547/624/9.2.1','MONICA SILFIANA','XII','LAB 2','1','26981','79605*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','27');
INSERT INTO `siswa` VALUES ('21','XII PH','PH','0085128954','3548/625/9.2.1','NANDA ANDIKA','XII','LAB 2','1','49674','58941*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','28');
INSERT INTO `siswa` VALUES ('22','XII PH','PH','0097443987','3549/626/9.2.1','OCYROSE','XII','LAB 2','1','65344','91088*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','29');
INSERT INTO `siswa` VALUES ('23','XII PH','PH','0085581657','3550/627/9.2.1','RINA RENATA','XII','LAB 2','1','22080','52284*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','30');
INSERT INTO `siswa` VALUES ('24','XII PH','PH','0087112414','3551/628/9.2.1','SA IN DAVA OFANSA','XII','LAB 2','1','79059','90308*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','31');
INSERT INTO `siswa` VALUES ('25','XII PH','PH','0087410172','3552/629/9.2.1','WIDIYANA PUTRI ANISYAH','XII','LAB 2','1','71668','68167*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','32');
INSERT INTO `siswa` VALUES ('26','XII PH','PH','0092212153','3553/630/9.2.1','ZIDAN NIAM NUR ROHMAN','XII','LAB 2','1','10938','35839*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','33');
INSERT INTO `siswa` VALUES ('27','XII LPKKK','LPKKK','0081829471','3561/246/5.3.1','AGUSTINA ZAYYAN NABILA','XII','LAB 1','1','50586','66263*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','19');
INSERT INTO `siswa` VALUES ('28','XII LPKKK','LPKKK','3098143153','3562/247/5.3.1','AISYA SEPTIA PUTRI','XII','LAB 1','1','83095','16058*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','20');
INSERT INTO `siswa` VALUES ('29','XII LPKKK','LPKKK','0082713422','3563/248/5.3.1','AISYAH SHALSA NUR IZAROH','XII','LAB 1','1','22329','69242*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','21');
INSERT INTO `siswa` VALUES ('30','XII LPKKK','LPKKK','0088095402','3564/249/5.3.1','ALYA RIZKEYLA SAFITRI','XII','LAB 1','1','15809','36474*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','22');
INSERT INTO `siswa` VALUES ('31','XII LPKKK','LPKKK','0087170788','3565/250/5.3.1','ANGGI FAJAR MULYANI','XII','LAB 1','1','60689','85342*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','23');
INSERT INTO `siswa` VALUES ('32','XII LPKKK','LPKKK','0087183497','3566/251/5.3.1','AZARINA ROSNAIDA','XII','LAB 1','1','22327','54608*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','24');
INSERT INTO `siswa` VALUES ('33','XII LPKKK','LPKKK','0087333210','3567/252/5.3.1','BINTANG IMAM SAFI\'I','XII','LAB 1','1','46703','82513*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','25');
INSERT INTO `siswa` VALUES ('34','XII LPKKK','LPKKK','0081670305','3568/253/5.3.1','BUNGA BARBALINA WANIMBO','XII','LAB 1','1','25605','56212*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','26');
INSERT INTO `siswa` VALUES ('35','XII LPKKK','LPKKK','0093682801','3569/254/5.3.1','CHERY KHANIARANI PERMANA','XII','LAB 1','1','10155','28988*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','27');
INSERT INTO `siswa` VALUES ('36','XII LPKKK','LPKKK','0095716664','3570/255/5.3.1','DINDA AYU YULIANTI','XII','LAB 1','1','77733','88000*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','28');
INSERT INTO `siswa` VALUES ('37','XII LPKKK','LPKKK','0094004442','3571/256/5.3.1','EVA ANJARSARI','XII','LAB 1','1','59818','50539*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','29');
INSERT INTO `siswa` VALUES ('38','XII LPKKK','LPKKK','3085415312','3572/257/5.3.1','FERONIKA WAMINOP','XII','LAB 1','1','51029','25719*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','30');
INSERT INTO `siswa` VALUES ('39','XII LPKKK','LPKKK','0086561931','3573/258/5.3.1','FIRDA NUR APIPAH','XII','LAB 1','1','46524','28513*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','31');
INSERT INTO `siswa` VALUES ('40','XII LPKKK','LPKKK','0082462210','3574/259/5.3.1','INDAH SEPTYA RAMADHANI','XII','LAB 1','1','41641','47176*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','32');
INSERT INTO `siswa` VALUES ('41','XII LPKKK','LPKKK','0095245735','3575/260/5.3.1','ISNA FITRIYAH','XII','LAB 1','1','21639','94238*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','33');
INSERT INTO `siswa` VALUES ('42','XII LPKKK','LPKKK','0088586496','3576/261/5.3.1','JESSICA MALVA NYSA','XII','LAB 1','1','13838','71702*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','34');
INSERT INTO `siswa` VALUES ('43','XII LPKKK','LPKKK','0085892694','3578/263/5.3.1','KERIN SILALAHI','XII','LAB 2','1','19270','97249*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','1');
INSERT INTO `siswa` VALUES ('44','XII LPKKK','LPKKK','0089785434','3579/264/5.3.1','LU LU NUR ISMAH','XII','LAB 2','1','36315','61557*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','2');
INSERT INTO `siswa` VALUES ('45','XII LPKKK','LPKKK','3098867550','3591/276/5.3.1','NILNA ROHMATAL MAULA','XII','LAB 2','1','63252','91407*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','3');
INSERT INTO `siswa` VALUES ('46','XII LPKKK','LPKKK','0093092464','3580/265/5.3.1','REVITA MEISYA RINDANI','XII','LAB 2','1','10910','72440*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','4');
INSERT INTO `siswa` VALUES ('47','XII LPKKK','LPKKK','0091172193','3581/266/5.3.1','SALSA BELA RAQIBATUN NAJA','XII','LAB 2','1','31292','55553*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','5');
INSERT INTO `siswa` VALUES ('48','XII LPKKK','LPKKK','0086100441','3582/267/5.3.1','SELFI NUR AINI','XII','LAB 2','1','74626','18252*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','6');
INSERT INTO `siswa` VALUES ('49','XII LPKKK','LPKKK','0092242063','3583/268/5.3.1','SIFA UL MUNAWAROH','XII','LAB 2','1','55493','40713*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','7');
INSERT INTO `siswa` VALUES ('50','XII LPKKK','LPKKK','0085064949','3584/269/5.3.1','TAQIYATUL ANIQOH','XII','LAB 2','1','49065','57565*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','8');
INSERT INTO `siswa` VALUES ('51','XII LPKKK','LPKKK','0092930844','3585/270/5.3.1','TIARA AYU AZZAHRA','XII','LAB 2','1','48716','57618*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','9');
INSERT INTO `siswa` VALUES ('52','XII LPKKK','LPKKK','0084788525','3586/271/5.3.1','TIKA WAHYUNI ','XII','LAB 2','1','61332','15347*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','10');
INSERT INTO `siswa` VALUES ('53','XII LPKKK','LPKKK','0089065992','3587/272/5.3.1','TRESYA DWI MARTHA','XII','LAB 2','1','24936','32913*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','11');
INSERT INTO `siswa` VALUES ('54','XII LPKKK','LPKKK','0086514582','3588/273/5.3.1','VALENCIA NUR LAILA','XII','LAB 2','1','46143','17545*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','12');
INSERT INTO `siswa` VALUES ('55','XII LPKKK','LPKKK','0099784935','3589/274/5.3.1','WIDYA WULAN APRILIA','XII','LAB 2','1','26593','24016*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','13');
INSERT INTO `siswa` VALUES ('56','XII LPKKK','LPKKK','0076889226','3590/275/5.3.1','WINDA ESTURINA','XII','LAB 2','1','62141','28055*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','14');
INSERT INTO `siswa` VALUES ('57','XII AK','AK','0083923417','3507/913/8.3.3','AFWINDA AFRIYANTI','XII','LAB 1','1','27334','47229*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','8');
INSERT INTO `siswa` VALUES ('58','XII AK','AK','0088321882','3508/914/8.3.3','AURELLYA NAUFARA MEYLA PUTRI','XII','LAB 1','1','18107','36596*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','9');
INSERT INTO `siswa` VALUES ('59','XII AK','AK','0095381824','3592/923/8.3.3','CINTA MAULIDYA','XII','LAB 1','1','16908','84667*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','10');
INSERT INTO `siswa` VALUES ('60','XII AK','AK','0086492067','3509/915/8.3.3','FITRI OKTAVIA','XII','LAB 1','1','70693','59429*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','11');
INSERT INTO `siswa` VALUES ('61','XII AK','AK','0097334140','3510/916/8.3.3','INTAN NUR QOMARIAH YUNITA','XII','LAB 1','1','40234','77410*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','12');
INSERT INTO `siswa` VALUES ('62','XII AK','AK','3093035334','3511/917/8.3.3','JUNIA RIZKY AMELLIA','XII','LAB 1','1','76951','46979*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','13');
INSERT INTO `siswa` VALUES ('63','XII AK','AK','0091419099','3512/918/8.3.3','KIKI OKTAVIANA PUTRI','XII','LAB 1','1','37811','16320*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','14');
INSERT INTO `siswa` VALUES ('64','XII AK','AK','0087796692','3513/919/8.3.3','ROBIATUL CHULFIA','XII','LAB 1','1','97531','68773*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','15');
INSERT INTO `siswa` VALUES ('65','XII AK','AK','0094814471','3514/920/8.3.3','SAFIRA NUR AULIA','XII','LAB 1','1','71297','51799*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','16');
INSERT INTO `siswa` VALUES ('66','XII AK','AK','0098172557','3515/921/8.3.3','SINDI VIKA AULIA','XII','LAB 1','1','95730','13817*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','17');
INSERT INTO `siswa` VALUES ('67','XII AK','AK','0081512484','3516/922/8.3.3','YASMIN ARA ISABEL','XII','LAB 1','1','93210','80313*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','18');
INSERT INTO `siswa` VALUES ('68','XI RPL','RPL','0099670166','3648/790/4.1.1','AFRILIA DWI LESTARI','XI','LAB 4','1','82851','89151*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','1');
INSERT INTO `siswa` VALUES ('69','XI RPL','RPL','3099532844 ','3649/791/4.1.1','AHMAD SIHABUDIN H','XI','LAB 4','1','23389','96048*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','2');
INSERT INTO `siswa` VALUES ('70','XI RPL','RPL','0093042659','3650/792/4.1.1','CHOKY AHMAD DHOHIR','XI','LAB 4','1','45664','73630*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','3');
INSERT INTO `siswa` VALUES ('71','XI RPL','RPL','0088575983','3651/793/4.1.1','DIANG MUSTA KRISNA','XI','LAB 4','1','88227','93876*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','4');
INSERT INTO `siswa` VALUES ('72','XI RPL','RPL','0099604567','3657/799/4.1.1','MUHAMMAD THOHIR AFANDHY','XI','LAB 4','1','19952','11375*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','5');
INSERT INTO `siswa` VALUES ('73','XI RPL','RPL','0091738994','3654/796/4.1.1','MIGUEL MOBILALA','XI','LAB 4','1','13541','73623*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','6');
INSERT INTO `siswa` VALUES ('74','XI RPL','RPL','0104145050','3655/797/4.1.1','MOCHAMAD ALIEF FEBRIYAN','XI','LAB 4','1','39571','69427*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','7');
INSERT INTO `siswa` VALUES ('75','XI RPL','RPL','0109082726','3658/800/4.1.1','NELSON L. M. MAMORIBO','XI','LAB 4','1','99788','25602*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','8');
INSERT INTO `siswa` VALUES ('76','XI RPL','RPL','0098183671','3661/803/4.1.1','RIYA PUJIATI','XI','LAB 4','1','94544','11669*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','9');
INSERT INTO `siswa` VALUES ('77','XI RPL','RPL','0091640302','3662/804/4.1.1','SITI MUSHOLIKHAH KHOIRIAH','XI','LAB 4','1','38545','83990*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','10');
INSERT INTO `siswa` VALUES ('78','XI RPL','RPL','3101897215','3664/806/4.1.1','WINARTI EKA PUTRI','XI','LAB 4','1','26208','53427*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','11');
INSERT INTO `siswa` VALUES ('79','XI RPL','RPL','3100247045','3665/807/4.1.1','YONGKI FEBRIANSYAH','XI','LAB 4','1','22166','54219*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','12');
INSERT INTO `siswa` VALUES ('80','XI PH','PH','0099583315','3621/632/9.2.1','AGFIAN RAMA IZAL','XI','LAB 4','1','54210','52350*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','13');
INSERT INTO `siswa` VALUES ('81','XI PH','PH','0098929895','3622/633/9.2.1','AHMAD ABDUL ROKHIM','XI','LAB 4','1','93043','59715*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','14');
INSERT INTO `siswa` VALUES ('82','XI PH','PH','0096898031','3623/634/9.2.1','AHMAD ARIF WAHYUDI','XI','LAB 4','1','47456','45676*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','15');
INSERT INTO `siswa` VALUES ('83','XI PH','PH','0083135490','3624/635/9.2.1','AHMAD SHAKA QOIRI','XI','LAB 4','1','66717','36166*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','16');
INSERT INTO `siswa` VALUES ('84','XI PH','PH','0094365208','3625/636/9.2.1','AISYAH AURORA FARADILLAH','XI','LAB 4','1','17684','23960*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','17');
INSERT INTO `siswa` VALUES ('85','XI PH','PH','3096132137','3626/637/9.2.1','ALDI NUR HERMANSYAH','XI','LAB 4','1','57317','85446*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','18');
INSERT INTO `siswa` VALUES ('86','XI PH','PH','3109399086','3627/638/9.2.1','CHINDY AULIA PRATIWI','XI','LAB 4','1','47594','93171*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','19');
INSERT INTO `siswa` VALUES ('87','XI PH','PH','0098042614','3628/639/9.2.1','CLARISTA DWI PUTRI KARTIKA','XI','LAB 4','1','26332','89721*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','20');
INSERT INTO `siswa` VALUES ('88','XI PH','PH','0093014598','3629/640/9.2.1','DENI YULIA SETIAWAN','XI','LAB 1','2','94707','67554*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','1');
INSERT INTO `siswa` VALUES ('89','XI PH','PH','0097545987','3630/641/9.2.1','EVI PUTRI PUSPITA SARI','XI','LAB 1','2','64357','43233*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','2');
INSERT INTO `siswa` VALUES ('90','XI PH','PH','3097830393','3631/642/9.2.1','FERDI SETIO BEKTI','XI','LAB 1','2','17570','56925*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','3');
INSERT INTO `siswa` VALUES ('91','XI PH','PH','0079668849','3632/643/9.2.1','FERDIANTO','XI','LAB 1','2','97375','86160*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','4');
INSERT INTO `siswa` VALUES ('92','XI PH','PH','0108809871','3633/644/9.2.1','FERRI KURNIAWAN','XI','LAB 1','2','17185','96332*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','5');
INSERT INTO `siswa` VALUES ('93','XI PH','PH','0092811081','3634/645/9.2.1','ICHA APRILIA KUSUMA NINGRUM','XI','LAB 1','2','69741','79046*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','6');
INSERT INTO `siswa` VALUES ('94','XI PH','PH','0091425175','3635/646/9.2.1','KALILA ADELIA FEBRIANI','XI','LAB 1','2','57084','20306*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','7');
INSERT INTO `siswa` VALUES ('95','XI PH','PH','0099867166','3636/647/9.2.1','LIES DIANTI','XI','LAB 1','2','74007','29042*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','8');
INSERT INTO `siswa` VALUES ('96','XI PH','PH','0107629511','3637/648/9.2.1','MOHAMMAD ARDIANTO','XI','LAB 1','2','91651','67770*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','9');
INSERT INTO `siswa` VALUES ('97','XI PH','PH','0094925399','3638/649/9.2.1','NADIA VICTORIA','XI','LAB 1','2','72538','82910*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','10');
INSERT INTO `siswa` VALUES ('98','XI PH','PH','0091945794','3639/650/9.2.1','NUR FEBRI','XI','LAB 1','2','51122','89821*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','11');
INSERT INTO `siswa` VALUES ('99','XI PH','PH','3096777866','3641/652/9.2.1','SHOLIKHATUN NISAK','XI','LAB 1','2','78005','76864*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','12');
INSERT INTO `siswa` VALUES ('100','XI PH','PH','3099948502','3642/653/9.2.1','SITI VIRA ARMANDA','XI','LAB 1','2','12066','60997*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','13');
INSERT INTO `siswa` VALUES ('101','XI PH','PH','0101425817','3644/655/9.2.1','WAHYU KURNIAWAN','XI','LAB 1','2','46429','59758*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','14');
INSERT INTO `siswa` VALUES ('102','XI PH','PH','0116880490','3687/658/9.2.1','WILDA NURZILLA PUTRI','XI','LAB 1','2','47093','89672*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','15');
INSERT INTO `siswa` VALUES ('103','XI PH','PH','0094031184','3645/656/9.2.1','WINDA AYU LALIANA','XI','LAB 1','2','67188','84023*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','16');
INSERT INTO `siswa` VALUES ('104','XI PH','PH','0094954392','3646/657/9.2.1','YESSI DWI SETEFANI','XI','LAB 1','2','54324','23578*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','17');
INSERT INTO `siswa` VALUES ('105','XI LPKKK','LPKKK','0095836125','3666/277/5.3.1','AHMAD ZAHIR HADI MAULANA','XI','LAB 1','2','57274','66951*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','18');
INSERT INTO `siswa` VALUES ('106','XI LPKKK','LPKKK','0098892795','3667/278/5.3.1','AJENG AYU LUPITA SARI','XI','LAB 1','2','71675','33182*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','19');
INSERT INTO `siswa` VALUES ('107','XI LPKKK','LPKKK','3106477072','3668/279/5.3.1','ASYIFA ICA FEBRIANA','XI','LAB 1','2','78055','24999*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','20');
INSERT INTO `siswa` VALUES ('108','XI LPKKK','LPKKK','3094309742','3670/281/5.3.1','CAROLINE AWIDA PEKEI','XI','LAB 1','2','41396','93987*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','21');
INSERT INTO `siswa` VALUES ('109','XI LPKKK','LPKKK','3103576743','3671/282/5.3.1','DIFA JULIA SETIYA SARI','XI','LAB 1','2','91868','36227*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','22');
INSERT INTO `siswa` VALUES ('110','XI LPKKK','LPKKK','3106210106','3672/283/5.3.1','DINDA AMEILIA','XI','LAB 1','2','55510','89159*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','23');
INSERT INTO `siswa` VALUES ('111','XI LPKKK','LPKKK','3104235536','3673/284/5.3.1','GALUH ANANDA REVIOLA','XI','LAB 1','2','27594','87210*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','24');
INSERT INTO `siswa` VALUES ('112','XI LPKKK','LPKKK','0073790785','3674/285/5.3.1','HENNY MUDERCE  AMBRAU','XI','LAB 1','2','83766','25640*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','25');
INSERT INTO `siswa` VALUES ('113','XI LPKKK','LPKKK','0097316450','3676/287/5.3.1','MUHAMMAD QOBRIR JAILANI','XI','LAB 1','2','35438','94752*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','26');
INSERT INTO `siswa` VALUES ('114','XI LPKKK','LPKKK','0091559550','3677/288/5.3.1','NABIL ROSIDHA','XI','LAB 1','2','98381','37598*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','27');
INSERT INTO `siswa` VALUES ('115','XI LPKKK','LPKKK','0105326967','3678/289/5.3.1','NABILLA CAESARIA DANISWARA','XI','LAB 1','2','86656','28004*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','28');
INSERT INTO `siswa` VALUES ('116','XI LPKKK','LPKKK','0092556020','3679/290/5.3.1','NOVINA EKA SAFITRI','XI','LAB 1','2','65026','86259*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','29');
INSERT INTO `siswa` VALUES ('117','XI LPKKK','LPKKK','3103404247','3680/291/5.3.1','SALMA MUFIDAH RAMADHANI','XI','LAB 1','2','72683','57585*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','30');
INSERT INTO `siswa` VALUES ('118','XI LPKKK','LPKKK','0063426670','3681/292/5.3.1','SINTA MAHARANI','XI','LAB 2','2','49790','84643*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','1');
INSERT INTO `siswa` VALUES ('119','XI LPKKK','LPKKK','0083504030','3682/293/5.3.1','SINTIYA NURJANNAH','XI','LAB 2','2','45373','53076*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','2');
INSERT INTO `siswa` VALUES ('120','XI LPKKK','LPKKK','0108508534','3683/294/5.3.1','SULISTIA FEBRY MAULUDIA','XI','LAB 2','2','94063','74467*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','3');
INSERT INTO `siswa` VALUES ('121','XI LPKKK','LPKKK','0108221385','3684/295/5.3.1','WIDIA KESYA ANATASA','XI','LAB 2','2','97723','46069*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','4');
INSERT INTO `siswa` VALUES ('122','XI LPKKK','LPKKK','0109440737','3685/296/5.3.1','YULIANA TEBAI','XI','LAB 2','2','37448','99956*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','5');
INSERT INTO `siswa` VALUES ('123','XI BD','BD','0101358015','3602/509/8.1.1','AHMAD SUHANDIKA','XI','LAB 2','2','40261','46314*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','6');
INSERT INTO `siswa` VALUES ('124','XI BD','BD','0108680513 ','3603/510/8.1.1','AL YASARI FAROKAH','XI','LAB 2','2','44427','10241*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','7');
INSERT INTO `siswa` VALUES ('125','XI BD','BD','0094588964','3604/511/8.1.1','ALLISYA MEYFANNY','XI','LAB 2','2','90582','51909*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','8');
INSERT INTO `siswa` VALUES ('126','XI BD','BD','3085684324','3605/512/8.1.1','AMANDA DWI ANGGELIKA','XI','LAB 2','2','36394','30161*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','9');
INSERT INTO `siswa` VALUES ('127','XI BD','BD','0083528080','3606/513/8.1.1','I\'IS RELAWATI','XI','LAB 2','2','62542','33289*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','10');
INSERT INTO `siswa` VALUES ('128','XI BD','BD','0094158142','3607/514/8.1.1','MELISA CITRA WULAN','XI','LAB 2','2','87548','29075*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','11');
INSERT INTO `siswa` VALUES ('129','XI BD','BD','0102952723','3608/515/8.1.1','MELLISA FERNANDA','XI','LAB 2','2','59725','23566*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','12');
INSERT INTO `siswa` VALUES ('130','XI BD','BD','0099952457','3609/516/8.1.1','MOHAMAD DAFAA\' ADITYA ATMAJA','XI','LAB 2','2','96195','11208*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','13');
INSERT INTO `siswa` VALUES ('131','XI BD','BD','0092452072','3610/517/8.1.1','NARENDRA ALVINO','XI','LAB 2','2','73745','47057*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','14');
INSERT INTO `siswa` VALUES ('132','XI BD','BD','0102216343','3611/518/8.1.1','NAVA ETI SEJATI','XI','LAB 2','2','32744','91031*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','15');
INSERT INTO `siswa` VALUES ('133','XI BD','BD','0091536988','3612/519/8.1.1','NAYSIFAFRANDA AKIUL NASWA','XI','LAB 2','2','21867','82408*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','16');
INSERT INTO `siswa` VALUES ('134','XI BD','BD','0097564232','3613/520/8.1.1','NUR ESA RAHAYU','XI','LAB 2','2','91139','57035*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','17');
INSERT INTO `siswa` VALUES ('135','XI BD','BD','0097067495','3614/521/8.1.1','NURUL JANNAH','XI','LAB 2','2','89278','51556*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','18');
INSERT INTO `siswa` VALUES ('136','XI BD','BD','0099980365','3616/523/8.1.1','RAHMAT DZUL KORNEN','XI','LAB 2','2','93054','14286*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','19');
INSERT INTO `siswa` VALUES ('137','XI BD','BD','0102251710','3617/524/8.1.1','SHETYA DEWI NINGRUM','XI','LAB 2','2','21808','23920*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','20');
INSERT INTO `siswa` VALUES ('138','XI BD','BD','0101963976','3618/525/8.1.1','SITI LAILATUL MARDHIYAH','XI','LAB 2','2','67568','88979*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','21');
INSERT INTO `siswa` VALUES ('139','XI BD','BD','0084461020','3619/526/8.1.1','SUHARWO','XI','LAB 2','2','30952','49074*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','22');
INSERT INTO `siswa` VALUES ('140','XI BD','BD','0101007913','3620/527/8.1.1','TIA MOURINA MARTHA','XI','LAB 2','2','39600','29389*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','23');
INSERT INTO `siswa` VALUES ('141','XI AK','AK','0108934560','3594/924/8.3.3','CHOKY FIRZAN DIAT MIKA','XI','LAB 2','2','28831','68699*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','24');
INSERT INTO `siswa` VALUES ('142','XI AK','AK','0105026508','3595/925/8.3.3','JEIN KWAKTOLO','XI','LAB 2','2','20699','78872*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','25');
INSERT INTO `siswa` VALUES ('143','XI AK','AK','0106597180','3596/926/8.3.3','PUTRI','XI','LAB 2','2','63797','37079*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','26');
INSERT INTO `siswa` VALUES ('144','XI AK','AK','0099380551','3597/927/8.3.3','RAHMAD DZUL KIFLI','XI','LAB 2','2','87165','93162*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','27');
INSERT INTO `siswa` VALUES ('145','XI AK','AK','0095824324','3598/928/8.3.3','RENI ICA OTAVIA','XI','LAB 2','2','76355','93708*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','28');
INSERT INTO `siswa` VALUES ('146','XI AK','AK','0107697462','3599/929/8.3.3','SITI NUR KHOLIFAH','XI','LAB 2','2','93279','31821*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','29');
INSERT INTO `siswa` VALUES ('147','XI AK','AK','0082063256','3600/930/8.3.3','TOTOK SAPUTRO','XI','LAB 2','2','29910','22586*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','30');
INSERT INTO `siswa` VALUES ('148','XI AK','AK','0103237821','3601/931/8.3.3','ZASKIA ADIYA MEGA DEWI','XI','LAB 2','2','45308','45027*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','31');
INSERT INTO `siswa` VALUES ('149','X RPL','RPL','0114891376','3797/767.063','AFIZA FATIN QURROTU AINI','X','LAB 4','2','43026','62861*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','1');
INSERT INTO `siswa` VALUES ('150','X RPL','RPL','0107786879','3798/768.063','AHMAD JUNA ALFINSA','X','LAB 4','2','46052','33378*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','2');
INSERT INTO `siswa` VALUES ('151','X RPL','RPL','0108275315','3799/769.063','AHMAD RIDWAN','X','LAB 4','2','69601','22566*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','3');
INSERT INTO `siswa` VALUES ('152','X RPL','RPL','0103616085','3800/770.063','AHMAD SIFA\'UL QULUB','X','LAB 4','2','35257','24710*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','4');
INSERT INTO `siswa` VALUES ('153','X RPL','RPL','0108438847','3801/771.063','ALDIKIN','X','LAB 4','2','52852','43578*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','5');
INSERT INTO `siswa` VALUES ('154','X RPL','RPL','0103477595','3802/772.063','ALDOKAN','X','LAB 4','2','91022','73946*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','6');
INSERT INTO `siswa` VALUES ('155','X RPL','RPL','0107747419','3803/773.063','ANGGA WIJANARKO','X','LAB 4','2','94429','55879*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','7');
INSERT INTO `siswa` VALUES ('156','X RPL','RPL','0119498057','3804/774.063','AYU STIYA NINGSIH','X','LAB 4','2','65780','13466*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','8');
INSERT INTO `siswa` VALUES ('158','X RPL','RPL','0119987690','3806/776.063','CYNARA LIGAR RIZQULLAH','X','LAB 4','2','18575','82755*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','9');
INSERT INTO `siswa` VALUES ('159','X RPL','RPL','0104938470','3807/777.063','DELLA PUTRI ANGGRAENI','X','LAB 4','2','61580','67769*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','10');
INSERT INTO `siswa` VALUES ('160','X RPL','RPL','3114474828','3808/778.063','FARID RINALDI','X','LAB 4','2','53455','49712*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','11');
INSERT INTO `siswa` VALUES ('162','X RPL','RPL','0101155504','3810/780.063','IFA SETIYANINGSIH','X','LAB 4','2','82456','54785*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','12');
INSERT INTO `siswa` VALUES ('163','X RPL','RPL','0108161791','3811/781.063','IKA DEWI FITRIA','X','LAB 4','2','69107','95283*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','13');
INSERT INTO `siswa` VALUES ('164','X RPL','RPL','0103104970','3812/782.063','KHOIRUL ZULFIKAR','X','LAB 4','2','51266','51697*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','14');
INSERT INTO `siswa` VALUES ('165','X RPL','RPL','0117699185','3813/783.063','LYLLA TIARA PUTRI','X','LAB 4','2','29454','15088*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','15');
INSERT INTO `siswa` VALUES ('166','X RPL','RPL','0108711707','3814/784.063','M. RASYA ISLAMY PASHA A','X','LAB 4','2','97841','21111*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','16');
INSERT INTO `siswa` VALUES ('167','X RPL','RPL','0115365623','3815/785.063','MARISA OLIVIA','X','LAB 4','2','45338','26746*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','17');
INSERT INTO `siswa` VALUES ('169','X RPL','RPL','3104769074','3817/787.063','NABILA ARIFKA PUTRI','X','LAB 4','2','95521','97273*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','18');
INSERT INTO `siswa` VALUES ('170','X RPL','RPL','0101454310','3818/788.063','NAFISA MARTHA AULIA','X','LAB 4','2','39017','73454*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','19');
INSERT INTO `siswa` VALUES ('171','X RPL','RPL','0105674454','3819/789.063','NATASHA LAILY ULFA','X','LAB 4','2','22962','51245*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','20');
INSERT INTO `siswa` VALUES ('172','X RPL','RPL','3104854855','3820/790.063','NIRMALA SAFIRA OKTAVIA','X','LAB 1','3','68907','55820*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','1');
INSERT INTO `siswa` VALUES ('173','X RPL','RPL','0096908980','3821/791.063','PUTRA PAHRY PANGESTU','X','LAB 1','3','52778','22146*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','2');
INSERT INTO `siswa` VALUES ('174','X RPL','RPL','3112500706','3822/792.063','SAFA AMELIA','X','LAB 1','3','77043','40204*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','3');
INSERT INTO `siswa` VALUES ('175','X RPL','RPL','0093322417','3868/802.063','SEPTIAN WILLIAN RAMADHAN','X','LAB 1','3','90350','32038*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','4');
INSERT INTO `siswa` VALUES ('176','X RPL','RPL','0108503632','3823/793.063','SERA EKA PUTRI','X','LAB 1','3','69478','80116*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','5');
INSERT INTO `siswa` VALUES ('177','X RPL','RPL','0102520645','3824/794.063','SHEILA DWI MARTYA IZZAH','X','LAB 1','3','19250','60615*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','6');
INSERT INTO `siswa` VALUES ('178','X RPL','RPL','0099040375','3825/795.063','SHILVIA LUTHFI FITRIANI','X','LAB 1','3','15019','97064*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','7');
INSERT INTO `siswa` VALUES ('179','X RPL','RPL','0117668010','3826/796.063','SINDY NOVITA SARI','X','LAB 1','3','88272','17492*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','8');
INSERT INTO `siswa` VALUES ('180','X RPL','RPL','3119985443','3827/797.063','SYARIIF NAUFAL  AL FAUZI','X','LAB 1','3','86254','99547*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','9');
INSERT INTO `siswa` VALUES ('181','X RPL','RPL','0114299414','3828/798.063','VERONICHA MARIA ULFA','X','LAB 1','3','84447','18908*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','10');
INSERT INTO `siswa` VALUES ('182','X RPL','RPL','3105056293','3829/799.063','VICKY ALVARO FEBRIANO','X','LAB 1','3','34558','76357*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','11');
INSERT INTO `siswa` VALUES ('183','X RPL','RPL','3120991133','3830/800.063','YASON PIGAI','X','LAB 1','3','78775','56684*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','12');
INSERT INTO `siswa` VALUES ('184','X RPL','RPL','0112623469','3831/801.063','ZAMIIR NUR ALIF','X','LAB 1','3','32907','97250*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','13');
INSERT INTO `siswa` VALUES ('185','X PH','PH','0101033185','3761/659.105','ACHMAD RIZKY AMANILLAH JUNY PRATAMA','X','LAB 1','3','46149','84545*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','14');
INSERT INTO `siswa` VALUES ('186','X PH','PH','0114174698','3762/660.105','AHMAD FAY ZAHRONI','X','LAB 1','3','67362','15338*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','15');
INSERT INTO `siswa` VALUES ('187','X PH','PH','0104336423','3763/661.105','AHMAD RIYADI','X','LAB 1','3','73513','31240*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','16');
INSERT INTO `siswa` VALUES ('188','X PH','PH','0099347125','3764/662.105','AHMAD TAUFIQUR RAHMAN','X','LAB 1','3','47155','30959*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','17');
INSERT INTO `siswa` VALUES ('189','X PH','PH','0103447974','3766/664.105','CAHYANA SALSABILA','X','LAB 1','3','95762','67324*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','18');
INSERT INTO `siswa` VALUES ('190','X PH','PH','0108285204','3767/665.105','CINDI AMELIA PUSPITA SARI','X','LAB 1','3','79043','49364*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','19');
INSERT INTO `siswa` VALUES ('191','X PH','PH','0101806196','3768/666.105','DAVID SYUROTUL ANNAS','X','LAB 1','3','55261','39947*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','20');
INSERT INTO `siswa` VALUES ('192','X PH','PH','0159623075','3769/667.105','DONY TATA PRADHYTA','X','LAB 1','3','51960','62903*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','21');
INSERT INTO `siswa` VALUES ('193','X PH','PH','0102287480','3770/668.105','ERZA DWI ANTIKA','X','LAB 1','3','63314','18588*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','22');
INSERT INTO `siswa` VALUES ('194','X PH','PH','3107033275','3771/669.105','FATHIMAHTUZ ZAHRO','X','LAB 1','3','48881','14295*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','23');
INSERT INTO `siswa` VALUES ('195','X PH','PH','0105761019','3772/670.105','FIFI DWI ANGGREENI','X','LAB 1','3','19675','70543*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','24');
INSERT INTO `siswa` VALUES ('196','X PH','PH','0114347470','3773/671.105','FRISKYA HILMI AT TAQIY','X','LAB 1','3','88462','39381*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','25');
INSERT INTO `siswa` VALUES ('197','X PH','PH','0102987234','3774/672.105','ISHIKA ARTYA RUFAIDA','X','LAB 1','3','53055','28057*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','26');
INSERT INTO `siswa` VALUES ('198','X PH','PH','0102277688','3775/673.105','JULIANTI SINTIA PUTRI','X','LAB 1','3','16969','66894*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','27');
INSERT INTO `siswa` VALUES ('199','X PH','PH','0113370182','3776/674.105','MARCELA ROSIANTI','X','LAB 1','3','68486','58562*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','28');
INSERT INTO `siswa` VALUES ('200','X PH','PH','0108116222','3777/675.105','MITA RAHAYU','X','LAB 1','3','70230','42237*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','29');
INSERT INTO `siswa` VALUES ('201','X PH','PH','0108746486','3778/676.105','MOCH. RIZQI FIRMANSYAH','X','LAB 1','3','83842','59071*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','30');
INSERT INTO `siswa` VALUES ('202','X PH','PH','0105403545','3779/677.105','MOCHMAD ANANG PRASETIYO','X','LAB 1','3','31371','21831*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','31');
INSERT INTO `siswa` VALUES ('203','X PH','PH','3105242968','3780/678.105','MOHAMAD MIFTAKHUN NAFI ANNURULHADI','X','LAB 1','3','33409','53325*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','32');
INSERT INTO `siswa` VALUES ('204','X PH','PH','0114512529','3781/679.105','MUHAMMAD ALFIAN NUR RIFA I','X','LAB 1','3','47584','75492*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','33');
INSERT INTO `siswa` VALUES ('205','X PH','PH','0118242724','3782/680.105','MUHAMMAD AVIN FEBRIANSYAH','X','LAB 2','3','79102','51232*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','1');
INSERT INTO `siswa` VALUES ('206','X PH','PH','0101681697','3783/681.105','MUHAMMAD IRWAN JAYA','X','LAB 2','3','62909','50298*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','2');
INSERT INTO `siswa` VALUES ('207','X PH','PH','3109715116','3784/682.105','NABILA WASSHIFATUL HASNA','X','LAB 2','3','59020','60759*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','3');
INSERT INTO `siswa` VALUES ('208','X PH','PH','0105076203','3785/683.105','NOVAL BA\'AFIB SETIA SAPUTRA','X','LAB 2','3','61247','41922*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','4');
INSERT INTO `siswa` VALUES ('209','X PH','PH','0118936798','3786/684.105','NOVIA DIANA PUTRI','X','LAB 2','3','40236','42487*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','5');
INSERT INTO `siswa` VALUES ('210','X PH','PH','0107928323','3787/685.105','PUTRA ALFIN SETIAWAN','X','LAB 2','3','79446','25569*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','6');
INSERT INTO `siswa` VALUES ('211','X PH','PH','0102704604','3788/686.105','RAHMAD ADITYA','X','LAB 2','3','55189','93626*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','7');
INSERT INTO `siswa` VALUES ('212','X PH','PH','0108116779','3789/687.105','RIAN ANANTA ADIK DEVI','X','LAB 2','3','61361','58840*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','8');
INSERT INTO `siswa` VALUES ('213','X PH','PH','3112767159','3790/688.105','SELA DWI ARTIKA','X','LAB 2','3','28040','89731*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','9');
INSERT INTO `siswa` VALUES ('214','X PH','PH','0106789874','3791/689.105','SHOLIKUL HADI','X','LAB 2','3','36356','71945*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','10');
INSERT INTO `siswa` VALUES ('215','X PH','PH','0112304211','3792/690.105','SINTHYA DWI PRASETIA','X','LAB 2','3','31407','17131*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','11');
INSERT INTO `siswa` VALUES ('216','X PH','PH','0105215811','3793/691.105','SITI ISWATUN SHOLIHAN','X','LAB 2','3','76259','95181*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','12');
INSERT INTO `siswa` VALUES ('217','X PH','PH','0103668851','3794/692.105','SUFITA','X','LAB 2','3','96058','54645*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','13');
INSERT INTO `siswa` VALUES ('218','X PH','PH','3114132737','3795/693.105','TARA TRI ANDINI','X','LAB 2','3','20424','11890*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','14');
INSERT INTO `siswa` VALUES ('219','X PH','PH','0118253356','3796/694.105','WILDA KHOIRUN NAJWA','X','LAB 2','3','59077','44291*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','15');
INSERT INTO `siswa` VALUES ('220','X LPKKK','LPKKK','0103974672','3832/297.072','ALVIN ADI PRATAMA','X','LAB 2','3','23958','36333*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','16');
INSERT INTO `siswa` VALUES ('221','X LPKKK','LPKKK','0118533397','3833/298.072','ANINDYA NURHUSNINA MIZZA','X','LAB 2','3','53810','43664*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','17');
INSERT INTO `siswa` VALUES ('222','X LPKKK','LPKKK','0102291227','3834/299.072','APRILIA PUTRI YUNITA SARI','X','LAB 2','3','40044','28056*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','18');
INSERT INTO `siswa` VALUES ('223','X LPKKK','LPKKK','0112311390','3835/300.072','CALISTA ZAHRA AURA APRELLIA','X','LAB 2','3','62223','36568*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','19');
INSERT INTO `siswa` VALUES ('224','X LPKKK','LPKKK','0101133839','3836/301.072','CHIKA AYU PRADITA','X','LAB 2','3','62014','46028*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','20');
INSERT INTO `siswa` VALUES ('225','X LPKKK','LPKKK','0116125379','3837/302.072','DELLA ALISYA PUTRI','X','LAB 2','3','80913','19400*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','21');
INSERT INTO `siswa` VALUES ('226','X LPKKK','LPKKK','0112714915','3838/303.072','DEWI ERNAWATI','X','LAB 2','3','88247','27356*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','22');
INSERT INTO `siswa` VALUES ('227','X LPKKK','LPKKK','3110844207','3839/304.072','EKA FELY LULUK MASYRUROH','X','LAB 2','3','83864','92223*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','23');
INSERT INTO `siswa` VALUES ('228','X LPKKK','LPKKK','0106901735','3840/305.072','FAHRIDHO FIZAR FADILLAH','X','LAB 2','3','18981','55078*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','24');
INSERT INTO `siswa` VALUES ('229','X LPKKK','LPKKK','0102381188','3841/306.072','FITRIANI ROSITA','X','LAB 2','3','59491','60806*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','25');
INSERT INTO `siswa` VALUES ('230','X LPKKK','LPKKK','0104217598','3842/307.072','INDANA NURUS SOFIA','X','LAB 2','3','62154','35464*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','26');
INSERT INTO `siswa` VALUES ('231','X LPKKK','LPKKK','0114378437','3843/308.072','KIRANI SITI NOR ASIAH','X','LAB 2','3','87973','60256*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','27');
INSERT INTO `siswa` VALUES ('232','X LPKKK','LPKKK','0117300753','3844/309.072','KRISNA ARRON LUHUNG NALENDRA','X','LAB 2','3','24193','61662*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','28');
INSERT INTO `siswa` VALUES ('233','X LPKKK','LPKKK','0117505274','3845/310.072','LAILATUL MUBAROKAH','X','LAB 2','3','80595','84338*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','29');
INSERT INTO `siswa` VALUES ('234','X LPKKK','LPKKK','2114503671','3846/311.072','MARIA MADA WIJAYA','X','LAB 2','3','61386','78035*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','30');
INSERT INTO `siswa` VALUES ('235','X LPKKK','LPKKK','3115997870','3847/312.072','MARSELA JULI YANTI','X','LAB 2','3','58369','12466*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','31');
INSERT INTO `siswa` VALUES ('236','X LPKKK','LPKKK','0088576604','3848/313.072','MELI INDAH SARI','X','LAB 2','3','93322','47340*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','32');
INSERT INTO `siswa` VALUES ('237','X LPKKK','LPKKK','0108046636','3849/314.072','MOCHAMMAD WILDAN ALFA ROBBY','X','LAB 2','3','45973','61807*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','33');
INSERT INTO `siswa` VALUES ('238','X LPKKK','LPKKK','0114677535','3850/315.072','MUHAMMAD RAGIL ZANUAR','X','LAB 4','3','61007','42500*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','1');
INSERT INTO `siswa` VALUES ('239','X LPKKK','LPKKK','3116557039','3851/316.072','NADHIFFA ASHIILA DARWANTO','X','LAB 4','3','27231','52655*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','2');
INSERT INTO `siswa` VALUES ('240','X LPKKK','LPKKK','0105676578','3852/317.072','NAILA AMALIA MA RUFAH','X','LAB 4','3','91029','25850*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','3');
INSERT INTO `siswa` VALUES ('241','X LPKKK','LPKKK','0107115769','3853/318.072','NOVALISA JESLIN','X','LAB 4','3','29351','15104*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','4');
INSERT INTO `siswa` VALUES ('242','X LPKKK','LPKKK','3102466104','3854/319.072','NOVITA SHOLIKATUN NISA','X','LAB 4','3','66618','88042*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','5');
INSERT INTO `siswa` VALUES ('243','X LPKKK','LPKKK','0114009170','3855/320.072','NUR JANETA ANGGRAENY','X','LAB 4','3','11669','91249*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','6');
INSERT INTO `siswa` VALUES ('244','X LPKKK','LPKKK','0105957396','3856/321.072','NURISSALMA ASSYIFA PUTRI','X','LAB 4','3','16858','56876*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','7');
INSERT INTO `siswa` VALUES ('245','X LPKKK','LPKKK','0113950491','3857/322.072','ONA MOTE','X','LAB 4','3','22467','62967*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','8');
INSERT INTO `siswa` VALUES ('246','X LPKKK','LPKKK','0105032328','3858/323.072','RAHMA DINA FEBRIYANTI','X','LAB 4','3','83355','24117*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','9');
INSERT INTO `siswa` VALUES ('247','X LPKKK','LPKKK','0107668742','3859/324.072','RAIHANAH BALGIS','X','LAB 4','3','27161','60270*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','10');
INSERT INTO `siswa` VALUES ('248','X LPKKK','LPKKK','3117269680','3860/325.072','REFTIANA ABEL NUR AULIA','X','LAB 4','3','48069','89467*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','11');
INSERT INTO `siswa` VALUES ('249','X LPKKK','LPKKK','0107473862','3861/326.072','ROCHMAT AKBAR','X','LAB 4','3','56095','88797*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','12');
INSERT INTO `siswa` VALUES ('250','X LPKKK','LPKKK','0124259856','3862/327.072','SASA ALENA','X','LAB 4','3','55607','65592*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','13');
INSERT INTO `siswa` VALUES ('251','X LPKKK','LPKKK','0101031925','3863/328.072','SHABRINA CITRA SUKAT TIANTO','X','LAB 4','3','56527','46343*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','14');
INSERT INTO `siswa` VALUES ('252','X LPKKK','LPKKK','0105424977','3864/329.072','SHINTIYA IFA AMALLIYA PUTRI','X','LAB 4','3','31553','59503*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','15');
INSERT INTO `siswa` VALUES ('253','X LPKKK','LPKKK','0109878551','3865/330.072','SHYRKA DANELLA AYU PUTRI CAHYONO','X','LAB 4','3','71938','83325*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','16');
INSERT INTO `siswa` VALUES ('254','X LPKKK','LPKKK','0103600596','3866/331.072','SITI MAULIDDINIYAH','X','LAB 4','3','31234','51531*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','17');
INSERT INTO `siswa` VALUES ('255','X LPKKK','LPKKK','0114988493','3867/332.072','YOEL SOTERIOS SANJAYA','X','LAB 4','3','88775','81368*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','18');
INSERT INTO `siswa` VALUES ('256','X BD','BD','0116425394','3725/529.096','ALFIAN PEBRIANSYAH','X','LAB 1','4','11744','20494*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','1');
INSERT INTO `siswa` VALUES ('257','X BD','BD','0103526768','3726/530.096','ANGGUN DITA AMELIA','X','LAB 1','4','52086','88537*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','2');
INSERT INTO `siswa` VALUES ('258','X BD','BD','0106330407','3727/531.096','ANISA APRILINA PUTRI MAGHFIROH','X','LAB 1','4','60510','46242*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','3');
INSERT INTO `siswa` VALUES ('259','X BD','BD','0119457443','3728/532.096','ANISA MARTA DWI ASTARI','X','LAB 1','4','68295','85791*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','4');
INSERT INTO `siswa` VALUES ('260','X BD','BD','0113220368','3729/533.096','AULIA NURFADILAH','X','LAB 1','4','24134','38767*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','5');
INSERT INTO `siswa` VALUES ('261','X BD','BD','0108062988','3730/534.096','BETRISIA RENA REDINATA','X','LAB 1','4','36118','60072*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','6');
INSERT INTO `siswa` VALUES ('262','X BD','BD','0109546690','3731/535.096','DANANG SWANDONO FITRANTO','X','LAB 1','4','76021','54429*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','7');
INSERT INTO `siswa` VALUES ('263','X BD','BD','0113198190','3732/536.096','EKA AMBAR WATI','X','LAB 1','4','99771','82734*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','8');
INSERT INTO `siswa` VALUES ('264','X BD','BD','0106482468','3733/537.096','FIRA NUR AISYAH','X','LAB 1','4','51410','14635*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','9');
INSERT INTO `siswa` VALUES ('265','X BD','BD','0107252333','3734/538.096','FITRI HANDAYANI','X','LAB 1','4','81163','47155*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','10');
INSERT INTO `siswa` VALUES ('266','X BD','BD','0102764713','3735/539.096','FITRI RAVA NAURA AYU','X','LAB 1','4','89868','24209*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','11');
INSERT INTO `siswa` VALUES ('267','X BD','BD','0104007826','3736/540.096','GISHELLA ANINDITA PUTRI ERRA WATI','X','LAB 1','4','75816','43196*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','12');
INSERT INTO `siswa` VALUES ('268','X BD','BD','3105385433','3737/541.096','HASAN NURUNNUHA','X','LAB 1','4','22408','97812*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','13');
INSERT INTO `siswa` VALUES ('269','X BD','BD','0103269382','3738/542.096','ILHAM JAMALI','X','LAB 1','4','70788','89984*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','14');
INSERT INTO `siswa` VALUES ('270','X BD','BD','3127098176','3739/543.096','INNEKE ZULFA AURELLA','X','LAB 1','4','50973','63537*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','15');
INSERT INTO `siswa` VALUES ('271','X BD','BD','0112413742','3740/544.096','LUMIATI','X','LAB 1','4','83752','76551*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','16');
INSERT INTO `siswa` VALUES ('272','X BD','BD','0104455118','3741/545.096','MEILSA NASWA ANGGELITA','X','LAB 1','4','81618','47069*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','17');
INSERT INTO `siswa` VALUES ('273','X BD','BD','3111929743','3742/546.096','MILLA PUTRI ANDINI','X','LAB 1','4','42309','13163*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','18');
INSERT INTO `siswa` VALUES ('274','X BD','BD','0102435245','3743/547.096','MITA MUSTIKA APRILLA','X','LAB 1','4','78127','81219*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','19');
INSERT INTO `siswa` VALUES ('275','X BD','BD','3096146553','3744/548.096','MOHAMAD HERIYANTO','X','LAB 1','4','29590','99343*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','20');
INSERT INTO `siswa` VALUES ('276','X BD','BD','3116221201','3745/549.096','NIYA ARDIYANTI','X','LAB 1','4','67462','95747*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','21');
INSERT INTO `siswa` VALUES ('277','X BD','BD','3102176119','3746/550.096','NUR ZAHIRAH','X','LAB 1','4','45547','42881*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','22');
INSERT INTO `siswa` VALUES ('278','X BD','BD','3098154380','3747/551.096','NURI AFINA PUTRI LAKSONO','X','LAB 1','4','57419','34497*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','23');
INSERT INTO `siswa` VALUES ('279','X BD','BD','0108102022','3748/552.096','PADUKA YANG MULIA','X','LAB 1','4','19499','87025*','1','SERVER01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','24');
INSERT INTO `siswa` VALUES ('280','X BD','BD','3113770555','3749/553.096','RAFA ZAINUL KHILMI','X','LAB 2','4','71956','23000*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','1');
INSERT INTO `siswa` VALUES ('281','X BD','BD','0113463890','3750/554.096','RAHMAD SODIQ','X','LAB 2','4','92048','55317*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','2');
INSERT INTO `siswa` VALUES ('282','X BD','BD','0106690076','3751/555.096','REZA HEPRISDARIUS','X','LAB 2','4','81451','38771*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','3');
INSERT INTO `siswa` VALUES ('283','X BD','BD','0108420113','3752/556.096','SAFIKA NUR AVITZAH','X','LAB 2','4','27708','89507*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','4');
INSERT INTO `siswa` VALUES ('284','X BD','BD','0108336226','3753/557.096','SILVIA AMBAR SARI','X','LAB 2','4','60758','16370*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','5');
INSERT INTO `siswa` VALUES ('285','X BD','BD','0101177732','3754/558.096','SUCI RAHMAWATI','X','LAB 2','4','13998','85684*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','6');
INSERT INTO `siswa` VALUES ('286','X BD','BD','0105746118','3755/559.096','TALITA DESI ADZARIA','X','LAB 2','4','32314','33921*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','7');
INSERT INTO `siswa` VALUES ('287','X BD','BD','0118349015','3756/560.096','TANIA IDATUSH SHOLIHAH  ','X','LAB 2','4','54824','63413*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','8');
INSERT INTO `siswa` VALUES ('288','X BD','BD','3102620702','3757/561.096','TASYA AENI IZATI','X','LAB 2','4','19752','79911*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','9');
INSERT INTO `siswa` VALUES ('289','X BD','BD','0119752250','3758/562.096','TRI ARINDI','X','LAB 2','4','38053','24133*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','10');
INSERT INTO `siswa` VALUES ('290','X BD','BD','0107618124','3759/563.096','VITTO DANUARTA ISKANDAR','X','LAB 2','4','40372','92168*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','11');
INSERT INTO `siswa` VALUES ('291','X BD','BD','0109840042','3760/564.096','ZAHRA AMELYA','X','LAB 2','4','44552','69939*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','12');
INSERT INTO `siswa` VALUES ('292','X AK','AK','0108295549','3689/932.102','ADITYA HARITS NUGRAHA','X','LAB 2','4','29102','62707*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','13');
INSERT INTO `siswa` VALUES ('293','X AK','AK','3107782776','3690/933.102','ALDA DWI OKTA YOSINDA','X','LAB 2','4','96313','55770*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','14');
INSERT INTO `siswa` VALUES ('294','X AK','AK','0103813676','3691/934.102','ASMA UL HUSNAH','X','LAB 2','4','12038','80130*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','15');
INSERT INTO `siswa` VALUES ('295','X AK','AK','0109856873','3692/935.102','AURA DWI SEFTIANI','X','LAB 2','4','35661','56156*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','16');
INSERT INTO `siswa` VALUES ('296','X AK','AK','0104894273','3693/936.102','CIKA PUSPITA MELINDA','X','LAB 2','4','79292','80731*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','17');
INSERT INTO `siswa` VALUES ('297','X AK','AK','3105642798','3694/937.102','DEA ANGGEL NATALIA','X','LAB 2','4','37263','10604*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','18');
INSERT INTO `siswa` VALUES ('298','X AK','AK','0082953678','3695/938.102','DENIAS KALABETME','X','LAB 2','4','60985','98114*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','19');
INSERT INTO `siswa` VALUES ('299','X AK','AK','0109726891','3696/939.102','DINA ABIDATUR RAHMAH','X','LAB 2','4','51618','26621*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','20');
INSERT INTO `siswa` VALUES ('300','X AK','AK','0119903231','3697/940.102','DWI NIRMALA PUTRI','X','LAB 2','4','88283','38112*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','21');
INSERT INTO `siswa` VALUES ('301','X AK','AK','0104796961','3698/941.102','DYTA BERLIANA ISTANTI','X','LAB 2','4','88216','27748*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','22');
INSERT INTO `siswa` VALUES ('302','X AK','AK','0105185053','3699/942.102','DYTA SEPTIANA','X','LAB 2','4','75219','64679*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','23');
INSERT INTO `siswa` VALUES ('303','X AK','AK','0105201122','3700/943.102','FITRI AMELIA','X','LAB 2','4','17005','56821*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','24');
INSERT INTO `siswa` VALUES ('304','X AK','AK','0116301971','3701/944.102','HANIFAH','X','LAB 2','4','96485','16108*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','25');
INSERT INTO `siswa` VALUES ('305','X AK','AK','0109992725','3702/945.102','JAUHAROTUN NAFI\'AH','X','LAB 2','4','89231','42528*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','26');
INSERT INTO `siswa` VALUES ('306','X AK','AK','0106523850','3703/946.102','LAILATUL FADHILA OKTAVIA','X','LAB 2','4','54808','31053*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','27');
INSERT INTO `siswa` VALUES ('307','X AK','AK','0114853303','3704/947.102','MANDA MAYSAROH','X','LAB 2','4','46978','44649*','1','SERVER02',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','28');
INSERT INTO `siswa` VALUES ('308','X AK','AK','0103331814','3705/948.102','MAULIDA GIKA NUR AZIZAH','X','LAB 4','4','90083','19775*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','1');
INSERT INTO `siswa` VALUES ('309','X AK','AK','0104275709','3706/949.102','MELFY NUR FATAYATUS SHOLIKHAH','X','LAB 4','4','48030','55822*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','2');
INSERT INTO `siswa` VALUES ('310','X AK','AK','0108811879','3707/950.102','MEYLANY PUTRI YULIANINGSIH','X','LAB 4','4','52335','53726*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','3');
INSERT INTO `siswa` VALUES ('311','X AK','AK','0104723732','3708/951.102','NAJWA ABIDA CHOIRIN','X','LAB 4','4','64767','95976*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','4');
INSERT INTO `siswa` VALUES ('312','X AK','AK','0109178310','3709/952.102','NATALIS DUWITAU','X','LAB 4','4','57063','17564*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','5');
INSERT INTO `siswa` VALUES ('313','X AK','AK','0106785436','3710/953.102','NAUVAL AHMAD UMAR AL FARUKH','X','LAB 4','4','16650','27201*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','6');
INSERT INTO `siswa` VALUES ('314','X AK','AK','0106661996','3711/954.102','NIDA\'UL HASANAH','X','LAB 4','4','75180','54513*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','7');
INSERT INTO `siswa` VALUES ('315','X AK','AK','0113813583','3712/955.102','NIRFA IZROTUL MARWAH','X','LAB 4','4','23627','28996*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','8');
INSERT INTO `siswa` VALUES ('316','X AK','AK','0102019689','3713/956.102','NURIN NUHA RAHMATIKA','X','LAB 4','4','82789','35948*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','9');
INSERT INTO `siswa` VALUES ('317','X AK','AK','0098985314','3714/957.102','PRISSCA LYONEL CINTA LAURA','X','LAB 4','4','89546','88387*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','10');
INSERT INTO `siswa` VALUES ('318','X AK','AK','0102707999','3715/958.102','PUTRI DESY NOVITA SARI','X','LAB 4','4','20366','59856*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','11');
INSERT INTO `siswa` VALUES ('319','X AK','AK','0115257962','3716/959.102','PUTRI INDAH LESTARI','X','LAB 4','4','51506','89546*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','12');
INSERT INTO `siswa` VALUES ('320','X AK','AK','3086312603','3717/960.102','PUTRI NADZIFA NUR IZZATY','X','LAB 4','4','21017','67843*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','13');
INSERT INTO `siswa` VALUES ('321','X AK','AK','0105245816','3718/961.102','SAFA RIHADATUS SOLIHAH','X','LAB 4','4','37632','53718*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','14');
INSERT INTO `siswa` VALUES ('322','X AK','AK','3111073628','3719/962.102','SAFANIA HAFID PUTRI','X','LAB 4','4','70078','30064*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','15');
INSERT INTO `siswa` VALUES ('323','X AK','AK','0113608126','3720/963.102','SELA ANASA PUTRI','X','LAB 4','4','35833','86511*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','16');
INSERT INTO `siswa` VALUES ('324','X AK','AK','0109367887','3721/964.102','SILVI MUFATTAKHUL INAYAH','X','LAB 4','4','28815','85267*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','17');
INSERT INTO `siswa` VALUES ('325','X AK','AK','0109962470','3722/965.102','SISIL GERENZA WILLI NOVELLIYA','X','LAB 4','4','84889','72338*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','18');
INSERT INTO `siswa` VALUES ('326','X AK','AK','0113455697','3723/966.102','VELISA ADE VINA','X','LAB 4','4','25038','14903*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','19');
INSERT INTO `siswa` VALUES ('327','X AK','AK','3108373419','3724/967.102','YHOLA PUSPITA SARI','X','LAB 4','4','31484','67693*','1','SERVER04',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','20');

/*---------------------------------------------------------------
  TABLE: `soal`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `soal`;
CREATE TABLE `soal` (
  `id_soal` int NOT NULL AUTO_INCREMENT,
  `id_mapel` int NOT NULL,
  `nomor` int DEFAULT NULL,
  `soal` longtext,
  `jenis` int DEFAULT NULL,
  `pilA` longtext,
  `pilB` longtext,
  `pilC` longtext,
  `pilD` longtext,
  `pilE` longtext,
  `jawaban` varchar(1) DEFAULT NULL,
  `file` mediumtext,
  `file1` mediumtext,
  `fileA` mediumtext,
  `fileB` mediumtext,
  `fileC` mediumtext,
  `fileD` mediumtext,
  `fileE` mediumtext,
  PRIMARY KEY (`id_soal`)
) ENGINE=InnoDB AUTO_INCREMENT=413 DEFAULT CHARSET=utf8mb3;
INSERT INTO `soal` VALUES   ('328','3','1',' Bagaimana cara mendeklarasikan variabel di PHP?','1',' var $nama = &quot;Laila&quot;;',' $nama = &quot;Dinda&quot;;',' variable $nama = &quot;Eva&quot;;',' declare $nama = &quot;Friza&quot;;',' name $nama = &quot;Putra&quot;;','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('329','3','2',' Variabel di PHP diawali dengan tanda&hellip;','1',' @',' $',' #',' %',' &amp;amp;','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('330','3','3',' Mana yang benar mengenai variabel dalam PHP?','1',' Variabel harus dideklarasikan dengan tipe data',' Nama variabel tidak boleh diawali dengan angka',' PHP tidak membedakan antara huruf besar dan kecil dalam penulisan nama variabel',' Semua pernyataan di atas benar',' PHP hanya mendukung variabel dalam format camelCase','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('331','3','4',' Apa output dari kode PHP berikut? <br><img src=\"../../files/17910819784.png\">','1',' 510',' 15',' 5',' 10',' Error','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('332','3','5',' Variabel di PHP bersifat&hellip;','1',' Static',' Dynamic',' Global',' Private',' Protected','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('333','3','6',' Apa yang akan ditampilkan oleh kode PHP berikut? <br><img src=\"../../files/17910819783.png\">','1',' True',' False',' Error',' Nothing',' Undefined','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('334','3','7',' Apa hasil dari kode PHP berikut? <br><img src=\"../../files/17910819782.png\">','1',' Greater',' Equal',' Lesser',' Error',' Undefined','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('335','3','8',' Pada PHP, struktur kondisi yang digunakan untuk memilih antara beberapa kondisi adalah&hellip;','1',' if',' else',' switch',' loop',' match','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('336','3','9',' Kode berikut ini akan menghasilkan output apa? <br><img src=\"../../files/17910819781.png\">','1',' Ten or more',' Less than ten',' Error',' Undefined',' Nothing','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('337','3','10',' Apa yang akan terjadi jika tidak ada else dalam struktur if di PHP?','1',' Program akan error',' PHP tidak akan menjalankan kondisi apa pun',' Program akan melanjutkan ke kode setelah if jika kondisi tidak terpenuhi',' PHP akan menjalankan kondisi jika salah',' Tidak ada pengaruh','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('338','3','11',' Tag HTML untuk membuat paragraf adalah&hellip;','1',' < h1 >',' < p >',' < section >',' < div >',' < article >','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('339','3','12',' Apa yang dimaksud dengan tag < a > dalam HTML?','1',' Tag untuk membuat gambar',' Tag untuk membuat link',' Tag untuk membuat form',' Tag untuk membuat tabel',' Tag untuk menampilkan teks','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('340','3','13',' Untuk menambahkan gambar dalam HTML, tag yang digunakan adalah&hellip;','1',' < img >',' < image >',' < src >',' < pic >',' < image-source >','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('341','3','14',' Struktur dasar sebuah dokumen HTML adalah&hellip;','1',' < html > < body > < head > < /html >',' < header > < htm l> < body > < /header >',' < html > < head > < body > < /html >',' < head > < body > < html > < /head >',' < html > < body > < /html >','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('342','3','15',' Tag HTML mana yang digunakan untuk membuat sebuah list terurut (numbered list)?','1',' < ul >',' < ol >',' < li >',' < dl >',' < list >','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('343','3','16',' Tipe data yang digunakan untuk menyimpan nilai angka desimal di PHP adalah&hellip;','1',' int',' bool',' float',' string',' double','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('344','3','17',' Apa tipe data yang digunakan untuk menyimpan nilai benar atau salah dalam PHP?','1',' bool',' int',' float',' string',' array','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('345','3','18',' Berikut adalah contoh tipe data yang benar di PHP, kecuali&hellip;','1',' $age = 25; // integer',' $name = &quot;Ragil&quot;; // string',' $isStudent = true; // boolean',' $grades = [90, 85, 80]; // array',' $num = &quot;25.5&quot;; // float','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('346','3','19',' Fungsi gettype() di PHP digunakan untuk&hellip;','1',' Mengambil nilai dari variabel',' Mengetahui tipe data dari sebuah variabel',' Menghitung panjang string',' Mengonversi tipe data',' Menghapus variabel','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('347','3','20',' Tipe data array di PHP digunakan untuk&hellip;','1',' Menyimpan satu nilai dalam satu variabel',' Menyimpan beberapa nilai dalam satu variabel',' Menyimpan tipe data objek',' Menyimpan nilai numerik saja',' Menyimpan tipe data boolean','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('348','3','21',' Perintah artisan untuk membuat controller di Laravel adalah&hellip;','1',' php artisan make:controller',' php artisan create:controller',' php artisan new:controller',' php artisan controller:create',' php artisan make:route','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('349','3','22',' Perintah artisan untuk menjalankan aplikasi Laravel dalam mode pengembangan adalah&hellip;','1',' php artisan serve',' php artisan start',' php artisan run',' php artisan go',' php artisan start:app','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('350','3','23',' Perintah artisan yang digunakan untuk membuat model di Laravel adalah&hellip;','1',' php artisan make:model',' php artisan new:model',' php artisan generate:model',' php artisan create:model',' php artisan model:create','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('351','3','24',' Perintah artisan untuk migrasi database di Laravel adalah&hellip;','1',' php artisan migrate',' php artisan database:migrate',' php artisan db:migrate',' php artisan migrate:run',' php artisan database:run','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('352','3','25',' Perintah artisan untuk menghapus cache aplikasi adalah&hellip;','1',' php artisan cache:clear',' php artisan clear:cache',' php artisan remove:cache',' php artisan cache:delete',' php artisan remove:cache','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('353','3','26',' Dalam Laravel, file konfigurasi utama untuk pengaturan database terletak di dalam folder&hellip;','1',' config/',' app/',' database/',' routes/',' resources/','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('354','3','27',' Bagaimana cara membuat route di Laravel?','1',' Mengedit file routes/web.php',' Mengedit file routes/api.php',' Mengedit file app/Routes.php',' Mengedit file config/routes.php',' Mengedit file app.php','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('355','3','28',' Apa yang dimaksud dengan middleware di Laravel?','1',' Sebuah kelas yang menangani request dan response',' Sebuah file untuk menyimpan data',' Sebuah fungsi untuk menghubungkan database',' Sebuah alat untuk mengoptimalkan performa aplikasi',' Sebuah cara untuk memvalidasi input','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('356','3','29',' Pada Laravel, file view biasanya disimpan di dalam folder&hellip;','1',' resources/views',' app/views',' config/views',' public/views',' views/resources','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('357','3','30',' Untuk menambahkan autentikasi pengguna di Laravel, Anda bisa menggunakan perintah artisan berikut:','1',' php artisan make:auth',' php artisan auth:create',' php artisan generate:auth',' php artisan auth:generate',' php artisan auth:setup','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('358','3','31',' Apa yang akan ditampilkan oleh kode PHP berikut? <br><img src=\"../../files/17910819785.png\">','1',' True',' False',' Error',' Undefined',' &quot;TrueFalse&quot;','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('359','3','32',' Apa yang dimaksud dengan &quot;superglobals&quot; dalam PHP?','1',' Variabel yang dapat diakses hanya dalam fungsi',' Variabel yang dapat diakses di seluruh script PHP',' Variabel yang hanya bisa diakses di dalam kelas',' Variabel yang hanya bisa diakses di dalam template HTML',' Variabel yang digunakan untuk mengenkripsi data','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('360','3','33',' Manakah dari berikut ini yang benar mengenai method HTTP di Laravel?','1',' GET digunakan untuk mengirim data ke server',' POST digunakan untuk mengambil data dari server',' PUT digunakan untuk memperbarui data yang ada di server',' PATCH digunakan untuk menghapus data dari server',' DELETE digunakan untuk menambah data baru di server','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('361','3','34',' Apa yang dimaksud dengan session dalam PHP?','1',' Tempat untuk menyimpan data sementara yang hanya berlaku dalam satu request',' Tempat untuk menyimpan data permanen dalam file sistem',' Tempat untuk menyimpan data antara halaman-halaman selama sesi pengguna aktif',' Tempat untuk menyimpan data pada server dan memprosesnya setelah request',' Tempat untuk menyimpan data dalam cookies','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('362','3','35',' Dalam Laravel, apa fungsi dari php artisan route:list?','1',' Menampilkan semua perintah artisan yang tersedia',' Menampilkan daftar semua rute yang terdaftar dalam aplikasi',' Menghapus semua rute yang terdaftar',' Menampilkan daftar controller yang digunakan oleh aplikasi',' Menampilkan status koneksi database','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('363','3','1',' Jelaskan bagaimana cara mendeklarasikan dan menggunakan variabel dalam PHP. Berikan contoh penerapan variabel dalam sebuah program PHP sederhana.','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('364','3','2',' Dalam PHP, bagaimana cara menggunakan struktur if-else untuk memeriksa apakah sebuah variabel lebih besar dari angka tertentu? Berikan contoh kode dan penjelasan.','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('365','3','3',' Jelaskan tujuan penggunaan tipe data dalam PHP dan berikan contoh masing-masing tipe data dasar yang tersedia dalam PHP.','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('366','3','4',' Bagaimana cara menggunakan perintah artisan untuk membuat sebuah controller di Laravel dan bagaimana controller tersebut dapat dihubungkan dengan route?','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('367','3','5',' Jelaskan bagaimana cara menambahkan middleware di Laravel untuk memverifikasi autentikasi pengguna. Berikan contoh implementasinya dalam sebuah aplikasi Laravel sederhana.','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);

/*---------------------------------------------------------------
  TABLE: `token`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id_token` int NOT NULL AUTO_INCREMENT,
  `token` varchar(6) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `masa_berlaku` time NOT NULL,
  PRIMARY KEY (`id_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `token` VALUES   ('1','VGGPDF','2020-04-04 23:29:17','00:15:00');

/*---------------------------------------------------------------
  TABLE: `tugas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `tugas`;
CREATE TABLE `tugas` (
  `id_tugas` int NOT NULL AUTO_INCREMENT,
  `id_guru` int NOT NULL DEFAULT '0',
  `kelas` text NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `tugas` longtext NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id_tugas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*---------------------------------------------------------------
  TABLE: `ujian`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `ujian`;
CREATE TABLE `ujian` (
  `id_ujian` int NOT NULL AUTO_INCREMENT,
  `kode_nama` varchar(255) DEFAULT '0',
  `id_pk` varchar(255) NOT NULL,
  `id_guru` int NOT NULL,
  `id_mapel` int NOT NULL,
  `kode_ujian` varchar(30) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jml_soal` int NOT NULL,
  `jml_esai` int NOT NULL,
  `bobot_pg` int NOT NULL,
  `opsi` int NOT NULL,
  `bobot_esai` int NOT NULL,
  `tampil_pg` int NOT NULL,
  `tampil_esai` int NOT NULL,
  `lama_ujian` int NOT NULL,
  `tgl_ujian` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `waktu_ujian` time DEFAULT NULL,
  `selesai_ujian` time DEFAULT NULL,
  `level` varchar(5) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `sesi` varchar(1) DEFAULT NULL,
  `acak` int NOT NULL,
  `token` int NOT NULL,
  `status` int DEFAULT NULL,
  `hasil` int DEFAULT NULL,
  `kkm` varchar(128) DEFAULT NULL,
  `ulang` int DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  `reset` int DEFAULT NULL,
  `waktuselesai` int NOT NULL,
  PRIMARY KEY (`id_ujian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
