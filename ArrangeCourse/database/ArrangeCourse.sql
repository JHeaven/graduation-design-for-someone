/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : arrange_course

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-05-28 21:37:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `class`
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `tea` varchar(30) DEFAULT NULL,
  `ps` varchar(255) DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', '13计科1', '45', '辅导员1号', null, '0');
INSERT INTO `class` VALUES ('2', '世界电影赏析-公选课班', '180', '老傅', null, '0');
INSERT INTO `class` VALUES ('3', '13计科2', '55', '老王', null, '0');
INSERT INTO `class` VALUES ('4', '职业生涯规划-公选课班', '180', '老头子', null, '0');
INSERT INTO `class` VALUES ('5', '15计科1', '60', '不知道', null, '0');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `ps` varchar(200) DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '计算机原理', '必修、选修课', null, '0', '2');
INSERT INTO `course` VALUES ('4', '世界电影赏析', '公选课', null, '0', '1');
INSERT INTO `course` VALUES ('5', '大学英语A', '必修、选修课', null, '0', '2');
INSERT INTO `course` VALUES ('6', '高等数学ⅠA', '必修、选修课', null, '0', '2');
INSERT INTO `course` VALUES ('7', '体育A', '必修、选修课', null, '0', null);
INSERT INTO `course` VALUES ('8', '职业生涯规划', '公选课', null, '0', '1');
INSERT INTO `course` VALUES ('9', '高级数据库pl/sql', '必修、选修课', null, '0', '2');
INSERT INTO `course` VALUES ('10', '高级网页框架制作', '必修、选修课', null, '0', '2');
INSERT INTO `course` VALUES ('11', 'Oracle', '必修、选修课', null, '0', '2');
INSERT INTO `course` VALUES ('12', '面向对象程序设计', '必修、选修课', null, '0', '2');
INSERT INTO `course` VALUES ('13', 'C语言程序设计', '必修、选修课', null, '0', '2');
INSERT INTO `course` VALUES ('14', 'C++面向对象编程', '必修、选修课', null, '0', null);
INSERT INTO `course` VALUES ('15', 'JAVA SE', '必修、选修课', null, '0', '2');
INSERT INTO `course` VALUES ('16', 'JAVA EE', '必修、选修课', null, '0', '2');
INSERT INTO `course` VALUES ('17', 'JAVA WEB-Servlet/JSP', '必修、选修课', null, '0', '2');
INSERT INTO `course` VALUES ('18', 'spring框架', '必修、选修课', null, '0', null);
INSERT INTO `course` VALUES ('19', 'spring mvc 框架', '必修、选修课', null, '0', null);
INSERT INTO `course` VALUES ('20', 'mybatis框架', '必修、选修课', null, '0', '2');
INSERT INTO `course` VALUES ('21', 'SSM三大框架集成', '必修、选修课', null, '0', '2');
INSERT INTO `course` VALUES ('22', 'SSM三大框架实战', '必修、选修课', null, '0', '2');
INSERT INTO `course` VALUES ('23', 'PLSQL高级应用', '必修、选修课', null, '0', '2');

