/*
 Navicat Premium Data Transfer

 Source Server         : www.husen.com
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : www.husen.com:3306
 Source Schema         : sharding-databases-tables-1

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 08/05/2019 23:25:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_order_0
-- ----------------------------
DROP TABLE IF EXISTS `t_order_0`;
CREATE TABLE `t_order_0`  (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 332995355228504067 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_0
-- ----------------------------
INSERT INTO `t_order_0` VALUES (332995355224309762, 1, 'OK');
INSERT INTO `t_order_0` VALUES (332995355224309764, 1, 'OK');
INSERT INTO `t_order_0` VALUES (332995355224309766, 1, 'OK');
INSERT INTO `t_order_0` VALUES (332995355228504064, 1, 'OK');
INSERT INTO `t_order_0` VALUES (332995355228504066, 1, 'OK');

-- ----------------------------
-- Table structure for t_order_1
-- ----------------------------
DROP TABLE IF EXISTS `t_order_1`;
CREATE TABLE `t_order_1`  (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 332995355228504066 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_1
-- ----------------------------
INSERT INTO `t_order_1` VALUES (332994436071948289, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332994673230479361, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332995355224309761, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332995355224309763, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332995355224309765, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332995355224309767, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332995355228504065, 1, 'OK');

-- ----------------------------
-- Table structure for t_order_item_0
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item_0`;
CREATE TABLE `t_order_item_0`  (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`order_item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 332930952281980929 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_order_item_1
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item_1`;
CREATE TABLE `t_order_item_1`  (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`order_item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 332994675294076930 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_item_1
-- ----------------------------
INSERT INTO `t_order_item_1` VALUES (332994675294076929, 332994673230479361, 1, 'OK');

SET FOREIGN_KEY_CHECKS = 1;
