/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : jsfproject

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-08-19 09:51:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'Nguyễn Văn Việt', '001', 'ffse001@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('2', 'Nguyễn Văn Việt', '002', 'ffse002@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('3', 'Nguyễn Văn Việt', '003', 'ffse003@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('4', 'Nguyễn Văn Việt', '004', 'ffse004@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('5', 'Nguyễn Văn Việt', '005', 'ffse005@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('6', 'Nguyễn Văn Việt', '006', 'ffse006@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('7', 'Nguyễn Văn Việt', '007', 'ffse007@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('8', 'Nguyễn Văn Việt', '008', 'ffse008@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('9', 'Nguyễn Văn Việt', '009', 'ffse009@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('10', 'Nguyễn Văn Việt', '010', 'ffse010@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('11', 'Nguyễn Văn Việt', '011', 'ffse011@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('12', 'Nguyễn Văn Việt', '012', 'ffse012@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('13', 'Nguyễn Văn Việt', '013', 'ffse013@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('14', 'Nguyễn Văn Việt', '014', 'ffse014@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('15', 'Nguyễn Văn Việt', '015', 'ffse015@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('16', 'Nguyễn Văn Việt', '016', 'ffse016@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('17', 'Nguyễn Văn Việt', '017', 'ffse017@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('18', 'Nguyễn Văn Việt', '018', 'ffse018@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('19', 'Nguyễn Văn Việt', '019', 'ffse019@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('20', 'Nguyễn Văn Việt', '020', 'ffse020@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('21', 'Nguyễn Văn Việt', '021', 'ffse021@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('22', 'Nguyễn Văn Việt', '022', 'ffse022@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('23', 'Nguyễn Văn Việt', '023', 'ffse023@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('24', 'Nguyễn Văn Việt', '024', 'ffse024@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('25', 'Nguyễn Văn Việt', '025', 'ffse025@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('26', 'Nguyễn Văn Việt', '026', 'ffse026@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('27', 'Nguyễn Văn Việt', '027', 'ffse027@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('28', 'Nguyễn Văn Việt', '028', 'ffse028@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('29', 'Nguyễn Văn Việt', '029', 'ffse029@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('30', 'Nguyễn Văn Việt', '030', 'ffse030@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('31', 'Nguyễn Văn Việt', '031', 'ffse031@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('32', 'Nguyễn Văn Việt', '032', 'ffse032@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('33', 'Nguyễn Văn Việt', '033', 'ffse033@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('34', 'Nguyễn Văn Việt', '034', 'ffse034@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('35', 'Nguyễn Văn Việt', '035', 'ffse035@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('36', 'Nguyễn Văn Việt', '036', 'ffse036@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('37', 'Nguyễn Văn Việt', '037', 'ffse037@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('38', 'Nguyễn Văn Việt', '038', 'ffse038@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('39', 'Nguyễn Văn Việt', '039', 'ffse039@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('40', 'Nguyễn Văn Việt', '040', 'ffse040@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('41', 'Nguyễn Văn Việt', '041', 'ffse041@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('42', 'Nguyễn Văn Việt', '042', 'ffse042@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('43', 'Nguyễn Văn Việt', '043', 'ffse043@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('44', 'Nguyễn Văn Việt', '044', 'ffse044@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('45', 'Nguyễn Văn Việt', '045', 'ffse045@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('46', 'Nguyễn Văn Việt', '046', 'ffse046@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('47', 'Nguyễn Văn Việt', '047', 'ffse047@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('48', 'Nguyễn Văn Việt', '048', 'ffse048@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('49', 'Nguyễn Văn Việt', '049', 'ffse049@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('50', 'Nguyễn Văn Việt', '050', 'ffse050@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('51', 'Nguyễn Văn Việt', '051', 'ffse051@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('52', 'Nguyễn Văn Việt', '052', 'ffse052@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('53', 'Nguyễn Văn Việt', '053', 'ffse053@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('54', 'Nguyễn Văn Việt', '054', 'ffse054@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('55', 'Nguyễn Văn Việt', '055', 'ffse055@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('56', 'Nguyễn Văn Việt', '056', 'ffse056@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('57', 'Nguyễn Văn Việt', '057', 'ffse057@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('58', 'Nguyễn Văn Việt', '058', 'ffse058@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('59', 'Nguyễn Văn Việt', '059', 'ffse059@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('60', 'Nguyễn Văn Việt', '060', 'ffse060@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('61', 'Nguyễn Văn Việt', '061', 'ffse061@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('62', 'Nguyễn Văn Việt', '062', 'ffse062@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('63', 'Nguyễn Văn Việt', '063', 'ffse063@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('64', 'Nguyễn Văn Việt', '064', 'ffse064@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('65', 'Nguyễn Văn Việt', '065', 'ffse065@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('66', 'Nguyễn Văn Việt', '066', 'ffse066@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('67', 'Nguyễn Văn Việt', '067', 'ffse067@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('68', 'Nguyễn Văn Việt', '068', 'ffse068@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('69', 'Nguyễn Văn Việt', '069', 'ffse069@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('70', 'Nguyễn Văn Việt', '070', 'ffse070@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('71', 'Nguyễn Văn Việt', '071', 'ffse071@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('72', 'Nguyễn Văn Việt', '072', 'ffse072@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('73', 'Nguyễn Văn Việt', '073', 'ffse073@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('74', 'Nguyễn Văn Việt', '074', 'ffse074@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('75', 'Nguyễn Văn Việt', '075', 'ffse075@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('76', 'Nguyễn Văn Việt', '076', 'ffse076@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('77', 'Nguyễn Văn Việt', '077', 'ffse077@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('78', 'Nguyễn Văn Việt', '078', 'ffse078@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('79', 'Nguyễn Văn Việt', '079', 'ffse079@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('80', 'Nguyễn Văn Việt', '080', 'ffse080@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('81', 'Nguyễn Văn Việt', '081', 'ffse081@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('82', 'Nguyễn Văn Việt', '082', 'ffse082@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('83', 'Nguyễn Văn Việt', '083', 'ffse083@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('84', 'Nguyễn Văn Việt', '084', 'ffse084@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('85', 'Nguyễn Văn Việt', '085', 'ffse085@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('86', 'Nguyễn Văn Việt', '086', 'ffse086@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('87', 'Nguyễn Văn Việt', '087', 'ffse087@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('88', 'Nguyễn Văn Việt', '088', 'ffse088@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('89', 'Nguyễn Văn Việt', '089', 'ffse089@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('90', 'Nguyễn Văn Việt', '090', 'ffse090@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('91', 'Nguyễn Văn Việt', '091', 'ffse091@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('92', 'Nguyễn Văn Việt', '092', 'ffse092@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('93', 'Nguyễn Văn Việt', '093', 'ffse093@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('94', 'Nguyễn Văn Việt', '094', 'ffse094@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('95', 'Nguyễn Văn Việt', '095', 'ffse095@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('96', 'Nguyễn Văn Việt', '096', 'ffse096@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('97', 'Nguyễn Văn Việt', '097', 'ffse097@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('98', 'Nguyễn Văn Việt', '098', 'ffse098@st.fasttrack.edu.vn');
INSERT INTO `student` VALUES ('99', 'Nguyễn Văn Việt', '099', 'ffse099@st.fasttrack.edu.vn');
