/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : sky_strategy

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 19/04/2022 00:30:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `accountID` int(11) NOT NULL,
  `accountUsername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accountPassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`accountID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for arouter
-- ----------------------------
DROP TABLE IF EXISTS `arouter`;
CREATE TABLE `arouter`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `RouterName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RouterLink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of arouter
-- ----------------------------
INSERT INTO `arouter` VALUES (1, '首页', '/');
INSERT INTO `arouter` VALUES (2, '先祖', '/sprit');
INSERT INTO `arouter` VALUES (3, '物品', '/item');
INSERT INTO `arouter` VALUES (4, '待定', '/');
INSERT INTO `arouter` VALUES (5, '待定', '/');

-- ----------------------------
-- Table structure for emote
-- ----------------------------
DROP TABLE IF EXISTS `emote`;
CREATE TABLE `emote`  (
  `emoteID` int(11) NOT NULL AUTO_INCREMENT,
  `emoteName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emoteImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `spritID` int(11) NOT NULL,
  PRIMARY KEY (`emoteID`) USING BTREE,
  INDEX `spritID`(`spritID`) USING BTREE,
  CONSTRAINT `emote_ibfk_1` FOREIGN KEY (`spritID`) REFERENCES `sprit` (`spritID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emote
-- ----------------------------

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `itemID` int(11) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `itemLink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `spritID` int(11) NOT NULL,
  `itemTypeID` int(11) NOT NULL,
  PRIMARY KEY (`itemID`) USING BTREE,
  INDEX `spritID`(`spritID`) USING BTREE,
  INDEX `itemTypeID`(`itemTypeID`) USING BTREE,
  CONSTRAINT `item_ibfk_1` FOREIGN KEY (`spritID`) REFERENCES `sprit` (`spritID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `item_ibfk_2` FOREIGN KEY (`itemTypeID`) REFERENCES `itemtype` (`itemTypeID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (1, '萌新头', 'mengxintou.png', 1, 9);
INSERT INTO `item` VALUES (2, '马尾', 'mawei.png', 3, 9);
INSERT INTO `item` VALUES (3, '寸头', 'cuntou.png', 1, 9);
INSERT INTO `item` VALUES (4, '杀马特', 'shamate.png', 2, 9);
INSERT INTO `item` VALUES (5, '点秋香', 'dianqiuxiang.png', 5, 9);
INSERT INTO `item` VALUES (6, '双孖辫', 'shuangmabian.png', 9, 9);
INSERT INTO `item` VALUES (7, '假龙骨', 'jialonggu.png', 4, 9);
INSERT INTO `item` VALUES (8, '胡子', 'huzi.png', 34, 9);
INSERT INTO `item` VALUES (9, '学生头', 'xueshengtou.png', 15, 9);
INSERT INTO `item` VALUES (10, '羽毛球', 'yumaoqiu.png', 25, 9);
INSERT INTO `item` VALUES (11, 'nothing-1', 'nothing-1.png', 18, 9);
INSERT INTO `item` VALUES (12, '狮子头', 'shizitou.png', 21, 9);
INSERT INTO `item` VALUES (13, '丸子头', 'wanzitou.png', 7, 9);
INSERT INTO `item` VALUES (14, '大蒜头', 'dasuantou.png', 8, 9);
INSERT INTO `item` VALUES (15, '小啾啾', 'xiaojiujiu.png', 17, 9);
INSERT INTO `item` VALUES (16, '长发', 'changfa.png', 14, 9);
INSERT INTO `item` VALUES (17, '双马尾', 'shuangmawei.png', 12, 9);
INSERT INTO `item` VALUES (18, '香蕉皮', 'xiangjiaopi.png', 16, 9);
INSERT INTO `item` VALUES (19, '猫猫头', 'maomaotou.png', 13, 9);
INSERT INTO `item` VALUES (20, '蘑菇头', 'mogutou.png', 20, 9);
INSERT INTO `item` VALUES (21, '棉花糖', 'mianhuatang.png', 23, 9);
INSERT INTO `item` VALUES (22, '大丸子', 'dawanzi.png', 29, 9);
INSERT INTO `item` VALUES (23, '莫西干', 'moxigan.png', 28, 9);
INSERT INTO `item` VALUES (24, 'nothing-2', 'nothing-2.png', 27, 9);
INSERT INTO `item` VALUES (25, 'nothing-3', 'nothing-3.png', 30, 9);
INSERT INTO `item` VALUES (26, 'nothing-5', 'nothing-5.png', 37, 9);
INSERT INTO `item` VALUES (27, '脏辫', 'zangbian.png', 31, 9);
INSERT INTO `item` VALUES (28, '长发', 'changfa2.png', 33, 9);
INSERT INTO `item` VALUES (29, '光头', 'guangtou.png', 36, 9);
INSERT INTO `item` VALUES (30, '面具-1', 'mianju-1.png', 1, 3);
INSERT INTO `item` VALUES (31, '面具-2', 'mianju-2.png', 2, 3);
INSERT INTO `item` VALUES (32, '面具-3', 'mianju-3.png', 10, 3);
INSERT INTO `item` VALUES (33, '面具-4', 'mianju-4.png', 5, 3);
INSERT INTO `item` VALUES (34, '面具-5', 'mianju-5.png', 17, 3);
INSERT INTO `item` VALUES (35, '矮人', 'mianju-6.png', 15, 3);
INSERT INTO `item` VALUES (36, '面具-7', 'mianju-7.png', 25, 3);
INSERT INTO `item` VALUES (37, '面具-8', 'mianju-8.png', 21, 3);
INSERT INTO `item` VALUES (38, '黑脸', 'mianju-9.png', 26, 3);
INSERT INTO `item` VALUES (39, '面具-10', 'mianju-10.png', 32, 3);
INSERT INTO `item` VALUES (40, '面具-11', 'mianju-11.png', 27, 3);
INSERT INTO `item` VALUES (41, '面具-12', 'mianju-12.png', 33, 3);
INSERT INTO `item` VALUES (42, '手琴', 'yueqi-1.png', 7, 7);
INSERT INTO `item` VALUES (43, '小手鼓', 'yueqi-2.png', 12, 7);
INSERT INTO `item` VALUES (44, '钢琴', 'yueqi-3.png', 23, 7);
INSERT INTO `item` VALUES (45, '屁笛', 'yueqi-4.png', 29, 7);
INSERT INTO `item` VALUES (46, '喇叭', 'yueqi-5.png', 32, 7);
INSERT INTO `item` VALUES (47, '凳子', 'beishi-1.png', 34, 10);
INSERT INTO `item` VALUES (48, '烟花棒', 'beishi-2.png', 30, 10);
INSERT INTO `item` VALUES (49, '衣服-1', 'yifu-1.png', 1, 1);
INSERT INTO `item` VALUES (50, '衣服-2', 'yifu-2.png', 1, 1);
INSERT INTO `item` VALUES (51, '衣服-3', 'yifu-3.png', 3, 1);
INSERT INTO `item` VALUES (52, '衣服-4', 'yifu-4.png', 6, 1);
INSERT INTO `item` VALUES (53, '衣服-5', 'yifu-5.png', 16, 1);
INSERT INTO `item` VALUES (54, '衣服-6', 'yifu-6.png', 20, 1);
INSERT INTO `item` VALUES (55, '衣服-7', 'yifu-7.png', 36, 1);
INSERT INTO `item` VALUES (56, '衣服-8', 'yifu-8.png', 35, 1);
INSERT INTO `item` VALUES (57, '萌新斗', 'doupeng-1.png', 1, 2);
INSERT INTO `item` VALUES (58, '黄斗', 'doupeng-2.png', 6, 2);
INSERT INTO `item` VALUES (59, '浅蓝斗', 'doupeng-3.png', 18, 2);
INSERT INTO `item` VALUES (60, '紫斗', 'doupeng-4.png', 13, 2);
INSERT INTO `item` VALUES (61, '红斗', 'doupeng-5.png', 26, 2);
INSERT INTO `item` VALUES (62, '粉斗', 'doupeng-6.png', 24, 2);
INSERT INTO `item` VALUES (63, '蓝绿斗', 'doupeng-7.png', 28, 2);
INSERT INTO `item` VALUES (64, '黑斗', 'doupeng-8.png', 31, 2);
INSERT INTO `item` VALUES (65, '深蓝斗', 'doupeng-9.png', 37, 2);
INSERT INTO `item` VALUES (66, '白斗', 'doupeng-10.png', 35, 2);
INSERT INTO `item` VALUES (67, '刁蛮浪者-3', '刁蛮浪者-3.png', 41, 3);
INSERT INTO `item` VALUES (68, '刁蛮浪者-1', '刁蛮浪者-1.png', 41, 11);
INSERT INTO `item` VALUES (69, '刁蛮浪者-2', '刁蛮浪者-2.png', 41, 9);
INSERT INTO `item` VALUES (70, '敬礼护卫-1', '敬礼护卫-1.png', 42, 11);
INSERT INTO `item` VALUES (71, '敬礼护卫-2', '敬礼护卫-2.png', 42, 6);
INSERT INTO `item` VALUES (72, '敬礼护卫-3', '敬礼护卫-3.png', 42, 2);
INSERT INTO `item` VALUES (73, '敬礼护卫-4', '敬礼护卫-4.png', 42, 3);
INSERT INTO `item` VALUES (74, '拳礼武僧-1', '拳礼武僧-1.png', 43, 11);
INSERT INTO `item` VALUES (75, '拳礼武僧-2', '拳礼武僧-2.png', 43, 7);
INSERT INTO `item` VALUES (76, '拳礼武僧-3', '拳礼武僧-3.png', 43, 3);
INSERT INTO `item` VALUES (77, '舒展大师-3', '舒展大师-3.png', 44, 2);
INSERT INTO `item` VALUES (78, '舒展大师-1', '舒展大师-1.png', 44, 11);
INSERT INTO `item` VALUES (79, '舒展大师-2', '舒展大师-2.png', 44, 9);
INSERT INTO `item` VALUES (80, '挑衅艺伎-1', '挑衅艺伎-1.png', 38, 11);
INSERT INTO `item` VALUES (81, '挑衅艺伎-2', '挑衅艺伎-2.png', 38, 6);
INSERT INTO `item` VALUES (82, '挑衅艺伎-3', '挑衅艺伎-3.png', 38, 3);
INSERT INTO `item` VALUES (83, '挑衅艺伎-4', '挑衅艺伎-4.png', 38, 9);
INSERT INTO `item` VALUES (84, '跳跃舞者-3', '跳跃舞者-3.png', 39, 3);
INSERT INTO `item` VALUES (85, '跳跃舞者-1', '跳跃舞者-1.png', 39, 11);
INSERT INTO `item` VALUES (86, '跳跃舞者-2', '跳跃舞者-2.png', 39, 7);
INSERT INTO `item` VALUES (87, '感恩季向导-1', '感恩季向导-1.png', 40, 3);
INSERT INTO `item` VALUES (88, '追光季向导-1', '追光季向导-1.png', 51, 10);
INSERT INTO `item` VALUES (89, '蟹语者-1', '蟹语者-1.png', 45, 11);
INSERT INTO `item` VALUES (90, '蟹语者-2', '蟹语者-2.png', 45, 10);
INSERT INTO `item` VALUES (91, '蟹语者-3', '蟹语者-3.png', 45, 3);
INSERT INTO `item` VALUES (92, '蟹语者-4', '蟹语者-4.png', 45, 6);
INSERT INTO `item` VALUES (93, '蟹语者-5', '蟹语者-5.png', 45, 9);
INSERT INTO `item` VALUES (94, '蟹语者-6', '蟹语者-6.png', 45, 2);
INSERT INTO `item` VALUES (95, '击掌光农-1', '击掌光农-1.png', 46, 11);
INSERT INTO `item` VALUES (96, '击掌光农-2', '击掌光农-2.png', 46, 3);
INSERT INTO `item` VALUES (97, '击掌光农-3', '击掌光农-3.png', 46, 9);
INSERT INTO `item` VALUES (98, '击掌光农-4', '击掌光农-4.png', 46, 7);
INSERT INTO `item` VALUES (99, '肩背追光-1', '肩背追光-1.png', 47, 11);
INSERT INTO `item` VALUES (100, '肩背追光-2', '肩背追光-2.png', 47, 3);
INSERT INTO `item` VALUES (101, '肩背追光-3', '肩背追光-3.png', 47, 9);
INSERT INTO `item` VALUES (102, '肩背追光-4', '肩背追光-4.png', 47, 2);
INSERT INTO `item` VALUES (103, '静光学者-1', '静光学者-1.png', 48, 11);
INSERT INTO `item` VALUES (104, '静光学者-2', '静光学者-2.png', 48, 3);
INSERT INTO `item` VALUES (105, '静光学者-3', '静光学者-3.png', 48, 2);
INSERT INTO `item` VALUES (106, '螺旋舞冠-1', '螺旋舞冠-1.png', 49, 11);
INSERT INTO `item` VALUES (107, '螺旋舞冠-2', '螺旋舞冠-2.png', 49, 3);
INSERT INTO `item` VALUES (108, '螺旋舞冠-3', '螺旋舞冠-3.png', 49, 7);
INSERT INTO `item` VALUES (109, '螺旋舞冠-4', '螺旋舞冠-4.png', 49, 9);
INSERT INTO `item` VALUES (110, '随性拓荒者-1', '随性拓荒者-1.png', 50, 11);
INSERT INTO `item` VALUES (111, '随性拓荒者-2', '随性拓荒者-2.png', 50, 3);
INSERT INTO `item` VALUES (112, '随性拓荒者-3', '随性拓荒者-3.png', 50, 6);
INSERT INTO `item` VALUES (113, '随性拓荒者-4', '随性拓荒者-4.png', 50, 10);
INSERT INTO `item` VALUES (114, '随性拓荒者-5', '随性拓荒者-5.png', 50, 9);
INSERT INTO `item` VALUES (115, '智慧长者-5', '智慧长者-5.png', 56, 10);
INSERT INTO `item` VALUES (116, '不舍家长-1', '不舍家长-1.png', 57, 11);
INSERT INTO `item` VALUES (117, '不舍家长-2', '不舍家长-2.png', 57, 3);
INSERT INTO `item` VALUES (118, '不舍家长-3', '不舍家长-3.png', 57, 2);
INSERT INTO `item` VALUES (119, '不舍家长-4', '不舍家长-4.png', 57, 7);
INSERT INTO `item` VALUES (120, '彩纸表亲-1', '彩纸表亲-1.png', 58, 11);
INSERT INTO `item` VALUES (121, '彩纸表亲-2', '彩纸表亲-2.png', 58, 9);
INSERT INTO `item` VALUES (122, '彩纸表亲-3', '彩纸表亲-3.png', 58, 2);
INSERT INTO `item` VALUES (123, '归属季向导-1', '归属季向导-1.png', 52, 10);
INSERT INTO `item` VALUES (124, '火花家长-1', '火花家长-1.png', 53, 11);
INSERT INTO `item` VALUES (125, '火花家长-2', '火花家长-2.png', 53, 3);
INSERT INTO `item` VALUES (126, '火花家长-3', '火花家长-3.png', 53, 9);
INSERT INTO `item` VALUES (127, '火花家长-4', '火花家长-4.png', 53, 10);
INSERT INTO `item` VALUES (128, '蓬头青年-1', '蓬头青年-1.png', 54, 11);
INSERT INTO `item` VALUES (129, '蓬头青年-2', '蓬头青年-2.png', 54, 6);
INSERT INTO `item` VALUES (130, '蓬头青年-3', '蓬头青年-3.png', 54, 5);
INSERT INTO `item` VALUES (131, '蓬头青年-4', '蓬头青年-4.png', 54, 7);
INSERT INTO `item` VALUES (132, '踏舞孩童-1', '踏舞孩童-1.png', 55, 11);
INSERT INTO `item` VALUES (133, '踏舞孩童-2', '踏舞孩童-2.png', 55, 3);
INSERT INTO `item` VALUES (134, '踏舞孩童-3', '踏舞孩童-3.png', 55, 1);
INSERT INTO `item` VALUES (135, '智慧长者-1', '智慧长者-1.png', 56, 11);
INSERT INTO `item` VALUES (136, '智慧长者-2', '智慧长者-2.png', 56, 6);
INSERT INTO `item` VALUES (137, '智慧长者-3', '智慧长者-3.png', 56, 2);
INSERT INTO `item` VALUES (138, '智慧长者-4', '智慧长者-4.png', 56, 3);
INSERT INTO `item` VALUES (139, '旋转舞者-1', '旋转舞者-1.png', 60, 11);
INSERT INTO `item` VALUES (140, '旋转舞者-2', '旋转舞者-2.png', 60, 6);
INSERT INTO `item` VALUES (141, '旋转舞者-3', '旋转舞者-3.png', 60, 9);
INSERT INTO `item` VALUES (142, '旋转舞者-4', '旋转舞者-4.png', 60, 1);
INSERT INTO `item` VALUES (143, '旋转舞者-5', '旋转舞者-5.png', 60, 10);
INSERT INTO `item` VALUES (144, '迎宾侍者-1', '迎宾侍者-1.png', 61, 11);
INSERT INTO `item` VALUES (145, '迎宾侍者-2', '迎宾侍者-2.png', 61, 6);
INSERT INTO `item` VALUES (146, '迎宾侍者-3', '迎宾侍者-3.png', 61, 1);
INSERT INTO `item` VALUES (147, '迎宾侍者-4', '迎宾侍者-4.png', 61, 3);
INSERT INTO `item` VALUES (148, '致敬钢琴家-1', '致敬钢琴家-1.png', 62, 11);
INSERT INTO `item` VALUES (149, '致敬钢琴家-2', '致敬钢琴家-2.png', 62, 9);
INSERT INTO `item` VALUES (150, '致敬钢琴家-3', '致敬钢琴家-3.png', 62, 7);
INSERT INTO `item` VALUES (151, '致敬钢琴家-4', '致敬钢琴家-4.png', 62, 3);
INSERT INTO `item` VALUES (152, '沉思编导-1', '沉思编导-1.png', 63, 11);
INSERT INTO `item` VALUES (153, '沉思编导-2', '沉思编导-2.png', 63, 3);
INSERT INTO `item` VALUES (154, '沉思编导-3', '沉思编导-3.png', 63, 7);
INSERT INTO `item` VALUES (155, '沉思编导-4', '沉思编导-4.png', 63, 2);
INSERT INTO `item` VALUES (156, '抛球杂耍-1', '抛球杂耍-1.png', 64, 11);
INSERT INTO `item` VALUES (157, '抛球杂耍-2', '抛球杂耍-2.png', 64, 10);
INSERT INTO `item` VALUES (158, '抛球杂耍-3', '抛球杂耍-3.png', 64, 9);
INSERT INTO `item` VALUES (159, '抛球杂耍-4', '抛球杂耍-4.png', 64, 1);
INSERT INTO `item` VALUES (160, '抛球杂耍-5', '抛球杂耍-5.png', 64, 2);
INSERT INTO `item` VALUES (161, '献情演员-1', '献情演员-1.png', 65, 11);
INSERT INTO `item` VALUES (162, '献情演员-2', '献情演员-2.png', 65, 6);
INSERT INTO `item` VALUES (163, '献情演员-3', '献情演员-3.png', 65, 1);
INSERT INTO `item` VALUES (164, '献情演员-4', '献情演员-4.png', 65, 3);
INSERT INTO `item` VALUES (165, '向导-1', '向导-1.png', 59, 3);
INSERT INTO `item` VALUES (166, '向导-2', '向导-2.png', 59, 9);
INSERT INTO `item` VALUES (167, '编钟修补匠-5', '编钟修补匠-5.png', 113, 9);
INSERT INTO `item` VALUES (168, '表演季向导-3', '表演季向导-3.png', 114, 9);
INSERT INTO `item` VALUES (169, '打喷嚏的地理学家-2', '打喷嚏的地理学家-2.png', 115, 9);
INSERT INTO `item` VALUES (170, '胆小鬼学员-4', '胆小鬼学员-4.png', 116, 9);
INSERT INTO `item` VALUES (171, '稻草人农夫-3', '稻草人农夫-3.png', 117, 9);
INSERT INTO `item` VALUES (172, '发号施令的统治者-2', '发号施令的统治者-2.png', 118, 9);
INSERT INTO `item` VALUES (173, '放松日浴者-5', '放松日浴者-5.png', 66, 9);
INSERT INTO `item` VALUES (174, '风先知-4', '风先知-4.png', 68, 9);
INSERT INTO `item` VALUES (175, '疯狂的舞台手-1', '疯狂的舞台手-1.png', 69, 9);
INSERT INTO `item` VALUES (176, '固执登山者-4', '固执登山者-4.png', 70, 9);
INSERT INTO `item` VALUES (177, '管事小队长-3', '管事小队长-3.png', 71, 9);
INSERT INTO `item` VALUES (178, '光之私语者-3', '光之私语者-3.png', 72, 9);
INSERT INTO `item` VALUES (179, '回旋大师-1', '回旋大师-1.png', 73, 9);
INSERT INTO `item` VALUES (180, '活泼导航员-2', '活泼导航员-2.png', 74, 9);
INSERT INTO `item` VALUES (181, '火先知-2', '火先知-2.png', 75, 9);
INSERT INTO `item` VALUES (182, '集结季向导-2', '集结季向导-2.png', 76, 9);
INSERT INTO `item` VALUES (183, '健忘的讲故事者-3', '健忘的讲故事者-3.png', 77, 9);
INSERT INTO `item` VALUES (184, '焦虑渔夫-3', '焦虑渔夫-3.png', 78, 9);
INSERT INTO `item` VALUES (185, '瞌睡木匠-2', '瞌睡木匠-2.png', 79, 9);
INSERT INTO `item` VALUES (186, '冷漠术士-3', '冷漠术士-3.png', 80, 9);
INSERT INTO `item` VALUES (187, '忙碌的点灯人-2', '忙碌的点灯人-2.png', 81, 9);
INSERT INTO `item` VALUES (188, '茫然植物学生-2', '茫然植物学生-2.png', 82, 9);
INSERT INTO `item` VALUES (189, '鸣谢收藏家-4', '鸣谢收藏家-4.png', 84, 9);
INSERT INTO `item` VALUES (190, '魔法季向导-2', '魔法季向导-2.png', 85, 9);
INSERT INTO `item` VALUES (191, '默许壁画家-3', '默许壁画家-3.png', 86, 9);
INSERT INTO `item` VALUES (192, '母语者-5', '母语者-5.png', 87, 9);
INSERT INTO `item` VALUES (193, '内秀书虫-4', '内秀书虫-4.png', 88, 9);
INSERT INTO `item` VALUES (194, '谦逊的舞者-5', '谦逊的舞者-5.png', 89, 9);
INSERT INTO `item` VALUES (195, '情绪草药师-4', '情绪草药师-4.png', 90, 9);
INSERT INTO `item` VALUES (196, '热血运动员-3', '热血运动员-3.png', 91, 9);
INSERT INTO `item` VALUES (197, '水先知-2', '水先知-2.png', 95, 9);
INSERT INTO `item` VALUES (198, '天才建筑师-5', '天才建筑师-5.png', 96, 9);
INSERT INTO `item` VALUES (199, '跳舞艺人-1', '跳舞艺人-1.png', 97, 9);
INSERT INTO `item` VALUES (200, '土先知-3', '土先知-3.png', 99, 9);
INSERT INTO `item` VALUES (201, '颓丧的士兵-2', '颓丧的士兵-2.png', 100, 9);
INSERT INTO `item` VALUES (202, '威严舰长-2', '威严舰长-2.png', 101, 9);
INSERT INTO `item` VALUES (203, '嬉戏炮手-5', '嬉戏炮手-5.png', 102, 9);
INSERT INTO `item` VALUES (204, '小王子季向导-3', '小王子季向导-3.png', 103, 9);
INSERT INTO `item` VALUES (205, '蟹舞者-2', '蟹舞者-2.png', 104, 9);
INSERT INTO `item` VALUES (206, '熊抱雪人-2', '熊抱雪人-2.png', 106, 9);
INSERT INTO `item` VALUES (207, '圆润的音乐家-5', '圆润的音乐家-5.png', 108, 9);
INSERT INTO `item` VALUES (208, '沾沾自喜的自恋狂-4', '沾沾自喜的自恋狂-4.png', 109, 9);
INSERT INTO `item` VALUES (209, '正步冒险家-2', '正步冒险家-2.png', 110, 9);
INSERT INTO `item` VALUES (210, '白日梦森林人-4', '白日梦森林人-4.png', 111, 9);
INSERT INTO `item` VALUES (211, '笨拙水手-5', '笨拙水手-5.png', 112, 9);
INSERT INTO `item` VALUES (212, '偷窥邮差-2', '偷窥邮差-2.png', 98, 2);
INSERT INTO `item` VALUES (213, '土先知-5', '土先知-5.png', 99, 2);
INSERT INTO `item` VALUES (214, '颓丧的士兵-4', '颓丧的士兵-4.png', 100, 2);
INSERT INTO `item` VALUES (215, '威严舰长-4', '威严舰长-4.png', 101, 2);
INSERT INTO `item` VALUES (216, '嬉戏炮手-4', '嬉戏炮手-4.png', 102, 2);
INSERT INTO `item` VALUES (217, '蟹舞者-3', '蟹舞者-3.png', 104, 2);
INSERT INTO `item` VALUES (218, '星星收集者-3', '星星收集者-3.png', 105, 2);
INSERT INTO `item` VALUES (219, '圆润的音乐家-3', '圆润的音乐家-3.png', 108, 2);
INSERT INTO `item` VALUES (220, '笨拙水手-4', '笨拙水手-4.png', 112, 2);
INSERT INTO `item` VALUES (221, '表演季向导-2', '表演季向导-2.png', 114, 2);
INSERT INTO `item` VALUES (222, '打喷嚏的地理学家-3', '打喷嚏的地理学家-3.png', 115, 2);
INSERT INTO `item` VALUES (223, '放松日浴者-3', '放松日浴者-3.png', 66, 2);
INSERT INTO `item` VALUES (224, '风先知-2', '风先知-2.png', 68, 2);
INSERT INTO `item` VALUES (225, '管事小队长-4', '管事小队长-4.png', 71, 2);
INSERT INTO `item` VALUES (226, '光之私语者-4', '光之私语者-4.png', 72, 2);
INSERT INTO `item` VALUES (227, '回旋大师-3', '回旋大师-3.png', 73, 2);
INSERT INTO `item` VALUES (228, '活泼导航员-4', '活泼导航员-4.png', 74, 2);
INSERT INTO `item` VALUES (229, '集结季向导-4', '集结季向导-4.png', 76, 2);
INSERT INTO `item` VALUES (230, '健忘的讲故事者-5', '健忘的讲故事者-5.png', 77, 2);
INSERT INTO `item` VALUES (231, '焦虑渔夫-5', '焦虑渔夫-5.png', 78, 2);
INSERT INTO `item` VALUES (232, '瞌睡木匠-3', '瞌睡木匠-3.png', 79, 2);
INSERT INTO `item` VALUES (233, '冷漠术士-4', '冷漠术士-4.png', 80, 2);
INSERT INTO `item` VALUES (234, '忙碌的点灯人-3', '忙碌的点灯人-3.png', 81, 2);
INSERT INTO `item` VALUES (235, '梦想季向导-2', '梦想季向导-2.png', 83, 2);
INSERT INTO `item` VALUES (236, '鸣谢收藏家-3', '鸣谢收藏家-3.png', 84, 2);
INSERT INTO `item` VALUES (237, '内秀书虫-3', '内秀书虫-3.png', 88, 2);
INSERT INTO `item` VALUES (238, '情绪草药师-5', '情绪草药师-5.png', 90, 2);
INSERT INTO `item` VALUES (239, '深渊季向导-2', '深渊季向导-2.png', 93, 2);
INSERT INTO `item` VALUES (240, '圣岛季向导-2', '圣岛季向导-2.png', 94, 2);
INSERT INTO `item` VALUES (241, '水先知-4', '水先知-4.png', 95, 2);
INSERT INTO `item` VALUES (242, '跳舞艺人-3', '跳舞艺人-3.png', 97, 2);
INSERT INTO `item` VALUES (243, '天才建筑师-4', '天才建筑师-4.png', 96, 1);
INSERT INTO `item` VALUES (244, '偷窥邮差-1', '偷窥邮差-1.png', 98, 1);
INSERT INTO `item` VALUES (245, '小王子季向导-2', '小王子季向导-2.png', 103, 1);
INSERT INTO `item` VALUES (246, '熊抱雪人-3', '熊抱雪人-3.png', 106, 1);
INSERT INTO `item` VALUES (247, '沾沾自喜的自恋狂-3', '沾沾自喜的自恋狂-3.png', 109, 1);
INSERT INTO `item` VALUES (248, '编钟修补匠-2', '编钟修补匠-2.png', 113, 1);
INSERT INTO `item` VALUES (249, '飞翔季向导-2', '飞翔季向导-2.png', 67, 1);
INSERT INTO `item` VALUES (250, '疯狂的舞台手-3', '疯狂的舞台手-3.png', 69, 1);
INSERT INTO `item` VALUES (251, '光之私语者-5', '光之私语者-5.png', 72, 1);
INSERT INTO `item` VALUES (252, '火先知-4', '火先知-4.png', 75, 1);
INSERT INTO `item` VALUES (253, '健忘的讲故事者-4', '健忘的讲故事者-4.png', 77, 1);
INSERT INTO `item` VALUES (254, '焦虑渔夫-4', '焦虑渔夫-4.png', 78, 1);
INSERT INTO `item` VALUES (255, '母语者-4', '母语者-4.png', 87, 1);
INSERT INTO `item` VALUES (256, '谦逊的舞者-4', '谦逊的舞者-4.png', 89, 1);
INSERT INTO `item` VALUES (257, '热血运动员-2', '热血运动员-2.png', 91, 1);
INSERT INTO `item` VALUES (258, '傻笑童子军-3', '傻笑童子军-3.png', 92, 1);
INSERT INTO `item` VALUES (259, '星星收集者-2', '星星收集者-2.png', 105, 4);
INSERT INTO `item` VALUES (260, '固执登山者-2', '固执登山者-2.png', 70, 4);
INSERT INTO `item` VALUES (261, '天才建筑师-3', '天才建筑师-3.png', 96, 4);
INSERT INTO `item` VALUES (262, '嬉戏炮手-2', '嬉戏炮手-2.png', 102, 6);
INSERT INTO `item` VALUES (263, '熊抱雪人-4', '熊抱雪人-4.png', 106, 6);
INSERT INTO `item` VALUES (264, '沾沾自喜的自恋狂-2', '沾沾自喜的自恋狂-2.png', 109, 6);
INSERT INTO `item` VALUES (265, '白日梦森林人-2', '白日梦森林人-2.png', 111, 6);
INSERT INTO `item` VALUES (266, '笨拙水手-3', '笨拙水手-3.png', 112, 6);
INSERT INTO `item` VALUES (267, '胆小鬼学员-3', '胆小鬼学员-3.png', 116, 6);
INSERT INTO `item` VALUES (268, '疯狂的舞台手-5', '疯狂的舞台手-5.png', 69, 6);
INSERT INTO `item` VALUES (269, '活泼导航员-5', '活泼导航员-5.png', 74, 6);
INSERT INTO `item` VALUES (270, '火先知-3', '火先知-3.png', 75, 6);
INSERT INTO `item` VALUES (271, '母语者-2', '母语者-2.png', 87, 6);
INSERT INTO `item` VALUES (272, '内秀书虫-2', '内秀书虫-2.png', 88, 6);
INSERT INTO `item` VALUES (273, '谦逊的舞者-2', '谦逊的舞者-2.png', 89, 6);
INSERT INTO `item` VALUES (274, '情绪草药师-3', '情绪草药师-3.png', 90, 6);
INSERT INTO `item` VALUES (275, '天才建筑师-2', '天才建筑师-2.png', 96, 6);
INSERT INTO `item` VALUES (276, '偷窥邮差-4', '偷窥邮差-4.png', 98, 6);
INSERT INTO `item` VALUES (277, '土先知-4', '土先知-4.png', 99, 6);
INSERT INTO `item` VALUES (278, '颓丧的士兵-3', '颓丧的士兵-3.png', 100, 6);
INSERT INTO `item` VALUES (279, '圆润的音乐家-4', '圆润的音乐家-4.png', 108, 7);
INSERT INTO `item` VALUES (280, '编钟修补匠-4', '编钟修补匠-4.png', 113, 7);
INSERT INTO `item` VALUES (281, '集结季向导-3', '集结季向导-3.png', 76, 7);
INSERT INTO `item` VALUES (282, '圣岛季向导-1', '圣岛季向导-1.png', 94, 7);
INSERT INTO `item` VALUES (283, '跳舞艺人-4', '跳舞艺人-4.png', 97, 7);
INSERT INTO `item` VALUES (284, '预言季向导-2', '预言季向导-2.png', 107, 7);
INSERT INTO `item` VALUES (285, '圆润的音乐家-4', '圆润的音乐家-4.png', 108, 7);
INSERT INTO `item` VALUES (286, '编钟修补匠-4', '编钟修补匠-4.png', 113, 7);
INSERT INTO `item` VALUES (287, '集结季向导-3', '集结季向导-3.png', 76, 7);
INSERT INTO `item` VALUES (288, '圣岛季向导-1', '圣岛季向导-1.png', 94, 7);
INSERT INTO `item` VALUES (289, '跳舞艺人-4', '跳舞艺人-4.png', 97, 7);
INSERT INTO `item` VALUES (290, '预言季向导-2', '预言季向导-2.png', 107, 7);
INSERT INTO `item` VALUES (291, '魔法季向导-1', '魔法季向导-1.png', 85, 5);
INSERT INTO `item` VALUES (292, '深渊季向导-3', '深渊季向导-3.png', 93, 5);
INSERT INTO `item` VALUES (293, '熊抱雪人-1', '熊抱雪人-1.png', 106, 5);
INSERT INTO `item` VALUES (294, '编钟修补匠-3', '编钟修补匠-3.png', 113, 5);
INSERT INTO `item` VALUES (295, '飞翔季向导-1', '飞翔季向导-1.png', 67, 5);
INSERT INTO `item` VALUES (296, '光之私语者-2', '光之私语者-2.png', 72, 5);
INSERT INTO `item` VALUES (297, '活泼导航员-3', '活泼导航员-3.png', 74, 5);
INSERT INTO `item` VALUES (298, '正步冒险家-3', '正步冒险家-3.png', 110, 10);
INSERT INTO `item` VALUES (299, '胆小鬼学员-5', '胆小鬼学员-5.png', 116, 10);
INSERT INTO `item` VALUES (300, '放松日浴者-2', '放松日浴者-2.png', 66, 10);
INSERT INTO `item` VALUES (301, '固执登山者-5', '固执登山者-5.png', 70, 10);
INSERT INTO `item` VALUES (302, '火先知-6', '火先知-6.png', 75, 10);
INSERT INTO `item` VALUES (303, '茫然植物学生-5', '茫然植物学生-5.png', 82, 10);
INSERT INTO `item` VALUES (304, '鸣谢收藏家-2', '鸣谢收藏家-2.png', 84, 10);
INSERT INTO `item` VALUES (305, '母语者-3', '母语者-3.png', 87, 10);
INSERT INTO `item` VALUES (306, '情绪草药师-6', '情绪草药师-6.png', 90, 10);
INSERT INTO `item` VALUES (307, '傻笑童子军-4', '傻笑童子军-4.png', 92, 10);
INSERT INTO `item` VALUES (308, '土先知-2', '土先知-2.png', 99, 10);
INSERT INTO `item` VALUES (309, '小王子季向导-1', '小王子季向导-1.png', 103, 10);
INSERT INTO `item` VALUES (310, '星星收集者-4', '星星收集者-4.png', 105, 10);
INSERT INTO `item` VALUES (311, '深渊季向导-1', '深渊季向导-1.png', 93, 3);
INSERT INTO `item` VALUES (312, '水先知-3', '水先知-3.png', 95, 3);
INSERT INTO `item` VALUES (313, '跳舞艺人-2', '跳舞艺人-2.png', 97, 3);
INSERT INTO `item` VALUES (314, '偷窥邮差-3', '偷窥邮差-3.png', 98, 3);
INSERT INTO `item` VALUES (315, '土先知-6', '土先知-6.png', 99, 3);
INSERT INTO `item` VALUES (316, '威严舰长-3', '威严舰长-3.png', 101, 3);
INSERT INTO `item` VALUES (317, '嬉戏炮手-3', '嬉戏炮手-3.png', 102, 3);
INSERT INTO `item` VALUES (318, '预言季向导-1', '预言季向导-1.png', 107, 3);
INSERT INTO `item` VALUES (319, '圆润的音乐家-2', '圆润的音乐家-2.png', 108, 3);
INSERT INTO `item` VALUES (320, '白日梦森林人-3', '白日梦森林人-3.png', 111, 3);
INSERT INTO `item` VALUES (321, '笨拙水手-2', '笨拙水手-2.png', 112, 3);
INSERT INTO `item` VALUES (322, '表演季向导-1', '表演季向导-1.png', 114, 3);
INSERT INTO `item` VALUES (323, '胆小鬼学员-2', '胆小鬼学员-2.png', 116, 3);
INSERT INTO `item` VALUES (324, '稻草人农夫-2', '稻草人农夫-2.png', 117, 3);
INSERT INTO `item` VALUES (325, '发号施令的统治者-3', '发号施令的统治者-3.png', 118, 3);
INSERT INTO `item` VALUES (326, '放松日浴者-4', '放松日浴者-4.png', 66, 3);
INSERT INTO `item` VALUES (327, '风先知-3', '风先知-3.png', 68, 3);
INSERT INTO `item` VALUES (328, '疯狂的舞台手-2', '疯狂的舞台手-2.png', 69, 3);
INSERT INTO `item` VALUES (329, '固执登山者-3', '固执登山者-3.png', 70, 3);
INSERT INTO `item` VALUES (330, '管事小队长-2', '管事小队长-2.png', 71, 3);
INSERT INTO `item` VALUES (331, '回旋大师-2', '回旋大师-2.png', 73, 3);
INSERT INTO `item` VALUES (332, '火先知-5', '火先知-5.png', 75, 3);
INSERT INTO `item` VALUES (333, '集结季向导-1', '集结季向导-1.png', 76, 3);
INSERT INTO `item` VALUES (334, '健忘的讲故事者-2', '健忘的讲故事者-2.png', 77, 3);
INSERT INTO `item` VALUES (335, '焦虑渔夫-2', '焦虑渔夫-2.png', 78, 3);
INSERT INTO `item` VALUES (336, '冷漠术士-2', '冷漠术士-2.png', 80, 3);
INSERT INTO `item` VALUES (337, '茫然植物学生-3', '茫然植物学生-3.png', 82, 3);
INSERT INTO `item` VALUES (338, '梦想季向导-1', '梦想季向导-1.png', 83, 3);
INSERT INTO `item` VALUES (339, '默许壁画家-2', '默许壁画家-2.png', 86, 3);
INSERT INTO `item` VALUES (340, '谦逊的舞者-3', '谦逊的舞者-3.png', 89, 3);
INSERT INTO `item` VALUES (341, '情绪草药师-2', '情绪草药师-2.png', 90, 3);
INSERT INTO `item` VALUES (342, '傻笑童子军-2', '傻笑童子军-2.png', 92, 3);
INSERT INTO `item` VALUES (343, '颓丧的士兵-1', '颓丧的士兵-1.png', 100, 11);
INSERT INTO `item` VALUES (344, '威严舰长-1', '威严舰长-1.png', 101, 11);
INSERT INTO `item` VALUES (345, '嬉戏炮手-1', '嬉戏炮手-1.png', 102, 11);
INSERT INTO `item` VALUES (346, '蟹舞者-1', '蟹舞者-1.png', 104, 11);
INSERT INTO `item` VALUES (347, '星星收集者-1', '星星收集者-1.png', 105, 11);
INSERT INTO `item` VALUES (348, '圆润的音乐家-1', '圆润的音乐家-1.png', 108, 11);
INSERT INTO `item` VALUES (349, '沾沾自喜的自恋狂-1', '沾沾自喜的自恋狂-1.png', 109, 11);
INSERT INTO `item` VALUES (350, '正步冒险家-1', '正步冒险家-1.png', 110, 11);
INSERT INTO `item` VALUES (351, '白日梦森林人-1', '白日梦森林人-1.png', 111, 11);
INSERT INTO `item` VALUES (352, '笨拙水手-1', '笨拙水手-1.png', 112, 11);
INSERT INTO `item` VALUES (353, '编钟修补匠-1', '编钟修补匠-1.png', 113, 11);
INSERT INTO `item` VALUES (354, '打喷嚏的地理学家-1', '打喷嚏的地理学家-1.png', 115, 11);
INSERT INTO `item` VALUES (355, '胆小鬼学员-1', '胆小鬼学员-1.png', 116, 11);
INSERT INTO `item` VALUES (356, '稻草人农夫-1', '稻草人农夫-1.png', 117, 11);
INSERT INTO `item` VALUES (357, '发号施令的统治者-1', '发号施令的统治者-1.png', 118, 11);
INSERT INTO `item` VALUES (358, '放松日浴者-1', '放松日浴者-1.png', 66, 11);
INSERT INTO `item` VALUES (359, '风先知-1', '风先知-1.png', 68, 11);
INSERT INTO `item` VALUES (360, '疯狂的舞台手-4', '疯狂的舞台手-4.png', 69, 11);
INSERT INTO `item` VALUES (361, '固执登山者-1', '固执登山者-1.png', 70, 11);
INSERT INTO `item` VALUES (362, '管事小队长-1', '管事小队长-1.png', 71, 11);
INSERT INTO `item` VALUES (363, '光之私语者-1', '光之私语者-1.png', 72, 11);
INSERT INTO `item` VALUES (364, '活泼导航员-1', '活泼导航员-1.png', 74, 11);
INSERT INTO `item` VALUES (365, '火先知-1', '火先知-1.png', 75, 11);
INSERT INTO `item` VALUES (366, '健忘的讲故事者-1', '健忘的讲故事者-1.png', 77, 11);
INSERT INTO `item` VALUES (367, '焦虑渔夫-1', '焦虑渔夫-1.png', 78, 11);
INSERT INTO `item` VALUES (368, '瞌睡木匠-1', '瞌睡木匠-1.png', 79, 11);
INSERT INTO `item` VALUES (369, '冷漠术士-1', '冷漠术士-1.png', 80, 11);
INSERT INTO `item` VALUES (370, '忙碌的点灯人-1', '忙碌的点灯人-1.png', 81, 11);
INSERT INTO `item` VALUES (371, '茫然植物学生-1', '茫然植物学生-1.png', 82, 11);
INSERT INTO `item` VALUES (372, '鸣谢收藏家-1', '鸣谢收藏家-1.png', 84, 11);
INSERT INTO `item` VALUES (373, '默许壁画家-1', '默许壁画家-1.png', 86, 11);
INSERT INTO `item` VALUES (374, '母语者-1', '母语者-1.png', 87, 11);
INSERT INTO `item` VALUES (375, '内秀书虫-1', '内秀书虫-1.png', 88, 11);
INSERT INTO `item` VALUES (376, '谦逊的舞者-1', '谦逊的舞者-1.png', 89, 11);
INSERT INTO `item` VALUES (377, '情绪草药师-1', '情绪草药师-1.png', 90, 11);
INSERT INTO `item` VALUES (378, '热血运动员-1', '热血运动员-1.png', 91, 11);
INSERT INTO `item` VALUES (379, '傻笑童子军-1', '傻笑童子军-1.png', 92, 11);
INSERT INTO `item` VALUES (380, '水先知-1', '水先知-1.png', 95, 11);
INSERT INTO `item` VALUES (381, '天才建筑师-1', '天才建筑师-1.png', 96, 11);
INSERT INTO `item` VALUES (382, '土先知-1', '土先知-1.png', 99, 11);

-- ----------------------------
-- Table structure for itemtype
-- ----------------------------
DROP TABLE IF EXISTS `itemtype`;
CREATE TABLE `itemtype`  (
  `itemTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `itemTypeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `itemTypeLinkUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemTypeID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of itemtype
-- ----------------------------
INSERT INTO `itemtype` VALUES (1, '裤子', 'trousers');
INSERT INTO `itemtype` VALUES (2, '衣服', 'clothes');
INSERT INTO `itemtype` VALUES (3, '面具', 'mianju');
INSERT INTO `itemtype` VALUES (4, '项链', 'Necklace');
INSERT INTO `itemtype` VALUES (5, '头饰', 'HeadForHair');
INSERT INTO `itemtype` VALUES (6, '乐谱', 'Music');
INSERT INTO `itemtype` VALUES (7, '乐器', 'musicTool');
INSERT INTO `itemtype` VALUES (8, '道具', 'props');
INSERT INTO `itemtype` VALUES (9, '头发', 'hair');
INSERT INTO `itemtype` VALUES (10, '功能道具', 'Usefulprops');
INSERT INTO `itemtype` VALUES (11, '动作', 'emote');

-- ----------------------------
-- Table structure for magic
-- ----------------------------
DROP TABLE IF EXISTS `magic`;
CREATE TABLE `magic`  (
  `magicID` int(11) NOT NULL AUTO_INCREMENT,
  `magicName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `magicImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `srID` int(11) NOT NULL,
  PRIMARY KEY (`magicID`) USING BTREE,
  INDEX `srID`(`srID`) USING BTREE,
  CONSTRAINT `magic_ibfk_1` FOREIGN KEY (`srID`) REFERENCES `seasonoractivity` (`srID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of magic
-- ----------------------------

-- ----------------------------
-- Table structure for mainhtml
-- ----------------------------
DROP TABLE IF EXISTS `mainhtml`;
CREATE TABLE `mainhtml`  (
  `mainhtmlID` int(255) NOT NULL AUTO_INCREMENT,
  `backgrountLink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nowSeason` int(255) NOT NULL,
  PRIMARY KEY (`mainhtmlID`) USING BTREE,
  INDEX `nowSeasson`(`nowSeason`) USING BTREE,
  CONSTRAINT `mainhtml_ibfk_1` FOREIGN KEY (`nowSeason`) REFERENCES `seasonoractivity` (`srID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mainhtml
-- ----------------------------
INSERT INTO `mainhtml` VALUES (1, 'https://qq.cn.hn/FDr', 12);
INSERT INTO `mainhtml` VALUES (2, 'https://qq.cn.hn/FtG', 12);
INSERT INTO `mainhtml` VALUES (3, 'https://qq.cn.hn/FtH', 12);
INSERT INTO `mainhtml` VALUES (4, 'https://qq.cn.hn/FtD', 12);
INSERT INTO `mainhtml` VALUES (6, 'https://qq.cn.hn/Fur', 12);
INSERT INTO `mainhtml` VALUES (7, 'https://qq.cn.hn/Fum', 12);
INSERT INTO `mainhtml` VALUES (8, 'https://qq.cn.hn/Fup', 12);

-- ----------------------------
-- Table structure for maxmap
-- ----------------------------
DROP TABLE IF EXISTS `maxmap`;
CREATE TABLE `maxmap`  (
  `maxMapID` int(11) NOT NULL AUTO_INCREMENT,
  `maxName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`maxMapID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of maxmap
-- ----------------------------
INSERT INTO `maxmap` VALUES (1, '晨岛');
INSERT INTO `maxmap` VALUES (2, '云野');
INSERT INTO `maxmap` VALUES (3, '雨林');
INSERT INTO `maxmap` VALUES (4, '霞谷');
INSERT INTO `maxmap` VALUES (5, '墓土');
INSERT INTO `maxmap` VALUES (6, '禁阁');
INSERT INTO `maxmap` VALUES (7, '伊甸');
INSERT INTO `maxmap` VALUES (8, '特殊图');
INSERT INTO `maxmap` VALUES (9, '遇境');

-- ----------------------------
-- Table structure for minimap
-- ----------------------------
DROP TABLE IF EXISTS `minimap`;
CREATE TABLE `minimap`  (
  `miniMapID` int(11) NOT NULL AUTO_INCREMENT,
  `miniNormalName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `miniName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `maxMapID` int(11) NOT NULL,
  PRIMARY KEY (`miniMapID`) USING BTREE,
  INDEX `maxMapID`(`maxMapID`) USING BTREE,
  CONSTRAINT `minimap_ibfk_1` FOREIGN KEY (`maxMapID`) REFERENCES `maxmap` (`maxMapID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of minimap
-- ----------------------------
INSERT INTO `minimap` VALUES (1, '大厅', '大厅', 1);
INSERT INTO `minimap` VALUES (2, '预言山洞', '预言山洞', 1);
INSERT INTO `minimap` VALUES (3, '晨岛神庙', '神坛', 1);
INSERT INTO `minimap` VALUES (4, '云野通道', '云野通道', 1);
INSERT INTO `minimap` VALUES (5, '大厅', '大厅', 2);
INSERT INTO `minimap` VALUES (6, '蝴蝶平原', '二图', 2);
INSERT INTO `minimap` VALUES (7, '幽光山洞', '左隐藏', 2);
INSERT INTO `minimap` VALUES (8, '云顶浮岛', '浮岛', 2);
INSERT INTO `minimap` VALUES (9, '云顶仙居', '三塔', 2);
INSERT INTO `minimap` VALUES (10, '云野神庙', '神坛', 2);
INSERT INTO `minimap` VALUES (11, '圣岛', '圣岛', 2);
INSERT INTO `minimap` VALUES (12, '大厅', '大厅', 3);
INSERT INTO `minimap` VALUES (13, '静谧庭园一门', '庭院', 3);
INSERT INTO `minimap` VALUES (14, '静谧庭院/一院', '庭院过道', 3);
INSERT INTO `minimap` VALUES (15, '静谧庭院/二院', '庭院过门', 3);
INSERT INTO `minimap` VALUES (16, '荧光森林', '二图', 3);
INSERT INTO `minimap` VALUES (17, '秘密花园', '老奶奶饭家', 3);
INSERT INTO `minimap` VALUES (18, '秘密空间', '隐藏图', 3);
INSERT INTO `minimap` VALUES (19, '密林遗址', '水母图', 3);
INSERT INTO `minimap` VALUES (20, '雨林神庙', '神坛', 3);
INSERT INTO `minimap` VALUES (21, '神庙后花园', '神坛后', 3);
INSERT INTO `minimap` VALUES (22, '大厅', '大厅', 4);
INSERT INTO `minimap` VALUES (23, '大滑冰场', '滑冰场', 4);
INSERT INTO `minimap` VALUES (24, '日暮城', '左隐藏', 4);
INSERT INTO `minimap` VALUES (25, '飞行赛道', '飞行赛道', 4);
INSERT INTO `minimap` VALUES (26, '滑行赛道', '滑行赛道', 4);
INSERT INTO `minimap` VALUES (27, '颁奖台', '终点', 4);
INSERT INTO `minimap` VALUES (28, '霞谷神殿', '神坛', 4);
INSERT INTO `minimap` VALUES (29, '大厅', '大厅', 5);
INSERT INTO `minimap` VALUES (30, '城外荒漠', '二图', 5);
INSERT INTO `minimap` VALUES (31, '遗忘方舟', '白嫖魔法图', 5);
INSERT INTO `minimap` VALUES (32, '废墟城', '一龙图', 5);
INSERT INTO `minimap` VALUES (33, '兽骸荒原', '四龙图', 5);
INSERT INTO `minimap` VALUES (34, '孤龙沉船', '沉船图', 5);
INSERT INTO `minimap` VALUES (35, '古战场', '古战场', 5);
INSERT INTO `minimap` VALUES (36, '墓土城堡', '神坛', 5);
INSERT INTO `minimap` VALUES (37, '大厅', '大厅', 6);
INSERT INTO `minimap` VALUES (38, '禁阁迷宫', '右隐藏', 6);
INSERT INTO `minimap` VALUES (39, '办公室花坪', '办公室入口', 6);
INSERT INTO `minimap` VALUES (40, '禁阁一层', '禁阁一楼', 6);
INSERT INTO `minimap` VALUES (41, '禁阁二层', '禁阁二楼', 6);
INSERT INTO `minimap` VALUES (42, '禁阁三层', '禁阁三楼', 6);
INSERT INTO `minimap` VALUES (43, '禁阁四层', '禁阁四楼', 6);
INSERT INTO `minimap` VALUES (44, '禁阁五层', '禁阁五楼', 6);
INSERT INTO `minimap` VALUES (45, '禁阁顶层', '禁阁顶楼', 6);
INSERT INTO `minimap` VALUES (46, '办公室', '办公室', 6);
INSERT INTO `minimap` VALUES (47, '小王子的梦', '小王子他家', 8);
INSERT INTO `minimap` VALUES (100, '遇境', '遇境', 9);
INSERT INTO `minimap` VALUES (101, '乡村剧场', '表演季地图', 4);
INSERT INTO `minimap` VALUES (102, '宝礁', '深渊季地图', 5);
INSERT INTO `minimap` VALUES (103, '风行网道', '飞翔季地图', 3);
INSERT INTO `minimap` VALUES (104, '小王子地图', '小王子季地图', 6);
INSERT INTO `minimap` VALUES (105, '集结季地图', '集结季地图', 3);
INSERT INTO `minimap` VALUES (106, '梦想季地图', '梦想季地图', 4);

-- ----------------------------
-- Table structure for report
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report`  (
  `reportListID` int(11) NOT NULL AUTO_INCREMENT,
  `reportListTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reportListimage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reportListMesseage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reportTime` datetime NOT NULL,
  PRIMARY KEY (`reportListID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of report
-- ----------------------------

-- ----------------------------
-- Table structure for seasonoractivity
-- ----------------------------
DROP TABLE IF EXISTS `seasonoractivity`;
CREATE TABLE `seasonoractivity`  (
  `srID` int(11) NOT NULL AUTO_INCREMENT,
  `srName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `srLink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isSeason` tinyint(1) NOT NULL,
  PRIMARY KEY (`srID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seasonoractivity
-- ----------------------------
INSERT INTO `seasonoractivity` VALUES (1, '感恩季', 'Gratitude', 1);
INSERT INTO `seasonoractivity` VALUES (2, '追光季', 'Lightseekers', 1);
INSERT INTO `seasonoractivity` VALUES (3, '归属季', 'Belonging', 1);
INSERT INTO `seasonoractivity` VALUES (4, '音韵季', 'Rhythm', 1);
INSERT INTO `seasonoractivity` VALUES (5, '魔法季', 'Enchantment', 1);
INSERT INTO `seasonoractivity` VALUES (6, '圣岛季', 'Sanctuary', 1);
INSERT INTO `seasonoractivity` VALUES (7, '预言季', 'Prophecy', 1);
INSERT INTO `seasonoractivity` VALUES (8, '梦想季', 'Dreams', 1);
INSERT INTO `seasonoractivity` VALUES (9, '集结季', 'Assembly', 1);
INSERT INTO `seasonoractivity` VALUES (10, '小王子季', 'Little', 1);
INSERT INTO `seasonoractivity` VALUES (11, '飞翔季', 'Flight', 1);
INSERT INTO `seasonoractivity` VALUES (12, '潜海季', 'Abyss', 1);
INSERT INTO `seasonoractivity` VALUES (13, '常规', 'Normal', 0);
INSERT INTO `seasonoractivity` VALUES (14, '全部', 'None', 0);
INSERT INTO `seasonoractivity` VALUES (15, '表演季', 'Showmaker', 1);

-- ----------------------------
-- Table structure for sprit
-- ----------------------------
DROP TABLE IF EXISTS `sprit`;
CREATE TABLE `sprit`  (
  `spritID` int(11) NOT NULL AUTO_INCREMENT,
  `spritName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `spritLink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `srID` int(11) NOT NULL,
  `miniMapID` int(11) NOT NULL,
  PRIMARY KEY (`spritID`) USING BTREE,
  INDEX `srID`(`srID`) USING BTREE,
  INDEX `miniMapID`(`miniMapID`) USING BTREE,
  CONSTRAINT `sprit_ibfk_1` FOREIGN KEY (`srID`) REFERENCES `seasonoractivity` (`srID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sprit_ibfk_2` FOREIGN KEY (`miniMapID`) REFERENCES `minimap` (`miniMapID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sprit
-- ----------------------------
INSERT INTO `sprit` VALUES (1, '指路蜡烛匠', 'chendao-1', 13, 1);
INSERT INTO `sprit` VALUES (2, '回绝行者', 'chendao-2', 13, 1);
INSERT INTO `sprit` VALUES (3, '引路望星客', 'chendao-3', 13, 1);
INSERT INTO `sprit` VALUES (4, '犯困船工', 'yunye-1', 13, 1);
INSERT INTO `sprit` VALUES (5, '挥手钟匠', 'yunye-2', 13, 9);
INSERT INTO `sprit` VALUES (6, '引蝶人', 'yunye-3', 13, 6);
INSERT INTO `sprit` VALUES (7, '欢笑光农', 'yunye-4', 13, 9);
INSERT INTO `sprit` VALUES (8, '鸟语者', 'yunye-5', 13, 8);
INSERT INTO `sprit` VALUES (9, '鼓掌钟匠', 'yunye-6', 13, 9);
INSERT INTO `sprit` VALUES (10, '辛劳码头工', 'yunye-7', 13, 7);
INSERT INTO `sprit` VALUES (11, '祭光参事', 'yunye-8', 13, 9);
INSERT INTO `sprit` VALUES (12, '羞涩勘探者', 'yulin-1', 13, 16);
INSERT INTO `sprit` VALUES (13, '沮丧猎人', 'yulin-2', 13, 19);
INSERT INTO `sprit` VALUES (14, '悲伤矿工', 'yulin-3', 13, 19);
INSERT INTO `sprit` VALUES (15, '躲猫猫拓荒者', 'yulin-4', 13, 16);
INSERT INTO `sprit` VALUES (16, '发抖开拓者', 'yulin-5', 13, 14);
INSERT INTO `sprit` VALUES (17, '歉意伐木工', 'yulin-6', 13, 19);
INSERT INTO `sprit` VALUES (18, '娇嗔搬运工', 'yulin-7', 13, 16);
INSERT INTO `sprit` VALUES (19, '鲸语者', 'yulin-8', 13, 19);
INSERT INTO `sprit` VALUES (20, '自信观光客', 'xiagu-1', 13, 23);
INSERT INTO `sprit` VALUES (21, '鞠躬季军', 'xiagu-2', 13, 27);
INSERT INTO `sprit` VALUES (22, '鳐语者', 'xiagu-3', 13, 24);
INSERT INTO `sprit` VALUES (23, '叫好观众', 'xiagu-4', 13, 27);
INSERT INTO `sprit` VALUES (24, '倒立运动员', 'xiagu-5', 13, 24);
INSERT INTO `sprit` VALUES (25, '空翻亚军', 'xiagu-6', 13, 24);
INSERT INTO `sprit` VALUES (26, '自豪冠军', 'xiagu-7', 13, 27);
INSERT INTO `sprit` VALUES (27, '昏厥战士', 'mutu-1', 13, 30);
INSERT INTO `sprit` VALUES (28, '无畏战士', 'mutu-2', 13, 32);
INSERT INTO `sprit` VALUES (29, '恐惧难民', 'mutu-3', 13, 30);
INSERT INTO `sprit` VALUES (30, '行礼舰长', 'mutu-4', 13, 34);
INSERT INTO `sprit` VALUES (31, '隐秘幸存者', 'mutu-5', 13, 33);
INSERT INTO `sprit` VALUES (32, '望远舰长', 'mutu-6', 13, 35);
INSERT INTO `sprit` VALUES (33, '气功高人', 'jinge-1', 13, 41);
INSERT INTO `sprit` VALUES (34, '禅修院士', 'jinge-2', 13, 42);
INSERT INTO `sprit` VALUES (35, '灵语者', 'jinge-3', 13, 42);
INSERT INTO `sprit` VALUES (36, '礼貌学者', 'jinge-4', 13, 42);
INSERT INTO `sprit` VALUES (37, '祈祷圣徒', 'jinge-5', 13, 40);
INSERT INTO `sprit` VALUES (38, '挑衅艺伎', '挑衅艺伎', 1, 16);
INSERT INTO `sprit` VALUES (39, '跳跃舞者', '跳跃舞者', 1, 22);
INSERT INTO `sprit` VALUES (40, '感恩季向导', '感恩季向导', 1, 100);
INSERT INTO `sprit` VALUES (41, '刁蛮浪者', '刁蛮浪者', 1, 1);
INSERT INTO `sprit` VALUES (42, '敬礼护卫', '敬礼护卫', 1, 32);
INSERT INTO `sprit` VALUES (43, '拳礼武僧', '拳礼武僧', 1, 43);
INSERT INTO `sprit` VALUES (44, '舒展大师', '舒展大师', 1, 7);
INSERT INTO `sprit` VALUES (45, '蟹语者', '蟹语者', 2, 34);
INSERT INTO `sprit` VALUES (46, '击掌光农', '击掌光农', 2, 8);
INSERT INTO `sprit` VALUES (47, '肩背追光', '肩背追光', 2, 1);
INSERT INTO `sprit` VALUES (48, '静光学者', '静光学者', 2, 43);
INSERT INTO `sprit` VALUES (49, '螺旋舞冠', '螺旋舞冠', 2, 23);
INSERT INTO `sprit` VALUES (50, '随性拓荒者', '随性拓荒者', 2, 16);
INSERT INTO `sprit` VALUES (51, '追光季向导', '追光季向导', 2, 7);
INSERT INTO `sprit` VALUES (52, '归属季向导', '归属季向导', 3, 1);
INSERT INTO `sprit` VALUES (53, '火花家长', '火花家长', 3, 28);
INSERT INTO `sprit` VALUES (54, '蓬头青年', '蓬头青年', 3, 18);
INSERT INTO `sprit` VALUES (55, '踏舞孩童', '踏舞孩童', 3, 2);
INSERT INTO `sprit` VALUES (56, '智慧长者', '智慧长者', 3, 38);
INSERT INTO `sprit` VALUES (57, '不舍家长', '不舍家长', 3, 33);
INSERT INTO `sprit` VALUES (58, '彩纸表亲', '彩纸表亲', 3, 6);
INSERT INTO `sprit` VALUES (59, '向导', '向导', 4, 1);
INSERT INTO `sprit` VALUES (60, '旋转舞者', '旋转舞者', 4, 8);
INSERT INTO `sprit` VALUES (61, '迎宾侍者', '迎宾侍者', 4, 1);
INSERT INTO `sprit` VALUES (62, '致敬钢琴家', '致敬钢琴家', 4, 33);
INSERT INTO `sprit` VALUES (63, '沉思编导', '沉思编导', 4, 37);
INSERT INTO `sprit` VALUES (64, '抛球杂耍', '抛球杂耍', 4, 23);
INSERT INTO `sprit` VALUES (65, '献情演员', '献情演员', 4, 19);
INSERT INTO `sprit` VALUES (66, '放松日浴者', '放松日浴者', 6, 11);
INSERT INTO `sprit` VALUES (67, '飞翔季向导', '飞翔季向导', 11, 103);
INSERT INTO `sprit` VALUES (68, '风先知', '风先知', 7, 2);
INSERT INTO `sprit` VALUES (69, '疯狂的舞台手', '疯狂的舞台手', 15, 101);
INSERT INTO `sprit` VALUES (70, '固执登山者', '固执登山者', 6, 11);
INSERT INTO `sprit` VALUES (71, '管事小队长', '管事小队长', 9, 105);
INSERT INTO `sprit` VALUES (72, '光之私语者', '光之私语者', 11, 103);
INSERT INTO `sprit` VALUES (73, '回旋大师', '回旋大师', 8, 106);
INSERT INTO `sprit` VALUES (74, '活泼导航员', '活泼导航员', 11, 103);
INSERT INTO `sprit` VALUES (75, '火先知', '火先知', 7, 2);
INSERT INTO `sprit` VALUES (76, '集结季向导', '集结季向导', 9, 105);
INSERT INTO `sprit` VALUES (77, '健忘的讲故事者', '健忘的讲故事者', 15, 101);
INSERT INTO `sprit` VALUES (78, '焦虑渔夫', '焦虑渔夫', 12, 102);
INSERT INTO `sprit` VALUES (79, '瞌睡木匠', '瞌睡木匠', 5, 31);
INSERT INTO `sprit` VALUES (80, '冷漠术士', '冷漠术士', 5, 31);
INSERT INTO `sprit` VALUES (81, '忙碌的点灯人', '忙碌的点灯人', 10, 104);
INSERT INTO `sprit` VALUES (82, '茫然植物学生', '茫然植物学生', 9, 105);
INSERT INTO `sprit` VALUES (83, '梦想季向导', '梦想季向导', 8, 106);
INSERT INTO `sprit` VALUES (84, '鸣谢收藏家', '鸣谢收藏家', 6, 11);
INSERT INTO `sprit` VALUES (85, '魔法季向导', '魔法季向导', 5, 31);
INSERT INTO `sprit` VALUES (86, '默许壁画家', '默许壁画家', 5, 31);
INSERT INTO `sprit` VALUES (87, '母语者', '母语者', 6, 11);
INSERT INTO `sprit` VALUES (88, '内秀书虫', '内秀书虫', 6, 11);
INSERT INTO `sprit` VALUES (89, '谦逊的舞者', '谦逊的舞者', 15, 101);
INSERT INTO `sprit` VALUES (90, '情绪草药师', '情绪草药师', 5, 31);
INSERT INTO `sprit` VALUES (91, '热血运动员', '热血运动员', 6, 11);
INSERT INTO `sprit` VALUES (92, '傻笑童子军', '傻笑童子军', 9, 105);
INSERT INTO `sprit` VALUES (93, '深渊季向导', '深渊季向导', 12, 102);
INSERT INTO `sprit` VALUES (94, '圣岛季向导', '圣岛季向导', 6, 11);
INSERT INTO `sprit` VALUES (95, '水先知', '水先知', 7, 2);
INSERT INTO `sprit` VALUES (96, '天才建筑师', '天才建筑师', 11, 103);
INSERT INTO `sprit` VALUES (97, '跳舞艺人', '跳舞艺人', 8, 106);
INSERT INTO `sprit` VALUES (98, '偷窥邮差', '偷窥邮差', 8, 106);
INSERT INTO `sprit` VALUES (99, '土先知', '土先知', 7, 2);
INSERT INTO `sprit` VALUES (100, '颓丧的士兵', '颓丧的士兵', 10, 104);
INSERT INTO `sprit` VALUES (101, '威严舰长', '威严舰长', 12, 102);
INSERT INTO `sprit` VALUES (102, '嬉戏炮手', '嬉戏炮手', 12, 102);
INSERT INTO `sprit` VALUES (103, '小王子季向导', '小王子季向导', 10, 104);
INSERT INTO `sprit` VALUES (104, '蟹舞者', '蟹舞者', 5, 31);
INSERT INTO `sprit` VALUES (105, '星星收集者', '星星收集者', 10, 104);
INSERT INTO `sprit` VALUES (106, '熊抱雪人', '熊抱雪人', 8, 106);
INSERT INTO `sprit` VALUES (107, '预言季向导', '预言季向导', 7, 2);
INSERT INTO `sprit` VALUES (108, '圆润的音乐家', '圆润的音乐家', 15, 101);
INSERT INTO `sprit` VALUES (109, '沾沾自喜的自恋狂', '沾沾自喜的自恋狂', 10, 104);
INSERT INTO `sprit` VALUES (110, '正步冒险家', '正步冒险家', 9, 105);
INSERT INTO `sprit` VALUES (111, '白日梦森林人', '白日梦森林人', 9, 105);
INSERT INTO `sprit` VALUES (112, '笨拙水手', '笨拙水手', 12, 102);
INSERT INTO `sprit` VALUES (113, '编钟修补匠', '编钟修补匠', 11, 103);
INSERT INTO `sprit` VALUES (114, '表演季向导', '表演季向导', 15, 101);
INSERT INTO `sprit` VALUES (115, '打喷嚏的地理学家', '打喷嚏的地理学家', 10, 104);
INSERT INTO `sprit` VALUES (116, '胆小鬼学员', '胆小鬼学员', 9, 105);
INSERT INTO `sprit` VALUES (117, '稻草人农夫', '稻草人农夫', 5, 31);
INSERT INTO `sprit` VALUES (118, '发号施令的统治者', '发号施令的统治者', 10, 104);

-- ----------------------------
-- Table structure for strategy
-- ----------------------------
DROP TABLE IF EXISTS `strategy`;
CREATE TABLE `strategy`  (
  `strategyID` int(11) NOT NULL,
  `strategyName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `strategyLink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`strategyID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of strategy
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
