/*
 Navicat Premium Data Transfer

 Source Server         : www.husen.com
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : www.husen.com:3306
 Source Schema         : sharding-tables

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 08/05/2019 23:27:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;


CREATE DATABASE `sharding-tables`;
USE `sharding-tables`;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_order_0
-- ----------------------------
DROP TABLE IF EXISTS `t_order_0`;
CREATE TABLE `t_order_0`  (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 332930946938437643 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_0
-- ----------------------------
INSERT INTO `t_order_0` VALUES (332925588937375746, 1, 'OK');
INSERT INTO `t_order_0` VALUES (332925588937375748, 1, 'OK');
INSERT INTO `t_order_0` VALUES (332925588937375750, 1, 'OK');
INSERT INTO `t_order_0` VALUES (332925588937375752, 1, 'OK');
INSERT INTO `t_order_0` VALUES (332925588937375754, 1, 'OK');
INSERT INTO `t_order_0` VALUES (332930946938437634, 1, 'OK');
INSERT INTO `t_order_0` VALUES (332930946938437636, 1, 'OK');
INSERT INTO `t_order_0` VALUES (332930946938437638, 1, 'OK');
INSERT INTO `t_order_0` VALUES (332930946938437642, 1, 'OK');

-- ----------------------------
-- Table structure for t_order_1
-- ----------------------------
DROP TABLE IF EXISTS `t_order_1`;
CREATE TABLE `t_order_1`  (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 332930946938437642 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_1
-- ----------------------------
INSERT INTO `t_order_1` VALUES (332923693971800065, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332924268000051201, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332924375428759553, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332925308850143233, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332925308850143235, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332925308850143237, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332925308850143239, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332925308850143241, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332925588937375745, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332925588937375747, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332925588937375749, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332925588937375751, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332925588937375753, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332927852095733761, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332929914216906753, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332930946938437633, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332930946938437635, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332930946938437637, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332930946938437639, 1, 'OK');
INSERT INTO `t_order_1` VALUES (332930946938437641, 1, 'OK');

-- ----------------------------
-- Table structure for t_order_item
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item`;
CREATE TABLE `t_order_item`  (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`order_item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
-- Records of t_order_item_0
-- ----------------------------
INSERT INTO `t_order_item_0` VALUES (332930947798269953, 332930946938437642, 1, 'OK');
INSERT INTO `t_order_item_0` VALUES (332930948884594688, 332930946938437634, 1, 'OK');
INSERT INTO `t_order_item_0` VALUES (332930950977552384, 332930946938437638, 1, 'OK');
INSERT INTO `t_order_item_0` VALUES (332930951245987841, 332930946938437636, 1, 'OK');
INSERT INTO `t_order_item_0` VALUES (332930952281980928, 332930946938437640, 1, 'OK');

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
) ENGINE = InnoDB AUTO_INCREMENT = 332930952047099906 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_item_1
-- ----------------------------
INSERT INTO `t_order_item_1` VALUES (332930314001186817, 332929914216906753, 1, 'OK');
INSERT INTO `t_order_item_1` VALUES (332930949530517505, 332930946938437637, 1, 'OK');
INSERT INTO `t_order_item_1` VALUES (332930949945753600, 332930946938437641, 1, 'OK');
INSERT INTO `t_order_item_1` VALUES (332930950595870721, 332930946938437635, 1, 'OK');
INSERT INTO `t_order_item_1` VALUES (332930951686389760, 332930946938437633, 1, 'OK');
INSERT INTO `t_order_item_1` VALUES (332930952047099905, 332930946938437639, 1, 'OK');

SET FOREIGN_KEY_CHECKS = 1;
