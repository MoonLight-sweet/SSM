/*
 Navicat Premium Data Transfer

 Source Server         : Simon
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : management

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 18/10/2022 00:01:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for active
-- ----------------------------
DROP TABLE IF EXISTS `active`;
CREATE TABLE `active`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xiaoqu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` datetime(0) NULL DEFAULT NULL,
  `end_time` datetime(0) NULL DEFAULT NULL,
  `creat_time` timestamp(0) NOT NULL DEFAULT '1997-01-01 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active_body` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of active
-- ----------------------------
INSERT INTO `active` VALUES (2, '0', '元旦晚会wqe', '东湖一号asd', '东湖物业qwew', '2022-07-15 04:00:00', '2022-07-14 04:00:00', '2022-07-14 14:19:32', '0', 'asdas');
INSERT INTO `active` VALUES (3, '0', '元旦晚会', '东湖一号', '东湖物业', '2022-07-13 05:24:23', '2022-07-13 05:24:20', '2022-07-14 14:19:17', '0', 'qweqeqe');
INSERT INTO `active` VALUES (4, '东湖小区', '元旦晚会', '东湖一号', '东湖物业', '2022-07-12 15:24:23', '2022-07-12 15:24:20', '2022-07-12 15:24:26', '1', NULL);
INSERT INTO `active` VALUES (9, '0', 'qweq', 'dsa', 'qwe', '2022-07-14 00:00:00', '2022-07-14 00:00:00', '2022-07-14 14:20:38', '0', 'qwe');
INSERT INTO `active` VALUES (10, '0', 'qwe', 'asd', 'qwe', '2022-07-14 00:00:00', '2022-07-14 00:00:00', '2022-07-14 14:20:50', '1', 'qweqwe');
INSERT INTO `active` VALUES (12, '东湖小区', '56564', 'qweq', 'weq', '2022-07-13 00:00:00', '2022-07-13 00:00:00', '2022-07-13 16:25:18', '1', 'wqeqweqe');
INSERT INTO `active` VALUES (13, '东湖小区', 'qweq', 'qwewq', 'asda', '2022-07-13 00:00:00', '2022-07-13 00:00:00', '2022-07-13 16:25:18', '1', 'qweqwe');
INSERT INTO `active` VALUES (14, '金华万府', '45645', '789', '636666666', '2022-07-13 00:00:00', '2022-07-13 00:00:00', '2022-07-13 16:25:18', '1', '1321');
INSERT INTO `active` VALUES (15, '金华万府', 'wqeq', 'asdasd', 'qweqwe', '2022-07-29 00:00:00', '2022-07-30 00:00:00', '2022-07-15 09:23:45', '1', 'wqweq');
INSERT INTO `active` VALUES (16, '金华万府', 'qewq', 'sssss', 'eeee', '2022-07-29 00:00:00', '2022-07-30 00:00:00', '1997-01-01 00:00:00', '1', 'qweqe');

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `numbers` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remarks` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO `building` VALUES (14, '1栋', '2单元', '测试数据');
INSERT INTO `building` VALUES (16, '12栋', '2单元', '添加备注信息  新开盘');
INSERT INTO `building` VALUES (19, '12栋', '2单元', '测试编辑功能');

-- ----------------------------
-- Table structure for carcharge
-- ----------------------------
DROP TABLE IF EXISTS `carcharge`;
CREATE TABLE `carcharge`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pay_date` datetime(0) NULL DEFAULT NULL,
  `end_date` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` double(10, 2) NULL DEFAULT NULL,
  `status` int(2) NULL DEFAULT NULL,
  `owner_id` int(10) NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收费类型',
  `park_id` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of carcharge
-- ----------------------------
INSERT INTO `carcharge` VALUES (3, '2020-09-30 16:00:00', '2020-12-31', 1200.00, 2, 2, '221', '停车费', 2);
INSERT INTO `carcharge` VALUES (9, '2021-08-27 17:47:10', '2021-12-31', 2000.00, 1, 9, NULL, '停车费', 3);
INSERT INTO `carcharge` VALUES (11, '2021-08-27 17:47:10', '2021-12-31', 2000.00, 1, 9, NULL, '停车费', 3);
INSERT INTO `carcharge` VALUES (12, '2021-08-27 17:47:10', '2021-12-31', 2000.00, 1, 9, NULL, '停车费', 3);
INSERT INTO `carcharge` VALUES (25, '2021-08-27 17:47:10', '2021-12-31', 2000.00, 1, 9, NULL, '停车费', 3);
INSERT INTO `carcharge` VALUES (26, '2020-09-30 16:00:00', '2020-12-31', 1200.00, 1, 1, '221', '停车费', 1);
INSERT INTO `carcharge` VALUES (35, '2021-08-27 17:47:10', '2021-12-31', 2000.00, 2, 9, NULL, '停车费', 3);
INSERT INTO `carcharge` VALUES (38, '2020-09-30 16:00:00', '2020-12-31', 1200.00, 1, 1, '221', '停车费', 1);
INSERT INTO `carcharge` VALUES (39, '2021-08-27 17:47:10', '2021-12-31', 2000.00, 2, 9, NULL, '停车费', 3);
INSERT INTO `carcharge` VALUES (40, '2021-08-27 17:47:10', '2021-12-31', 2000.00, 2, 9, NULL, '停车费', 3);
INSERT INTO `carcharge` VALUES (41, '2021-08-27 17:47:10', '2021-12-31', 2000.00, 2, 9, NULL, '停车费', 3);
INSERT INTO `carcharge` VALUES (42, '2021-08-27 17:47:10', '2021-12-31', 2000.00, 2, 9, NULL, '停车费', 3);
INSERT INTO `carcharge` VALUES (43, '2021-08-27 17:47:10', '2021-12-31', 2000.00, 2, 9, NULL, '停车费', 3);
INSERT INTO `carcharge` VALUES (44, '2021-08-27 17:47:10', '2021-12-31', 2000.00, 2, 9, NULL, '停车费', 3);
INSERT INTO `carcharge` VALUES (45, '2021-08-27 17:47:10', '2021-12-31', 2000.00, 2, 9, NULL, '停车费', 3);
INSERT INTO `carcharge` VALUES (46, '2021-08-27 17:47:10', '2021-12-31', 2000.00, 2, 9, NULL, '停车费', 3);
INSERT INTO `carcharge` VALUES (47, '2021-08-27 17:47:10', '2021-12-31', 2000.00, 2, 9, NULL, '停车费', 3);
INSERT INTO `carcharge` VALUES (48, '2020-09-30 16:00:00', '2020-12-31', 1200.00, 1, 1, '221', '停车费', 1);
INSERT INTO `carcharge` VALUES (49, '2020-09-30 16:00:00', '2020-12-31', 1200.00, 1, 1, '221', '停车费', 1);
INSERT INTO `carcharge` VALUES (50, '2020-09-30 16:00:00', '2020-12-31', 1200.00, 1, 1, '221', '停车费', 1);
INSERT INTO `carcharge` VALUES (51, '2020-09-30 16:00:00', '2020-12-31', 1200.00, 1, 1, '221', '停车费', 1);
INSERT INTO `carcharge` VALUES (52, '2020-09-30 16:00:00', '2020-12-31', 1200.00, 1, 1, '221', '停车费', 1);
INSERT INTO `carcharge` VALUES (53, '2020-09-30 16:00:00', '2020-12-31', 1200.00, 1, 1, '221', '停车费', 1);
INSERT INTO `carcharge` VALUES (54, '2020-09-30 16:00:00', '2020-12-31', 1200.00, 1, 1, '221', '停车费', 1);
INSERT INTO `carcharge` VALUES (55, '2020-09-30 16:00:00', '2020-12-31', 1200.00, 1, 1, '221', '停车费', 1);
INSERT INTO `carcharge` VALUES (56, '2020-09-30 16:00:00', '2020-12-31', 1200.00, 1, 1, '221', '停车费', 1);
INSERT INTO `carcharge` VALUES (57, '2020-09-30 16:00:00', '2020-12-31', 1200.00, 1, 1, '221', '停车费', 1);
INSERT INTO `carcharge` VALUES (58, '2020-09-30 16:00:00', '2020-12-31', 1200.00, 1, 1, '221', '停车费', 1);
INSERT INTO `carcharge` VALUES (59, '2020-09-30 16:00:00', '2020-12-31', 1200.00, 1, 1, '221', '停车费', 1);
INSERT INTO `carcharge` VALUES (60, '2020-09-30 16:00:00', '2020-12-31', 1200.00, 1, 1, '221', '停车费', 1);
INSERT INTO `carcharge` VALUES (61, '2020-09-30 16:00:00', '2020-12-31', 1200.00, 1, 1, '221', '停车费', 1);
INSERT INTO `carcharge` VALUES (62, '2020-09-30 16:00:00', '2020-12-31', 1200.00, 1, 1, '221', '停车费', 1);
INSERT INTO `carcharge` VALUES (63, '2020-09-30 16:00:00', '2020-12-31', 1200.00, 1, 1, '221', '停车费', 1);

-- ----------------------------
-- Table structure for clockin
-- ----------------------------
DROP TABLE IF EXISTS `clockin`;
CREATE TABLE `clockin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clock_in_time` datetime(0) NULL DEFAULT NULL,
  `owner_id` int(11) NULL DEFAULT NULL,
  `house_id` int(11) NULL DEFAULT NULL,
  `building_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of clockin
-- ----------------------------
INSERT INTO `clockin` VALUES (1, '2021-04-01 02:42:55', 1, 1, 1);
INSERT INTO `clockin` VALUES (4, '2021-04-20 14:59:13', 2, 2, 7);
INSERT INTO `clockin` VALUES (11, '2021-04-25 07:22:02', 1, 1, 1);
INSERT INTO `clockin` VALUES (12, '2021-04-26 07:22:29', 2, 2, 7);
INSERT INTO `clockin` VALUES (14, '2021-04-27 07:34:24', 1, 1, 1);
INSERT INTO `clockin` VALUES (15, '2021-04-27 07:35:23', 2, 2, 7);

-- ----------------------------
-- Table structure for clockinnew
-- ----------------------------
DROP TABLE IF EXISTS `clockinnew`;
CREATE TABLE `clockinnew`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_date` datetime(0) NULL DEFAULT NULL,
  `owner_id` int(11) NULL DEFAULT NULL,
  `type1` int(11) NULL DEFAULT NULL COMMENT '是否为疑似病例如咳嗽，发热（0或1）',
  `type2` int(11) NULL DEFAULT NULL COMMENT '是否确诊为肺炎病例',
  `today_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of clockinnew
-- ----------------------------
INSERT INTO `clockinnew` VALUES (1, '2021-04-26 13:20:32', 2, 0, 0, '江西省南昌市御景花园小区16栋1单元601', '无');
INSERT INTO `clockinnew` VALUES (3, '2021-04-25 14:34:06', 2, 0, 0, '江西省南昌市御景花园小区16栋1单元601', '无');
INSERT INTO `clockinnew` VALUES (6, '2021-04-26 16:00:00', 2, 0, 0, '测试', '');
INSERT INTO `clockinnew` VALUES (16, '2021-04-27 16:00:00', 2, 0, 0, '测试', '无');
INSERT INTO `clockinnew` VALUES (17, '2021-04-27 16:00:00', 1, 1, 0, '测试', 'v二十');

-- ----------------------------
-- Table structure for complain
-- ----------------------------
DROP TABLE IF EXISTS `complain`;
CREATE TABLE `complain`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xiaoqu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `complain_personnel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `complain_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `complain_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creat_time` timestamp(0) NOT NULL DEFAULT '1997-01-01 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of complain
-- ----------------------------
INSERT INTO `complain` VALUES (1, '东湖小区', '蔡伟男', '宠物太多了', '减少宠物数量', '2022-07-15 10:04:50', '1');
INSERT INTO `complain` VALUES (2, '东湖小区', '蔡伟男', '宠物太多了', '减少宠物数量', '2022-07-15 10:05:13', '0');
INSERT INTO `complain` VALUES (3, '东湖小区', '蔡伟男', '宠物太多了', '减少宠物数量', '2022-07-15 10:05:15', '1');
INSERT INTO `complain` VALUES (4, '东湖小区', '蔡伟男7', '宠物太多了', '减少宠物数量', '2022-07-15 10:05:42', '0');
INSERT INTO `complain` VALUES (5, '东湖小区', '蔡伟男8', '宠物太多了', '减少宠物数量', '2022-07-15 10:05:38', '1');
INSERT INTO `complain` VALUES (10, '金华万府', 'sssssssssssssssss', 'xxxxxxxxx', 'xxxxxxxx', '2022-07-15 11:31:11', '1');

-- ----------------------------
-- Table structure for complaint
-- ----------------------------
DROP TABLE IF EXISTS `complaint`;
CREATE TABLE `complaint`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `com_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_date` datetime(0) NULL DEFAULT NULL,
  `handle_date` datetime(0) NULL DEFAULT NULL,
  `owner_id` int(11) NULL DEFAULT NULL,
  `status` int(2) NULL DEFAULT NULL,
  `clr` int(11) NULL DEFAULT NULL COMMENT '处理人',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of complaint
-- ----------------------------
INSERT INTO `complaint` VALUES (1, '1', '2020-11-22 11:47:46', NULL, 1, 1, NULL, '垃圾经常乱放');
INSERT INTO `complaint` VALUES (2, '2', '2020-11-17 11:48:15', '2020-11-21 11:48:21', 1, 1, 111, '绿植被拔了');
INSERT INTO `complaint` VALUES (4, '1', '2020-11-24 14:21:01', NULL, 2, 0, NULL, '垃圾乱放没解决');

-- ----------------------------
-- Table structure for db_asset
-- ----------------------------
DROP TABLE IF EXISTS `db_asset`;
CREATE TABLE `db_asset`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `communityName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rateName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `amount` varchar(2550) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `figure` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `figureDate` date NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createDate` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_asset
-- ----------------------------
INSERT INTO `db_asset` VALUES (19, '东湖小区', '停车位', '张三', '600', '500', '2022-07-05', '无', '2022-07-15');
INSERT INTO `db_asset` VALUES (20, '金域华府', '电梯广告位', 'lisa', '700', '600', '2022-07-06', '优惠一百', '2022-07-15');

-- ----------------------------
-- Table structure for db_building
-- ----------------------------
DROP TABLE IF EXISTS `db_building`;
CREATE TABLE `db_building`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buildingNum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roomNum` int(11) NULL DEFAULT NULL,
  `buildingDesc` varchar(2550) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `buildHiredate` date NULL DEFAULT NULL,
  `cid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of db_building
-- ----------------------------
INSERT INTO `db_building` VALUES (1, 'CJ20191210001', 'A栋', 200, '金域华府欢迎您', '2021-02-09', 103);
INSERT INTO `db_building` VALUES (3, 'CJ20191210003', '1栋', 150, '望江台欢迎您', '2021-02-05', 2);
INSERT INTO `db_building` VALUES (4, 'sdfa4524', 'B栋', 132, '阿巴阿巴', '2021-02-05', 106);
INSERT INTO `db_building` VALUES (5, 'DF888455', 'C栋', 3, '阿巴阿巴', '2021-11-03', 95);
INSERT INTO `db_building` VALUES (7, 'sdfa4524', 'D栋', 254, '阿巴阿巴', '2021-11-03', 62);
INSERT INTO `db_building` VALUES (8, 'DF888487', 'E栋', 2222, '阿巴阿巴', '2021-11-03', 95);
INSERT INTO `db_building` VALUES (9, 'DF888452', 'F栋', 144, '阿巴阿巴', '2021-11-03', 62);
INSERT INTO `db_building` VALUES (10, 'DF225511', 'Y栋', 20, '阿巴阿巴', '2021-11-03', 83);
INSERT INTO `db_building` VALUES (13, 'DF888444', '3栋', 3, '阿巴阿巴', '2021-11-03', 97);
INSERT INTO `db_building` VALUES (17, 'sr444455', 'rr', 33, '阿巴阿巴', '2021-11-04', 106);
INSERT INTO `db_building` VALUES (18, 'DF888444', 'R栋', 50, '阿巴阿巴', '2021-11-05', 96);

-- ----------------------------
-- Table structure for db_car
-- ----------------------------
DROP TABLE IF EXISTS `db_car`;
CREATE TABLE `db_car`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '车辆ID',
  `oid` int(11) NULL DEFAULT NULL COMMENT '所属成员（业主）',
  `carNumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车牌号',
  `color` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆颜色',
  `picture` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆照片',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车辆表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of db_car
-- ----------------------------
INSERT INTO `db_car` VALUES (1, 1, 'HY5533', '灰色', 'c1.jpg', '编辑测试', '2022-07-15 14:47:48');
INSERT INTO `db_car` VALUES (2, 17, 'HQ5531', '浅蓝', 'c2.jpg', '阿巴阿巴', '2021-11-12 09:57:03');
INSERT INTO `db_car` VALUES (3, 12, 'HQ5535', '黑色', 'c3.jpg', '阿巴阿巴', '2021-11-06 11:03:42');
INSERT INTO `db_car` VALUES (9, 19, 'HQ5585', '白色', 'c4.jpg', '阿巴阿巴', '2021-11-10 22:16:21');
INSERT INTO `db_car` VALUES (10, 19, 'HQ5585', '白色', 'c4.jpg', '阿巴阿巴', '2021-11-10 22:16:21');
INSERT INTO `db_car` VALUES (11, 31, 'XY6666', '黄色', 'c5.jpg', 'dfs', '2022-07-15 13:51:42');
INSERT INTO `db_car` VALUES (12, 31, '7454', '546+', '76708863-764b-4c37-b0a0-c0a555729fbc.jpg', '测试编辑插入图片', '2022-07-28 20:24:59');
INSERT INTO `db_car` VALUES (13, 786, '456', '786', '789', '789', '2022-07-15 14:13:35');
INSERT INTO `db_car` VALUES (45, 546, '456', '456', '45', '45', '2022-07-15 14:13:48');
INSERT INTO `db_car` VALUES (85, 786, '786', NULL, '786', '786', '2022-07-15 14:14:17');
INSERT INTO `db_car` VALUES (86, 31, '5421', '78542', NULL, '上传图片测试', '2022-07-15 15:23:54');
INSERT INTO `db_car` VALUES (87, 1, 'regsgfda', 'erfgadasf', 'ba487398-63b8-4b06-b6ef-88a772ae7a18.jpg', '', '2022-07-17 08:48:31');
INSERT INTO `db_car` VALUES (88, 12, '658412', '黄色', '7ffb5ad0-48c1-4585-9aff-10e6820a9065.jpg', '测试', '2022-07-28 20:26:04');

-- ----------------------------
-- Table structure for db_charges
-- ----------------------------
DROP TABLE IF EXISTS `db_charges`;
CREATE TABLE `db_charges`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `communituName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chargeNum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chargeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createDateTime` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_charges
-- ----------------------------
INSERT INTO `db_charges` VALUES (1, '金域华府', 'EP20200105002', '停车位', '2022-07-14');
INSERT INTO `db_charges` VALUES (2, '东华小区', 'EP20200105001', '电梯广告位', '2022-07-12');
INSERT INTO `db_charges` VALUES (3, '东湖小区', '	EP20200105000', '物业费', '2022-07-05');

-- ----------------------------
-- Table structure for db_community
-- ----------------------------
DROP TABLE IF EXISTS `db_community`;
CREATE TABLE `db_community`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `communityNum` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `communityArea` double(20, 2) NULL DEFAULT NULL,
  `buildingNum` int(11) NULL DEFAULT NULL,
  `roomNum` int(11) NULL DEFAULT NULL,
  `img` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `greeningRate` double(10, 2) NULL DEFAULT NULL,
  `developerName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `propertyName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hiredate` date NULL DEFAULT NULL,
  `state` tinyint(1) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of db_community
-- ----------------------------
INSERT INTO `db_community` VALUES (1, 'XY20191210001', '金域华府', '合肥市蜀山区五里墩', 12000.00, 25, 160, 'xq5.jpg', 45.00, '万科', '万科物业', '2020-01-15', 1, NULL);
INSERT INTO `db_community` VALUES (2, 'XY20191210002', '望江台', '合肥市高新区望江西路', 20000.00, 35, 400, 'xq3.jpg', 60.00, '旭辉', '永升物业', '2021-02-19', 1, 1);
INSERT INTO `db_community` VALUES (62, 'XY20191210003', '仙人府', '合肥市蜀山区五里墩', 12000.00, 25, 200, 'xq2.jpg', 70.00, '万科', '万科物业', '2020-01-15', 1, NULL);
INSERT INTO `db_community` VALUES (83, 'XY20191210004', '荔湾区', '广州市', 1300.00, 50, 500, 'xq1.jpg', 90.00, '万科', 'xxx物业', '2021-10-28', 1, NULL);
INSERT INTO `db_community` VALUES (84, 'XY20191210005', '白云区', '广州市', 2340.00, 70, 600, 'xq4.jpg', 80.00, '永泰', 'xxx物业', '2021-10-28', 1, NULL);
INSERT INTO `db_community` VALUES (86, 'XY20191210006', '黄浦区', '广州市', 560.00, 100, 200, 'xq5.jpg', 90.00, '永泰', 'xxx物业', '2021-10-29', 1, NULL);
INSERT INTO `db_community` VALUES (87, 'XY20191210007', '天河区', '广州市', 980.00, 40, 300, 'xq3.jpg', 60.00, '永泰', 'xxx物业', '2021-10-29', 1, NULL);
INSERT INTO `db_community` VALUES (95, 'XY20191210008', '知识区', '广州市', 230.00, 30, 400, 'xq1.jpg', 80.00, '永泰', 'xxx物业', '2021-10-30', 1, NULL);
INSERT INTO `db_community` VALUES (96, 'XY20191210086', '鬼畜区', '广州市', 239.00, 70, 200, 'xq2.jpg', 70.00, '永泰', 'xxx物业', '2021-10-30', 1, NULL);
INSERT INTO `db_community` VALUES (97, 'XY20191210453', '游戏区', '广州市', 265.00, 70, 100, 'xq4.jpg', 90.00, '永泰', 'xxx物业', '2021-10-30', 0, NULL);
INSERT INTO `db_community` VALUES (103, 'XY20191210776', '番禺区', '广州市', 340.00, 40, 300, 'xq2.jpg', 80.00, '万科', 'xxx物业', '2021-10-31', 1, NULL);

-- ----------------------------
-- Table structure for db_device
-- ----------------------------
DROP TABLE IF EXISTS `db_device`;
CREATE TABLE `db_device`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conmunityName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deciveNum` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deciveName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `brand` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `number` int(11) NULL DEFAULT 0,
  `purchaseDate` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `durationService` int(11) NULL DEFAULT 0,
  `createTime` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_device
-- ----------------------------
INSERT INTO `db_device` VALUES (1, '金域华府', 'CJ20200105002', '大疆无人机', '大疆', '2000', 2, '2022-07-10 00:00:00', 10, '2022-07-11 00:00:00');
INSERT INTO `db_device` VALUES (2, '仙人府', 'CJ20200105002', '大疆除草机', '大疆', '500', 3, '2022-07-09 00:00:00', 5, '2022-07-12 00:00:00');

-- ----------------------------
-- Table structure for db_house
-- ----------------------------
DROP TABLE IF EXISTS `db_house`;
CREATE TABLE `db_house`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房屋ID',
  `cid` int(11) NULL DEFAULT NULL COMMENT '所属小区ID',
  `bid` int(11) NULL DEFAULT NULL COMMENT '所属栋数ID',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房产编码',
  `hname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房产名称',
  `ownerName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '户主（业主）名称',
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `roomNum` int(11) NULL DEFAULT NULL COMMENT '房间数',
  `unit` int(11) NULL DEFAULT NULL COMMENT '单元',
  `floor` int(11) NULL DEFAULT NULL COMMENT '楼层',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `liveTime` date NOT NULL COMMENT '入住时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房屋表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of db_house
-- ----------------------------
INSERT INTO `db_house` VALUES (1, 103, 4, 'FC888998', '房产名称7', '张全蛋', '18822223333', 4, 2, 7, '阿巴阿巴', '2021-11-06');
INSERT INTO `db_house` VALUES (2, 95, 7, 'FC888997', '房产名称6', '张全蛋', '18822223333', 2, 1, 6, '阿巴阿巴', '2021-11-04');
INSERT INTO `db_house` VALUES (3, 83, 10, 'FC888996', '房产名称5', '张全蛋', '18822223333', 1, 1, 2, '阿巴阿巴', '2021-11-01');
INSERT INTO `db_house` VALUES (4, 84, 1, 'FC888999', '房产名称8', '张全蛋', '18822223333', 3, 3, 6, '阿巴阿巴', '2021-11-03');
INSERT INTO `db_house` VALUES (7, 1, 1, 'FC888995', '房产名称4', '张全蛋', '18822223333', 3, 3, 5, '阿巴阿巴', '2021-11-02');
INSERT INTO `db_house` VALUES (10, 1, 1, 'FC888993', '房产名称2', '张全蛋', '18822223333', 1, 2, 4, '阿巴阿巴', '2021-11-04');
INSERT INTO `db_house` VALUES (11, 1, 1, 'FC888992', '房产名称1', '张全蛋', '18822223333', 2, 3, 6, '阿巴阿巴', '2021-11-04');
INSERT INTO `db_house` VALUES (12, 1, 1, 'FC888991', '房产名称9', '张全蛋', '18822223333', 3, 2, 6, '阿巴阿巴', '2021-11-04');
INSERT INTO `db_house` VALUES (13, 1, 1, 'FC888990', '测试8', '张全蛋', '18822223333', 4, 3, 7, '阿巴阿巴', '2021-11-04');
INSERT INTO `db_house` VALUES (14, 1, 1, 'FC888950', '测试9', '张全蛋', '18822223333', 4, 4, 6, '阿巴阿巴', '2021-11-04');
INSERT INTO `db_house` VALUES (15, 1, 1, 'FC888951', '测试10', '张全蛋', '18822223333', 4, 5, 6, '阿巴阿巴', '2021-11-04');
INSERT INTO `db_house` VALUES (16, 84, 10, 'FC888952', '测试1', '张全蛋', '18822223333', 2, 2, 5, '阿巴阿巴', '2021-11-05');
INSERT INTO `db_house` VALUES (20, 87, 13, 'DFS55', '测试12', '张全蛋', '18822223333', 5, 6, 4, '阿巴阿巴', '2021-11-10');
INSERT INTO `db_house` VALUES (21, 1, 1, 'CS1', '测试1', '张全蛋', '18822223333', 4, 5, 3, '阿巴阿巴', '2021-11-04');
INSERT INTO `db_house` VALUES (22, 1, 1, 'CS2', '测试2', '张全蛋', '18822223333', 3, 4, 3, '阿巴阿巴', '2021-11-04');
INSERT INTO `db_house` VALUES (23, 1, 1, 'CS3', '测试3', '张全蛋', '18822223333', 2, 7, 4, '阿巴阿巴', '2021-11-04');
INSERT INTO `db_house` VALUES (24, 1, 1, 'CS4', '测试4', '张全蛋', '18822223333', 3, 7, 4, '阿巴阿巴', '2021-11-04');
INSERT INTO `db_house` VALUES (25, 97, 1, 'CS5', '测试5', '张全蛋', '18822223333', 4, 7, 5, '阿巴阿巴', '2021-11-04');
INSERT INTO `db_house` VALUES (26, 96, 1, 'CS6', '测试6', '张全蛋', '18822223333', 3, 7, 5, '阿巴阿巴', '2021-11-04');
INSERT INTO `db_house` VALUES (34, 97, 1, 'CS7', '测试7', '张全蛋', '18822223333', 2, 6, 5, NULL, '2021-11-11');

-- ----------------------------
-- Table structure for db_owner
-- ----------------------------
DROP TABLE IF EXISTS `db_owner`;
CREATE TABLE `db_owner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '业主ID',
  `cid` int(11) NULL DEFAULT NULL COMMENT '所属小区',
  `hid` int(11) NULL DEFAULT NULL COMMENT '所属房产',
  `oname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '成员名称',
  `picture` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '成员照片',
  `idcard` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `profession` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职业',
  `sex` int(11) NULL DEFAULT 0 COMMENT '性别:0-男（默认），1-女',
  `type` int(11) NULL DEFAULT 0 COMMENT '类型:0-房主（默认），1-租客,2-家庭成员',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '无' COMMENT '备注（默认无）',
  `createTime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `birthday` date NULL DEFAULT '0000-00-00' COMMENT '出生日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '业主表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of db_owner
-- ----------------------------
INSERT INTO `db_owner` VALUES (1, 83, 4, '李靖', 'yh3.jpg', '123456789012345678', '18812345678', '54354', 0, 0, '测试', '2021-11-05 18:53:57', '2021-12-31');
INSERT INTO `db_owner` VALUES (3, 83, 9, '哪吒', 'yh1.jpg', '123456789012345678', '18812345678', '54354', 1, 1, '测试', '2021-11-05 18:53:57', '2021-12-31');
INSERT INTO `db_owner` VALUES (10, 84, 10, '敖丙', 'yh3.jpg', '123456789012345678', '18812345678', '54354', 0, 2, '无', '2021-11-05 18:53:57', '2021-12-08');
INSERT INTO `db_owner` VALUES (11, 106, 4, '仙人', 'yh4.jpg', '123456789012345678', '18812345678', '54354', 1, 1, '无', '2021-11-05 18:53:57', '2021-11-30');
INSERT INTO `db_owner` VALUES (12, 106, 4, '张全蛋', 'yh5.jpg', '123456789012345678', '18812345678', '54354', 0, 1, '无', '2021-11-05 18:53:57', '2021-12-31');
INSERT INTO `db_owner` VALUES (13, 106, 4, '大娃', 'yh2.jpg', '123456789012345678', '18812345678', '54354', 1, 2, '无', '2021-11-05 18:53:57', '2021-12-31');
INSERT INTO `db_owner` VALUES (14, 87, 9, '二娃', 'yh4.jpg', '123456789012345678', '18812345678', '2', 1, 0, '无', '2021-11-05 21:43:49', '2021-11-10');
INSERT INTO `db_owner` VALUES (15, 87, 1, '三娃', 'yh5.jpg', '123456789012345678', '18812345678', '律师', 0, 2, '无', '2021-11-05 22:30:05', '2021-11-24');
INSERT INTO `db_owner` VALUES (16, 103, 1, '四娃', 'yh1.jpg', '123456789012345678', '18812345678', '1', 1, 1, '无', '2021-11-05 22:42:42', '2021-11-30');
INSERT INTO `db_owner` VALUES (17, 87, 1, '五娃', 'yh3.jpg', '123456789012345678', '18812345678', '1', 0, 0, '无', '2021-11-05 22:50:56', '2021-11-24');
INSERT INTO `db_owner` VALUES (18, 62, 1, '六娃', 'yh1.jpg', '123456789012345678', '18812345678', '1', 1, 2, '无', '2021-11-06 09:10:25', '2021-11-24');
INSERT INTO `db_owner` VALUES (19, 97, 1, '七娃', 'yh5.jpg', '123456789012345678', '18812345678', '1', 0, 0, '无', '2021-11-10 22:15:40', '2021-11-30');
INSERT INTO `db_owner` VALUES (20, 83, 10, '测试删除1', '4856', '68344', '53456', '4653', 0, 0, '无', '2022-07-07 15:26:45', '2022-07-22');
INSERT INTO `db_owner` VALUES (21, 83, 10, '测试2', '7852', '123132', '454', '5345', 0, 0, '无', '2022-06-29 15:29:52', '2022-07-08');
INSERT INTO `db_owner` VALUES (24, 83, 10, '测试', '54', '12', '456', '546', 0, 0, '无', '2022-07-13 15:47:50', '2022-07-07');
INSERT INTO `db_owner` VALUES (27, 83, 9, '测试', 'yh1.jpg', '123456789012345678', '18812345678', '54354', 1, 1, '无', '2021-11-05 18:53:57', '2021-12-31');
INSERT INTO `db_owner` VALUES (28, 83, 9, '测试', 'yh1.jpg', '123456789012345678', '18812345678', '54354', 1, 1, '无', '2021-11-05 18:53:57', '2021-12-31');
INSERT INTO `db_owner` VALUES (29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '无', '2022-07-13 16:27:47', '0000-00-00');
INSERT INTO `db_owner` VALUES (30, 1, 1, 'rsagffav', NULL, '123456789012345678', '51463416532', '54613', 0, 0, '', '2022-07-13 20:00:39', '2022-07-13');
INSERT INTO `db_owner` VALUES (31, 2, 2, '周涛', 'cfe0c4f9-e7d5-48a6-a1c3-f0bb5a054526.jpg', '123456789012345678', '5416310', '478562310', 1, 0, '', '2022-07-13 20:36:56', '2022-06-29');
INSERT INTO `db_owner` VALUES (33, 452, 534, '48', '7', '787285', NULL, NULL, 0, 0, '无', '2022-07-13 20:48:21', '0000-00-00');

-- ----------------------------
-- Table structure for db_park
-- ----------------------------
DROP TABLE IF EXISTS `db_park`;
CREATE TABLE `db_park`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zid` int(11) NULL DEFAULT NULL COMMENT '所属小区',
  `parkNum` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车位编号',
  `parkName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车位名称',
  `craterTime` date NOT NULL DEFAULT '0000-00-00' COMMENT '创建时间',
  `state` tinyint(255) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_park
-- ----------------------------
INSERT INTO `db_park` VALUES (1, 2, 'XY20200103004', '车位测试', '2022-07-14', 1);
INSERT INTO `db_park` VALUES (2, 1, 'XY20200103005', '车位测试2', '2022-07-05', 1);
INSERT INTO `db_park` VALUES (25, 83, 'XY20200103006', 'wqc', '2022-07-13', 1);
INSERT INTO `db_park` VALUES (26, 83, 'fghgh', 'dhf', '2022-07-15', NULL);
INSERT INTO `db_park` VALUES (31, 53, '543', '45', '2022-07-05', 45);

-- ----------------------------
-- Table structure for db_pet
-- ----------------------------
DROP TABLE IF EXISTS `db_pet`;
CREATE TABLE `db_pet`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '宠物ID',
  `picture` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宠物照片',
  `oid` int(11) NULL DEFAULT NULL COMMENT '所属成员（业主）ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宠物名称',
  `color` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宠物颜色',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `adoptTime` timestamp(0) NULL DEFAULT NULL COMMENT '收养时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '宠物表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of db_pet
-- ----------------------------
INSERT INTO `db_pet` VALUES (1, 'kj.jpg', 12, '柯基', '棕白', '测试', '2021-11-09 00:00:00');
INSERT INTO `db_pet` VALUES (2, 'eh.jpg', 3, '二哈', '黑白', '无', '2021-11-02 00:00:00');
INSERT INTO `db_pet` VALUES (3, 'wg.jpg', 13, '乌龟', '深蓝色', '无', '2021-11-17 00:00:00');
INSERT INTO `db_pet` VALUES (4, 'gz.jpg', 19, '鸽子', '白色', '无', '2021-11-30 00:00:00');
INSERT INTO `db_pet` VALUES (5, 'xhr.jpg', 12, '小黄人', '黄色', '无', '2021-11-16 00:00:00');
INSERT INTO `db_pet` VALUES (6, '6133de2b-04f5-4e71-be80-a2f9b17ffca1.JPG', 13, '463', '46', '图片上传成功', '2022-06-28 19:02:19');
INSERT INTO `db_pet` VALUES (7, '5163', 31, '猫', 'asdf', '456+', '2022-07-15 19:02:52');
INSERT INTO `db_pet` VALUES (8, '78652', 57, '786', '789', '789', '2022-07-14 20:41:01');
INSERT INTO `db_pet` VALUES (9, '', 0, NULL, NULL, NULL, NULL);
INSERT INTO `db_pet` VALUES (10, '', 3, 'asdr', 'asdf', '', '2022-07-15 00:00:00');
INSERT INTO `db_pet` VALUES (11, '', 12, 'ads', 'asd', '编辑功能测试', '2022-07-19 00:00:00');
INSERT INTO `db_pet` VALUES (12, '', 12, '添加测试', '黄色', '添加功能测试', '2022-07-19 00:00:00');
INSERT INTO `db_pet` VALUES (13, '582da8d3-c100-4daa-8d3e-39a2e9734b60.JPG', 1, '上传图片测试', 'asd', '成功', '2022-07-19 00:00:00');

-- ----------------------------
-- Table structure for letterbox
-- ----------------------------
DROP TABLE IF EXISTS `letterbox`;
CREATE TABLE `letterbox`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xiaoqu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `letter_source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `letter_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creat_time` timestamp(0) NOT NULL DEFAULT '1999-01-27 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `state` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of letterbox
-- ----------------------------
INSERT INTO `letterbox` VALUES (2, '金华万府', '蔡伟男1', '信件添加测试1', '2022-07-15 11:49:57', '1');
INSERT INTO `letterbox` VALUES (3, '东湖小区', '蔡伟男2', '信件添加测试2', '2022-07-15 14:32:33', '0');
INSERT INTO `letterbox` VALUES (5, '金华万府', '蔡伟男3', '信件添加测试4', '2022-07-15 11:50:03', '0');
INSERT INTO `letterbox` VALUES (8, '东湖小区', 'qweeeeee', 'ssssssssssqqq', '2022-07-15 14:33:06', '1');

-- ----------------------------
-- Table structure for repair
-- ----------------------------
DROP TABLE IF EXISTS `repair`;
CREATE TABLE `repair`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xiaoqu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `repair_personnel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `repair_thing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `repair_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creat_time` timestamp(0) NOT NULL DEFAULT '1997-05-11 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of repair
-- ----------------------------
INSERT INTO `repair` VALUES (1, '东湖小区', '蔡伟男', '漏电保护器坏了', '漏电保护器', '2022-07-14 14:29:45', '1');
INSERT INTO `repair` VALUES (3, '东湖小区', '蔡2', '漏电保护器坏了', '漏电保护器', '2022-07-14 14:32:04', '0');
INSERT INTO `repair` VALUES (5, '东湖小区', '蔡5', '漏电保护器坏了', '漏电保护器', '2022-07-14 14:32:04', '1');
INSERT INTO `repair` VALUES (6, '东湖小区', '蔡66', '漏电保护器坏了', '漏电保护器', '2022-07-14 14:32:04', '1');
INSERT INTO `repair` VALUES (7, '东湖小区', '蔡88', '漏电保护器坏了', '漏电保护器', '2022-07-14 14:32:04', '1');
INSERT INTO `repair` VALUES (12, '金华万府', 'qwe', 'asdcc', 'vvvvvvvvvv', '1997-05-11 00:00:00', '0');

-- ----------------------------
-- Table structure for residents
-- ----------------------------
DROP TABLE IF EXISTS `residents`;
CREATE TABLE `residents`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `building` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `iden` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birth` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of residents
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `spread` int(11) NULL DEFAULT NULL,
  `url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `available` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '小区物业管理系统', 1, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (2, 1, '小区管理', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (3, 1, '房产管理', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (4, 1, '业主信息管理', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (5, 1, '停车位管理', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (6, 1, '服务管理', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (7, 1, '资产管理', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (8, 1, '收费管理', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (9, 1, '管理员管理', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (10, 1, '系统设置', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (11, 2, '小区列表', 0, 'communitylist.jsp', NULL, 1);
INSERT INTO `sys_menu` VALUES (12, 3, '房产管理', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (13, 3, '栋数管理', 0, 'buildinglist.jsp', NULL, 1);
INSERT INTO `sys_menu` VALUES (14, 4, '人员管理', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (15, 4, '车辆管理', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (16, 4, '宠物管理', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (17, 5, '车位管理', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (18, 5, '车位使用管理', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (19, 6, '活动管理', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (20, 6, '保修管理', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (21, 6, '投诉管理', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (22, 6, '信箱管理', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (23, 7, '资产设备管理', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (24, 8, '收费项目', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (25, 8, '收费明细管理', 0, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (26, 9, '管理员列表', 0, 'userManager.jsp', NULL, 1);
INSERT INTO `sys_menu` VALUES (27, 9, '用户组管理', 0, 'roleManager.jsp', NULL, 1);
INSERT INTO `sys_menu` VALUES (28, 9, '权限管理', 0, 'menuManager.jsp', NULL, 1);
INSERT INTO `sys_menu` VALUES (29, 10, '系统设置', 0, '', NULL, 1);
INSERT INTO `sys_menu` VALUES (30, 10, '个人设置', 0, NULL, NULL, 1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roledesc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `available` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '高级管理员', '拥有所有菜单', 1);
INSERT INTO `sys_role` VALUES (2, '业务管理员', '拥有所有业务菜单', 1);
INSERT INTO `sys_role` VALUES (3, '中级管理员', '拥有部分业务', 1);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NULL DEFAULT NULL,
  `mid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (57, 1, 1);
INSERT INTO `sys_role_menu` VALUES (58, 1, 2);
INSERT INTO `sys_role_menu` VALUES (59, 1, 11);
INSERT INTO `sys_role_menu` VALUES (60, 1, 3);
INSERT INTO `sys_role_menu` VALUES (61, 1, 12);
INSERT INTO `sys_role_menu` VALUES (62, 1, 13);
INSERT INTO `sys_role_menu` VALUES (63, 1, 4);
INSERT INTO `sys_role_menu` VALUES (64, 1, 14);
INSERT INTO `sys_role_menu` VALUES (65, 1, 15);
INSERT INTO `sys_role_menu` VALUES (66, 1, 16);
INSERT INTO `sys_role_menu` VALUES (67, 1, 5);
INSERT INTO `sys_role_menu` VALUES (68, 1, 17);
INSERT INTO `sys_role_menu` VALUES (69, 1, 18);
INSERT INTO `sys_role_menu` VALUES (70, 1, 6);
INSERT INTO `sys_role_menu` VALUES (71, 1, 19);
INSERT INTO `sys_role_menu` VALUES (72, 1, 20);
INSERT INTO `sys_role_menu` VALUES (73, 1, 21);
INSERT INTO `sys_role_menu` VALUES (74, 1, 22);
INSERT INTO `sys_role_menu` VALUES (75, 1, 7);
INSERT INTO `sys_role_menu` VALUES (76, 1, 23);
INSERT INTO `sys_role_menu` VALUES (77, 1, 8);
INSERT INTO `sys_role_menu` VALUES (78, 1, 24);
INSERT INTO `sys_role_menu` VALUES (79, 1, 25);
INSERT INTO `sys_role_menu` VALUES (80, 1, 9);
INSERT INTO `sys_role_menu` VALUES (81, 1, 26);
INSERT INTO `sys_role_menu` VALUES (82, 1, 27);
INSERT INTO `sys_role_menu` VALUES (83, 1, 28);
INSERT INTO `sys_role_menu` VALUES (84, 1, 10);
INSERT INTO `sys_role_menu` VALUES (85, 1, 29);
INSERT INTO `sys_role_menu` VALUES (86, 2, 1);
INSERT INTO `sys_role_menu` VALUES (87, 2, 2);
INSERT INTO `sys_role_menu` VALUES (88, 2, 11);
INSERT INTO `sys_role_menu` VALUES (89, 2, 3);
INSERT INTO `sys_role_menu` VALUES (90, 2, 12);
INSERT INTO `sys_role_menu` VALUES (91, 2, 13);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hiredate` date NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT 2 COMMENT '1管理员；2普通用户',
  `img` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `available` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '超级管理员', 'e10adc3949ba59abbe56e057f20f883e', '13511112222', '1351112222@163.com', '2020-12-24', 1, 'c18702c6-bb59-4c04-bf36-5a2b46ab2a06.jpg', 1);
INSERT INTO `sys_user` VALUES (2, 'lisi', '李四', 'e10adc3949ba59abbe56e057f20f883e', '13522221111', '136@163.com', '2021-02-04', 2, 'user.jpg', 0);
INSERT INTO `sys_user` VALUES (4, 'fly', 'fly', 'e10adc3949ba59abbe56e057f20f883e', '15325644723', '136@163.com', '2021-11-06', 2, 'user.jpg', 1);
INSERT INTO `sys_user` VALUES (6, 'ADMIN2', 'ADMIN2', 'e10adc3949ba59abbe56e057f20f883e', '15325644724', '136@163.com', '2021-11-06', 2, 'user.jpg', 1);
INSERT INTO `sys_user` VALUES (8, 'eee', 'eee', 'e10adc3949ba59abbe56e057f20f883e', '15325644725', '136@163.com', '2021-11-06', 2, 'user.jpg', 1);
INSERT INTO `sys_user` VALUES (18, 'zhangsan', '张三', 'e10adc3949ba59abbe56e057f20f883e', '15325644726', '136@163.com', '2021-11-10', 2, 'user.jpg', 1);
INSERT INTO `sys_user` VALUES (19, '2', '2', 'e10adc3949ba59abbe56e057f20f883e', '15325644727', '136@163.com', '2021-11-10', 2, 'user.jpg', 1);
INSERT INTO `sys_user` VALUES (20, '3', '3', 'e10adc3949ba59abbe56e057f20f883e', '15325644728', '136@163.com', '2021-11-10', 2, 'user.jpg', 1);
INSERT INTO `sys_user` VALUES (22, '4', '4', 'e10adc3949ba59abbe56e057f20f883e', '15325644729', '136@163.com', '2021-11-10', 2, 'user.jpg', 1);
INSERT INTO `sys_user` VALUES (23, '5', '5', 'e10adc3949ba59abbe56e057f20f883e', '15325644730', '5', '2021-11-10', 2, 'user.jpg', 1);

-- ----------------------------
-- Table structure for tb_parking_use
-- ----------------------------
DROP TABLE IF EXISTS `tb_parking_use`;
CREATE TABLE `tb_parking_use`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '车位使用ID',
  `cid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属小区名称',
  `aid` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车位编号',
  `car_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车牌号码',
  `owner_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆所有人',
  `telephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `use_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '使用性质',
  `money` double(20, 0) NULL DEFAULT NULL COMMENT '总费用',
  `start_time` date NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` date NULL DEFAULT NULL COMMENT '截至时间',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车位使用表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_parking_use
-- ----------------------------
INSERT INTO `tb_parking_use` VALUES (1, '1', '1', 'xb2156', 'admin', '15236987569', '1', 25, '2022-07-01', '2022-07-13', '2022-07-14');

SET FOREIGN_KEY_CHECKS = 1;
