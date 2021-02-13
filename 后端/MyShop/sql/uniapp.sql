/*
 Navicat Premium Data Transfer

 Source Server         : Dorian
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : uniapp

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 13/02/2021 16:14:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `title` varchar(52) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类别标题',
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '图片分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('家居生活', 1);
INSERT INTO `category` VALUES ('摄影设计', 2);
INSERT INTO `category` VALUES ('明星美女', 3);
INSERT INTO `category` VALUES ('空间设计', 4);
INSERT INTO `category` VALUES ('户型装饰', 5);
INSERT INTO `category` VALUES ('广告摄影', 6);
INSERT INTO `category` VALUES ('摄影学习', 7);
INSERT INTO `category` VALUES ('摄影器材', 8);
INSERT INTO `category` VALUES ('明星写真', 9);
INSERT INTO `category` VALUES ('清纯甜美', 10);
INSERT INTO `category` VALUES ('古典美女', 11);

-- ----------------------------
-- Table structure for desc1
-- ----------------------------
DROP TABLE IF EXISTS `desc1`;
CREATE TABLE `desc1`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号\n',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `content` varchar(2500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '获取详细介绍' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of desc1
-- ----------------------------
INSERT INTO `desc1` VALUES (1, '可溶性塑料袋', '\"<p>\\r\\n\\t荣耀6 Plus，该机型分为两款型号，分别为PE-TL10和PE-UL00的新机型，并且根据工信部设备认证中心公布的信息显示，移动版本PE-TL20和PE-TL00M也已经拿到了入网许可证，拥有7.5mm的纤薄机身，支持TDD-LTE/TD-SCDMA/GSM网络。双800万后置摄像头+800万前置摄像头。采用5.5英寸1080p分辨率显示屏，搭载1.8GHz麒麟925八核处理器，内置3GB RAM+32GB ROM存储组合，支持存储卡扩展。\\r\\n</p>\\r\\n<p align=\\\"center\\\">\\r\\n\\t<span style=\\\"color:#FF0000;font-size:16px;\\\"><img class=\\\"gomeImgLoad\\\" alt=\\\"\\\" src=\\\"https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center\" /></span> \\r\\n</p>\"');
INSERT INTO `desc1` VALUES (2, '可溶性塑料袋', '\"<p>\\r\\n\\t荣耀6 Plus，该机型分为两款型号，分别为PE-TL10和PE-UL00的新机型，并且根据工信部设备认证中心公布的信息显示，移动版本PE-TL20和PE-TL00M也已经拿到了入网许可证，拥有7.5mm的纤薄机身，支持TDD-LTE/TD-SCDMA/GSM网络。双800万后置摄像头+800万前置摄像头。采用5.5英寸1080p分辨率显示屏，搭载1.8GHz麒麟925八核处理器，内置3GB RAM+32GB ROM存储组合，支持存储卡扩展。\\r\\n</p>\\r\\n<p align=\\\"center\\\">\\r\\n\\t<span style=\\\"color:#FF0000;font-size:16px;\\\"><img class=\\\"gomeImgLoad\\\" alt=\\\"\\\" src=\\\"http://img5.gomein.net.cn/image/bbcimg/productDesc/descImg/201503/desc04/A0004794664/3997361.jpg\\\" /></span> \\r\\n</p>\"');
INSERT INTO `desc1` VALUES (3, '可溶性塑料袋', '\"<p>\\r\\n\\t荣耀6 Plus，该机型分为两款型号，分别为PE-TL10和PE-UL00的新机型，并且根据工信部设备认证中心公布的信息显示，移动版本PE-TL20和PE-TL00M也已经拿到了入网许可证，拥有7.5mm的纤薄机身，支持TDD-LTE/TD-SCDMA/GSM网络。双800万后置摄像头+800万前置摄像头。采用5.5英寸1080p分辨率显示屏，搭载1.8GHz麒麟925八核处理器，内置3GB RAM+32GB ROM存储组合，支持存储卡扩展。\\r\\n</p>\\r\\n<p align=\\\"center\\\">\\r\\n\\t<span style=\\\"color:#FF0000;font-size:16px;\\\"><img class=\\\"gomeImgLoad\\\" alt=\\\"\\\" src=\\\"http://img5.gomein.net.cn/image/bbcimg/productDesc/descImg/201503/desc04/A0004794664/3997361.jpg\\\" /></span> \\r\\n</p>\"');
INSERT INTO `desc1` VALUES (4, '可溶性塑料袋', '\"<p>\\r\\n\\t荣耀6 Plus，该机型分为两款型号，分别为PE-TL10和PE-UL00的新机型，并且根据工信部设备认证中心公布的信息显示，移动版本PE-TL20和PE-TL00M也已经拿到了入网许可证，拥有7.5mm的纤薄机身，支持TDD-LTE/TD-SCDMA/GSM网络。双800万后置摄像头+800万前置摄像头。采用5.5英寸1080p分辨率显示屏，搭载1.8GHz麒麟925八核处理器，内置3GB RAM+32GB ROM存储组合，支持存储卡扩展。\\r\\n</p>\\r\\n<p align=\\\"center\\\">\\r\\n\\t<span style=\\\"color:#FF0000;font-size:16px;\\\"><img class=\\\"gomeImgLoad\\\" alt=\\\"\\\" src=\\\"\" /></span> \\r\\n</p>\"');
INSERT INTO `desc1` VALUES (5, '可溶性塑料袋', '\"<p>\\r\\n\\t荣耀6 Plus，该机型分为两款型号，分别为PE-TL10和PE-UL00的新机型，并且根据工信部设备认证中心公布的信息显示，移动版本PE-TL20和PE-TL00M也已经拿到了入网许可证，拥有7.5mm的纤薄机身，支持TDD-LTE/TD-SCDMA/GSM网络。双800万后置摄像头+800万前置摄像头。采用5.5英寸1080p分辨率显示屏，搭载1.8GHz麒麟925八核处理器，内置3GB RAM+32GB ROM存储组合，支持存储卡扩展。\\r\\n</p>\\r\\n<p align=\\\"center\\\">\\r\\n\\t<span style=\\\"color:#FF0000;font-size:16px;\\\"><img class=\\\"gomeImgLoad\\\" alt=\\\"\\\" src=\\\"http://img5.gomein.net.cn/image/bbcimg/productDesc/descImg/201503/desc04/A0004794664/3997361.jpg\\\" /></span> \\r\\n</p>\"');
INSERT INTO `desc1` VALUES (6, '可溶性塑料袋', '\"<p>\\r\\n\\t荣耀6 Plus，该机型分为两款型号，分别为PE-TL10和PE-UL00的新机型，并且根据工信部设备认证中心公布的信息显示，移动版本PE-TL20和PE-TL00M也已经拿到了入网许可证，拥有7.5mm的纤薄机身，支持TDD-LTE/TD-SCDMA/GSM网络。双800万后置摄像头+800万前置摄像头。采用5.5英寸1080p分辨率显示屏，搭载1.8GHz麒麟925八核处理器，内置3GB RAM+32GB ROM存储组合，支持存储卡扩展。\\r\\n</p>\\r\\n<p align=\\\"center\\\">\\r\\n\\t<span style=\\\"color:#FF0000;font-size:16px;\\\"><img class=\\\"gomeImgLoad\\\" alt=\\\"\\\" src=\\\"http://img5.gomein.net.cn/image/bbcimg/productDesc/descImg/201503/desc04/A0004794664/3997361.jpg\\\" /></span> \\r\\n</p>\"');
INSERT INTO `desc1` VALUES (7, '可溶性塑料袋', '\"<p>\\r\\n\\t荣耀6 Plus，该机型分为两款型号，分别为PE-TL10和PE-UL00的新机型，并且根据工信部设备认证中心公布的信息显示，移动版本PE-TL20和PE-TL00M也已经拿到了入网许可证，拥有7.5mm的纤薄机身，支持TDD-LTE/TD-SCDMA/GSM网络。双800万后置摄像头+800万前置摄像头。采用5.5英寸1080p分辨率显示屏，搭载1.8GHz麒麟925八核处理器，内置3GB RAM+32GB ROM存储组合，支持存储卡扩展。\\r\\n</p>\\r\\n<p align=\\\"center\\\">\\r\\n\\t<span style=\\\"color:#FF0000;font-size:16px;\\\"><img class=\\\"gomeImgLoad\\\" alt=\\\"\\\" src=\\\"http://img5.gomein.net.cn/image/bbcimg/productDesc/descImg/201503/desc04/A0004794664/3997361.jpg\\\" /></span> \\r\\n</p>\"');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '物品名',
  `add_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  `zhaiyao` varchar(520) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '摘要',
  `click` int(11) NOT NULL DEFAULT 0 COMMENT '点击数',
  `img_url` varchar(520) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片地址',
  `sell_price` varchar(52) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '售价',
  `market_price` varchar(52) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '市场价',
  `stock_quantity` int(11) NOT NULL COMMENT '库存数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物品列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);
INSERT INTO `goods` VALUES (2, '穿绳塑料袋', '2021-02-10 16:32:11', '自动收缩', 0, 'https://img-blog.csdnimg.cn/20210210162847852.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '270', '280', 1000);
INSERT INTO `goods` VALUES (3, '透明塑料袋', '2021-02-10 16:32:11', '透明', 0, 'https://img-blog.csdnimg.cn/20210210162847830.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '200', '210', 1000);
INSERT INTO `goods` VALUES (4, '手提塑料袋', '2021-02-10 16:33:41', '可手提', 0, 'https://img-blog.csdnimg.cn/20210210162847819.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '276', '320', 1000);
INSERT INTO `goods` VALUES (5, '药材', '2021-02-10 16:34:21', '可食用', 0, 'https://img-blog.csdnimg.cn/20210210162847764.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '320', '350', 1000);
INSERT INTO `goods` VALUES (6, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);
INSERT INTO `goods` VALUES (7, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);
INSERT INTO `goods` VALUES (8, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);
INSERT INTO `goods` VALUES (9, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);
INSERT INTO `goods` VALUES (10, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);
INSERT INTO `goods` VALUES (11, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);
INSERT INTO `goods` VALUES (12, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);
INSERT INTO `goods` VALUES (13, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);
INSERT INTO `goods` VALUES (14, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);
INSERT INTO `goods` VALUES (15, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);
INSERT INTO `goods` VALUES (16, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);
INSERT INTO `goods` VALUES (17, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);
INSERT INTO `goods` VALUES (18, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);
INSERT INTO `goods` VALUES (19, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);
INSERT INTO `goods` VALUES (20, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);
INSERT INTO `goods` VALUES (21, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);
INSERT INTO `goods` VALUES (22, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);
INSERT INTO `goods` VALUES (23, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);
INSERT INTO `goods` VALUES (24, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);
INSERT INTO `goods` VALUES (25, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);
INSERT INTO `goods` VALUES (26, '塑料袋(可溶性)', '2021-02-10 16:30:13', '可溶性', 0, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '290', '310', 1000);

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images`  (
  `id` int(11) NOT NULL COMMENT '编号',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片地址',
  `zhaiyao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '摘要',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '二级图片列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES (1, '欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '继上编欧式客厅装修效果图之后，今天，小编为大家带来的是一组不同类型的欧式卧室装修效果图。欧式卧室的设计风格按不同的地域文化可分为北欧卧室、简欧卧室和传统欧式卧室。在中国，因为欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果，也吸取了洛可可风格中唯美');
INSERT INTO `images` VALUES (2, '巴洛克风格中豪华', 'https://img-blog.csdnimg.cn/20210210162847852.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '欧式卧室的设计风格按不同的地域文化可分为北欧卧室');
INSERT INTO `images` VALUES (3, '欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '继上编欧式客厅装修效果图之后，今天，小编为大家带来的是一组不同类型的欧式卧室装修效果图。欧式卧室的设计风格按不同的地域文化可分为北欧卧室、简欧卧室和传统欧式卧室。在中国，因为欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果，也吸取了洛可可风格中唯美');
INSERT INTO `images` VALUES (4, '巴洛克风格中豪华', 'https://img-blog.csdnimg.cn/20210210162847852.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '欧式卧室的设计风格按不同的地域文化可分为北欧卧室');
INSERT INTO `images` VALUES (5, '欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '继上编欧式客厅装修效果图之后，今天，小编为大家带来的是一组不同类型的欧式卧室装修效果图。欧式卧室的设计风格按不同的地域文化可分为北欧卧室、简欧卧室和传统欧式卧室。在中国，因为欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果，也吸取了洛可可风格中唯美');
INSERT INTO `images` VALUES (6, '巴洛克风格中豪华', 'https://img-blog.csdnimg.cn/20210210162847852.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '欧式卧室的设计风格按不同的地域文化可分为北欧卧室');
INSERT INTO `images` VALUES (7, '欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '继上编欧式客厅装修效果图之后，今天，小编为大家带来的是一组不同类型的欧式卧室装修效果图。欧式卧室的设计风格按不同的地域文化可分为北欧卧室、简欧卧室和传统欧式卧室。在中国，因为欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果，也吸取了洛可可风格中唯美');
INSERT INTO `images` VALUES (8, '欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '继上编欧式客厅装修效果图之后，今天，小编为大家带来的是一组不同类型的欧式卧室装修效果图。欧式卧室的设计风格按不同的地域文化可分为北欧卧室、简欧卧室和传统欧式卧室。在中国，因为欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果，也吸取了洛可可风格中唯美');
INSERT INTO `images` VALUES (9, '欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '继上编欧式客厅装修效果图之后，今天，小编为大家带来的是一组不同类型的欧式卧室装修效果图。欧式卧室的设计风格按不同的地域文化可分为北欧卧室、简欧卧室和传统欧式卧室。在中国，因为欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果，也吸取了洛可可风格中唯美');
INSERT INTO `images` VALUES (10, '欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '继上编欧式客厅装修效果图之后，今天，小编为大家带来的是一组不同类型的欧式卧室装修效果图。欧式卧室的设计风格按不同的地域文化可分为北欧卧室、简欧卧室和传统欧式卧室。在中国，因为欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果，也吸取了洛可可风格中唯美');
INSERT INTO `images` VALUES (11, '欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '继上编欧式客厅装修效果图之后，今天，小编为大家带来的是一组不同类型的欧式卧室装修效果图。欧式卧室的设计风格按不同的地域文化可分为北欧卧室、简欧卧室和传统欧式卧室。在中国，因为欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果，也吸取了洛可可风格中唯美');
INSERT INTO `images` VALUES (12, '欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '继上编欧式客厅装修效果图之后，今天，小编为大家带来的是一组不同类型的欧式卧室装修效果图。欧式卧室的设计风格按不同的地域文化可分为北欧卧室、简欧卧室和传统欧式卧室。在中国，因为欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果，也吸取了洛可可风格中唯美');
INSERT INTO `images` VALUES (13, '欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '继上编欧式客厅装修效果图之后，今天，小编为大家带来的是一组不同类型的欧式卧室装修效果图。欧式卧室的设计风格按不同的地域文化可分为北欧卧室、简欧卧室和传统欧式卧室。在中国，因为欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果，也吸取了洛可可风格中唯美');
INSERT INTO `images` VALUES (14, '欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '继上编欧式客厅装修效果图之后，今天，小编为大家带来的是一组不同类型的欧式卧室装修效果图。欧式卧室的设计风格按不同的地域文化可分为北欧卧室、简欧卧室和传统欧式卧室。在中国，因为欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果，也吸取了洛可可风格中唯美');
INSERT INTO `images` VALUES (15, '欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '继上编欧式客厅装修效果图之后，今天，小编为大家带来的是一组不同类型的欧式卧室装修效果图。欧式卧室的设计风格按不同的地域文化可分为北欧卧室、简欧卧室和传统欧式卧室。在中国，因为欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果，也吸取了洛可可风格中唯美');
INSERT INTO `images` VALUES (16, '欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', '继上编欧式客厅装修效果图之后，今天，小编为大家带来的是一组不同类型的欧式卧室装修效果图。欧式卧室的设计风格按不同的地域文化可分为北欧卧室、简欧卧室和传统欧式卧室。在中国，因为欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果，也吸取了洛可可风格中唯美');

-- ----------------------------
-- Table structure for imagesplus
-- ----------------------------
DROP TABLE IF EXISTS `imagesplus`;
CREATE TABLE `imagesplus`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `src1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片1',
  `src2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片2',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '详情轮播图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of imagesplus
-- ----------------------------
INSERT INTO `imagesplus` VALUES (1, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `imagesplus` VALUES (2, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `imagesplus` VALUES (3, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `imagesplus` VALUES (4, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `imagesplus` VALUES (5, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `imagesplus` VALUES (6, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `imagesplus` VALUES (7, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `imagesplus` VALUES (8, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `imagesplus` VALUES (9, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `imagesplus` VALUES (10, 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center', 'https://img-blog.csdnimg.cn/20210210162847861.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');

-- ----------------------------
-- Table structure for info
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `add_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  `good_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货号',
  `stock_quantity` int(11) NOT NULL COMMENT '库存数量',
  `market_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '市场价',
  `sell_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '售价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '获取详情参数' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES (1, '1塑料袋(可融性)', '2021-02-13 13:52:55', 'SD1234534', 2666, '342', '218');
INSERT INTO `info` VALUES (2, '2塑料袋(可融性)', '2021-02-13 13:52:55', 'SD123423', 2666, '342', '218');
INSERT INTO `info` VALUES (3, '3塑料袋(可融性)', '2021-02-13 13:52:55', 'SD12342', 2666, '342', '218');
INSERT INTO `info` VALUES (4, '4塑料袋(可融性)', '2021-02-13 13:52:55', 'SD1234234', 243423, '333', '233');
INSERT INTO `info` VALUES (5, '5塑料袋(可融性)', '2021-02-13 13:52:55', 'SD123424', 2666, '342', '218');
INSERT INTO `info` VALUES (6, '6塑料袋(可融性)', '2021-02-13 13:52:55', 'SD13424242', 4332, '342', '218');
INSERT INTO `info` VALUES (7, '7塑料袋(可融性)', '2021-02-13 13:52:55', 'SD234242', 342, '433', '218');

-- ----------------------------
-- Table structure for new
-- ----------------------------
DROP TABLE IF EXISTS `new`;
CREATE TABLE `new`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `click` int(11) NOT NULL COMMENT '浏览次数',
  `add_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  `content` varchar(2500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资讯详情' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of new
-- ----------------------------
INSERT INTO `new` VALUES (1, '1季度多家房企利润跌幅超50% 去库存促销战打响', 1, '2021-02-13 10:54:53', '<p>\\r\\n\\t房企一季度销售业绩已经陆续公布，克而瑞研究中心统计数据显示，今年一季度，TOP20的房企仅6家实现业绩同比增长。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>多家企业销售下滑</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t记者了解到，虽然恒大、融创一季度交出了不错的答卷，但是，万科等排名靠前的房企均出现销售下滑。其中万科公布前三个月销售金额为460.6亿元，同比去年的542.3亿元减少15%，而碧桂园公布，截至2015年3月31日止三个月，集团共实现合同销售金额约177.3亿元，同比下跌44.32%。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>此外，一季度多家企业的利润跌幅超过50%。数据显示，万科预计2015年1月至3月归属于上市公司股东的净利润为6亿~7亿元，比上年同期下降54%至61%。</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>趋势</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>地价占比上升及去库存压力下&nbsp;房企利润回归</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t中原地产首席分析师张大伟称，一季度房企销售及利润普遍下滑，主要是因为企业销售节奏的变化，“大部分企业在2013年完成情况非常好，预留了大量签约结转到2014年。但2014年整体企业完成情况较差，大部分企业反而透支了2015年年初的签约，导致2015年签约不尽如人意。”\\r\\n</p>\\r\\n<p>\\r\\n\\t同时，张大伟表示，大多数城市住房供大于求，价格过高，未来增值不确定，已经不再是最佳投资选择，因此房地产投资需求也出现显著回落。\\r\\n</p>\\r\\n<p>\\r\\n\\t而易居房地产研究院研究员严跃进则表示，一季度部分房企还是坚持降价促销的策略，对此出现利润下滑也是符合预期的。随着地价占房价比例越来越高，开发商利润空间不断被挤压。同时，很多房企目前的营销费用还是比较大的，也会损耗房企利润。\\r\\n</p>\\r\\n<p>\\r\\n\\t此外，严跃进说，从长期看，地价占比上升与去库存压力将成为长期趋势，房企已告别高利润时代，回归正常利润成为趋势。\\r\\n</p>\\r\\n<p>\\r\\n\\t不过，张大伟认为，3月下半月市场告别签约淡季。部分城市出现小阳春现象，预计整体市场的走势将会继续向好，后续改善型需求的入市量将会有所增加。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>分析：</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>房企打响去库存促销战</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t“对于房地产市场来说，出现退房的原因有两种：1.收房的时候质量差。2.房价下调。无理由退房对于中国90%成交是期房的房地产市场现状来说，这的确是解决了购房者对房屋质量的担忧。”中原地产首席分析师张大伟对记者表示，后续预计也会有更多企业学习借鉴。\\r\\n</p>\\r\\n<p>\\r\\n\\t而亚太城市房地产研究院院长谢逸枫则表示，恒大2015年率先打出全国项目“无理由退房”计划第一枪，意味正式打响房企主动去库存的促销战。\\r\\n</p>\\r\\n<p>\\r\\n\\t“承诺无理由退房，意味着开发商承担更多的风险，在资金方面承受更大压力，后续肯定会有企业跟风。”知名地产评论人赵卓文表示。\\r\\n</p>\\r\\n<p>\\r\\n\\t因此，有业内人士认为，无理由退房可能加速市场优胜劣汰。夏海钧回应称，中国房地产市场高峰时有五六万家房地产开发企业，现在还有两三万家。市场竞争、行业洗牌再洗掉两万多家，剩几百几千家很正常，“到那时行业整体素质会更高”。\\r\\n</p>\\r\\n<p>\\r\\n\\t“在目前这个市场周期，恒大提出无理由退房，也的确更多是为了去库存营销的努力，从营销上看，对增加成交量肯定有帮助。”张大伟表示。\\r\\n</p>\\r\\n<p>\\r\\n\\t“常规的降价促销已经无法触及购房者的神经，房企必须使出浑身解数吸引购房者。另一方面是购房者对价格敏感性在减弱，对降价没有之前那么敏感，购房者普遍存在买涨不买跌，无理由退房主要是打消购房者对房价不断下降的顾虑。目的在于制造市场 上涨 预期，引导购房者对后市乐观的态度。”谢逸枫认为。\\r\\n</p>\\r\\n<p>\\r\\n\\t也有部分业内人士对“无理由退房”的操作性心存疑虑。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>相关新闻</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>恒大宣布全国范围内无理由退房</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t恒大地产集团昨日宣布，自今日起，将在全国所有楼盘住宅实施无理由退房，该措施覆盖全国147个城市的305个楼盘。恒大副总裁夏海钧表示，希望住宅“包退”成为市场新常态。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>今日起买恒大房“包退货”</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t昨日下午，恒大宣布，全国所有楼盘住宅从4月16日8时起正式实施无理由退房，覆盖恒大所有在售住宅，遍布全国147个城市的305个楼盘。\\r\\n</p>\\r\\n<p>\\r\\n\\t恒大集团承诺：凡购买恒大所有楼盘住宅的客户，若已履行《楼宇认购书》、《商品房买卖合同》的各项义务，并且无任何违约行为，则自签署《商品房买卖合同》及《无理由退房协议书》之日起至办理入住手续前的任何时间内，均可无理由退房。\\r\\n</p>\\r\\n<p>\\r\\n\\t最新数据显示，2015年1~3月，恒大累计合约销售金额约305.4亿元，其中3月实现合约销售额137.1亿元，&nbsp;恒大地产2014年全年销售额达1315亿元，2015年销售目标定为1500亿元，较2014年目标增36.4%\\r\\n</p>');
INSERT INTO `new` VALUES (2, '2季度多家房企利润跌幅超50% 去库存促销战打响', 1, '2021-02-13 10:54:53', '<p>\\r\\n\\t房企一季度销售业绩已经陆续公布，克而瑞研究中心统计数据显示，今年一季度，TOP20的房企仅6家实现业绩同比增长。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>多家企业销售下滑</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t记者了解到，虽然恒大、融创一季度交出了不错的答卷，但是，万科等排名靠前的房企均出现销售下滑。其中万科公布前三个月销售金额为460.6亿元，同比去年的542.3亿元减少15%，而碧桂园公布，截至2015年3月31日止三个月，集团共实现合同销售金额约177.3亿元，同比下跌44.32%。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>此外，一季度多家企业的利润跌幅超过50%。数据显示，万科预计2015年1月至3月归属于上市公司股东的净利润为6亿~7亿元，比上年同期下降54%至61%。</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>趋势</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>地价占比上升及去库存压力下&nbsp;房企利润回归</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t中原地产首席分析师张大伟称，一季度房企销售及利润普遍下滑，主要是因为企业销售节奏的变化，“大部分企业在2013年完成情况非常好，预留了大量签约结转到2014年。但2014年整体企业完成情况较差，大部分企业反而透支了2015年年初的签约，导致2015年签约不尽如人意。”\\r\\n</p>\\r\\n<p>\\r\\n\\t同时，张大伟表示，大多数城市住房供大于求，价格过高，未来增值不确定，已经不再是最佳投资选择，因此房地产投资需求也出现显著回落。\\r\\n</p>\\r\\n<p>\\r\\n\\t而易居房地产研究院研究员严跃进则表示，一季度部分房企还是坚持降价促销的策略，对此出现利润下滑也是符合预期的。随着地价占房价比例越来越高，开发商利润空间不断被挤压。同时，很多房企目前的营销费用还是比较大的，也会损耗房企利润。\\r\\n</p>\\r\\n<p>\\r\\n\\t此外，严跃进说，从长期看，地价占比上升与去库存压力将成为长期趋势，房企已告别高利润时代，回归正常利润成为趋势。\\r\\n</p>\\r\\n<p>\\r\\n\\t不过，张大伟认为，3月下半月市场告别签约淡季。部分城市出现小阳春现象，预计整体市场的走势将会继续向好，后续改善型需求的入市量将会有所增加。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>分析：</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>房企打响去库存促销战</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t“对于房地产市场来说，出现退房的原因有两种：1.收房的时候质量差。2.房价下调。无理由退房对于中国90%成交是期房的房地产市场现状来说，这的确是解决了购房者对房屋质量的担忧。”中原地产首席分析师张大伟对记者表示，后续预计也会有更多企业学习借鉴。\\r\\n</p>\\r\\n<p>\\r\\n\\t而亚太城市房地产研究院院长谢逸枫则表示，恒大2015年率先打出全国项目“无理由退房”计划第一枪，意味正式打响房企主动去库存的促销战。\\r\\n</p>\\r\\n<p>\\r\\n\\t“承诺无理由退房，意味着开发商承担更多的风险，在资金方面承受更大压力，后续肯定会有企业跟风。”知名地产评论人赵卓文表示。\\r\\n</p>\\r\\n<p>\\r\\n\\t因此，有业内人士认为，无理由退房可能加速市场优胜劣汰。夏海钧回应称，中国房地产市场高峰时有五六万家房地产开发企业，现在还有两三万家。市场竞争、行业洗牌再洗掉两万多家，剩几百几千家很正常，“到那时行业整体素质会更高”。\\r\\n</p>\\r\\n<p>\\r\\n\\t“在目前这个市场周期，恒大提出无理由退房，也的确更多是为了去库存营销的努力，从营销上看，对增加成交量肯定有帮助。”张大伟表示。\\r\\n</p>\\r\\n<p>\\r\\n\\t“常规的降价促销已经无法触及购房者的神经，房企必须使出浑身解数吸引购房者。另一方面是购房者对价格敏感性在减弱，对降价没有之前那么敏感，购房者普遍存在买涨不买跌，无理由退房主要是打消购房者对房价不断下降的顾虑。目的在于制造市场 上涨 预期，引导购房者对后市乐观的态度。”谢逸枫认为。\\r\\n</p>\\r\\n<p>\\r\\n\\t也有部分业内人士对“无理由退房”的操作性心存疑虑。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>相关新闻</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>恒大宣布全国范围内无理由退房</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t恒大地产集团昨日宣布，自今日起，将在全国所有楼盘住宅实施无理由退房，该措施覆盖全国147个城市的305个楼盘。恒大副总裁夏海钧表示，希望住宅“包退”成为市场新常态。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>今日起买恒大房“包退货”</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t昨日下午，恒大宣布，全国所有楼盘住宅从4月16日8时起正式实施无理由退房，覆盖恒大所有在售住宅，遍布全国147个城市的305个楼盘。\\r\\n</p>\\r\\n<p>\\r\\n\\t恒大集团承诺：凡购买恒大所有楼盘住宅的客户，若已履行《楼宇认购书》、《商品房买卖合同》的各项义务，并且无任何违约行为，则自签署《商品房买卖合同》及《无理由退房协议书》之日起至办理入住手续前的任何时间内，均可无理由退房。\\r\\n</p>\\r\\n<p>\\r\\n\\t最新数据显示，2015年1~3月，恒大累计合约销售金额约305.4亿元，其中3月实现合约销售额137.1亿元，&nbsp;恒大地产2014年全年销售额达1315亿元，2015年销售目标定为1500亿元，较2014年目标增36.4%\\r\\n</p>');
INSERT INTO `new` VALUES (3, '3季度多家房企利润跌幅超50% 去库存促销战打响', 1, '2021-02-13 10:54:53', '<p>\\r\\n\\t房企一季度销售业绩已经陆续公布，克而瑞研究中心统计数据显示，今年一季度，TOP20的房企仅6家实现业绩同比增长。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>多家企业销售下滑</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t记者了解到，虽然恒大、融创一季度交出了不错的答卷，但是，万科等排名靠前的房企均出现销售下滑。其中万科公布前三个月销售金额为460.6亿元，同比去年的542.3亿元减少15%，而碧桂园公布，截至2015年3月31日止三个月，集团共实现合同销售金额约177.3亿元，同比下跌44.32%。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>此外，一季度多家企业的利润跌幅超过50%。数据显示，万科预计2015年1月至3月归属于上市公司股东的净利润为6亿~7亿元，比上年同期下降54%至61%。</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>趋势</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>地价占比上升及去库存压力下&nbsp;房企利润回归</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t中原地产首席分析师张大伟称，一季度房企销售及利润普遍下滑，主要是因为企业销售节奏的变化，“大部分企业在2013年完成情况非常好，预留了大量签约结转到2014年。但2014年整体企业完成情况较差，大部分企业反而透支了2015年年初的签约，导致2015年签约不尽如人意。”\\r\\n</p>\\r\\n<p>\\r\\n\\t同时，张大伟表示，大多数城市住房供大于求，价格过高，未来增值不确定，已经不再是最佳投资选择，因此房地产投资需求也出现显著回落。\\r\\n</p>\\r\\n<p>\\r\\n\\t而易居房地产研究院研究员严跃进则表示，一季度部分房企还是坚持降价促销的策略，对此出现利润下滑也是符合预期的。随着地价占房价比例越来越高，开发商利润空间不断被挤压。同时，很多房企目前的营销费用还是比较大的，也会损耗房企利润。\\r\\n</p>\\r\\n<p>\\r\\n\\t此外，严跃进说，从长期看，地价占比上升与去库存压力将成为长期趋势，房企已告别高利润时代，回归正常利润成为趋势。\\r\\n</p>\\r\\n<p>\\r\\n\\t不过，张大伟认为，3月下半月市场告别签约淡季。部分城市出现小阳春现象，预计整体市场的走势将会继续向好，后续改善型需求的入市量将会有所增加。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>分析：</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>房企打响去库存促销战</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t“对于房地产市场来说，出现退房的原因有两种：1.收房的时候质量差。2.房价下调。无理由退房对于中国90%成交是期房的房地产市场现状来说，这的确是解决了购房者对房屋质量的担忧。”中原地产首席分析师张大伟对记者表示，后续预计也会有更多企业学习借鉴。\\r\\n</p>\\r\\n<p>\\r\\n\\t而亚太城市房地产研究院院长谢逸枫则表示，恒大2015年率先打出全国项目“无理由退房”计划第一枪，意味正式打响房企主动去库存的促销战。\\r\\n</p>\\r\\n<p>\\r\\n\\t“承诺无理由退房，意味着开发商承担更多的风险，在资金方面承受更大压力，后续肯定会有企业跟风。”知名地产评论人赵卓文表示。\\r\\n</p>\\r\\n<p>\\r\\n\\t因此，有业内人士认为，无理由退房可能加速市场优胜劣汰。夏海钧回应称，中国房地产市场高峰时有五六万家房地产开发企业，现在还有两三万家。市场竞争、行业洗牌再洗掉两万多家，剩几百几千家很正常，“到那时行业整体素质会更高”。\\r\\n</p>\\r\\n<p>\\r\\n\\t“在目前这个市场周期，恒大提出无理由退房，也的确更多是为了去库存营销的努力，从营销上看，对增加成交量肯定有帮助。”张大伟表示。\\r\\n</p>\\r\\n<p>\\r\\n\\t“常规的降价促销已经无法触及购房者的神经，房企必须使出浑身解数吸引购房者。另一方面是购房者对价格敏感性在减弱，对降价没有之前那么敏感，购房者普遍存在买涨不买跌，无理由退房主要是打消购房者对房价不断下降的顾虑。目的在于制造市场 上涨 预期，引导购房者对后市乐观的态度。”谢逸枫认为。\\r\\n</p>\\r\\n<p>\\r\\n\\t也有部分业内人士对“无理由退房”的操作性心存疑虑。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>相关新闻</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>恒大宣布全国范围内无理由退房</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t恒大地产集团昨日宣布，自今日起，将在全国所有楼盘住宅实施无理由退房，该措施覆盖全国147个城市的305个楼盘。恒大副总裁夏海钧表示，希望住宅“包退”成为市场新常态。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>今日起买恒大房“包退货”</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t昨日下午，恒大宣布，全国所有楼盘住宅从4月16日8时起正式实施无理由退房，覆盖恒大所有在售住宅，遍布全国147个城市的305个楼盘。\\r\\n</p>\\r\\n<p>\\r\\n\\t恒大集团承诺：凡购买恒大所有楼盘住宅的客户，若已履行《楼宇认购书》、《商品房买卖合同》的各项义务，并且无任何违约行为，则自签署《商品房买卖合同》及《无理由退房协议书》之日起至办理入住手续前的任何时间内，均可无理由退房。\\r\\n</p>\\r\\n<p>\\r\\n\\t最新数据显示，2015年1~3月，恒大累计合约销售金额约305.4亿元，其中3月实现合约销售额137.1亿元，&nbsp;恒大地产2014年全年销售额达1315亿元，2015年销售目标定为1500亿元，较2014年目标增36.4%\\r\\n</p>');
INSERT INTO `new` VALUES (4, '4季度多家房企利润跌幅超50% 去库存促销战打响', 1, '2021-02-13 10:54:53', '<p>\\r\\n\\t房企一季度销售业绩已经陆续公布，克而瑞研究中心统计数据显示，今年一季度，TOP20的房企仅6家实现业绩同比增长。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>多家企业销售下滑</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t记者了解到，虽然恒大、融创一季度交出了不错的答卷，但是，万科等排名靠前的房企均出现销售下滑。其中万科公布前三个月销售金额为460.6亿元，同比去年的542.3亿元减少15%，而碧桂园公布，截至2015年3月31日止三个月，集团共实现合同销售金额约177.3亿元，同比下跌44.32%。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>此外，一季度多家企业的利润跌幅超过50%。数据显示，万科预计2015年1月至3月归属于上市公司股东的净利润为6亿~7亿元，比上年同期下降54%至61%。</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>趋势</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>地价占比上升及去库存压力下&nbsp;房企利润回归</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t中原地产首席分析师张大伟称，一季度房企销售及利润普遍下滑，主要是因为企业销售节奏的变化，“大部分企业在2013年完成情况非常好，预留了大量签约结转到2014年。但2014年整体企业完成情况较差，大部分企业反而透支了2015年年初的签约，导致2015年签约不尽如人意。”\\r\\n</p>\\r\\n<p>\\r\\n\\t同时，张大伟表示，大多数城市住房供大于求，价格过高，未来增值不确定，已经不再是最佳投资选择，因此房地产投资需求也出现显著回落。\\r\\n</p>\\r\\n<p>\\r\\n\\t而易居房地产研究院研究员严跃进则表示，一季度部分房企还是坚持降价促销的策略，对此出现利润下滑也是符合预期的。随着地价占房价比例越来越高，开发商利润空间不断被挤压。同时，很多房企目前的营销费用还是比较大的，也会损耗房企利润。\\r\\n</p>\\r\\n<p>\\r\\n\\t此外，严跃进说，从长期看，地价占比上升与去库存压力将成为长期趋势，房企已告别高利润时代，回归正常利润成为趋势。\\r\\n</p>\\r\\n<p>\\r\\n\\t不过，张大伟认为，3月下半月市场告别签约淡季。部分城市出现小阳春现象，预计整体市场的走势将会继续向好，后续改善型需求的入市量将会有所增加。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>分析：</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>房企打响去库存促销战</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t“对于房地产市场来说，出现退房的原因有两种：1.收房的时候质量差。2.房价下调。无理由退房对于中国90%成交是期房的房地产市场现状来说，这的确是解决了购房者对房屋质量的担忧。”中原地产首席分析师张大伟对记者表示，后续预计也会有更多企业学习借鉴。\\r\\n</p>\\r\\n<p>\\r\\n\\t而亚太城市房地产研究院院长谢逸枫则表示，恒大2015年率先打出全国项目“无理由退房”计划第一枪，意味正式打响房企主动去库存的促销战。\\r\\n</p>\\r\\n<p>\\r\\n\\t“承诺无理由退房，意味着开发商承担更多的风险，在资金方面承受更大压力，后续肯定会有企业跟风。”知名地产评论人赵卓文表示。\\r\\n</p>\\r\\n<p>\\r\\n\\t因此，有业内人士认为，无理由退房可能加速市场优胜劣汰。夏海钧回应称，中国房地产市场高峰时有五六万家房地产开发企业，现在还有两三万家。市场竞争、行业洗牌再洗掉两万多家，剩几百几千家很正常，“到那时行业整体素质会更高”。\\r\\n</p>\\r\\n<p>\\r\\n\\t“在目前这个市场周期，恒大提出无理由退房，也的确更多是为了去库存营销的努力，从营销上看，对增加成交量肯定有帮助。”张大伟表示。\\r\\n</p>\\r\\n<p>\\r\\n\\t“常规的降价促销已经无法触及购房者的神经，房企必须使出浑身解数吸引购房者。另一方面是购房者对价格敏感性在减弱，对降价没有之前那么敏感，购房者普遍存在买涨不买跌，无理由退房主要是打消购房者对房价不断下降的顾虑。目的在于制造市场 上涨 预期，引导购房者对后市乐观的态度。”谢逸枫认为。\\r\\n</p>\\r\\n<p>\\r\\n\\t也有部分业内人士对“无理由退房”的操作性心存疑虑。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>相关新闻</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>恒大宣布全国范围内无理由退房</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t恒大地产集团昨日宣布，自今日起，将在全国所有楼盘住宅实施无理由退房，该措施覆盖全国147个城市的305个楼盘。恒大副总裁夏海钧表示，希望住宅“包退”成为市场新常态。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>今日起买恒大房“包退货”</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t昨日下午，恒大宣布，全国所有楼盘住宅从4月16日8时起正式实施无理由退房，覆盖恒大所有在售住宅，遍布全国147个城市的305个楼盘。\\r\\n</p>\\r\\n<p>\\r\\n\\t恒大集团承诺：凡购买恒大所有楼盘住宅的客户，若已履行《楼宇认购书》、《商品房买卖合同》的各项义务，并且无任何违约行为，则自签署《商品房买卖合同》及《无理由退房协议书》之日起至办理入住手续前的任何时间内，均可无理由退房。\\r\\n</p>\\r\\n<p>\\r\\n\\t最新数据显示，2015年1~3月，恒大累计合约销售金额约305.4亿元，其中3月实现合约销售额137.1亿元，&nbsp;恒大地产2014年全年销售额达1315亿元，2015年销售目标定为1500亿元，较2014年目标增36.4%\\r\\n</p>');
INSERT INTO `new` VALUES (5, '5季度多家房企利润跌幅超50% 去库存促销战打响', 1, '2021-02-13 10:54:53', '<p>\\r\\n\\t房企一季度销售业绩已经陆续公布，克而瑞研究中心统计数据显示，今年一季度，TOP20的房企仅6家实现业绩同比增长。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>多家企业销售下滑</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t记者了解到，虽然恒大、融创一季度交出了不错的答卷，但是，万科等排名靠前的房企均出现销售下滑。其中万科公布前三个月销售金额为460.6亿元，同比去年的542.3亿元减少15%，而碧桂园公布，截至2015年3月31日止三个月，集团共实现合同销售金额约177.3亿元，同比下跌44.32%。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>此外，一季度多家企业的利润跌幅超过50%。数据显示，万科预计2015年1月至3月归属于上市公司股东的净利润为6亿~7亿元，比上年同期下降54%至61%。</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>趋势</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>地价占比上升及去库存压力下&nbsp;房企利润回归</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t中原地产首席分析师张大伟称，一季度房企销售及利润普遍下滑，主要是因为企业销售节奏的变化，“大部分企业在2013年完成情况非常好，预留了大量签约结转到2014年。但2014年整体企业完成情况较差，大部分企业反而透支了2015年年初的签约，导致2015年签约不尽如人意。”\\r\\n</p>\\r\\n<p>\\r\\n\\t同时，张大伟表示，大多数城市住房供大于求，价格过高，未来增值不确定，已经不再是最佳投资选择，因此房地产投资需求也出现显著回落。\\r\\n</p>\\r\\n<p>\\r\\n\\t而易居房地产研究院研究员严跃进则表示，一季度部分房企还是坚持降价促销的策略，对此出现利润下滑也是符合预期的。随着地价占房价比例越来越高，开发商利润空间不断被挤压。同时，很多房企目前的营销费用还是比较大的，也会损耗房企利润。\\r\\n</p>\\r\\n<p>\\r\\n\\t此外，严跃进说，从长期看，地价占比上升与去库存压力将成为长期趋势，房企已告别高利润时代，回归正常利润成为趋势。\\r\\n</p>\\r\\n<p>\\r\\n\\t不过，张大伟认为，3月下半月市场告别签约淡季。部分城市出现小阳春现象，预计整体市场的走势将会继续向好，后续改善型需求的入市量将会有所增加。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>分析：</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>房企打响去库存促销战</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t“对于房地产市场来说，出现退房的原因有两种：1.收房的时候质量差。2.房价下调。无理由退房对于中国90%成交是期房的房地产市场现状来说，这的确是解决了购房者对房屋质量的担忧。”中原地产首席分析师张大伟对记者表示，后续预计也会有更多企业学习借鉴。\\r\\n</p>\\r\\n<p>\\r\\n\\t而亚太城市房地产研究院院长谢逸枫则表示，恒大2015年率先打出全国项目“无理由退房”计划第一枪，意味正式打响房企主动去库存的促销战。\\r\\n</p>\\r\\n<p>\\r\\n\\t“承诺无理由退房，意味着开发商承担更多的风险，在资金方面承受更大压力，后续肯定会有企业跟风。”知名地产评论人赵卓文表示。\\r\\n</p>\\r\\n<p>\\r\\n\\t因此，有业内人士认为，无理由退房可能加速市场优胜劣汰。夏海钧回应称，中国房地产市场高峰时有五六万家房地产开发企业，现在还有两三万家。市场竞争、行业洗牌再洗掉两万多家，剩几百几千家很正常，“到那时行业整体素质会更高”。\\r\\n</p>\\r\\n<p>\\r\\n\\t“在目前这个市场周期，恒大提出无理由退房，也的确更多是为了去库存营销的努力，从营销上看，对增加成交量肯定有帮助。”张大伟表示。\\r\\n</p>\\r\\n<p>\\r\\n\\t“常规的降价促销已经无法触及购房者的神经，房企必须使出浑身解数吸引购房者。另一方面是购房者对价格敏感性在减弱，对降价没有之前那么敏感，购房者普遍存在买涨不买跌，无理由退房主要是打消购房者对房价不断下降的顾虑。目的在于制造市场 上涨 预期，引导购房者对后市乐观的态度。”谢逸枫认为。\\r\\n</p>\\r\\n<p>\\r\\n\\t也有部分业内人士对“无理由退房”的操作性心存疑虑。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>相关新闻</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>恒大宣布全国范围内无理由退房</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t恒大地产集团昨日宣布，自今日起，将在全国所有楼盘住宅实施无理由退房，该措施覆盖全国147个城市的305个楼盘。恒大副总裁夏海钧表示，希望住宅“包退”成为市场新常态。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>今日起买恒大房“包退货”</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t昨日下午，恒大宣布，全国所有楼盘住宅从4月16日8时起正式实施无理由退房，覆盖恒大所有在售住宅，遍布全国147个城市的305个楼盘。\\r\\n</p>\\r\\n<p>\\r\\n\\t恒大集团承诺：凡购买恒大所有楼盘住宅的客户，若已履行《楼宇认购书》、《商品房买卖合同》的各项义务，并且无任何违约行为，则自签署《商品房买卖合同》及《无理由退房协议书》之日起至办理入住手续前的任何时间内，均可无理由退房。\\r\\n</p>\\r\\n<p>\\r\\n\\t最新数据显示，2015年1~3月，恒大累计合约销售金额约305.4亿元，其中3月实现合约销售额137.1亿元，&nbsp;恒大地产2014年全年销售额达1315亿元，2015年销售目标定为1500亿元，较2014年目标增36.4%\\r\\n</p>');
INSERT INTO `new` VALUES (6, '6季度多家房企利润跌幅超50% 去库存促销战打响', 1, '2021-02-13 10:54:53', '<p>\\r\\n\\t房企一季度销售业绩已经陆续公布，克而瑞研究中心统计数据显示，今年一季度，TOP20的房企仅6家实现业绩同比增长。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>多家企业销售下滑</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t记者了解到，虽然恒大、融创一季度交出了不错的答卷，但是，万科等排名靠前的房企均出现销售下滑。其中万科公布前三个月销售金额为460.6亿元，同比去年的542.3亿元减少15%，而碧桂园公布，截至2015年3月31日止三个月，集团共实现合同销售金额约177.3亿元，同比下跌44.32%。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>此外，一季度多家企业的利润跌幅超过50%。数据显示，万科预计2015年1月至3月归属于上市公司股东的净利润为6亿~7亿元，比上年同期下降54%至61%。</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>趋势</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>地价占比上升及去库存压力下&nbsp;房企利润回归</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t中原地产首席分析师张大伟称，一季度房企销售及利润普遍下滑，主要是因为企业销售节奏的变化，“大部分企业在2013年完成情况非常好，预留了大量签约结转到2014年。但2014年整体企业完成情况较差，大部分企业反而透支了2015年年初的签约，导致2015年签约不尽如人意。”\\r\\n</p>\\r\\n<p>\\r\\n\\t同时，张大伟表示，大多数城市住房供大于求，价格过高，未来增值不确定，已经不再是最佳投资选择，因此房地产投资需求也出现显著回落。\\r\\n</p>\\r\\n<p>\\r\\n\\t而易居房地产研究院研究员严跃进则表示，一季度部分房企还是坚持降价促销的策略，对此出现利润下滑也是符合预期的。随着地价占房价比例越来越高，开发商利润空间不断被挤压。同时，很多房企目前的营销费用还是比较大的，也会损耗房企利润。\\r\\n</p>\\r\\n<p>\\r\\n\\t此外，严跃进说，从长期看，地价占比上升与去库存压力将成为长期趋势，房企已告别高利润时代，回归正常利润成为趋势。\\r\\n</p>\\r\\n<p>\\r\\n\\t不过，张大伟认为，3月下半月市场告别签约淡季。部分城市出现小阳春现象，预计整体市场的走势将会继续向好，后续改善型需求的入市量将会有所增加。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>分析：</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>房企打响去库存促销战</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t“对于房地产市场来说，出现退房的原因有两种：1.收房的时候质量差。2.房价下调。无理由退房对于中国90%成交是期房的房地产市场现状来说，这的确是解决了购房者对房屋质量的担忧。”中原地产首席分析师张大伟对记者表示，后续预计也会有更多企业学习借鉴。\\r\\n</p>\\r\\n<p>\\r\\n\\t而亚太城市房地产研究院院长谢逸枫则表示，恒大2015年率先打出全国项目“无理由退房”计划第一枪，意味正式打响房企主动去库存的促销战。\\r\\n</p>\\r\\n<p>\\r\\n\\t“承诺无理由退房，意味着开发商承担更多的风险，在资金方面承受更大压力，后续肯定会有企业跟风。”知名地产评论人赵卓文表示。\\r\\n</p>\\r\\n<p>\\r\\n\\t因此，有业内人士认为，无理由退房可能加速市场优胜劣汰。夏海钧回应称，中国房地产市场高峰时有五六万家房地产开发企业，现在还有两三万家。市场竞争、行业洗牌再洗掉两万多家，剩几百几千家很正常，“到那时行业整体素质会更高”。\\r\\n</p>\\r\\n<p>\\r\\n\\t“在目前这个市场周期，恒大提出无理由退房，也的确更多是为了去库存营销的努力，从营销上看，对增加成交量肯定有帮助。”张大伟表示。\\r\\n</p>\\r\\n<p>\\r\\n\\t“常规的降价促销已经无法触及购房者的神经，房企必须使出浑身解数吸引购房者。另一方面是购房者对价格敏感性在减弱，对降价没有之前那么敏感，购房者普遍存在买涨不买跌，无理由退房主要是打消购房者对房价不断下降的顾虑。目的在于制造市场 上涨 预期，引导购房者对后市乐观的态度。”谢逸枫认为。\\r\\n</p>\\r\\n<p>\\r\\n\\t也有部分业内人士对“无理由退房”的操作性心存疑虑。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>相关新闻</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t<b>恒大宣布全国范围内无理由退房</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t恒大地产集团昨日宣布，自今日起，将在全国所有楼盘住宅实施无理由退房，该措施覆盖全国147个城市的305个楼盘。恒大副总裁夏海钧表示，希望住宅“包退”成为市场新常态。\\r\\n</p>\\r\\n<p>\\r\\n\\t<b>今日起买恒大房“包退货”</b> \\r\\n</p>\\r\\n<p>\\r\\n\\t昨日下午，恒大宣布，全国所有楼盘住宅从4月16日8时起正式实施无理由退房，覆盖恒大所有在售住宅，遍布全国147个城市的305个楼盘。\\r\\n</p>\\r\\n<p>\\r\\n\\t恒大集团承诺：凡购买恒大所有楼盘住宅的客户，若已履行《楼宇认购书》、《商品房买卖合同》的各项义务，并且无任何违约行为，则自签署《商品房买卖合同》及《无理由退房协议书》之日起至办理入住手续前的任何时间内，均可无理由退房。\\r\\n</p>\\r\\n<p>\\r\\n\\t最新数据显示，2015年1~3月，恒大累计合约销售金额约305.4亿元，其中3月实现合约销售额137.1亿元，&nbsp;恒大地产2014年全年销售额达1315亿元，2015年销售目标定为1500亿元，较2014年目标增36.4%\\r\\n</p>');

-- ----------------------------
-- Table structure for newslist
-- ----------------------------
DROP TABLE IF EXISTS `newslist`;
CREATE TABLE `newslist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `add_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  `zhaiyao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '摘要',
  `click` int(11) NOT NULL COMMENT '浏览次数',
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资讯列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of newslist
-- ----------------------------
INSERT INTO `newslist` VALUES (1, '1季度多家房企利润跌幅超50% 去库存促销战打响', '2021-02-12 19:47:41', '房企一季度销售业绩已经陆续公布，克而瑞研究中心统计', 1, 'https://img-blog.csdnimg.cn/20210210162847852.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `newslist` VALUES (2, '2季度多家房企利润跌幅超50% 去库存促销战打响', '2021-02-12 19:47:41', '2房企一季度销售业绩已经陆续公布，克而瑞研究中心统计', 1, 'https://img-blog.csdnimg.cn/20210210162847852.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `newslist` VALUES (3, '3季度多家房企利润跌幅超50% 去库存促销战打响', '2021-02-12 19:47:41', '3房企一季度销售业绩已经陆续公布，克而瑞研究中心统计', 1, 'https://img-blog.csdnimg.cn/20210210162847852.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `newslist` VALUES (4, '4季度多家房企利润跌幅超50% 去库存促销战打响', '2021-02-12 19:47:41', '4房企一季度销售业绩已经陆续公布，克而瑞研究中心统计', 1, 'https://img-blog.csdnimg.cn/20210210162847852.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `newslist` VALUES (5, '5季度多家房企利润跌幅超50% 去库存促销战打响', '2021-02-12 19:47:41', '3房企一季度销售业绩已经陆续公布，克而瑞研究中心统计', 1, 'https://img-blog.csdnimg.cn/20210210162847852.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `newslist` VALUES (6, '6季度多家房企利润跌幅超50% 去库存促销战打响', '2021-02-12 19:47:41', '3房企一季度销售业绩已经陆续公布，克而瑞研究中心统计', 1, 'https://img-blog.csdnimg.cn/20210210162847852.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `newslist` VALUES (7, '7季度多家房企利润跌幅超50% 去库存促销战打响', '2021-02-12 19:47:41', '3房企一季度销售业绩已经陆续公布，克而瑞研究中心统计', 1, 'https://img-blog.csdnimg.cn/20210210162847852.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `newslist` VALUES (8, '3季度多家房企利润跌幅超50% 去库存促销战打响', '2021-02-12 19:47:41', '3房企一季度销售业绩已经陆续公布，克而瑞研究中心统计', 1, 'https://img-blog.csdnimg.cn/20210210162847852.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `newslist` VALUES (9, '3季度多家房企利润跌幅超50% 去库存促销战打响', '2021-02-12 19:47:41', '3房企一季度销售业绩已经陆续公布，克而瑞研究中心统计', 1, 'https://img-blog.csdnimg.cn/20210210162847852.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `newslist` VALUES (10, '3季度多家房企利润跌幅超50% 去库存促销战打响', '2021-02-12 19:47:41', '3房企一季度销售业绩已经陆续公布，克而瑞研究中心统计', 1, 'https://img-blog.csdnimg.cn/20210210162847852.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `newslist` VALUES (11, '3季度多家房企利润跌幅超50% 去库存促销战打响', '2021-02-12 19:47:41', '3房企一季度销售业绩已经陆续公布，克而瑞研究中心统计', 1, 'https://img-blog.csdnimg.cn/20210210162847852.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `newslist` VALUES (12, '3季度多家房企利润跌幅超50% 去库存促销战打响', '2021-02-12 19:47:41', '3房企一季度销售业绩已经陆续公布，克而瑞研究中心统计', 1, 'https://img-blog.csdnimg.cn/20210210162847852.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `newslist` VALUES (13, '3季度多家房企利润跌幅超50% 去库存促销战打响', '2021-02-12 19:47:41', '3房企一季度销售业绩已经陆续公布，克而瑞研究中心统计', 1, 'https://img-blog.csdnimg.cn/20210210162847852.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `newslist` VALUES (14, '3季度多家房企利润跌幅超50% 去库存促销战打响', '2021-02-12 19:47:41', '3房企一季度销售业绩已经陆续公布，克而瑞研究中心统计', 1, 'https://img-blog.csdnimg.cn/20210210162847852.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `newslist` VALUES (15, '3季度多家房企利润跌幅超50% 去库存促销战打响', '2021-02-12 19:47:41', '3房企一季度销售业绩已经陆续公布，克而瑞研究中心统计', 1, 'https://img-blog.csdnimg.cn/20210210162847852.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `newslist` VALUES (16, '3季度多家房企利润跌幅超50% 去库存促销战打响', '2021-02-12 19:47:41', '3房企一季度销售业绩已经陆续公布，克而瑞研究中心统计', 1, 'https://img-blog.csdnimg.cn/20210210162847852.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');

-- ----------------------------
-- Table structure for unbo
-- ----------------------------
DROP TABLE IF EXISTS `unbo`;
CREATE TABLE `unbo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `url` varchar(520) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of unbo
-- ----------------------------
INSERT INTO `unbo` VALUES (1, 'https://img-blog.csdnimg.cn/20210209205337730.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `unbo` VALUES (2, 'https://img-blog.csdnimg.cn/20210209205623543.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `unbo` VALUES (4, 'https://img-blog.csdnimg.cn/2021020920564233.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');
INSERT INTO `unbo` VALUES (5, 'https://img-blog.csdnimg.cn/20210210181125297.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0RvcmlhbjE1,size_16,color_FFFFFF,t_70#pic_center');

SET FOREIGN_KEY_CHECKS = 1;
