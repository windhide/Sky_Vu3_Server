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

 Date: 08/05/2022 00:58:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `accountID` int(11) NOT NULL AUTO_INCREMENT,
  `accountUsername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accountPassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`accountID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, 'admin', 'admin');
INSERT INTO `account` VALUES (5, 'test', '123');
INSERT INTO `account` VALUES (6, 'test02', '123');
INSERT INTO `account` VALUES (7, '123', '123');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 457 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `item` VALUES (383, '女巫衣服', '女巫衣服.png', 119, 1);
INSERT INTO `item` VALUES (385, '枯树枝', 'cost_kushuzhi.png', 119, 5);
INSERT INTO `item` VALUES (386, '蜘蛛头', 'cost_zhizhutou.png', 119, 9);
INSERT INTO `item` VALUES (387, '鬼蝙斗', 'guifudou.png', 119, 2);
INSERT INTO `item` VALUES (388, '枯叶斗', 'kuyedou.png', 119, 2);
INSERT INTO `item` VALUES (389, '南瓜头', 'nanguatou.png', 119, 9);
INSERT INTO `item` VALUES (390, '万圣节桌子', 'wanshengjiezhuozi.png', 119, 10);
INSERT INTO `item` VALUES (391, '巫师帽', 'wushimao.png', 119, 9);
INSERT INTO `item` VALUES (392, '巫师头', 'wushitou.png', 119, 9);
INSERT INTO `item` VALUES (393, '蛛网斗', 'zhuwangdou.png', 119, 2);
INSERT INTO `item` VALUES (394, '南瓜灯', '南瓜灯.png', 119, 10);
INSERT INTO `item` VALUES (395, '茶桌', '茶桌.png', 120, 10);
INSERT INTO `item` VALUES (396, '粉樱花斗', '粉樱花斗.png', 120, 2);
INSERT INTO `item` VALUES (397, '花环', '花环.png', 120, 5);
INSERT INTO `item` VALUES (398, '樱花头', '樱花头.png', 120, 9);
INSERT INTO `item` VALUES (399, '紫樱花斗', '紫樱花斗.png', 120, 2);
INSERT INTO `item` VALUES (400, '茶花桌', '茶花桌.png', 120, 10);
INSERT INTO `item` VALUES (401, '海洋项链', '海洋项链.png', 121, 4);
INSERT INTO `item` VALUES (402, '海洋斗', '海洋斗.png', 121, 2);
INSERT INTO `item` VALUES (403, '太阳伞', '太阳伞.png', 122, 10);
INSERT INTO `item` VALUES (404, '小贝壳', '小贝壳.png', 122, 5);
INSERT INTO `item` VALUES (405, '沙滩椅', '沙滩椅.png', 122, 10);
INSERT INTO `item` VALUES (406, '太阳帽', '太阳帽.png', 122, 5);
INSERT INTO `item` VALUES (407, '雪花斗', '雪花斗.png', 123, 2);
INSERT INTO `item` VALUES (408, '圣诞白金斗', 'shengdanbaijindou.png', 123, 2);
INSERT INTO `item` VALUES (409, '雪花瓶', 'xuehuapin.png', 123, 10);
INSERT INTO `item` VALUES (410, '雪花头饰', 'xuehuatoushi.png', 123, 5);
INSERT INTO `item` VALUES (411, '鹿角', '鹿角.png', 123, 5);
INSERT INTO `item` VALUES (412, '圣诞斗', '圣诞斗.png', 123, 2);
INSERT INTO `item` VALUES (413, '圣诞毛帽', '圣诞毛帽.png', 123, 9);
INSERT INTO `item` VALUES (414, '圣诞帽', '圣诞帽.png', 123, 9);
INSERT INTO `item` VALUES (415, '圣诞屁垫', '圣诞屁垫.png', 123, 10);
INSERT INTO `item` VALUES (416, '圣诞围巾', '圣诞围巾.png', 123, 4);
INSERT INTO `item` VALUES (417, '圣诞项链', '圣诞项链.png', 123, 4);
INSERT INTO `item` VALUES (418, '圣诞椅', '圣诞椅.png', 123, 10);
INSERT INTO `item` VALUES (419, '林克笛', '林克笛.png', 124, 7);
INSERT INTO `item` VALUES (420, '林克头', '林克头.png', 124, 9);
INSERT INTO `item` VALUES (421, '任天堂2', '任天堂2.png', 124, 2);
INSERT INTO `item` VALUES (422, '任天堂斗1', '任天堂斗1.png', 124, 2);
INSERT INTO `item` VALUES (423, '小白花', '小白花.png', 124, 5);
INSERT INTO `item` VALUES (424, '绊爱斗', '绊爱斗.png', 124, 2);
INSERT INTO `item` VALUES (425, '绊爱头发', '绊爱头发.png', 124, 9);
INSERT INTO `item` VALUES (426, '绊爱头饰', '绊爱头饰.png', 124, 5);
INSERT INTO `item` VALUES (427, '彩虹日小花', '彩虹日小花.png', 125, 5);
INSERT INTO `item` VALUES (428, '彩虹斗', '彩虹斗.png', 125, 2);
INSERT INTO `item` VALUES (429, '彩虹耳坠', '彩虹耳坠.png', 125, 5);
INSERT INTO `item` VALUES (430, '彩虹帽', '彩虹帽.png', 125, 9);
INSERT INTO `item` VALUES (431, '周年庆小道具', '周年庆小道具.png', 126, 10);
INSERT INTO `item` VALUES (432, '二周年帽', '二周年帽.png', 126, 5);
INSERT INTO `item` VALUES (433, '情人节小船', '情人节小船.png', 127, 10);
INSERT INTO `item` VALUES (434, '秋千', '秋千.png', 127, 10);
INSERT INTO `item` VALUES (435, '灯笼', 'cost_denglong.png', 127, 10);
INSERT INTO `item` VALUES (436, '跷跷板', '跷跷板.png', 127, 10);
INSERT INTO `item` VALUES (437, '针帽', '针帽.png', 128, 9);
INSERT INTO `item` VALUES (438, '小兔子', 'cost_xiaotuzi.png', 128, 5);
INSERT INTO `item` VALUES (439, '小橘子', 'xiaojuzi.png', 128, 5);
INSERT INTO `item` VALUES (440, '福娃斗', '福娃斗.png', 128, 2);
INSERT INTO `item` VALUES (441, '福娃面具', '福娃面具.png', 128, 3);
INSERT INTO `item` VALUES (442, '福娃头发', '福娃头发.png', 128, 9);
INSERT INTO `item` VALUES (443, '老虎面具', '老虎面具.png', 128, 3);
INSERT INTO `item` VALUES (444, '玫瑰花面具', '玫瑰花面具.png', 128, 3);
INSERT INTO `item` VALUES (445, '牛头面具', '牛头面具.png', 128, 3);
INSERT INTO `item` VALUES (446, '醒狮帽', '醒狮帽.png', 128, 9);
INSERT INTO `item` VALUES (447, '鱼斗篷', '鱼斗篷.png', 128, 2);
INSERT INTO `item` VALUES (448, '鱼帽子', '鱼帽子.png', 128, 9);
INSERT INTO `item` VALUES (449, '鱼头饰', '鱼头饰.png', 128, 5);
INSERT INTO `item` VALUES (450, '绿芽斗', '绿芽斗.png', 129, 2);
INSERT INTO `item` VALUES (451, '橙斗', 'cost_chengdou.png', 129, 2);
INSERT INTO `item` VALUES (452, 'TGC斗', 'cost_tgc.png', 129, 2);
INSERT INTO `item` VALUES (453, '围巾斗', '围巾斗.png', 124, 2);
INSERT INTO `item` VALUES (454, '星球斗', '星球斗.png', 124, 2);
INSERT INTO `item` VALUES (455, '狐狸背包', '狐狸背包.png', 124, 10);
INSERT INTO `item` VALUES (456, '剑客衣', '剑客衣.png', 124, 1);

