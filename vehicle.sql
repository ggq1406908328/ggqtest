/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50549
 Source Host           : localhost:3306
 Source Schema         : vehicle

 Target Server Type    : MySQL
 Target Server Version : 50549
 File Encoding         : 65001

 Date: 02/12/2021 00:48:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for device
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device`  (
  `carid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '唯一id',
  `userid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户id',
  `carname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '设备名称',
  `cartype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '车型',
  `carlevel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '级别',
  `displacement` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '排量',
  `oil` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '油耗',
  `cylinder` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '气缸数',
  `spare2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备用',
  PRIMARY KEY (`carid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of device
-- ----------------------------
INSERT INTO `device` VALUES ('d12a03ca698c4fb494936b08eb14e31b', '1406908328', 'hy', '5', 'tt', 'g', '7', '6', NULL);
INSERT INTO `device` VALUES ('dsdfs', '1406908328', 'skt', 'ff', '3', 'dd', '4', '33', NULL);
INSERT INTO `device` VALUES ('hhg', '1406908328', 'hh', 'jj', '33', 'ss', '5', 'aa', NULL);

-- ----------------------------
-- Table structure for price_song
-- ----------------------------
DROP TABLE IF EXISTS `price_song`;
CREATE TABLE `price_song`  (
  `uuid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '唯一id',
  `song_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '歌曲id',
  `price` double(10, 2) DEFAULT NULL COMMENT '单曲价格',
  `discount` int(5) DEFAULT NULL COMMENT '折扣(1:原价 2:折扣价)',
  `strength` double(10, 0) DEFAULT NULL COMMENT '折扣力度',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of price_song
-- ----------------------------
INSERT INTO `price_song` VALUES ('sdasdsad', '46545fdsdf', 68.00, 2, 0);

-- ----------------------------
-- Table structure for t_quku
-- ----------------------------
DROP TABLE IF EXISTS `t_quku`;
CREATE TABLE `t_quku`  (
  `songid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '唯一id',
  `songName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '歌曲名称',
  `songType` int(4) DEFAULT NULL COMMENT '歌曲类型',
  `songAddress` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '歌曲地址',
  `songPresent` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '歌曲简介',
  `songImage` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '歌曲图片地址',
  `songLable` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '歌曲标签',
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关联用户表的id',
  `uploadTime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '歌曲上传时间',
  PRIMARY KEY (`songid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_quku
-- ----------------------------
INSERT INTO `t_quku` VALUES ('46545fdsdf', '我的祖国', 1, 'httpsdfdsfsdf', 'dsfsdsd ', 'sdfsdfdsf', 'fsdfsd', 'fdss', '2021-11-06');
INSERT INTO `t_quku` VALUES ('sdfsdfdsf', '香港你好', 1, 'dsfsd', '543543', 'hgghh', ' vvvvvc', 'dfdfd', '2021-11-04');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '唯一id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账户名称',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `phone` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号码',
  `sex` int(2) DEFAULT NULL COMMENT '性别0:男 1:女',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号状态(1:正常 2:锁定)',
  `usernickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名称',
  `autograph` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '个性签名',
  `createdate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建日期',
  `deleted` tinyint(4) DEFAULT NULL COMMENT '是否删除(1未删除；0已删除)',
  `create_where` tinyint(4) DEFAULT NULL COMMENT '创建来源(1.android 2.ios )',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '加密盐值',
  `head` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '客户头像',
  `spare2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `spare3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `spare4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `spare5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('50dc4ddad8be4cb8ab37a182f085b2fa', '1406908328', '4QrcOUm6Wau+VuBX8g+IPg==', '13632959687', 1, '1', NULL, '尽快解决', '2021-13-05 17:13:42', 0, 0, NULL, 'image/7450bcc2a7514ea9912864a58856614f-a.png', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user_song
-- ----------------------------
DROP TABLE IF EXISTS `user_song`;
CREATE TABLE `user_song`  (
  `uuid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '唯一id',
  `userid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户id',
  `types` int(4) DEFAULT NULL COMMENT '操作类型(1:已购买 2:收藏列表 3:试听列表)',
  `songid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '歌曲id',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_song
-- ----------------------------
INSERT INTO `user_song` VALUES ('asadsdsad', '50dc4ddad8be4cb8ab37a182f085b2fa', 1, '46545fdsdf');
INSERT INTO `user_song` VALUES ('fdgdgdfre', '50dc4ddad8be4cb8ab37a182f085b2fa', 1, 'sdfsdfdsf');

SET FOREIGN_KEY_CHECKS = 1;
