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

 Date: 16/05/2024 17:12:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_assignment
-- ----------------------------
DROP TABLE IF EXISTS `t_assignment`;
CREATE TABLE `t_assignment`  (
  `task_assignment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户任务id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `task_id` int(11) NOT NULL COMMENT '任务id',
  `start_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '开始时间',
  `end_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '结束时间',
  `expected_completion_count` int(11) NOT NULL COMMENT '应完成的次数',
  `actual_completion_count` int(11) NULL DEFAULT NULL COMMENT '当前已完成的次数',
  `task_duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务持续时间',
  `task_goal_type` int(1) NOT NULL COMMENT '任务类型',
  `assignment_update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`task_assignment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_assignment
-- ----------------------------
INSERT INTO `t_assignment` VALUES (1, 1, 0, '2024-04-04 00:00:00', '2024-04-11 00:00:00', 5, 3, 'weekly', 0, '2024-04-09 15:01:38');
INSERT INTO `t_assignment` VALUES (2, 1, 1, '2024-04-04 00:00:00', '2024-04-11 00:00:00', 3, 2, 'weekly', 0, '2024-04-09 15:03:10');
INSERT INTO `t_assignment` VALUES (3, 1, 2, '2024-04-04 00:00:00', '2024-04-11 00:00:00', 2, 1, 'weekly', 0, '2024-04-09 15:03:11');
INSERT INTO `t_assignment` VALUES (4, 1, 0, '2024-04-17 00:00:00', '2024-04-24 00:00:00', 5, 2, 'weekly', 0, '2024-04-19 15:52:37');
INSERT INTO `t_assignment` VALUES (5, 1, 1, '2024-04-17 00:00:00', '2024-04-24 00:00:00', 3, 0, 'weekly', 0, '2024-04-17 13:29:48');
INSERT INTO `t_assignment` VALUES (6, 1, 2, '2024-04-17 00:00:00', '2024-04-24 00:00:00', 2, 0, 'weekly', 0, '2024-04-17 13:29:48');
INSERT INTO `t_assignment` VALUES (7, 1, 0, '2024-05-15 00:00:00', '2024-05-22 00:00:00', 5, 0, 'weekly', 0, '2024-05-15 16:23:47');
INSERT INTO `t_assignment` VALUES (8, 1, 1, '2024-05-15 00:00:00', '2024-05-22 00:00:00', 3, 0, 'weekly', 0, '2024-05-15 16:23:47');
INSERT INTO `t_assignment` VALUES (9, 1, 2, '2024-05-15 00:00:00', '2024-05-22 00:00:00', 2, 0, 'weekly', 0, '2024-05-15 16:23:47');

SET FOREIGN_KEY_CHECKS = 1;
