
/*---------------------------------------------------------------
  SQL DB BACKUP 11.10.2025 13:32 
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
) ENGINE=InnoDB AUTO_INCREMENT=1747 DEFAULT CHARSET=utf8;
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
INSERT INTO `file_pendukung` VALUES ('15','15','17601524431.png',NULL);
INSERT INTO `file_pendukung` VALUES ('16','15','17601524432.png',NULL);
INSERT INTO `file_pendukung` VALUES ('17','15','17601524433.png',NULL);
INSERT INTO `file_pendukung` VALUES ('18','15','17601524434.png',NULL);
INSERT INTO `file_pendukung` VALUES ('19','15','17601524435.png',NULL);
INSERT INTO `file_pendukung` VALUES ('20','15','17601524436.png',NULL);
INSERT INTO `file_pendukung` VALUES ('21','15','17601524437.png',NULL);
INSERT INTO `file_pendukung` VALUES ('22','15','17601524438.png',NULL);
INSERT INTO `file_pendukung` VALUES ('23','15','17601524439.png',NULL);
INSERT INTO `file_pendukung` VALUES ('24','15','176015244310.png',NULL);
INSERT INTO `file_pendukung` VALUES ('25','15','176015244311.png',NULL);
INSERT INTO `file_pendukung` VALUES ('26','15','176015244312.png',NULL);
INSERT INTO `file_pendukung` VALUES ('27','15','176015244313.png',NULL);
INSERT INTO `file_pendukung` VALUES ('28','15','176015244314.png',NULL);
INSERT INTO `file_pendukung` VALUES ('29','15','176015244315.png',NULL);
INSERT INTO `file_pendukung` VALUES ('30','15','176015244316.png',NULL);
INSERT INTO `file_pendukung` VALUES ('31','15','176015244317.png',NULL);
INSERT INTO `file_pendukung` VALUES ('32','15','176015244318.png',NULL);
INSERT INTO `file_pendukung` VALUES ('33','15','176015244319.png',NULL);
INSERT INTO `file_pendukung` VALUES ('34','15','176015244320.png',NULL);
INSERT INTO `file_pendukung` VALUES ('35','15','176015244321.png',NULL);
INSERT INTO `file_pendukung` VALUES ('36','15','176015244322.png',NULL);
INSERT INTO `file_pendukung` VALUES ('37','15','176015244323.png',NULL);
INSERT INTO `file_pendukung` VALUES ('38','15','176015244324.png',NULL);
INSERT INTO `file_pendukung` VALUES ('39','15','176015244325.png',NULL);
INSERT INTO `file_pendukung` VALUES ('40','15','176015244326.png',NULL);
INSERT INTO `file_pendukung` VALUES ('41','15','176015244327.png',NULL);
INSERT INTO `file_pendukung` VALUES ('42','15','176015244328.png',NULL);
INSERT INTO `file_pendukung` VALUES ('43','15','176015244329.png',NULL);
INSERT INTO `file_pendukung` VALUES ('44','15','176015244330.png',NULL);
INSERT INTO `file_pendukung` VALUES ('45','15','176015244331.png',NULL);
INSERT INTO `file_pendukung` VALUES ('46','15','176015244332.png',NULL);
INSERT INTO `file_pendukung` VALUES ('47','14','17601524781.png',NULL);
INSERT INTO `file_pendukung` VALUES ('48','14','17601525191.png',NULL);
INSERT INTO `file_pendukung` VALUES ('49','18','17601550821.png',NULL);
INSERT INTO `file_pendukung` VALUES ('50','18','17601550822.png',NULL);
INSERT INTO `file_pendukung` VALUES ('51','17','17601552241.png',NULL);
INSERT INTO `file_pendukung` VALUES ('52','17','17601552242.png',NULL);
INSERT INTO `file_pendukung` VALUES ('53','17','17601552243.png',NULL);
INSERT INTO `file_pendukung` VALUES ('54','17','17601552244.png',NULL);
INSERT INTO `file_pendukung` VALUES ('55','17','17601552245.png',NULL);
INSERT INTO `file_pendukung` VALUES ('56','17','17601552246.png',NULL);
INSERT INTO `file_pendukung` VALUES ('57','17','17601552247.png',NULL);
INSERT INTO `file_pendukung` VALUES ('58','17','17601552248.png',NULL);
INSERT INTO `file_pendukung` VALUES ('59','17','17601552249.png',NULL);
INSERT INTO `file_pendukung` VALUES ('60','17','176015522410.png',NULL);
INSERT INTO `file_pendukung` VALUES ('61','17','176015522411.png',NULL);
INSERT INTO `file_pendukung` VALUES ('62','17','176015522412.png',NULL);
INSERT INTO `file_pendukung` VALUES ('63','17','176015522413.png',NULL);
INSERT INTO `file_pendukung` VALUES ('64','17','176015522414.png',NULL);
INSERT INTO `file_pendukung` VALUES ('65','17','176015522415.png',NULL);
INSERT INTO `file_pendukung` VALUES ('66','17','176015522416.png',NULL);
INSERT INTO `file_pendukung` VALUES ('67','17','176015522417.png',NULL);
INSERT INTO `file_pendukung` VALUES ('68','17','176015522418.png',NULL);
INSERT INTO `file_pendukung` VALUES ('69','17','176015522419.png',NULL);
INSERT INTO `file_pendukung` VALUES ('70','17','176015522420.png',NULL);
INSERT INTO `file_pendukung` VALUES ('71','17','176015522421.png',NULL);
INSERT INTO `file_pendukung` VALUES ('72','17','176015522422.png',NULL);
INSERT INTO `file_pendukung` VALUES ('73','17','176015522423.png',NULL);
INSERT INTO `file_pendukung` VALUES ('74','17','176015522424.png',NULL);
INSERT INTO `file_pendukung` VALUES ('75','17','176015522425.png',NULL);
INSERT INTO `file_pendukung` VALUES ('76','17','176015522426.png',NULL);
INSERT INTO `file_pendukung` VALUES ('77','17','176015522427.png',NULL);
INSERT INTO `file_pendukung` VALUES ('78','17','176015522428.png',NULL);
INSERT INTO `file_pendukung` VALUES ('79','17','176015522429.png',NULL);
INSERT INTO `file_pendukung` VALUES ('80','17','176015522430.png',NULL);
INSERT INTO `file_pendukung` VALUES ('81','17','176015522431.png',NULL);
INSERT INTO `file_pendukung` VALUES ('82','17','176015522432.png',NULL);
INSERT INTO `file_pendukung` VALUES ('83','17','176015522433.png',NULL);
INSERT INTO `file_pendukung` VALUES ('84','17','176015522434.png',NULL);
INSERT INTO `file_pendukung` VALUES ('85','17','176015522435.png',NULL);
INSERT INTO `file_pendukung` VALUES ('86','17','176015522436.png',NULL);
INSERT INTO `file_pendukung` VALUES ('87','17','176015522437.png',NULL);
INSERT INTO `file_pendukung` VALUES ('88','17','176015522438.png',NULL);
INSERT INTO `file_pendukung` VALUES ('89','17','176015522439.png',NULL);
INSERT INTO `file_pendukung` VALUES ('90','17','176015522440.png',NULL);
INSERT INTO `file_pendukung` VALUES ('91','17','176015522441.png',NULL);
INSERT INTO `file_pendukung` VALUES ('92','17','176015522442.png',NULL);
INSERT INTO `file_pendukung` VALUES ('93','17','176015522443.png',NULL);
INSERT INTO `file_pendukung` VALUES ('94','17','176015522444.png',NULL);
INSERT INTO `file_pendukung` VALUES ('95','17','176015522445.png',NULL);
INSERT INTO `file_pendukung` VALUES ('96','17','176015522446.png',NULL);
INSERT INTO `file_pendukung` VALUES ('97','17','176015522447.png',NULL);
INSERT INTO `file_pendukung` VALUES ('98','17','176015522448.png',NULL);
INSERT INTO `file_pendukung` VALUES ('99','17','176015522449.png',NULL);
INSERT INTO `file_pendukung` VALUES ('100','17','176015522450.png',NULL);
INSERT INTO `file_pendukung` VALUES ('101','17','176015522451.png',NULL);
INSERT INTO `file_pendukung` VALUES ('102','17','176015522452.png',NULL);
INSERT INTO `file_pendukung` VALUES ('103','17','176015522453.png',NULL);
INSERT INTO `file_pendukung` VALUES ('104','17','17601552521.png',NULL);
INSERT INTO `file_pendukung` VALUES ('105','17','17601552522.png',NULL);
INSERT INTO `file_pendukung` VALUES ('106','17','17601552523.png',NULL);
INSERT INTO `file_pendukung` VALUES ('107','17','17601552524.png',NULL);
INSERT INTO `file_pendukung` VALUES ('108','17','17601552525.png',NULL);
INSERT INTO `file_pendukung` VALUES ('109','17','17601552526.png',NULL);
INSERT INTO `file_pendukung` VALUES ('110','17','17601552527.png',NULL);
INSERT INTO `file_pendukung` VALUES ('111','17','17601552528.png',NULL);
INSERT INTO `file_pendukung` VALUES ('112','17','17601552529.png',NULL);
INSERT INTO `file_pendukung` VALUES ('113','17','176015525210.png',NULL);
INSERT INTO `file_pendukung` VALUES ('114','17','176015525211.png',NULL);
INSERT INTO `file_pendukung` VALUES ('115','17','176015525212.png',NULL);
INSERT INTO `file_pendukung` VALUES ('116','17','176015525213.png',NULL);
INSERT INTO `file_pendukung` VALUES ('117','17','176015525214.png',NULL);
INSERT INTO `file_pendukung` VALUES ('118','17','176015525215.png',NULL);
INSERT INTO `file_pendukung` VALUES ('119','17','176015525216.png',NULL);
INSERT INTO `file_pendukung` VALUES ('120','17','176015525217.png',NULL);
INSERT INTO `file_pendukung` VALUES ('121','17','176015525218.png',NULL);
INSERT INTO `file_pendukung` VALUES ('122','17','176015525219.png',NULL);
INSERT INTO `file_pendukung` VALUES ('123','17','176015525220.png',NULL);
INSERT INTO `file_pendukung` VALUES ('124','17','176015525221.png',NULL);
INSERT INTO `file_pendukung` VALUES ('125','17','176015525222.png',NULL);
INSERT INTO `file_pendukung` VALUES ('126','17','176015525223.png',NULL);
INSERT INTO `file_pendukung` VALUES ('127','17','176015525224.png',NULL);
INSERT INTO `file_pendukung` VALUES ('128','17','176015525225.png',NULL);
INSERT INTO `file_pendukung` VALUES ('129','17','176015525226.png',NULL);
INSERT INTO `file_pendukung` VALUES ('130','17','176015525227.png',NULL);
INSERT INTO `file_pendukung` VALUES ('131','17','176015525228.png',NULL);
INSERT INTO `file_pendukung` VALUES ('132','17','176015525229.png',NULL);
INSERT INTO `file_pendukung` VALUES ('133','17','176015525230.png',NULL);
INSERT INTO `file_pendukung` VALUES ('134','17','176015525231.png',NULL);
INSERT INTO `file_pendukung` VALUES ('135','17','176015525232.png',NULL);
INSERT INTO `file_pendukung` VALUES ('136','17','176015525233.png',NULL);
INSERT INTO `file_pendukung` VALUES ('137','17','176015525234.png',NULL);
INSERT INTO `file_pendukung` VALUES ('138','17','176015525235.png',NULL);
INSERT INTO `file_pendukung` VALUES ('139','17','176015525236.png',NULL);
INSERT INTO `file_pendukung` VALUES ('140','17','176015525237.png',NULL);
INSERT INTO `file_pendukung` VALUES ('141','17','176015525238.png',NULL);
INSERT INTO `file_pendukung` VALUES ('142','17','176015525239.png',NULL);
INSERT INTO `file_pendukung` VALUES ('143','17','176015525240.png',NULL);
INSERT INTO `file_pendukung` VALUES ('144','17','176015525241.png',NULL);
INSERT INTO `file_pendukung` VALUES ('145','17','176015525242.png',NULL);
INSERT INTO `file_pendukung` VALUES ('146','17','176015525243.png',NULL);
INSERT INTO `file_pendukung` VALUES ('147','17','176015525244.png',NULL);
INSERT INTO `file_pendukung` VALUES ('148','17','176015525245.png',NULL);
INSERT INTO `file_pendukung` VALUES ('149','17','176015525246.png',NULL);
INSERT INTO `file_pendukung` VALUES ('150','17','176015525247.png',NULL);
INSERT INTO `file_pendukung` VALUES ('151','17','176015525248.png',NULL);
INSERT INTO `file_pendukung` VALUES ('152','17','176015525249.png',NULL);
INSERT INTO `file_pendukung` VALUES ('153','17','176015525250.png',NULL);
INSERT INTO `file_pendukung` VALUES ('154','17','176015525251.png',NULL);
INSERT INTO `file_pendukung` VALUES ('155','17','176015525252.png',NULL);
INSERT INTO `file_pendukung` VALUES ('156','17','176015525253.png',NULL);
INSERT INTO `file_pendukung` VALUES ('157','17','17601553641.png',NULL);
INSERT INTO `file_pendukung` VALUES ('158','17','17601553642.png',NULL);
INSERT INTO `file_pendukung` VALUES ('159','17','17601553643.png',NULL);
INSERT INTO `file_pendukung` VALUES ('160','17','17601553644.png',NULL);
INSERT INTO `file_pendukung` VALUES ('161','17','17601553645.png',NULL);
INSERT INTO `file_pendukung` VALUES ('162','17','17601553646.png',NULL);
INSERT INTO `file_pendukung` VALUES ('163','17','17601553647.png',NULL);
INSERT INTO `file_pendukung` VALUES ('164','17','17601553648.png',NULL);
INSERT INTO `file_pendukung` VALUES ('165','17','17601553649.png',NULL);
INSERT INTO `file_pendukung` VALUES ('166','17','176015536410.png',NULL);
INSERT INTO `file_pendukung` VALUES ('167','17','176015536411.png',NULL);
INSERT INTO `file_pendukung` VALUES ('168','17','176015536412.png',NULL);
INSERT INTO `file_pendukung` VALUES ('169','17','176015536413.png',NULL);
INSERT INTO `file_pendukung` VALUES ('170','17','176015536414.png',NULL);
INSERT INTO `file_pendukung` VALUES ('171','17','176015536415.png',NULL);
INSERT INTO `file_pendukung` VALUES ('172','17','176015536416.png',NULL);
INSERT INTO `file_pendukung` VALUES ('173','17','176015536417.png',NULL);
INSERT INTO `file_pendukung` VALUES ('174','17','176015536418.png',NULL);
INSERT INTO `file_pendukung` VALUES ('175','17','176015536419.png',NULL);
INSERT INTO `file_pendukung` VALUES ('176','17','176015536420.png',NULL);
INSERT INTO `file_pendukung` VALUES ('177','17','176015536421.png',NULL);
INSERT INTO `file_pendukung` VALUES ('178','17','176015536422.png',NULL);
INSERT INTO `file_pendukung` VALUES ('179','17','176015536423.png',NULL);
INSERT INTO `file_pendukung` VALUES ('180','17','176015536424.png',NULL);
INSERT INTO `file_pendukung` VALUES ('181','17','176015536425.png',NULL);
INSERT INTO `file_pendukung` VALUES ('182','17','176015536426.png',NULL);
INSERT INTO `file_pendukung` VALUES ('183','17','176015536427.png',NULL);
INSERT INTO `file_pendukung` VALUES ('184','17','176015536428.png',NULL);
INSERT INTO `file_pendukung` VALUES ('185','17','176015536429.png',NULL);
INSERT INTO `file_pendukung` VALUES ('186','17','176015536430.png',NULL);
INSERT INTO `file_pendukung` VALUES ('187','17','176015536431.png',NULL);
INSERT INTO `file_pendukung` VALUES ('188','17','176015536432.png',NULL);
INSERT INTO `file_pendukung` VALUES ('189','17','176015536433.png',NULL);
INSERT INTO `file_pendukung` VALUES ('190','17','176015536434.png',NULL);
INSERT INTO `file_pendukung` VALUES ('191','17','176015536435.png',NULL);
INSERT INTO `file_pendukung` VALUES ('192','17','176015536436.png',NULL);
INSERT INTO `file_pendukung` VALUES ('193','17','176015536437.png',NULL);
INSERT INTO `file_pendukung` VALUES ('194','17','176015536438.png',NULL);
INSERT INTO `file_pendukung` VALUES ('195','17','176015536439.png',NULL);
INSERT INTO `file_pendukung` VALUES ('196','17','176015536440.png',NULL);
INSERT INTO `file_pendukung` VALUES ('197','17','176015536441.png',NULL);
INSERT INTO `file_pendukung` VALUES ('198','17','176015536442.png',NULL);
INSERT INTO `file_pendukung` VALUES ('199','17','176015536443.png',NULL);
INSERT INTO `file_pendukung` VALUES ('200','17','176015536444.png',NULL);
INSERT INTO `file_pendukung` VALUES ('201','17','176015536445.png',NULL);
INSERT INTO `file_pendukung` VALUES ('202','17','176015536446.png',NULL);
INSERT INTO `file_pendukung` VALUES ('203','17','176015536447.png',NULL);
INSERT INTO `file_pendukung` VALUES ('204','17','176015536448.png',NULL);
INSERT INTO `file_pendukung` VALUES ('205','17','176015536449.png',NULL);
INSERT INTO `file_pendukung` VALUES ('206','17','176015536450.png',NULL);
INSERT INTO `file_pendukung` VALUES ('207','17','176015536451.png',NULL);
INSERT INTO `file_pendukung` VALUES ('208','17','176015536452.png',NULL);
INSERT INTO `file_pendukung` VALUES ('209','17','176015536453.png',NULL);
INSERT INTO `file_pendukung` VALUES ('210','17','17601554831.png',NULL);
INSERT INTO `file_pendukung` VALUES ('211','17','17601554832.png',NULL);
INSERT INTO `file_pendukung` VALUES ('212','17','17601554833.png',NULL);
INSERT INTO `file_pendukung` VALUES ('213','17','17601554834.png',NULL);
INSERT INTO `file_pendukung` VALUES ('214','17','17601554835.png',NULL);
INSERT INTO `file_pendukung` VALUES ('215','17','17601554836.png',NULL);
INSERT INTO `file_pendukung` VALUES ('216','17','17601554837.png',NULL);
INSERT INTO `file_pendukung` VALUES ('217','17','17601554838.png',NULL);
INSERT INTO `file_pendukung` VALUES ('218','17','17601554839.png',NULL);
INSERT INTO `file_pendukung` VALUES ('219','17','176015548310.png',NULL);
INSERT INTO `file_pendukung` VALUES ('220','17','176015548311.png',NULL);
INSERT INTO `file_pendukung` VALUES ('221','17','176015548312.png',NULL);
INSERT INTO `file_pendukung` VALUES ('222','17','176015548313.png',NULL);
INSERT INTO `file_pendukung` VALUES ('223','17','176015548314.png',NULL);
INSERT INTO `file_pendukung` VALUES ('224','17','176015548315.png',NULL);
INSERT INTO `file_pendukung` VALUES ('225','17','176015548316.png',NULL);
INSERT INTO `file_pendukung` VALUES ('226','17','176015548317.png',NULL);
INSERT INTO `file_pendukung` VALUES ('227','17','176015548318.png',NULL);
INSERT INTO `file_pendukung` VALUES ('228','17','176015548319.png',NULL);
INSERT INTO `file_pendukung` VALUES ('229','17','176015548320.png',NULL);
INSERT INTO `file_pendukung` VALUES ('230','17','176015548321.png',NULL);
INSERT INTO `file_pendukung` VALUES ('231','17','176015548322.png',NULL);
INSERT INTO `file_pendukung` VALUES ('232','17','176015548323.png',NULL);
INSERT INTO `file_pendukung` VALUES ('233','17','176015548324.png',NULL);
INSERT INTO `file_pendukung` VALUES ('234','17','176015548325.png',NULL);
INSERT INTO `file_pendukung` VALUES ('235','17','176015548326.png',NULL);
INSERT INTO `file_pendukung` VALUES ('236','17','176015548327.png',NULL);
INSERT INTO `file_pendukung` VALUES ('237','17','176015548328.png',NULL);
INSERT INTO `file_pendukung` VALUES ('238','17','176015548329.png',NULL);
INSERT INTO `file_pendukung` VALUES ('239','17','176015548330.png',NULL);
INSERT INTO `file_pendukung` VALUES ('240','17','176015548331.png',NULL);
INSERT INTO `file_pendukung` VALUES ('241','17','176015548332.png',NULL);
INSERT INTO `file_pendukung` VALUES ('242','17','176015548333.png',NULL);
INSERT INTO `file_pendukung` VALUES ('243','17','176015548334.png',NULL);
INSERT INTO `file_pendukung` VALUES ('244','17','176015548335.png',NULL);
INSERT INTO `file_pendukung` VALUES ('245','17','176015548336.png',NULL);
INSERT INTO `file_pendukung` VALUES ('246','17','176015548337.png',NULL);
INSERT INTO `file_pendukung` VALUES ('247','17','176015548338.png',NULL);
INSERT INTO `file_pendukung` VALUES ('248','17','176015548339.png',NULL);
INSERT INTO `file_pendukung` VALUES ('249','17','176015548340.png',NULL);
INSERT INTO `file_pendukung` VALUES ('250','17','176015548341.png',NULL);
INSERT INTO `file_pendukung` VALUES ('251','17','176015548342.png',NULL);
INSERT INTO `file_pendukung` VALUES ('252','17','176015548343.png',NULL);
INSERT INTO `file_pendukung` VALUES ('253','17','176015548344.png',NULL);
INSERT INTO `file_pendukung` VALUES ('254','17','176015548345.png',NULL);
INSERT INTO `file_pendukung` VALUES ('255','17','176015548346.png',NULL);
INSERT INTO `file_pendukung` VALUES ('256','17','176015548347.png',NULL);
INSERT INTO `file_pendukung` VALUES ('257','17','176015548348.png',NULL);
INSERT INTO `file_pendukung` VALUES ('258','17','176015548349.png',NULL);
INSERT INTO `file_pendukung` VALUES ('259','17','176015548350.png',NULL);
INSERT INTO `file_pendukung` VALUES ('260','17','176015548351.png',NULL);
INSERT INTO `file_pendukung` VALUES ('261','17','176015548352.png',NULL);
INSERT INTO `file_pendukung` VALUES ('262','17','176015548353.png',NULL);
INSERT INTO `file_pendukung` VALUES ('263','17','17601556121.png',NULL);
INSERT INTO `file_pendukung` VALUES ('264','17','17601556122.png',NULL);
INSERT INTO `file_pendukung` VALUES ('265','17','17601556123.png',NULL);
INSERT INTO `file_pendukung` VALUES ('266','17','17601556124.png',NULL);
INSERT INTO `file_pendukung` VALUES ('267','17','17601556125.png',NULL);
INSERT INTO `file_pendukung` VALUES ('268','17','17601556126.png',NULL);
INSERT INTO `file_pendukung` VALUES ('269','17','17601556127.png',NULL);
INSERT INTO `file_pendukung` VALUES ('270','17','17601556128.png',NULL);
INSERT INTO `file_pendukung` VALUES ('271','17','17601556129.png',NULL);
INSERT INTO `file_pendukung` VALUES ('272','17','176015561210.png',NULL);
INSERT INTO `file_pendukung` VALUES ('273','17','176015561211.png',NULL);
INSERT INTO `file_pendukung` VALUES ('274','17','176015561212.png',NULL);
INSERT INTO `file_pendukung` VALUES ('275','17','176015561213.png',NULL);
INSERT INTO `file_pendukung` VALUES ('276','17','176015561214.png',NULL);
INSERT INTO `file_pendukung` VALUES ('277','17','176015561215.png',NULL);
INSERT INTO `file_pendukung` VALUES ('278','17','176015561216.png',NULL);
INSERT INTO `file_pendukung` VALUES ('279','17','176015561217.png',NULL);
INSERT INTO `file_pendukung` VALUES ('280','17','176015561218.png',NULL);
INSERT INTO `file_pendukung` VALUES ('281','17','176015561219.png',NULL);
INSERT INTO `file_pendukung` VALUES ('282','17','176015561220.png',NULL);
INSERT INTO `file_pendukung` VALUES ('283','17','176015561221.png',NULL);
INSERT INTO `file_pendukung` VALUES ('284','17','176015561222.png',NULL);
INSERT INTO `file_pendukung` VALUES ('285','17','176015561223.png',NULL);
INSERT INTO `file_pendukung` VALUES ('286','17','176015561224.png',NULL);
INSERT INTO `file_pendukung` VALUES ('287','17','176015561225.png',NULL);
INSERT INTO `file_pendukung` VALUES ('288','17','176015561226.png',NULL);
INSERT INTO `file_pendukung` VALUES ('289','17','176015561227.png',NULL);
INSERT INTO `file_pendukung` VALUES ('290','17','176015561228.png',NULL);
INSERT INTO `file_pendukung` VALUES ('291','17','176015561229.png',NULL);
INSERT INTO `file_pendukung` VALUES ('292','17','176015561230.png',NULL);
INSERT INTO `file_pendukung` VALUES ('293','17','176015561231.png',NULL);
INSERT INTO `file_pendukung` VALUES ('294','17','176015561232.png',NULL);
INSERT INTO `file_pendukung` VALUES ('295','17','176015561233.png',NULL);
INSERT INTO `file_pendukung` VALUES ('296','17','176015561234.png',NULL);
INSERT INTO `file_pendukung` VALUES ('297','17','176015561235.png',NULL);
INSERT INTO `file_pendukung` VALUES ('298','17','176015561236.png',NULL);
INSERT INTO `file_pendukung` VALUES ('299','17','176015561237.png',NULL);
INSERT INTO `file_pendukung` VALUES ('300','17','176015561238.png',NULL);
INSERT INTO `file_pendukung` VALUES ('301','17','176015561239.png',NULL);
INSERT INTO `file_pendukung` VALUES ('302','17','176015561240.png',NULL);
INSERT INTO `file_pendukung` VALUES ('303','17','176015561241.png',NULL);
INSERT INTO `file_pendukung` VALUES ('304','17','176015561242.png',NULL);
INSERT INTO `file_pendukung` VALUES ('305','17','176015561243.png',NULL);
INSERT INTO `file_pendukung` VALUES ('306','17','176015561244.png',NULL);
INSERT INTO `file_pendukung` VALUES ('307','17','176015561245.png',NULL);
INSERT INTO `file_pendukung` VALUES ('308','17','176015561246.png',NULL);
INSERT INTO `file_pendukung` VALUES ('309','17','176015561247.png',NULL);
INSERT INTO `file_pendukung` VALUES ('310','17','176015561248.png',NULL);
INSERT INTO `file_pendukung` VALUES ('311','17','176015561249.png',NULL);
INSERT INTO `file_pendukung` VALUES ('312','17','176015561250.png',NULL);
INSERT INTO `file_pendukung` VALUES ('313','17','176015561251.png',NULL);
INSERT INTO `file_pendukung` VALUES ('314','17','176015561252.png',NULL);
INSERT INTO `file_pendukung` VALUES ('315','17','176015561253.png',NULL);
INSERT INTO `file_pendukung` VALUES ('316','17','17601558161.png',NULL);
INSERT INTO `file_pendukung` VALUES ('317','17','17601558162.png',NULL);
INSERT INTO `file_pendukung` VALUES ('318','17','17601558163.png',NULL);
INSERT INTO `file_pendukung` VALUES ('319','17','17601558164.png',NULL);
INSERT INTO `file_pendukung` VALUES ('320','17','17601558165.png',NULL);
INSERT INTO `file_pendukung` VALUES ('321','17','17601558166.png',NULL);
INSERT INTO `file_pendukung` VALUES ('322','17','17601558167.png',NULL);
INSERT INTO `file_pendukung` VALUES ('323','17','17601558168.png',NULL);
INSERT INTO `file_pendukung` VALUES ('324','17','17601558169.png',NULL);
INSERT INTO `file_pendukung` VALUES ('325','17','176015581610.png',NULL);
INSERT INTO `file_pendukung` VALUES ('326','17','176015581611.png',NULL);
INSERT INTO `file_pendukung` VALUES ('327','17','176015581612.png',NULL);
INSERT INTO `file_pendukung` VALUES ('328','17','176015581613.png',NULL);
INSERT INTO `file_pendukung` VALUES ('329','17','176015581614.png',NULL);
INSERT INTO `file_pendukung` VALUES ('330','17','176015581615.png',NULL);
INSERT INTO `file_pendukung` VALUES ('331','17','176015581616.png',NULL);
INSERT INTO `file_pendukung` VALUES ('332','17','176015581617.png',NULL);
INSERT INTO `file_pendukung` VALUES ('333','17','176015581618.png',NULL);
INSERT INTO `file_pendukung` VALUES ('334','17','176015581619.png',NULL);
INSERT INTO `file_pendukung` VALUES ('335','17','176015581620.png',NULL);
INSERT INTO `file_pendukung` VALUES ('336','17','176015581621.png',NULL);
INSERT INTO `file_pendukung` VALUES ('337','17','176015581622.png',NULL);
INSERT INTO `file_pendukung` VALUES ('338','17','176015581623.png',NULL);
INSERT INTO `file_pendukung` VALUES ('339','17','176015581624.png',NULL);
INSERT INTO `file_pendukung` VALUES ('340','17','176015581625.png',NULL);
INSERT INTO `file_pendukung` VALUES ('341','17','176015581626.png',NULL);
INSERT INTO `file_pendukung` VALUES ('342','17','176015581627.png',NULL);
INSERT INTO `file_pendukung` VALUES ('343','17','176015581628.png',NULL);
INSERT INTO `file_pendukung` VALUES ('344','17','176015581629.png',NULL);
INSERT INTO `file_pendukung` VALUES ('345','17','176015581630.png',NULL);
INSERT INTO `file_pendukung` VALUES ('346','17','176015581631.png',NULL);
INSERT INTO `file_pendukung` VALUES ('347','17','176015581632.png',NULL);
INSERT INTO `file_pendukung` VALUES ('348','17','176015581633.png',NULL);
INSERT INTO `file_pendukung` VALUES ('349','17','176015581634.png',NULL);
INSERT INTO `file_pendukung` VALUES ('350','17','176015581635.png',NULL);
INSERT INTO `file_pendukung` VALUES ('351','17','176015581636.png',NULL);
INSERT INTO `file_pendukung` VALUES ('352','17','176015581637.png',NULL);
INSERT INTO `file_pendukung` VALUES ('353','17','176015581638.png',NULL);
INSERT INTO `file_pendukung` VALUES ('354','17','176015581639.png',NULL);
INSERT INTO `file_pendukung` VALUES ('355','17','176015581640.png',NULL);
INSERT INTO `file_pendukung` VALUES ('356','17','176015581641.png',NULL);
INSERT INTO `file_pendukung` VALUES ('357','17','176015581642.png',NULL);
INSERT INTO `file_pendukung` VALUES ('358','17','176015581643.png',NULL);
INSERT INTO `file_pendukung` VALUES ('359','17','176015581644.png',NULL);
INSERT INTO `file_pendukung` VALUES ('360','17','176015581645.png',NULL);
INSERT INTO `file_pendukung` VALUES ('361','17','176015581646.png',NULL);
INSERT INTO `file_pendukung` VALUES ('362','17','176015581647.png',NULL);
INSERT INTO `file_pendukung` VALUES ('363','17','176015581648.png',NULL);
INSERT INTO `file_pendukung` VALUES ('364','17','176015581649.png',NULL);
INSERT INTO `file_pendukung` VALUES ('365','17','176015581650.png',NULL);
INSERT INTO `file_pendukung` VALUES ('366','17','176015581651.png',NULL);
INSERT INTO `file_pendukung` VALUES ('367','17','176015581652.png',NULL);
INSERT INTO `file_pendukung` VALUES ('368','17','176015581653.png',NULL);
INSERT INTO `file_pendukung` VALUES ('369','17','17601558651.png',NULL);
INSERT INTO `file_pendukung` VALUES ('370','17','17601558652.png',NULL);
INSERT INTO `file_pendukung` VALUES ('371','17','17601558653.png',NULL);
INSERT INTO `file_pendukung` VALUES ('372','17','17601558654.png',NULL);
INSERT INTO `file_pendukung` VALUES ('373','17','17601558655.png',NULL);
INSERT INTO `file_pendukung` VALUES ('374','17','17601558656.png',NULL);
INSERT INTO `file_pendukung` VALUES ('375','17','17601558657.png',NULL);
INSERT INTO `file_pendukung` VALUES ('376','17','17601558658.png',NULL);
INSERT INTO `file_pendukung` VALUES ('377','17','17601558659.png',NULL);
INSERT INTO `file_pendukung` VALUES ('378','17','176015586510.png',NULL);
INSERT INTO `file_pendukung` VALUES ('379','17','176015586511.png',NULL);
INSERT INTO `file_pendukung` VALUES ('380','17','176015586512.png',NULL);
INSERT INTO `file_pendukung` VALUES ('381','17','176015586513.png',NULL);
INSERT INTO `file_pendukung` VALUES ('382','17','176015586514.png',NULL);
INSERT INTO `file_pendukung` VALUES ('383','17','176015586515.png',NULL);
INSERT INTO `file_pendukung` VALUES ('384','17','176015586516.png',NULL);
INSERT INTO `file_pendukung` VALUES ('385','17','176015586517.png',NULL);
INSERT INTO `file_pendukung` VALUES ('386','17','176015586518.png',NULL);
INSERT INTO `file_pendukung` VALUES ('387','17','176015586519.png',NULL);
INSERT INTO `file_pendukung` VALUES ('388','17','176015586520.png',NULL);
INSERT INTO `file_pendukung` VALUES ('389','17','176015586521.png',NULL);
INSERT INTO `file_pendukung` VALUES ('390','17','176015586522.png',NULL);
INSERT INTO `file_pendukung` VALUES ('391','17','176015586523.png',NULL);
INSERT INTO `file_pendukung` VALUES ('392','17','176015586524.png',NULL);
INSERT INTO `file_pendukung` VALUES ('393','17','176015586525.png',NULL);
INSERT INTO `file_pendukung` VALUES ('394','17','176015586526.png',NULL);
INSERT INTO `file_pendukung` VALUES ('395','17','176015586527.png',NULL);
INSERT INTO `file_pendukung` VALUES ('396','17','176015586528.png',NULL);
INSERT INTO `file_pendukung` VALUES ('397','17','176015586529.png',NULL);
INSERT INTO `file_pendukung` VALUES ('398','17','176015586530.png',NULL);
INSERT INTO `file_pendukung` VALUES ('399','17','176015586531.png',NULL);
INSERT INTO `file_pendukung` VALUES ('400','17','176015586532.png',NULL);
INSERT INTO `file_pendukung` VALUES ('401','17','176015586533.png',NULL);
INSERT INTO `file_pendukung` VALUES ('402','17','176015586534.png',NULL);
INSERT INTO `file_pendukung` VALUES ('403','17','176015586535.png',NULL);
INSERT INTO `file_pendukung` VALUES ('404','17','176015586536.png',NULL);
INSERT INTO `file_pendukung` VALUES ('405','17','176015586537.png',NULL);
INSERT INTO `file_pendukung` VALUES ('406','17','176015586538.png',NULL);
INSERT INTO `file_pendukung` VALUES ('407','17','176015586539.png',NULL);
INSERT INTO `file_pendukung` VALUES ('408','17','176015586540.png',NULL);
INSERT INTO `file_pendukung` VALUES ('409','17','176015586541.png',NULL);
INSERT INTO `file_pendukung` VALUES ('410','17','176015586542.png',NULL);
INSERT INTO `file_pendukung` VALUES ('411','17','176015586543.png',NULL);
INSERT INTO `file_pendukung` VALUES ('412','17','176015586544.png',NULL);
INSERT INTO `file_pendukung` VALUES ('413','17','176015586545.png',NULL);
INSERT INTO `file_pendukung` VALUES ('414','17','176015586546.png',NULL);
INSERT INTO `file_pendukung` VALUES ('415','17','176015586547.png',NULL);
INSERT INTO `file_pendukung` VALUES ('416','17','176015586548.png',NULL);
INSERT INTO `file_pendukung` VALUES ('417','17','176015586549.png',NULL);
INSERT INTO `file_pendukung` VALUES ('418','17','176015586550.png',NULL);
INSERT INTO `file_pendukung` VALUES ('419','17','176015586551.png',NULL);
INSERT INTO `file_pendukung` VALUES ('420','17','176015586552.png',NULL);
INSERT INTO `file_pendukung` VALUES ('421','17','176015586553.png',NULL);
INSERT INTO `file_pendukung` VALUES ('422','17','17601559021.png',NULL);
INSERT INTO `file_pendukung` VALUES ('423','17','17601559022.png',NULL);
INSERT INTO `file_pendukung` VALUES ('424','17','17601559023.png',NULL);
INSERT INTO `file_pendukung` VALUES ('425','17','17601559024.png',NULL);
INSERT INTO `file_pendukung` VALUES ('426','17','17601559025.png',NULL);
INSERT INTO `file_pendukung` VALUES ('427','17','17601559026.png',NULL);
INSERT INTO `file_pendukung` VALUES ('428','17','17601559027.png',NULL);
INSERT INTO `file_pendukung` VALUES ('429','17','17601559028.png',NULL);
INSERT INTO `file_pendukung` VALUES ('430','17','17601559029.png',NULL);
INSERT INTO `file_pendukung` VALUES ('431','17','176015590210.png',NULL);
INSERT INTO `file_pendukung` VALUES ('432','17','176015590211.png',NULL);
INSERT INTO `file_pendukung` VALUES ('433','17','176015590212.png',NULL);
INSERT INTO `file_pendukung` VALUES ('434','17','176015590213.png',NULL);
INSERT INTO `file_pendukung` VALUES ('435','17','176015590314.png',NULL);
INSERT INTO `file_pendukung` VALUES ('436','17','176015590315.png',NULL);
INSERT INTO `file_pendukung` VALUES ('437','17','176015590316.png',NULL);
INSERT INTO `file_pendukung` VALUES ('438','17','176015590317.png',NULL);
INSERT INTO `file_pendukung` VALUES ('439','17','176015590318.png',NULL);
INSERT INTO `file_pendukung` VALUES ('440','17','176015590319.png',NULL);
INSERT INTO `file_pendukung` VALUES ('441','17','176015590320.png',NULL);
INSERT INTO `file_pendukung` VALUES ('442','17','176015590321.png',NULL);
INSERT INTO `file_pendukung` VALUES ('443','17','176015590322.png',NULL);
INSERT INTO `file_pendukung` VALUES ('444','17','176015590323.png',NULL);
INSERT INTO `file_pendukung` VALUES ('445','17','176015590324.png',NULL);
INSERT INTO `file_pendukung` VALUES ('446','17','176015590325.png',NULL);
INSERT INTO `file_pendukung` VALUES ('447','17','176015590326.png',NULL);
INSERT INTO `file_pendukung` VALUES ('448','17','176015590327.png',NULL);
INSERT INTO `file_pendukung` VALUES ('449','17','176015590328.png',NULL);
INSERT INTO `file_pendukung` VALUES ('450','17','176015590329.png',NULL);
INSERT INTO `file_pendukung` VALUES ('451','17','176015590330.png',NULL);
INSERT INTO `file_pendukung` VALUES ('452','17','176015590331.png',NULL);
INSERT INTO `file_pendukung` VALUES ('453','17','176015590332.png',NULL);
INSERT INTO `file_pendukung` VALUES ('454','17','176015590333.png',NULL);
INSERT INTO `file_pendukung` VALUES ('455','17','176015590334.png',NULL);
INSERT INTO `file_pendukung` VALUES ('456','17','176015590335.png',NULL);
INSERT INTO `file_pendukung` VALUES ('457','17','176015590336.png',NULL);
INSERT INTO `file_pendukung` VALUES ('458','17','176015590337.png',NULL);
INSERT INTO `file_pendukung` VALUES ('459','17','176015590338.png',NULL);
INSERT INTO `file_pendukung` VALUES ('460','17','176015590339.png',NULL);
INSERT INTO `file_pendukung` VALUES ('461','17','176015590340.png',NULL);
INSERT INTO `file_pendukung` VALUES ('462','17','176015590341.png',NULL);
INSERT INTO `file_pendukung` VALUES ('463','17','176015590342.png',NULL);
INSERT INTO `file_pendukung` VALUES ('464','17','176015590343.png',NULL);
INSERT INTO `file_pendukung` VALUES ('465','17','176015590344.png',NULL);
INSERT INTO `file_pendukung` VALUES ('466','17','176015590345.png',NULL);
INSERT INTO `file_pendukung` VALUES ('467','17','176015590346.png',NULL);
INSERT INTO `file_pendukung` VALUES ('468','17','176015590347.png',NULL);
INSERT INTO `file_pendukung` VALUES ('469','17','176015590348.png',NULL);
INSERT INTO `file_pendukung` VALUES ('470','17','176015590349.png',NULL);
INSERT INTO `file_pendukung` VALUES ('471','17','176015590350.png',NULL);
INSERT INTO `file_pendukung` VALUES ('472','17','176015590351.png',NULL);
INSERT INTO `file_pendukung` VALUES ('473','17','176015590352.png',NULL);
INSERT INTO `file_pendukung` VALUES ('474','17','176015590353.png',NULL);
INSERT INTO `file_pendukung` VALUES ('475','17','17601560051.png',NULL);
INSERT INTO `file_pendukung` VALUES ('476','17','17601560052.png',NULL);
INSERT INTO `file_pendukung` VALUES ('477','17','17601560053.png',NULL);
INSERT INTO `file_pendukung` VALUES ('478','17','17601560054.png',NULL);
INSERT INTO `file_pendukung` VALUES ('479','17','17601560055.png',NULL);
INSERT INTO `file_pendukung` VALUES ('480','17','17601560056.png',NULL);
INSERT INTO `file_pendukung` VALUES ('481','17','17601560057.png',NULL);
INSERT INTO `file_pendukung` VALUES ('482','17','17601560058.png',NULL);
INSERT INTO `file_pendukung` VALUES ('483','17','17601560059.png',NULL);
INSERT INTO `file_pendukung` VALUES ('484','17','176015600510.png',NULL);
INSERT INTO `file_pendukung` VALUES ('485','17','176015600511.png',NULL);
INSERT INTO `file_pendukung` VALUES ('486','17','176015600512.png',NULL);
INSERT INTO `file_pendukung` VALUES ('487','17','176015600513.png',NULL);
INSERT INTO `file_pendukung` VALUES ('488','17','176015600514.png',NULL);
INSERT INTO `file_pendukung` VALUES ('489','17','176015600515.png',NULL);
INSERT INTO `file_pendukung` VALUES ('490','17','176015600516.png',NULL);
INSERT INTO `file_pendukung` VALUES ('491','17','176015600517.png',NULL);
INSERT INTO `file_pendukung` VALUES ('492','17','176015600518.png',NULL);
INSERT INTO `file_pendukung` VALUES ('493','17','176015600519.png',NULL);
INSERT INTO `file_pendukung` VALUES ('494','17','176015600520.png',NULL);
INSERT INTO `file_pendukung` VALUES ('495','17','176015600521.png',NULL);
INSERT INTO `file_pendukung` VALUES ('496','17','176015600522.png',NULL);
INSERT INTO `file_pendukung` VALUES ('497','17','176015600523.png',NULL);
INSERT INTO `file_pendukung` VALUES ('498','17','176015600524.png',NULL);
INSERT INTO `file_pendukung` VALUES ('499','17','176015600525.png',NULL);
INSERT INTO `file_pendukung` VALUES ('500','17','176015600526.png',NULL);
INSERT INTO `file_pendukung` VALUES ('501','17','176015600527.png',NULL);
INSERT INTO `file_pendukung` VALUES ('502','17','176015600528.png',NULL);
INSERT INTO `file_pendukung` VALUES ('503','17','176015600529.png',NULL);
INSERT INTO `file_pendukung` VALUES ('504','17','176015600530.png',NULL);
INSERT INTO `file_pendukung` VALUES ('505','17','176015600531.png',NULL);
INSERT INTO `file_pendukung` VALUES ('506','17','176015600532.png',NULL);
INSERT INTO `file_pendukung` VALUES ('507','17','176015600533.png',NULL);
INSERT INTO `file_pendukung` VALUES ('508','17','176015600534.png',NULL);
INSERT INTO `file_pendukung` VALUES ('509','17','176015600535.png',NULL);
INSERT INTO `file_pendukung` VALUES ('510','17','176015600536.png',NULL);
INSERT INTO `file_pendukung` VALUES ('511','17','176015600537.png',NULL);
INSERT INTO `file_pendukung` VALUES ('512','17','176015600538.png',NULL);
INSERT INTO `file_pendukung` VALUES ('513','17','176015600539.png',NULL);
INSERT INTO `file_pendukung` VALUES ('514','17','176015600540.png',NULL);
INSERT INTO `file_pendukung` VALUES ('515','17','176015600541.png',NULL);
INSERT INTO `file_pendukung` VALUES ('516','17','176015600542.png',NULL);
INSERT INTO `file_pendukung` VALUES ('517','17','176015600543.png',NULL);
INSERT INTO `file_pendukung` VALUES ('518','17','176015600544.png',NULL);
INSERT INTO `file_pendukung` VALUES ('519','17','176015600545.png',NULL);
INSERT INTO `file_pendukung` VALUES ('520','17','176015600546.png',NULL);
INSERT INTO `file_pendukung` VALUES ('521','17','176015600547.png',NULL);
INSERT INTO `file_pendukung` VALUES ('522','17','176015600548.png',NULL);
INSERT INTO `file_pendukung` VALUES ('523','17','176015600549.png',NULL);
INSERT INTO `file_pendukung` VALUES ('524','17','176015600550.png',NULL);
INSERT INTO `file_pendukung` VALUES ('525','17','176015600551.png',NULL);
INSERT INTO `file_pendukung` VALUES ('526','17','176015600552.png',NULL);
INSERT INTO `file_pendukung` VALUES ('527','17','176015600553.png',NULL);
INSERT INTO `file_pendukung` VALUES ('528','17','17601560581.png',NULL);
INSERT INTO `file_pendukung` VALUES ('529','17','17601560582.png',NULL);
INSERT INTO `file_pendukung` VALUES ('530','17','17601560583.png',NULL);
INSERT INTO `file_pendukung` VALUES ('531','17','17601560584.png',NULL);
INSERT INTO `file_pendukung` VALUES ('532','17','17601560585.png',NULL);
INSERT INTO `file_pendukung` VALUES ('533','17','17601560586.png',NULL);
INSERT INTO `file_pendukung` VALUES ('534','17','17601560587.png',NULL);
INSERT INTO `file_pendukung` VALUES ('535','17','17601560588.png',NULL);
INSERT INTO `file_pendukung` VALUES ('536','17','17601560589.png',NULL);
INSERT INTO `file_pendukung` VALUES ('537','17','176015605810.png',NULL);
INSERT INTO `file_pendukung` VALUES ('538','17','176015605811.png',NULL);
INSERT INTO `file_pendukung` VALUES ('539','17','176015605812.png',NULL);
INSERT INTO `file_pendukung` VALUES ('540','17','176015605813.png',NULL);
INSERT INTO `file_pendukung` VALUES ('541','17','176015605814.png',NULL);
INSERT INTO `file_pendukung` VALUES ('542','17','176015605815.png',NULL);
INSERT INTO `file_pendukung` VALUES ('543','17','176015605816.png',NULL);
INSERT INTO `file_pendukung` VALUES ('544','17','176015605817.png',NULL);
INSERT INTO `file_pendukung` VALUES ('545','17','176015605818.png',NULL);
INSERT INTO `file_pendukung` VALUES ('546','17','176015605819.png',NULL);
INSERT INTO `file_pendukung` VALUES ('547','17','176015605820.png',NULL);
INSERT INTO `file_pendukung` VALUES ('548','17','176015605821.png',NULL);
INSERT INTO `file_pendukung` VALUES ('549','17','176015605822.png',NULL);
INSERT INTO `file_pendukung` VALUES ('550','17','176015605823.png',NULL);
INSERT INTO `file_pendukung` VALUES ('551','17','176015605824.png',NULL);
INSERT INTO `file_pendukung` VALUES ('552','17','176015605825.png',NULL);
INSERT INTO `file_pendukung` VALUES ('553','17','176015605826.png',NULL);
INSERT INTO `file_pendukung` VALUES ('554','17','176015605827.png',NULL);
INSERT INTO `file_pendukung` VALUES ('555','17','176015605828.png',NULL);
INSERT INTO `file_pendukung` VALUES ('556','17','176015605929.png',NULL);
INSERT INTO `file_pendukung` VALUES ('557','17','176015605930.png',NULL);
INSERT INTO `file_pendukung` VALUES ('558','17','176015605931.png',NULL);
INSERT INTO `file_pendukung` VALUES ('559','17','176015605932.png',NULL);
INSERT INTO `file_pendukung` VALUES ('560','17','176015605933.png',NULL);
INSERT INTO `file_pendukung` VALUES ('561','17','176015605934.png',NULL);
INSERT INTO `file_pendukung` VALUES ('562','17','176015605935.png',NULL);
INSERT INTO `file_pendukung` VALUES ('563','17','176015605936.png',NULL);
INSERT INTO `file_pendukung` VALUES ('564','17','176015605937.png',NULL);
INSERT INTO `file_pendukung` VALUES ('565','17','176015605938.png',NULL);
INSERT INTO `file_pendukung` VALUES ('566','17','176015605939.png',NULL);
INSERT INTO `file_pendukung` VALUES ('567','17','176015605940.png',NULL);
INSERT INTO `file_pendukung` VALUES ('568','17','176015605941.png',NULL);
INSERT INTO `file_pendukung` VALUES ('569','17','176015605942.png',NULL);
INSERT INTO `file_pendukung` VALUES ('570','17','176015605943.png',NULL);
INSERT INTO `file_pendukung` VALUES ('571','17','176015605944.png',NULL);
INSERT INTO `file_pendukung` VALUES ('572','17','176015605945.png',NULL);
INSERT INTO `file_pendukung` VALUES ('573','17','176015605946.png',NULL);
INSERT INTO `file_pendukung` VALUES ('574','17','176015605947.png',NULL);
INSERT INTO `file_pendukung` VALUES ('575','17','176015605948.png',NULL);
INSERT INTO `file_pendukung` VALUES ('576','17','176015605949.png',NULL);
INSERT INTO `file_pendukung` VALUES ('577','17','176015605950.png',NULL);
INSERT INTO `file_pendukung` VALUES ('578','17','176015605951.png',NULL);
INSERT INTO `file_pendukung` VALUES ('579','17','176015605952.png',NULL);
INSERT INTO `file_pendukung` VALUES ('580','17','176015605953.png',NULL);
INSERT INTO `file_pendukung` VALUES ('581','17','17601564361.png',NULL);
INSERT INTO `file_pendukung` VALUES ('582','17','17601564362.png',NULL);
INSERT INTO `file_pendukung` VALUES ('583','17','17601564363.png',NULL);
INSERT INTO `file_pendukung` VALUES ('584','17','17601564364.png',NULL);
INSERT INTO `file_pendukung` VALUES ('585','17','17601564365.png',NULL);
INSERT INTO `file_pendukung` VALUES ('586','17','17601564376.png',NULL);
INSERT INTO `file_pendukung` VALUES ('587','17','17601564377.png',NULL);
INSERT INTO `file_pendukung` VALUES ('588','17','17601564378.png',NULL);
INSERT INTO `file_pendukung` VALUES ('589','17','17601564379.png',NULL);
INSERT INTO `file_pendukung` VALUES ('590','17','176015643710.png',NULL);
INSERT INTO `file_pendukung` VALUES ('591','17','176015643711.png',NULL);
INSERT INTO `file_pendukung` VALUES ('592','17','176015643712.png',NULL);
INSERT INTO `file_pendukung` VALUES ('593','17','176015643713.png',NULL);
INSERT INTO `file_pendukung` VALUES ('594','17','176015643714.png',NULL);
INSERT INTO `file_pendukung` VALUES ('595','17','176015643715.png',NULL);
INSERT INTO `file_pendukung` VALUES ('596','17','176015643716.png',NULL);
INSERT INTO `file_pendukung` VALUES ('597','17','176015643717.png',NULL);
INSERT INTO `file_pendukung` VALUES ('598','17','176015643718.png',NULL);
INSERT INTO `file_pendukung` VALUES ('599','17','176015643719.png',NULL);
INSERT INTO `file_pendukung` VALUES ('600','17','176015643720.png',NULL);
INSERT INTO `file_pendukung` VALUES ('601','17','176015643721.png',NULL);
INSERT INTO `file_pendukung` VALUES ('602','17','176015643722.png',NULL);
INSERT INTO `file_pendukung` VALUES ('603','17','176015643723.png',NULL);
INSERT INTO `file_pendukung` VALUES ('604','17','176015643724.png',NULL);
INSERT INTO `file_pendukung` VALUES ('605','17','176015643725.png',NULL);
INSERT INTO `file_pendukung` VALUES ('606','17','176015643726.png',NULL);
INSERT INTO `file_pendukung` VALUES ('607','17','176015643727.png',NULL);
INSERT INTO `file_pendukung` VALUES ('608','17','176015643728.png',NULL);
INSERT INTO `file_pendukung` VALUES ('609','17','176015643729.png',NULL);
INSERT INTO `file_pendukung` VALUES ('610','17','176015643730.png',NULL);
INSERT INTO `file_pendukung` VALUES ('611','17','176015643731.png',NULL);
INSERT INTO `file_pendukung` VALUES ('612','17','176015643732.png',NULL);
INSERT INTO `file_pendukung` VALUES ('613','17','176015643733.png',NULL);
INSERT INTO `file_pendukung` VALUES ('614','17','176015643734.png',NULL);
INSERT INTO `file_pendukung` VALUES ('615','17','176015643735.png',NULL);
INSERT INTO `file_pendukung` VALUES ('616','17','176015643736.png',NULL);
INSERT INTO `file_pendukung` VALUES ('617','17','176015643737.png',NULL);
INSERT INTO `file_pendukung` VALUES ('618','17','176015643738.png',NULL);
INSERT INTO `file_pendukung` VALUES ('619','17','176015643739.png',NULL);
INSERT INTO `file_pendukung` VALUES ('620','17','176015643740.png',NULL);
INSERT INTO `file_pendukung` VALUES ('621','17','176015643741.png',NULL);
INSERT INTO `file_pendukung` VALUES ('622','17','176015643742.png',NULL);
INSERT INTO `file_pendukung` VALUES ('623','17','176015643743.png',NULL);
INSERT INTO `file_pendukung` VALUES ('624','17','176015643744.png',NULL);
INSERT INTO `file_pendukung` VALUES ('625','17','176015643745.png',NULL);
INSERT INTO `file_pendukung` VALUES ('626','17','176015643746.png',NULL);
INSERT INTO `file_pendukung` VALUES ('627','17','176015643747.png',NULL);
INSERT INTO `file_pendukung` VALUES ('628','17','176015643748.png',NULL);
INSERT INTO `file_pendukung` VALUES ('629','17','176015643749.png',NULL);
INSERT INTO `file_pendukung` VALUES ('630','17','176015643750.png',NULL);
INSERT INTO `file_pendukung` VALUES ('631','17','176015643751.png',NULL);
INSERT INTO `file_pendukung` VALUES ('632','17','176015643752.png',NULL);
INSERT INTO `file_pendukung` VALUES ('633','17','176015643753.png',NULL);
INSERT INTO `file_pendukung` VALUES ('634','17','17601564941.png',NULL);
INSERT INTO `file_pendukung` VALUES ('635','17','17601564942.png',NULL);
INSERT INTO `file_pendukung` VALUES ('636','17','17601564943.png',NULL);
INSERT INTO `file_pendukung` VALUES ('637','17','17601564944.png',NULL);
INSERT INTO `file_pendukung` VALUES ('638','17','17601564945.png',NULL);
INSERT INTO `file_pendukung` VALUES ('639','17','17601564946.png',NULL);
INSERT INTO `file_pendukung` VALUES ('640','17','17601564947.png',NULL);
INSERT INTO `file_pendukung` VALUES ('641','17','17601564948.png',NULL);
INSERT INTO `file_pendukung` VALUES ('642','17','17601564949.png',NULL);
INSERT INTO `file_pendukung` VALUES ('643','17','176015649410.png',NULL);
INSERT INTO `file_pendukung` VALUES ('644','17','176015649411.png',NULL);
INSERT INTO `file_pendukung` VALUES ('645','17','176015649412.png',NULL);
INSERT INTO `file_pendukung` VALUES ('646','17','176015649413.png',NULL);
INSERT INTO `file_pendukung` VALUES ('647','17','176015649414.png',NULL);
INSERT INTO `file_pendukung` VALUES ('648','17','176015649415.png',NULL);
INSERT INTO `file_pendukung` VALUES ('649','17','176015649416.png',NULL);
INSERT INTO `file_pendukung` VALUES ('650','17','176015649417.png',NULL);
INSERT INTO `file_pendukung` VALUES ('651','17','176015649418.png',NULL);
INSERT INTO `file_pendukung` VALUES ('652','17','176015649419.png',NULL);
INSERT INTO `file_pendukung` VALUES ('653','17','176015649420.png',NULL);
INSERT INTO `file_pendukung` VALUES ('654','17','176015649421.png',NULL);
INSERT INTO `file_pendukung` VALUES ('655','17','176015649422.png',NULL);
INSERT INTO `file_pendukung` VALUES ('656','17','176015649423.png',NULL);
INSERT INTO `file_pendukung` VALUES ('657','17','176015649424.png',NULL);
INSERT INTO `file_pendukung` VALUES ('658','17','176015649425.png',NULL);
INSERT INTO `file_pendukung` VALUES ('659','17','176015649426.png',NULL);
INSERT INTO `file_pendukung` VALUES ('660','17','176015649427.png',NULL);
INSERT INTO `file_pendukung` VALUES ('661','17','176015649428.png',NULL);
INSERT INTO `file_pendukung` VALUES ('662','17','176015649429.png',NULL);
INSERT INTO `file_pendukung` VALUES ('663','17','176015649430.png',NULL);
INSERT INTO `file_pendukung` VALUES ('664','17','176015649431.png',NULL);
INSERT INTO `file_pendukung` VALUES ('665','17','176015649432.png',NULL);
INSERT INTO `file_pendukung` VALUES ('666','17','176015649433.png',NULL);
INSERT INTO `file_pendukung` VALUES ('667','17','176015649434.png',NULL);
INSERT INTO `file_pendukung` VALUES ('668','17','176015649435.png',NULL);
INSERT INTO `file_pendukung` VALUES ('669','17','176015649436.png',NULL);
INSERT INTO `file_pendukung` VALUES ('670','17','176015649437.png',NULL);
INSERT INTO `file_pendukung` VALUES ('671','17','176015649438.png',NULL);
INSERT INTO `file_pendukung` VALUES ('672','17','176015649439.png',NULL);
INSERT INTO `file_pendukung` VALUES ('673','17','176015649440.png',NULL);
INSERT INTO `file_pendukung` VALUES ('674','17','176015649441.png',NULL);
INSERT INTO `file_pendukung` VALUES ('675','17','176015649442.png',NULL);
INSERT INTO `file_pendukung` VALUES ('676','17','176015649443.png',NULL);
INSERT INTO `file_pendukung` VALUES ('677','17','176015649444.png',NULL);
INSERT INTO `file_pendukung` VALUES ('678','17','176015649445.png',NULL);
INSERT INTO `file_pendukung` VALUES ('679','17','176015649446.png',NULL);
INSERT INTO `file_pendukung` VALUES ('680','17','176015649447.png',NULL);
INSERT INTO `file_pendukung` VALUES ('681','17','176015649448.png',NULL);
INSERT INTO `file_pendukung` VALUES ('682','17','176015649449.png',NULL);
INSERT INTO `file_pendukung` VALUES ('683','17','176015649450.png',NULL);
INSERT INTO `file_pendukung` VALUES ('684','17','176015649451.png',NULL);
INSERT INTO `file_pendukung` VALUES ('685','17','176015649452.png',NULL);
INSERT INTO `file_pendukung` VALUES ('686','17','176015649453.png',NULL);
INSERT INTO `file_pendukung` VALUES ('687','17','17601565031.png',NULL);
INSERT INTO `file_pendukung` VALUES ('688','17','17601565032.png',NULL);
INSERT INTO `file_pendukung` VALUES ('689','17','17601565033.png',NULL);
INSERT INTO `file_pendukung` VALUES ('690','17','17601565034.png',NULL);
INSERT INTO `file_pendukung` VALUES ('691','17','17601565035.png',NULL);
INSERT INTO `file_pendukung` VALUES ('692','17','17601565036.png',NULL);
INSERT INTO `file_pendukung` VALUES ('693','17','17601565037.png',NULL);
INSERT INTO `file_pendukung` VALUES ('694','17','17601565038.png',NULL);
INSERT INTO `file_pendukung` VALUES ('695','17','17601565039.png',NULL);
INSERT INTO `file_pendukung` VALUES ('696','17','176015650310.png',NULL);
INSERT INTO `file_pendukung` VALUES ('697','17','176015650311.png',NULL);
INSERT INTO `file_pendukung` VALUES ('698','17','176015650312.png',NULL);
INSERT INTO `file_pendukung` VALUES ('699','17','176015650313.png',NULL);
INSERT INTO `file_pendukung` VALUES ('700','17','176015650314.png',NULL);
INSERT INTO `file_pendukung` VALUES ('701','17','176015650315.png',NULL);
INSERT INTO `file_pendukung` VALUES ('702','17','176015650316.png',NULL);
INSERT INTO `file_pendukung` VALUES ('703','17','176015650317.png',NULL);
INSERT INTO `file_pendukung` VALUES ('704','17','176015650318.png',NULL);
INSERT INTO `file_pendukung` VALUES ('705','17','176015650319.png',NULL);
INSERT INTO `file_pendukung` VALUES ('706','17','176015650320.png',NULL);
INSERT INTO `file_pendukung` VALUES ('707','17','176015650321.png',NULL);
INSERT INTO `file_pendukung` VALUES ('708','17','176015650322.png',NULL);
INSERT INTO `file_pendukung` VALUES ('709','17','176015650323.png',NULL);
INSERT INTO `file_pendukung` VALUES ('710','17','176015650324.png',NULL);
INSERT INTO `file_pendukung` VALUES ('711','17','176015650325.png',NULL);
INSERT INTO `file_pendukung` VALUES ('712','17','176015650326.png',NULL);
INSERT INTO `file_pendukung` VALUES ('713','17','176015650327.png',NULL);
INSERT INTO `file_pendukung` VALUES ('714','17','176015650328.png',NULL);
INSERT INTO `file_pendukung` VALUES ('715','17','176015650329.png',NULL);
INSERT INTO `file_pendukung` VALUES ('716','17','176015650330.png',NULL);
INSERT INTO `file_pendukung` VALUES ('717','17','176015650331.png',NULL);
INSERT INTO `file_pendukung` VALUES ('718','17','176015650332.png',NULL);
INSERT INTO `file_pendukung` VALUES ('719','17','176015650333.png',NULL);
INSERT INTO `file_pendukung` VALUES ('720','17','176015650334.png',NULL);
INSERT INTO `file_pendukung` VALUES ('721','17','176015650335.png',NULL);
INSERT INTO `file_pendukung` VALUES ('722','17','176015650336.png',NULL);
INSERT INTO `file_pendukung` VALUES ('723','17','176015650337.png',NULL);
INSERT INTO `file_pendukung` VALUES ('724','17','176015650338.png',NULL);
INSERT INTO `file_pendukung` VALUES ('725','17','176015650339.png',NULL);
INSERT INTO `file_pendukung` VALUES ('726','17','176015650340.png',NULL);
INSERT INTO `file_pendukung` VALUES ('727','17','176015650341.png',NULL);
INSERT INTO `file_pendukung` VALUES ('728','17','176015650342.png',NULL);
INSERT INTO `file_pendukung` VALUES ('729','17','176015650343.png',NULL);
INSERT INTO `file_pendukung` VALUES ('730','17','176015650344.png',NULL);
INSERT INTO `file_pendukung` VALUES ('731','17','176015650345.png',NULL);
INSERT INTO `file_pendukung` VALUES ('732','17','176015650346.png',NULL);
INSERT INTO `file_pendukung` VALUES ('733','17','176015650347.png',NULL);
INSERT INTO `file_pendukung` VALUES ('734','17','176015650348.png',NULL);
INSERT INTO `file_pendukung` VALUES ('735','17','176015650349.png',NULL);
INSERT INTO `file_pendukung` VALUES ('736','17','176015650350.png',NULL);
INSERT INTO `file_pendukung` VALUES ('737','17','176015650351.png',NULL);
INSERT INTO `file_pendukung` VALUES ('738','17','176015650352.png',NULL);
INSERT INTO `file_pendukung` VALUES ('739','17','176015650353.png',NULL);
INSERT INTO `file_pendukung` VALUES ('740','17','17601565161.png',NULL);
INSERT INTO `file_pendukung` VALUES ('741','17','17601565162.png',NULL);
INSERT INTO `file_pendukung` VALUES ('742','17','17601565163.png',NULL);
INSERT INTO `file_pendukung` VALUES ('743','17','17601565164.png',NULL);
INSERT INTO `file_pendukung` VALUES ('744','17','17601565165.png',NULL);
INSERT INTO `file_pendukung` VALUES ('745','17','17601565166.png',NULL);
INSERT INTO `file_pendukung` VALUES ('746','17','17601565167.png',NULL);
INSERT INTO `file_pendukung` VALUES ('747','17','17601565168.png',NULL);
INSERT INTO `file_pendukung` VALUES ('748','17','17601565169.png',NULL);
INSERT INTO `file_pendukung` VALUES ('749','17','176015651610.png',NULL);
INSERT INTO `file_pendukung` VALUES ('750','17','176015651611.png',NULL);
INSERT INTO `file_pendukung` VALUES ('751','17','176015651612.png',NULL);
INSERT INTO `file_pendukung` VALUES ('752','17','176015651613.png',NULL);
INSERT INTO `file_pendukung` VALUES ('753','17','176015651614.png',NULL);
INSERT INTO `file_pendukung` VALUES ('754','17','176015651615.png',NULL);
INSERT INTO `file_pendukung` VALUES ('755','17','176015651616.png',NULL);
INSERT INTO `file_pendukung` VALUES ('756','17','176015651617.png',NULL);
INSERT INTO `file_pendukung` VALUES ('757','17','176015651618.png',NULL);
INSERT INTO `file_pendukung` VALUES ('758','17','176015651619.png',NULL);
INSERT INTO `file_pendukung` VALUES ('759','17','176015651620.png',NULL);
INSERT INTO `file_pendukung` VALUES ('760','17','176015651621.png',NULL);
INSERT INTO `file_pendukung` VALUES ('761','17','176015651622.png',NULL);
INSERT INTO `file_pendukung` VALUES ('762','17','176015651623.png',NULL);
INSERT INTO `file_pendukung` VALUES ('763','17','176015651624.png',NULL);
INSERT INTO `file_pendukung` VALUES ('764','17','176015651625.png',NULL);
INSERT INTO `file_pendukung` VALUES ('765','17','176015651626.png',NULL);
INSERT INTO `file_pendukung` VALUES ('766','17','176015651627.png',NULL);
INSERT INTO `file_pendukung` VALUES ('767','17','176015651628.png',NULL);
INSERT INTO `file_pendukung` VALUES ('768','17','176015651629.png',NULL);
INSERT INTO `file_pendukung` VALUES ('769','17','176015651630.png',NULL);
INSERT INTO `file_pendukung` VALUES ('770','17','176015651631.png',NULL);
INSERT INTO `file_pendukung` VALUES ('771','17','176015651632.png',NULL);
INSERT INTO `file_pendukung` VALUES ('772','17','176015651633.png',NULL);
INSERT INTO `file_pendukung` VALUES ('773','17','176015651634.png',NULL);
INSERT INTO `file_pendukung` VALUES ('774','17','176015651635.png',NULL);
INSERT INTO `file_pendukung` VALUES ('775','17','176015651636.png',NULL);
INSERT INTO `file_pendukung` VALUES ('776','17','176015651637.png',NULL);
INSERT INTO `file_pendukung` VALUES ('777','17','176015651638.png',NULL);
INSERT INTO `file_pendukung` VALUES ('778','17','176015651639.png',NULL);
INSERT INTO `file_pendukung` VALUES ('779','17','176015651640.png',NULL);
INSERT INTO `file_pendukung` VALUES ('780','17','176015651641.png',NULL);
INSERT INTO `file_pendukung` VALUES ('781','17','176015651642.png',NULL);
INSERT INTO `file_pendukung` VALUES ('782','17','176015651643.png',NULL);
INSERT INTO `file_pendukung` VALUES ('783','17','176015651644.png',NULL);
INSERT INTO `file_pendukung` VALUES ('784','17','176015651645.png',NULL);
INSERT INTO `file_pendukung` VALUES ('785','17','176015651646.png',NULL);
INSERT INTO `file_pendukung` VALUES ('786','17','176015651647.png',NULL);
INSERT INTO `file_pendukung` VALUES ('787','17','176015651648.png',NULL);
INSERT INTO `file_pendukung` VALUES ('788','17','176015651649.png',NULL);
INSERT INTO `file_pendukung` VALUES ('789','17','176015651650.png',NULL);
INSERT INTO `file_pendukung` VALUES ('790','17','176015651651.png',NULL);
INSERT INTO `file_pendukung` VALUES ('791','17','176015651652.png',NULL);
INSERT INTO `file_pendukung` VALUES ('792','17','176015651653.png',NULL);
INSERT INTO `file_pendukung` VALUES ('793','17','17601565801.png',NULL);
INSERT INTO `file_pendukung` VALUES ('794','17','17601565802.png',NULL);
INSERT INTO `file_pendukung` VALUES ('795','17','17601565803.png',NULL);
INSERT INTO `file_pendukung` VALUES ('796','17','17601565804.png',NULL);
INSERT INTO `file_pendukung` VALUES ('797','17','17601565805.png',NULL);
INSERT INTO `file_pendukung` VALUES ('798','17','17601565806.png',NULL);
INSERT INTO `file_pendukung` VALUES ('799','17','17601565807.png',NULL);
INSERT INTO `file_pendukung` VALUES ('800','17','17601565808.png',NULL);
INSERT INTO `file_pendukung` VALUES ('801','17','17601565809.png',NULL);
INSERT INTO `file_pendukung` VALUES ('802','17','176015658010.png',NULL);
INSERT INTO `file_pendukung` VALUES ('803','17','176015658011.png',NULL);
INSERT INTO `file_pendukung` VALUES ('804','17','176015658012.png',NULL);
INSERT INTO `file_pendukung` VALUES ('805','17','176015658013.png',NULL);
INSERT INTO `file_pendukung` VALUES ('806','17','176015658014.png',NULL);
INSERT INTO `file_pendukung` VALUES ('807','17','176015658015.png',NULL);
INSERT INTO `file_pendukung` VALUES ('808','17','176015658016.png',NULL);
INSERT INTO `file_pendukung` VALUES ('809','17','176015658017.png',NULL);
INSERT INTO `file_pendukung` VALUES ('810','17','176015658018.png',NULL);
INSERT INTO `file_pendukung` VALUES ('811','17','176015658019.png',NULL);
INSERT INTO `file_pendukung` VALUES ('812','17','176015658020.png',NULL);
INSERT INTO `file_pendukung` VALUES ('813','17','176015658021.png',NULL);
INSERT INTO `file_pendukung` VALUES ('814','17','176015658022.png',NULL);
INSERT INTO `file_pendukung` VALUES ('815','17','176015658023.png',NULL);
INSERT INTO `file_pendukung` VALUES ('816','17','176015658024.png',NULL);
INSERT INTO `file_pendukung` VALUES ('817','17','176015658025.png',NULL);
INSERT INTO `file_pendukung` VALUES ('818','17','176015658026.png',NULL);
INSERT INTO `file_pendukung` VALUES ('819','17','176015658027.png',NULL);
INSERT INTO `file_pendukung` VALUES ('820','17','176015658028.png',NULL);
INSERT INTO `file_pendukung` VALUES ('821','17','176015658029.png',NULL);
INSERT INTO `file_pendukung` VALUES ('822','17','176015658030.png',NULL);
INSERT INTO `file_pendukung` VALUES ('823','17','176015658031.png',NULL);
INSERT INTO `file_pendukung` VALUES ('824','17','176015658032.png',NULL);
INSERT INTO `file_pendukung` VALUES ('825','17','176015658033.png',NULL);
INSERT INTO `file_pendukung` VALUES ('826','17','176015658034.png',NULL);
INSERT INTO `file_pendukung` VALUES ('827','17','176015658035.png',NULL);
INSERT INTO `file_pendukung` VALUES ('828','17','176015658036.png',NULL);
INSERT INTO `file_pendukung` VALUES ('829','17','176015658037.png',NULL);
INSERT INTO `file_pendukung` VALUES ('830','17','176015658038.png',NULL);
INSERT INTO `file_pendukung` VALUES ('831','17','176015658039.png',NULL);
INSERT INTO `file_pendukung` VALUES ('832','17','176015658040.png',NULL);
INSERT INTO `file_pendukung` VALUES ('833','17','176015658041.png',NULL);
INSERT INTO `file_pendukung` VALUES ('834','17','176015658042.png',NULL);
INSERT INTO `file_pendukung` VALUES ('835','17','176015658043.png',NULL);
INSERT INTO `file_pendukung` VALUES ('836','17','176015658044.png',NULL);
INSERT INTO `file_pendukung` VALUES ('837','17','176015658045.png',NULL);
INSERT INTO `file_pendukung` VALUES ('838','17','176015658046.png',NULL);
INSERT INTO `file_pendukung` VALUES ('839','17','176015658047.png',NULL);
INSERT INTO `file_pendukung` VALUES ('840','17','176015658048.png',NULL);
INSERT INTO `file_pendukung` VALUES ('841','17','176015658049.png',NULL);
INSERT INTO `file_pendukung` VALUES ('842','17','176015658050.png',NULL);
INSERT INTO `file_pendukung` VALUES ('843','17','176015658051.png',NULL);
INSERT INTO `file_pendukung` VALUES ('844','17','176015658052.png',NULL);
INSERT INTO `file_pendukung` VALUES ('845','17','176015658053.png',NULL);
INSERT INTO `file_pendukung` VALUES ('846','17','17601566111.png',NULL);
INSERT INTO `file_pendukung` VALUES ('847','17','17601566112.png',NULL);
INSERT INTO `file_pendukung` VALUES ('848','17','17601566113.png',NULL);
INSERT INTO `file_pendukung` VALUES ('849','17','17601566114.png',NULL);
INSERT INTO `file_pendukung` VALUES ('850','17','17601566115.png',NULL);
INSERT INTO `file_pendukung` VALUES ('851','17','17601566116.png',NULL);
INSERT INTO `file_pendukung` VALUES ('852','17','17601566117.png',NULL);
INSERT INTO `file_pendukung` VALUES ('853','17','17601566118.png',NULL);
INSERT INTO `file_pendukung` VALUES ('854','17','17601566119.png',NULL);
INSERT INTO `file_pendukung` VALUES ('855','17','176015661110.png',NULL);
INSERT INTO `file_pendukung` VALUES ('856','17','176015661111.png',NULL);
INSERT INTO `file_pendukung` VALUES ('857','17','176015661112.png',NULL);
INSERT INTO `file_pendukung` VALUES ('858','17','176015661113.png',NULL);
INSERT INTO `file_pendukung` VALUES ('859','17','176015661114.png',NULL);
INSERT INTO `file_pendukung` VALUES ('860','17','176015661115.png',NULL);
INSERT INTO `file_pendukung` VALUES ('861','17','176015661116.png',NULL);
INSERT INTO `file_pendukung` VALUES ('862','17','176015661117.png',NULL);
INSERT INTO `file_pendukung` VALUES ('863','17','176015661118.png',NULL);
INSERT INTO `file_pendukung` VALUES ('864','17','176015661119.png',NULL);
INSERT INTO `file_pendukung` VALUES ('865','17','176015661120.png',NULL);
INSERT INTO `file_pendukung` VALUES ('866','17','176015661121.png',NULL);
INSERT INTO `file_pendukung` VALUES ('867','17','176015661122.png',NULL);
INSERT INTO `file_pendukung` VALUES ('868','17','176015661123.png',NULL);
INSERT INTO `file_pendukung` VALUES ('869','17','176015661124.png',NULL);
INSERT INTO `file_pendukung` VALUES ('870','17','176015661125.png',NULL);
INSERT INTO `file_pendukung` VALUES ('871','17','176015661126.png',NULL);
INSERT INTO `file_pendukung` VALUES ('872','17','176015661127.png',NULL);
INSERT INTO `file_pendukung` VALUES ('873','17','176015661128.png',NULL);
INSERT INTO `file_pendukung` VALUES ('874','17','176015661129.png',NULL);
INSERT INTO `file_pendukung` VALUES ('875','17','176015661130.png',NULL);
INSERT INTO `file_pendukung` VALUES ('876','17','176015661131.png',NULL);
INSERT INTO `file_pendukung` VALUES ('877','17','176015661132.png',NULL);
INSERT INTO `file_pendukung` VALUES ('878','17','176015661133.png',NULL);
INSERT INTO `file_pendukung` VALUES ('879','17','176015661134.png',NULL);
INSERT INTO `file_pendukung` VALUES ('880','17','176015661135.png',NULL);
INSERT INTO `file_pendukung` VALUES ('881','17','176015661136.png',NULL);
INSERT INTO `file_pendukung` VALUES ('882','17','176015661137.png',NULL);
INSERT INTO `file_pendukung` VALUES ('883','17','176015661138.png',NULL);
INSERT INTO `file_pendukung` VALUES ('884','17','176015661139.png',NULL);
INSERT INTO `file_pendukung` VALUES ('885','17','176015661140.png',NULL);
INSERT INTO `file_pendukung` VALUES ('886','17','176015661141.png',NULL);
INSERT INTO `file_pendukung` VALUES ('887','17','176015661142.png',NULL);
INSERT INTO `file_pendukung` VALUES ('888','17','176015661143.png',NULL);
INSERT INTO `file_pendukung` VALUES ('889','17','176015661144.png',NULL);
INSERT INTO `file_pendukung` VALUES ('890','17','176015661145.png',NULL);
INSERT INTO `file_pendukung` VALUES ('891','17','176015661146.png',NULL);
INSERT INTO `file_pendukung` VALUES ('892','17','176015661147.png',NULL);
INSERT INTO `file_pendukung` VALUES ('893','17','176015661148.png',NULL);
INSERT INTO `file_pendukung` VALUES ('894','17','176015661149.png',NULL);
INSERT INTO `file_pendukung` VALUES ('895','17','176015661150.png',NULL);
INSERT INTO `file_pendukung` VALUES ('896','17','176015661151.png',NULL);
INSERT INTO `file_pendukung` VALUES ('897','17','176015661152.png',NULL);
INSERT INTO `file_pendukung` VALUES ('898','17','176015661153.png',NULL);
INSERT INTO `file_pendukung` VALUES ('899','17','17601566581.png',NULL);
INSERT INTO `file_pendukung` VALUES ('900','17','17601566582.png',NULL);
INSERT INTO `file_pendukung` VALUES ('901','17','17601566583.png',NULL);
INSERT INTO `file_pendukung` VALUES ('902','17','17601566584.png',NULL);
INSERT INTO `file_pendukung` VALUES ('903','17','17601566585.png',NULL);
INSERT INTO `file_pendukung` VALUES ('904','17','17601566586.png',NULL);
INSERT INTO `file_pendukung` VALUES ('905','17','17601566587.png',NULL);
INSERT INTO `file_pendukung` VALUES ('906','17','17601566588.png',NULL);
INSERT INTO `file_pendukung` VALUES ('907','17','17601566589.png',NULL);
INSERT INTO `file_pendukung` VALUES ('908','17','176015665810.png',NULL);
INSERT INTO `file_pendukung` VALUES ('909','17','176015665811.png',NULL);
INSERT INTO `file_pendukung` VALUES ('910','17','176015665812.png',NULL);
INSERT INTO `file_pendukung` VALUES ('911','17','176015665813.png',NULL);
INSERT INTO `file_pendukung` VALUES ('912','17','176015665814.png',NULL);
INSERT INTO `file_pendukung` VALUES ('913','17','176015665815.png',NULL);
INSERT INTO `file_pendukung` VALUES ('914','17','176015665816.png',NULL);
INSERT INTO `file_pendukung` VALUES ('915','17','176015665817.png',NULL);
INSERT INTO `file_pendukung` VALUES ('916','17','176015665818.png',NULL);
INSERT INTO `file_pendukung` VALUES ('917','17','176015665819.png',NULL);
INSERT INTO `file_pendukung` VALUES ('918','17','176015665820.png',NULL);
INSERT INTO `file_pendukung` VALUES ('919','17','176015665821.png',NULL);
INSERT INTO `file_pendukung` VALUES ('920','17','176015665822.png',NULL);
INSERT INTO `file_pendukung` VALUES ('921','17','176015665823.png',NULL);
INSERT INTO `file_pendukung` VALUES ('922','17','176015665824.png',NULL);
INSERT INTO `file_pendukung` VALUES ('923','17','176015665825.png',NULL);
INSERT INTO `file_pendukung` VALUES ('924','17','176015665826.png',NULL);
INSERT INTO `file_pendukung` VALUES ('925','17','176015665827.png',NULL);
INSERT INTO `file_pendukung` VALUES ('926','17','176015665828.png',NULL);
INSERT INTO `file_pendukung` VALUES ('927','17','176015665829.png',NULL);
INSERT INTO `file_pendukung` VALUES ('928','17','176015665830.png',NULL);
INSERT INTO `file_pendukung` VALUES ('929','17','176015665831.png',NULL);
INSERT INTO `file_pendukung` VALUES ('930','17','176015665832.png',NULL);
INSERT INTO `file_pendukung` VALUES ('931','17','176015665833.png',NULL);
INSERT INTO `file_pendukung` VALUES ('932','17','176015665834.png',NULL);
INSERT INTO `file_pendukung` VALUES ('933','17','176015665835.png',NULL);
INSERT INTO `file_pendukung` VALUES ('934','17','176015665836.png',NULL);
INSERT INTO `file_pendukung` VALUES ('935','17','176015665837.png',NULL);
INSERT INTO `file_pendukung` VALUES ('936','17','176015665838.png',NULL);
INSERT INTO `file_pendukung` VALUES ('937','17','176015665839.png',NULL);
INSERT INTO `file_pendukung` VALUES ('938','17','176015665840.png',NULL);
INSERT INTO `file_pendukung` VALUES ('939','17','176015665841.png',NULL);
INSERT INTO `file_pendukung` VALUES ('940','17','176015665842.png',NULL);
INSERT INTO `file_pendukung` VALUES ('941','17','176015665843.png',NULL);
INSERT INTO `file_pendukung` VALUES ('942','17','176015665844.png',NULL);
INSERT INTO `file_pendukung` VALUES ('943','17','176015665845.png',NULL);
INSERT INTO `file_pendukung` VALUES ('944','17','176015665846.png',NULL);
INSERT INTO `file_pendukung` VALUES ('945','17','176015665847.png',NULL);
INSERT INTO `file_pendukung` VALUES ('946','17','176015665848.png',NULL);
INSERT INTO `file_pendukung` VALUES ('947','17','176015665849.png',NULL);
INSERT INTO `file_pendukung` VALUES ('948','17','176015665850.png',NULL);
INSERT INTO `file_pendukung` VALUES ('949','17','176015665851.png',NULL);
INSERT INTO `file_pendukung` VALUES ('950','17','176015665852.png',NULL);
INSERT INTO `file_pendukung` VALUES ('951','17','176015665853.png',NULL);
INSERT INTO `file_pendukung` VALUES ('952','17','17601567411.png',NULL);
INSERT INTO `file_pendukung` VALUES ('953','17','17601567412.png',NULL);
INSERT INTO `file_pendukung` VALUES ('954','17','17601567413.png',NULL);
INSERT INTO `file_pendukung` VALUES ('955','17','17601567414.png',NULL);
INSERT INTO `file_pendukung` VALUES ('956','17','17601567415.png',NULL);
INSERT INTO `file_pendukung` VALUES ('957','17','17601567416.png',NULL);
INSERT INTO `file_pendukung` VALUES ('958','17','17601567417.png',NULL);
INSERT INTO `file_pendukung` VALUES ('959','17','17601567418.png',NULL);
INSERT INTO `file_pendukung` VALUES ('960','17','17601567419.png',NULL);
INSERT INTO `file_pendukung` VALUES ('961','17','176015674110.png',NULL);
INSERT INTO `file_pendukung` VALUES ('962','17','176015674111.png',NULL);
INSERT INTO `file_pendukung` VALUES ('963','17','176015674112.png',NULL);
INSERT INTO `file_pendukung` VALUES ('964','17','176015674113.png',NULL);
INSERT INTO `file_pendukung` VALUES ('965','17','176015674114.png',NULL);
INSERT INTO `file_pendukung` VALUES ('966','17','176015674115.png',NULL);
INSERT INTO `file_pendukung` VALUES ('967','17','176015674116.png',NULL);
INSERT INTO `file_pendukung` VALUES ('968','17','176015674117.png',NULL);
INSERT INTO `file_pendukung` VALUES ('969','17','176015674118.png',NULL);
INSERT INTO `file_pendukung` VALUES ('970','17','176015674119.png',NULL);
INSERT INTO `file_pendukung` VALUES ('971','17','176015674120.png',NULL);
INSERT INTO `file_pendukung` VALUES ('972','17','176015674121.png',NULL);
INSERT INTO `file_pendukung` VALUES ('973','17','176015674122.png',NULL);
INSERT INTO `file_pendukung` VALUES ('974','17','176015674123.png',NULL);
INSERT INTO `file_pendukung` VALUES ('975','17','176015674124.png',NULL);
INSERT INTO `file_pendukung` VALUES ('976','17','176015674125.png',NULL);
INSERT INTO `file_pendukung` VALUES ('977','17','176015674126.png',NULL);
INSERT INTO `file_pendukung` VALUES ('978','17','176015674127.png',NULL);
INSERT INTO `file_pendukung` VALUES ('979','17','176015674128.png',NULL);
INSERT INTO `file_pendukung` VALUES ('980','17','176015674129.png',NULL);
INSERT INTO `file_pendukung` VALUES ('981','17','176015674130.png',NULL);
INSERT INTO `file_pendukung` VALUES ('982','17','176015674131.png',NULL);
INSERT INTO `file_pendukung` VALUES ('983','17','176015674132.png',NULL);
INSERT INTO `file_pendukung` VALUES ('984','17','176015674133.png',NULL);
INSERT INTO `file_pendukung` VALUES ('985','17','176015674134.png',NULL);
INSERT INTO `file_pendukung` VALUES ('986','17','176015674135.png',NULL);
INSERT INTO `file_pendukung` VALUES ('987','17','176015674136.png',NULL);
INSERT INTO `file_pendukung` VALUES ('988','17','176015674137.png',NULL);
INSERT INTO `file_pendukung` VALUES ('989','17','176015674138.png',NULL);
INSERT INTO `file_pendukung` VALUES ('990','17','176015674139.png',NULL);
INSERT INTO `file_pendukung` VALUES ('991','17','176015674140.png',NULL);
INSERT INTO `file_pendukung` VALUES ('992','17','176015674141.png',NULL);
INSERT INTO `file_pendukung` VALUES ('993','17','176015674142.png',NULL);
INSERT INTO `file_pendukung` VALUES ('994','17','176015674143.png',NULL);
INSERT INTO `file_pendukung` VALUES ('995','17','176015674144.png',NULL);
INSERT INTO `file_pendukung` VALUES ('996','17','176015674145.png',NULL);
INSERT INTO `file_pendukung` VALUES ('997','17','176015674146.png',NULL);
INSERT INTO `file_pendukung` VALUES ('998','17','176015674147.png',NULL);
INSERT INTO `file_pendukung` VALUES ('999','17','176015674148.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1000','17','176015674149.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1001','17','176015674150.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1002','17','176015674151.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1003','17','176015674152.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1004','17','176015674153.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1005','17','17601567961.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1006','17','17601567962.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1007','17','17601567963.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1008','17','17601567964.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1009','17','17601567965.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1010','17','17601567966.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1011','17','17601567967.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1012','17','17601567968.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1013','17','17601567969.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1014','17','176015679610.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1015','17','176015679611.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1016','17','176015679612.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1017','17','176015679613.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1018','17','176015679614.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1019','17','176015679615.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1020','17','176015679616.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1021','17','176015679617.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1022','17','176015679618.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1023','17','176015679619.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1024','17','176015679620.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1025','17','176015679621.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1026','17','176015679622.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1027','17','176015679623.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1028','17','176015679624.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1029','17','176015679625.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1030','17','176015679626.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1031','17','176015679627.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1032','17','176015679628.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1033','17','176015679629.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1034','17','176015679630.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1035','17','176015679631.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1036','17','176015679632.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1037','17','176015679633.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1038','17','176015679634.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1039','17','176015679635.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1040','17','176015679636.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1041','17','176015679637.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1042','17','176015679638.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1043','17','176015679639.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1044','17','176015679640.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1045','17','176015679641.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1046','17','176015679642.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1047','17','176015679643.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1048','17','176015679644.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1049','17','176015679645.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1050','17','176015679646.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1051','17','176015679647.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1052','17','176015679648.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1053','17','176015679649.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1054','17','176015679650.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1055','17','176015679651.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1056','17','176015679652.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1057','17','176015679653.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1058','17','17601569541.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1059','17','17601569542.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1060','17','17601569543.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1061','17','17601569544.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1062','17','17601569545.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1063','17','17601569546.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1064','17','17601569547.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1065','17','17601569548.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1066','17','17601569549.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1067','17','176015695410.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1068','17','176015695411.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1069','17','176015695412.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1070','17','176015695413.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1071','17','176015695414.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1072','17','176015695415.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1073','17','176015695416.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1074','17','176015695417.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1075','17','176015695418.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1076','17','176015695419.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1077','17','176015695420.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1078','17','176015695421.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1079','17','176015695422.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1080','17','176015695423.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1081','17','176015695424.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1082','17','176015695425.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1083','17','176015695426.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1084','17','176015695427.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1085','17','176015695428.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1086','17','176015695429.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1087','17','176015695430.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1088','17','176015695431.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1089','17','176015695432.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1090','17','176015695433.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1091','17','176015695434.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1092','17','176015695435.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1093','17','176015695436.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1094','17','176015695437.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1095','17','176015695438.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1096','17','176015695439.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1097','17','176015695440.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1098','17','176015695441.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1099','17','176015695442.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1100','17','176015695443.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1101','17','176015695444.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1102','17','176015695445.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1103','17','176015695446.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1104','17','176015695447.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1105','17','176015695448.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1106','17','176015695449.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1107','17','176015695450.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1108','17','176015695451.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1109','17','176015695452.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1110','17','176015695453.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1111','17','17601569601.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1112','17','17601569602.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1113','17','17601569603.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1114','17','17601569604.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1115','17','17601569605.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1116','17','17601569606.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1117','17','17601569607.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1118','17','17601569608.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1119','17','17601569609.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1120','17','176015696010.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1121','17','176015696011.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1122','17','176015696012.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1123','17','176015696013.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1124','17','176015696014.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1125','17','176015696015.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1126','17','176015696016.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1127','17','176015696017.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1128','17','176015696018.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1129','17','176015696019.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1130','17','176015696020.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1131','17','176015696021.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1132','17','176015696022.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1133','17','176015696023.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1134','17','176015696024.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1135','17','176015696025.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1136','17','176015696026.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1137','17','176015696027.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1138','17','176015696028.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1139','17','176015696029.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1140','17','176015696030.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1141','17','176015696031.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1142','17','176015696032.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1143','17','176015696033.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1144','17','176015696034.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1145','17','176015696035.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1146','17','176015696036.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1147','17','176015696037.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1148','17','176015696038.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1149','17','176015696039.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1150','17','176015696040.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1151','17','176015696041.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1152','17','176015696042.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1153','17','176015696043.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1154','17','176015696044.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1155','17','176015696045.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1156','17','176015696046.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1157','17','176015696047.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1158','17','176015696048.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1159','17','176015696049.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1160','17','176015696050.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1161','17','176015696051.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1162','17','176015696052.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1163','17','176015696053.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1164','17','17601570511.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1165','17','17601570512.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1166','17','17601570513.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1167','17','17601570514.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1168','17','17601570515.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1169','17','17601570516.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1170','17','17601570517.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1171','17','17601570518.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1172','17','17601570519.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1173','17','176015705110.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1174','17','176015705111.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1175','17','176015705112.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1176','17','176015705113.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1177','17','176015705114.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1178','17','176015705115.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1179','17','176015705116.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1180','17','176015705117.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1181','17','176015705118.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1182','17','176015705119.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1183','17','176015705120.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1184','17','176015705121.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1185','17','176015705122.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1186','17','176015705123.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1187','17','176015705124.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1188','17','176015705125.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1189','17','176015705126.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1190','17','176015705127.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1191','17','176015705128.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1192','17','176015705129.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1193','17','176015705130.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1194','17','176015705131.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1195','17','176015705132.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1196','17','176015705133.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1197','17','176015705134.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1198','17','176015705135.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1199','17','176015705236.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1200','17','176015705237.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1201','17','176015705238.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1202','17','176015705239.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1203','17','176015705240.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1204','17','176015705241.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1205','17','176015705242.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1206','17','176015705243.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1207','17','176015705244.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1208','17','176015705245.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1209','17','176015705246.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1210','17','176015705247.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1211','17','176015705248.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1212','17','176015705249.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1213','17','176015705250.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1214','17','176015705251.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1215','17','176015705252.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1216','17','176015705253.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1217','17','17601573771.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1218','17','17601573772.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1219','17','17601573773.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1220','17','17601573774.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1221','17','17601573775.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1222','17','17601573776.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1223','17','17601573777.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1224','17','17601573778.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1225','17','17601573779.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1226','17','176015737710.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1227','17','176015737711.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1228','17','176015737712.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1229','17','176015737713.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1230','17','176015737714.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1231','17','176015737715.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1232','17','176015737716.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1233','17','176015737717.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1234','17','176015737718.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1235','17','176015737719.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1236','17','176015737720.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1237','17','176015737721.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1238','17','176015737722.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1239','17','176015737723.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1240','17','176015737724.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1241','17','176015737725.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1242','17','176015737726.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1243','17','176015737727.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1244','17','176015737728.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1245','17','176015737729.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1246','17','176015737730.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1247','17','176015737731.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1248','17','176015737732.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1249','17','176015737733.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1250','17','176015737734.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1251','17','176015737735.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1252','17','176015737736.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1253','17','176015737737.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1254','17','176015737738.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1255','17','176015737739.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1256','17','176015737740.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1257','17','176015737741.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1258','17','176015737742.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1259','17','176015737743.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1260','17','176015737744.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1261','17','176015737745.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1262','17','176015737746.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1263','17','176015737747.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1264','17','176015737748.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1265','17','176015737749.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1266','17','176015737750.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1267','17','176015737751.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1268','17','176015737752.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1269','17','176015737753.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1270','17','17601575381.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1271','17','17601575382.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1272','17','17601575383.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1273','17','17601575384.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1274','17','17601575385.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1275','17','17601575386.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1276','17','17601575387.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1277','17','17601575388.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1278','17','17601575389.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1279','17','176015753810.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1280','17','176015753811.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1281','17','176015753812.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1282','17','176015753813.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1283','17','176015753814.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1284','17','176015753815.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1285','17','176015753816.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1286','17','176015753817.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1287','17','176015753818.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1288','17','176015753819.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1289','17','176015753820.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1290','17','176015753821.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1291','17','176015753822.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1292','17','176015753823.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1293','17','176015753824.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1294','17','176015753825.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1295','17','176015753826.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1296','17','176015753827.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1297','17','176015753828.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1298','17','176015753829.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1299','17','176015753830.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1300','17','176015753831.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1301','17','176015753832.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1302','17','176015753833.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1303','17','176015753834.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1304','17','176015753835.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1305','17','176015753836.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1306','17','176015753837.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1307','17','176015753838.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1308','17','176015753839.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1309','17','176015753840.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1310','17','176015753841.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1311','17','176015753842.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1312','17','176015753843.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1313','17','176015753844.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1314','17','176015753845.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1315','17','176015753846.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1316','17','176015753847.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1317','17','176015753848.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1318','17','176015753849.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1319','17','176015753850.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1320','17','176015753851.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1321','17','176015753852.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1322','17','176015753853.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1323','17','17601575691.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1324','17','17601575692.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1325','17','17601575693.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1326','17','17601575694.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1327','17','17601575695.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1328','17','17601575696.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1329','17','17601575697.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1330','17','17601575698.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1331','17','17601575699.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1332','17','176015756910.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1333','17','176015756911.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1334','17','176015756912.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1335','17','176015756913.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1336','17','176015756914.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1337','17','176015756915.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1338','17','176015756916.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1339','17','176015756917.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1340','17','176015756918.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1341','17','176015756919.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1342','17','176015756920.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1343','17','176015756921.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1344','17','176015756922.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1345','17','176015756923.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1346','17','176015756924.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1347','17','176015756925.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1348','17','176015756926.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1349','17','176015756927.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1350','17','176015756928.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1351','17','176015756929.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1352','17','176015756930.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1353','17','176015756931.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1354','17','176015756932.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1355','17','176015756933.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1356','17','176015756934.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1357','17','176015756935.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1358','17','176015756936.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1359','17','176015756937.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1360','17','176015756938.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1361','17','176015756939.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1362','17','176015756940.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1363','17','176015756941.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1364','17','176015756942.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1365','17','176015756943.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1366','17','176015756944.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1367','17','176015756945.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1368','17','176015756946.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1369','17','176015756947.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1370','17','176015756948.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1371','17','176015756949.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1372','17','176015756950.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1373','17','176015756951.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1374','17','176015756952.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1375','17','176015756953.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1376','17','17601577291.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1377','17','17601577292.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1378','17','17601577293.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1379','17','17601577294.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1380','17','17601577295.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1381','17','17601577296.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1382','17','17601577297.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1383','17','17601577298.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1384','17','17601577299.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1385','17','176015772910.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1386','17','176015772911.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1387','17','176015772912.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1388','17','176015772913.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1389','17','176015772914.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1390','17','176015772915.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1391','17','176015772916.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1392','17','176015772917.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1393','17','176015772918.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1394','17','176015772919.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1395','17','176015772920.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1396','17','176015772921.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1397','17','176015772922.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1398','17','176015772923.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1399','17','176015772924.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1400','17','176015773025.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1401','17','176015773026.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1402','17','176015773027.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1403','17','176015773028.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1404','17','176015773029.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1405','17','176015773030.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1406','17','176015773031.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1407','17','176015773032.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1408','17','176015773033.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1409','17','176015773034.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1410','17','176015773035.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1411','17','176015773036.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1412','17','176015773037.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1413','17','176015773038.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1414','17','176015773039.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1415','17','176015773040.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1416','17','176015773041.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1417','17','176015773042.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1418','17','176015773043.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1419','17','176015773044.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1420','17','176015773045.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1421','17','176015773046.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1422','17','176015773047.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1423','17','176015773048.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1424','17','176015773049.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1425','17','176015773050.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1426','17','176015773051.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1427','17','176015773052.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1428','17','176015773053.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1429','17','17601586421.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1430','17','17601586422.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1431','17','17601586423.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1432','17','17601586424.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1433','17','17601586425.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1434','17','17601586426.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1435','17','17601586427.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1436','17','17601586428.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1437','17','17601586429.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1438','17','176015864210.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1439','17','176015864311.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1440','17','176015864312.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1441','17','176015864313.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1442','17','176015864314.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1443','17','176015864315.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1444','17','176015864316.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1445','17','176015864317.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1446','17','176015864318.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1447','17','176015864319.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1448','17','176015864320.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1449','17','176015864321.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1450','17','176015864322.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1451','17','176015864323.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1452','17','176015864324.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1453','17','176015864325.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1454','17','176015864326.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1455','17','176015864327.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1456','17','176015864328.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1457','17','176015864329.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1458','17','176015864330.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1459','17','176015864331.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1460','17','176015864332.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1461','17','176015864333.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1462','17','176015864334.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1463','17','176015864335.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1464','17','176015864336.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1465','17','176015864337.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1466','17','176015864338.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1467','17','176015864339.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1468','17','176015864340.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1469','17','176015864341.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1470','17','176015864342.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1471','17','176015864343.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1472','17','176015864344.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1473','17','176015864345.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1474','17','176015864346.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1475','17','176015864347.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1476','17','176015864348.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1477','17','176015864349.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1478','17','176015864350.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1479','17','176015864351.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1480','17','176015864352.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1481','17','176015864353.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1482','17','17601588971.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1483','17','17601588972.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1484','17','17601588973.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1485','17','17601588974.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1486','17','17601588975.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1487','17','17601588976.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1488','17','17601588977.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1489','17','17601588978.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1490','17','17601588979.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1491','17','176015889710.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1492','17','176015889711.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1493','17','176015889712.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1494','17','176015889713.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1495','17','176015889714.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1496','17','176015889715.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1497','17','176015889716.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1498','17','176015889717.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1499','17','176015889718.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1500','17','176015889719.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1501','17','176015889720.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1502','17','176015889721.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1503','17','176015889722.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1504','17','176015889723.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1505','17','176015889724.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1506','17','176015889725.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1507','17','176015889726.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1508','17','176015889727.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1509','17','176015889728.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1510','17','176015889729.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1511','17','176015889730.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1512','17','176015889731.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1513','17','176015889732.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1514','17','176015889733.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1515','17','176015889734.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1516','17','176015889735.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1517','17','176015889736.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1518','17','176015889737.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1519','17','176015889738.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1520','17','176015889739.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1521','17','176015889740.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1522','17','176015889741.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1523','17','176015889742.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1524','17','176015889743.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1525','17','176015889744.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1526','17','176015889745.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1527','17','176015889746.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1528','17','176015889747.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1529','17','176015889748.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1530','17','176015889749.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1531','17','176015889750.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1532','17','176015889751.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1533','17','176015889752.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1534','17','176015889753.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1535','17','17601595751.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1536','17','17601595752.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1537','17','17601595753.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1538','17','17601595754.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1539','17','17601595755.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1540','17','17601595756.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1541','17','17601595757.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1542','17','17601595758.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1543','17','17601595759.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1544','17','176015957510.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1545','17','176015957511.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1546','17','176015957512.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1547','17','176015957513.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1548','17','176015957514.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1549','17','176015957515.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1550','17','176015957516.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1551','17','176015957517.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1552','17','176015957518.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1553','17','176015957519.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1554','17','176015957520.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1555','17','176015957521.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1556','17','176015957522.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1557','17','176015957523.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1558','17','176015957524.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1559','17','176015957525.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1560','17','176015957526.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1561','17','176015957527.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1562','17','176015957528.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1563','17','176015957529.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1564','17','176015957530.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1565','17','176015957531.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1566','17','176015957532.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1567','17','176015957533.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1568','17','176015957534.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1569','17','176015957535.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1570','17','176015957536.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1571','17','176015957537.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1572','17','176015957538.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1573','17','176015957539.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1574','17','176015957540.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1575','17','176015957541.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1576','17','176015957542.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1577','17','176015957543.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1578','17','176015957544.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1579','17','176015957545.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1580','17','176015957546.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1581','17','176015957547.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1582','17','176015957548.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1583','17','176015957549.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1584','17','176015957550.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1585','17','176015957551.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1586','17','176015957552.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1587','17','176015957553.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1588','17','17601605311.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1589','17','17601605312.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1590','17','17601605313.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1591','17','17601605314.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1592','17','17601605315.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1593','17','17601605316.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1594','17','17601605317.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1595','17','17601605318.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1596','17','17601605319.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1597','17','176016053110.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1598','17','176016053111.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1599','17','176016053112.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1600','17','176016053113.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1601','17','176016053114.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1602','17','176016053115.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1603','17','176016053116.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1604','17','176016053117.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1605','17','176016053118.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1606','17','176016053119.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1607','17','176016053120.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1608','17','176016053121.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1609','17','176016053122.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1610','17','176016053123.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1611','17','176016053124.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1612','17','176016053125.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1613','17','176016053126.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1614','17','176016053127.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1615','17','176016053128.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1616','17','176016053129.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1617','17','176016053130.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1618','17','176016053131.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1619','17','176016053132.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1620','17','176016053133.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1621','17','176016053134.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1622','17','176016053135.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1623','17','176016053136.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1624','17','176016053137.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1625','17','176016053138.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1626','17','176016053139.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1627','17','176016053140.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1628','17','176016053141.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1629','17','176016053142.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1630','17','176016053143.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1631','17','176016053144.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1632','17','176016053145.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1633','17','176016053146.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1634','17','176016053147.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1635','17','176016053148.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1636','17','176016053149.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1637','17','176016053150.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1638','17','176016053151.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1639','17','176016053152.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1640','17','176016053153.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1641','17','17601616041.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1642','17','17601616042.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1643','17','17601616053.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1644','17','17601616054.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1645','17','17601616055.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1646','17','17601616056.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1647','17','17601616057.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1648','17','17601616058.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1649','17','17601616059.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1650','17','176016160510.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1651','17','176016160511.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1652','17','176016160512.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1653','17','176016160513.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1654','17','176016160514.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1655','17','176016160515.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1656','17','176016160516.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1657','17','176016160517.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1658','17','176016160518.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1659','17','176016160519.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1660','17','176016160520.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1661','17','176016160521.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1662','17','176016160522.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1663','17','176016160523.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1664','17','176016160524.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1665','17','176016160525.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1666','17','176016160526.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1667','17','176016160527.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1668','17','176016160528.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1669','17','176016160529.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1670','17','176016160530.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1671','17','176016160531.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1672','17','176016160532.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1673','17','176016160533.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1674','17','176016160534.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1675','17','176016160535.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1676','17','176016160536.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1677','17','176016160537.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1678','17','176016160538.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1679','17','176016160539.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1680','17','176016160540.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1681','17','176016160541.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1682','17','176016160542.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1683','17','176016160543.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1684','17','176016160544.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1685','17','176016160545.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1686','17','176016160546.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1687','17','176016160547.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1688','17','176016160548.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1689','17','176016160549.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1690','17','176016160550.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1691','17','176016160551.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1692','17','176016160552.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1693','17','176016160553.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1694','17','17601619091.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1695','17','17601619092.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1696','17','17601619093.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1697','17','17601619094.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1698','17','17601619095.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1699','17','17601619096.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1700','17','17601619097.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1701','17','17601619098.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1702','17','17601619099.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1703','17','176016190910.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1704','17','176016190911.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1705','17','176016190912.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1706','17','176016190913.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1707','17','176016190914.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1708','17','176016190915.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1709','17','176016190916.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1710','17','176016190917.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1711','17','176016190918.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1712','17','176016190919.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1713','17','176016190920.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1714','17','176016190921.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1715','17','176016190922.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1716','17','176016190923.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1717','17','176016190924.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1718','17','176016190925.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1719','17','176016190926.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1720','17','176016190927.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1721','17','176016190928.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1722','17','176016190929.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1723','17','176016190930.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1724','17','176016191031.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1725','17','176016191032.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1726','17','176016191033.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1727','17','176016191034.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1728','17','176016191035.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1729','17','176016191036.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1730','17','176016191037.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1731','17','176016191038.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1732','17','176016191039.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1733','17','176016191040.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1734','17','176016191041.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1735','17','176016191042.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1736','17','176016191043.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1737','17','176016191044.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1738','17','176016191045.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1739','17','176016191046.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1740','17','176016191047.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1741','17','176016191048.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1742','17','176016191049.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1743','17','176016191050.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1744','17','176016191051.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1745','17','176016191052.png',NULL);
INSERT INTO `file_pendukung` VALUES ('1746','17','176016191053.png',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
INSERT INTO `mapel` VALUES   ('1','X-AGAMA-ISLAM','a:1:{i:0;s:5:\"semua\";}','268','PEND.-AGAMA-DAN-BUDI-PEKERTI','40','5','35','5','70','30','X','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 09:37:17','0','75','');
INSERT INTO `mapel` VALUES ('2','X-AGAMA-KRISTEN','a:1:{i:0;s:5:\"semua\";}','276','PEND.-AGAMA-DAN-BUDI-PEKERTI','40','5','35','5','70','30','X','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 09:37:17','0','75','');
INSERT INTO `mapel` VALUES ('3','X-PENDIDIKAN-PANCASILA','a:1:{i:0;s:5:\"semua\";}','288','PENDIDIKAN-PANCASILA','40','5','35','5','70','30','X','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 09:37:17','0','75','');
INSERT INTO `mapel` VALUES ('4','XI-AGAMA-ISLAM','a:1:{i:0;s:5:\"semua\";}','299','PEND.-AGAMA-DAN-BUDI-PEKERTI','40','5','35','5','70','30','XI','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 09:37:17','0','75','');
INSERT INTO `mapel` VALUES ('5','XI-AGAMA-KRISTEN','a:1:{i:0;s:5:\"semua\";}','276','PEND.-AGAMA-DAN-BUDI-PEKERTI','40','5','35','5','70','30','XI','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 09:37:17','0','75','');
INSERT INTO `mapel` VALUES ('6','XI-PENDIDIKAN-PANCASILA','a:1:{i:0;s:5:\"semua\";}','288','PENDIDIKAN-PANCASILA','40','5','35','5','70','30','XI','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 09:37:17','0','75','');
INSERT INTO `mapel` VALUES ('7','XII-AGAMA-ISLAM','a:1:{i:0;s:5:\"semua\";}','299','PEND.-AGAMA-DAN-BUDI-PEKERTI','40','5','35','5','70','30','XII','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 09:37:17','0','75','');
INSERT INTO `mapel` VALUES ('8','XII-AGAMA-KRISTEN','a:1:{i:0;s:5:\"semua\";}','276','PEND.-AGAMA-DAN-BUDI-PEKERTI','40','5','35','5','70','30','XII','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 09:37:17','0','75','');
INSERT INTO `mapel` VALUES ('9','XII-PENDIDIKAN-PANCASILA','a:1:{i:0;s:5:\"semua\";}','288','PENDIDIKAN-PANCASILA','40','5','35','5','70','30','XII','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 09:37:17','0','75','');
INSERT INTO `mapel` VALUES ('10','X-BAHASA-INGGRIS','a:1:{i:0;s:5:\"semua\";}','302','BHS.-INGGRIS','40','5','35','5','70','30','X','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 10:40:08','0','75','');
INSERT INTO `mapel` VALUES ('11','XI-BAHASA-INGGRIS','a:1:{i:0;s:5:\"semua\";}','271','BHS.-INGGRIS','35','5','35','5','70','30','XI','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 10:40:08','0','75','');
INSERT INTO `mapel` VALUES ('12','XII-BAHASA-INGGRIS','a:1:{i:0;s:5:\"semua\";}','271','BHS.-INGGRIS','35','5','35','5','70','30','XII','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 10:40:08','0','75','');
INSERT INTO `mapel` VALUES ('13','XI-PJOK','a:1:{i:0;s:5:\"semua\";}','272','PJOK','35','5','35','5','70','30','XI','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 10:40:08','0','75','');
INSERT INTO `mapel` VALUES ('14','X-PJOK','a:1:{i:0;s:5:\"semua\";}','266','PJOK','40','5','35','5','70','30','X','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 10:40:08','0','75','');
INSERT INTO `mapel` VALUES ('15','XII-MATEMATIKA','a:1:{i:0;s:5:\"semua\";}','278','MATEMATIKA','30','5','25','5','75','25','XII','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 10:40:08','0','75','');
INSERT INTO `mapel` VALUES ('16','X-MATEMATIKA','a:1:{i:0;s:5:\"semua\";}','300','MATEMATIKA','25','5','25','5','75','25','X','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 12:56:02','0','75','');
INSERT INTO `mapel` VALUES ('17','XI-MATEMATIKA','a:1:{i:0;s:5:\"semua\";}','278','MATEMATIKA','30','5','25','5','75','25','XI','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 12:56:02','0','75','');
INSERT INTO `mapel` VALUES ('18','X-BAHASA-JAWA','a:1:{i:0;s:5:\"semua\";}','267','BAHASA-JAWA','40','5','35','5','70','30','X','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 12:56:02','0','75','');
INSERT INTO `mapel` VALUES ('19','XI-BAHASA-JAWA','a:1:{i:0;s:5:\"semua\";}','261','BAHASA-JAWA','40','5','35','5','70','30','XI','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 12:56:02','0','75','');
INSERT INTO `mapel` VALUES ('20','XII-BAHASA-JAWA','a:1:{i:0;s:5:\"semua\";}','301','BAHASA-JAWA','40','5','35','5','70','30','XII','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 12:56:02','0','75','');
INSERT INTO `mapel` VALUES ('21','XII-BAHASA-INDONESIA','a:1:{i:0;s:5:\"semua\";}','277','BHS.-INDONESIA','55','5','35','5','70','30','XII','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 12:56:02','0','75','');
INSERT INTO `mapel` VALUES ('22','X-BAHASA-INDONESIA','a:1:{i:0;s:5:\"semua\";}','287','BHS.-INDONESIA','35','5','35','5','70','30','X','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 12:57:52','1','75','');
INSERT INTO `mapel` VALUES ('23','XI-BAHASA-INDONESIA','a:1:{i:0;s:5:\"semua\";}','277','BHS.-INDONESIA','35','5','35','5','70','30','XI','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 12:58:55','1','75','');
INSERT INTO `mapel` VALUES ('24','XII-PERPAJAKAN','a:1:{i:0;s:2:\"AK\";}','282','PERPAJAKAN','35','5','35','5','70','30','XII','5','a:1:{i:0;s:6:\"XII AK\";}','2025-10-11 13:01:40','1','75','');
INSERT INTO `mapel` VALUES ('25','XII-LAUNDRY','a:1:{i:0;s:2:\"PH\";}','263','LAUNDRY','35','5','35','5','70','30','XII','5','a:1:{i:0;s:6:\"XII PH\";}','2025-10-11 13:02:45','1','75','');
INSERT INTO `mapel` VALUES ('26','XII-BASIS-DATA','a:1:{i:0;s:3:\"RPL\";}','281','BASIS-DATA','35','5','35','5','70','30','XII','5','a:1:{i:0;s:7:\"XII RPL\";}','2025-10-11 13:03:22','1','75','');
INSERT INTO `mapel` VALUES ('27','X-SENI-MUSIK','a:1:{i:0;s:5:\"semua\";}','301','SENI-MUSIK','35','5','35','5','70','30','X','5','a:1:{i:0;s:5:\"semua\";}','2025-10-11 13:04:17','1','75','');
INSERT INTO `mapel` VALUES ('28','XI-PERENCANAAN-BISNIS','a:1:{i:0;s:2:\"BD\";}','290','PERENCANAAN-BISNIS','35','5','35','5','70','30','XI','5','a:1:{i:0;s:5:\"XI BD\";}','2025-10-11 13:05:08','1','75','');
INSERT INTO `mapel` VALUES ('29','XI-HOUSEKEEPING','a:1:{i:0;s:2:\"PH\";}','298','HOUSEKEEPING','35','5','35','5','70','30','XI','5','a:1:{i:0;s:5:\"XI PH\";}','2025-10-11 13:06:01','1','75','');
INSERT INTO `mapel` VALUES ('30','XI-BASIS-DATA','a:1:{i:0;s:3:\"RPL\";}','281','BASIS-DATA','35','5','35','5','70','30','XI','5','a:1:{i:0;s:6:\"XI RPL\";}','2025-10-11 13:06:53','1','75','');
INSERT INTO `mapel` VALUES ('31','XI-PELAYANAN-FARMASI','a:1:{i:0;s:5:\"LPKKK\";}','283','PELAYANAN-FARMASI','35','5','35','5','70','30','XI','5','a:1:{i:0;s:8:\"XI LPKKK\";}','2025-10-11 13:07:40','1','75','');
INSERT INTO `mapel` VALUES ('32','XII-KOMPUTER-AKUNTANSI','a:1:{i:0;s:2:\"AK\";}','282','KOMPUTER-AKUNTANSI','35','5','35','5','70','30','XII','5','a:1:{i:0;s:6:\"XII AK\";}','2025-10-11 13:08:32','1','75','');
INSERT INTO `mapel` VALUES ('33','XII-HOUSEKEEPING','a:1:{i:0;s:2:\"PH\";}','298','HOUSEKEEPING','35','5','35','5','70','30','XII','5','a:1:{i:0;s:6:\"XII PH\";}','2025-10-11 13:09:12','1','75','');
INSERT INTO `mapel` VALUES ('34','XII-PEMROGRAMAN-WEB','a:1:{i:0;s:3:\"RPL\";}','281','PEMOGRAMAN-WEB','35','5','35','5','70','30','XII','5','a:1:{i:0;s:7:\"XII RPL\";}','2025-10-11 13:09:48','1','75','');

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
) ENGINE=InnoDB AUTO_INCREMENT=1316 DEFAULT CHARSET=utf8;
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
INSERT INTO `soal` VALUES ('441','10','1','Sha&rsquo;Carri Richardson is an American track and field sprinter who competes in the 100 meters and 200 meters. Richardson rose to fame in 2019 as a freshman at Louisiana State University, running 10.75 seconds to break the 100 m collegiate record at the NCAA Division I Championships. She is a talented and promising sprinter who has the potential to be one of the greatest sprinters of all time. She is a force to be reckoned with on the track, and she is an inspiration to many people around the world. <br>Sha&rsquo;Carri Richardson is 5 feet 1 inches (1.55 meters) tall and weight approximately 110 pounds (50 kilograms). She has dark brown hair and brown eyes. Richardson is known for her distinctive style, which she has described as &ldquo;ghetto fabulous.&rdquo; She often wears colorful hair extensions and nails, and she has a signature pose in which she points her fingers in the air. She is also known for her bold fashion choices, which have often been compared to those of Florence Griffith Joyner. Richardson&rsquo;s physical appearance has been the subject of much discussion and debate. Some people have criticized her for her flamboyant style, while others have praised her for her individuality and self-expression. Regardless of one&rsquo;s opinion, there is no doubt that Sha&rsquo;Carri Richardson is a stylish and confident woman who is not afraid to be herself. <br><i>Source: <font color=&rdquo;blue&rdquo;>https://www.youtube.com/watch?v=208naFdiTt8#:~:text=Sha&rsquo;Carri%20Richardson%20Physical%20Appearance,described%20as%20&rdquo;ghetto%20fabulous.&rdquo; </font></i><br> The text tells us about &hellip;.<br>','1','Sha&rsquo;Carri Richardson&rsquo;s looks','Sha&rsquo;Carri Richardson&rsquo;s profession','Sha&rsquo;Carri Richardson&rsquo;s career','The great sprinter, Sha&rsquo;Carri Richardson','Sha&rsquo;Carri Ricarhdson&rsquo;s achievements','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('442','10','2','Sha&rsquo;Carri Richardson is an American track and field sprinter who competes in the 100 meters and 200 meters. Richardson rose to fame in 2019 as a freshman at Louisiana State University, running 10.75 seconds to break the 100 m collegiate record at the NCAA Division I Championships. She is a talented and promising sprinter who has the potential to be one of the greatest sprinters of all time. She is a force to be reckoned with on the track, and she is an inspiration to many people around the world. <br>Sha&rsquo;Carri Richardson is 5 feet 1 inches (1.55 meters) tall and weight approximately 110 pounds (50 kilograms). She has dark brown hair and brown eyes. Richardson is known for her distinctive style, which she has described as &ldquo;ghetto fabulous.&rdquo; She often wears colorful hair extensions and nails, and she has a signature pose in which she points her fingers in the air. She is also known for her bold fashion choices, which have often been compared to those of Florence Griffith Joyner. Richardson&rsquo;s physical appearance has been the subject of much discussion and debate. Some people have criticized her for her flamboyant style, while others have praised her for her individuality and self-expression. Regardless of one&rsquo;s opinion, there is no doubt that Sha&rsquo;Carri Richardson is a stylish and confident woman who is not afraid to be herself. <br><i>Source: <font color=&rdquo;blue&rdquo;>https://www.youtube.com/watch?v=208naFdiTt8#:~:text=Sha&rsquo;Carri%20Richardson%20Physical%20Appearance,described%20as%20&rdquo;ghetto%20fabulous.&rdquo; </font></</i><br> The paragraph 2 tells about &hellip;.<br>','1','Sha&rsquo;Carri Richardson&rsquo;s career as a sprinter','Sha&rsquo;Carri Richardson&rsquo;s education','Sha&rsquo;Carri Richardson&rsquo;s family','Sha&rsquo;Carri Richardson&rsquo;s personality','Sha&rsquo;Carri Ricarhdson&rsquo;s physical appearance','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('443','10','3','Sha&rsquo;Carri Richardson is an American track and field sprinter who competes in the 100 meters and 200 meters. Richardson rose to fame in 2019 as a freshman at Louisiana State University, running 10.75 seconds to break the 100 m collegiate record at the NCAA Division I Championships. She is a talented and promising sprinter who has the potential to be one of the greatest sprinters of all time. She is a force to be reckoned with on the track, and she is an inspiration to many people around the world. <br>Sha&rsquo;Carri Richardson is 5 feet 1 inches (1.55 meters) tall and weight approximately 110 pounds (50 kilograms). She has dark brown hair and brown eyes. Richardson is known for her distinctive style, which she has described as &ldquo;ghetto fabulous.&rdquo; She often wears colorful hair extensions and nails, and she has a signature pose in which she points her fingers in the air. She is also known for her bold fashion choices, which have often been compared to those of Florence Griffith Joyner. Richardson&rsquo;s physical appearance has been the subject of much discussion and debate. Some people have criticized her for her flamboyant style, while others have praised her for her individuality and self-expression. Regardless of one&rsquo;s opinion, there is no doubt that Sha&rsquo;Carri Richardson is a stylish and confident woman who is not afraid to be herself. <br><i>Source: <font color=&rdquo;blue&rdquo;>https://www.youtube.com/watch?v=208naFdiTt8#:~:text=Sha&rsquo;Carri%20Richardson%20Physical%20Appearance,described%20as%20&rdquo;ghetto%20fabulous.&rdquo; </font></</i><br> From the text, we know that Sha&rsquo;Carri Richardson ....<br>','1','Weighs 1.55 kilograms','is 110 cm tall','Always appears with black color','Has got brown eyes','is afraid to be herself','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('444','10','4','Sha&rsquo;Carri Richardson is an American track and field sprinter who competes in the 100 meters and 200 meters. Richardson rose to fame in 2019 as a freshman at Louisiana State University, running 10.75 seconds to break the 100 m collegiate record at the NCAA Division I Championships. She is a talented and promising sprinter who has the potential to be one of the greatest sprinters of all time. She is a force to be reckoned with on the track, and she is an inspiration to many people around the world. <br>Sha&rsquo;Carri Richardson is 5 feet 1 inches (1.55 meters) tall and weight approximately 110 pounds (50 kilograms). She has dark brown hair and brown eyes. Richardson is known for her distinctive style, which she has described as &ldquo;ghetto fabulous.&rdquo; She often wears colorful hair extensions and nails, and she has a signature pose in which she points her fingers in the air. She is also known for her bold fashion choices, which have often been compared to those of Florence Griffith Joyner. Richardson&rsquo;s physical appearance has been the subject of much discussion and debate. Some people have criticized her for her flamboyant style, while others have praised her for her individuality and self-expression. Regardless of one&rsquo;s opinion, there is no doubt that Sha&rsquo;Carri Richardson is a stylish and confident woman who is not afraid to be herself. <br><i>Source: <font color=&rdquo;blue&rdquo;>https://www.youtube.com/watch?v=208naFdiTt8#:~:text=Sha&rsquo;Carri%20Richardson%20Physical%20Appearance,described%20as%20&rdquo;ghetto%20fabulous.&rdquo; </font></</i><br> &ldquo;&hellip;, there is no doubt that Sha&rsquo;Carri Richardson is a stylish and &hellip;.&rdquo; (Paragraph 2) The italic word is the opposite of &lsquo;&hellip;.&rsquo;<br>','1','Fashionable','Modish','Humble','Luxury','Outdated','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('445','10','5','Sha&rsquo;Carri Richardson is an American track and field sprinter who competes in the 100 meters and 200 meters. Richardson rose to fame in 2019 as a freshman at Louisiana State University, running 10.75 seconds to break the 100 m collegiate record at the NCAA Division I Championships. She is a talented and promising sprinter who has the potential to be one of the greatest sprinters of all time. She is a force to be reckoned with on the track, and she is an inspiration to many people around the world. <br>Sha&rsquo;Carri Richardson is 5 feet 1 inches (1.55 meters) tall and weight approximately 110 pounds (50 kilograms). She has dark brown hair and brown eyes. Richardson is known for her distinctive style, which she has described as &ldquo;ghetto fabulous.&rdquo; She often wears colorful hair extensions and nails, and she has a signature pose in which she points her fingers in the air. She is also known for her bold fashion choices, which have often been compared to those of Florence Griffith Joyner. Richardson&rsquo;s physical appearance has been the subject of much discussion and debate. Some people have criticized her for her flamboyant style, while others have praised her for her individuality and self-expression. Regardless of one&rsquo;s opinion, there is no doubt that Sha&rsquo;Carri Richardson is a stylish and confident woman who is not afraid to be herself. <br><i>Source: <font color=&rdquo;blue&rdquo;>https://www.youtube.com/watch?v=208naFdiTt8#:~:text=Sha&rsquo;Carri%20Richardson%20Physical%20Appearance,described%20as%20&rdquo;ghetto%20fabulous.&rdquo; </font></</i><br> The generic structure of the text is &hellip;.<br>','1','Classification- description','Orientation- description','Classification- complication','Orientation- complication','Classification- series of event- reorientation','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('446','10','6','Sha&rsquo;Carri Richardson is an American track and field sprinter who competes in the 100 meters and 200 meters. Richardson rose to fame in 2019 as a freshman at Louisiana State University, running 10.75 seconds to break the 100 m collegiate record at the NCAA Division I Championships. She is a talented and promising sprinter who has the potential to be one of the greatest sprinters of all time. She is a force to be reckoned with on the track, and she is an inspiration to many people around the world. <br>Sha&rsquo;Carri Richardson is 5 feet 1 inches (1.55 meters) tall and weight approximately 110 pounds (50 kilograms). She has dark brown hair and brown eyes. Richardson is known for her distinctive style, which she has described as &ldquo;ghetto fabulous.&rdquo; She often wears colorful hair extensions and nails, and she has a signature pose in which she points her fingers in the air. She is also known for her bold fashion choices, which have often been compared to those of Florence Griffith Joyner. Richardson&rsquo;s physical appearance has been the subject of much discussion and debate. Some people have criticized her for her flamboyant style, while others have praised her for her individuality and self-expression. Regardless of one&rsquo;s opinion, there is no doubt that Sha&rsquo;Carri Richardson is a stylish and confident woman who is not afraid to be herself. <br><i>Source: <font color=&rdquo;blue&rdquo;>https://www.youtube.com/watch?v=208naFdiTt8#:~:text=Sha&rsquo;Carri%20Richardson%20Physical%20Appearance,described%20as%20&rdquo;ghetto%20fabulous.&rdquo; </font></</i><br> What event did Sha&rsquo;Carri Richardson compete in when she broke the collegiate record?<br>','1','200 meters at the World Championships','100 meters at the NCAA Division I Championships','400 meters at the Olympic Games','200 meters at the NCAA Division II Championships','100 meters at the U.S. Trials','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('447','10','7','Sha&rsquo;Carri Richardson is an American track and field sprinter who competes in the 100 meters and 200 meters. Richardson rose to fame in 2019 as a freshman at Louisiana State University, running 10.75 seconds to break the 100 m collegiate record at the NCAA Division I Championships. She is a talented and promising sprinter who has the potential to be one of the greatest sprinters of all time. She is a force to be reckoned with on the track, and she is an inspiration to many people around the world. <br>Sha&rsquo;Carri Richardson is 5 feet 1 inches (1.55 meters) tall and weight approximately 110 pounds (50 kilograms). She has dark brown hair and brown eyes. Richardson is known for her distinctive style, which she has described as &ldquo;ghetto fabulous.&rdquo; She often wears colorful hair extensions and nails, and she has a signature pose in which she points her fingers in the air. She is also known for her bold fashion choices, which have often been compared to those of Florence Griffith Joyner. Richardson&rsquo;s physical appearance has been the subject of much discussion and debate. Some people have criticized her for her flamboyant style, while others have praised her for her individuality and self-expression. Regardless of one&rsquo;s opinion, there is no doubt that Sha&rsquo;Carri Richardson is a stylish and confident woman who is not afraid to be herself. <br><i>Source: <font color=&rdquo;blue&rdquo;>https://www.youtube.com/watch?v=208naFdiTt8#:~:text=Sha&rsquo;Carri%20Richardson%20Physical%20Appearance,described%20as%20&rdquo;ghetto%20fabulous.&rdquo; </font></</i><br>How tall is Sha&rsquo;Carri Richardson?<br>','1','5 feet 5 inches (1.65 meters)','5 feet 1 inch (1.55 meters)','5 feet 7 inches (1.70 meters)','5 feet 3 inches (1.60 meters)','5 feet 9 inches (1.75 meters)','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('448','10','8','Sha&rsquo;Carri Richardson is an American track and field sprinter who competes in the 100 meters and 200 meters. Richardson rose to fame in 2019 as a freshman at Louisiana State University, running 10.75 seconds to break the 100 m collegiate record at the NCAA Division I Championships. She is a talented and promising sprinter who has the potential to be one of the greatest sprinters of all time. She is a force to be reckoned with on the track, and she is an inspiration to many people around the world. <br>Sha&rsquo;Carri Richardson is 5 feet 1 inches (1.55 meters) tall and weight approximately 110 pounds (50 kilograms). She has dark brown hair and brown eyes. Richardson is known for her distinctive style, which she has described as &ldquo;ghetto fabulous.&rdquo; She often wears colorful hair extensions and nails, and she has a signature pose in which she points her fingers in the air. She is also known for her bold fashion choices, which have often been compared to those of Florence Griffith Joyner. Richardson&rsquo;s physical appearance has been the subject of much discussion and debate. Some people have criticized her for her flamboyant style, while others have praised her for her individuality and self-expression. Regardless of one&rsquo;s opinion, there is no doubt that Sha&rsquo;Carri Richardson is a stylish and confident woman who is not afraid to be herself. <br><i>Source: <font color=&rdquo;blue&rdquo;>https://www.youtube.com/watch?v=208naFdiTt8#:~:text=Sha&rsquo;Carri%20Richardson%20Physical%20Appearance,described%20as%20&rdquo;ghetto%20fabulous.&rdquo; </font></</i><br>What is Sha&rsquo;Carri Richardson&rsquo;s distinctive style often called?<br>','1','Sporty chic','Classic glamour','Ghetto fabulous','Street casual','Elegant retro','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('449','10','9','Sha&rsquo;Carri Richardson is an American track and field sprinter who competes in the 100 meters and 200 meters. Richardson rose to fame in 2019 as a freshman at Louisiana State University, running 10.75 seconds to break the 100 m collegiate record at the NCAA Division I Championships. She is a talented and promising sprinter who has the potential to be one of the greatest sprinters of all time. She is a force to be reckoned with on the track, and she is an inspiration to many people around the world. <br>Sha&rsquo;Carri Richardson is 5 feet 1 inches (1.55 meters) tall and weight approximately 110 pounds (50 kilograms). She has dark brown hair and brown eyes. Richardson is known for her distinctive style, which she has described as &ldquo;ghetto fabulous.&rdquo; She often wears colorful hair extensions and nails, and she has a signature pose in which she points her fingers in the air. She is also known for her bold fashion choices, which have often been compared to those of Florence Griffith Joyner. Richardson&rsquo;s physical appearance has been the subject of much discussion and debate. Some people have criticized her for her flamboyant style, while others have praised her for her individuality and self-expression. Regardless of one&rsquo;s opinion, there is no doubt that Sha&rsquo;Carri Richardson is a stylish and confident woman who is not afraid to be herself. <br><i>Source: <font color=&rdquo;blue&rdquo;>https://www.youtube.com/watch?v=208naFdiTt8#:~:text=Sha&rsquo;Carri%20Richardson%20Physical%20Appearance,described%20as%20&rdquo;ghetto%20fabulous.&rdquo; </font></</i><br>Which famous sprinter&rsquo;s fashion is Sha&rsquo;Carri Richardson often compared to?<br>','1','Allyson Felix','Usain Bolt','Florence Griffith Joyner','Carmelita Jeter','Shelly-Ann Fraser-Pryce','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('450','10','10','Sha&rsquo;Carri Richardson is an American track and field sprinter who competes in the 100 meters and 200 meters. Richardson rose to fame in 2019 as a freshman at Louisiana State University, running 10.75 seconds to break the 100 m collegiate record at the NCAA Division I Championships. She is a talented and promising sprinter who has the potential to be one of the greatest sprinters of all time. She is a force to be reckoned with on the track, and she is an inspiration to many people around the world. <br>Sha&rsquo;Carri Richardson is 5 feet 1 inches (1.55 meters) tall and weight approximately 110 pounds (50 kilograms). She has dark brown hair and brown eyes. Richardson is known for her distinctive style, which she has described as &ldquo;ghetto fabulous.&rdquo; She often wears colorful hair extensions and nails, and she has a signature pose in which she points her fingers in the air. She is also known for her bold fashion choices, which have often been compared to those of Florence Griffith Joyner. Richardson&rsquo;s physical appearance has been the subject of much discussion and debate. Some people have criticized her for her flamboyant style, while others have praised her for her individuality and self-expression. Regardless of one&rsquo;s opinion, there is no doubt that Sha&rsquo;Carri Richardson is a stylish and confident woman who is not afraid to be herself. <br><i>Source: <font color=&rdquo;blue&rdquo;>https://www.youtube.com/watch?v=208naFdiTt8#:~:text=Sha&rsquo;Carri%20Richardson%20Physical%20Appearance,described%20as%20&rdquo;ghetto%20fabulous.&rdquo; </font></</i><br>What is one of Sha&rsquo;Carri Richardson&rsquo;s signature gestures on the track?<br>','1','Crossing her arms across her chest','Blowing kisses to the crowd','Pointing her fingers in the air','Raising a fist high above her head','Bowing down after finishing a race','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('451','10','11','Novak Djokovic was born on May 22, 1987, in Belgrade, Serbia. He is a Serbian tennis player who was one of the greatest men&rsquo;s players in the history of the game. His 21 Grand Slam singles titles included a record nine Australian Open championships. <br>Novak Djokovic stands at 188 centimeters and weighs 80 kilograms. He is of great build with a white skin. He has short dark brown hair and hazel eyes. <br>Novak Djokovic has interesting personalities. He is full of energy, always on the go, fidgety, and quite hyperactive. He has great ability to put thoughts into action, and there is no wait once he sets his mind on something. Where others tend to think or dream, Novak Djokovic already takes action while radiating energy, enthusiasm, and livelihood around. Novak Djokovic likes to read books. His favorite novel is &ldquo;Hunger Games.&rdquo; He can speak several languages, including Serbian, French, English, and German. <br>Source: https://www.britannica.com/biography/Novak-Djokovic. <br> &ldquo;He is a Serbian tennis &rdquo; (Paragraph 1)The underlined word shows Novak Djokovic&lsquo;s &hellip;.<br>','1','Country','Hometown','Nationality','Title','Stage name','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('452','10','12','Novak Djokovic was born on May 22, 1987, in Belgrade, Serbia. He is a Serbian tennis player who was one of the greatest men&rsquo;s players in the history of the game. His 21 Grand Slam singles titles included a record nine Australian Open championships. <br>Novak Djokovic stands at 188 centimeters and weighs 80 kilograms. He is of great build with a white skin. He has short dark brown hair and hazel eyes. <br>Novak Djokovic has interesting personalities. He is full of energy, always on the go, fidgety, and quite hyperactive. He has great ability to put thoughts into action, and there is no wait once he sets his mind on something. Where others tend to think or dream, Novak Djokovic already takes action while radiating energy, enthusiasm, and livelihood around. Novak Djokovic likes to read books. His favorite novel is &ldquo;Hunger Games.&rdquo; He can speak several languages, including Serbian, French, English, and German. <br>Source: https://www.britannica.com/biography/Novak-Djokovic. <br> The main idea of the paragraph 2 is &hellip;.<br>','1','Novak Djokovic&rsquo;s job','Novak Djokovic&rsquo;s nationality','Novak Djokovic&rsquo;s appearance','Novak Djokovic&rsquo;s eyes color','Novak Djokovic&rsquo;s hobby','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('453','10','13','Novak Djokovic was born on May 22, 1987, in Belgrade, Serbia. He is a Serbian tennis player who was one of the greatest men&rsquo;s players in the history of the game. His 21 Grand Slam singles titles included a record nine Australian Open championships. <br>Novak Djokovic stands at 188 centimeters and weighs 80 kilograms. He is of great build with a white skin. He has short dark brown hair and hazel eyes. <br>Novak Djokovic has interesting personalities. He is full of energy, always on the go, fidgety, and quite hyperactive. He has great ability to put thoughts into action, and there is no wait once he sets his mind on something. Where others tend to think or dream, Novak Djokovic already takes action while radiating energy, enthusiasm, and livelihood around. Novak Djokovic likes to read books. His favorite novel is &ldquo;Hunger Games.&rdquo; He can speak several languages, including Serbian, French, English, and German. <br>Source: https://www.britannica.com/biography/Novak-Djokovic. <br> &ldquo;He can speak several languages, including Serbian, French, English, and German.&rdquo; (Paragraph 3)What does the sentence mean?<br>','1','Novak Djokovic is a smart man.','Novak Djokovic likes reading a dictionary.&rsquo;','Novak Djokociv has four nationalities.','Novak Djokovic is a polyglot.','Novak Djokovic is a sociable.','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('454','10','14','Novak Djokovic was born on May 22, 1987, in Belgrade, Serbia. He is a Serbian tennis player who was one of the greatest men&rsquo;s players in the history of the game. His 21 Grand Slam singles titles included a record nine Australian Open championships. <br>Novak Djokovic stands at 188 centimeters and weighs 80 kilograms. He is of great build with a white skin. He has short dark brown hair and hazel eyes. <br>Novak Djokovic has interesting personalities. He is full of energy, always on the go, fidgety, and quite hyperactive. He has great ability to put thoughts into action, and there is no wait once he sets his mind on something. Where others tend to think or dream, Novak Djokovic already takes action while radiating energy, enthusiasm, and livelihood around. Novak Djokovic likes to read books. His favorite novel is &ldquo;Hunger Games.&rdquo; He can speak several languages, including Serbian, French, English, and German. <br>Source: https://www.britannica.com/biography/Novak-Djokovic. <br> According to the text, Novak was &hellip; old in 2022.<br>','1','34','35','36','37','38','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('455','10','15','Novak Djokovic was born on May 22, 1987, in Belgrade, Serbia. He is a Serbian tennis player who was one of the greatest men&rsquo;s players in the history of the game. His 21 Grand Slam singles titles included a record nine Australian Open championships. <br>Novak Djokovic stands at 188 centimeters and weighs 80 kilograms. He is of great build with a white skin. He has short dark brown hair and hazel eyes. <br>Novak Djokovic has interesting personalities. He is full of energy, always on the go, fidgety, and quite hyperactive. He has great ability to put thoughts into action, and there is no wait once he sets his mind on something. Where others tend to think or dream, Novak Djokovic already takes action while radiating energy, enthusiasm, and livelihood around. Novak Djokovic likes to read books. His favorite novel is &ldquo;Hunger Games.&rdquo; He can speak several languages, including Serbian, French, English, and German. <br>Source: https://www.britannica.com/biography/Novak-Djokovic. <br> The paragraph 3 mostly talks about Novak Djokovic&rsquo;s &hellip;.<br>','1','Birthplace','Personality trait','Complexion','Physical trait','Dream','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('456','10','16','Novak Djokovic was born on May 22, 1987, in Belgrade, Serbia. He is a Serbian tennis player who was one of the greatest men&rsquo;s players in the history of the game. His 21 Grand Slam singles titles included a record nine Australian Open championships. <br>Novak Djokovic stands at 188 centimeters and weighs 80 kilograms. He is of great build with a white skin. He has short dark brown hair and hazel eyes. <br>Novak Djokovic has interesting personalities. He is full of energy, always on the go, fidgety, and quite hyperactive. He has great ability to put thoughts into action, and there is no wait once he sets his mind on something. Where others tend to think or dream, Novak Djokovic already takes action while radiating energy, enthusiasm, and livelihood around. Novak Djokovic likes to read books. His favorite novel is &ldquo;Hunger Games.&rdquo; He can speak several languages, including Serbian, French, English, and German. <br>Source: https://www.britannica.com/biography/Novak-Djokovic. <br>When was Novak Djokovic born?<br>','1','May 22, 1985','May 22, 1987','June 22, 1987','May 21, 1987','June 21, 1985','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('457','10','17','Novak Djokovic was born on May 22, 1987, in Belgrade, Serbia. He is a Serbian tennis player who was one of the greatest men&rsquo;s players in the history of the game. His 21 Grand Slam singles titles included a record nine Australian Open championships. <br>Novak Djokovic stands at 188 centimeters and weighs 80 kilograms. He is of great build with a white skin. He has short dark brown hair and hazel eyes. <br>Novak Djokovic has interesting personalities. He is full of energy, always on the go, fidgety, and quite hyperactive. He has great ability to put thoughts into action, and there is no wait once he sets his mind on something. Where others tend to think or dream, Novak Djokovic already takes action while radiating energy, enthusiasm, and livelihood around. Novak Djokovic likes to read books. His favorite novel is &ldquo;Hunger Games.&rdquo; He can speak several languages, including Serbian, French, English, and German. <br>Source: https://www.britannica.com/biography/Novak-Djokovic. <br> How many Grand Slam singles titles has Novak Djokovic won according to the text?<br>','1','20','21','22','23','19','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('458','10','18','Novak Djokovic was born on May 22, 1987, in Belgrade, Serbia. He is a Serbian tennis player who was one of the greatest men&rsquo;s players in the history of the game. His 21 Grand Slam singles titles included a record nine Australian Open championships. <br>Novak Djokovic stands at 188 centimeters and weighs 80 kilograms. He is of great build with a white skin. He has short dark brown hair and hazel eyes. <br>Novak Djokovic has interesting personalities. He is full of energy, always on the go, fidgety, and quite hyperactive. He has great ability to put thoughts into action, and there is no wait once he sets his mind on something. Where others tend to think or dream, Novak Djokovic already takes action while radiating energy, enthusiasm, and livelihood around. Novak Djokovic likes to read books. His favorite novel is &ldquo;Hunger Games.&rdquo; He can speak several languages, including Serbian, French, English, and German. <br>Source: https://www.britannica.com/biography/Novak-Djokovic. <br> What is Novak Djokovic&rsquo;s height and weight?<br>','1','180 cm and 75 kg','185 cm and 78 kg','188 cm and 80 kg','190 cm and 82 kg','178 cm and 70 kg','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('459','10','19','Novak Djokovic was born on May 22, 1987, in Belgrade, Serbia. He is a Serbian tennis player who was one of the greatest men&rsquo;s players in the history of the game. His 21 Grand Slam singles titles included a record nine Australian Open championships. <br>Novak Djokovic stands at 188 centimeters and weighs 80 kilograms. He is of great build with a white skin. He has short dark brown hair and hazel eyes. <br>Novak Djokovic has interesting personalities. He is full of energy, always on the go, fidgety, and quite hyperactive. He has great ability to put thoughts into action, and there is no wait once he sets his mind on something. Where others tend to think or dream, Novak Djokovic already takes action while radiating energy, enthusiasm, and livelihood around. Novak Djokovic likes to read books. His favorite novel is &ldquo;Hunger Games.&rdquo; He can speak several languages, including Serbian, French, English, and German. <br>Source: https://www.britannica.com/biography/Novak-Djokovic. <br> What is Novak Djokovic&rsquo;s favorite novel?<br>','1','Harry Potter','The Lord of the Rings','Hunger Games','Twilight','Game of Thrones','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('460','10','20','Novak Djokovic was born on May 22, 1987, in Belgrade, Serbia. He is a Serbian tennis player who was one of the greatest men&rsquo;s players in the history of the game. His 21 Grand Slam singles titles included a record nine Australian Open championships. <br>Novak Djokovic stands at 188 centimeters and weighs 80 kilograms. He is of great build with a white skin. He has short dark brown hair and hazel eyes. <br>Novak Djokovic has interesting personalities. He is full of energy, always on the go, fidgety, and quite hyperactive. He has great ability to put thoughts into action, and there is no wait once he sets his mind on something. Where others tend to think or dream, Novak Djokovic already takes action while radiating energy, enthusiasm, and livelihood around. Novak Djokovic likes to read books. His favorite novel is &ldquo;Hunger Games.&rdquo; He can speak several languages, including Serbian, French, English, and German. <br>Source: https://www.britannica.com/biography/Novak-Djokovic. <br> Which of the following languages can Novak Djokovic speak?<br>','1','Serbian, French, English, German','Serbian, Italian, English, Spanish','Serbian, French, English, Russian','Serbian, French, English, Chinese','Serbian, English, Spanish, Arabic','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('461','10','21','There are some rising stars in badminton. One of them is Kodai Naraoka from Japan. Born on June 30, 2001, in Aomori, Kodai Naraoka started pursuing badminton when he was five years old. Due to his hard work and discipline, he is one of the top badminton players in men&rsquo;s singles now. <br>Kodai Naraoka stands at 1.73 meters tall. He weighs 69 kilograms. He&rsquo;s got an oval face with small and black eyes. Besides, he&rsquo;s got straight black hair. He always appears with a headband on court. Like other Japanese people, he&rsquo;s got a white skin. <br>Kodai Naraoka is known as a fighter. His moves on court are always impressive. He always shows his tenacity and perseverance in every single match that he has. He prefers playing a rally in each match. Although he seldom smashes or attacks, he rarely does an unforced error in the matches. He, of course, is perfectly fit and physically strong. <br>As a top player, Kodai Naraoka has won some badminton championships. In his junior career, he has won a bronze at World Junior Championships in 2017 and a silver at the World Junior Championships in 2018. He won five titles and two runners-up at the BWF International Challenge in 2018 to 2019. He won a silver at the BWF World Championship in 2023. He won two titles and four runners-up at the BWF World Tour in 2022 to 2023. <br> From the text, we know that ....<br>','1','Kodai Naraoka is twenty four years old now.','Kodai Naraoka became the winner at the BWF World Championship in 2023.','Kodai Naraoka&rsquo;s got a round face with big eyes.','Kodai Naraoka has become a professional badminton player since he was five years old.','Kodai Naraoka plays badminton in men&rsquo;s doubles.','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('462','10','22','There are some rising stars in badminton. One of them is Kodai Naraoka from Japan. Born on June 30, 2001, in Aomori, Kodai Naraoka started pursuing badminton when he was five years old. Due to his hard work and discipline, he is one of the top badminton players in men&rsquo;s singles now. <br>Kodai Naraoka stands at 1.73 meters tall. He weighs 69 kilograms. He&rsquo;s got an oval face with small and black eyes. Besides, he&rsquo;s got straight black hair. He always appears with a headband on court. Like other Japanese people, he&rsquo;s got a white skin. <br>Kodai Naraoka is known as a fighter. His moves on court are always impressive. He always shows his tenacity and perseverance in every single match that he has. He prefers playing a rally in each match. Although he seldom smashes or attacks, he rarely does an unforced error in the matches. He, of course, is perfectly fit and physically strong. <br>As a top player, Kodai Naraoka has won some badminton championships. In his junior career, he has won a bronze at World Junior Championships in 2017 and a silver at the World Junior Championships in 2018. He won five titles and two runners-up at the BWF International Challenge in 2018 to 2019. He won a silver at the BWF World Championship in 2023. He won two titles and four runners-up at the BWF World Tour in 2022 to 2023. <br> &ldquo;He always shows his tenacity and perseverance &hellip;.&rdquo; (Paragraph 3)The italic word is the closest in meaning to &lsquo;&hellip;.&rsquo;<br>','1','Persistence','Capitulate','Curiosity','Inconsistence','Helplessness','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('463','10','23','There are some rising stars in badminton. One of them is Kodai Naraoka from Japan. Born on June 30, 2001, in Aomori, Kodai Naraoka started pursuing badminton when he was five years old. Due to his hard work and discipline, he is one of the top badminton players in men&rsquo;s singles now. <br>Kodai Naraoka stands at 1.73 meters tall. He weighs 69 kilograms. He&rsquo;s got an oval face with small and black eyes. Besides, he&rsquo;s got straight black hair. He always appears with a headband on court. Like other Japanese people, he&rsquo;s got a white skin. <br>Kodai Naraoka is known as a fighter. His moves on court are always impressive. He always shows his tenacity and perseverance in every single match that he has. He prefers playing a rally in each match. Although he seldom smashes or attacks, he rarely does an unforced error in the matches. He, of course, is perfectly fit and physically strong. <br>As a top player, Kodai Naraoka has won some badminton championships. In his junior career, he has won a bronze at World Junior Championships in 2017 and a silver at the World Junior Championships in 2018. He won five titles and two runners-up at the BWF International Challenge in 2018 to 2019. He won a silver at the BWF World Championship in 2023. He won two titles and four runners-up at the BWF World Tour in 2022 to 2023. <br> The purpose of the text is to &hellip;.<br>','1','Persuade the readers to be tenacious like Kodai Naraoka','Assure the reader why Kodai Naraoka is a top badminton player','Tell about Kodai Naraoka&rsquo;s appearance, personality, and achievements','Present the writer&rsquo;s opinions about Kodai Naraoka','Retell Kodai Naraoka&rsquo;s career as a rising star','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('464','10','24','There are some rising stars in badminton. One of them is Kodai Naraoka from Japan. Born on June 30, 2001, in Aomori, Kodai Naraoka started pursuing badminton when he was five years old. Due to his hard work and discipline, he is one of the top badminton players in men&rsquo;s singles now. <br>Kodai Naraoka stands at 1.73 meters tall. He weighs 69 kilograms. He&rsquo;s got an oval face with small and black eyes. Besides, he&rsquo;s got straight black hair. He always appears with a headband on court. Like other Japanese people, he&rsquo;s got a white skin. <br>Kodai Naraoka is known as a fighter. His moves on court are always impressive. He always shows his tenacity and perseverance in every single match that he has. He prefers playing a rally in each match. Although he seldom smashes or attacks, he rarely does an unforced error in the matches. He, of course, is perfectly fit and physically strong. <br>As a top player, Kodai Naraoka has won some badminton championships. In his junior career, he has won a bronze at World Junior Championships in 2017 and a silver at the World Junior Championships in 2018. He won five titles and two runners-up at the BWF International Challenge in 2018 to 2019. He won a silver at the BWF World Championship in 2023. He won two titles and four runners-up at the BWF World Tour in 2022 to 2023. <br> What does Kodai Naraoka look like?<br>','1','He&rsquo;s got a tanned skin.','His eyes are blue in color.','He is 175 cm.','He&rsquo;s got black and straight hair.','He&rsquo;s got a round face.','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('465','10','25','There are some rising stars in badminton. One of them is Kodai Naraoka from Japan. Born on June 30, 2001, in Aomori, Kodai Naraoka started pursuing badminton when he was five years old. Due to his hard work and discipline, he is one of the top badminton players in men&rsquo;s singles now. <br>Kodai Naraoka stands at 1.73 meters tall. He weighs 69 kilograms. He&rsquo;s got an oval face with small and black eyes. Besides, he&rsquo;s got straight black hair. He always appears with a headband on court. Like other Japanese people, he&rsquo;s got a white skin. <br>Kodai Naraoka is known as a fighter. His moves on court are always impressive. He always shows his tenacity and perseverance in every single match that he has. He prefers playing a rally in each match. Although he seldom smashes or attacks, he rarely does an unforced error in the matches. He, of course, is perfectly fit and physically strong. <br>As a top player, Kodai Naraoka has won some badminton championships. In his junior career, he has won a bronze at World Junior Championships in 2017 and a silver at the World Junior Championships in 2018. He won five titles and two runners-up at the BWF International Challenge in 2018 to 2019. He won a silver at the BWF World Championship in 2023. He won two titles and four runners-up at the BWF World Tour in 2022 to 2023. <br> The main idea of the last paragraph is &hellip;.<br>','1','The reason why Kodai Naraoka has won a lot of titles','Kodai Naraoka&rsquo;s achievements since 2017 to 2023','What Kodai Naraoka won in his junior career','The reasons why Kodai Naraoka has won some titles since his junior career','Why Kodai Naraoka becomes a top player','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('466','10','26','There are some rising stars in badminton. One of them is Kodai Naraoka from Japan. Born on June 30, 2001, in Aomori, Kodai Naraoka started pursuing badminton when he was five years old. Due to his hard work and discipline, he is one of the top badminton players in men&rsquo;s singles now. <br>Kodai Naraoka stands at 1.73 meters tall. He weighs 69 kilograms. He&rsquo;s got an oval face with small and black eyes. Besides, he&rsquo;s got straight black hair. He always appears with a headband on court. Like other Japanese people, he&rsquo;s got a white skin. <br>Kodai Naraoka is known as a fighter. His moves on court are always impressive. He always shows his tenacity and perseverance in every single match that he has. He prefers playing a rally in each match. Although he seldom smashes or attacks, he rarely does an unforced error in the matches. He, of course, is perfectly fit and physically strong. <br>As a top player, Kodai Naraoka has won some badminton championships. In his junior career, he has won a bronze at World Junior Championships in 2017 and a silver at the World Junior Championships in 2018. He won five titles and two runners-up at the BWF International Challenge in 2018 to 2019. He won a silver at the BWF World Championship in 2023. He won two titles and four runners-up at the BWF World Tour in 2022 to 2023. <br> When was Kodai Naraoka born?<br>','1','June 3, 2000','June 30, 2001','July 3, 2001','June 13, 2002','July 30, 2000','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('467','10','27','There are some rising stars in badminton. One of them is Kodai Naraoka from Japan. Born on June 30, 2001, in Aomori, Kodai Naraoka started pursuing badminton when he was five years old. Due to his hard work and discipline, he is one of the top badminton players in men&rsquo;s singles now. <br>Kodai Naraoka stands at 1.73 meters tall. He weighs 69 kilograms. He&rsquo;s got an oval face with small and black eyes. Besides, he&rsquo;s got straight black hair. He always appears with a headband on court. Like other Japanese people, he&rsquo;s got a white skin. <br>Kodai Naraoka is known as a fighter. His moves on court are always impressive. He always shows his tenacity and perseverance in every single match that he has. He prefers playing a rally in each match. Although he seldom smashes or attacks, he rarely does an unforced error in the matches. He, of course, is perfectly fit and physically strong. <br>As a top player, Kodai Naraoka has won some badminton championships. In his junior career, he has won a bronze at World Junior Championships in 2017 and a silver at the World Junior Championships in 2018. He won five titles and two runners-up at the BWF International Challenge in 2018 to 2019. He won a silver at the BWF World Championship in 2023. He won two titles and four runners-up at the BWF World Tour in 2022 to 2023. <br> What is Kodai Naraoka&rsquo;s height and weight?<br>','1','1.75 m and 72 kg','1.70 m and 68 kg','1.73 m and 69 kg','1.80 m and 70 kg','1.72 m and 65 kg','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('468','10','28','There are some rising stars in badminton. One of them is Kodai Naraoka from Japan. Born on June 30, 2001, in Aomori, Kodai Naraoka started pursuing badminton when he was five years old. Due to his hard work and discipline, he is one of the top badminton players in men&rsquo;s singles now. <br>Kodai Naraoka stands at 1.73 meters tall. He weighs 69 kilograms. He&rsquo;s got an oval face with small and black eyes. Besides, he&rsquo;s got straight black hair. He always appears with a headband on court. Like other Japanese people, he&rsquo;s got a white skin. <br>Kodai Naraoka is known as a fighter. His moves on court are always impressive. He always shows his tenacity and perseverance in every single match that he has. He prefers playing a rally in each match. Although he seldom smashes or attacks, he rarely does an unforced error in the matches. He, of course, is perfectly fit and physically strong. <br>As a top player, Kodai Naraoka has won some badminton championships. In his junior career, he has won a bronze at World Junior Championships in 2017 and a silver at the World Junior Championships in 2018. He won five titles and two runners-up at the BWF International Challenge in 2018 to 2019. He won a silver at the BWF World Championship in 2023. He won two titles and four runners-up at the BWF World Tour in 2022 to 2023. <br> What is Kodai Naraoka&rsquo;s playing style?<br>','1','Aggressive with many smashes','Defensive with high lifts','Prefers rallies and avoids unforced errors','Always plays doubles instead of singles','Mostly relies on drop shots','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('469','10','29','There are some rising stars in badminton. One of them is Kodai Naraoka from Japan. Born on June 30, 2001, in Aomori, Kodai Naraoka started pursuing badminton when he was five years old. Due to his hard work and discipline, he is one of the top badminton players in men&rsquo;s singles now. <br>Kodai Naraoka stands at 1.73 meters tall. He weighs 69 kilograms. He&rsquo;s got an oval face with small and black eyes. Besides, he&rsquo;s got straight black hair. He always appears with a headband on court. Like other Japanese people, he&rsquo;s got a white skin. <br>Kodai Naraoka is known as a fighter. His moves on court are always impressive. He always shows his tenacity and perseverance in every single match that he has. He prefers playing a rally in each match. Although he seldom smashes or attacks, he rarely does an unforced error in the matches. He, of course, is perfectly fit and physically strong. <br>As a top player, Kodai Naraoka has won some badminton championships. In his junior career, he has won a bronze at World Junior Championships in 2017 and a silver at the World Junior Championships in 2018. He won five titles and two runners-up at the BWF International Challenge in 2018 to 2019. He won a silver at the BWF World Championship in 2023. He won two titles and four runners-up at the BWF World Tour in 2022 to 2023. <br> Which medal did Kodai Naraoka win at the BWF World Championship in 2023?<br>','1','Gold','Bronze','Silver','None','Platinum','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('470','10','30','There are some rising stars in badminton. One of them is Kodai Naraoka from Japan. Born on June 30, 2001, in Aomori, Kodai Naraoka started pursuing badminton when he was five years old. Due to his hard work and discipline, he is one of the top badminton players in men&rsquo;s singles now. <br>Kodai Naraoka stands at 1.73 meters tall. He weighs 69 kilograms. He&rsquo;s got an oval face with small and black eyes. Besides, he&rsquo;s got straight black hair. He always appears with a headband on court. Like other Japanese people, he&rsquo;s got a white skin. <br>Kodai Naraoka is known as a fighter. His moves on court are always impressive. He always shows his tenacity and perseverance in every single match that he has. He prefers playing a rally in each match. Although he seldom smashes or attacks, he rarely does an unforced error in the matches. He, of course, is perfectly fit and physically strong. <br>As a top player, Kodai Naraoka has won some badminton championships. In his junior career, he has won a bronze at World Junior Championships in 2017 and a silver at the World Junior Championships in 2018. He won five titles and two runners-up at the BWF International Challenge in 2018 to 2019. He won a silver at the BWF World Championship in 2023. He won two titles and four runners-up at the BWF World Tour in 2022 to 2023. <br>How many titles did Kodai Naraoka win at the BWF International Challenge between 2018 and 2019?<br>','1','Three','Four','Five','Six','Seven','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('471','10','31','Have you ever heard Neeraj Chopra? Yes, he is the first Asian athlete to win the Olympic gold medal in javelin throw. He is also the first Asian athlete to win the gold medal in the World Athletics Championships 2023. As a track and field athlete, he is reigning Olympic champion, World champion, and Diamond league in the javelin throw. <br>Neeraj Chopra, who was born on December 24, 1997, has got black straight hair. He is 1.82 meters and weighs 86 kg. He, whose eyes are black in color, likes wearing casual clothes. He&rsquo;s got a beardless long face and an athletic body. <br>For his incomparable contributions in sports, Neeraj Chopra has been awarded some awards. He received the Padma Shri Award in 2022. In the same year, he also won the Param Vishisht Seva Medal. He was awarded the Vishisht Seva Medal by the Indian Army in 2020. Besides, he received the Arjuna Award in 2018. <br> What makes Neeraj Chopra a historic athlete in Asia?<br>','1','He is the first Asian athlete to win the Olympic gold medal in javelin throw','He is the first Asian athlete to win a gold medal in the 100 meters sprint','He is the youngest athlete to compete in the Olympics','He is the first Asian athlete to break the world record in high jump','He is the first Asian athlete to win a gold medal in long jump','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('472','10','32','Have you ever heard Neeraj Chopra? Yes, he is the first Asian athlete to win the Olympic gold medal in javelin throw. He is also the first Asian athlete to win the gold medal in the World Athletics Championships 2023. As a track and field athlete, he is reigning Olympic champion, World champion, and Diamond league in the javelin throw. <br>Neeraj Chopra, who was born on December 24, 1997, has got black straight hair. He is 1.82 meters and weighs 86 kg. He, whose eyes are black in color, likes wearing casual clothes. He&rsquo;s got a beardless long face and an athletic body. <br>For his incomparable contributions in sports, Neeraj Chopra has been awarded some awards. He received the Padma Shri Award in 2022. In the same year, he also won the Param Vishisht Seva Medal. He was awarded the Vishisht Seva Medal by the Indian Army in 2020. Besides, he received the Arjuna Award in 2018. <br> When was Neeraj Chopra born?<br>','1','December 4, 1996','December 24, 1997','December 14, 1997','December 24, 1996','November 24, 1997','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('473','10','33','Have you ever heard Neeraj Chopra? Yes, he is the first Asian athlete to win the Olympic gold medal in javelin throw. He is also the first Asian athlete to win the gold medal in the World Athletics Championships 2023. As a track and field athlete, he is reigning Olympic champion, World champion, and Diamond league in the javelin throw. <br>Neeraj Chopra, who was born on December 24, 1997, has got black straight hair. He is 1.82 meters and weighs 86 kg. He, whose eyes are black in color, likes wearing casual clothes. He&rsquo;s got a beardless long face and an athletic body. <br>For his incomparable contributions in sports, Neeraj Chopra has been awarded some awards. He received the Padma Shri Award in 2022. In the same year, he also won the Param Vishisht Seva Medal. He was awarded the Vishisht Seva Medal by the Indian Army in 2020. Besides, he received the Arjuna Award in 2018. <br> What is Neeraj Chopra&rsquo;s physical appearance?<br>','1','1.80 m tall, 85 kg, curly brown hair, brown eyes','1.82 m tall, 86 kg, straight black hair, black eyes','1.78 m tall, 80 kg, straight brown hair, hazel eyes','1.85 m tall, 90 kg, wavy black hair, blue eyes','1.83 m tall, 84 kg, straight black hair, green eyes','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('474','10','34','Have you ever heard Neeraj Chopra? Yes, he is the first Asian athlete to win the Olympic gold medal in javelin throw. He is also the first Asian athlete to win the gold medal in the World Athletics Championships 2023. As a track and field athlete, he is reigning Olympic champion, World champion, and Diamond league in the javelin throw. <br>Neeraj Chopra, who was born on December 24, 1997, has got black straight hair. He is 1.82 meters and weighs 86 kg. He, whose eyes are black in color, likes wearing casual clothes. He&rsquo;s got a beardless long face and an athletic body. <br>For his incomparable contributions in sports, Neeraj Chopra has been awarded some awards. He received the Padma Shri Award in 2022. In the same year, he also won the Param Vishisht Seva Medal. He was awarded the Vishisht Seva Medal by the Indian Army in 2020. Besides, he received the Arjuna Award in 2018. <br> Which award did Neeraj Chopra receive in 2018?<br>','1','Param Vishisht Seva Medal','Arjuna Award','Padma Shri Award','Vishisht Seva Medal','Olympic Gold Medal','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('475','10','35','Have you ever heard Neeraj Chopra? Yes, he is the first Asian athlete to win the Olympic gold medal in javelin throw. He is also the first Asian athlete to win the gold medal in the World Athletics Championships 2023. As a track and field athlete, he is reigning Olympic champion, World champion, and Diamond league in the javelin throw. <br>Neeraj Chopra, who was born on December 24, 1997, has got black straight hair. He is 1.82 meters and weighs 86 kg. He, whose eyes are black in color, likes wearing casual clothes. He&rsquo;s got a beardless long face and an athletic body. <br>For his incomparable contributions in sports, Neeraj Chopra has been awarded some awards. He received the Padma Shri Award in 2022. In the same year, he also won the Param Vishisht Seva Medal. He was awarded the Vishisht Seva Medal by the Indian Army in 2020. Besides, he received the Arjuna Award in 2018. <br> Which two awards did Neeraj Chopra receive in 2022?<br>','1','Padma Shri Award and Vishisht Seva Medal','Arjuna Award and Olympic Gold Medal','Padma Shri Award and Param Vishisht Seva Medal','Param Vishisht Seva Medal and Arjuna Award','Olympic Gold Medal and World Championship Medal','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('476','10','1','<b>Answer the following questions according to the text above!</b><br>You can&rsquo;t have a discussion about the World Cup without the name Cristiano Ronaldo coming up. The Portuguese footballer has been described as &ldquo;unstoppable,&rdquo; &ldquo;predatory,&rdquo; and &ldquo;intense.&rdquo; And for good reason. One of the most talented players the game has ever seen, Ronaldo is hyper-competitive, confident and has the talent to back up his swagger. A prolific striker, Ronaldo holds more than his Fair share of scoring records and has been named player of the year multiple times. In January 2014, he hit a major milestone, scoring the 400th goal of his Career while playing for Real Madrid. <br>Like a true D personality, he dominates on the field. He likes to call the shots, is aggressive on the offense, and hates to lose. His personality style also makes him prone to impatience. He lacks tolerance for the mistakes of his teammates and can often be seen on the field groaning, yelling, and making frustrated gestures with his hands. Still, as a team leader, he commands respect and admiration (and a healthy dose of fear) from everyone he plays with. <br>Source: <br>https://blog.discinsights.com/what-is-the-disc-personality-type-of-your-favorite footballer#:~:text=The%20Portuguese%20footballer%20has%20been,to%20back%20up%20his%20swagge<br> What does the text tell about. ?<br>','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('477','10','2','<b>Answer the following questions according to the text above!</b><br>You can&rsquo;t have a discussion about the World Cup without the name Cristiano Ronaldo coming up. The Portuguese footballer has been described as &ldquo;unstoppable,&rdquo; &ldquo;predatory,&rdquo; and &ldquo;intense.&rdquo; And for good reason. One of the most talented players the game has ever seen, Ronaldo is hyper-competitive, confident and has the talent to back up his swagger. A prolific striker, Ronaldo holds more than his Fair share of scoring records and has been named player of the year multiple times. In January 2014, he hit a major milestone, scoring the 400th goal of his Career while playing for Real Madrid. <br>Like a true D personality, he dominates on the field. He likes to call the shots, is aggressive on the offense, and hates to lose. His personality style also makes him prone to impatience. He lacks tolerance for the mistakes of his teammates and can often be seen on the field groaning, yelling, and making frustrated gestures with his hands. Still, as a team leader, he commands respect and admiration (and a healthy dose of fear) from everyone he plays with. <br>Source: <br>https://blog.discinsights.com/what-is-the-disc-personality-type-of-your-favorite footballer#:~:text=The%20Portuguese%20footballer%20has%20been,to%20back%20up%20his%20swagge<br> What is the purpose of the text ?<br>','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('478','10','3','<b>Answer the following questions according to the text above!</b><br>You can&rsquo;t have a discussion about the World Cup without the name Cristiano Ronaldo coming up. The Portuguese footballer has been described as &ldquo;unstoppable,&rdquo; &ldquo;predatory,&rdquo; and &ldquo;intense.&rdquo; And for good reason. One of the most talented players the game has ever seen, Ronaldo is hyper-competitive, confident and has the talent to back up his swagger. A prolific striker, Ronaldo holds more than his Fair share of scoring records and has been named player of the year multiple times. In January 2014, he hit a major milestone, scoring the 400th goal of his Career while playing for Real Madrid. <br>Like a true D personality, he dominates on the field. He likes to call the shots, is aggressive on the offense, and hates to lose. His personality style also makes him prone to impatience. He lacks tolerance for the mistakes of his teammates and can often be seen on the field groaning, yelling, and making frustrated gestures with his hands. Still, as a team leader, he commands respect and admiration (and a healthy dose of fear) from everyone he plays with. <br>Source: <br>https://blog.discinsights.com/what-is-the-disc-personality-type-of-your-favorite footballer#:~:text=The%20Portuguese%20footballer%20has%20been,to%20back%20up%20his%20swagge<br> What is Cristiano Ronaldo like according to the text?<br>','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('479','10','4','<b>Answer the following questions according to the text above!</b><br>You can&rsquo;t have a discussion about the World Cup without the name Cristiano Ronaldo coming up. The Portuguese footballer has been described as &ldquo;unstoppable,&rdquo; &ldquo;predatory,&rdquo; and &ldquo;intense.&rdquo; And for good reason. One of the most talented players the game has ever seen, Ronaldo is hyper-competitive, confident and has the talent to back up his swagger. A prolific striker, Ronaldo holds more than his Fair share of scoring records and has been named player of the year multiple times. In January 2014, he hit a major milestone, scoring the 400th goal of his Career while playing for Real Madrid. <br>Like a true D personality, he dominates on the field. He likes to call the shots, is aggressive on the offense, and hates to lose. His personality style also makes him prone to impatience. He lacks tolerance for the mistakes of his teammates and can often be seen on the field groaning, yelling, and making frustrated gestures with his hands. Still, as a team leader, he commands respect and admiration (and a healthy dose of fear) from everyone he plays with. <br>Source: <br>https://blog.discinsights.com/what-is-the-disc-personality-type-of-your-favorite footballer#:~:text=The%20Portuguese%20footballer%20has%20been,to%20back%20up%20his%20swagge<br>&ldquo;In January 2014, he hit a major milestone, &hellip;.&rdquo;<br> (Paragraph 1) What does the bold word refer to?<br>','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('480','10','5','<b>Answer the following questions according to the text above!</b><br>You can&rsquo;t have a discussion about the World Cup without the name Cristiano Ronaldo coming up. The Portuguese footballer has been described as &ldquo;unstoppable,&rdquo; &ldquo;predatory,&rdquo; and &ldquo;intense.&rdquo; And for good reason. One of the most talented players the game has ever seen, Ronaldo is hyper-competitive, confident and has the talent to back up his swagger. A prolific striker, Ronaldo holds more than his Fair share of scoring records and has been named player of the year multiple times. In January 2014, he hit a major milestone, scoring the 400th goal of his Career while playing for Real Madrid. <br>Like a true D personality, he dominates on the field. He likes to call the shots, is aggressive on the offense, and hates to lose. His personality style also makes him prone to impatience. He lacks tolerance for the mistakes of his teammates and can often be seen on the field groaning, yelling, and making frustrated gestures with his hands. Still, as a team leader, he commands respect and admiration (and a healthy dose of fear) from everyone he plays with. <br>Source: <br>https://blog.discinsights.com/what-is-the-disc-personality-type-of-your-favorite footballer#:~:text=The%20Portuguese%20footballer%20has%20been,to%20back%20up%20his%20swagge<br>What is the main idea of the paragraph 2?<br>','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('511','14','1',' Permainan bola basket diciptakan oleh &hellip;.','1','William G. Morgan','Isaac Spratt','George Hancock','James N. Smith','Charles Wreford Brounde','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('512','14','2',' Berikut ini yang merupakan teknik dasar dalam bola basket, <b>kecuali</b> &hellip;.','1','Smesh','Pivot','Passing','Shotting','Dribbling','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('513','14','3',' Perhatikan gambar dibawah ini!<br> <img src=\"../../files/17601525191.png\"><br>Pada gambar di atas teknik dalam bola basket disebut dengan &hellip;.<br>','1','Pivot','Dribble','Shotting','Chesh pass','Bounce pass','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('514','14','4',' Menurut federasi basket internasional, ukuran lapangan basket adalah &hellip;.','1','25 meter x 16 meter','25 meter x 18 meter','26 meter x 15 meter','28 meter x 15 meter','28 meter x 18 meter','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('515','14','5',' Federasi bola basket nasional adalah &hellip;.','1','FIFA','PSSI','FIBA','PBVSI','PERBASI','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('516','14','6',' Teknik mengoper atau mengumpan yang dilakukan dengan tangan kearah teman atau rekan satu tim disebut &hellip;.','1','Smash','Passing','Dribbling','Shotting','Bounching','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('517','14','7',' Passing yang memiliki keunggulan bisa digunakan untuk melewati pemain lawan yang berpostur tinggi adalah &hellip;.','1','Chesh pass','Bounce pass','Overhead pass','Hook pass','Two handed overhead pass','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('518','14','8',' Kesalahan yang sering terjadi saat melakukan <b>two handed overhead</b> pass yaitu &hellip;.','1','Operan terlalu kuat','Bola tercuri oleh lawan','Operan di terima kawan','Jarak penerima umpan jauh','Fous terhadap jarak umpan','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('519','14','9',' Dalam gerakan <b>lay up shoot</b>, bola dikuasai oleh &hellip;.','1','Kaki','Kepala','Tangan kiri','Tangan kanan','Kedua tangan','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('520','14','10',' Perhatikan teknik dasar di bawah ini!<br>(1)chest pass<br>(2)controlling <br>(3)heading <br>(4)two handed overhead<br>Teknik di atas yang digunakan dalam olahraga bola basket ditunjukkan pada nomor &hellip;.<br>','1','1 dan 2','2 dan 3','2 dan 4','1 dan 4','1 dan 3','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('521','14','11',' Tujuan jump shoot adalah &hellip;.','1','Merebut bola dari lawan','Melakukan gerakan tipuan agar lawan terkecoh','Mengushakan operan dengan melambungkan bola','Mencetak angka yang besar dengan tembakan tiga angka','Menghindari usaha block lawan terhadap gerakan menembak bola','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('522','14','12',' Gerakan memasukkan bola dalam permainan bola basket yang didahului dengan awalan melangkah dua langkah di daerah bersyarat adalah ciri dari gerakan &hellip;.','1','Bounce pass','Chesh pass','Lay up shoot','Jump shoot','One handed shoot','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('523','14','13',' Dalam gerakan chesh pass, hendaknya mengarahkan sasaran pada &hellip;.','1','Tangan lawan','Bahu lawan','Dada kawan','Tangan kawan','Bahu kawan','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('524','14','14',' Induk organisasi sepak  bola dunia adalah &hellip;.','1','PSSI','FIBA','FIFA','FIVB','PERBASI','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('525','14','15',' <b>Trown in</b> dilakukan apabila bola dinyatakan &hellip;.','1','Masuk ke gawang lawan','Masuk ke gawang sendiri','Terkena tangan','Melewati garis gawang','Keluar melewati garis lapangan','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('526','14','16',' Gerakan lari sambil mendorong bola dengan kaki agar bola bergulir diatas tanah  disebut dengan teknik &hellip;.','1','Shooting','Dribbling','Heading','Passing','Controliing','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('527','14','17',' Tendangan awal untuk memulai pertandingan setiap babak disebut &hellip;.','1','Gol','Kick off','Corner kick','Penalti','Free kick','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('528','14','18',' <b>Passing</b> menggunakan kaki bagian dalam perlu mengokohkan bagian &hellip;.','1','Jari kaki','Telapak kaki','Betis','Pergelangan kaki','Punggung kaki','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('529','14','19',' Sikapp kaki penahan yang benar saat menahan bola dengan punggung kaki adalah &hellip;','1','Lurus ke depan','Lurus ke belakang','Ditekuk ke belang','Sedikit di tekuk pada lutut','Diangkat dengan lutut ditekuk','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('530','14','20',' Apabila permainan sepak bola berakhir seri dilakukan tendangan &hellip;.','1','Gol','Kick off','Corner kick','Penalti','Free kick','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('531','14','21',' Bola basket adalah olahraga bola berkelompok yang terdiri atas dua tim beranggotakan masing-masing lima orang yang saling bertanding mencetak poin dengan memasukkan bola ke dalam keranjang. Jumlah pemain bola basket dalam satu tim adalah ....','1','4','5','6','7','8','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('532','14','22',' Yang <b>bukan</b> merupan cara melakukan gerakan dribbling dalam permainan sepak bola adalah &hellip;.','1','Sentuhan kaki di pertengahan bola dengan penguasaan','Gunakan kaki secara berhantian','Kedua lengan digunakan untuk menjaga keseimbangan','Menggunakan kaki bagian dalam atau bagian luar kaki dalam jangkauan untuk menguasai bola','Menghentikan laju bola dengan membungkukkan kaki','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('533','14','23',' Passing jarak dekat pada sepak bola dilakukan dengan &hellip;.','1','Ujung kaki','Telapak kaki','Kaki bagian luar','Punggung kaki','Kaki bagian dalam','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('534','14','24',' Nama lain dari penyerang dalam bola basket adalah &hellip;.','1','Goal keeper','Defender','Midfielder','Forward','Center','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('535','14','25',' Salah seorang pemain atau lebih berada di dekat gawang lawan sebelum bola dioperkan oleh temannya, sedangkan posisi pemain lawan berada di belakangnya . . . .','1','Outside','Offside','Onside','Inside','Side Off','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('536','14','26',' Pemain dalam sebuah tim bola voli yang bertindak sebagai pemain bertahan dan posisinya di daerah belakang dan tidak berhak melakukan pukulan serangan, servis ataupun usaha mem-<i>block</i> disebut &hellip;.','1','Goal keeper','Liberro','Tosser','Back','Smasher','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('537','14','27',' Ukuran lapangan bola voli adalah &hellip;.','1','12 m x 6 m','12 m x 9 m','14 m x 7 m','18 m x 9 m','18 m x 12 m','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('538','14','28',' Tinggi net bola voli putra adalah &hellip;.','1','2.24 m','2.23 m','2.42 m','2.43 m','2.44 m','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('539','14','29',' Permainan bola voli diciptakan oleh &hellip;.','1','William G. Morgan','Isaac Spratt','George Hancock','James N. Smith','Charles Wreford Brounde','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('540','14','30',' Teknik permainan bola voli yang bertujuan untuk mengambil bola hasil servis lawan dinamakan &hellip;.','1','Blocking','Spike','Smesh','Passing','Controlling','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('541','14','31',' Jumlah pemain bola voli dalam satu regu adalah &hellip; orang','1','5','6','7','8','9','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('542','14','32',' Menyentuhkan lengan pada bola di daerah dekat pergelangan tangan dengan cara mengayunkan lengan lurus dari bawah setinggi bahu. Teknik ini merupakan gerakan &hellip;','1','Servis','Passing bawah','Passing atas','Smesh','Servis bawah','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('543','14','33',' Posisi lutut saat melakukan passing atas adalah &hellip;','1','Ditekuk','Merapat','Melebar','Mengeper','Diluruskan','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('544','14','34',' Regu yang dinyatakan sebagai pemenang adalah regu yang lebih dahulu mendapatkan nilai &hellip;.','1','15','20','21','24','25','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('545','14','35',' Permainan bola voli mempunyai beberapa teknik dasar yang perlu dikuasai, salah satunya adalah <i>passing. Passing</i> merupakan modal utama seseorang untuk bisa bermain voli. Teknik pukulan keras melewati net  dinamakan ....','1','Block','Smash','Passing','Shooting','Sevish','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('546','14','1',' Sebutkan posisi dalam permainan bola basket!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('547','14','2',' Jelaskan apa yang dimaksud dengan &ldquo;lay-up shoot dan bounce pass&rdquo; dalam permainan bola basket!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('548','14','3',' Sebutkan negara yang memperkenalkan peraturan permainan sepak bola modern!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('549','14','4',' Apa nama lain dari teknik &ldquo;Heading&rdquo;?','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('550','14','5',' Jelaskan apa yang dimaksud dengan servis dalam permainan bola voli! ','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('606','18','1',' Jinising gancaran faktual kang jangkep kanthi dawa wacan tartamtu kang digawe adhedhasar fakta apadene data sarta samengko kapacak ing sawatara media diarani &hellip;.','1','Teks opini','Esai','Artikel','Teks eksposisi','Kritik','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('607','18','2',' Jinising artikel kang surasane ngandharake utawa menehi informasi sawijining topik amrih nambah kawruhe pamaca kang dijangkepi gambar, graﬁk, lan informasi panyengkuyung liyane minangka pangerten saka artikel kanthi jinis &hellip;.','1','Eksposisi','Persuasi','Narasi','Deskripsi','Argumentasi','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('608','18','3',' Sajroning artikel minangka gancaran kang surasane kasusun udakara &hellip; ukara.','1','300&ndash;500','300&ndash;1000','200&ndash;700','350&ndash;650','300&ndash;600','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('609','18','4',' Ngringkes minangka kagiyatan nyawisake wacan sing dawa dadi cendhak. Dene babagan kang ora kena diilangake nalika ngringkes wacan yaiku &hellip;.','1','Pamawase panulis','Pambuka wacan','Ukara panjelas wacan','Kaendahan basa sajroning wacan','Pokok isine wacan','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('610','18','5',' Nalika nulis artikel ana cara sing bisa ditindakake. Semono uga nalika arep gawe artikel prasaja. Ing ngisor ora klebu carane nulis artikel yaiku &hellip;.','1','Nemtokake tema sing arep ditulis','Nulis perangan sing wigati','Golek data kang ana gegayutan karo tema','Ukara panjlentreh migunakake basa sing ngayawara supaya katon akeh','Ing paragrap pungkasan ngandhut dudutan artikel','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('611','18','6',' Jinis artikel maneka warna. Ing ngisor iki kang ora klebu jinis artikel miturut ancase yaiku&hellip;.','1','Artikel deskripsi','Artikel eksposisi','Artikel ilmiah','Artikel argumentasi','Artikel persuasi','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('612','18','7',' Panulise artikel menawa kaudhal manut strukture yaiku ....','1','Pambuka, isi, lan masalah','Isi masalah, dudutan','Dudutan, isi, lan masalah','Pambuka, dudutan, lan masalah','Irah-irahan, pambuka, isi, lan panutup','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('613','18','8',' Panulisane artikel kudu nggatekake babagan &hellip;.','1','Panemu','Irah-irahan','Pambuka','Panutup','Isi','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('614','18','9',' Artikel kang isine babagan lapuran sistematis ngenani asil kajian utawa panaliten kanthi migunakake basa baku lan ilmiah diarani artikel &hellip;.','1','Opini','Ringan','Ilmiah','Narasi','Praktis','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('615','18','10',' <br><b>Wacanen kanthi permati kanggo mangsuli pitakon nomer 11&ndash;13!</b><br>Miturut data saka Sistem Informasi Pengelolaan Sampah Nasional (SIPSN) Ditjen PSLB3 Kementerian Lingkungan Hidup lan Kehutanan (KLHK) ing taun 2021, nyebutake gunggunge sampah ing Indonesia kacathet 68,5 yuta ton lan taun 2022 mundhak dadi 70 yuta ton sarta ana 24% utawa 16 yuta ton sampah kang ora diolah. Asil data saka Global Plastic Action duwe pangira mundhake sampah plastik ing Indonesia yaiku 30% menyang saluran banyu sasuwene 2017 nganti 2025, dene angkane saka 620 ewu ton per taun dadi udakara 780 ewu ton per taun. Kajaba iku, Indeks Kualitas Lingkungan Hidup (IKLH) taun 2020&ndash;2021 nganti 71,43%, nanging mudhun ing taun 2023 ing angka 69,48%. Saka data kasebut bisa dimangerteni menawa gunggunging sampah ing Indonesia mangaribawani kualitas lingkungan hidup. <br>Prakara sampah kudu digatekake lan ditandangi amrih ora nuwuhake kapitunan kang luwih mbebayani. Mula, butuh kawigaten masarakat lan pamarentah bebarengan. Salah sijine Pandawara Group minangka kelompok kadang kanoman kang ndudut ati masarakat Bandung amarga tumindake ngresiki saluran banyu ing Bandung kang katumpuk sampah. Kagiyatan kelompok kasebut dadi viral amarga digiyarake ing sosial media TikTok lan Instagram. Nanging ana salah siji masarakat sing aweh panyaruwe menawa reresik lingkungan iku becik, nanging samengko mesthi tetep ana pawongan kang buwang sampah ing kali menawa ora ana pendhampingan. Tegese, tetep ana masarakat sing nekad mbuwang sampah ing kali menawa ora ana pendhampingan. Mula, kudu kawiwitan saka dhiri pribadine manungsa amrih mandhiri lan ngulinakake milah sampah kang kawiwitan saka sampah pomahan. <br>Kanggo mujudake masarakat kang nggatekake marang lestarine lingkungan lan wicaksana babagan sampah, kudu ana sosialisasi lan edukasi marang masarakat. Saliyane iku, ana kampanye awujud pangajak mbuwang sampah ing panggonane, panganggone teknologi kang becik, nuwuhake budaya preduli marang lingkungan tumrap sampah. Kanthi nindakake cara kasebut kanthi ajeg, kaajap bisa nyuda kapitunan babagan sampah tumrap lingkungan. Nanging, cara iki kudu katindakake bebarengan antarane masarakat, pamarentah, lan pehak-pehak kang ana gegayutane. Kanthi mangkono, bisa mujudake lingkungan kang luwih becik lan tumata. <br>Pratelan ukara kang trep karo surasane wacan ing dhuwur yaiku &hellip;.<br>','1','Ora kudu ana sosialisasi lan edukasi marang masarakat a,rih bisa mujudake masarakat kang nggatekake lestarine lingkungan.','Gunggunging sampah ing Indonesia taun 2021 kacathet 68,5 yuta ton lan ing taun 2022 mundhak dadi 70 yuta ton.','Gunggunging sampah ing Indonesia taun 2021 saka 70 yuta ton mudhun dadi 68,5 yuta ton ing taun 2022.','Asil data saka Global Plastic Action duwe pangira mundhake sampah plastik ing Indonesia yaiku 50% menyang saluran banyu sasuwene 2017 nganti 2023.','Indeks Kualitas Lingkungan Hidup (IKLH) taun 2020-2021 ngalami undhakan saka 69,48% dadi 71,43%.','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('616','18','11','<br><b>Wacanen kanthi permati kanggo mangsuli pitakon nomer 11&ndash;13!</b><br>Miturut data saka Sistem Informasi Pengelolaan Sampah Nasional (SIPSN) Ditjen PSLB3 Kementerian Lingkungan Hidup lan Kehutanan (KLHK) ing taun 2021, nyebutake gunggunge sampah ing Indonesia kacathet 68,5 yuta ton lan taun 2022 mundhak dadi 70 yuta ton sarta ana 24% utawa 16 yuta ton sampah kang ora diolah. Asil data saka Global Plastic Action duwe pangira mundhake sampah plastik ing Indonesia yaiku 30% menyang saluran banyu sasuwene 2017 nganti 2025, dene angkane saka 620 ewu ton per taun dadi udakara 780 ewu ton per taun. Kajaba iku, Indeks Kualitas Lingkungan Hidup (IKLH) taun 2020&ndash;2021 nganti 71,43%, nanging mudhun ing taun 2023 ing angka 69,48%. Saka data kasebut bisa dimangerteni menawa gunggunging sampah ing Indonesia mangaribawani kualitas lingkungan hidup. <br>Prakara sampah kudu digatekake lan ditandangi amrih ora nuwuhake kapitunan kang luwih mbebayani. Mula, butuh kawigaten masarakat lan pamarentah bebarengan. Salah sijine Pandawara Group minangka kelompok kadang kanoman kang ndudut ati masarakat Bandung amarga tumindake ngresiki saluran banyu ing Bandung kang katumpuk sampah. Kagiyatan kelompok kasebut dadi viral amarga digiyarake ing sosial media TikTok lan Instagram. Nanging ana salah siji masarakat sing aweh panyaruwe menawa reresik lingkungan iku becik, nanging samengko mesthi tetep ana pawongan kang buwang sampah ing kali menawa ora ana pendhampingan. Tegese, tetep ana masarakat sing nekad mbuwang sampah ing kali menawa ora ana pendhampingan. Mula, kudu kawiwitan saka dhiri pribadine manungsa amrih mandhiri lan ngulinakake milah sampah kang kawiwitan saka sampah pomahan. <br>Kanggo mujudake masarakat kang nggatekake marang lestarine lingkungan lan wicaksana babagan sampah, kudu ana sosialisasi lan edukasi marang masarakat. Saliyane iku, ana kampanye awujud pangajak mbuwang sampah ing panggonane, panganggone teknologi kang becik, nuwuhake budaya preduli marang lingkungan tumrap sampah. Kanthi nindakake cara kasebut kanthi ajeg, kaajap bisa nyuda kapitunan babagan sampah tumrap lingkungan. Nanging, cara iki kudu katindakake bebarengan antarane masarakat, pamarentah, lan pehak-pehak kang ana gegayutane. Kanthi mangkono, bisa mujudake lingkungan kang luwih becik lan tumata. <br>Babagan kang dadi underaning pirembugan sajroning wacan ing dhuwur yaiku &hellip;. <br>','1','Pangaribawa pangolahan sampah migunakake teknologi','Cara migunakake teknologi hijau','Cara munpangatake limbah plastik amrih migunani','Pangolahan sampah lan lingkungan','Cara ngolah sampah dadi barang kang munpangat','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('617','18','12','<br><b>Wacanen kanthi permati kanggo mangsuli pitakon nomer 11&ndash;13!</b><br>Miturut data saka Sistem Informasi Pengelolaan Sampah Nasional (SIPSN) Ditjen PSLB3 Kementerian Lingkungan Hidup lan Kehutanan (KLHK) ing taun 2021, nyebutake gunggunge sampah ing Indonesia kacathet 68,5 yuta ton lan taun 2022 mundhak dadi 70 yuta ton sarta ana 24% utawa 16 yuta ton sampah kang ora diolah. Asil data saka Global Plastic Action duwe pangira mundhake sampah plastik ing Indonesia yaiku 30% menyang saluran banyu sasuwene 2017 nganti 2025, dene angkane saka 620 ewu ton per taun dadi udakara 780 ewu ton per taun. Kajaba iku, Indeks Kualitas Lingkungan Hidup (IKLH) taun 2020&ndash;2021 nganti 71,43%, nanging mudhun ing taun 2023 ing angka 69,48%. Saka data kasebut bisa dimangerteni menawa gunggunging sampah ing Indonesia mangaribawani kualitas lingkungan hidup. <br>Prakara sampah kudu digatekake lan ditandangi amrih ora nuwuhake kapitunan kang luwih mbebayani. Mula, butuh kawigaten masarakat lan pamarentah bebarengan. Salah sijine Pandawara Group minangka kelompok kadang kanoman kang ndudut ati masarakat Bandung amarga tumindake ngresiki saluran banyu ing Bandung kang katumpuk sampah. Kagiyatan kelompok kasebut dadi viral amarga digiyarake ing sosial media TikTok lan Instagram. Nanging ana salah siji masarakat sing aweh panyaruwe menawa reresik lingkungan iku becik, nanging samengko mesthi tetep ana pawongan kang buwang sampah ing kali menawa ora ana pendhampingan. Tegese, tetep ana masarakat sing nekad mbuwang sampah ing kali menawa ora ana pendhampingan. Mula, kudu kawiwitan saka dhiri pribadine manungsa amrih mandhiri lan ngulinakake milah sampah kang kawiwitan saka sampah pomahan. <br>Kanggo mujudake masarakat kang nggatekake marang lestarine lingkungan lan wicaksana babagan sampah, kudu ana sosialisasi lan edukasi marang masarakat. Saliyane iku, ana kampanye awujud pangajak mbuwang sampah ing panggonane, panganggone teknologi kang becik, nuwuhake budaya preduli marang lingkungan tumrap sampah. Kanthi nindakake cara kasebut kanthi ajeg, kaajap bisa nyuda kapitunan babagan sampah tumrap lingkungan. Nanging, cara iki kudu katindakake bebarengan antarane masarakat, pamarentah, lan pehak-pehak kang ana gegayutane. Kanthi mangkono, bisa mujudake lingkungan kang luwih becik lan tumata. <br>Katrangan sing trep kanggo nuduhake Indeks Kualitas Lingkungan Hidup adhedhasar surasane wacan yaiku &hellip;.<br>','1','Kualitas lingkungan hidup mundhak becik saka 69,48% dadi 71,43%','Kualitas lingkungan hidup tetep padha ing angka 71,43%','Kualitas lingkungan hidup mudhun saka 71,43% dadi 69,48%','Kualitas lingkungan hidup mudhun saka 69,48% dadi 56,75%','Kualitas lingkungan hidup mundhak becik saka 56,75% dadi 69,48%','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('618','18','13','<br><b>Wacanen kanthi permati kanggo mangsuli pitakon nomer 11&ndash;13!</b><br>Miturut data saka Sistem Informasi Pengelolaan Sampah Nasional (SIPSN) Ditjen PSLB3 Kementerian Lingkungan Hidup lan Kehutanan (KLHK) ing taun 2021, nyebutake gunggunge sampah ing Indonesia kacathet 68,5 yuta ton lan taun 2022 mundhak dadi 70 yuta ton sarta ana 24% utawa 16 yuta ton sampah kang ora diolah. Asil data saka Global Plastic Action duwe pangira mundhake sampah plastik ing Indonesia yaiku 30% menyang saluran banyu sasuwene 2017 nganti 2025, dene angkane saka 620 ewu ton per taun dadi udakara 780 ewu ton per taun. Kajaba iku, Indeks Kualitas Lingkungan Hidup (IKLH) taun 2020&ndash;2021 nganti 71,43%, nanging mudhun ing taun 2023 ing angka 69,48%. Saka data kasebut bisa dimangerteni menawa gunggunging sampah ing Indonesia mangaribawani kualitas lingkungan hidup. <br>Prakara sampah kudu digatekake lan ditandangi amrih ora nuwuhake kapitunan kang luwih mbebayani. Mula, butuh kawigaten masarakat lan pamarentah bebarengan. Salah sijine Pandawara Group minangka kelompok kadang kanoman kang ndudut ati masarakat Bandung amarga tumindake ngresiki saluran banyu ing Bandung kang katumpuk sampah. Kagiyatan kelompok kasebut dadi viral amarga digiyarake ing sosial media TikTok lan Instagram. Nanging ana salah siji masarakat sing aweh panyaruwe menawa reresik lingkungan iku becik, nanging samengko mesthi tetep ana pawongan kang buwang sampah ing kali menawa ora ana pendhampingan. Tegese, tetep ana masarakat sing nekad mbuwang sampah ing kali menawa ora ana pendhampingan. Mula, kudu kawiwitan saka dhiri pribadine manungsa amrih mandhiri lan ngulinakake milah sampah kang kawiwitan saka sampah pomahan. <br>Kanggo mujudake masarakat kang nggatekake marang lestarine lingkungan lan wicaksana babagan sampah, kudu ana sosialisasi lan edukasi marang masarakat. Saliyane iku, ana kampanye awujud pangajak mbuwang sampah ing panggonane, panganggone teknologi kang becik, nuwuhake budaya preduli marang lingkungan tumrap sampah. Kanthi nindakake cara kasebut kanthi ajeg, kaajap bisa nyuda kapitunan babagan sampah tumrap lingkungan. Nanging, cara iki kudu katindakake bebarengan antarane masarakat, pamarentah, lan pehak-pehak kang ana gegayutane. Kanthi mangkono, bisa mujudake lingkungan kang luwih becik lan tumata. <br>Artikel kang surasane mbabarake kawruh babagan samubarang prakara kanthi nyawisake panyengkuyung awujud bukti, tuladha, apadene alesan kang tinemu nalar saengga mundhak kawruhe pamaca diarani artikel &hellip;.<br>','1','Persuasi','Deskripsi','Argumentasi','Narasi','Eksposisi','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('619','18','14',' Perangan ing artikel kudu nggunakake tetembungan sing cetha, cekak aos,lan ndudut ati. Amarga mujudake perangan pisanan sing dideleng dening pamaca. Perangan kang dikarepake yaiku &hellip;.','1','Panutup','Irah-irahan','Isi','Pambuka','Gagasan','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('620','18','15',' Sajroning crita Ramayana ana paraga Anoman minangka duta saking Prabu Ramawijaya. Tegese tembung <i>duta</i> yaiku &hellip;.','1','Andhahan','Utusan','Sadulur','Abdi dalem','Kadang','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('621','18','16',' Jinis wayang kang kagawe saka kayu lan wujude padha karo wayang kulit, nanging ditancepake ing kayu kang wis dibolongi diarani wayang &hellip;.','1','Gedhog','Beber','Klithik','Golek','Potehi','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('622','18','17',' Ing kabudayan Jawa, wayang mujudake gegambaran manungsa wiwit lair tumekaning pati lan alam kang langgeng. Mula sajroning pagelaran wayang kulit ngemot tontonan, tuntunan, lan tatananing urip. Wayang kulit uga diarani wayang &hellip;.','1','Purwa','Golek','Suket','Beber','Wong','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('623','18','18',' Kakawin Ramayana wujude tembang &hellip;.','1','Dolanan','Kuna','Alit','Gedhe','Tengahan','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('624','18','19',' <br><img src=\"../../files/17601550822.png\"><br>Sakadang lima cacahe mau antuk <i>panyengkuyung</i> saka para ahli tapa. Tembung kang kacethak miring tegese ....<br>','1','Katresnan','Musuh','Kanca','Pitulungan','Asih','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('625','18','20','<br><img src=\"../../files/17601550822.png\"><br>Sawise Pandhawa kalah banjur kapeksa dadi wong .... <br>','1','Buwangan','Murka','Becik','Melas','Angkara','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('626','18','21','<br><img src=\"../../files/17601550822.png\"><br>Pandhawa ora gresah, nanging kabeh dilakoni kanthi rila lega. <i>Ora gresah</i> kosok balene....<br>','1','Nrima','Pasrah','Sambat','Legawa','Seneng','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('627','18','22','<br><img src=\"../../files/17601550822.png\"><br>Bilawa yaiku panenggak Pandhawa kang jenenge .... <br>','1','Raden Haryo','Raden Harya Bratasena','Duryadana','Harya','Janaka','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('628','18','23','<br><img src=\"../../files/17601550822.png\"><br>Sing ngajak Pandhawa kasukan dhadhu yaiku ....<br>','1','Janaka','Bima','Duryudana','Nakula','Sadewa','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('629','18','24','<br><img src=\"../../files/17601550821.png\"><br>Setitekna gambar ing ngisor iki!<br>Katrangan kang trep karo gambar yaiku ....<br>','1','Minangka panenggake Pandhawa aran Bima','Maju perang ing Bharatayuda tandhing lawan Arjuna','Minangka senapatine Pandhawa tandhing lawan Adipati Karna','Minangka Senapati Kurawa kang tandhing lawan Werkudara','Minangka pembarepe Pandhawa aran Yudhistira','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('630','18','25',' Wayang kang digawe saka kayu lan diklambeni kaya dene manungsa diarani wayang ....','1','Kulit','Klithik','Beber','Golek','Potehi','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('631','18','26',' Isi crita wayang ora mung nyritakake babagan kauripan kraton bae. Nanging ana uga wayang kang nyritakake babagan perjuwangan rakyat Indonesia nalika mungsuh kalawan penjajah. Jinis wayang iki kaaran wayang &hellip;.','1','Menak','Golek','Suluh','Madya','Gedhog','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('632','18','27',' Ing Serat <i>Ramayana</i> critane kaperang dadi pitung kanda (crita) kang diarani Saptakanda. Salah sawijining kanda ana perangan kang nyritakake babagan kedadeyan kang kondhang kaloka kanthi crita &ldquo;Anoman Obong&rdquo; klebu ing perangan kitab &hellip;','1','Sundarakanda','Yuddhakanda','Kiskindhakanda','Aranyakanda','Balakanda','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('633','18','28',' Jinis wayang maneka warna. Salah sijine kagawe saka kayu lan nalika ditanggap nganggo kayu sing wis dibolong-bolongi. Crita sing kerep ditanggapake yaiku Damar Wulan lan Majapahit. Jinis iki diarani wayang &hellip;.','1','Klithik','Titi','Beber','Golek','Potehi','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('634','18','29',' Crita wayang sing digelar uga duweni unsur kang mangun kaya dene karya sastra liyane. Ing ngisor iki sing ora klebu perangan unsur sing mangun crita wayang saka jero crita, yaiku&hellip;.','1','Pamawase pangripta','Kahanan sosial budaya','Lelewaning basa','Setting','Alur','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('635','18','30',' Paraga kang nate madeg dadi senapati Pandhawa sajroning Bharatayuda yaiku ....','1','Adipati Karna','Prabu Salya','Raden Gathotkaca','Dewi Wara Srikandhi','Resi Bhisma','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('636','18','31',' Kitab kang klebu ing Saptakanda yaiku ....','1','Udyogaparwa','Ayodhyakanda','Adiparwa','Sabhaparwa','Kiskindhakanda','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('637','18','32',' Ing ngisor iki kang klebu lakon pakem yaiku &hellip;.','1','Pandhawa Dadu','Abimanyu Lair','Aji Narantaka','Bale Sigala-gala','Partakrama','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('638','18','33',' Crita kang diandharake sajroning Kitab Dronaparwa yaiku &hellip;.','1','Pandhawa ngasingake dhiri menyang wana sasuwene 12 taun','Diwisudhane Karna dadi panglima perang Kurawa','Gugure Abimanyu','Gugure Duryudana','Diangkate Drona dadi panglima perang Kurawa','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('639','18','34',' Klebu unsur sing mangun saka njaba sawijining crita yaiku &hellip;.','1','Kahanan lan kapitayan kang dirasuk pangripta','Watak-wantune paraga sajroning crita','Pamawase pangripta sajroning crita','Pitutur pangripta sajroning crita','Kapan karya sastra kasebut ditulis','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('640','18','35',' Ing ngisor iki kang ora klebu ancas panulisan teks artikel yaiku &hellip;.','1','Kanggo sarana ndhidhik pamaca','Sarana lelipuran pamaca','Ngandharake gagasan utawa panemu','Kanggo mangaribawani pamaca','Ngandharake fakta kang bisa gawe yakine pamaca','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('641','18','1',' Gatekna katrangan ing ngisor iki! <br>Panganggone biopot becik banget kanggo proses thukule tanduran. Adate menawa arep mindhah winih ing lemah lumrahe plastik polybag disuwek lan dadi sampah plastik. Nanging, kanthi nganggo biopot nalika arep mindhah winih bisa langsung dipindhah ing lemah. Saliyane iku, biopot uga duwe nilai ekonomis. Saiki wis akeh sing gawe biopot sing diadol menyang petani supaya ora nggunakake polybag. Babagan sing wigati saka panganggone biopot yaiku ora nuwuhake limbah. Saka limbah migunani kanggo sarana nandur lan ora nuwuhake limbah maneh. <br>Paragrap ing dhuwur klebu perangan struktur kang mangun artikel. Jlentrehna perangan sing dikarepake! <br>','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('642','18','2',' Sawijining artikel mujudake gagasan panulis kang kapacak ing sawatara media, bisa ing media cetak apadene <i>online</i>. Banjur apa satemene sing diarani artikel? Jlentrehna migunakake basamu dhewe!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('643','18','3',' Artikel kang kapacak ing sawatara media bisa kanggo sarana nambahi kawruhe pamaca. Salah siji sipat artikel yaiku faktual lan informatif. Apa sing dikarepake karo sipat kasebut? Andharna!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('644','18','4',' Jinising artikel kang sumebar ing masarakat maneka warna, salah sijine artikel ringan. Ing ngendi kita bisa nemokake artikel kasebut?','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('645','18','5',' Salah siji unsur sing ana sajroning artikel yaiku irah-irahan. Geneya sajroning panulisan artikel kudu sing becik lan ndudut ati? Jlentrehna panemumu!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('646','19','1',' Penulisan geguritan nggunakake basa sing ngandut makna kang jero. Kang mangkono nuduhake basa ing geguritan asipat &hellip;.','1','Mentes','Cekak','Estetis','Edukatif','Persuasife','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('647','19','2',' Maca geguritan kudu nggatekake babagan kedaling lesan, tata pangaturing napas, lan pamedhoting ukara. Kang diarani &hellip;.','1','Sarana','Busana','Penampilan','Olah swara','Komunikatif','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('648','19','3',' Tembang macapat gagrag anyar disebut ...','1','Pupuh','Geguritan','Sekar ageng','Sekar madya','Sekar macapat','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('649','19','4',' Nalika nulis geguritan, kudu nggatekake ...','1','Ukara basa krama','Struktur geguritan','Paraga','Aksara Jawa','Seting wektu','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('650','19','5',' Geguritan kang isine ngenani rasa tresna disebut ...','1','Geguritan religi','Geguritan kamanungsan','Geguritan katresnan','Geguritan kabudayan','Geguritan inspiratif','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('651','19','6',' Kang kalebu geguritan yaiku ...','1','Artikel','Dongeng','Cerpen','Puisi Jawa','Novel','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('652','19','7',' Unsur geguritan kang isine tema keagamaan disebut ...','1','Geguritan mistik','Geguritan spiritual','Geguritan religi','Geguritan moral','Geguritan sosial','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('653','19','8',' Tema geguritan bisa diangkat saka ...','1','Ngimpi','Cerita tokoh','Kahanan nyata','Sandiwara','Wayang','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('654','19','9',' Unsur estetik ing geguritan bisa kita rasakake saka ....','1','Tema lan amanat','Swasana lan rasa','Irama, tembung kias, lan imaji','Jumlah larik','Panulisan','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('655','19','10',' Geguritan iku kalebu karya sastra ...','1','Prosa','Drama','Geguritan','Gancaran','Tembang','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('656','19','11',' Geguritan yaiku karya sastra sing ditulis kanthi bentuk ...','1','Gancaran','Ugeran','Prosa','Novel','Artikel','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('657','19','12',' Ciri khas geguritan yaiku ...','1','Ana dialoge','Ngandhut aturan pupuh','Gampang dingerteni','Ditulis nganggo aksara latin','Ora ana watake','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('658','19','13',' Geguritan kalebu karya sastra sing kagolong ...','1','Sastra modern','Sastra kuno','Sastra klasik','Sastra tembang','Sastra bebas','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('659','19','14',' Geguritan asale saka tembung lingga gurita kang diowahi saka tembung gerita. Dene gerita saka tembung gita. Tegese tembung gita yaiku &hellip;.','1','Tulisan','Swara endah','Tembang','Rumpakan tulisan kang awujud tatahan','Sastra bebas','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('660','19','15',' Watak utawa swasana sing katon ing geguritan disebut ...','1','Tema','Amanat','Suasana','Imaji','Rasa','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('661','19','16',' Ing ngisor iki kang klebu upacara adat yaiku &hellip;.','1','Ludruk','Sekaten','Ketoprak','Wayang kulit','Tedhak sinten','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('662','19','17',' Ing ngisor iki kang ora klebu tradisi sing ana gegayutan karo laire bayi yaiku &hellip;.','1','Salapanan','Brokohan','Siraman','Puputan','Sepasaran','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('663','19','18',' Tembung &quot;siraman&quot; asal&eacute; saka tembung &hellip;','1','Sira lan man','Sira lan aman','Sira lan banyu','Sira lan raman','Sira lan remen','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('664','19','19',' Upacara adat temanten kalebu budaya &hellip;','1','Islam','Hindu','Jawa','Bali','Sunda','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('665','19','20',' Sakwise siraman, calon penganten wanita lumrahe bakal ngalami &hellip;','1','Sungkeman','Midodareni','Pangruwating','Temon manten','Ngunduh mantu','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('666','19','21',' Upacara panggih ditindakake nalika &hellip;','1','Calon penganten nampa seserahan','Penganten kakung lan estri ketemu kaping pisan','Siraman rampung','Pasrah tampi','Pamit dhateng leluhur','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('667','19','22',' Salah siji upacara tradhisi yaiku tedhak sinten mratandhakake cedhake manungsa karo &hellip;.','1','Siti','Bumi','Manungsa','Kulawarga','Panguasa','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('668','19','23',' Siraman nduweni unsur simbolis yaiku &hellip;','1','Pangilon','Resik lahir batin','Sesaji','Ayem tentrem','Sikep sabar','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('669','19','24',' Upacara adat temanten Jawa nuduhak&eacute; &hellip;','1','Modernisasi','Budaya lokal sing adi luhung','Budaya kulon','Budaya luar negeri','Budaya hiburan','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('670','19','25',' Tujuan umum upacara adat temanten yaiku &hellip;','1','Nglarani wong liya','Nguri-uri budaya lan nglestar&egrave;kak&eacute; warisan leluhur','Mungkasi adat kuna','Mblusukak&eacute; generasi','Nglalekak&eacute; jati diri','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('671','19','26',' Upacara siraman ing adat temanten Jawa kagolong &hellip;','1','Upacara pangarepan','Upacara wiwitan','Upacara pungkasan','Upacara pambagyo','Upacara panutup','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('672','19','27',' Tembung <i>geguritan</i> iku kalebu jinising tembung ...','1','Dwipurwa','Dwiwasana','Dwilingga','Dwilingga semu','Dwilingga salin swara','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('673','19','28',' Struktur geguritan ana loro (2), yaiku ...','1','Struktur batin lan struktur rohani','Struktur batin lan struktur fisik','Struktur rokhani lan struktur jasmani','Struktur jasmani lan struktur fisik','Struktur intern lan struktur ekstern','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('674','19','29',' Ing struktur geguritan, sikape pangripta marang pamaos ingaranan ...','1','Rasa <i>(feeling)</i>','Nada <i>(tone)</i>','Amanat/tujuan <i>(itention)</i>','Isi <i>(konten)</i>','Tema/makna <i>(sense)</i>','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('675','19','30','<br><b>Koruptor</i> <br>(dening Rahmaditya KARW) <br>Koruptor kang nggrogoti<br>Dhuwit Negara kanthi korpsi<br>Apike dilebokno jeruji besi<br>Aja nganthi lunga ning luwar negeri<br>Malah krasa ngiwi-iwi<br>Rakyat akeh kang nggegirisi<br>Ora bisa nyukupi<br>Arepa mung sapiring sega<br>Akeh wong kang isih rekasa<br>Apa kowe ora nrima<br>Mula saka iku<br>Ayo kita kudu merjaya<br>Ngilangi koruptor<br>(PS. No. 3-21 Januari 2017) <br>Isine geguritan ing dhuwur ...<br>','1','Koruptor kang nggrogoti dhuwit','Koruptor iku tukang korupsi','Koruptor menyang luwar negeri','Koruptor dilebokake jeruji besi','Koruptor kudu enggal diperjaya','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('676','19','31',' Ubarampe kanggo adus ing Upacara Siraman nggih menika ....','1','Klambi sagandheng','Ember gedhe, wadhah sabun, siwur/gayung','Ember gedhe, lada merang, santen kanil','Santen kanil, klambi sagandheng, shampo','Sampo lan sabun','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('677','19','32',' Salah sijine corak jariik kang dianggo sakwise siraman nggih menika corak...','1','Batik gedog','Batik Karang','Sidomukti','Grompol','Wangsulan c lan d bener','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('678','19','33',' Rantaman adicara Panggih yaiku ...','1','Lukar kembang mayang, methuk besan, sungkeman','Lukar kembang mayang, sungkeman, kirab','Lukar kembang mayang, kacar-kucur, sungkeman','Lukar kembang mayang, kacar-kucur, gantalan, singep sindur','Lukar kembang mayang, gantalan, ngideg antiga, singep sindur','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('679','19','34',' Ingkang boten kalebu kagiyatan ing Upacara Adat Pengantenan yaiku ...','1','Gantalan','Bobot timbang','Dhahar kembul','Sungkeman','Besan rawuh','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('680','19','35',' Penganten kakung paring nafkah lan nyukupi sandhang pangan marang penganten putri menika wredinipun upacara adat ...','1','Kacar-kucur','Bobot timbang','Dhahar kembul','Sungkeman','Besan rawuh','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('681','19','1',' Menurut panemumu, kepriye tetembungan kang digunakake sajroning geguritan?','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('682','19','2',' Sebutna 3 paugerane nalika macageguritan!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('683','19','3',' Ana 2 perangan geguritan. Sebutna !','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('684','19','4',' Apa tegese upacara panggih lan piwulangan kang bisa dijupuk saka prosesi kasebut?','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('685','19','5',' Salah siji upacara tradisi yaiku tedhak sinten mratandha cedhake manungsa marang &hellip;.','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('721','20','36',' <br> Inovasi Teknologi dalam Kehidupan Modern<br>Perkembangan teknologi saat ini semakin pesat dan telah membawa perubahan besar dalam berbagai aspek kehidupan. Salah satu inovasi yang paling menonjol adalah dalam bidang komunikasi. Kemajuan ini memungkinkan orang untuk terhubung secara simultan di seluruh dunia melalui internet. Selain itu, teknologi juga telah berperan dalam ekspansi bisnis yang memungkinkan perusahaan-perusahaan untuk memperluas jangkauan pasar mereka. <br>Namun, di sisi lain, beberapa pihak tetap memiliki pandangan yang konservatif terkait penerapan teknologi baru, terutama dalam sektor pendidikan. Mereka berpendapat bahwa perubahan yang terlalu cepat dapat menyebabkan ketidakstabilan. Meskipun demikian, banyak yang melihat teknologi sebagai alat yang inovatif dalam memecahkan berbagai tantangan global. Untuk itu, penting bagi setiap individu untuk memahami perkembangan ini dan beradaptasi dengan cara yang progresif dalam menghadapi tantangan masa depan. <br>Kata &quot;simultan&quot; dalam teks di atas berarti....','1','Terpisah','Secara bersamaan','Bergantian','Bertahap','Terpisah waktu','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('722','20','37',' <br> Inovasi Teknologi dalam Kehidupan Modern<br>Perkembangan teknologi saat ini semakin pesat dan telah membawa perubahan besar dalam berbagai aspek kehidupan. Salah satu inovasi yang paling menonjol adalah dalam bidang komunikasi. Kemajuan ini memungkinkan orang untuk terhubung secara simultan di seluruh dunia melalui internet. Selain itu, teknologi juga telah berperan dalam ekspansi bisnis yang memungkinkan perusahaan-perusahaan untuk memperluas jangkauan pasar mereka. <br>Namun, di sisi lain, beberapa pihak tetap memiliki pandangan yang konservatif terkait penerapan teknologi baru, terutama dalam sektor pendidikan. Mereka berpendapat bahwa perubahan yang terlalu cepat dapat menyebabkan ketidakstabilan. Meskipun demikian, banyak yang melihat teknologi sebagai alat yang inovatif dalam memecahkan berbagai tantangan global. Untuk itu, penting bagi setiap individu untuk memahami perkembangan ini dan beradaptasi dengan cara yang progresif dalam menghadapi tantangan masa depan. <br>Kata &quot;ekspansi&quot; dalam kalimat &quot;teknologi juga telah berperan dalam ekspansi bisnis&quot; memiliki arti....','1','Penutupan','Pengurangan','Perluasan','Pemindahan','Penghapusan','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('723','20','38',' <br> Inovasi Teknologi dalam Kehidupan Modern<br>Perkembangan teknologi saat ini semakin pesat dan telah membawa perubahan besar dalam berbagai aspek kehidupan. Salah satu inovasi yang paling menonjol adalah dalam bidang komunikasi. Kemajuan ini memungkinkan orang untuk terhubung secara simultan di seluruh dunia melalui internet. Selain itu, teknologi juga telah berperan dalam ekspansi bisnis yang memungkinkan perusahaan-perusahaan untuk memperluas jangkauan pasar mereka. <br>Namun, di sisi lain, beberapa pihak tetap memiliki pandangan yang konservatif terkait penerapan teknologi baru, terutama dalam sektor pendidikan. Mereka berpendapat bahwa perubahan yang terlalu cepat dapat menyebabkan ketidakstabilan. Meskipun demikian, banyak yang melihat teknologi sebagai alat yang inovatif dalam memecahkan berbagai tantangan global. Untuk itu, penting bagi setiap individu untuk memahami perkembangan ini dan beradaptasi dengan cara yang progresif dalam menghadapi tantangan masa depan. <br>Pandangan &quot;konservatif&quot; dalam teks tersebut merujuk pada....','1','Pendekatan yang hati-hati dan tradisional','Ide yang radikal dan cepat berubah','Upaya untuk mempercepat perubahan','Pemikiran yang sepenuhnya progresif','Sikap menolak teknologi','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('724','20','39',' <br> Inovasi Teknologi dalam Kehidupan Modern<br>Perkembangan teknologi saat ini semakin pesat dan telah membawa perubahan besar dalam berbagai aspek kehidupan. Salah satu inovasi yang paling menonjol adalah dalam bidang komunikasi. Kemajuan ini memungkinkan orang untuk terhubung secara simultan di seluruh dunia melalui internet. Selain itu, teknologi juga telah berperan dalam ekspansi bisnis yang memungkinkan perusahaan-perusahaan untuk memperluas jangkauan pasar mereka. <br>Namun, di sisi lain, beberapa pihak tetap memiliki pandangan yang konservatif terkait penerapan teknologi baru, terutama dalam sektor pendidikan. Mereka berpendapat bahwa perubahan yang terlalu cepat dapat menyebabkan ketidakstabilan. Meskipun demikian, banyak yang melihat teknologi sebagai alat yang inovatif dalam memecahkan berbagai tantangan global. Untuk itu, penting bagi setiap individu untuk memahami perkembangan ini dan beradaptasi dengan cara yang progresif dalam menghadapi tantangan masa depan. <br>Kata &quot;inovatif&quot; dalam teks tersebut merujuk pada sesuatu yang....','1','Tradisional dan kuno','Kreatif dan membawa perubahan baru','Statis dan tidak berkembang','Kembali ke masa lalu','Perlahan dan tidak berkembang','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('725','20','40',' <br> Inovasi Teknologi dalam Kehidupan Modern<br>Perkembangan teknologi saat ini semakin pesat dan telah membawa perubahan besar dalam berbagai aspek kehidupan. Salah satu inovasi yang paling menonjol adalah dalam bidang komunikasi. Kemajuan ini memungkinkan orang untuk terhubung secara simultan di seluruh dunia melalui internet. Selain itu, teknologi juga telah berperan dalam ekspansi bisnis yang memungkinkan perusahaan-perusahaan untuk memperluas jangkauan pasar mereka. <br>Namun, di sisi lain, beberapa pihak tetap memiliki pandangan yang konservatif terkait penerapan teknologi baru, terutama dalam sektor pendidikan. Mereka berpendapat bahwa perubahan yang terlalu cepat dapat menyebabkan ketidakstabilan. Meskipun demikian, banyak yang melihat teknologi sebagai alat yang inovatif dalam memecahkan berbagai tantangan global. Untuk itu, penting bagi setiap individu untuk memahami perkembangan ini dan beradaptasi dengan cara yang progresif dalam menghadapi tantangan masa depan. <br>Kata &quot;progresif&quot; dalam kalimat &quot;beradaptasi dengan cara yang progresif&quot; berarti....','1','Melawan perubahan','Berpikir maju dan berkembang','Terlalu hati-hati','Menghindari risiko','Mengikuti aturan lama','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('726','20','41',' <br> Bacharuddin Jusuf Habibie, atau yang lebih dikenal sebagai B.J. Habibie, lahir di Parepare, Sulawesi Selatan, pada tanggal 25 Juni 1936. Ia merupakan Presiden ketiga Republik Indonesia yang menjabat dari tahun 1998 hingga 1999. Habibie dikenal sebagai salah satu tokoh yang sangat berpengaruh dalam dunia teknologi dan penerbangan di Indonesia. Ia menghabiskan sebagian besar hidupnya di Jerman untuk menuntut ilmu dan bekerja sebagai insinyur. Salah satu pencapaiannya yang terkenal adalah merancang pesawat terbang pertama buatan Indonesia, N250 Gatotkaca. Selain prestasinya di bidang teknologi, Habibie juga dikenal karena kepemimpinannya di masa transisi reformasi. <br>Dari kutipan di atas, kapan dan di mana B.J. Habibie lahir?','1','Jakarta, 21 Juni 1936','Bandung, 24 Juni 1936','Parepare, 25 Juni 1936','Surabaya, 23 Juni 1936','Makassar, 25 Juni 1937','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('727','20','42',' <br> Bacharuddin Jusuf Habibie, atau yang lebih dikenal sebagai B.J. Habibie, lahir di Parepare, Sulawesi Selatan, pada tanggal 25 Juni 1936. Ia merupakan Presiden ketiga Republik Indonesia yang menjabat dari tahun 1998 hingga 1999. Habibie dikenal sebagai salah satu tokoh yang sangat berpengaruh dalam dunia teknologi dan penerbangan di Indonesia. Ia menghabiskan sebagian besar hidupnya di Jerman untuk menuntut ilmu dan bekerja sebagai insinyur. Salah satu pencapaiannya yang terkenal adalah merancang pesawat terbang pertama buatan Indonesia, N250 Gatotkaca. Selain prestasinya di bidang teknologi, Habibie juga dikenal karena kepemimpinannya di masa transisi reformasi. <br>Apa prestasi terbesar B.J. Habibie di bidang teknologi penerbangan yang disebutkan dalam teks?','1','Merancang kapal selam pertama Indonesia','Merancang pesawat terbang N250 Gatotkaca','Mengembangkan teknologi komunikasi satelit','Mendirikan pabrik otomotif nasional','Merancang sistem pertahanan negara','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('728','20','43',' <br> Bacharuddin Jusuf Habibie, atau yang lebih dikenal sebagai B.J. Habibie, lahir di Parepare, Sulawesi Selatan, pada tanggal 25 Juni 1936. Ia merupakan Presiden ketiga Republik Indonesia yang menjabat dari tahun 1998 hingga 1999. Habibie dikenal sebagai salah satu tokoh yang sangat berpengaruh dalam dunia teknologi dan penerbangan di Indonesia. Ia menghabiskan sebagian besar hidupnya di Jerman untuk menuntut ilmu dan bekerja sebagai insinyur. Salah satu pencapaiannya yang terkenal adalah merancang pesawat terbang pertama buatan Indonesia, N250 Gatotkaca. Selain prestasinya di bidang teknologi, Habibie juga dikenal karena kepemimpinannya di masa transisi reformasi. <br>Di negara mana B.J. Habibie menghabiskan sebagian besar hidupnya untuk belajar dan bekerja sebagai insinyur?','1','Amerika Serikat','Belanda','Inggris','Jerman','Prancis','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('729','20','44',' <br> Bacharuddin Jusuf Habibie, atau yang lebih dikenal sebagai B.J. Habibie, lahir di Parepare, Sulawesi Selatan, pada tanggal 25 Juni 1936. Ia merupakan Presiden ketiga Republik Indonesia yang menjabat dari tahun 1998 hingga 1999. Habibie dikenal sebagai salah satu tokoh yang sangat berpengaruh dalam dunia teknologi dan penerbangan di Indonesia. Ia menghabiskan sebagian besar hidupnya di Jerman untuk menuntut ilmu dan bekerja sebagai insinyur. Salah satu pencapaiannya yang terkenal adalah merancang pesawat terbang pertama buatan Indonesia, N250 Gatotkaca. Selain prestasinya di bidang teknologi, Habibie juga dikenal karena kepemimpinannya di masa transisi reformasi. <br>B.J. Habibie menjabat sebagai Presiden Indonesia pada periode....','1','1996-1997','1998-1999','1997-1998','1999-2000','1995-1996','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('730','20','45',' <br> Bacharuddin Jusuf Habibie, atau yang lebih dikenal sebagai B.J. Habibie, lahir di Parepare, Sulawesi Selatan, pada tanggal 25 Juni 1936. Ia merupakan Presiden ketiga Republik Indonesia yang menjabat dari tahun 1998 hingga 1999. Habibie dikenal sebagai salah satu tokoh yang sangat berpengaruh dalam dunia teknologi dan penerbangan di Indonesia. Ia menghabiskan sebagian besar hidupnya di Jerman untuk menuntut ilmu dan bekerja sebagai insinyur. Salah satu pencapaiannya yang terkenal adalah merancang pesawat terbang pertama buatan Indonesia, N250 Gatotkaca. Selain prestasinya di bidang teknologi, Habibie juga dikenal karena kepemimpinannya di masa transisi reformasi. <br>B.J. Habibie dikenal atas perannya dalam masa transisi menuju....','1','Revolusi Industri','Era Reformasi','Era Globalisasi','Masa Kemerdekaan','Era Digital','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('731','20','46',' <br> Raden Ajeng Kartini lahir di Jepara, Jawa Tengah, pada tanggal 21 April 1879. Ia dikenal sebagai pejuang hak-hak perempuan dan pendiri organisasi perempuan di Indonesia. Kartini adalah seorang tokoh yang memperjuangkan pendidikan untuk perempuan dan menulis banyak surat yang mengungkapkan harapannya untuk melihat perempuan Indonesia mendapatkan pendidikan yang setara dengan laki-laki. Karya-karyanya, yang terkenal antara lain adalah <i>Habis Gelap, Terbitlah Terang</i>, telah menginspirasi banyak orang untuk memperjuangkan kesetaraan gender. <br>Dari kutipan di atas, kapan dan di mana R.A. Kartini lahir?','1','Jakarta, 21 April 1879','Semarang, 20 April 1879','Jepara, 21 April 1879','Solo, 21 Maret 1878','Surabaya, 21 April 1878','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('732','20','47',' <br> Raden Ajeng Kartini lahir di Jepara, Jawa Tengah, pada tanggal 21 April 1879. Ia dikenal sebagai pejuang hak-hak perempuan dan pendiri organisasi perempuan di Indonesia. Kartini adalah seorang tokoh yang memperjuangkan pendidikan untuk perempuan dan menulis banyak surat yang mengungkapkan harapannya untuk melihat perempuan Indonesia mendapatkan pendidikan yang setara dengan laki-laki. Karya-karyanya, yang terkenal antara lain adalah <i>Habis Gelap, Terbitlah Terang</i>, telah menginspirasi banyak orang untuk memperjuangkan kesetaraan gender. <br>Apa yang diperjuangkan R.A. Kartini menurut teks di atas?','1','Hak-hak laki-laki','Pendidikan untuk perempuan','Pembangunan infrastruktur','Kesehatan masyarakat','Kebudayaan tradisional','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('733','20','48',' <br> Raden Ajeng Kartini lahir di Jepara, Jawa Tengah, pada tanggal 21 April 1879. Ia dikenal sebagai pejuang hak-hak perempuan dan pendiri organisasi perempuan di Indonesia. Kartini adalah seorang tokoh yang memperjuangkan pendidikan untuk perempuan dan menulis banyak surat yang mengungkapkan harapannya untuk melihat perempuan Indonesia mendapatkan pendidikan yang setara dengan laki-laki. Karya-karyanya, yang terkenal antara lain adalah <i>Habis Gelap, Terbitlah Terang</i>, telah menginspirasi banyak orang untuk memperjuangkan kesetaraan gender. <br>Dalam kutipan tersebut, apa judul karya terkenal R.A. Kartini?','1','Habis Gelap, Terbitlah Terang','Bunga Rampai','Pendidikan Perempuan','Surat-surat Kartini','Perjuangan Wanita','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('734','20','49',' <br> Raden Ajeng Kartini lahir di Jepara, Jawa Tengah, pada tanggal 21 April 1879. Ia dikenal sebagai pejuang hak-hak perempuan dan pendiri organisasi perempuan di Indonesia. Kartini adalah seorang tokoh yang memperjuangkan pendidikan untuk perempuan dan menulis banyak surat yang mengungkapkan harapannya untuk melihat perempuan Indonesia mendapatkan pendidikan yang setara dengan laki-laki. Karya-karyanya, yang terkenal antara lain adalah <i>Habis Gelap, Terbitlah Terang</i>, telah menginspirasi banyak orang untuk memperjuangkan kesetaraan gender. <br>Manakah kalimat yang menggunakan ejaan yang baik dan benar?','1','Kartini adalah seorang tokoh yang memperjuangkan pendidikan untuk Perempuan.','Kartini, seorang tokoh yang memperjuangkan pendidikan untuk perempuan.','Kartini adalah Seorang tokoh yang memperjuangkan pendidikan untuk perempuan.','Kartini, seorang Tokoh yang memperjuangkan Pendidikan untuk perempuan.','Kartini adalah seorang tokoh yang memperjuangkan Pendidikan untuk Perempuan.','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('735','20','50',' <br> Raden Ajeng Kartini lahir di Jepara, Jawa Tengah, pada tanggal 21 April 1879. Ia dikenal sebagai pejuang hak-hak perempuan dan pendiri organisasi perempuan di Indonesia. Kartini adalah seorang tokoh yang memperjuangkan pendidikan untuk perempuan dan menulis banyak surat yang mengungkapkan harapannya untuk melihat perempuan Indonesia mendapatkan pendidikan yang setara dengan laki-laki. Karya-karyanya, yang terkenal antara lain adalah <i>Habis Gelap, Terbitlah Terang</i>, telah menginspirasi banyak orang untuk memperjuangkan kesetaraan gender. <br>Dari teks di atas, R.A. Kartini dikenal sebagai pejuang hak-hak perempuan dan pendiri....','1','Organisasi pemuda','Organisasi wanita','Lembaga pendidikan','Rumah sakit','Pusat kebudayaan','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('741','21','1',' <br><i>&ldquo;B.J. Habibie, Presiden ketiga Indonesia, dikenal sebagai seorang teknokrat yang cerdas dan berprestasi. Beliau adalah tokoh yang berperan besar dalam memajukan industri pesawat terbang di Indonesia melalui PT. IPTN (Industri Pesawat Terbang Nusantara). Dengan latar belakang pendidikan teknik penerbangan di Jerman, Habibie tidak hanya berhasil mengembangkan teknologi pesawat terbang, tetapi juga membangun fondasi penting untuk kemajuan teknologi di Indonesia. Meskipun masa jabatannya sebagai presiden singkat, kontribusinya dalam dunia teknologi dan pendidikan sangat berpengaruh hingga kini.&rdquo;</i><br>Apa kontribusi utama B.J. Habibie bagi Indonesia berdasarkan teks di atas&hellip;&hellip;&hellip;&hellip;&hellip;.','1','Memajukan industri pertanian','Mengembangkan teknologi pesawat terbang','Meningkatkan sektor pariwisata','Membuka jalur perdagangan baru','Meningkatkan sektor ekonomi melalui teknik penerbangan ','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('742','21','2','<br><i> &ldquo;B.J. Habibie, Presiden ketiga Indonesia, dikenal sebagai seorang teknokrat yang cerdas dan berprestasi. Beliau adalah tokoh yang berperan besar dalam memajukan industri pesawat terbang di Indonesia melalui PT. IPTN (Industri Pesawat Terbang Nusantara). Dengan latar belakang pendidikan teknik penerbangan di Jerman, Habibie tidak hanya berhasil mengembangkan teknologi pesawat terbang, tetapi juga membangun fondasi penting untuk kemajuan teknologi di Indonesia. Meskipun masa jabatannya sebagai presiden singkat, kontribusinya dalam dunia teknologi dan pendidikan sangat berpengaruh hingga kini.&rdquo;</i><br>Mengapa B.J. Habibie dianggap sebagai seorang tokoh yang berprestasi&hellip;&hellip;','1','Karena berhasil menjadi presiden yang memerintah paling lama','Karena berhasil membangun fondasi penting dalam dunia teknologi di Indonesia','Karena memiliki latar belakang pendidikan hukum yang kuat','Karena berperan dalam meningkatkan sektor ekonomi','Karena salah satu tokoh berpengaruh bangsa ','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('743','21','3','<br><i> &ldquo;B.J. Habibie, Presiden ketiga Indonesia, dikenal sebagai seorang teknokrat yang cerdas dan berprestasi. Beliau adalah tokoh yang berperan besar dalam memajukan industri pesawat terbang di Indonesia melalui PT. IPTN (Industri Pesawat Terbang Nusantara). Dengan latar belakang pendidikan teknik penerbangan di Jerman, Habibie tidak hanya berhasil mengembangkan teknologi pesawat terbang, tetapi juga membangun fondasi penting untuk kemajuan teknologi di Indonesia. Meskipun masa jabatannya sebagai presiden singkat, kontribusinya dalam dunia teknologi dan pendidikan sangat berpengaruh hingga kini.&rdquo;</i><br>Di manakah B.J. Habibie menyelesaikan pendidikannya dalam bidang teknik penerbangan&hellip;..','1','Amerika Serikat','Jepang','Jerman','Inggris','Indonesia ','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('744','21','4','<br><i> &ldquo;B.J. Habibie, Presiden ketiga Indonesia, dikenal sebagai seorang teknokrat yang cerdas dan berprestasi. Beliau adalah tokoh yang berperan besar dalam memajukan industri pesawat terbang di Indonesia melalui PT. IPTN (Industri Pesawat Terbang Nusantara). Dengan latar belakang pendidikan teknik penerbangan di Jerman, Habibie tidak hanya berhasil mengembangkan teknologi pesawat terbang, tetapi juga membangun fondasi penting untuk kemajuan teknologi di Indonesia. Meskipun masa jabatannya sebagai presiden singkat, kontribusinya dalam dunia teknologi dan pendidikan sangat berpengaruh hingga kini.&rdquo;</i><br>Berdasarkan teks, apa yang masih berpengaruh dari kontribusi B.J. Habibie hingga saat ini&hellip;&hellip;..','1','Teknologi dan pendidikan','Pariwisata dan perdagangan','Politik dan ekonomi','Olahraga dan seni','Ekonomi dan Priwisata ','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('745','21','5','<br><i> &ldquo;B.J. Habibie, Presiden ketiga Indonesia, dikenal sebagai seorang teknokrat yang cerdas dan berprestasi. Beliau adalah tokoh yang berperan besar dalam memajukan industri pesawat terbang di Indonesia melalui PT. IPTN (Industri Pesawat Terbang Nusantara). Dengan latar belakang pendidikan teknik penerbangan di Jerman, Habibie tidak hanya berhasil mengembangkan teknologi pesawat terbang, tetapi juga membangun fondasi penting untuk kemajuan teknologi di Indonesia. Meskipun masa jabatannya sebagai presiden singkat, kontribusinya dalam dunia teknologi dan pendidikan sangat berpengaruh hingga kini.&rdquo;</i><br>Masa jabatan B.J. Habibie sebagai presiden disebutkan dalam teks sebagai&hellip;&hellip;&hellip;&hellip;','1','Sangat lama','Cukup panjang','Singkat','Tidak dijelaskan','Lama','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('746','21','6','Siti Aisyah adalah seorang penulis yang sudah berkarya sejak usia 18 tahun. Buku-bukunya sering kali mengangkat tema-tema sosial, seperti kemiskinan dan ketidakadilan. Siti dikenal memiliki gaya bahasa yang lugas dan mampu menyentuh hati pembacanya. Pada tahun 2018, ia menerima penghargaan &quot;Penulis Muda Berbakat&quot; atas kontribusinya dalam dunia sastra. Di luar menulis, Siti juga aktif dalam kegiatan sosial dan sering menjadi pembicara dalam seminar-seminar pendidikan<br>Apa profesi utama Siti Aisyah berdasarkan teks&hellip;&hellip;&hellip;&hellip;','1','Dosen','Pengacara','Penulis','Dokter','Pengusaha','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('747','21','7',' Siti Aisyah adalah seorang penulis yang sudah berkarya sejak usia 18 tahun. Buku-bukunya sering kali mengangkat tema-tema sosial, seperti kemiskinan dan ketidakadilan. Siti dikenal memiliki gaya bahasa yang lugas dan mampu menyentuh hati pembacanya. Pada tahun 2018, ia menerima penghargaan &quot;Penulis Muda Berbakat&quot; atas kontribusinya dalam dunia sastra. Di luar menulis, Siti juga aktif dalam kegiatan sosial dan sering menjadi pembicara dalam seminar-seminar pendidikan. <br>Tema apa yang sering diangkat oleh Siti dalam buku-bukunya&hellip;&hellip;.','1','Teknologi dan inovasi','Alam dan lingkungan','Sosial, seperti kemiskinan dan ketidakadilan','Kesehatan dan kebugaran','Politik dan kekuasaan','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('748','21','8',' Siti Aisyah adalah seorang penulis yang sudah berkarya sejak usia 18 tahun. Buku-bukunya sering kali mengangkat tema-tema sosial, seperti kemiskinan dan ketidakadilan. Siti dikenal memiliki gaya bahasa yang lugas dan mampu menyentuh hati pembacanya. Pada tahun 2018, ia menerima penghargaan &quot;Penulis Muda Berbakat&quot; atas kontribusinya dalam dunia sastra. Di luar menulis, Siti juga aktif dalam kegiatan sosial dan sering menjadi pembicara dalam seminar-seminar pendidikan. <br>Pada usia berapa Siti Aisyah mulai berkarya sebagai penulis&hellip;&hellip;','1','15 tahun','18 tahun','20 tahun','25 tahun','30 tahun','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('749','21','9',' Siti Aisyah adalah seorang penulis yang sudah berkarya sejak usia 18 tahun. Buku-bukunya sering kali mengangkat tema-tema sosial, seperti kemiskinan dan ketidakadilan. Siti dikenal memiliki gaya bahasa yang lugas dan mampu menyentuh hati pembacanya. Pada tahun 2018, ia menerima penghargaan &quot;Penulis Muda Berbakat&quot; atas kontribusinya dalam dunia sastra. Di luar menulis, Siti juga aktif dalam kegiatan sosial dan sering menjadi pembicara dalam seminar-seminar pendidikan. <br>Bagaimana gaya bahasa yang digunakan Siti dalam menulis&hellip;&hellip;.','1','Rumit dan sulit dipahami','Puitis dan berbelit-belit','Lugas dan menyentuh hati','Formal dan kaku','Bertele-tele dan panjang','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('750','21','10',' Siti Aisyah adalah seorang penulis yang sudah berkarya sejak usia 18 tahun. Buku-bukunya sering kali mengangkat tema-tema sosial, seperti kemiskinan dan ketidakadilan. Siti dikenal memiliki gaya bahasa yang lugas dan mampu menyentuh hati pembacanya. Pada tahun 2018, ia menerima penghargaan &quot;Penulis Muda Berbakat&quot; atas kontribusinya dalam dunia sastra. Di luar menulis, Siti juga aktif dalam kegiatan sosial dan sering menjadi pembicara dalam seminar-seminar pendidikan. <br>Penghargaan apa yang diterima Siti Aisyah pada tahun 2018&hellip;&hellip;&hellip;.','1','Penghargaan sastra internasional','Penghargaan &quot;Penulis Muda Berbakat&quot;','Penghargaan &quot;Penulis Wanita Terbaik&quot;','Penghargaan untuk kegiatan social','Penghargaan untuk karya ilmiah','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('751','21','11',' Apa fungsi utama dari sebuah ensiklopedia?','1','Menceritakan kisah fiksi','Menyediakan informasi faktual dan ringkas tentang berbagai topik','Menyebarkan rumor dan opini','Menampilkan berita terbaru','Membuat daftar belanja','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('752','21','12',' Apa yang membedakan ensiklopedia dari kamus?','1','Ensiklopedia lebih fokus pada definisi kata-kata','Ensiklopedia menjelaskan konsep dan topik secara mendalam','Kamus berisi peta dan grafik','Kamus hanya berisi informasi tentang orang terkenal','Ensiklopedia hanya berisi sinonim dan antonim','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('753','21','13',' Bagaimana cara menggunakan ensiklopedia untuk melacak informasi tentang tokoh sejarah?','1','Mencari dalam daftar pustaka di akhir halaman','Mencari melalui indeks alfabetis atau sistem pencarian','Membaca semua artikel dalam ensiklopedia','Menggunakan fitur pencarian otomatis dengan suara','Menghubungi editor ensiklopedia','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('754','21','14',' Ensiklopedia biasanya terbagi ke dalam beberapa volume. Bagaimana cara mengidentifikasi volume yang berisi informasi yang dibutuhkan?','1','Membaca semua volume satu per satu','Memilih volume secara acak','Melihat indeks umum yang biasanya terletak di akhir atau awal set ensiklopedia','Mengabaikan volume dan mencari di internet','Mencari volume yang berjudul &quot;Volume Khusus&quot;','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('755','21','15',' Apa keuntungan utama dari menggunakan ensiklopedia daring dibandingkan versi cetak?','1','Daring lebih sulit diakses','Ensiklopedia daring lebih cepat diperbarui dan mudah diakses','Versi cetak lebih mudah dibawa-bawa','Ensiklopedia daring tidak memerlukan internet','Ensiklopedia daring tidak memiliki fitur pencarian','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('756','21','16',' Apa ciri utama dari informasi yang valid?','1','Berasal dari sumber yang tidak diketahui','Didukung oleh bukti yang dapat diverifikasi','Disebarkan oleh media sosial','Memiliki banyak komentar dari pengguna internet','Informasinya disebarkan secara anonim','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('757','21','17',' Manakah yang merupakan langkah pertama dalam memperkirakan validitas suatu informasi?','1','Mempercayai informasi berdasarkan jumlah orang yang membagikan','Memeriksa sumber informasi','Membaca komentar pengguna lain','Membagikan informasi tanpa pengecekan','Membaca judulnya saja','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('758','21','18',' Sumber mana yang paling dapat diandalkan dalam memperkirakan validitas suatu informasi?','1','Situs web resmi pemerintah atau institusi akademis','Blog pribadi tanpa referensi','Forum diskusi anonim','Akun media sosial tanpa verifikasi','Video viral di platform hiburan','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('759','21','19',' Jika Anda menemukan artikel ilmiah, apa yang harus Anda periksa untuk memastikan validitasnya?','1','Panjang artikel','Jumlah kata sulit yang digunakan','Apakah artikel tersebut menyertakan referensi dari sumber terpercaya','Kecepatan akses halaman web','Banyaknya iklan yang muncul','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('760','21','20',' Apa yang harus dilakukan jika ada informasi yang terlihat meragukan, tetapi Anda tidak yakin dengan validitasnya?','1','Langsung membagikannya','Mencari informasi tambahan dari sumber lain yang terpercaya','Mengabaikannya sepenuhnya','Menyebarkannya ke grup chat untuk meminta pendapat','Menyimpulkan sendiri tanpa verifikasi','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('761','21','21',' Tanda petik digunakan untuk menandai apa dalam sebuah kalimat?','1','Nama orang','Kutipan langsung atau judul karya pendek','Judul buku','Penjelasan tambahan','Kata serapan dari bahasa asing','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('762','21','22',' Manakah penggunaan tanda petik yang benar?','1','Buku favorit saya adalah &quot;Laskar Pelangi&quot;.','Ia berkata, bahwa &quot;Saya akan datang besok.&quot;','Saya baru menonton film &quot;Interstellar&quot;.','Novel yang sedang saya baca berjudul &#39;Harry Potter&#39;.','&quot;Dia berkata akan datang&quot;, kata ibu.','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('763','21','23',' Huruf miring biasanya digunakan untuk menandai apa?','1','Infografik','Nama tokoh dalam cerita','Menegaskan istilah asing atau judul buku, majalah, atau surat kabar','Nama tempat','Bagian penting dalam kalimat','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('764','21','24',' Manakah contoh penggunaan huruf miring yang benar?','1','Saya sedang membaca majalah Tempo.','Kata laptop sudah menjadi umum di Indonesia.','Film favorit saya adalah <i>Parasite.</i>','Dia berkata bahwa saya harus &quot;menemui guru besok&quot;.','Kita harus pergi ke <i>Bandung</i> minggu depan.','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('765','21','25',' Kapan huruf miring tidak diperlukan dalam penulisan?','1','Ketika menulis istilah asing dalam kalimat','Ketika menyebut judul buku','Saat menuliskan kutipan langsung','Saat menyebut nama majalah','Saat menandai istilah teknis atau ilmiah','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('766','21','26',' Apa tujuan utama dari infografik?','1','Menciptakan karya seni','Menghibur audiens','Menyampaikan informasi secara jelas dan menarik','Menyediakan ruang untuk opini pribadi','Mengganti teks panjang dengan gambar','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('767','21','27',' Komponen apa yang biasanya terdapat dalam infografik?','1','Hanya teks panjang','Gambar, grafik, dan data statistik','Hanya gambar tanpa penjelasan','Teks tanpa struktur','Video dan audio','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('768','21','28',' Infografik yang baik harus memiliki...','1','Banyak teks dan sedikit gambar','Desain yang rumit dan warna mencolok','Fokus yang jelas dan alur informasi yang logis','Berbagai jenis font yang berbeda','Konten yang tidak relevan','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('769','21','29',' Apa jenis data yang sering disajikan dalam infografik?','1','Data historis yang tidak relevan','Data statistik, diagram, dan grafik','Data tanpa konteks','Hanya opini pribadi','Karya sastra','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('770','21','30',' Dalam membuat infografik, penting untuk memperhatikan...','1','Hanya estetika visual','Keakuratan dan kredibilitas sumber informasi','Panjang teks yang digunakan','Berbagai warna yang tidak serasi','Menciptakan banyak elemen visual tanpa tujuan','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('771','21','31',' Apa yang perlu diperhatikan ketika menyimak berita di televisi untuk mendapatkan informasi yang akurat?','1','Jumlah iklan yang ditampilkan','Nama penyiar berita','Sumber informasi yang disebutkan dalam berita','Durasi tayangan','Kualitas video','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('772','21','32',' Saat mendengarkan informasi dari podcast, apa langkah yang tepat untuk memverifikasi kebenaran informasi?','1','Mengandalkan narasi podcast tanpa pengecekan','Memeriksa sumber yang disebutkan dalam podcast','Hanya melihat jumlah pendengar podcast','Membagikan informasi tanpa verifikasi','Menyimak judul podcast saja','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('773','21','33',' Ketika menyimak siaran radio, apa yang sebaiknya dilakukan agar informasi yang diperoleh dapat diingat dengan baik?','1','Mengingat seluruh detail pembicaraan','Membuat catatan penting dari informasi yang disampaikan','Hanya mendengarkan separuh siaran','Mengabaikan informasi yang tidak penting','Mematikan radio ketika tidak tertarik','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('774','21','34',' Dalam menyimak berita online melalui media elektronik, faktor apa yang paling penting untuk memastikan keakuratan informasi?','1','Popularitas situs berita','Sumber informasi yang jelas dan kredibel','Kecepatan akses halaman web','Banyaknya komentar dari pengguna','Warna dan desain situs web','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('775','21','35',' Ketika menonton dokumenter di platform video, apa yang perlu diperhatikan untuk menilai objektivitas informasi?','1','Gaya editing dan sinematografi','Popularitas dokumenter di media sosial','Referensi yang disertakan di akhir video','Waktu rilis dokumenter','Komentar pengguna pada video','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('776','21','36',' <br> Inovasi Teknologi dalam Kehidupan Modern<br>Perkembangan teknologi saat ini semakin pesat dan telah membawa perubahan besar dalam berbagai aspek kehidupan. Salah satu inovasi yang paling menonjol adalah dalam bidang komunikasi. Kemajuan ini memungkinkan orang untuk terhubung secara simultan di seluruh dunia melalui internet. Selain itu, teknologi juga telah berperan dalam ekspansi bisnis yang memungkinkan perusahaan-perusahaan untuk memperluas jangkauan pasar mereka. <br>Namun, di sisi lain, beberapa pihak tetap memiliki pandangan yang konservatif terkait penerapan teknologi baru, terutama dalam sektor pendidikan. Mereka berpendapat bahwa perubahan yang terlalu cepat dapat menyebabkan ketidakstabilan. Meskipun demikian, banyak yang melihat teknologi sebagai alat yang inovatif dalam memecahkan berbagai tantangan global. Untuk itu, penting bagi setiap individu untuk memahami perkembangan ini dan beradaptasi dengan cara yang progresif dalam menghadapi tantangan masa depan. <br>Kata &quot;simultan&quot; dalam teks di atas berarti....','1','Terpisah','Secara bersamaan','Bergantian','Bertahap','Terpisah waktu','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('777','21','37',' <br> Inovasi Teknologi dalam Kehidupan Modern<br>Perkembangan teknologi saat ini semakin pesat dan telah membawa perubahan besar dalam berbagai aspek kehidupan. Salah satu inovasi yang paling menonjol adalah dalam bidang komunikasi. Kemajuan ini memungkinkan orang untuk terhubung secara simultan di seluruh dunia melalui internet. Selain itu, teknologi juga telah berperan dalam ekspansi bisnis yang memungkinkan perusahaan-perusahaan untuk memperluas jangkauan pasar mereka. <br>Namun, di sisi lain, beberapa pihak tetap memiliki pandangan yang konservatif terkait penerapan teknologi baru, terutama dalam sektor pendidikan. Mereka berpendapat bahwa perubahan yang terlalu cepat dapat menyebabkan ketidakstabilan. Meskipun demikian, banyak yang melihat teknologi sebagai alat yang inovatif dalam memecahkan berbagai tantangan global. Untuk itu, penting bagi setiap individu untuk memahami perkembangan ini dan beradaptasi dengan cara yang progresif dalam menghadapi tantangan masa depan. <br>Kata &quot;ekspansi&quot; dalam kalimat &quot;teknologi juga telah berperan dalam ekspansi bisnis&quot; memiliki arti....','1','Penutupan','Pengurangan','Perluasan','Pemindahan','Penghapusan','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('778','21','38',' <br> Inovasi Teknologi dalam Kehidupan Modern<br>Perkembangan teknologi saat ini semakin pesat dan telah membawa perubahan besar dalam berbagai aspek kehidupan. Salah satu inovasi yang paling menonjol adalah dalam bidang komunikasi. Kemajuan ini memungkinkan orang untuk terhubung secara simultan di seluruh dunia melalui internet. Selain itu, teknologi juga telah berperan dalam ekspansi bisnis yang memungkinkan perusahaan-perusahaan untuk memperluas jangkauan pasar mereka. <br>Namun, di sisi lain, beberapa pihak tetap memiliki pandangan yang konservatif terkait penerapan teknologi baru, terutama dalam sektor pendidikan. Mereka berpendapat bahwa perubahan yang terlalu cepat dapat menyebabkan ketidakstabilan. Meskipun demikian, banyak yang melihat teknologi sebagai alat yang inovatif dalam memecahkan berbagai tantangan global. Untuk itu, penting bagi setiap individu untuk memahami perkembangan ini dan beradaptasi dengan cara yang progresif dalam menghadapi tantangan masa depan. <br>Pandangan &quot;konservatif&quot; dalam teks tersebut merujuk pada....','1','Pendekatan yang hati-hati dan tradisional','Ide yang radikal dan cepat berubah','Upaya untuk mempercepat perubahan','Pemikiran yang sepenuhnya progresif','Sikap menolak teknologi','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('779','21','39',' <br> Inovasi Teknologi dalam Kehidupan Modern<br>Perkembangan teknologi saat ini semakin pesat dan telah membawa perubahan besar dalam berbagai aspek kehidupan. Salah satu inovasi yang paling menonjol adalah dalam bidang komunikasi. Kemajuan ini memungkinkan orang untuk terhubung secara simultan di seluruh dunia melalui internet. Selain itu, teknologi juga telah berperan dalam ekspansi bisnis yang memungkinkan perusahaan-perusahaan untuk memperluas jangkauan pasar mereka. <br>Namun, di sisi lain, beberapa pihak tetap memiliki pandangan yang konservatif terkait penerapan teknologi baru, terutama dalam sektor pendidikan. Mereka berpendapat bahwa perubahan yang terlalu cepat dapat menyebabkan ketidakstabilan. Meskipun demikian, banyak yang melihat teknologi sebagai alat yang inovatif dalam memecahkan berbagai tantangan global. Untuk itu, penting bagi setiap individu untuk memahami perkembangan ini dan beradaptasi dengan cara yang progresif dalam menghadapi tantangan masa depan. <br>Kata &quot;inovatif&quot; dalam teks tersebut merujuk pada sesuatu yang....','1','Tradisional dan kuno','Kreatif dan membawa perubahan baru','Statis dan tidak berkembang','Kembali ke masa lalu','Perlahan dan tidak berkembang','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('780','21','40',' <br> Inovasi Teknologi dalam Kehidupan Modern<br>Perkembangan teknologi saat ini semakin pesat dan telah membawa perubahan besar dalam berbagai aspek kehidupan. Salah satu inovasi yang paling menonjol adalah dalam bidang komunikasi. Kemajuan ini memungkinkan orang untuk terhubung secara simultan di seluruh dunia melalui internet. Selain itu, teknologi juga telah berperan dalam ekspansi bisnis yang memungkinkan perusahaan-perusahaan untuk memperluas jangkauan pasar mereka. <br>Namun, di sisi lain, beberapa pihak tetap memiliki pandangan yang konservatif terkait penerapan teknologi baru, terutama dalam sektor pendidikan. Mereka berpendapat bahwa perubahan yang terlalu cepat dapat menyebabkan ketidakstabilan. Meskipun demikian, banyak yang melihat teknologi sebagai alat yang inovatif dalam memecahkan berbagai tantangan global. Untuk itu, penting bagi setiap individu untuk memahami perkembangan ini dan beradaptasi dengan cara yang progresif dalam menghadapi tantangan masa depan. <br>Kata &quot;progresif&quot; dalam kalimat &quot;beradaptasi dengan cara yang progresif&quot; berarti....','1','Melawan perubahan','Berpikir maju dan berkembang','Terlalu hati-hati','Menghindari risiko','Mengikuti aturan lama','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('781','21','41',' <br> Bacharuddin Jusuf Habibie, atau yang lebih dikenal sebagai B.J. Habibie, lahir di Parepare, Sulawesi Selatan, pada tanggal 25 Juni 1936. Ia merupakan Presiden ketiga Republik Indonesia yang menjabat dari tahun 1998 hingga 1999. Habibie dikenal sebagai salah satu tokoh yang sangat berpengaruh dalam dunia teknologi dan penerbangan di Indonesia. Ia menghabiskan sebagian besar hidupnya di Jerman untuk menuntut ilmu dan bekerja sebagai insinyur. Salah satu pencapaiannya yang terkenal adalah merancang pesawat terbang pertama buatan Indonesia, N250 Gatotkaca. Selain prestasinya di bidang teknologi, Habibie juga dikenal karena kepemimpinannya di masa transisi reformasi. <br>Dari kutipan di atas, kapan dan di mana B.J. Habibie lahir?','1','Jakarta, 21 Juni 1936','Bandung, 24 Juni 1936','Parepare, 25 Juni 1936','Surabaya, 23 Juni 1936','Makassar, 25 Juni 1937','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('782','21','42',' <br> Bacharuddin Jusuf Habibie, atau yang lebih dikenal sebagai B.J. Habibie, lahir di Parepare, Sulawesi Selatan, pada tanggal 25 Juni 1936. Ia merupakan Presiden ketiga Republik Indonesia yang menjabat dari tahun 1998 hingga 1999. Habibie dikenal sebagai salah satu tokoh yang sangat berpengaruh dalam dunia teknologi dan penerbangan di Indonesia. Ia menghabiskan sebagian besar hidupnya di Jerman untuk menuntut ilmu dan bekerja sebagai insinyur. Salah satu pencapaiannya yang terkenal adalah merancang pesawat terbang pertama buatan Indonesia, N250 Gatotkaca. Selain prestasinya di bidang teknologi, Habibie juga dikenal karena kepemimpinannya di masa transisi reformasi. <br>Apa prestasi terbesar B.J. Habibie di bidang teknologi penerbangan yang disebutkan dalam teks?','1','Merancang kapal selam pertama Indonesia','Merancang pesawat terbang N250 Gatotkaca','Mengembangkan teknologi komunikasi satelit','Mendirikan pabrik otomotif nasional','Merancang sistem pertahanan negara','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('783','21','43',' <br> Bacharuddin Jusuf Habibie, atau yang lebih dikenal sebagai B.J. Habibie, lahir di Parepare, Sulawesi Selatan, pada tanggal 25 Juni 1936. Ia merupakan Presiden ketiga Republik Indonesia yang menjabat dari tahun 1998 hingga 1999. Habibie dikenal sebagai salah satu tokoh yang sangat berpengaruh dalam dunia teknologi dan penerbangan di Indonesia. Ia menghabiskan sebagian besar hidupnya di Jerman untuk menuntut ilmu dan bekerja sebagai insinyur. Salah satu pencapaiannya yang terkenal adalah merancang pesawat terbang pertama buatan Indonesia, N250 Gatotkaca. Selain prestasinya di bidang teknologi, Habibie juga dikenal karena kepemimpinannya di masa transisi reformasi. <br>Di negara mana B.J. Habibie menghabiskan sebagian besar hidupnya untuk belajar dan bekerja sebagai insinyur?','1','Amerika Serikat','Belanda','Inggris','Jerman','Prancis','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('784','21','44',' <br> Bacharuddin Jusuf Habibie, atau yang lebih dikenal sebagai B.J. Habibie, lahir di Parepare, Sulawesi Selatan, pada tanggal 25 Juni 1936. Ia merupakan Presiden ketiga Republik Indonesia yang menjabat dari tahun 1998 hingga 1999. Habibie dikenal sebagai salah satu tokoh yang sangat berpengaruh dalam dunia teknologi dan penerbangan di Indonesia. Ia menghabiskan sebagian besar hidupnya di Jerman untuk menuntut ilmu dan bekerja sebagai insinyur. Salah satu pencapaiannya yang terkenal adalah merancang pesawat terbang pertama buatan Indonesia, N250 Gatotkaca. Selain prestasinya di bidang teknologi, Habibie juga dikenal karena kepemimpinannya di masa transisi reformasi. <br>B.J. Habibie menjabat sebagai Presiden Indonesia pada periode....','1','1996-1997','1998-1999','1997-1998','1999-2000','1995-1996','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('785','21','45',' <br> Bacharuddin Jusuf Habibie, atau yang lebih dikenal sebagai B.J. Habibie, lahir di Parepare, Sulawesi Selatan, pada tanggal 25 Juni 1936. Ia merupakan Presiden ketiga Republik Indonesia yang menjabat dari tahun 1998 hingga 1999. Habibie dikenal sebagai salah satu tokoh yang sangat berpengaruh dalam dunia teknologi dan penerbangan di Indonesia. Ia menghabiskan sebagian besar hidupnya di Jerman untuk menuntut ilmu dan bekerja sebagai insinyur. Salah satu pencapaiannya yang terkenal adalah merancang pesawat terbang pertama buatan Indonesia, N250 Gatotkaca. Selain prestasinya di bidang teknologi, Habibie juga dikenal karena kepemimpinannya di masa transisi reformasi. <br>B.J. Habibie dikenal atas perannya dalam masa transisi menuju....','1','Revolusi Industri','Era Reformasi','Era Globalisasi','Masa Kemerdekaan','Era Digital','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('786','21','46',' <br> Raden Ajeng Kartini lahir di Jepara, Jawa Tengah, pada tanggal 21 April 1879. Ia dikenal sebagai pejuang hak-hak perempuan dan pendiri organisasi perempuan di Indonesia. Kartini adalah seorang tokoh yang memperjuangkan pendidikan untuk perempuan dan menulis banyak surat yang mengungkapkan harapannya untuk melihat perempuan Indonesia mendapatkan pendidikan yang setara dengan laki-laki. Karya-karyanya, yang terkenal antara lain adalah <i>Habis Gelap, Terbitlah Terang</i>, telah menginspirasi banyak orang untuk memperjuangkan kesetaraan gender. <br>Dari kutipan di atas, kapan dan di mana R.A. Kartini lahir?','1','Jakarta, 21 April 1879','Semarang, 20 April 1879','Jepara, 21 April 1879','Solo, 21 Maret 1878','Surabaya, 21 April 1878','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('787','21','47',' <br> Raden Ajeng Kartini lahir di Jepara, Jawa Tengah, pada tanggal 21 April 1879. Ia dikenal sebagai pejuang hak-hak perempuan dan pendiri organisasi perempuan di Indonesia. Kartini adalah seorang tokoh yang memperjuangkan pendidikan untuk perempuan dan menulis banyak surat yang mengungkapkan harapannya untuk melihat perempuan Indonesia mendapatkan pendidikan yang setara dengan laki-laki. Karya-karyanya, yang terkenal antara lain adalah <i>Habis Gelap, Terbitlah Terang</i>, telah menginspirasi banyak orang untuk memperjuangkan kesetaraan gender. <br>Apa yang diperjuangkan R.A. Kartini menurut teks di atas?','1','Hak-hak laki-laki','Pendidikan untuk perempuan','Pembangunan infrastruktur','Kesehatan masyarakat','Kebudayaan tradisional','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('788','21','48',' <br> Raden Ajeng Kartini lahir di Jepara, Jawa Tengah, pada tanggal 21 April 1879. Ia dikenal sebagai pejuang hak-hak perempuan dan pendiri organisasi perempuan di Indonesia. Kartini adalah seorang tokoh yang memperjuangkan pendidikan untuk perempuan dan menulis banyak surat yang mengungkapkan harapannya untuk melihat perempuan Indonesia mendapatkan pendidikan yang setara dengan laki-laki. Karya-karyanya, yang terkenal antara lain adalah <i>Habis Gelap, Terbitlah Terang</i>, telah menginspirasi banyak orang untuk memperjuangkan kesetaraan gender. <br>Dalam kutipan tersebut, apa judul karya terkenal R.A. Kartini?','1','Habis Gelap, Terbitlah Terang','Bunga Rampai','Pendidikan Perempuan','Surat-surat Kartini','Perjuangan Wanita','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('789','21','49',' <br> Raden Ajeng Kartini lahir di Jepara, Jawa Tengah, pada tanggal 21 April 1879. Ia dikenal sebagai pejuang hak-hak perempuan dan pendiri organisasi perempuan di Indonesia. Kartini adalah seorang tokoh yang memperjuangkan pendidikan untuk perempuan dan menulis banyak surat yang mengungkapkan harapannya untuk melihat perempuan Indonesia mendapatkan pendidikan yang setara dengan laki-laki. Karya-karyanya, yang terkenal antara lain adalah <i>Habis Gelap, Terbitlah Terang</i>, telah menginspirasi banyak orang untuk memperjuangkan kesetaraan gender. <br>Manakah kalimat yang menggunakan ejaan yang baik dan benar?','1','Kartini adalah seorang tokoh yang memperjuangkan pendidikan untuk Perempuan.','Kartini, seorang tokoh yang memperjuangkan pendidikan untuk perempuan.','Kartini adalah Seorang tokoh yang memperjuangkan pendidikan untuk perempuan.','Kartini, seorang Tokoh yang memperjuangkan Pendidikan untuk perempuan.','Kartini adalah seorang tokoh yang memperjuangkan Pendidikan untuk Perempuan.','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('790','21','50',' <br> Raden Ajeng Kartini lahir di Jepara, Jawa Tengah, pada tanggal 21 April 1879. Ia dikenal sebagai pejuang hak-hak perempuan dan pendiri organisasi perempuan di Indonesia. Kartini adalah seorang tokoh yang memperjuangkan pendidikan untuk perempuan dan menulis banyak surat yang mengungkapkan harapannya untuk melihat perempuan Indonesia mendapatkan pendidikan yang setara dengan laki-laki. Karya-karyanya, yang terkenal antara lain adalah <i>Habis Gelap, Terbitlah Terang</i>, telah menginspirasi banyak orang untuk memperjuangkan kesetaraan gender. <br>Dari teks di atas, R.A. Kartini dikenal sebagai pejuang hak-hak perempuan dan pendiri....','1','Organisasi pemuda','Organisasi wanita','Lembaga pendidikan','Rumah sakit','Pusat kebudayaan','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('791','21','1','Cermatilah kutipan berikut! <br>&ldquo;R.A. Kartini dikenal sebagai tokoh emansipasi wanita Indonesia. Ia memperjuangkan hak-hak perempuan untuk memperoleh pendidikan yang setara dengan laki-laki. Melalui surat-suratnya yang dikumpulkan dalam buku <i>Habis Gelap Terbitlah Terang</i>, Kartini menginspirasi banyak perempuan untuk berani bermimpi dan berjuang.&rdquo; <br>Apa informasi penting tentang tokoh R.A. Kartini yang dapat kamu simpulkan dari kutipan di atas? <br>','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('792','21','2','Cermatilah teks berikut! <br>&ldquo;B.J. Habibie adalah Presiden ketiga Republik Indonesia. Ia dikenal sebagai ilmuwan dan insinyur pesawat terbang yang sangat cerdas. Kecintaannya pada ilmu pengetahuan membuatnya berperan besar dalam pengembangan teknologi di Indonesia.&rdquo; <br>Nilai-nilai positif apa yang dapat kamu teladani dari sosok B.J. Habibie berdasarkan teks tersebut? <br>','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('793','21','3',' Cermatilah teks berikut! <br>&ldquo;Soekarno adalah tokoh yang berperan penting dalam memproklamasikan kemerdekaan Indonesia pada 17 Agustus 1945. Ia memiliki kemampuan berpidato yang luar biasa dan semangat nasionalisme yang tinggi.&rdquo; <br>Bagaimana cara penulis menyampaikan informasi tentang tokoh Soekarno pada teks tersebut? <br>','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('794','21','4','  sebutkan hal-hal yang dapat dilakukan untuk meminimalkan bias informasi?','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('795','21','5',' Cermatilah cuplikan dari video kewirausahaan berikut! <br>&ldquo;Seorang pengusaha muda menceritakan bahwa ia memanfaatkan media sosial untuk memasarkan produknya. Dengan strategi digital marketing yang tepat, penjualan meningkat pesat. Ia juga berpesan agar wirausahawan muda tidak mudah menyerah dan terus beradaptasi dengan perkembangan teknologi.&rdquo; <br>Jelaskan pesan yang dapat kamu ambil dari informasi dalam video tersebut terkait sikap seorang wirausahawan! <br>','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('796','20','1',' Lintang kuwi bocah sing jembar polatane mula sapa sing kekancan mesthi seneng.Tembung kang kacithak miring tegese&hellip;.','1','Seneng tetulung','Sabar','Sugih pangapura','Sumringah','Akeh kawruh','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('797','20','2',' Perangan kang kudu ana sajroning crita kanggo mangun amrih mujudake crita kang gampang dinalar iku diarani unsur&hellip;..','1','Eksposisi','Ekstrinsik','Intrinsic','Deskripsi','Narasi','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('798','20','3',' Ing ngisor iki ora klebu unsur kang mangun sawijining cerkak yaiku&hellip;.','1','Plot','Irah-irahan','Penokohan','Tema','Setting','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('799','20','4',' Ing ngisor iki kang nuduhake purwakanthi sastra yaiku&hellip;&hellip;','1','Sipating guru iku mung tutwuri handayani','Aja dahwen ati open yen kowe kepengen kajen','Pemudhi iku polatane ruruh tandange sarwa rereh,ririh angarah-ngarah','Witing tresna,tresnane mung sawentara','Mangan ati,atine wong lara lapa','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('800','20','5',' Sakjroning cerkak ngemu nilai ana gegayutan karo babagan sing narik kawigaten awit saka kaendahan seni utawa nyenengake kang diarani nilai','1','Etika','Sosial','Estetis','Kmanungsan','Budaya','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('801','20','6',' Sakjroning cerkak ana paraga kang bisa luwuh saka siji.dene paraga kang nentang dalane cerita diarani paraga&hellip;..','1','Pembantu','Antagonis','Protagonisutama','utama','figuran','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('802','20','7',' Bagean sajroning alur kang ana wuwuhan prakara kang dialami dening paraga diarani&hellip;&hellip;','1','rising action','exposition','turning point','complication','ending','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('803','20','8',' Sakjroning cerkak ana paraga kang bisa luwih saka siji.Dene paraga kang nentang dalane cerita diarani paraga?....','1','Pembantu','Antagonis','Protagonis','Utama','Figuran ','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('804','20','9',' Sakjroning cerkak ana kang surasane crita kawiwitan saka klimaks banjur nyritakake wiwitan prastawa lan ditutugake rerembugan. Cerkak kanthi cerita kaya mangkono minggunaake alur&hellip;.','1','Maju','Flashback','Mundur','Flashback progresif','Campuran','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('805','20','10',' Kang diarani latar sajroning cerkak yaiku&hellip;.','1','Kahananing papan panggonan,wektu,lan swasana nalika kedadeyan ing cerita kasebut dumadi','Carane pangaraipta nggambarake paraga sajroning cerita','Pepiling pangaripta marang pamaca','Posisine pangaripta nalika nyeritakake cerkak','Njlentrehake lakune crita saka wiwitan nganti pungkasam','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('806','20','11',' Sakjroning cerkak ngemu babagan nilai kang ana gegayutane karo tumindak becik lan ala minangka dhasar panguripan manungsa lan masyarakat diarani nilai&hellip;.','1','Etika','Estetis','Pendidikan','Moral','Soasial ','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('807','20','12',' Cerkak kanggo sarana lelipuran lan bisa kanggo sarana panggulawenthah kang bisa kanggo tepa tuladha marang pamaca. Babagan kasebut diarani&hellip;.','1','Leleweling basa','Amanat','Penokohan','Tema','Pamaase pangaripta','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('808','20','13',' sajroning perangan alur ana perangan kang nepungake babagan kahanan,paraga,sarta gegayutan antarpraga kang dicritakake.kang mangkono iku diarani perangan&hellip;..','1','Rising action','Ending','Exposition','Turning point','Complication ','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('809','20','14',' Lintang kuwi bocah sing enthengan tangan mula sapa bae sing kekancan mesthi seneng. Tembung kang kang kacithak miring tegese/','1','Sabar','Seneng tetulung','Akaeh kweruh','Sugih pangapura','Sumringah  ','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('810','20','15',' sajroning tahapan alur ana crita kang diwiwiti saka wektu ana kedadeyan sepisan banjur mundhak akibate terus nganti pungkasan iku diarani&hellip;.','1','Campuran','Regresif','Mundur','Putar Balik','Progresif','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('811','20','16',' Sawijining cerkak iku minangka asli sastra kang asipat fiktif kang ngemu teges&hellip;.','1','Saka kedadeyan ora nyata utawa pangreka panulis','Critane cerkak ora ngayawara','Saka kedadeyan kang nyata ana','Critane runtut saka wiwitan nganti pungkasan','Ngemu pirang-pirang paragon lan alur','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('812','20','17',' Cerkak minangka asli susastra awujud gancaran kang nduweni sipat naratif kang ngemu teges&hellip;..','1','Nyeritakake lelakon kang ditemahi dening manungsa','Surasane crita cerkak aos lan padhet','Sakjroning cerkak nyritakake kesan tunggal','Crita ing cerkak minangka pangreka','Nyeritakake kedadeyan miturut urutan wektu(kronologi)','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('813','20','18',' Panjenengan rawuh wingi, lapangan kidul desa ana pagelaran wayang kulit. Ukara ing duwur migunakake basa &hellip;.','1','Krama lugu','Ngoko alus','Krama alus','Ngoko lugu','Krama madya','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('814','20','19',' Jenising sandiwara kang among bisa dirungokake bae lan ngandelake kualitas swara narator, paraga, dan piranti liyane kang diarani sandiwara &hellip;.','1','TV','Latar','Radio','Sendratari','Panggung','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('815','20','20',' Nalika pacelethon ana babagan sing gegayutan karo sopan santun, tata susila, lan tata pranatane basa kanthi ancas ngajeni marang wong sing diajak guneman. Kang mangkono diarani &hellip;.','1','Subasita','Titi laras','Tata susila','Solah bawa','Unggah ungguh basa','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('816','20','21',' Tegese pacelethon yaiku &hellip;.','1','Ngandarake panemu amrih pamirsa percaya','Pawongan kang lagi ngudarasa','Medhar sabda sajroning pakumpulan masyarakat','Ngaturake asil lapuran kagiyatan ing karang taruna','kagiyatan takon-winangsulan kang ditindakake dening wong loro utawa luwih','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('817','20','22',' Ing pamentasan sandiwara pacelethon antar paraga diarani &hellip;.','1','dialog','epilog','prolog','pandom','monolog','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('818','20','23',' Basa jawa kang kedadeyan saka tembung-tembung ngoko kabeh tanpan kecampuran tembung krama inggil kasebut&hellip;.','1','Ngoko lugu','Ngoko alus','Krama alus','Krama lugu','Krama inggil','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('819','20','24',' Sandiwara kang dipragakake kanthi obahing awak, ananging ora ana dialog mung ana musik lan ekspresi saka praupane lakon diarani sandiwara &hellip;.','1','Dramatikal','Pantomim','Komedi','Wayang','Parodi','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('820','20','25',' Salah sawiining wuud dialog antarane naskah lan oposisi (kontras) diarani sandiwara &hellip;.','1','Dramatikal','Pantomim','Komedi','Wayang','Parodi','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('821','20','26',' Sandiwara kang diparagake karo geguyonan kang sipate nyindir lan pungkasane seneng-seneng diarani sandiwara &hellip;.','1','Dramatikal','Pantomim','Komedi','Wayang','Parodi','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('822','20','27',' Sandiwara kang diparagake diparagake karo saperangan wong utawa paraga kang dibarengi solah bawa diarani sandiwara&hellip;.','1','Dramatikal','Pantomim','Komedi','Wayang','Parodi','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('823','20','28',' Sing ora kalebu carane nulis pacelethon yaiku &hellip;.','1','Wuude guneman','Nemtoake paraga','Guneman ditulis ing jero tandha kutip (&ldquo;&hellip;&rdquo;)','Sawise jeneng paraga diwenehi tandha wacan titik loro ( :)','Jeneng paraga ditulis.','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('824','20','29',' Gatekno ukara ing ngisor iki!<br>Nada: &ldquo;&hellip;.&rdquo;<br>Dian       : &ldquo;Wingi sore nalika udan deres penere ing tikungan kidul desa kae dadi tatu kabeh ngene.&rdquo; <br>Ukara pitakon kang trep diucapake Nada yaiku &hellip;.','1','Kapan olehmu tiba la nana ngendi?','Ing ngendi kowe nemahi kacilakan motor.','Kepriye kok kowe bisa tiba saka motor?','Sapa bae sing melu tiba karo kowe','Geneya kowe tiba lan lan kapan anggonmu tiba?','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('825','20','30',' Perangan naskah drama kang menehi andharan marang kabeh paraga diarani &hellip;.','1','Prolog','Dialog','Pandom','Epilog','Latar','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('826','20','31',' &ldquo; Ayo Rek, nonton pagelaran ludruk ndek pendhapa kabupaten&rdquo;. Ukara kasebut klebu basa &hellip;.','1','Ngoko lugu','Ngoko alus','Krama alus','Krama lugu','Krama inggil','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('827','20','32',' Basa kang dianggo marang wong kang durung akrab utawa kulina diarani basa &hellip;.','1','Ngoko lugu','Ngoko alus','Krama alus','Krama lugu','Krama inggil','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('828','20','33',' Basa kang kekadeyan saka ukara sing dicampur antarane tembung ngoko lan krama diarani basa &hellip;.','1','Ngoko lugu','Ngoko alus','Krama alus','Krama lugu','Krama inggil','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('829','20','34',' &ldquo; Sampeyan sampun kula criyosi bilih kula saget mriki am 13.00 siyang&rdquo;. Ukara kasebut klebu basa &hellip;.','1','Ngoko lugu','Ngoko alus','Krama alus','Krama lugu','Krama inggil','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('830','20','35',' Apa sing bisa ditindakake kanggo ngleksanani unggah-ungguh basa?','1','Nggunakake istilah yang tepat','Ngobrol sembarangan','Ngabaikan etika','Kakehan guyonan','Melingkupi tema yang tidak jelas','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('831','20','1',' Alur kang mangun sawijining cerkak iku meneka warna. Salah sijine yaiku alur  mundur. Geneya crita ing cerkak bisa kaaran minggunakake alur kasebut?','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('832','20','2',' Andharana sing dikarepake amanat minangka unsur intrinsic kang mangun cerkak!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('833','20','3',' Sajroninng paguneman marang wong liya bechik kanthi nggatekake temen babagan unggah-ungguh basa.Sebutna  unggah-ungguh ning pacelathon!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('834','20','4',' Sebutna 3 wujude sandiwara!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('835','20','5',' Andharana tegese pacelathon adhedhasar pandhapuking tembung!','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1286','17','1',' Pak Tono menabung di bank sebesar Rp. 5.000.000,00 dan dikenakan bunga tunggal sebesar 10% pertahun. Besar tabungan Pak Tono setelah 3 tahun adalah...','1',' Rp. 8.500.000,00',' Rp. 7.500.000,00',' Rp. 6.500.000,00',' Rp. 5.750.000,00',' Rp. 5.500.000,00','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1287','17','2',' Ayah menabung di Bank Kaya Raya sebesar Rp. 10.500.000. Jika bank menerapkan bunga tunggal 12% pertahun maka jumlah tabungan ayah setelah 7 bulan adalah ... rupiah','1',' Rp. 13.400.000,00',' Rp. 12.350.000,00',' Rp. 12.325.000,00',' Rp. 11.523.000,00',' Rp. 11.235.000,00','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1288','17','3',' Sebuah pinjaman sebesar Rp10.000.000,00 dikenakan bunga tunggal 12% per tahun. Berapa besar bunga yang harus dibayar setelah 2 tahun?','1',' Rp1.200.000,00',' Rp2.400.000,00',' Rp3.600.000,00',' Rp4.800.000,00',' Rp5.800.000,00','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1289','17','4',' Ibu Ani menabung di bank dengan bunga tunggal 5% per tahun. Setelah 4 tahun, tabungannya menjadi Rp6.000.000,00. Berapa besar tabungan awal Ibu Ani?','1','  Rp6.000.000,00',' Rp6.400.000,00',' Rp5.000.000,00',' Rp7.200.000,00',' Rp7.400.000,00','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1290','17','5',' Jihan mempunyai uang sebesar Rp.100.000,00 yang diinvestasikan selama 5 tahun dengan bunga majemuk 5 % pertahun. Berapakah nilai akhir dana yang diperoleh Jihan?Petunjuk <img src=\"../../files/176016190923.png\">','1',' Rp.172.630,00',' Rp.127.630,00',' Rp.172.360,00',' Rp.127.630,00',' Rp. 127.360,00','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1291','17','6',' Eka meminjam uang dengan sistem anuitas bulanan. Besar anuitas Rp.600.000,00 dan bunga periode ke 5 yang dibayar Rp. 415.000,00 ,maka besar angsuran periode ke 5 adalah','1',' Rp. 185.000,00',' Rp. 175.000,00',' Rp. 165.000,00',' Rp. 155.000,00',' Rp. 195.000,00','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1292','17','7',' Suatu pinjaman sebesar Rp.1.000.000,00 dilunasi dengan 5 anuitas. Anuitas pertama dibayar setelah satu tahun dengan bunga 6 % per tahun. Besarnya anuitas adalah....petunjuk <img src=\"../../files/176016190921.png\">','1',' Rp. 473.453,00',' Rp. 237.435,00',' Rp. 273.435,00',' Rp. 237.453,00',' Rp. 732,435,00','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1293','17','8',' Uang Rp. 100.000,00 didepositokan untuk 3 tahun dengan suku bunga majemuk 10% per tahun. Besarnya bunga pada akhir tahun ketiga adalah............. <img src=\"../../files/176016191044.png\">','1',' Rp. 30.000,00',' Rp. 33.000,00',' Rp. 33.100,00',' Rp. 33.300,00',' Rp. 36.000,00','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1294','17','9',' <br><img src=\"../../files/176016190911.png\"><br>Matriks disamping merupakan matriks jenis....<br>','1',' Baris',' Kolom',' Persegi panjang',' Identitas',' Segitiga bawah','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1295','17','10',' Letak elemen bilangan 3 pada matriks disamping adalah A=  <img src=\"../../files/176016191033.png\">','1',' a13',' a22',' a32',' a33',' a14','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1296','17','11',' Diketahui A = <img src=\"../../files/176016190924.png\"> B= <img src=\"../../files/176016191050.png\"> hasil perkalian dari AB adalah','1','  <img src=\"../../files/176016190914.png\">','  <img src=\"../../files/176016191035.png\">','  <img src=\"../../files/17601619091.png\">','  <img src=\"../../files/176016190925.png\">','  <img src=\"../../files/176016191045.png\">','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1297','17','12',' Diketahui matrik A = <img src=\"../../files/176016190912.png\"> dan matrik B =   <img src=\"../../files/176016191036.png\"><br>             Hasil dari 3A- B adalah....<br>','1','  <img src=\"../../files/17601619092.png\">','  <img src=\"../../files/176016190922.png\">','  <img src=\"../../files/176016191041.png\">','  <img src=\"../../files/17601619095.png\">','   <img src=\"../../files/176016190926.png\">','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1298','17','13',' Tranpose matrik  <img src=\"../../files/176016191046.png\"> maka matrik C adalah....                                                ','1',' <img src=\"../../files/176016190915.png\">  ',' <img src=\"../../files/176016191037.png\">','  <img src=\"../../files/17601619093.png\">','  <img src=\"../../files/176016190927.png\">','  <img src=\"../../files/176016191047.png\">','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1299','17','14',' Diketahui  <img src=\"../../files/176016190913.png\"><br>Nilai dari x + 2y adalah.......<br>','1',' 4',' 5',' 6',' 7',' 9','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1300','17','15',' Diketahui matriks A = <img src=\"../../files/176016190928.png\">  determinan matriks A adalah....','1',' 2','  3','  4',' 5',' 6','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1301','17','16',' Diketahui matriks A =  <img src=\"../../files/176016191051.png\"> dan B = <img src=\"../../files/176016190916.png\"><br> Jika A = B, maka a + b + c = &hellip;<br>','1','-7',' -5',' -1','  5','  7','E',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1302','17','17',' Diketahui matriks&ndash;matriks A = <img src=\"../../files/176016191038.png\"><br><img src=\"../../files/17601619096.png\"><br>Jika 2A- B = CD, maka nilai a + b + c = &hellip; <br>','1','-6',' -2',' 0','  1','  8','C',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1303','17','18',' Diketahui persamaan matriks <br><img src=\"../../files/176016190929.png\"><br>Nilai a dan b adalah &hellip;<br>','1',' a = 1, b = 2',' a = 2, b =1',' a = 5, b =-2',' a =-2 , b = 5',' a = 4, b =-1','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1304','17','19',' Diketahui matriks A= <img src=\"../../files/176016191048.png\"> berapakah nilai Determinan dari matriks tersebut ...','1',' 117',' 135',' 18',' 0',' 1','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1305','17','20',' Diketahui matriks A = <img src=\"../../files/176016190917.png\"> Berapakah nilai det A ..','1',' 11',' 13',' 12',' 10',' 11','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1306','17','21',' Jika matriks A = <img src=\"../../files/176016191039.png\"> , maka nilai dari a11 adalah = ..','1',' 1',' 0',' 2',' 11',' -1','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1307','17','22',' Matriks x berordo ( 2 x 2 ) adalah ...','1',' <img src=\"../../files/17601619094.png\">  ','  <img src=\"../../files/176016190918.png\">',' -2','  <img src=\"../../files/176016191042.png\">',' 0','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1308','17','23',' R= <img src=\"../../files/17601619097.png\">  , maka r23 bernilai ..','1',' 6',' -2',' -1',' 5',' 4','B',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1309','17','24',' R= <img src=\"../../files/176016190930.png\">  , maka r33 bernilai ..','1',' 6',' -2',' -1',' 5',' 4','D',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1310','17','25',' Diketahui matriks-matriks A = <img src=\"../../files/176016191052.png\"> , maka nilai dari <img src=\"../../files/176016190919.png\"> adalah ...','1',' <img src=\"../../files/176016191040.png\">',' <img src=\"../../files/17601619098.png\">',' <img src=\"../../files/176016191031.png\">',' <img src=\"../../files/176016191049.png\">',' <img src=\"../../files/17601619099.png\">','A',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1311','17','1',' Vani menabung di bank sebesar Rp. 100.000,00 dengan suku bunga majemuk 5% tiap triwulan. Setelah 9 bulan, berapa besar tabungan Vina ?','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1312','17','2',' Diketahui matrik A =  <img src=\"../../files/176016191034.png\">   dan B =   <img src=\"../../files/176016191053.png\"><br>Jika matrik A = B , maka tentukan nilai dari a- b !<br>','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1313','17','3',' Determinan dari matriks A=  <img src=\"../../files/176016190920.png\"> adalah ...','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1314','17','4','  Jika Y = <img src=\"../../files/176016191043.png\">dan Z  = <img src=\"../../files/176016190910.png\">, dan  Y = Z maka nilai x adalah &hellip;..','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('1315','17','5','  <img src=\"../../files/176016191032.png\"><br>Ordo dari matriks A adalah ....<br>','2','','','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL);

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
