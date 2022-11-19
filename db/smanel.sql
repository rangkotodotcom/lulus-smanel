/*
 Navicat Premium Data Transfer

 Source Server         : MariaDB_Local
 Source Server Type    : MariaDB
 Source Server Version : 100420
 Source Host           : localhost:3306
 Source Schema         : smanel

 Target Server Type    : MariaDB
 Target Server Version : 100420
 File Encoding         : 65001

 Date: 19/11/2022 16:36:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_adm
-- ----------------------------
DROP TABLE IF EXISTS `t_adm`;
CREATE TABLE `t_adm`  (
  `nama` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `komite` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pustaka` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`nama`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_adm
-- ----------------------------

-- ----------------------------
-- Table structure for t_history
-- ----------------------------
DROP TABLE IF EXISTS `t_history`;
CREATE TABLE `t_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aktifitas` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `oleh` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 131 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_history
-- ----------------------------
INSERT INTO `t_history` VALUES (1, 'import data siswa', 'admin', '2019-05-08 01:51:37');
INSERT INTO `t_history` VALUES (2, 'edit data ANGGI THESA LONICA', 'admin', '2019-05-08 01:51:53');
INSERT INTO `t_history` VALUES (3, 'edit data ANGGI THESA LONICA', 'admin', '2019-05-08 01:52:16');
INSERT INTO `t_history` VALUES (4, 'tambah user ANGGI THESA LONICA', 'admin', '2019-05-08 01:53:20');
INSERT INTO `t_history` VALUES (5, 'tambah nilai ANGGI THESA LONICA', 'admin', '2019-05-08 02:28:31');
INSERT INTO `t_history` VALUES (6, 'tambah nilai ANGGI THESA LONICA', 'admin', '2019-05-08 02:30:36');
INSERT INTO `t_history` VALUES (7, 'edit nilai ANGGI THESA LONICA', 'admin', '2019-05-08 02:48:46');
INSERT INTO `t_history` VALUES (8, 'hapus nilai ANGGI THESA LONICA', 'admin', '2019-05-08 02:49:19');
INSERT INTO `t_history` VALUES (9, 'import nilai siswa', 'admin', '2019-05-08 04:31:46');
INSERT INTO `t_history` VALUES (10, 'tambah nilai USBN ANGGI THESA LONICA', 'admin', '2019-05-08 05:04:56');
INSERT INTO `t_history` VALUES (11, 'edit nilai USBN ANGGI THESA LONICA', 'admin', '2019-05-08 05:05:25');
INSERT INTO `t_history` VALUES (12, 'hapus nilai sekolah ANGGI THESA LONICA', 'admin', '2019-05-08 05:05:31');
INSERT INTO `t_history` VALUES (13, 'import nilai USBN siswa', 'admin', '2019-05-08 05:06:24');
INSERT INTO `t_history` VALUES (14, 'cetak user', 'admin', '2019-05-08 05:46:54');
INSERT INTO `t_history` VALUES (15, 'cetak user', 'admin', '2019-05-08 05:46:56');
INSERT INTO `t_history` VALUES (16, 'hapus user Alya Nuraini', 'admin', '2019-05-08 05:48:10');
INSERT INTO `t_history` VALUES (17, 'hapus user Riske Dasvianita', 'admin', '2019-05-08 05:48:13');
INSERT INTO `t_history` VALUES (18, 'hapus user ANGGI THESA LONICA', 'admin', '2019-05-08 05:48:16');
INSERT INTO `t_history` VALUES (19, 'import user siswa', 'admin', '2019-05-08 05:49:46');
INSERT INTO `t_history` VALUES (20, 'cetak user', 'admin', '2019-05-08 05:50:40');
INSERT INTO `t_history` VALUES (21, 'cetak user', 'admin', '2019-05-08 05:50:42');
INSERT INTO `t_history` VALUES (22, 'cetak user', 'admin', '2019-05-08 05:53:19');
INSERT INTO `t_history` VALUES (23, 'cetak user', 'admin', '2019-05-08 05:53:22');
INSERT INTO `t_history` VALUES (24, 'cetak user', 'admin', '2019-05-08 05:54:44');
INSERT INTO `t_history` VALUES (25, 'cetak user', 'admin', '2019-05-08 05:54:46');
INSERT INTO `t_history` VALUES (26, 'cetak user', 'admin', '2019-05-08 12:23:23');
INSERT INTO `t_history` VALUES (27, 'cetak user', 'admin', '2019-05-08 12:23:26');
INSERT INTO `t_history` VALUES (28, 'cetak user', 'admin', '2019-05-08 12:25:30');
INSERT INTO `t_history` VALUES (29, 'cetak user', 'admin', '2019-05-08 12:25:33');
INSERT INTO `t_history` VALUES (30, 'cetak user', 'admin', '2019-05-08 12:27:03');
INSERT INTO `t_history` VALUES (31, 'cetak user', 'admin', '2019-05-08 12:27:05');
INSERT INTO `t_history` VALUES (32, 'cetak user', 'admin', '2019-05-08 12:29:51');
INSERT INTO `t_history` VALUES (33, 'cetak user', 'admin', '2019-05-08 12:29:53');
INSERT INTO `t_history` VALUES (34, 'aktif user ANGGI THESA LONICA', 'admin', '2019-05-08 14:48:42');
INSERT INTO `t_history` VALUES (35, 'cetak skl', '12-005-101-4', '2019-05-08 14:49:07');
INSERT INTO `t_history` VALUES (36, 'cetak skl', '12-005-101-4', '2019-05-08 14:49:08');
INSERT INTO `t_history` VALUES (37, 'cetak skl', '12-005-101-4', '2019-05-08 14:55:42');
INSERT INTO `t_history` VALUES (38, 'cetak skl', '12-005-101-4', '2019-05-08 14:55:42');
INSERT INTO `t_history` VALUES (39, 'cetak skl', '12-005-101-4', '2019-05-08 14:58:54');
INSERT INTO `t_history` VALUES (40, 'cetak skl', '12-005-101-4', '2019-05-08 14:58:56');
INSERT INTO `t_history` VALUES (41, 'cetak skl', '12-005-101-4', '2019-05-08 15:02:11');
INSERT INTO `t_history` VALUES (42, 'cetak skl', '12-005-101-4', '2019-05-08 15:02:13');
INSERT INTO `t_history` VALUES (43, 'cetak skl', '12-005-101-4', '2019-05-08 15:04:02');
INSERT INTO `t_history` VALUES (44, 'cetak skl', '12-005-101-4', '2019-05-08 15:04:04');
INSERT INTO `t_history` VALUES (45, 'cetak skl', '12-005-101-4', '2019-05-08 15:06:29');
INSERT INTO `t_history` VALUES (46, 'cetak skl', '12-005-101-4', '2019-05-08 15:06:31');
INSERT INTO `t_history` VALUES (47, 'cetak skl', '12-005-101-4', '2019-05-08 15:12:24');
INSERT INTO `t_history` VALUES (48, 'cetak skl', '12-005-101-4', '2019-05-08 15:12:26');
INSERT INTO `t_history` VALUES (49, 'cetak skl', '12-005-101-4', '2019-05-08 15:15:24');
INSERT INTO `t_history` VALUES (50, 'cetak skl', '12-005-101-4', '2019-05-08 15:15:24');
INSERT INTO `t_history` VALUES (51, 'cetak skl', '12-005-101-4', '2019-05-08 15:18:04');
INSERT INTO `t_history` VALUES (52, 'cetak skl', '12-005-101-4', '2019-05-08 15:18:07');
INSERT INTO `t_history` VALUES (53, 'cetak skl', '12-005-101-4', '2019-05-08 15:19:48');
INSERT INTO `t_history` VALUES (54, 'cetak skl', '12-005-101-4', '2019-05-08 15:19:50');
INSERT INTO `t_history` VALUES (55, 'import nilai siswa', 'admin', '2019-05-08 15:23:43');
INSERT INTO `t_history` VALUES (56, 'cetak skl', '12-005-101-4', '2019-05-08 15:24:26');
INSERT INTO `t_history` VALUES (57, 'cetak skl', '12-005-101-4', '2019-05-08 15:24:28');
INSERT INTO `t_history` VALUES (58, 'cetak skl', '12-005-101-4', '2019-05-08 16:23:17');
INSERT INTO `t_history` VALUES (59, 'cetak skl', '12-005-101-4', '2019-05-08 16:23:20');
INSERT INTO `t_history` VALUES (60, 'cetak nilai', '12-005-101-4', '2019-05-08 16:47:58');
INSERT INTO `t_history` VALUES (61, 'cetak nilai', '12-005-101-4', '2019-05-08 16:47:59');
INSERT INTO `t_history` VALUES (62, 'cetak nilai', '12-005-101-4', '2019-05-08 16:50:43');
INSERT INTO `t_history` VALUES (63, 'cetak nilai', '12-005-101-4', '2019-05-08 16:50:44');
INSERT INTO `t_history` VALUES (64, 'cetak nilai', '12-005-101-4', '2019-05-08 16:51:52');
INSERT INTO `t_history` VALUES (65, 'cetak nilai', '12-005-101-4', '2019-05-08 16:51:54');
INSERT INTO `t_history` VALUES (66, 'cetak nilai', '12-005-101-4', '2019-05-08 16:57:10');
INSERT INTO `t_history` VALUES (67, 'cetak nilai', '12-005-101-4', '2019-05-08 16:57:14');
INSERT INTO `t_history` VALUES (68, 'cetak nilai', '12-005-101-4', '2019-05-08 17:03:28');
INSERT INTO `t_history` VALUES (69, 'cetak nilai', '12-005-101-4', '2019-05-08 17:03:30');
INSERT INTO `t_history` VALUES (70, 'cetak nilai', '12-005-101-4', '2019-05-08 17:05:05');
INSERT INTO `t_history` VALUES (71, 'cetak nilai', '12-005-101-4', '2019-05-08 17:05:07');
INSERT INTO `t_history` VALUES (72, 'cetak nilai', '12-005-101-4', '2019-05-08 17:11:09');
INSERT INTO `t_history` VALUES (73, 'cetak nilai', '12-005-101-4', '2019-05-08 17:11:12');
INSERT INTO `t_history` VALUES (74, 'cetak nilai', '12-005-101-4', '2019-05-08 17:15:41');
INSERT INTO `t_history` VALUES (75, 'cetak nilai', '12-005-101-4', '2019-05-08 17:15:43');
INSERT INTO `t_history` VALUES (76, 'cetak nilai', '12-005-101-4', '2019-05-08 17:23:00');
INSERT INTO `t_history` VALUES (77, 'cetak nilai', '12-005-101-4', '2019-05-08 17:23:03');
INSERT INTO `t_history` VALUES (78, 'cetak nilai', '12-005-101-4', '2019-05-08 17:35:30');
INSERT INTO `t_history` VALUES (79, 'cetak nilai', '12-005-101-4', '2019-05-08 17:35:59');
INSERT INTO `t_history` VALUES (80, 'cetak nilai', '12-005-101-4', '2019-05-08 17:36:03');
INSERT INTO `t_history` VALUES (81, 'cetak nilai', '12-005-101-4', '2019-05-08 17:37:25');
INSERT INTO `t_history` VALUES (82, 'cetak nilai', '12-005-101-4', '2019-05-08 17:37:27');
INSERT INTO `t_history` VALUES (83, 'cetak nilai', '12-005-101-4', '2019-05-08 17:42:13');
INSERT INTO `t_history` VALUES (84, 'cetak nilai', '12-005-101-4', '2019-05-08 17:42:16');
INSERT INTO `t_history` VALUES (85, 'cetak nilai', '12-005-101-4', '2019-05-08 17:45:38');
INSERT INTO `t_history` VALUES (86, 'cetak nilai', '12-005-101-4', '2019-05-08 17:45:41');
INSERT INTO `t_history` VALUES (87, 'cetak nilai', '12-005-101-4', '2019-05-08 17:48:38');
INSERT INTO `t_history` VALUES (88, 'cetak nilai', '12-005-101-4', '2019-05-08 17:48:40');
INSERT INTO `t_history` VALUES (89, 'cetak skl', '12-005-101-4', '2019-05-08 18:02:26');
INSERT INTO `t_history` VALUES (90, 'cetak skl', '12-005-101-4', '2019-05-08 18:02:28');
INSERT INTO `t_history` VALUES (91, 'cetak skl', '12-005-101-4', '2019-05-08 18:03:42');
INSERT INTO `t_history` VALUES (92, 'cetak skl', '12-005-101-4', '2019-05-08 18:03:43');
INSERT INTO `t_history` VALUES (93, 'cetak skl', '12-005-101-4', '2019-05-08 18:05:26');
INSERT INTO `t_history` VALUES (94, 'cetak skl', '12-005-101-4', '2019-05-08 18:05:30');
INSERT INTO `t_history` VALUES (95, 'cetak nilai', '12-005-101-4', '2019-05-08 18:06:19');
INSERT INTO `t_history` VALUES (96, 'cetak nilai', '12-005-101-4', '2019-05-08 18:06:22');
INSERT INTO `t_history` VALUES (97, 'cetak nilai', '12-005-101-4', '2019-05-14 03:34:49');
INSERT INTO `t_history` VALUES (98, 'cetak nilai', '12-005-101-4', '2019-05-14 03:34:51');
INSERT INTO `t_history` VALUES (99, 'cetak nilai', '12-005-101-4', '2019-05-14 03:35:34');
INSERT INTO `t_history` VALUES (100, 'cetak nilai', '12-005-101-4', '2019-05-14 03:35:34');
INSERT INTO `t_history` VALUES (101, 'cetak nilai', '12-005-101-4', '2019-05-14 03:36:34');
INSERT INTO `t_history` VALUES (102, 'cetak nilai', '12-005-101-4', '2019-05-14 03:36:35');
INSERT INTO `t_history` VALUES (103, 'cetak nilai', '12-005-101-4', '2019-05-14 04:52:36');
INSERT INTO `t_history` VALUES (104, 'cetak nilai', '12-005-101-4', '2019-05-14 04:52:41');
INSERT INTO `t_history` VALUES (105, 'cetak nilai', '12-005-101-4', '2019-05-14 04:53:20');
INSERT INTO `t_history` VALUES (106, 'cetak nilai', '12-005-101-4', '2019-05-14 04:53:23');
INSERT INTO `t_history` VALUES (107, 'cetak nilai', '12-005-101-4', '2019-05-14 04:53:59');
INSERT INTO `t_history` VALUES (108, 'cetak nilai', '12-005-101-4', '2019-05-14 04:54:01');
INSERT INTO `t_history` VALUES (109, 'cetak nilai', '12-005-101-4', '2019-05-14 04:54:32');
INSERT INTO `t_history` VALUES (110, 'cetak nilai', '12-005-101-4', '2019-05-14 04:54:33');
INSERT INTO `t_history` VALUES (111, 'cetak nilai', '12-005-101-4', '2019-05-14 04:55:28');
INSERT INTO `t_history` VALUES (112, 'cetak nilai', '12-005-101-4', '2019-05-14 04:55:30');
INSERT INTO `t_history` VALUES (113, 'cetak skl', '12-005-101-4', '2019-05-14 04:55:46');
INSERT INTO `t_history` VALUES (114, 'cetak skl', '12-005-101-4', '2019-05-14 04:55:47');
INSERT INTO `t_history` VALUES (115, 'cetak skl', '12-005-101-4', '2019-05-14 04:56:46');
INSERT INTO `t_history` VALUES (116, 'cetak skl', '12-005-101-4', '2019-05-14 04:56:46');
INSERT INTO `t_history` VALUES (117, 'cetak nilai', '12-005-101-4', '2019-05-14 06:47:43');
INSERT INTO `t_history` VALUES (118, 'cetak nilai', '12-005-101-4', '2019-05-14 06:47:48');
INSERT INTO `t_history` VALUES (119, 'cetak nilai', '12-005-101-4', '2019-05-14 06:48:32');
INSERT INTO `t_history` VALUES (120, 'cetak nilai', '12-005-101-4', '2019-05-14 06:48:35');
INSERT INTO `t_history` VALUES (121, 'cetak nilai', '12-005-101-4', '2019-05-14 06:49:15');
INSERT INTO `t_history` VALUES (122, 'cetak nilai', '12-005-101-4', '2019-05-14 06:49:17');
INSERT INTO `t_history` VALUES (123, 'cetak nilai', '12-005-101-4', '2019-05-14 06:50:02');
INSERT INTO `t_history` VALUES (124, 'cetak nilai', '12-005-101-4', '2019-05-14 06:50:04');
INSERT INTO `t_history` VALUES (125, 'cetak nilai', '12-005-101-4', '2019-05-14 06:51:08');
INSERT INTO `t_history` VALUES (126, 'cetak nilai', '12-005-101-4', '2019-05-14 06:51:10');
INSERT INTO `t_history` VALUES (127, 'cetak skl', '12-005-101-4', '2019-05-14 06:52:03');
INSERT INTO `t_history` VALUES (128, 'cetak skl', '12-005-101-4', '2019-05-14 06:52:05');
INSERT INTO `t_history` VALUES (129, 'cetak skl', '12-005-101-4', '2019-05-14 06:52:35');
INSERT INTO `t_history` VALUES (130, 'cetak skl', '12-005-101-4', '2019-05-14 06:52:37');

-- ----------------------------
-- Table structure for t_izin_login
-- ----------------------------
DROP TABLE IF EXISTS `t_izin_login`;
CREATE TABLE `t_izin_login`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `akses` enum('buka','tutup') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `awal` enum('login','timer','maintenance') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `waktu_mundur` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of t_izin_login
-- ----------------------------
INSERT INTO `t_izin_login` VALUES (1, 'buka', 'login', '2019-05-13 21:00:00');

-- ----------------------------
-- Table structure for t_ld_siswa
-- ----------------------------
DROP TABLE IF EXISTS `t_ld_siswa`;
CREATE TABLE `t_ld_siswa`  (
  `nama` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `t_lahir` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_lhr` date NOT NULL,
  `n_ortu` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nis` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nisn` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_pes` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kelas` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `foto` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`no_pes`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ld_siswa
-- ----------------------------
INSERT INTO `t_ld_siswa` VALUES ('ANGGI THESA LONICA', 'BATANG TAPAKIS', '2001-04-29', 'JHONI PUTRA TANJUNG', '7005', '0016397639', '12-005-101-4', 'IPS 4', '12-005-101-4.png');
INSERT INTO `t_ld_siswa` VALUES ('ANNISA SEPTI AMRIL', 'PARIAMAN', '1999-09-08', 'AMRIL', '7009', '9991629531', '12-005-102-3', 'ips 4', 'Pas Foto 3x4 Warna Merah');
INSERT INTO `t_ld_siswa` VALUES ('APRILIAN TRI RIZANANDA', 'BOGOR', '2001-04-21', 'TAUFIZAR', '7010', '0015850964', '12-005-103-2', 'ips 4', 'Pas Foto 3x4 Warna Merah');
INSERT INTO `t_ld_siswa` VALUES ('AYU PERMATA SARI', 'PADANG BARU', '2001-03-27', 'SYAFRIZAL', '7020', '0014521081', '12-005-104-9', 'ips 4', 'Pas Foto 3x4 Warna Merah');
INSERT INTO `t_ld_siswa` VALUES ('DHAVYDT SAVUTRA BAKHRY', 'TANJUNG AUR', '2000-08-08', 'BAKHTIAR', '7036', '0000706631', '12-005-105-8', 'ips 4', 'Pas Foto 3x4 Warna Merah');
INSERT INTO `t_ld_siswa` VALUES ('DIANA SEPTIANI', 'BALAH AIE', '2000-09-14', 'ISMAEL KENT', '7037', '0002960390', '12-005-106-7', 'ips 4', 'Pas Foto 3x4 Warna Merah');
INSERT INTO `t_ld_siswa` VALUES ('FARHAN FADLUL ROHMAN', 'BEKASI', '2001-01-28', 'SARWAN', '7055', '0018452437', '12-005-107-6', 'ips 4', 'Pas Foto 3x4 Warna Merah');
INSERT INTO `t_ld_siswa` VALUES ('FARHAN FIQRIZEND', 'TANJUNG AUR', '2000-02-16', 'ZAINAL', '7056', '0004250021', '12-005-108-5', 'ips 4', 'Pas Foto 3x4 Warna Merah');
INSERT INTO `t_ld_siswa` VALUES ('IBNUL WILASRA', 'CIMAHI', '2000-11-28', 'ZULHENDRI', '7076', '0002714991', '12-005-109-4', 'ips 4', 'Pas Foto 3x4 Warna Merah');
INSERT INTO `t_ld_siswa` VALUES ('IQBAL MUMTAZAHARDI', 'PADANG', '2001-05-06', 'EDDY RINALDI', '7086', '0016676098', '12-005-110-3', 'ips 4', 'Pas Foto 3x4 Warna Merah');
INSERT INTO `t_ld_siswa` VALUES ('MAYANG NURAINI', 'PADANG', '2001-05-20', 'EDI JUNAIDI', '7113', '0018723815', '12-005-111-2', 'ips 4', 'Pas Foto 3x4 Warna Merah');
INSERT INTO `t_ld_siswa` VALUES ('MELLA FIRNA SARI', 'Gadur', '2001-01-31', 'Firman Efendi', '7115', '0014419392', '12-005-112-9', 'ips 4', 'Pas Foto 3x4 Warna Merah');
INSERT INTO `t_ld_siswa` VALUES ('MUHAMAD HARIS', 'MEDAN JAYA', '2000-08-13', 'DAFRIL', '7129', '0002941633', '12-005-113-8', 'ips 4', 'Pas Foto 3x4 Warna Merah');
INSERT INTO `t_ld_siswa` VALUES ('MUHAMMAD FAISAL MAULANA R.Z', 'LUBUK ALUNG', '2001-03-11', 'ABDUL RAHIM', '7126', '0019201681', '12-005-114-7', 'ips 4', 'Pas Foto 3x4 Warna Merah');
INSERT INTO `t_ld_siswa` VALUES ('MUTIARA HARDI', 'PAKANDANGAN', '2001-03-25', 'MUSLIADI', '7136', '0014419151', '12-005-115-6', 'ips 4', 'Pas Foto 3x4 Warna Merah');
INSERT INTO `t_ld_siswa` VALUES ('MUTIARAZIOM SUSANTI', 'SUNGAI ABANG', '2001-01-24', 'RAZIOM', '7138', '0019422682', '12-005-116-5', 'ips 4', 'Pas Foto 3x4 Warna Merah');
INSERT INTO `t_ld_siswa` VALUES ('NOVITA DWI PUTRI', 'PAKANDANGAN', '2000-11-15', 'EDISON', '7153', '0014418984', '12-005-117-4', 'ips 4', 'Pas Foto 3x4 Warna Merah');
INSERT INTO `t_ld_siswa` VALUES ('RESTI AULIA RAHMI', 'RIMBO KARANGGO', '2001-03-29', 'INDRA', '7183', '0014870736', '12-005-118-3', 'ips 4', 'Pas Foto 3x4 Warna Merah');
INSERT INTO `t_ld_siswa` VALUES ('RIDHO KURNIAWAN', 'PADANG', '2001-06-28', 'ZUWERI', '7187', '0013791356', '12-005-119-2', 'ips 4', 'Pas Foto 3x4 Warna Merah');
INSERT INTO `t_ld_siswa` VALUES ('RISWANI MAULIDA', 'JAKARTA', '2001-06-10', 'JONRISWAN', '7193', '0010952286', '12-005-120-9', 'ips 4', 'Pas Foto 3x4 Warna Merah');

-- ----------------------------
-- Table structure for t_linfo
-- ----------------------------
DROP TABLE IF EXISTS `t_linfo`;
CREATE TABLE `t_linfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subjek` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `info` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_linfo
-- ----------------------------
INSERT INTO `t_linfo` VALUES (1, 'Cara Melihat Kelulusan', '<p>1. Setelah login dengan user yang di dapat dari admin<br />\r\n2. Silahkan lihat kelulusan pada menu hasil<br />\r\n3. Silahkan cek data diri, apabila ada kesalahan harap hubungi admin<br />\r\n4. Silahkan cetak surat kelulusan pada menu nilai un<br />\r\n5. Syarat dalam mencetak surat kelulusan adalah mengupload kartu registrasi adm dari tatausaha dan kartu bebas pustaka pada menu administrasi<br />\r\n6. Semoga Sukses</p>\r\n', '2018-12-06 11:38:06');
INSERT INTO `t_linfo` VALUES (2, 'Penting', '<p>Biasakan logout setelah login, <strong>jangan</strong> lansung close browser karena akan membuat user anda akan bermasalah serta mengakibatkan user siswa yang lain kesulitan untuk login.<br />\r\nBagi User yang bermasalah, Silahkan hubungi Admin</p>\r\n', '2018-12-23 09:10:01');

-- ----------------------------
-- Table structure for t_linfo_a
-- ----------------------------
DROP TABLE IF EXISTS `t_linfo_a`;
CREATE TABLE `t_linfo_a`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subjek` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `info` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_linfo_a
-- ----------------------------
INSERT INTO `t_linfo_a` VALUES (1, 'Panduan Bagi Admin', '<ol>\r\n	<li>Silahkan Masukan data dan nilai siswa dengan benar</li>\r\n	<li>Sebelum memasukan data siswa, harap periksa terlebih dahulu agar tidak salah</li>\r\n	<li>No peserta pada data dan nilai siswa jangan sampai berbeda dengan user siswa</li>\r\n	<li>Sebelum mengimport data dan nilai serta user siswa, silahkan centang form kosongkan data agar tidak ada data ganda</li>\r\n	<li>Dalam mengupload foto siswa, Maksimal Hanya 20 file</li>\r\n	<li>Jika ada kesalahan data atau nilai siswa,silahkan di edit lansung. sedangkan jika ada kesalahan user siswa,hapus user tersebut lalu tambahkan kembali</li>\r\n	<li>Jika ada siswa yang lupa password, silahkan klik reset password pada menu data user dan tombol ON atau OFF untuk mengaktif dan non aktifkan user siswa</li>\r\n	<li>Sebelum mengaktikan user siswa, silahkan cek terlebih dahulu persyaratan yang di upload siswa pada menu bukti adm</li>\r\n	<li>Admin dapat melihat seluruh kritik dan saran dari siswa pada menu kotak saran</li>\r\n</ol>\r\n', '2018-12-06 04:37:08');

-- ----------------------------
-- Table structure for t_ln_siswa
-- ----------------------------
DROP TABLE IF EXISTS `t_ln_siswa`;
CREATE TABLE `t_ln_siswa`  (
  `nama` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_pes` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bin` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bing` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mat` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pil` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ket` enum('LULUS','TIDAK LULUS') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`nama`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ln_siswa
-- ----------------------------
INSERT INTO `t_ln_siswa` VALUES ('ANGGI THESA LONICA', '12-005-101-4', '81.00', '82.00', '83.00', '84.00', 'LULUS');
INSERT INTO `t_ln_siswa` VALUES ('ANNISA SEPTI AMRIL', '12-005-102-3', '81.01', '82.01', '83.01', '84.01', 'LULUS');
INSERT INTO `t_ln_siswa` VALUES ('APRILIAN TRI RIZANANDA', '12-005-103-2', '81.02', '82.02', '83.02', '84.02', 'LULUS');
INSERT INTO `t_ln_siswa` VALUES ('AYU PERMATA SARI', '12-005-104-9', '81.03', '82.03', '83.03', '84.03', 'LULUS');
INSERT INTO `t_ln_siswa` VALUES ('DHAVYDT SAVUTRA BAKHRY', '12-005-105-8', '81.04', '82.04', '83.04', '84.04', 'LULUS');
INSERT INTO `t_ln_siswa` VALUES ('DIANA SEPTIANI', '12-005-106-7', '81.05', '82.05', '83.05', '84.05', 'LULUS');
INSERT INTO `t_ln_siswa` VALUES ('FARHAN FADLUL ROHMAN', '12-005-107-6', '81.06', '82.06', '83.06', '84.06', 'LULUS');
INSERT INTO `t_ln_siswa` VALUES ('FARHAN FIQRIZEND', '12-005-108-5', '81.07', '82.07', '83.07', '84.07', 'LULUS');
INSERT INTO `t_ln_siswa` VALUES ('IBNUL WILASRA', '12-005-109-4', '81.08', '82.08', '83.08', '84.08', 'LULUS');
INSERT INTO `t_ln_siswa` VALUES ('IQBAL MUMTAZAHARDI', '12-005-110-3', '81.09', '82.09', '83.09', '84.09', 'LULUS');
INSERT INTO `t_ln_siswa` VALUES ('MAYANG NURAINI', '12-005-111-2', '81.10', '82.10', '83.10', '84.10', 'LULUS');
INSERT INTO `t_ln_siswa` VALUES ('MELLA FIRNA SARI', '12-005-112-9', '81.11', '82.11', '83.11', '84.11', 'LULUS');
INSERT INTO `t_ln_siswa` VALUES ('MUHAMAD HARIS', '12-005-113-8', '81.12', '82.12', '83.12', '84.12', 'LULUS');
INSERT INTO `t_ln_siswa` VALUES ('MUHAMMAD FAISAL MAULANA R.Z', '12-005-114-7', '81.13', '82.13', '83.13', '84.13', 'LULUS');
INSERT INTO `t_ln_siswa` VALUES ('MUTIARA HARDI', '12-005-115-6', '81.14', '82.14', '83.14', '84.14', 'LULUS');
INSERT INTO `t_ln_siswa` VALUES ('MUTIARAZIOM SUSANTI', '12-005-116-5', '81.15', '82.15', '83.15', '84.15', 'LULUS');
INSERT INTO `t_ln_siswa` VALUES ('NOVITA DWI PUTRI', '12-005-117-4', '81.16', '82.16', '83.16', '84.16', 'LULUS');
INSERT INTO `t_ln_siswa` VALUES ('RESTI AULIA RAHMI', '12-005-118-3', '81.17', '82.17', '83.17', '84.17', 'LULUS');
INSERT INTO `t_ln_siswa` VALUES ('RIDHO KURNIAWAN', '12-005-119-2', '81.18', '82.18', '83.18', '84.18', 'LULUS');
INSERT INTO `t_ln_siswa` VALUES ('RISWANI MAULIDA', '12-005-120-9', '81.19', '82.19', '83.19', '84.19', 'LULUS');

-- ----------------------------
-- Table structure for t_luser
-- ----------------------------
DROP TABLE IF EXISTS `t_luser`;
CREATE TABLE `t_luser`  (
  `nama` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pass` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` enum('aktif','non-aktif') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `level` enum('admin','siswa') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ganti` enum('sudah','belum') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`nama`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_luser
-- ----------------------------
INSERT INTO `t_luser` VALUES ('Admin', 'email@domain.com', 'admin', '$2y$10$Cd0HS/0Re1IpKzW4PZNZSeC0gbBA7PpbXsedJHXYjpsMRKT/UqkX6', 'aktif', 'admin', 'sudah');
INSERT INTO `t_luser` VALUES ('APRILIAN TRI RIZANANDA', '', '12-005-103-2', 'XcQy8lJO', 'non-aktif', 'siswa', 'belum');
INSERT INTO `t_luser` VALUES ('ANNISA SEPTI AMRIL', '', '12-005-102-3', '6JlFvuet', 'non-aktif', 'siswa', 'belum');
INSERT INTO `t_luser` VALUES ('ANGGI THESA LONICA', 'email@email.com', '12-005-101-4', '12345678', 'aktif', 'siswa', 'sudah');
INSERT INTO `t_luser` VALUES ('AYU PERMATA SARI', '', '12-005-104-9', '2QCFJ0mp', 'non-aktif', 'siswa', 'belum');
INSERT INTO `t_luser` VALUES ('DHAVYDT SAVUTRA BAKHRY', '', '12-005-105-8', 'WmyXPMgX', 'non-aktif', 'siswa', 'belum');
INSERT INTO `t_luser` VALUES ('DIANA SEPTIANI', '', '12-005-106-7', 'ILVOcaP1', 'non-aktif', 'siswa', 'belum');
INSERT INTO `t_luser` VALUES ('FARHAN FADLUL ROHMAN', '', '12-005-107-6', '2zK90peb', 'non-aktif', 'siswa', 'belum');
INSERT INTO `t_luser` VALUES ('FARHAN FIQRIZEND', '', '12-005-108-5', 'AsylhXK1', 'non-aktif', 'siswa', 'belum');
INSERT INTO `t_luser` VALUES ('IBNUL WILASRA', '', '12-005-109-4', '9AEIt3lW', 'non-aktif', 'siswa', 'belum');
INSERT INTO `t_luser` VALUES ('IQBAL MUMTAZAHARDI', '', '12-005-110-3', 'qJbeoQXT', 'non-aktif', 'siswa', 'belum');
INSERT INTO `t_luser` VALUES ('MAYANG NURAINI', '', '12-005-111-2', 'XaBmqUI4', 'non-aktif', 'siswa', 'belum');
INSERT INTO `t_luser` VALUES ('MELLA FIRNA SARI', '', '12-005-112-9', 'ZbbqfTNx', 'non-aktif', 'siswa', 'belum');
INSERT INTO `t_luser` VALUES ('MUHAMAD HARIS', '', '12-005-113-8', 'ObWwOHMX', 'non-aktif', 'siswa', 'belum');
INSERT INTO `t_luser` VALUES ('MUHAMMAD FAISAL MAULANA R.Z', '', '12-005-114-7', 'iagWZ6Br', 'non-aktif', 'siswa', 'belum');
INSERT INTO `t_luser` VALUES ('MUTIARA HARDI', '', '12-005-115-6', 'vrMv16fd', 'non-aktif', 'siswa', 'belum');
INSERT INTO `t_luser` VALUES ('MUTIARAZIOM SUSANTI', '', '12-005-116-5', 'QnxkeZPL', 'non-aktif', 'siswa', 'belum');
INSERT INTO `t_luser` VALUES ('NOVITA DWI PUTRI', '', '12-005-117-4', 'u3iwwbtf', 'non-aktif', 'siswa', 'belum');
INSERT INTO `t_luser` VALUES ('RESTI AULIA RAHMI', '', '12-005-118-3', 'HakKFIAs', 'non-aktif', 'siswa', 'belum');
INSERT INTO `t_luser` VALUES ('RIDHO KURNIAWAN', '', '12-005-119-2', 'gpjDIsT4', 'non-aktif', 'siswa', 'belum');
INSERT INTO `t_luser` VALUES ('RISWANI MAULIDA', '', '12-005-120-9', '8Q3K0CLK', 'non-aktif', 'siswa', 'belum');

-- ----------------------------
-- Table structure for t_n_rapor
-- ----------------------------
DROP TABLE IF EXISTS `t_n_rapor`;
CREATE TABLE `t_n_rapor`  (
  `nama` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_pes` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pai` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ppkn` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ind` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mtk` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sejind` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ing` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `senbud` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pjok` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pkwu` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mat_sej` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fis_eko` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kim_sos` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bio_geo` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lm` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`nama`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_n_rapor
-- ----------------------------
INSERT INTO `t_n_rapor` VALUES ('ANGGI THESA LONICA', '12-005-101-4', '78.00', '79.00', '80.00', '81.00', '82.00', '83.00', '84.00', '85.00', '86.00', '87.00', '88.00', '89.00', '90.00', '91.00');
INSERT INTO `t_n_rapor` VALUES ('ANNISA SEPTI AMRIL', '12-005-102-3', '78.01', '79.01', '80.01', '81.01', '82.01', '83.01', '84.01', '85.01', '86.01', '87.01', '88.01', '89.01', '90.01', '91.01');
INSERT INTO `t_n_rapor` VALUES ('APRILIAN TRI RIZANANDA', '12-005-103-2', '78.02', '79.02', '80.02', '81.02', '82.02', '83.02', '84.02', '85.02', '86.02', '87.02', '88.02', '89.02', '90.02', '91.02');
INSERT INTO `t_n_rapor` VALUES ('AYU PERMATA SARI', '12-005-104-9', '78.03', '79.03', '80.03', '81.03', '82.03', '83.03', '84.03', '85.03', '86.03', '87.03', '88.03', '89.03', '90.03', '91.03');
INSERT INTO `t_n_rapor` VALUES ('DHAVYDT SAVUTRA BAKHRY', '12-005-105-8', '78.04', '79.04', '80.04', '81.04', '82.04', '83.04', '84.04', '85.04', '86.04', '87.04', '88.04', '89.04', '90.04', '91.04');
INSERT INTO `t_n_rapor` VALUES ('DIANA SEPTIANI', '12-005-106-7', '78.05', '79.05', '80.05', '81.05', '82.05', '83.05', '84.05', '85.05', '86.05', '87.05', '88.05', '89.05', '90.05', '91.05');
INSERT INTO `t_n_rapor` VALUES ('FARHAN FADLUL ROHMAN', '12-005-107-6', '78.06', '79.06', '80.06', '81.06', '82.06', '83.06', '84.06', '85.06', '86.06', '87.06', '88.06', '89.06', '90.06', '91.06');
INSERT INTO `t_n_rapor` VALUES ('FARHAN FIQRIZEND', '12-005-108-5', '78.07', '79.07', '80.07', '81.07', '82.07', '83.07', '84.07', '85.07', '86.07', '87.07', '88.07', '89.07', '90.07', '91.07');
INSERT INTO `t_n_rapor` VALUES ('IBNUL WILASRA', '12-005-109-4', '78.08', '79.08', '80.08', '81.08', '82.08', '83.08', '84.08', '85.08', '86.08', '87.08', '88.08', '89.08', '90.08', '91.08');
INSERT INTO `t_n_rapor` VALUES ('IQBAL MUMTAZAHARDI', '12-005-110-3', '78.09', '79.09', '80.09', '81.09', '82.09', '83.09', '84.09', '85.09', '86.09', '87.09', '88.09', '89.09', '90.09', '91.09');
INSERT INTO `t_n_rapor` VALUES ('MAYANG NURAINI', '12-005-111-2', '78.10', '79.10', '80.10', '81.10', '82.10', '83.10', '84.10', '85.10', '86.10', '87.10', '88.10', '89.10', '90.10', '91.10');
INSERT INTO `t_n_rapor` VALUES ('MELLA FIRNA SARI', '12-005-112-9', '78.11', '79.11', '80.11', '81.11', '82.11', '83.11', '84.11', '85.11', '86.11', '87.11', '88.11', '89.11', '90.11', '91.11');
INSERT INTO `t_n_rapor` VALUES ('MUHAMAD HARIS', '12-005-113-8', '78.12', '79.12', '80.12', '81.12', '82.12', '83.12', '84.12', '85.12', '86.12', '87.12', '88.12', '89.12', '90.12', '91.12');
INSERT INTO `t_n_rapor` VALUES ('MUHAMMAD FAISAL MAULANA R.Z', '12-005-114-7', '78.13', '79.13', '80.13', '81.13', '82.13', '83.13', '84.13', '85.13', '86.13', '87.13', '88.13', '89.13', '90.13', '91.13');
INSERT INTO `t_n_rapor` VALUES ('MUTIARA HARDI', '12-005-115-6', '78.14', '79.14', '80.14', '81.14', '82.14', '83.14', '84.14', '85.14', '86.14', '87.14', '88.14', '89.14', '90.14', '91.14');
INSERT INTO `t_n_rapor` VALUES ('MUTIARAZIOM SUSANTI', '12-005-116-5', '78.15', '79.15', '80.15', '81.15', '82.15', '83.15', '84.15', '85.15', '86.15', '87.15', '88.15', '89.15', '90.15', '91.15');
INSERT INTO `t_n_rapor` VALUES ('NOVITA DWI PUTRI', '12-005-117-4', '78.16', '79.16', '80.16', '81.16', '82.16', '83.16', '84.16', '85.16', '86.16', '87.16', '88.16', '89.16', '90.16', '91.16');
INSERT INTO `t_n_rapor` VALUES ('RESTI AULIA RAHMI', '12-005-118-3', '78.17', '79.17', '80.17', '81.17', '82.17', '83.17', '84.17', '85.17', '86.17', '87.17', '88.17', '89.17', '90.17', '91.17');
INSERT INTO `t_n_rapor` VALUES ('RIDHO KURNIAWAN', '12-005-119-2', '78.18', '79.18', '80.18', '81.18', '82.18', '83.18', '84.18', '85.18', '86.18', '87.18', '88.18', '89.18', '90.18', '91.18');
INSERT INTO `t_n_rapor` VALUES ('RISWANI MAULIDA', '12-005-120-9', '78.19', '79.19', '80.19', '81.19', '82.19', '83.19', '84.19', '85.19', '86.19', '87.19', '88.19', '89.19', '90.19', '91.19');

-- ----------------------------
-- Table structure for t_n_sekolah
-- ----------------------------
DROP TABLE IF EXISTS `t_n_sekolah`;
CREATE TABLE `t_n_sekolah`  (
  `nama` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_pes` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pai` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ppkn` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ind` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mtk` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sejind` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ing` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `senbud` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pjok` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pkwu` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mat_sej` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fis_eko` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kim_sos` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bio_geo` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lm` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`nama`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_n_sekolah
-- ----------------------------
INSERT INTO `t_n_sekolah` VALUES ('ANGGI THESA LONICA', '12-005-101-4', '78.00', '79.00', '80.00', '81.00', '82.00', '83.00', '84.00', '85.00', '86.00', '87.00', '88.00', '89.00', '90.00', '91.00');
INSERT INTO `t_n_sekolah` VALUES ('ANNISA SEPTI AMRIL', '12-005-102-3', '78.01', '79.01', '80.01', '81.01', '82.01', '83.01', '84.01', '85.01', '86.01', '87.01', '88.01', '89.01', '90.01', '91.01');
INSERT INTO `t_n_sekolah` VALUES ('APRILIAN TRI RIZANANDA', '12-005-103-2', '78.02', '79.02', '80.02', '81.02', '82.02', '83.02', '84.02', '85.02', '86.02', '87.02', '88.02', '89.02', '90.02', '91.02');
INSERT INTO `t_n_sekolah` VALUES ('AYU PERMATA SARI', '12-005-104-9', '78.03', '79.03', '80.03', '81.03', '82.03', '83.03', '84.03', '85.03', '86.03', '87.03', '88.03', '89.03', '90.03', '91.03');
INSERT INTO `t_n_sekolah` VALUES ('DHAVYDT SAVUTRA BAKHRY', '12-005-105-8', '78.04', '79.04', '80.04', '81.04', '82.04', '83.04', '84.04', '85.04', '86.04', '87.04', '88.04', '89.04', '90.04', '91.04');
INSERT INTO `t_n_sekolah` VALUES ('DIANA SEPTIANI', '12-005-106-7', '78.05', '79.05', '80.05', '81.05', '82.05', '83.05', '84.05', '85.05', '86.05', '87.05', '88.05', '89.05', '90.05', '91.05');
INSERT INTO `t_n_sekolah` VALUES ('FARHAN FADLUL ROHMAN', '12-005-107-6', '78.06', '79.06', '80.06', '81.06', '82.06', '83.06', '84.06', '85.06', '86.06', '87.06', '88.06', '89.06', '90.06', '91.06');
INSERT INTO `t_n_sekolah` VALUES ('FARHAN FIQRIZEND', '12-005-108-5', '78.07', '79.07', '80.07', '81.07', '82.07', '83.07', '84.07', '85.07', '86.07', '87.07', '88.07', '89.07', '90.07', '91.07');
INSERT INTO `t_n_sekolah` VALUES ('IBNUL WILASRA', '12-005-109-4', '78.08', '79.08', '80.08', '81.08', '82.08', '83.08', '84.08', '85.08', '86.08', '87.08', '88.08', '89.08', '90.08', '91.08');
INSERT INTO `t_n_sekolah` VALUES ('IQBAL MUMTAZAHARDI', '12-005-110-3', '78.09', '79.09', '80.09', '81.09', '82.09', '83.09', '84.09', '85.09', '86.09', '87.09', '88.09', '89.09', '90.09', '91.09');
INSERT INTO `t_n_sekolah` VALUES ('MAYANG NURAINI', '12-005-111-2', '78.10', '79.10', '80.10', '81.10', '82.10', '83.10', '84.10', '85.10', '86.10', '87.10', '88.10', '89.10', '90.10', '91.10');
INSERT INTO `t_n_sekolah` VALUES ('MELLA FIRNA SARI', '12-005-112-9', '78.11', '79.11', '80.11', '81.11', '82.11', '83.11', '84.11', '85.11', '86.11', '87.11', '88.11', '89.11', '90.11', '91.11');
INSERT INTO `t_n_sekolah` VALUES ('MUHAMAD HARIS', '12-005-113-8', '78.12', '79.12', '80.12', '81.12', '82.12', '83.12', '84.12', '85.12', '86.12', '87.12', '88.12', '89.12', '90.12', '91.12');
INSERT INTO `t_n_sekolah` VALUES ('MUHAMMAD FAISAL MAULANA R.Z', '12-005-114-7', '78.13', '79.13', '80.13', '81.13', '82.13', '83.13', '84.13', '85.13', '86.13', '87.13', '88.13', '89.13', '90.13', '91.13');
INSERT INTO `t_n_sekolah` VALUES ('MUTIARA HARDI', '12-005-115-6', '78.14', '79.14', '80.14', '81.14', '82.14', '83.14', '84.14', '85.14', '86.14', '87.14', '88.14', '89.14', '90.14', '91.14');
INSERT INTO `t_n_sekolah` VALUES ('MUTIARAZIOM SUSANTI', '12-005-116-5', '78.15', '79.15', '80.15', '81.15', '82.15', '83.15', '84.15', '85.15', '86.15', '87.15', '88.15', '89.15', '90.15', '91.15');
INSERT INTO `t_n_sekolah` VALUES ('NOVITA DWI PUTRI', '12-005-117-4', '78.16', '79.16', '80.16', '81.16', '82.16', '83.16', '84.16', '85.16', '86.16', '87.16', '88.16', '89.16', '90.16', '91.16');
INSERT INTO `t_n_sekolah` VALUES ('RESTI AULIA RAHMI', '12-005-118-3', '78.17', '79.17', '80.17', '81.17', '82.17', '83.17', '84.17', '85.17', '86.17', '87.17', '88.17', '89.17', '90.17', '91.17');
INSERT INTO `t_n_sekolah` VALUES ('RIDHO KURNIAWAN', '12-005-119-2', '78.18', '79.18', '80.18', '81.18', '82.18', '83.18', '84.18', '85.18', '86.18', '87.18', '88.18', '89.18', '90.18', '91.18');
INSERT INTO `t_n_sekolah` VALUES ('RISWANI MAULIDA', '12-005-120-9', '78.19', '79.19', '80.19', '81.19', '82.19', '83.19', '84.19', '85.19', '86.19', '87.19', '88.19', '89.19', '90.19', '91.19');

-- ----------------------------
-- Table structure for t_naik_kelas
-- ----------------------------
DROP TABLE IF EXISTS `t_naik_kelas`;
CREATE TABLE `t_naik_kelas`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nisn` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `t_lahir` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_lhr` date NOT NULL,
  `nis` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kelas` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ket` enum('N','TN') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tahun` year NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_naik_kelas
-- ----------------------------
INSERT INTO `t_naik_kelas` VALUES (1, '9999999999', 'nama siswa', 'sicincin', '2020-06-03', '12345', 'ips 1', 'N', 2020);

-- ----------------------------
-- Table structure for t_online
-- ----------------------------
DROP TABLE IF EXISTS `t_online`;
CREATE TABLE `t_online`  (
  `nama` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `level` enum('admin','siswa') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `online` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `login` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_online
-- ----------------------------

-- ----------------------------
-- Table structure for t_saran
-- ----------------------------
DROP TABLE IF EXISTS `t_saran`;
CREATE TABLE `t_saran`  (
  `nama` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kritik` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `saran` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `t_kirim` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`nama`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_saran
-- ----------------------------
INSERT INTO `t_saran` VALUES ('Inestifani', 'ini kritik saya yang saya sampaikan untuk admin bahwa saya mengkritik dengan baik dan benar', 'ini saran saya yang saya sampaikan untuk admin bahwa saya menyarankan dengan baik dan benar', '2018-08-24 04:14:14');

SET FOREIGN_KEY_CHECKS = 1;
