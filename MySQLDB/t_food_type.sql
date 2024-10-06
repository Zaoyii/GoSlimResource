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

 Date: 16/05/2024 17:13:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_food_type
-- ----------------------------
DROP TABLE IF EXISTS `t_food_type`;
CREATE TABLE `t_food_type`  (
  `food_type_id` int(11) NOT NULL,
  `food_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型名称',
  `food_type_pinyin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型拼音',
  `food_type_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '食物类型照片路径',
  `food_type_create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`food_type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_food_type
-- ----------------------------
INSERT INTO `t_food_type` VALUES (0, '天然谷薯', 'tianrangushu', 'tianrangushu.png', '2024-03-07 17:44:58');
INSERT INTO `t_food_type` VALUES (1, '包装谷薯', 'baozhuanggushu', 'baozhuanggushu.png', '2024-03-07 17:46:37');
INSERT INTO `t_food_type` VALUES (2, '谷薯制品', 'gushuzhipin', 'gushuzhipin.png', '2024-03-07 17:49:22');
INSERT INTO `t_food_type` VALUES (3, '蛋类', 'danlei', 'danlei.png', '2024-03-07 17:51:04');
INSERT INTO `t_food_type` VALUES (4, '白肉', 'bairou', 'bairou.png', '2024-03-07 17:52:48');
INSERT INTO `t_food_type` VALUES (5, '红肉', 'hongrou', 'hongrou.png', '2024-03-07 17:54:29');
INSERT INTO `t_food_type` VALUES (6, '大豆及制品', 'dadoujizhipin', 'dadoujizhipin.png', '2024-03-07 17:57:19');
INSERT INTO `t_food_type` VALUES (7, '蔬菜', 'shucai', 'shucai.png', '2024-03-07 17:58:50');
INSERT INTO `t_food_type` VALUES (8, '菌藻', 'junzao', 'junzao.png', '2024-03-07 18:00:11');
INSERT INTO `t_food_type` VALUES (9, '水果', 'shuiguo', 'shuiguo.png', '2024-03-07 18:01:34');
INSERT INTO `t_food_type` VALUES (10, '鲜奶', 'xiannai', 'xiannai.png', '2024-03-07 18:02:54');
INSERT INTO `t_food_type` VALUES (11, '酸奶', 'suannai', 'suannai.png', '2024-03-07 18:04:14');
INSERT INTO `t_food_type` VALUES (12, '奶粉', 'naifen', 'naifen.png', '2024-03-07 18:05:35');
INSERT INTO `t_food_type` VALUES (13, '奶酪', 'nailao', 'nailao.png', '2024-03-07 18:06:54');
INSERT INTO `t_food_type` VALUES (14, '植物油', 'zhiwuyou', 'zhiwuyou.png', '2024-03-07 18:08:13');
INSERT INTO `t_food_type` VALUES (15, '动物油', 'dongwuyou', 'dongwuyou.png', '2024-03-07 18:09:30');
INSERT INTO `t_food_type` VALUES (16, '坚果种子', 'jianguozhongzi', 'jianguozhongzi.png', '2024-03-07 18:10:21');
INSERT INTO `t_food_type` VALUES (17, '糖和蜂蜜', 'tanghefengmi', 'tanghefengmi.png', '2024-03-07 18:11:39');
INSERT INTO `t_food_type` VALUES (18, '调味料', 'diaoweiliao', 'diaoweiliao.png', '2024-03-07 18:12:58');
INSERT INTO `t_food_type` VALUES (19, '调味酱', 'diaoweijiang', 'diaoweijiang.png', '2024-03-07 18:14:15');
INSERT INTO `t_food_type` VALUES (20, '酱菜', 'jiangcai', 'jiangcai.png', '2024-03-07 18:15:55');
INSERT INTO `t_food_type` VALUES (21, '固体饮料', 'gutiyinliao', 'gutiyinliao.png', '2024-03-07 18:17:23');
INSERT INTO `t_food_type` VALUES (22, '无糖茶饮', 'wutangchayin', 'wutangchayin.png', '2024-03-07 18:21:23');
INSERT INTO `t_food_type` VALUES (23, '酒精饮料', 'jiujingyinliao', 'jiujingyinliao.png', '2024-03-07 18:22:17');
INSERT INTO `t_food_type` VALUES (24, '纯果蔬汁饮料', 'chunguoshuzhiyinliao', 'chunguoshuzhiyinliao.png', '2024-03-07 18:23:29');
INSERT INTO `t_food_type` VALUES (25, '含糖饮料', 'hantangyinliao', 'hantangyinliao.png', '2024-03-07 18:29:13');
INSERT INTO `t_food_type` VALUES (26, '乳饮料', 'ruyinliao', 'ruyinliao.png', '2024-03-07 18:30:37');
INSERT INTO `t_food_type` VALUES (27, '碳酸饮料', 'tansuanyinliao', 'tansuanyinliao.png', '2024-03-07 18:33:06');
INSERT INTO `t_food_type` VALUES (28, '无糖咖啡', 'wutangkafei', 'wutangkafei.png', '2024-03-07 18:34:27');
INSERT INTO `t_food_type` VALUES (29, '点心', 'dianxin', 'dianxin.png', '2024-03-07 18:34:42');
INSERT INTO `t_food_type` VALUES (30, '零食', 'lingshi', 'lingshi.png', '2024-03-07 18:36:05');
INSERT INTO `t_food_type` VALUES (31, '冷饮', 'lengyin', 'lengyin.png', '2024-03-07 18:39:38');
INSERT INTO `t_food_type` VALUES (32, '药食', 'yaoshi', 'yaoshi.png', '2024-03-07 18:41:01');
INSERT INTO `t_food_type` VALUES (33, '营养保健', 'yingyangbaojian', 'yingyangbaojian.png', '2024-03-07 18:42:22');

SET FOREIGN_KEY_CHECKS = 1;
