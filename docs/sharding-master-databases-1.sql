/*
 Navicat Premium Data Transfer

 Source Server         : www.husen.com
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : www.husen.com:3306
 Source Schema         : sharding-master-databases-1

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 08/05/2019 23:26:16
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
) ENGINE = InnoDB AUTO_INCREMENT = 333021415982759941 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_0
-- ----------------------------
INSERT INTO `t_order_0` VALUES (333021415978565632, 1, 'OK');
INSERT INTO `t_order_0` VALUES (333021415978565634, 1, 'OK');
INSERT INTO `t_order_0` VALUES (333021415978565636, 1, 'OK');
INSERT INTO `t_order_0` VALUES (333021415982759938, 1, 'OK');
INSERT INTO `t_order_0` VALUES (333021415982759940, 1, 'OK');

-- ----------------------------
-- Table structure for t_order_1
-- ----------------------------
DROP TABLE IF EXISTS `t_order_1`;
CREATE TABLE `t_order_1`  (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 333021415982759940 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_1
-- ----------------------------
INSERT INTO `t_order_1` VALUES (333020689445421057, 1, 'OK');
INSERT INTO `t_order_1` VALUES (333021164433571841, 1, 'OK');
INSERT INTO `t_order_1` VALUES (333021415974371329, 1, 'OK');
INSERT INTO `t_order_1` VALUES (333021415978565633, 1, 'OK');
INSERT INTO `t_order_1` VALUES (333021415978565635, 1, 'OK');
INSERT INTO `t_order_1` VALUES (333021415982759937, 1, 'OK');
INSERT INTO `t_order_1` VALUES (333021415982759939, 1, 'OK');

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
) ENGINE = InnoDB AUTO_INCREMENT = 333021417815670786 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_item_0
-- ----------------------------
INSERT INTO `t_order_item_0` VALUES (333021417694035970, 333021415982759938, 1, 'OK');
INSERT INTO `t_order_item_0` VALUES (333021417702424577, 333021415978565634, 1, 'OK');
INSERT INTO `t_order_item_0` VALUES (333021417702424578, 333021415978565632, 1, 'OK');
INSERT INTO `t_order_item_0` VALUES (333021417807282176, 333021415978565636, 1, 'OK');
INSERT INTO `t_order_item_0` VALUES (333021417815670785, 333021415982759940, 1, 'OK');

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
) ENGINE = InnoDB AUTO_INCREMENT = 333021417807282178 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_item_1
-- ----------------------------
INSERT INTO `t_order_item_1` VALUES (333021166505558017, 333021164433571841, 1, 'OK');
INSERT INTO `t_order_item_1` VALUES (333021417660481537, 333021415982759937, 1, 'OK');
INSERT INTO `t_order_item_1` VALUES (333021417668870144, 333021415978565635, 1, 'OK');
INSERT INTO `t_order_item_1` VALUES (333021417694035969, 333021415982759939, 1, 'OK');
INSERT INTO `t_order_item_1` VALUES (333021417698230272, 333021415978565633, 1, 'OK');
INSERT INTO `t_order_item_1` VALUES (333021417807282177, 333021415974371329, 1, 'OK');

SET FOREIGN_KEY_CHECKS = 1;
