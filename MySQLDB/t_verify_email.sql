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

 Date: 16/05/2024 17:13:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_verify_email
-- ----------------------------
DROP TABLE IF EXISTS `t_verify_email`;
CREATE TABLE `t_verify_email`  (
  `user_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_code` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '验证码',
  `verify_type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '0:注册验证,1:修改验证',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '验证更新时间',
  PRIMARY KEY (`user_email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_verify_email
-- ----------------------------
INSERT INTO `t_verify_email` VALUES ('1365084815@qq.com', '527085', '1', '2024-03-30 15:25:39');
INSERT INTO `t_verify_email` VALUES ('1365084915@qq.com', '709138', '1', '2024-04-20 20:13:41');
INSERT INTO `t_verify_email` VALUES ('320416316@qq.com', '404285', '1', '2024-03-27 15:18:52');
INSERT INTO `t_verify_email` VALUES ('zaxinu@qq.com', '806249', '1', '2024-03-30 16:09:56');

SET FOREIGN_KEY_CHECKS = 1;