-- ----------------------------
-- Table structure for `course_list`
-- ----------------------------
DROP TABLE IF EXISTS `course_list`;
CREATE TABLE `course_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) DEFAULT NULL,
  `c_name` varchar(100) DEFAULT NULL,
  `c_type` varchar(20) DEFAULT NULL,
  `t_id` varchar(30) DEFAULT NULL,
  `t_name` varchar(30) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `class_name` varchar(200) DEFAULT NULL,
  `ps` varchar(200) DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `best_site` varchar(20) DEFAULT '',
  `site` int(11) DEFAULT NULL,
  `keshi` int(11) DEFAULT NULL COMMENT '课时',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_list
-- ----------------------------
INSERT INTO `course_list` VALUES ('1', '1', '计算机原理', '必修、选修课', '2', '蒋宇钦', '1', '13计科1', null, '0', '45', '下午第一节', '99', '30');
INSERT INTO `course_list` VALUES ('3', '7', '体育A', '必修、选修课', '3', '老师001', '1', '13计科1', null, '0', '45', '下午第一节', '10', '15');
INSERT INTO `course_list` VALUES ('4', '5', '大学英语A', '必修、选修课', '5', '老师003', '1', '13计科1', null, '0', '45', '上午第一节', '30', '40');
INSERT INTO `course_list` VALUES ('5', '11', 'Oracle', '必修、选修课', '8', '老师006', '3', '13计科2', null, '0', '55', '上午第二节', '50', '40');
INSERT INTO `course_list` VALUES ('6', '18', 'spring框架', '必修、选修课', '13', '老师010', '5', '15计科1', null, '0', '60', '下午第二节', '5', '50');
INSERT INTO `course_list` VALUES ('7', '20', 'mybatis框架', '必修、选修课', '7', '老师005', '1', '13计科1', null, '0', '45', '上午第二节', '20', '50');
INSERT INTO `course_list` VALUES ('8', '17', 'JAVA WEB-Servlet/JSP', '必修、选修课', '7', '老师005', '1', '13计科1', null, '0', '45', '上午第二节', '50', '30');

-- ----------------------------
-- Table structure for `room`
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `max_num` int(11) DEFAULT NULL,
  `ps` varchar(200) DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES ('3', '14#101', '80', null, '0');
INSERT INTO `room` VALUES ('4', '14#103', '80', null, '0');
INSERT INTO `room` VALUES ('5', '14#106', '200', null, '0');
INSERT INTO `room` VALUES ('6', '14#201', '80', null, '0');
INSERT INTO `room` VALUES ('7', '14#203', '80', null, '0');
INSERT INTO `room` VALUES ('8', '14#206', '200', null, '0');

-- ----------------------------
-- Table structure for `section`
-- ----------------------------
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sec_date` datetime DEFAULT NULL,
  `sec_site` varchar(50) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `room_name` varchar(50) DEFAULT NULL,
  `max_num` int(11) DEFAULT NULL,
  `ps` varchar(200) DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `le1_id` int(11) DEFAULT NULL,
  `le1_name` varchar(100) DEFAULT NULL,
  `le1_tea` varchar(30) DEFAULT NULL,
  `le1_class` varchar(50) DEFAULT NULL,
  `le2_id` int(11) DEFAULT NULL,
  `le2_name` varchar(100) DEFAULT NULL,
  `le2_tea` varchar(30) DEFAULT NULL,
  `le2_class` varchar(50) DEFAULT NULL,
  `le3_id` int(11) DEFAULT NULL,
  `le3_name` varchar(100) DEFAULT NULL,
  `le3_tea` varchar(30) DEFAULT NULL,
  `le3_class` varchar(50) DEFAULT NULL,
  `le4_id` int(11) DEFAULT NULL,
  `le4_name` varchar(100) DEFAULT NULL,
  `le4_tea` varchar(30) DEFAULT NULL,
  `le4_class` varchar(50) DEFAULT NULL,
  `le5_id` int(11) DEFAULT NULL,
  `le5_name` varchar(100) DEFAULT NULL,
  `le5_tea` varchar(30) DEFAULT NULL,
  `le5_class` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6187 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO `section` VALUES ('5917', '2017-05-01 00:00:00', null, '3', '14#101', '80', '星期一', '0', '5', '大学英语A', '老师003', '13计科1', '20', 'mybatis框架', '老师005', '13计科1', '7', '体育A', '老师001', '13计科1', '18', 'spring框架', '老师010', '15计科1', null, null, null, null);
