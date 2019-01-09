/*
Navicat MySQL Data Transfer

Source Server         : LocalServer
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-01-09 18:20:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for m_finger
-- ----------------------------
DROP TABLE IF EXISTS `m_finger`;
CREATE TABLE `m_finger` (
  `auto` int(10) NOT NULL AUTO_INCREMENT,
  `nomor_ktp` varchar(35) DEFAULT NULL,
  `finger_code` text,
  `status` int(2) DEFAULT '1',
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_finger
-- ----------------------------
INSERT INTO `m_finger` VALUES ('1', '22222', 'sdrqwoidufoasidfyu875876908asdfasd', '1');

-- ----------------------------
-- Table structure for m_penduduk
-- ----------------------------
DROP TABLE IF EXISTS `m_penduduk`;
CREATE TABLE `m_penduduk` (
  `nomor_ktp` varchar(35) NOT NULL,
  `nama_lengkap` varchar(35) DEFAULT NULL,
  `kelahiran` varchar(15) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` text COMMENT '0 = Suspend\r\n1 = Active\r\n2 = Deleted',
  PRIMARY KEY (`nomor_ktp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_penduduk
-- ----------------------------
INSERT INTO `m_penduduk` VALUES ('11111', 'Mahmud Abbas', 'Jakarta', '2018-10-14', 'Jl Kemanggisan No 10 Jakarta Barat');
INSERT INTO `m_penduduk` VALUES ('22222', 'Vandens mc Maddens', 'Tangerang', '2018-11-04', 'Jl Panjang Banget No 22 Jakarta Selatan');
INSERT INTO `m_penduduk` VALUES ('33333', 'Nahnu Auliya', 'Padang', '2018-09-09', 'Jl Muter muter No 89 Jakarta Puter');

-- ----------------------------
-- Table structure for m_user
-- ----------------------------
DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user` (
  `UserID` varchar(35) NOT NULL,
  `UserPass` varchar(128) DEFAULT NULL,
  `UserName` varchar(35) DEFAULT NULL,
  `UserNIP` varchar(35) DEFAULT NULL,
  `UserGroup` varchar(15) DEFAULT NULL,
  `UserStatus` int(1) DEFAULT NULL COMMENT '0 = Suspend\r\n1 = Active\r\n2 = Deleted',
  `UserIsLogin` int(11) DEFAULT NULL,
  `UserChangePass` int(11) DEFAULT '1',
  `UserLastIn` datetime DEFAULT NULL,
  `UserLastOut` datetime DEFAULT NULL,
  `AddBy` varchar(35) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(35) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_user
-- ----------------------------
INSERT INTO `m_user` VALUES ('admin@host.local', '8eb2f7f5efb39e731d53684d0acc96ef', 'Administer', '', 'Administrator', '1', '0', '0', '2018-10-24 11:04:23', '2018-10-24 11:04:23', 'TP32447', '2018-09-24 08:08:57', 'admin@host.local', '2018-10-15 12:29:10');
INSERT INTO `m_user` VALUES ('user1@host.local', 'e47885d97a0d88cbfb448b32340499d2', 'User Grup 1', '123456', 'Latbang', '1', '0', '1', '2018-10-24 11:04:23', '2018-10-06 02:58:56', 'admin@host.local', '2018-10-04 08:13:45', 'admin@host.local', '2018-10-14 01:29:52');
INSERT INTO `m_user` VALUES ('user2@host.local', 'e47885d97a0d88cbfb448b32340499d2', 'User Grup 2', '326546', 'Latbang', '1', '0', '1', '2018-10-24 11:04:23', '2018-10-06 02:57:47', 'admin@host.local', '2018-10-04 08:16:13', 'admin@host.local', '2018-10-14 01:30:03');
