/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50735
 Source Host           : localhost:3306
 Source Schema         : go_slim

 Target Server Type    : MySQL
 Target Server Version : 50735
 File Encoding         : 65001

 Date: 16/05/2024 17:13:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_weight
-- ----------------------------
DROP TABLE IF EXISTS `t_weight`;
CREATE TABLE `t_weight`  (
  `weight_id` int(11) NOT NULL AUTO_INCREMENT,
  `weight_data` double NOT NULL COMMENT '体重',
  `weight_user_id` int(11) NOT NULL COMMENT '用户id',
  `weight_create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据创建时间',
  PRIMARY KEY (`weight_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_weight
-- ----------------------------
INSERT INTO `t_weight` VALUES (1, 88.88, 1, '2024-03-13');
INSERT INTO `t_weight` VALUES (2, 87.88, 1, '2024-03-14');
INSERT INTO `t_weight` VALUES (3, 86.88, 1, '2024-03-15');
INSERT INTO `t_weight` VALUES (4, 88.88, 1, '2024-03-16');
INSERT INTO `t_weight` VALUES (5, 88.78, 1, '2024-03-17');
INSERT INTO `t_weight` VALUES (6, 83.88, 1, '2024-03-18');
INSERT INTO `t_weight` VALUES (7, 84.88, 1, '2024-03-19');
INSERT INTO `t_weight` VALUES (8, 81.88, 1, '2024-03-20');
INSERT INTO `t_weight` VALUES (9, 85.88, 1, '2024-03-21');
INSERT INTO `t_weight` VALUES (10, 83.88, 1, '2024-03-22');
INSERT INTO `t_weight` VALUES (11, 88.58, 1, '2024-03-25');
INSERT INTO `t_weight` VALUES (16, 88.69, 1, '2024-03-26');
INSERT INTO `t_weight` VALUES (17, 89, 1, '2024-03-30');
INSERT INTO `t_weight` VALUES (18, 87, 1, '2024-04-17');

SET FOREIGN_KEY_CHECKS = 1;