INSERT INTO `section` VALUES ('5918', '2017-05-01 00:00:00', null, '4', '14#103', '80', '星期一', '0', null, null, null, null, '11', 'Oracle', '老师006', '13计科2', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5919', '2017-05-01 00:00:00', null, '5', '14#106', '200', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5920', '2017-05-01 00:00:00', null, '6', '14#201', '80', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5921', '2017-05-01 00:00:00', null, '7', '14#203', '80', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5922', '2017-05-01 00:00:00', null, '8', '14#206', '200', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5923', '2017-05-02 00:00:00', null, '3', '14#101', '80', '星期二', '0', '5', '大学英语A', '老师003', '13计科1', '20', 'mybatis框架', '老师005', '13计科1', '7', '体育A', '老师001', '13计科1', '18', 'spring框架', '老师010', '15计科1', null, null, null, null);
INSERT INTO `section` VALUES ('5924', '2017-05-02 00:00:00', null, '4', '14#103', '80', '星期二', '0', null, null, null, null, '11', 'Oracle', '老师006', '13计科2', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5925', '2017-05-02 00:00:00', null, '5', '14#106', '200', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5926', '2017-05-02 00:00:00', null, '6', '14#201', '80', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5927', '2017-05-02 00:00:00', null, '7', '14#203', '80', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5928', '2017-05-02 00:00:00', null, '8', '14#206', '200', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5929', '2017-05-03 00:00:00', null, '3', '14#101', '80', '星期三', '0', null, null, null, null, '17', 'JAVA WEB-Servlet/JSP', '老师005', '13计科1', '1', '计算机原理', '蒋宇钦', '13计科1', null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5930', '2017-05-03 00:00:00', null, '4', '14#103', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5931', '2017-05-03 00:00:00', null, '5', '14#106', '200', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5932', '2017-05-03 00:00:00', null, '6', '14#201', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5933', '2017-05-03 00:00:00', null, '7', '14#203', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5934', '2017-05-03 00:00:00', null, '8', '14#206', '200', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5935', '2017-05-04 00:00:00', null, '3', '14#101', '80', '星期四', '0', null, null, null, null, '17', 'JAVA WEB-Servlet/JSP', '老师005', '13计科1', '1', '计算机原理', '蒋宇钦', '13计科1', null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5936', '2017-05-04 00:00:00', null, '4', '14#103', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5937', '2017-05-04 00:00:00', null, '5', '14#106', '200', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5938', '2017-05-04 00:00:00', null, '6', '14#201', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5939', '2017-05-04 00:00:00', null, '7', '14#203', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5940', '2017-05-04 00:00:00', null, '8', '14#206', '200', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5941', '2017-05-05 00:00:00', null, '3', '14#101', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5942', '2017-05-05 00:00:00', null, '4', '14#103', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5943', '2017-05-05 00:00:00', null, '5', '14#106', '200', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5944', '2017-05-05 00:00:00', null, '6', '14#201', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5945', '2017-05-05 00:00:00', null, '7', '14#203', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5946', '2017-05-05 00:00:00', null, '8', '14#206', '200', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5947', '2017-05-08 00:00:00', null, '3', '14#101', '80', '星期一', '0', '5', '大学英语A', '老师003', '13计科1', '20', 'mybatis框架', '老师005', '13计科1', '7', '体育A', '老师001', '13计科1', '18', 'spring框架', '老师010', '15计科1', null, null, null, null);
INSERT INTO `section` VALUES ('5948', '2017-05-08 00:00:00', null, '4', '14#103', '80', '星期一', '0', null, null, null, null, '11', 'Oracle', '老师006', '13计科2', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5949', '2017-05-08 00:00:00', null, '5', '14#106', '200', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5950', '2017-05-08 00:00:00', null, '6', '14#201', '80', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5951', '2017-05-08 00:00:00', null, '7', '14#203', '80', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5952', '2017-05-08 00:00:00', null, '8', '14#206', '200', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5953', '2017-05-09 00:00:00', null, '3', '14#101', '80', '星期二', '0', '5', '大学英语A', '老师003', '13计科1', '20', 'mybatis框架', '老师005', '13计科1', '7', '体育A', '老师001', '13计科1', '18', 'spring框架', '老师010', '15计科1', null, null, null, null);
INSERT INTO `section` VALUES ('5954', '2017-05-09 00:00:00', null, '4', '14#103', '80', '星期二', '0', null, null, null, null, '11', 'Oracle', '老师006', '13计科2', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5955', '2017-05-09 00:00:00', null, '5', '14#106', '200', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5956', '2017-05-09 00:00:00', null, '6', '14#201', '80', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5957', '2017-05-09 00:00:00', null, '7', '14#203', '80', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5958', '2017-05-09 00:00:00', null, '8', '14#206', '200', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5959', '2017-05-10 00:00:00', null, '3', '14#101', '80', '星期三', '0', null, null, null, null, '17', 'JAVA WEB-Servlet/JSP', '老师005', '13计科1', '1', '计算机原理', '蒋宇钦', '13计科1', null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5960', '2017-05-10 00:00:00', null, '4', '14#103', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5961', '2017-05-10 00:00:00', null, '5', '14#106', '200', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5962', '2017-05-10 00:00:00', null, '6', '14#201', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5963', '2017-05-10 00:00:00', null, '7', '14#203', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5964', '2017-05-10 00:00:00', null, '8', '14#206', '200', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5965', '2017-05-11 00:00:00', null, '3', '14#101', '80', '星期四', '0', null, null, null, null, '17', 'JAVA WEB-Servlet/JSP', '老师005', '13计科1', '1', '计算机原理', '蒋宇钦', '13计科1', null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5966', '2017-05-11 00:00:00', null, '4', '14#103', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5967', '2017-05-11 00:00:00', null, '5', '14#106', '200', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5968', '2017-05-11 00:00:00', null, '6', '14#201', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5969', '2017-05-11 00:00:00', null, '7', '14#203', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5970', '2017-05-11 00:00:00', null, '8', '14#206', '200', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5971', '2017-05-12 00:00:00', null, '3', '14#101', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5972', '2017-05-12 00:00:00', null, '4', '14#103', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5973', '2017-05-12 00:00:00', null, '5', '14#106', '200', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5974', '2017-05-12 00:00:00', null, '6', '14#201', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5975', '2017-05-12 00:00:00', null, '7', '14#203', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5976', '2017-05-12 00:00:00', null, '8', '14#206', '200', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5977', '2017-05-15 00:00:00', null, '3', '14#101', '80', '星期一', '0', '5', '大学英语A', '老师003', '13计科1', '20', 'mybatis框架', '老师005', '13计科1', '7', '体育A', '老师001', '13计科1', '18', 'spring框架', '老师010', '15计科1', null, null, null, null);
INSERT INTO `section` VALUES ('5978', '2017-05-15 00:00:00', null, '4', '14#103', '80', '星期一', '0', null, null, null, null, '11', 'Oracle', '老师006', '13计科2', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5979', '2017-05-15 00:00:00', null, '5', '14#106', '200', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5980', '2017-05-15 00:00:00', null, '6', '14#201', '80', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5981', '2017-05-15 00:00:00', null, '7', '14#203', '80', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5982', '2017-05-15 00:00:00', null, '8', '14#206', '200', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5983', '2017-05-16 00:00:00', null, '3', '14#101', '80', '星期二', '0', '5', '大学英语A', '老师003', '13计科1', '20', 'mybatis框架', '老师005', '13计科1', '7', '体育A', '老师001', '13计科1', '18', 'spring框架', '老师010', '15计科1', null, null, null, null);
INSERT INTO `section` VALUES ('5984', '2017-05-16 00:00:00', null, '4', '14#103', '80', '星期二', '0', null, null, null, null, '11', 'Oracle', '老师006', '13计科2', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5985', '2017-05-16 00:00:00', null, '5', '14#106', '200', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5986', '2017-05-16 00:00:00', null, '6', '14#201', '80', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5987', '2017-05-16 00:00:00', null, '7', '14#203', '80', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5988', '2017-05-16 00:00:00', null, '8', '14#206', '200', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5989', '2017-05-17 00:00:00', null, '3', '14#101', '80', '星期三', '0', null, null, null, null, '17', 'JAVA WEB-Servlet/JSP', '老师005', '13计科1', '1', '计算机原理', '蒋宇钦', '13计科1', null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5990', '2017-05-17 00:00:00', null, '4', '14#103', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5991', '2017-05-17 00:00:00', null, '5', '14#106', '200', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5992', '2017-05-17 00:00:00', null, '6', '14#201', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5993', '2017-05-17 00:00:00', null, '7', '14#203', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5994', '2017-05-17 00:00:00', null, '8', '14#206', '200', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5995', '2017-05-18 00:00:00', null, '3', '14#101', '80', '星期四', '0', null, null, null, null, '17', 'JAVA WEB-Servlet/JSP', '老师005', '13计科1', '1', '计算机原理', '蒋宇钦', '13计科1', null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5996', '2017-05-18 00:00:00', null, '4', '14#103', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5997', '2017-05-18 00:00:00', null, '5', '14#106', '200', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5998', '2017-05-18 00:00:00', null, '6', '14#201', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('5999', '2017-05-18 00:00:00', null, '7', '14#203', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6000', '2017-05-18 00:00:00', null, '8', '14#206', '200', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6001', '2017-05-19 00:00:00', null, '3', '14#101', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6002', '2017-05-19 00:00:00', null, '4', '14#103', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6003', '2017-05-19 00:00:00', null, '5', '14#106', '200', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6004', '2017-05-19 00:00:00', null, '6', '14#201', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6005', '2017-05-19 00:00:00', null, '7', '14#203', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6006', '2017-05-19 00:00:00', null, '8', '14#206', '200', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6007', '2017-05-22 00:00:00', null, '3', '14#101', '80', '星期一', '0', '5', '大学英语A', '老师003', '13计科1', '20', 'mybatis框架', '老师005', '13计科1', '7', '体育A', '老师001', '13计科1', '18', 'spring框架', '老师010', '15计科1', null, null, null, null);
INSERT INTO `section` VALUES ('6008', '2017-05-22 00:00:00', null, '4', '14#103', '80', '星期一', '0', null, null, null, null, '11', 'Oracle', '老师006', '13计科2', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6009', '2017-05-22 00:00:00', null, '5', '14#106', '200', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6010', '2017-05-22 00:00:00', null, '6', '14#201', '80', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6011', '2017-05-22 00:00:00', null, '7', '14#203', '80', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6012', '2017-05-22 00:00:00', null, '8', '14#206', '200', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6013', '2017-05-23 00:00:00', null, '3', '14#101', '80', '星期二', '0', '5', '大学英语A', '老师003', '13计科1', '20', 'mybatis框架', '老师005', '13计科1', '7', '体育A', '老师001', '13计科1', '18', 'spring框架', '老师010', '15计科1', null, null, null, null);
INSERT INTO `section` VALUES ('6014', '2017-05-23 00:00:00', null, '4', '14#103', '80', '星期二', '0', null, null, null, null, '11', 'Oracle', '老师006', '13计科2', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6015', '2017-05-23 00:00:00', null, '5', '14#106', '200', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6016', '2017-05-23 00:00:00', null, '6', '14#201', '80', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6017', '2017-05-23 00:00:00', null, '7', '14#203', '80', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6018', '2017-05-23 00:00:00', null, '8', '14#206', '200', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6019', '2017-05-24 00:00:00', null, '3', '14#101', '80', '星期三', '0', null, null, null, null, '17', 'JAVA WEB-Servlet/JSP', '老师005', '13计科1', '1', '计算机原理', '蒋宇钦', '13计科1', null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6020', '2017-05-24 00:00:00', null, '4', '14#103', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6021', '2017-05-24 00:00:00', null, '5', '14#106', '200', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6022', '2017-05-24 00:00:00', null, '6', '14#201', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6023', '2017-05-24 00:00:00', null, '7', '14#203', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6024', '2017-05-24 00:00:00', null, '8', '14#206', '200', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6025', '2017-05-25 00:00:00', null, '3', '14#101', '80', '星期四', '0', null, null, null, null, '17', 'JAVA WEB-Servlet/JSP', '老师005', '13计科1', '1', '计算机原理', '蒋宇钦', '13计科1', null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6026', '2017-05-25 00:00:00', null, '4', '14#103', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6027', '2017-05-25 00:00:00', null, '5', '14#106', '200', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6028', '2017-05-25 00:00:00', null, '6', '14#201', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6029', '2017-05-25 00:00:00', null, '7', '14#203', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6030', '2017-05-25 00:00:00', null, '8', '14#206', '200', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6031', '2017-05-26 00:00:00', null, '3', '14#101', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6032', '2017-05-26 00:00:00', null, '4', '14#103', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6033', '2017-05-26 00:00:00', null, '5', '14#106', '200', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6034', '2017-05-26 00:00:00', null, '6', '14#201', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6035', '2017-05-26 00:00:00', null, '7', '14#203', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6036', '2017-05-26 00:00:00', null, '8', '14#206', '200', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6037', '2017-05-29 00:00:00', null, '3', '14#101', '80', '星期一', '0', '5', '大学英语A', '老师003', '13计科1', '20', 'mybatis框架', '老师005', '13计科1', '7', '体育A', '老师001', '13计科1', '18', 'spring框架', '老师010', '15计科1', null, null, null, null);
INSERT INTO `section` VALUES ('6038', '2017-05-29 00:00:00', null, '4', '14#103', '80', '星期一', '0', null, null, null, null, '11', 'Oracle', '老师006', '13计科2', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6039', '2017-05-29 00:00:00', null, '5', '14#106', '200', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6040', '2017-05-29 00:00:00', null, '6', '14#201', '80', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6041', '2017-05-29 00:00:00', null, '7', '14#203', '80', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6042', '2017-05-29 00:00:00', null, '8', '14#206', '200', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6043', '2017-05-30 00:00:00', null, '3', '14#101', '80', '星期二', '0', '5', '大学英语A', '老师003', '13计科1', '20', 'mybatis框架', '老师005', '13计科1', '7', '体育A', '老师001', '13计科1', '18', 'spring框架', '老师010', '15计科1', null, null, null, null);
INSERT INTO `section` VALUES ('6044', '2017-05-30 00:00:00', null, '4', '14#103', '80', '星期二', '0', null, null, null, null, '11', 'Oracle', '老师006', '13计科2', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6045', '2017-05-30 00:00:00', null, '5', '14#106', '200', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6046', '2017-05-30 00:00:00', null, '6', '14#201', '80', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6047', '2017-05-30 00:00:00', null, '7', '14#203', '80', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6048', '2017-05-30 00:00:00', null, '8', '14#206', '200', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6049', '2017-05-31 00:00:00', null, '3', '14#101', '80', '星期三', '0', null, null, null, null, '17', 'JAVA WEB-Servlet/JSP', '老师005', '13计科1', '1', '计算机原理', '蒋宇钦', '13计科1', null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6050', '2017-05-31 00:00:00', null, '4', '14#103', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6051', '2017-05-31 00:00:00', null, '5', '14#106', '200', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6052', '2017-05-31 00:00:00', null, '6', '14#201', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6053', '2017-05-31 00:00:00', null, '7', '14#203', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6054', '2017-05-31 00:00:00', null, '8', '14#206', '200', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6055', '2017-06-01 00:00:00', null, '3', '14#101', '80', '星期四', '0', null, null, null, null, '17', 'JAVA WEB-Servlet/JSP', '老师005', '13计科1', '1', '计算机原理', '蒋宇钦', '13计科1', null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6056', '2017-06-01 00:00:00', null, '4', '14#103', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6057', '2017-06-01 00:00:00', null, '5', '14#106', '200', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6058', '2017-06-01 00:00:00', null, '6', '14#201', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6059', '2017-06-01 00:00:00', null, '7', '14#203', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6060', '2017-06-01 00:00:00', null, '8', '14#206', '200', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6061', '2017-06-02 00:00:00', null, '3', '14#101', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6062', '2017-06-02 00:00:00', null, '4', '14#103', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6063', '2017-06-02 00:00:00', null, '5', '14#106', '200', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6064', '2017-06-02 00:00:00', null, '6', '14#201', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6065', '2017-06-02 00:00:00', null, '7', '14#203', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6066', '2017-06-02 00:00:00', null, '8', '14#206', '200', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6067', '2017-06-05 00:00:00', null, '3', '14#101', '80', '星期一', '0', '5', '大学英语A', '老师003', '13计科1', '20', 'mybatis框架', '老师005', '13计科1', '7', '体育A', '老师001', '13计科1', '18', 'spring框架', '老师010', '15计科1', null, null, null, null);
INSERT INTO `section` VALUES ('6068', '2017-06-05 00:00:00', null, '4', '14#103', '80', '星期一', '0', null, null, null, null, '11', 'Oracle', '老师006', '13计科2', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6069', '2017-06-05 00:00:00', null, '5', '14#106', '200', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6070', '2017-06-05 00:00:00', null, '6', '14#201', '80', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6071', '2017-06-05 00:00:00', null, '7', '14#203', '80', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6072', '2017-06-05 00:00:00', null, '8', '14#206', '200', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6073', '2017-06-06 00:00:00', null, '3', '14#101', '80', '星期二', '0', '5', '大学英语A', '老师003', '13计科1', '20', 'mybatis框架', '老师005', '13计科1', '7', '体育A', '老师001', '13计科1', '18', 'spring框架', '老师010', '15计科1', null, null, null, null);
INSERT INTO `section` VALUES ('6074', '2017-06-06 00:00:00', null, '4', '14#103', '80', '星期二', '0', null, null, null, null, '11', 'Oracle', '老师006', '13计科2', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6075', '2017-06-06 00:00:00', null, '5', '14#106', '200', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6076', '2017-06-06 00:00:00', null, '6', '14#201', '80', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6077', '2017-06-06 00:00:00', null, '7', '14#203', '80', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6078', '2017-06-06 00:00:00', null, '8', '14#206', '200', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6079', '2017-06-07 00:00:00', null, '3', '14#101', '80', '星期三', '0', null, null, null, null, '17', 'JAVA WEB-Servlet/JSP', '老师005', '13计科1', '1', '计算机原理', '蒋宇钦', '13计科1', null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6080', '2017-06-07 00:00:00', null, '4', '14#103', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6081', '2017-06-07 00:00:00', null, '5', '14#106', '200', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6082', '2017-06-07 00:00:00', null, '6', '14#201', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6083', '2017-06-07 00:00:00', null, '7', '14#203', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6084', '2017-06-07 00:00:00', null, '8', '14#206', '200', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6085', '2017-06-08 00:00:00', null, '3', '14#101', '80', '星期四', '0', null, null, null, null, '17', 'JAVA WEB-Servlet/JSP', '老师005', '13计科1', '1', '计算机原理', '蒋宇钦', '13计科1', null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6086', '2017-06-08 00:00:00', null, '4', '14#103', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6087', '2017-06-08 00:00:00', null, '5', '14#106', '200', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6088', '2017-06-08 00:00:00', null, '6', '14#201', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6089', '2017-06-08 00:00:00', null, '7', '14#203', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6090', '2017-06-08 00:00:00', null, '8', '14#206', '200', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6091', '2017-06-09 00:00:00', null, '3', '14#101', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6092', '2017-06-09 00:00:00', null, '4', '14#103', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6093', '2017-06-09 00:00:00', null, '5', '14#106', '200', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6094', '2017-06-09 00:00:00', null, '6', '14#201', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6095', '2017-06-09 00:00:00', null, '7', '14#203', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6096', '2017-06-09 00:00:00', null, '8', '14#206', '200', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6097', '2017-06-12 00:00:00', null, '3', '14#101', '80', '星期一', '0', '5', '大学英语A', '老师003', '13计科1', '20', 'mybatis框架', '老师005', '13计科1', '7', '体育A', '老师001', '13计科1', '18', 'spring框架', '老师010', '15计科1', null, null, null, null);
INSERT INTO `section` VALUES ('6098', '2017-06-12 00:00:00', null, '4', '14#103', '80', '星期一', '0', null, null, null, null, '11', 'Oracle', '老师006', '13计科2', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6099', '2017-06-12 00:00:00', null, '5', '14#106', '200', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6100', '2017-06-12 00:00:00', null, '6', '14#201', '80', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6101', '2017-06-12 00:00:00', null, '7', '14#203', '80', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6102', '2017-06-12 00:00:00', null, '8', '14#206', '200', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6103', '2017-06-13 00:00:00', null, '3', '14#101', '80', '星期二', '0', '5', '大学英语A', '老师003', '13计科1', '20', 'mybatis框架', '老师005', '13计科1', '7', '体育A', '老师001', '13计科1', '18', 'spring框架', '老师010', '15计科1', null, null, null, null);
INSERT INTO `section` VALUES ('6104', '2017-06-13 00:00:00', null, '4', '14#103', '80', '星期二', '0', null, null, null, null, '11', 'Oracle', '老师006', '13计科2', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6105', '2017-06-13 00:00:00', null, '5', '14#106', '200', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6106', '2017-06-13 00:00:00', null, '6', '14#201', '80', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6107', '2017-06-13 00:00:00', null, '7', '14#203', '80', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6108', '2017-06-13 00:00:00', null, '8', '14#206', '200', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6109', '2017-06-14 00:00:00', null, '3', '14#101', '80', '星期三', '0', null, null, null, null, '17', 'JAVA WEB-Servlet/JSP', '老师005', '13计科1', '1', '计算机原理', '蒋宇钦', '13计科1', null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6110', '2017-06-14 00:00:00', null, '4', '14#103', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6111', '2017-06-14 00:00:00', null, '5', '14#106', '200', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6112', '2017-06-14 00:00:00', null, '6', '14#201', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6113', '2017-06-14 00:00:00', null, '7', '14#203', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6114', '2017-06-14 00:00:00', null, '8', '14#206', '200', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6115', '2017-06-15 00:00:00', null, '3', '14#101', '80', '星期四', '0', null, null, null, null, '17', 'JAVA WEB-Servlet/JSP', '老师005', '13计科1', '1', '计算机原理', '蒋宇钦', '13计科1', null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6116', '2017-06-15 00:00:00', null, '4', '14#103', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6117', '2017-06-15 00:00:00', null, '5', '14#106', '200', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6118', '2017-06-15 00:00:00', null, '6', '14#201', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6119', '2017-06-15 00:00:00', null, '7', '14#203', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6120', '2017-06-15 00:00:00', null, '8', '14#206', '200', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6121', '2017-06-16 00:00:00', null, '3', '14#101', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6122', '2017-06-16 00:00:00', null, '4', '14#103', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6123', '2017-06-16 00:00:00', null, '5', '14#106', '200', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6124', '2017-06-16 00:00:00', null, '6', '14#201', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6125', '2017-06-16 00:00:00', null, '7', '14#203', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6126', '2017-06-16 00:00:00', null, '8', '14#206', '200', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6127', '2017-06-19 00:00:00', null, '3', '14#101', '80', '星期一', '0', '5', '大学英语A', '老师003', '13计科1', '20', 'mybatis框架', '老师005', '13计科1', '7', '体育A', '老师001', '13计科1', '18', 'spring框架', '老师010', '15计科1', null, null, null, null);
INSERT INTO `section` VALUES ('6128', '2017-06-19 00:00:00', null, '4', '14#103', '80', '星期一', '0', null, null, null, null, '11', 'Oracle', '老师006', '13计科2', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6129', '2017-06-19 00:00:00', null, '5', '14#106', '200', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6130', '2017-06-19 00:00:00', null, '6', '14#201', '80', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6131', '2017-06-19 00:00:00', null, '7', '14#203', '80', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6132', '2017-06-19 00:00:00', null, '8', '14#206', '200', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6133', '2017-06-20 00:00:00', null, '3', '14#101', '80', '星期二', '0', '5', '大学英语A', '老师003', '13计科1', '20', 'mybatis框架', '老师005', '13计科1', '1', '计算机原理', '蒋宇钦', '13计科1', '18', 'spring框架', '老师010', '15计科1', null, null, null, null);
INSERT INTO `section` VALUES ('6134', '2017-06-20 00:00:00', null, '4', '14#103', '80', '星期二', '0', null, null, null, null, '11', 'Oracle', '老师006', '13计科2', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6135', '2017-06-20 00:00:00', null, '5', '14#106', '200', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6136', '2017-06-20 00:00:00', null, '6', '14#201', '80', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6137', '2017-06-20 00:00:00', null, '7', '14#203', '80', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6138', '2017-06-20 00:00:00', null, '8', '14#206', '200', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6139', '2017-06-21 00:00:00', null, '3', '14#101', '80', '星期三', '0', null, null, null, null, '17', 'JAVA WEB-Servlet/JSP', '老师005', '13计科1', '1', '计算机原理', '蒋宇钦', '13计科1', null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6140', '2017-06-21 00:00:00', null, '4', '14#103', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6141', '2017-06-21 00:00:00', null, '5', '14#106', '200', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6142', '2017-06-21 00:00:00', null, '6', '14#201', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6143', '2017-06-21 00:00:00', null, '7', '14#203', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6144', '2017-06-21 00:00:00', null, '8', '14#206', '200', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6145', '2017-06-22 00:00:00', null, '3', '14#101', '80', '星期四', '0', null, null, null, null, '17', 'JAVA WEB-Servlet/JSP', '老师005', '13计科1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6146', '2017-06-22 00:00:00', null, '4', '14#103', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6147', '2017-06-22 00:00:00', null, '5', '14#106', '200', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6148', '2017-06-22 00:00:00', null, '6', '14#201', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6149', '2017-06-22 00:00:00', null, '7', '14#203', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6150', '2017-06-22 00:00:00', null, '8', '14#206', '200', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6151', '2017-06-23 00:00:00', null, '3', '14#101', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6152', '2017-06-23 00:00:00', null, '4', '14#103', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6153', '2017-06-23 00:00:00', null, '5', '14#106', '200', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6154', '2017-06-23 00:00:00', null, '6', '14#201', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6155', '2017-06-23 00:00:00', null, '7', '14#203', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6156', '2017-06-23 00:00:00', null, '8', '14#206', '200', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6157', '2017-06-26 00:00:00', null, '3', '14#101', '80', '星期一', '0', '5', '大学英语A', '老师003', '13计科1', '20', 'mybatis框架', '老师005', '13计科1', '1', '计算机原理', '蒋宇钦', '13计科1', '18', 'spring框架', '老师010', '15计科1', null, null, null, null);
INSERT INTO `section` VALUES ('6158', '2017-06-26 00:00:00', null, '4', '14#103', '80', '星期一', '0', null, null, null, null, '11', 'Oracle', '老师006', '13计科2', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6159', '2017-06-26 00:00:00', null, '5', '14#106', '200', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6160', '2017-06-26 00:00:00', null, '6', '14#201', '80', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6161', '2017-06-26 00:00:00', null, '7', '14#203', '80', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6162', '2017-06-26 00:00:00', null, '8', '14#206', '200', '星期一', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6163', '2017-06-27 00:00:00', null, '3', '14#101', '80', '星期二', '0', '5', '大学英语A', '老师003', '13计科1', '20', 'mybatis框架', '老师005', '13计科1', '1', '计算机原理', '蒋宇钦', '13计科1', '18', 'spring框架', '老师010', '15计科1', null, null, null, null);
INSERT INTO `section` VALUES ('6164', '2017-06-27 00:00:00', null, '4', '14#103', '80', '星期二', '0', null, null, null, null, '11', 'Oracle', '老师006', '13计科2', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6165', '2017-06-27 00:00:00', null, '5', '14#106', '200', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6166', '2017-06-27 00:00:00', null, '6', '14#201', '80', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6167', '2017-06-27 00:00:00', null, '7', '14#203', '80', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6168', '2017-06-27 00:00:00', null, '8', '14#206', '200', '星期二', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6169', '2017-06-28 00:00:00', null, '3', '14#101', '80', '星期三', '0', null, null, null, null, '17', 'JAVA WEB-Servlet/JSP', '老师005', '13计科1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6170', '2017-06-28 00:00:00', null, '4', '14#103', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6171', '2017-06-28 00:00:00', null, '5', '14#106', '200', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6172', '2017-06-28 00:00:00', null, '6', '14#201', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6173', '2017-06-28 00:00:00', null, '7', '14#203', '80', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6174', '2017-06-28 00:00:00', null, '8', '14#206', '200', '星期三', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6175', '2017-06-29 00:00:00', null, '3', '14#101', '80', '星期四', '0', null, null, null, null, '17', 'JAVA WEB-Servlet/JSP', '老师005', '13计科1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6176', '2017-06-29 00:00:00', null, '4', '14#103', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6177', '2017-06-29 00:00:00', null, '5', '14#106', '200', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6178', '2017-06-29 00:00:00', null, '6', '14#201', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6179', '2017-06-29 00:00:00', null, '7', '14#203', '80', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6180', '2017-06-29 00:00:00', null, '8', '14#206', '200', '星期四', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6181', '2017-06-30 00:00:00', null, '3', '14#101', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6182', '2017-06-30 00:00:00', null, '4', '14#103', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6183', '2017-06-30 00:00:00', null, '5', '14#106', '200', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6184', '2017-06-30 00:00:00', null, '6', '14#201', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6185', '2017-06-30 00:00:00', null, '7', '14#203', '80', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `section` VALUES ('6186', '2017-06-30 00:00:00', null, '8', '14#206', '200', '星期五', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `ps` varchar(200) DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `s_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('3', '老师001', null, '0', '18052121025', '001');
INSERT INTO `teacher` VALUES ('4', '老师002', null, '0', '18052121025', '002');
INSERT INTO `teacher` VALUES ('5', '老师003', null, '0', '18052121025', '003');
INSERT INTO `teacher` VALUES ('6', '老师004', null, '0', '18052121025', '004');
INSERT INTO `teacher` VALUES ('7', '老师005', null, '0', '18052121025', '005');
INSERT INTO `teacher` VALUES ('8', '老师006', null, '0', '18052121025', '006');
INSERT INTO `teacher` VALUES ('9', '老师007', null, '0', '18052121025', '007');
INSERT INTO `teacher` VALUES ('10', '老师008', null, '0', '18052121025', '008');
INSERT INTO `teacher` VALUES ('11', '老师009', null, '0', '18052121025', '009');
INSERT INTO `teacher` VALUES ('12', '蒋宇钦', null, '0', '18052121025', '100');
INSERT INTO `teacher` VALUES ('13', '老师010', null, '0', '18052121025', '100000');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(20) DEFAULT NULL,
  `login_pass` varchar(50) DEFAULT NULL,
  `site` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ps` varchar(255) DEFAULT NULL,
  `isdetele` int(11) DEFAULT NULL,
  `s_id` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('0', 'admin', '797f69b345f300bafd556733f3035585', '管理员', '448740780@qq.com', null, '0', '000000000', '管理员');
INSERT INTO `user` VALUES ('1', 'HEAVEN', '797f69b345f300bafd556733f3035585', '教师', '448740780@qq.com', '', '0', '138334218', '蒋宇钦');
INSERT INTO `user` VALUES ('3', 'HEAVEN123', '797f69b345f300bafd556733f3035585', '学生', '448740780@qq.com', null, '0', '1234556', '请完善个人信息');
