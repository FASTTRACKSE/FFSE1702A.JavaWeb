/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ffse1702a

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-08-18 23:30:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chuc_danh
-- ----------------------------
DROP TABLE IF EXISTS `chuc_danh`;
CREATE TABLE `chuc_danh` (
  `ma_chuc_danh` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ma_chuc_nang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trang_thai` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`ma_chuc_danh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of chuc_danh
-- ----------------------------
INSERT INTO `chuc_danh` VALUES ('CD-GD', null, '1');
INSERT INTO `chuc_danh` VALUES ('CD-NV', null, '1');
INSERT INTO `chuc_danh` VALUES ('CD-PGD', 'CN-QTC-C,CN-QTC-R,CN-QTC-U,CN-QTC-D,CN-QTC-P', '1');
INSERT INTO `chuc_danh` VALUES ('CD-PP', null, '1');
INSERT INTO `chuc_danh` VALUES ('CD-TP', null, '1');

-- ----------------------------
-- Table structure for chuc_nang
-- ----------------------------
DROP TABLE IF EXISTS `chuc_nang`;
CREATE TABLE `chuc_nang` (
  `ma_chuc_nang` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ten_chuc_nang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trang_thai` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`ma_chuc_nang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of chuc_nang
-- ----------------------------
INSERT INTO `chuc_nang` VALUES ('123', 'Quản trị chung', '1');
INSERT INTO `chuc_nang` VALUES ('123456', 'Quản trị', '1');
INSERT INTO `chuc_nang` VALUES ('CN-QTC-C', 'Thêm Mới Quản Trị Chung', '1');
INSERT INTO `chuc_nang` VALUES ('CN-QTC-D', 'Xóa Quản Trị Chung', '1');
INSERT INTO `chuc_nang` VALUES ('CN-QTC-R', 'Sửa Quản Trị Chung', '1');
INSERT INTO `chuc_nang` VALUES ('CN-QTC-U', 'Update Quản Trị Chung', '1');

-- ----------------------------
-- Table structure for phong_ban
-- ----------------------------
DROP TABLE IF EXISTS `phong_ban`;
CREATE TABLE `phong_ban` (
  `ma_phong_ban` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ma_chuc_nang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trang_thai` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`ma_phong_ban`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of phong_ban
-- ----------------------------
INSERT INTO `phong_ban` VALUES ('PB-PDA', null, '1');
INSERT INTO `phong_ban` VALUES ('PB-PDT', null, '1');
INSERT INTO `phong_ban` VALUES ('PB-PGD', null, '1');
INSERT INTO `phong_ban` VALUES ('PB-PIT', null, '1');
INSERT INTO `phong_ban` VALUES ('PB-PKT', null, '1');
INSERT INTO `phong_ban` VALUES ('PB-PNS', null, '1');

-- ----------------------------
-- Table structure for tai_khoan
-- ----------------------------
DROP TABLE IF EXISTS `tai_khoan`;
CREATE TABLE `tai_khoan` (
  `ma_nhan_vien` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trang_thai` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`ma_nhan_vien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tai_khoan
-- ----------------------------
INSERT INTO `tai_khoan` VALUES ('NV001', '123456', '1');