-- ----------------------------
-- Table structure for itemtype
-- ----------------------------
DROP TABLE IF EXISTS `itemtype`;
CREATE TABLE `itemtype`  (
  `itemTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `itemTypeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `itemTypeLinkUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemTypeID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `itemtype` VALUES (12, '全部', 'this is Use for Vue for data!');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of magic
-- ----------------------------

-- ----------------------------
-- Table structure for maxmap
-- ----------------------------
DROP TABLE IF EXISTS `maxmap`;
CREATE TABLE `maxmap`  (
  `maxMapID` int(11) NOT NULL AUTO_INCREMENT,
  `maxName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`maxMapID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `maxmap` VALUES (10, '全部');

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
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

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
  `accountID` int(255) NOT NULL,
  `reportTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`reportListID`) USING BTREE,
  INDEX `accountID`(`accountID`) USING BTREE,
  CONSTRAINT `report_ibfk_1` FOREIGN KEY (`accountID`) REFERENCES `account` (`accountID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of report
-- ----------------------------

-- ----------------------------
-- Table structure for reprint
-- ----------------------------
DROP TABLE IF EXISTS `reprint`;
CREATE TABLE `reprint`  (
  `ReprintID` int(11) NOT NULL AUTO_INCREMENT,
  `SpritID` int(11) NOT NULL,
  `ReprintTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ReprintID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reprint
-- ----------------------------
INSERT INTO `reprint` VALUES (1, 41, '2020年7月9日');
INSERT INTO `reprint` VALUES (2, 44, '2020年7月16日');
INSERT INTO `reprint` VALUES (3, 46, '2020年7月23日');
INSERT INTO `reprint` VALUES (4, 56, '2020年7月30日');
INSERT INTO `reprint` VALUES (5, 54, '2020年8月6日');
INSERT INTO `reprint` VALUES (6, 39, '2020年8月13日');
INSERT INTO `reprint` VALUES (7, 53, '2020年8月27日');
INSERT INTO `reprint` VALUES (8, 63, '2020年9月10日');
INSERT INTO `reprint` VALUES (9, 62, '2020年9月24日');
INSERT INTO `reprint` VALUES (10, 64, '2020年10月1日');
INSERT INTO `reprint` VALUES (11, 47, '2021年10月8日');
INSERT INTO `reprint` VALUES (12, 61, '2021年10月22日');
INSERT INTO `reprint` VALUES (13, 45, '2020年11月5日');
INSERT INTO `reprint` VALUES (14, 57, '2020年11月19日');
INSERT INTO `reprint` VALUES (15, 38, '2020年12月3日');
INSERT INTO `reprint` VALUES (16, 41, '2020年12月3日');
INSERT INTO `reprint` VALUES (17, 46, '2020年12月31日');
INSERT INTO `reprint` VALUES (18, 80, '2021年1月14日');
INSERT INTO `reprint` VALUES (19, 50, '2021年1月28日');
INSERT INTO `reprint` VALUES (20, 55, '2021年2月11日');
INSERT INTO `reprint` VALUES (21, 58, '2021年2月18日');
INSERT INTO `reprint` VALUES (22, 43, '2021年2月25日');
INSERT INTO `reprint` VALUES (23, 47, '2021年3月11日');
INSERT INTO `reprint` VALUES (24, 42, '2021年3月25日');
INSERT INTO `reprint` VALUES (25, 104, '2021年4月8日');
INSERT INTO `reprint` VALUES (26, 44, '2021年4月22日');
INSERT INTO `reprint` VALUES (27, 65, '2021年5月1日');
INSERT INTO `reprint` VALUES (28, 49, '2021年5月6日');
INSERT INTO `reprint` VALUES (29, 56, '2021年5月20日');
INSERT INTO `reprint` VALUES (30, 90, '2021年6月3日');
INSERT INTO `reprint` VALUES (31, 54, '2021年6月12日');
INSERT INTO `reprint` VALUES (32, 86, '2021年6月17日');
INSERT INTO `reprint` VALUES (33, 66, '2021年7月1日');
INSERT INTO `reprint` VALUES (34, 60, '2021年7月15日');
INSERT INTO `reprint` VALUES (35, 39, '2021年7月29日');
INSERT INTO `reprint` VALUES (36, 117, '2021年8月12日');
INSERT INTO `reprint` VALUES (37, 84, '2021年8月26日');
INSERT INTO `reprint` VALUES (38, 68, '2021年9月9日');
INSERT INTO `reprint` VALUES (39, 87, '2021年9月23日');
INSERT INTO `reprint` VALUES (40, 70, '2021年10月1日');
INSERT INTO `reprint` VALUES (41, 79, '2021年10月7日');
INSERT INTO `reprint` VALUES (42, 88, '2021年10月21日');
INSERT INTO `reprint` VALUES (43, 41, '2021年11月4日');
INSERT INTO `reprint` VALUES (44, 44, '2021年11月18日');
INSERT INTO `reprint` VALUES (45, 99, '2021年12月2日');
INSERT INTO `reprint` VALUES (46, 95, '2021年12月16日');
INSERT INTO `reprint` VALUES (47, 56, '2021年12月25日');
INSERT INTO `reprint` VALUES (48, 75, '2021年12月30日');
INSERT INTO `reprint` VALUES (49, 55, '2022年1月13日');
INSERT INTO `reprint` VALUES (50, 53, '2022年1月27日');
INSERT INTO `reprint` VALUES (51, 64, '2022年2月1日');
INSERT INTO `reprint` VALUES (52, 98, '2022年2月10日');
INSERT INTO `reprint` VALUES (53, 106, '2022年2月24日');
INSERT INTO `reprint` VALUES (54, 80, '2022年3月10日');
INSERT INTO `reprint` VALUES (55, 62, '2022年3月24日');
INSERT INTO `reprint` VALUES (56, 48, '2022年4月7日');
INSERT INTO `reprint` VALUES (57, 90, '2022年4月21日');
INSERT INTO `reprint` VALUES (58, 73, '2022年4月30日');
INSERT INTO `reprint` VALUES (59, 45, '2022年5月5日');

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
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `seasonoractivity` VALUES (10, '小王子', 'Little', 1);
INSERT INTO `seasonoractivity` VALUES (11, '飞翔季', 'Flight', 1);
INSERT INTO `seasonoractivity` VALUES (12, '潜海季', 'Abyss', 1);
INSERT INTO `seasonoractivity` VALUES (13, '常规', 'Normal', 1);
INSERT INTO `seasonoractivity` VALUES (14, '全部', 'None', 0);
INSERT INTO `seasonoractivity` VALUES (15, '表演季', 'Showmaker', 0);
INSERT INTO `seasonoractivity` VALUES (19, '万圣活动', 'Wanshengjie', 0);
INSERT INTO `seasonoractivity` VALUES (20, '樱花活动', 'sakura', 0);
INSERT INTO `seasonoractivity` VALUES (21, '海洋活动', 'SeA', 0);
INSERT INTO `seasonoractivity` VALUES (22, '沙滩活动', 'Beach', 0);
INSERT INTO `seasonoractivity` VALUES (23, '圣诞活动', 'Merry', 0);
INSERT INTO `seasonoractivity` VALUES (24, '联动礼包', 'OtherCost', 0);
INSERT INTO `seasonoractivity` VALUES (25, '彩虹活动', 'RanBow', 0);
INSERT INTO `seasonoractivity` VALUES (26, '周年活动', 'Birthday', 0);
INSERT INTO `seasonoractivity` VALUES (27, '其他活动', 'OtherActivity', 0);
INSERT INTO `seasonoractivity` VALUES (28, '情人活动', 'Love', 0);
INSERT INTO `seasonoractivity` VALUES (29, '春节活动', 'ChinaDay', 0);

-- ----------------------------
-- Table structure for sprit
-- ----------------------------
DROP TABLE IF EXISTS `sprit`;
CREATE TABLE `sprit`  (
  `spritID` int(11) NOT NULL AUTO_INCREMENT,
  `spritName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `spritCost` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `spritLink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `srID` int(11) NOT NULL,
  `miniMapID` int(11) NOT NULL,
  PRIMARY KEY (`spritID`) USING BTREE,
  INDEX `miniMapID`(`miniMapID`) USING BTREE,
  INDEX `srID`(`srID`) USING BTREE,
  CONSTRAINT `sprit_ibfk_2` FOREIGN KEY (`miniMapID`) REFERENCES `minimap` (`miniMapID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sprit_ibfk_3` FOREIGN KEY (`srID`) REFERENCES `seasonoractivity` (`srID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 130 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sprit
-- ----------------------------
INSERT INTO `sprit` VALUES (1, '指路蜡烛匠', 'chendao-1-cost.png', 'chendao-1.png', 13, 1);
INSERT INTO `sprit` VALUES (2, '回绝行者', 'chendao-2-cost.png', 'chendao-2.png', 13, 1);
INSERT INTO `sprit` VALUES (3, '引路望星客', 'chendao-3-cost.png', 'chendao-3.png', 13, 1);
INSERT INTO `sprit` VALUES (4, '犯困船工', 'yunye-1-cost.png', 'yunye-1.png', 13, 1);
INSERT INTO `sprit` VALUES (5, '挥手钟匠', 'yunye-2-cost.png', 'yunye-2.png', 13, 9);
INSERT INTO `sprit` VALUES (6, '引蝶人', 'yunye-3-cost.png', 'yunye-3.png', 13, 6);
INSERT INTO `sprit` VALUES (7, '欢笑光农', 'yunye-4-cost.png', 'yunye-4.png', 13, 9);
INSERT INTO `sprit` VALUES (8, '鸟语者', 'yunye-5-cost.png', 'yunye-5.png', 13, 8);
INSERT INTO `sprit` VALUES (9, '鼓掌钟匠', 'yunye-6-cost.png', 'yunye-6.png', 13, 9);
INSERT INTO `sprit` VALUES (10, '辛劳码头工', 'yunye-7-cost.png', 'yunye-7.png', 13, 7);
INSERT INTO `sprit` VALUES (11, '祭光参事', 'yunye-8-cost.png', 'yunye-8.png', 13, 9);
INSERT INTO `sprit` VALUES (12, '羞涩勘探者', 'yulin-1-cost.png', 'yulin-1.png', 13, 16);
INSERT INTO `sprit` VALUES (13, '沮丧猎人', 'yulin-2-cost.png', 'yulin-2.png', 13, 19);
INSERT INTO `sprit` VALUES (14, '悲伤矿工', 'yulin-3-cost.png', 'yulin-3.png', 13, 19);
INSERT INTO `sprit` VALUES (15, '躲猫猫拓荒者', 'yulin-4-cost.png', 'yulin-4.png', 13, 16);
INSERT INTO `sprit` VALUES (16, '发抖开拓者', 'yulin-5-cost.png', 'yulin-5.png', 13, 14);
INSERT INTO `sprit` VALUES (17, '歉意伐木工', 'yulin-6-cost.png', 'yulin-6.png', 13, 19);
INSERT INTO `sprit` VALUES (18, '娇嗔搬运工', 'yulin-7-cost.png', 'yulin-7.png', 13, 16);
INSERT INTO `sprit` VALUES (19, '鲸语者', 'yulin-8-cost.png', 'yulin-8.png', 13, 19);
INSERT INTO `sprit` VALUES (20, '自信观光客', 'xiagu-1-cost.png', 'xiagu-1.png', 13, 23);
INSERT INTO `sprit` VALUES (21, '鞠躬季军', 'xiagu-2-cost.png', 'xiagu-2.png', 13, 27);
INSERT INTO `sprit` VALUES (22, '鳐语者', 'xiagu-3-cost.png', 'xiagu-3.png', 13, 24);
INSERT INTO `sprit` VALUES (23, '叫好观众', 'xiagu-4-cost.png', 'xiagu-4.png', 13, 27);
INSERT INTO `sprit` VALUES (24, '倒立运动员', 'xiagu-5-cost.png', 'xiagu-5.png', 13, 24);
INSERT INTO `sprit` VALUES (25, '空翻亚军', 'xiagu-6-cost.png', 'xiagu-6.png', 13, 24);
INSERT INTO `sprit` VALUES (26, '自豪冠军', 'xiagu-7-cost.png', 'xiagu-7.png', 13, 27);
INSERT INTO `sprit` VALUES (27, '昏厥战士', 'mutu-1-cost.png', 'mutu-1.png', 13, 30);
INSERT INTO `sprit` VALUES (28, '无畏战士', 'mutu-2-cost.png', 'mutu-2.png', 13, 32);
INSERT INTO `sprit` VALUES (29, '恐惧难民', 'mutu-3-cost.png', 'mutu-3.png', 13, 30);
INSERT INTO `sprit` VALUES (30, '行礼舰长', 'mutu-4-cost.png', 'mutu-4.png', 13, 34);
INSERT INTO `sprit` VALUES (31, '隐秘幸存者', 'mutu-5-cost.png', 'mutu-5.png', 13, 33);
INSERT INTO `sprit` VALUES (32, '望远舰长', 'mutu-6-cost.png', 'mutu-6.png', 13, 35);
INSERT INTO `sprit` VALUES (33, '气功高人', 'jinge-1-cost.png', 'jinge-1.png', 13, 41);
INSERT INTO `sprit` VALUES (34, '禅修院士', 'jinge-2-cost.png', 'jinge-2.png', 13, 42);
INSERT INTO `sprit` VALUES (35, '灵语者', 'jinge-3-cost.png', 'jinge-3.png', 13, 42);
INSERT INTO `sprit` VALUES (36, '礼貌学者', 'jinge-4-cost.png', 'jinge-4.png', 13, 42);
INSERT INTO `sprit` VALUES (37, '祈祷圣徒', 'jinge-5-cost.png', 'jinge-5.png', 13, 40);
INSERT INTO `sprit` VALUES (38, '挑衅艺伎', '挑衅艺伎-cost.png', '挑衅艺伎.png', 1, 16);
INSERT INTO `sprit` VALUES (39, '跳跃舞者', '跳跃舞者-cost.png', '跳跃舞者.png', 1, 22);
INSERT INTO `sprit` VALUES (40, '感恩季向导', '感恩季向导-cost.png', '感恩季向导.png', 1, 100);
INSERT INTO `sprit` VALUES (41, '刁蛮浪者', '刁蛮浪者-cost.png', '刁蛮浪者.png', 1, 1);
INSERT INTO `sprit` VALUES (42, '敬礼护卫', '敬礼护卫-cost.png', '敬礼护卫.png', 1, 32);
INSERT INTO `sprit` VALUES (43, '拳礼武僧', '拳礼武僧-cost.png', '拳礼武僧.png', 1, 43);
INSERT INTO `sprit` VALUES (44, '舒展大师', '舒展大师-cost.png', '舒展大师.png', 1, 7);
INSERT INTO `sprit` VALUES (45, '蟹语者', '蟹语者-cost.png', '蟹语者.png', 2, 34);
INSERT INTO `sprit` VALUES (46, '击掌光农', '击掌光农-cost.png', '击掌光农.png', 2, 8);
INSERT INTO `sprit` VALUES (47, '肩背追光', '肩背追光-cost.png', '肩背追光.png', 2, 1);
INSERT INTO `sprit` VALUES (48, '静光学者', '静光学者-cost.png', '静光学者.png', 2, 43);
INSERT INTO `sprit` VALUES (49, '螺旋舞冠', '螺旋舞冠-cost.png', '螺旋舞冠.png', 2, 23);
INSERT INTO `sprit` VALUES (50, '随性拓荒者', '随性拓荒者-cost.png', '随性拓荒者.png', 2, 16);
INSERT INTO `sprit` VALUES (51, '追光季向导', '追光季向导-cost.png', '追光季向导.png', 2, 100);
INSERT INTO `sprit` VALUES (52, '归属季向导', '归属季向导-cost.png', '归属季向导.png', 3, 100);
INSERT INTO `sprit` VALUES (53, '火花家长', '火花家长-cost.png', '火花家长.png', 3, 28);
INSERT INTO `sprit` VALUES (54, '蓬头青年', '蓬头青年-cost.png', '蓬头青年.png', 3, 18);
INSERT INTO `sprit` VALUES (55, '踏舞孩童', '踏舞孩童-cost.png', '踏舞孩童.png', 3, 2);
INSERT INTO `sprit` VALUES (56, '智慧长者', '智慧长者-cost.png', '智慧长者.png', 3, 38);
INSERT INTO `sprit` VALUES (57, '不舍家长', '不舍家长-cost.png', '不舍家长.png', 3, 33);
INSERT INTO `sprit` VALUES (58, '彩纸表亲', '彩纸表亲-cost.png', '彩纸表亲.png', 3, 6);
INSERT INTO `sprit` VALUES (59, '向导', '向导-cost.png', '向导.png', 4, 100);
INSERT INTO `sprit` VALUES (60, '旋转舞者', '旋转舞者-cost.png', '旋转舞者.png', 4, 8);
INSERT INTO `sprit` VALUES (61, '迎宾侍者', '迎宾侍者-cost.png', '迎宾侍者.png', 4, 1);
INSERT INTO `sprit` VALUES (62, '致敬钢琴家', '致敬钢琴家-cost.png', '致敬钢琴家.png', 4, 33);
INSERT INTO `sprit` VALUES (63, '沉思编导', '沉思编导-cost.png', '沉思编导.png', 4, 37);
INSERT INTO `sprit` VALUES (64, '抛球杂耍', '抛球杂耍-cost.png', '抛球杂耍.png', 4, 23);
INSERT INTO `sprit` VALUES (65, '献情演员', '献情演员-cost.png', '献情演员.png', 4, 19);
INSERT INTO `sprit` VALUES (66, '放松日浴者', '放松日浴者-cost.png', '放松日浴者.png', 6, 11);
INSERT INTO `sprit` VALUES (67, '飞翔季向导', '飞翔季向导-cost.png', '飞翔季向导.png', 11, 100);
INSERT INTO `sprit` VALUES (68, '风先知', '风先知-cost.png', '风先知.png', 7, 2);
INSERT INTO `sprit` VALUES (69, '疯狂的舞台手', '疯狂的舞台手-cost.png', '疯狂的舞台手.png', 15, 101);
INSERT INTO `sprit` VALUES (70, '固执登山者', '固执登山者-cost.png', '固执登山者.png', 6, 11);
INSERT INTO `sprit` VALUES (71, '管事小队长', '管事小队长-cost.png', '管事小队长.png', 9, 105);
INSERT INTO `sprit` VALUES (72, '光之私语者', '光之私语者-cost.png', '光之私语者.png', 11, 103);
INSERT INTO `sprit` VALUES (73, '回旋大师', '回旋大师-cost.png', '回旋大师.png', 8, 106);
INSERT INTO `sprit` VALUES (74, '活泼导航员', '活泼导航员-cost.png', '活泼导航员.png', 11, 103);
INSERT INTO `sprit` VALUES (75, '火先知', '火先知-cost.png', '火先知.png', 7, 2);
INSERT INTO `sprit` VALUES (76, '集结季向导', '集结季向导-cost.png', '集结季向导.png', 9, 100);
INSERT INTO `sprit` VALUES (77, '健忘的讲故事者', '健忘的讲故事者-cost.png', '健忘的讲故事者.png', 15, 101);
INSERT INTO `sprit` VALUES (78, '焦虑渔夫', '焦虑渔夫-cost.png', '焦虑渔夫.png', 12, 102);
INSERT INTO `sprit` VALUES (79, '瞌睡木匠', '瞌睡木匠-cost.png', '瞌睡木匠.png', 5, 31);
INSERT INTO `sprit` VALUES (80, '冷漠术士', '冷漠术士-cost.png', '冷漠术士.png', 5, 31);
INSERT INTO `sprit` VALUES (81, '忙碌的点灯人', '忙碌的点灯人-cost.png', '忙碌的点灯人.png', 10, 104);
INSERT INTO `sprit` VALUES (82, '茫然植物学生', '茫然植物学生-cost.png', '茫然植物学生.png', 9, 105);
INSERT INTO `sprit` VALUES (83, '梦想季向导', '梦想季向导-cost.png', '梦想季向导.png', 8, 100);
INSERT INTO `sprit` VALUES (84, '鸣谢收藏家', '鸣谢收藏家-cost.png', '鸣谢收藏家.png', 6, 11);
INSERT INTO `sprit` VALUES (85, '魔法季向导', '魔法季向导-cost.png', '魔法季向导.png', 5, 100);
INSERT INTO `sprit` VALUES (86, '默许壁画家', '默许壁画家-cost.png', '默许壁画家.png', 5, 31);
INSERT INTO `sprit` VALUES (87, '母语者', '母语者-cost.png', '母语者.png', 6, 11);
INSERT INTO `sprit` VALUES (88, '内秀书虫', '内秀书虫-cost.png', '内秀书虫.png', 6, 11);
INSERT INTO `sprit` VALUES (89, '谦逊的舞者', '谦逊的舞者-cost.png', '谦逊的舞者.png', 15, 101);
INSERT INTO `sprit` VALUES (90, '情绪草药师', '情绪草药师-cost.png', '情绪草药师.png', 5, 31);
INSERT INTO `sprit` VALUES (91, '热血运动员', '热血运动员-cost.png', '热血运动员.png', 6, 11);
INSERT INTO `sprit` VALUES (92, '傻笑童子军', '傻笑童子军-cost.png', '傻笑童子军.png', 9, 105);
INSERT INTO `sprit` VALUES (93, '深渊季向导', '深渊季向导-cost.png', '深渊季向导.png', 12, 100);
INSERT INTO `sprit` VALUES (94, '圣岛季向导', '圣岛季向导-cost.png', '圣岛季向导.png', 6, 100);
INSERT INTO `sprit` VALUES (95, '水先知', '水先知-cost.png', '水先知.png', 7, 2);
INSERT INTO `sprit` VALUES (96, '天才建筑师', '天才建筑师-cost.png', '天才建筑师.png', 11, 103);
INSERT INTO `sprit` VALUES (97, '跳舞艺人', '跳舞艺人-cost.png', '跳舞艺人.png', 8, 106);
INSERT INTO `sprit` VALUES (98, '偷窥邮差', '偷窥邮差-cost.png', '偷窥邮差.png', 8, 106);
INSERT INTO `sprit` VALUES (99, '土先知', '土先知-cost.png', '土先知.png', 7, 2);
INSERT INTO `sprit` VALUES (100, '颓丧的士兵', '颓丧的士兵-cost.png', '颓丧的士兵.png', 10, 104);
INSERT INTO `sprit` VALUES (101, '威严舰长', '威严舰长-cost.png', '威严舰长.png', 12, 102);
INSERT INTO `sprit` VALUES (102, '嬉戏炮手', '嬉戏炮手-cost.png', '嬉戏炮手.png', 12, 102);
INSERT INTO `sprit` VALUES (103, '小王子季向导', '小王子季向导-cost.png', '小王子季向导.png', 10, 100);
INSERT INTO `sprit` VALUES (104, '蟹舞者', '蟹舞者-cost.png', '蟹舞者.png', 5, 31);
INSERT INTO `sprit` VALUES (105, '星星收集者', '星星收集者-cost.png', '星星收集者.png', 10, 104);
INSERT INTO `sprit` VALUES (106, '熊抱雪人', '熊抱雪人-cost.png', '熊抱雪人.png', 8, 106);
INSERT INTO `sprit` VALUES (107, '预言季向导', '预言季向导-cost.png', '预言季向导.png', 7, 100);
INSERT INTO `sprit` VALUES (108, '圆润的音乐家', '圆润的音乐家-cost.png', '圆润的音乐家.png', 15, 101);
INSERT INTO `sprit` VALUES (109, '沾沾自喜的自恋狂', '沾沾自喜的自恋狂-cost.png', '沾沾自喜的自恋狂.png', 10, 104);
INSERT INTO `sprit` VALUES (110, '正步冒险家', '正步冒险家-cost.png', '正步冒险家.png', 9, 105);
INSERT INTO `sprit` VALUES (111, '白日梦森林人', '白日梦森林人-cost.png', '白日梦森林人.png', 9, 105);
INSERT INTO `sprit` VALUES (112, '笨拙水手', '笨拙水手-cost.png', '笨拙水手.png', 12, 102);
INSERT INTO `sprit` VALUES (113, '编钟修补匠', '编钟修补匠-cost.png', '编钟修补匠.png', 11, 103);
INSERT INTO `sprit` VALUES (114, '表演季向导', '表演季向导-cost.png', '表演季向导.png', 15, 100);
INSERT INTO `sprit` VALUES (115, '打喷嚏的地理学家', '打喷嚏的地理学家-cost.png', '打喷嚏的地理学家.png', 10, 104);
INSERT INTO `sprit` VALUES (116, '胆小鬼学员', '胆小鬼学员-cost.png', '胆小鬼学员.png', 9, 105);
INSERT INTO `sprit` VALUES (117, '稻草人农夫', '稻草人农夫-cost.png', '稻草人农夫.png', 5, 31);
INSERT INTO `sprit` VALUES (118, '发号施令的统治者', '发号施令的统治者-cost.png', '发号施令的统治者.png', 10, 104);
INSERT INTO `sprit` VALUES (119, '万圣活动', '万圣活动-cost.png', '万圣活动.png', 19, 100);
INSERT INTO `sprit` VALUES (120, '樱花活动', '樱花活动-cost.png', '樱花活动.png', 20, 100);
INSERT INTO `sprit` VALUES (121, '海洋活动', '海洋活动-cost.png', '海洋活动.png', 21, 100);
INSERT INTO `sprit` VALUES (122, '沙滩活动', '沙滩活动-cost.png', '沙滩活动.png', 22, 100);
INSERT INTO `sprit` VALUES (123, '圣诞活动', '圣诞活动-cost.png', '圣诞活动.png', 23, 100);
INSERT INTO `sprit` VALUES (124, '其他联动', '其他联动-cost.png', '其他联动.png', 24, 100);
INSERT INTO `sprit` VALUES (125, '彩虹活动', '彩虹活动-cost.png', '彩虹活动.png', 25, 100);
INSERT INTO `sprit` VALUES (126, '周年活动', '周年活动-cost.png', '周年活动.png', 26, 100);
INSERT INTO `sprit` VALUES (127, '情人活动', '情人活动-cost.png', '情人活动.png', 27, 100);
INSERT INTO `sprit` VALUES (128, '春节活动', '春节活动-cost.png', '春节活动.png', 28, 100);
INSERT INTO `sprit` VALUES (129, '其他', '常规-cost.png', '常规.png', 13, 100);

-- ----------------------------
-- Table structure for strategy
-- ----------------------------
DROP TABLE IF EXISTS `strategy`;
CREATE TABLE `strategy`  (
  `strategyID` int(11) NOT NULL,
  `strategyName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `strategyLink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`strategyID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of strategy
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
