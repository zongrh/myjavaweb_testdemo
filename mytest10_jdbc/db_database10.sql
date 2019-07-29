/*
 Navicat Premium Data Transfer

 Source Server         : mydb
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : db_database10

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 29/07/2019 21:14:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_product
-- ----------------------------
DROP TABLE IF EXISTS `tb_product`;
CREATE TABLE `tb_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `unit` varchar(45) NOT NULL,
  PRIMARY KEY (`id`,`name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_product
-- ----------------------------
BEGIN;
INSERT INTO `tb_product` VALUES (1, '西红柿', 22.8, 30, '箱');
INSERT INTO `tb_product` VALUES (2, '柚子', 55.5, 100, '箱');
INSERT INTO `tb_product` VALUES (3, '梨', 15.8, 55, '箱');
INSERT INTO `tb_product` VALUES (4, '橘子', 40.5, 80, '箱');
INSERT INTO `tb_product` VALUES (5, '苹果', 60, 100, '箱');
COMMIT;

-- ----------------------------
-- Table structure for tb_student_batch
-- ----------------------------
DROP TABLE IF EXISTS `tb_student_batch`;
CREATE TABLE `tb_student_batch` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `sex` varchar(3) CHARACTER SET utf8 NOT NULL,
  `age` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_student_batch
-- ----------------------------
BEGIN;
INSERT INTO `tb_student_batch` VALUES (15, '世界因你而不同', '男', 13);
INSERT INTO `tb_student_batch` VALUES (16, '文明之光', '男', 13);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;



CREATE TABLE `tb_book` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `price` double(20) CHARACTER SET utf8 DEFAULT NULL,
  `bookCount` int(16),
  `author` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;









CREATE TABLE `mytest_user` (
  `id` varchar(32) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `age` int(20) DEFAULT NULL
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

select * from mytest_user;
