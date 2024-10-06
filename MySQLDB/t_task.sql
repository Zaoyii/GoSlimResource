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

 Date: 16/05/2024 17:13:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_task
-- ----------------------------
DROP TABLE IF EXISTS `t_task`;
CREATE TABLE `t_task`  (
  `task_id` int(11) NOT NULL,
  `task_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `task_time` int(255) NULL DEFAULT NULL COMMENT '任务单次持续时间',
  `task_times` int(11) NULL DEFAULT NULL COMMENT '任务完成次数',
  `task_goal_type` int(1) NULL DEFAULT NULL COMMENT '目标类型',
  `task_example` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '例子',
  PRIMARY KEY (`task_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_task
-- ----------------------------
INSERT INTO `t_task` VALUES (0, '有氧运动', 45, 5, 0, '跑步、椭圆机、有氧舞蹈');
INSERT INTO `t_task` VALUES (1, '全身性力量训练', 30, 3, 0, '深蹲、硬拉、俯卧撑');
INSERT INTO `t_task` VALUES (2, '核心训练', 15, 2, 0, '仰卧起坐、平板支撑');
INSERT INTO `t_task` VALUES (3, '有氧运动', 30, 3, 1, '快走、骑自行车、游泳');
INSERT INTO `t_task` VALUES (4, '力量训练', 20, 2, 1, '举重、俯卧撑、仰卧起坐');
INSERT INTO `t_task` VALUES (5, '灵活性训', 10, 1, 1, '瑜伽、普拉提');
INSERT INTO `t_task` VALUES (6, '分割式力量训练', 60, 5, 2, '胸肌、背肌、腿部、肩部和手臂的训练');
INSERT INTO `t_task` VALUES (7, '每个肌肉组至少1次激活', 30, 7, 2, NULL);
INSERT INTO `t_task` VALUES (8, '高强度间歇性训练', 20, 1, 2, '深蹲、俯卧撑、仰卧起坐、跳绳、举重');
INSERT INTO `t_task` VALUES (9, '低冲击性有氧运动', 30, 3, 3, '快走、游泳、骑自行车');
INSERT INTO `t_task` VALUES (10, '平衡训练', 20, 2, 3, '瑜伽、太极拳、平衡球训练');
INSERT INTO `t_task` VALUES (11, '灵活性训练', 15, 3, 3, '伸展运动、关节活动');

SET FOREIGN_KEY_CHECKS = 1;
