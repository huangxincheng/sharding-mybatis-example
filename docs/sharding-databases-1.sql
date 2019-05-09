/*
 Navicat Premium Data Transfer

 Source Server         : www.husen.com
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : www.husen.com:3306
 Source Schema         : sharding-databases-1

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 08/05/2019 23:24:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

CREATE DATABASE `sharding-databases-1`;
USE `sharding-databases-1`;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 332963614732320770 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES (332942195885604865, 1, 'OK');
INSERT INTO `t_order` VALUES (332942710174384129, 1, 'OK');
INSERT INTO `t_order` VALUES (332943643528658945, 1, 'OK');
INSERT INTO `t_order` VALUES (332943643532853248, 1, 'OK');
INSERT INTO `t_order` VALUES (332943643532853249, 1, 'OK');
INSERT INTO `t_order` VALUES (332943643532853250, 1, 'OK');
INSERT INTO `t_order` VALUES (332943643532853251, 1, 'OK');
INSERT INTO `t_order` VALUES (332943643532853252, 1, 'OK');
INSERT INTO `t_order` VALUES (332943643532853253, 1, 'OK');
INSERT INTO `t_order` VALUES (332943643532853254, 1, 'OK');
INSERT INTO `t_order` VALUES (332943643532853255, 1, 'OK');
INSERT INTO `t_order` VALUES (332943643532853256, 1, 'OK');
INSERT INTO `t_order` VALUES (332963614732320769, 1, 'OK');

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
) ENGINE = InnoDB AUTO_INCREMENT = 332963622969933826 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_item
-- ----------------------------
INSERT INTO `t_order_item` VALUES (332963622969933825, 332963614732320769, 1, 'OK');

SET FOREIGN_KEY_CHECKS = 1;
