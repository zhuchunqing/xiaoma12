/*
 Navicat Premium Data Transfer

 Source Server         : localHaoSqlMyql
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : viper

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 17/06/2021 10:23:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bif_company
-- ----------------------------
DROP TABLE IF EXISTS `bif_company`;
CREATE TABLE `bif_company`  (
  `id` bigint(20) NOT NULL,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '统一社会信用代码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `type` int(4) NULL DEFAULT NULL COMMENT '企业类型',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮编',
  `email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `website` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `person` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `state` int(4) NULL DEFAULT 0,
  `rdt` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '记录时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公司表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bif_company
-- ----------------------------
INSERT INTO `bif_company` VALUES (299935790530603, 'bif', '张学友公司', 1, '河南省邓州市', '0377-62958337', '0377-62958337', '474172', 'dym6295@163.com', 'http://ok.com', '杜燕明', 0, '2016-07-17 11:41:00');
INSERT INTO `bif_company` VALUES (299935790530604, 'ndtech', '北京恩维协同', 1, '北京市朝阳区', '010-62958337', '010-62958337', '10000', 'duyanming@ndtech.com', 'http://www.ndtech.com.cn', '王五', 0, '2016-10-02 11:41:00');

-- ----------------------------
-- Table structure for sys_func
-- ----------------------------
DROP TABLE IF EXISTS `sys_func`;
CREATE TABLE `sys_func`  (
  `id` bigint(20) NOT NULL,
  `fname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `forder` float(50, 0) NULL DEFAULT NULL,
  `pid` bigint(20) NULL DEFAULT NULL,
  `furl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show` smallint(2) NULL DEFAULT 1,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_func
-- ----------------------------
INSERT INTO `sys_func` VALUES (47826128347136, 'NetMQ', 'netmq', 8, 299935790530590, 'https://netmq.readthedocs.io/en/latest/', 1, '');
INSERT INTO `sys_func` VALUES (100876538834944, 'k8s', 'k8s', 1, 299935790530590, '', 0, '');
INSERT INTO `sys_func` VALUES (100878287302656, 'jimmysong', 'k8s', 2, 100876538834944, 'https://jimmysong.io/kubernetes-handbook/', 1, '');
INSERT INTO `sys_func` VALUES (101163644395520, 'k8s-Centos7 搭建', 'k8s', 3, 100876538834944, 'http://www.maogx.win/posts/32/', 0, '');
INSERT INTO `sys_func` VALUES (101163940139008, '每天5分钟玩转 Kubernetes', 'k8s', 1, 100876538834944, 'https://mp.weixin.qq.com/s/RK6DDc8AUBklsUS7rssW2w', 0, '');
INSERT INTO `sys_func` VALUES (101164278681600, 'k8s-dashboard', 'k8s', 4, 100876538834944, 'https://www.cnblogs.com/RainingNight/p/deploying-k8s-dashboard-ui.html', 0, '');
INSERT INTO `sys_func` VALUES (132054338420736, '集群监控', 'xtjk', 3, NULL, '', 1, 'el-icon-monitor');
INSERT INTO `sys_func` VALUES (132054501289984, '链路追踪', 'dylzz', 1, 132054338420736, 'html/trace/indexnew.html', 1, 'el-icon-connection');
INSERT INTO `sys_func` VALUES (132054881103872, '服务监控', 'cm', 2, 132054338420736, '/html/welcome.html?appName=NewApi', 1, 'el-icon-monitor');
INSERT INTO `sys_func` VALUES (187965062586368, '系统日志', 'SystemLog', 4, 132054338420736, 'html/syslog/index.html', 1, 'el-icon-data-analysis');
INSERT INTO `sys_func` VALUES (276132205633536, '模拟工具', 'Simulation', 88, NULL, '', 1, 'el-icon-connection');
INSERT INTO `sys_func` VALUES (276132575506432, '模拟请求', 'Simulation', 1, 276132205633536, '/home/simulation', 1, 'el-icon-s-platform');
INSERT INTO `sys_func` VALUES (290153378975744, '服务文档', 'router', 3, 132054338420736, 'html/trace/router.html?appName=HelloWorld', 1, 'el-icon-connection');
INSERT INTO `sys_func` VALUES (299935790530580, '系统管理', 'sysm', 99999, NULL, '', 1, 'el-icon-setting');
INSERT INTO `sys_func` VALUES (299935790530582, '系统会员', 'sys_m', 0, 299935790530580, '', 1, 'el-icon-user');
INSERT INTO `sys_func` VALUES (299935790530583, '系统配置', 'sys_roles', 1, 299935790530580, '', 1, 'el-icon-location');
INSERT INTO `sys_func` VALUES (299935790530584, '角色权限', 'role_func', 0, 299935790530583, 'html/func_roles_config.html?v=2021061401', 1, 'el-icon-key');
INSERT INTO `sys_func` VALUES (299935790530586, '功能管理', 'sys_func_config', 2, 299935790530583, 'html/fconfig.html', 1, 'el-icon-copy-document');
INSERT INTO `sys_func` VALUES (299935790530590, '查阅资料', 'lsfzl', 99, NULL, '', 1, 'el-icon-notebook-2');
INSERT INTO `sys_func` VALUES (299935790530592, 'Redis', 'lsfzl', 2, 299935790530590, 'http://doc.redisfans.com/', 1, '');
INSERT INTO `sys_func` VALUES (299935790530593, 'MongoDB', 'lsfzl', 3, 299935790530590, 'https://docs.mongodb.com/getting-started/csharp/', 1, '');
INSERT INTO `sys_func` VALUES (299935790530594, 'ECMAScript 6', 'lsfzl', 4, 299935790530590, 'http://es6.ruanyifeng.com/', 1, '');
INSERT INTO `sys_func` VALUES (299935790530595, '内涵段子', 'joker', 5, 299935790530590, 'html/Joker/beauty.html', 0, '');
INSERT INTO `sys_func` VALUES (324175695159296, '开发文档', 'viperDoc', 2, NULL, 'https://duyanming.github.io/', 1, 'el-icon-help');
INSERT INTO `sys_func` VALUES (324581934501888, '集群服务总览', 'jqfwzl', 0, 132054338420736, 'html/service/dashboard.html', 0, 'el-icon-guide');
INSERT INTO `sys_func` VALUES (324834648502272, '集群总览', 'jqzl', 0, 132054338420736, 'html/service/cluster_dashboard.html', 1, 'el-icon-guide');
INSERT INTO `sys_func` VALUES (341861272510464, 'GitHub文档', 'viperDoc', 1, 324175695159296, 'https://duyanming.github.io/docs', 1, 'el-icon-guide');
INSERT INTO `sys_func` VALUES (351817298649088, '公司列表', 'componylistNew', 0, 299935790530582, '/html/company/index.html', 1, 'el-icon-office-building');
INSERT INTO `sys_func` VALUES (351817486770176, '会员列表', 'mlistNew', 1, 299935790530582, 'html/mlist/index.html', 1, 'el-icon-user');
INSERT INTO `sys_func` VALUES (385543856058368, '集群分析', 'AnnoComponents', 4, NULL, '', 1, 'el-icon-box');
INSERT INTO `sys_func` VALUES (385544006070272, '统计分析', 'anno-analyse', 7, 385543856058368, 'html/component_echarts.html?anno_component_name=anno-analyse', 1, 'el-icon-monitor');
INSERT INTO `sys_func` VALUES (386115958824960, '模块分析', 'anno-analyse-detail', 8, 385543856058368, 'html/component_echarts.html?anno_component_name=anno-analyse-detail', 1, 'el-icon-s-operation');
INSERT INTO `sys_func` VALUES (387203084148736, 'Gitee文档', 'giteeDoc', 2, 324175695159296, 'https://duyanming.gitee.io/anno/', 1, 'el-icon-location-outline');
INSERT INTO `sys_func` VALUES (391105290743808, '用户分布', 'anno-user-analyse', 9, 385543856058368, 'html/component_echarts.html?anno_component_name=anno-user-analyse', 1, 'el-icon-user');
INSERT INTO `sys_func` VALUES (397743412666368, '分布统计(小时)', 'anno-timeinterval-analyse', 1, 385543856058368, 'html/component_echarts.html?anno_component_name=anno-timeinterval-analyse', 1, 'el-icon-data-line');
INSERT INTO `sys_func` VALUES (397743540658176, '分布统计(24小时)', 'anno-24uservisitdistribute-analyse', 2, 385543856058368, 'html/component_echarts.html?anno_component_name=anno-24uservisitdistribute-analyse', 1, 'el-icon-data-analysis');
INSERT INTO `sys_func` VALUES (401668814491648, '服务管理', 'serviceManager', 77, NULL, '', 1, 'el-icon-cpu');
INSERT INTO `sys_func` VALUES (401668983406592, '部署服务', 'deploy_service', 2, 401668814491648, 'html/component.html?anno_component_name=anno-deploy-detail', 1, 'el-icon-upload');
INSERT INTO `sys_func` VALUES (402554304884736, '部署列表', 'deploy_service_list', 1, 401668814491648, 'html/component.html?anno_component_name=anno-deploy-list', 1, 'el-icon-s-grid');
INSERT INTO `sys_func` VALUES (411019509628928, '角色管理', 'role_manager_list', 1, 299935790530583, 'html/component.html?anno_component_name=anno-role-list', 1, 'el-icon-view');
INSERT INTO `sys_func` VALUES (2975002949320704, 'Rabbitmq', 'rabbitmq', 6, 299935790530590, 'https://www.rabbitmq.com/getstarted.html', 1, '');
INSERT INTO `sys_func` VALUES (3957341116563456, 'postgresql', 'postgresqltutorial', 7, 299935790530590, 'http://www.postgresqltutorial.com', 1, '');

-- ----------------------------
-- Table structure for sys_func_roles_link
-- ----------------------------
DROP TABLE IF EXISTS `sys_func_roles_link`;
CREATE TABLE `sys_func_roles_link`  (
  `id` bigint(20) NOT NULL,
  `fid` bigint(20) NULL DEFAULT NULL,
  `rid` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_func_roles_link
-- ----------------------------
INSERT INTO `sys_func_roles_link` VALUES (132054955646982, 132054338420736, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (132054955646983, 132054501289984, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (132054955646984, 132054881103872, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (274991608696845, 132054338420736, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (274991608696846, 132054501289984, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (274991608696847, 132054881103872, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (274991608696849, 299935790530580, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (274991608696850, 299935790530582, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (276132686950400, 276132205633536, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (276132686950401, 276132575506432, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (276132735111173, 276132205633536, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (276132735111174, 276132575506432, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (290153444339736, 290153378975744, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (290966135451666, 290153378975744, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (299935790530606, 299935790530580, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (299935790530608, 299935790530582, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (299935790530609, 299935790530583, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (299935790530610, 299935790530584, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (299935790530612, 299935790530586, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (324175910170624, 324175695159296, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (324175958253568, 324175695159296, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (324581989511191, 324581934501888, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (324834703384601, 324834648502272, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (324849852428305, 324834648502272, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (341861383299073, 341861272510464, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (341861407686657, 341861272510464, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (351817584726047, 351817298649088, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (351817584726049, 351817486770176, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (351817671946250, 351817298649088, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (352187569582104, 351817486770176, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (352187569582105, 299935790530583, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (352187569582106, 299935790530584, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (352187569582107, 299935790530586, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (367379640385543, 187965062586368, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (367379660165120, 187965062586368, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (385544043274263, 385543856058368, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (385544043274264, 385544006070272, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (385544075214870, 385543856058368, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (385544075214871, 385544006070272, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (386116041027610, 386115958824960, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (386116075188248, 386115958824960, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (387203257196546, 387203084148736, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (387203278553090, 387203084148736, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (391105312796685, 391105290743808, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (391117441851404, 391105290743808, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (397743601094666, 397743540658176, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (397743601094667, 397743412666368, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (397743623942154, 397743540658176, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (397743623942155, 397743412666368, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (401669026656294, 401668814491648, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (401669026656295, 401668983406592, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (402094145060864, 132054338420736, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060865, 324581934501888, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060866, 324834648502272, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060867, 132054501289984, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060868, 132054881103872, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060869, 290153378975744, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060870, 187965062586368, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060871, 385543856058368, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060872, 397743412666368, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060873, 397743540658176, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060874, 385544006070272, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060875, 386115958824960, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060876, 391105290743808, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060877, 276132205633536, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060878, 276132575506432, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060879, 299935790530580, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060880, 299935790530582, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060881, 351817298649088, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060882, 351817486770176, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060883, 299935790530583, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060884, 299935790530584, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060885, 299935790530586, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060886, 401668814491648, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402094145060887, 401668983406592, 299935790530575);
INSERT INTO `sys_func_roles_link` VALUES (402554351087642, 402554304884736, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (402875149479960, 401668814491648, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (402875149479961, 402554304884736, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (402875149479962, 401668983406592, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (411019855699994, 411019509628928, 299935790530574);
INSERT INTO `sys_func_roles_link` VALUES (411019900940313, 411019509628928, 48079494410240);
INSERT INTO `sys_func_roles_link` VALUES (13892844284542976, 299935790530580, 299935790530578);
INSERT INTO `sys_func_roles_link` VALUES (13892844284542977, 299935790530582, 299935790530578);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `Id` bigint(8) NOT NULL,
  `TraceId` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链路追踪TraceId',
  `Title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志名称',
  `Uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `LogType` int(4) UNSIGNED NULL DEFAULT 0 COMMENT '日志类型',
  `AppName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用名称',
  `Content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作内容',
  `Timespan` datetime(6) NOT NULL COMMENT '记录时间',
  PRIMARY KEY (`Id`) USING BTREE,
  UNIQUE INDEX `id`(`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (363854395404288, 'f7395527-f982-4b7e-b49f-58c62c6adce9', '你传入的x,y值，计算前Log', 'admin', 0, 'HelloWorld', '{\"x\":88,\"y\":7}', '2021-02-01 16:40:06.000000');
INSERT INTO `sys_log` VALUES (363854395514880, 'f7395527-f982-4b7e-b49f-58c62c6adce9', '你传入的x,y值，计算后Log', 'admin', 0, 'HelloWorld', '81', '2021-02-01 16:40:06.000000');

-- ----------------------------
-- Table structure for sys_member
-- ----------------------------
DROP TABLE IF EXISTS `sys_member`;
CREATE TABLE `sys_member`  (
  `id` bigint(20) NOT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coid` bigint(20) NOT NULL DEFAULT -1 COMMENT '公司ID',
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` smallint(1) NULL DEFAULT 1 COMMENT '1 启用 0 禁用',
  `profile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `timespan` datetime(0) NULL DEFAULT NULL,
  `rdt` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '注册时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_member
-- ----------------------------
INSERT INTO `sys_member` VALUES (49552092442624, 'jiangwen', 'nsiFvHyFuoM=', 0, '导演', '姜文', 0, 'b3133ecec9794867989bd98491872354', '2018-12-25 12:00:14', '2018-08-28 13:40:46');
INSERT INTO `sys_member` VALUES (60545176104960, 'qbs', 'nsiFvHyFuoM=', 0, '架构师', '乔布斯', 0, 'HAqvhBLt3SGTGvu4T1RUDj6my3MWQEpnoRpLmV8aJBFMA0F9ijiLsQ==', '2020-01-06 21:20:19', '2018-09-28 15:11:44');
INSERT INTO `sys_member` VALUES (210527169232896, 'anno', 'nsiFvHyFuoM=', 0, 'Anno Admin', 'anno', 1, 'wfzfGLtNOOPVE/UPxh4EH8PHSUh5fWpSCPXZlLrrHfj+lOuqyWhK/A==', '2021-06-15 09:52:39', '2019-11-26 10:30:02');
INSERT INTO `sys_member` VALUES (225114735435776, '20120106', 'nsiFvHyFuoM=', 0, '20120106', '20120106', 0, 'Gujxq7PRRrIv65cSxa0iAtzV9uRVe0dvx6qHH3rnLlcEiSqDvH7nGcEJZOHpJ19h', '2020-01-06 15:47:08', '2020-01-06 15:46:59');
INSERT INTO `sys_member` VALUES (299935786336256, 'admin', 'q5Oslccyl9Y=', 299935790530603, '.NET 工程师', '杜燕明', 1, 'mZEyRTJP5DuQaR4rsl00X/s9juc1wzK+CZ4GFhf6w3TJ68EuGIuFiZSnGfzhfbJS', '2021-05-18 15:36:22', '2016-07-11 22:52:57');
INSERT INTO `sys_member` VALUES (299935790530560, 'yrm', 'nsiFvHyFuoM=', 299935790530603, 'BIF主管', '于瑞敏', 1, 'fSFhFv5d4ZlC/JTz1EvoBI4Tamg2iJeLAIXA4TXaUks98/DzBaecQSa8LgEujN0z', '2021-03-01 10:30:16', '2016-07-12 22:52:57');
INSERT INTO `sys_member` VALUES (299935790530561, 'duyanming', 'nsiFvHyFuoM=', 299935790530604, 'TestPostion', 'DuYanming', 0, 'af15f81694e64513b9ed99c5b8a84ad9', '2016-07-06 22:09:15', '2016-07-13 22:52:57');
INSERT INTO `sys_member` VALUES (299935790530562, 'bjcz', 'myjMrb9Iey8=', 299935790530604, '管理员', '北京传智播客', 0, '02db5beda74a46b0bd0b7bee7bf29fd1', '2016-07-10 08:59:50', '2016-07-14 22:52:57');
INSERT INTO `sys_member` VALUES (299935790530563, 'lishanfeng', 'nsiFvHyFuoM=', 299935790530603, '全栈工程师', '王大锤', 0, 'fSFhFv5d4ZnxJ12sqaTR3ilrblZkOwmblSYfRlWoco+3PUFIrn3J91uEwimNZ2MyY7b2K0YzYG4=', '2020-10-28 21:07:29', '2016-12-27 15:44:54');
INSERT INTO `sys_member` VALUES (299935790530564, 'xijinping', 'myjMrb9Iey8=', 299935790530604, '第一老大', '习近平', 0, '8e72c9ce0b5b45158032a78b514a2f05', '2017-01-14 17:35:01', '2017-01-10 10:48:15');
INSERT INTO `sys_member` VALUES (299935790530565, '123', 'myjMrb9Iey8=', 299935790530603, '123', '123', 0, NULL, NULL, '2017-01-12 10:18:58');
INSERT INTO `sys_member` VALUES (299935790530566, 'User1', 'myjMrb9Iey8=', 299935790530604, 'CEO', 'Updateable', 0, NULL, NULL, '2017-02-15 14:03:01');
INSERT INTO `sys_member` VALUES (299935790530567, 'tlp', 'nsiFvHyFuoM=', 299935790530603, '美国总统', '特朗普·川普', 0, '33d6e1bdbde2471bb887fb7d47dc56ca', '2018-04-14 20:09:49', '2017-02-22 10:31:14');
INSERT INTO `sys_member` VALUES (299935790530568, '18510994063', 'nsiFvHyFuoM=', 0, '玩家', '王五', 0, 'fSFhFv5d4ZksCKNevTyzZz2Lk3zoiwsjj7+CZwASm19rpbMOHrYo3Rf0PsWZWrkc', '2020-09-20 22:52:18', NULL);
INSERT INTO `sys_member` VALUES (299935790530569, '1', 'jvnKWN3f6mU=', 0, '1', '老刘', 0, '2e750e5a0d9244f1b0ec7385b92c7ecd', '2018-05-05 18:34:10', NULL);
INSERT INTO `sys_member` VALUES (299935790530570, 'laosan', 'jvnKWN3f6mU=', 0, '12', '老三', 0, 'a4a5e22112634c5ea9cbdfc1a086f283', '2018-10-31 17:48:17', NULL);
INSERT INTO `sys_member` VALUES (393246418690048, 'asd', 'hL+t+oQJTao=', 0, 'asd', 'anno', 1, NULL, NULL, '2021-04-25 17:56:33');

-- ----------------------------
-- Table structure for sys_member_roles_link
-- ----------------------------
DROP TABLE IF EXISTS `sys_member_roles_link`;
CREATE TABLE `sys_member_roles_link`  (
  `id` bigint(20) NOT NULL,
  `mid` bigint(20) NULL DEFAULT NULL,
  `rid` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_member_roles_link
-- ----------------------------
INSERT INTO `sys_member_roles_link` VALUES (49552092565504, 49552092442624, 48079494410240);
INSERT INTO `sys_member_roles_link` VALUES (60545176219648, 60545176104960, 299935790530575);
INSERT INTO `sys_member_roles_link` VALUES (65063157125120, 299935790530563, 299935790530574);
INSERT INTO `sys_member_roles_link` VALUES (144703322042368, 60545176104960, 299935790530574);
INSERT INTO `sys_member_roles_link` VALUES (225114735976448, 225114735435776, 48079494410240);
INSERT INTO `sys_member_roles_link` VALUES (274991678836736, 210527169232896, 48079494410240);
INSERT INTO `sys_member_roles_link` VALUES (299935790530573, 299935786336256, 299935790530574);
INSERT INTO `sys_member_roles_link` VALUES (314193764941824, 299935790530567, 299935790530575);
INSERT INTO `sys_member_roles_link` VALUES (325531112050688, 299935790530560, 48079494410240);
INSERT INTO `sys_member_roles_link` VALUES (393246420811776, 393246418690048, 299935790530575);
INSERT INTO `sys_member_roles_link` VALUES (1227636298743808, 299935790530566, 299935790530578);
INSERT INTO `sys_member_roles_link` VALUES (1227732721598464, 299935790530565, 299935790530578);
INSERT INTO `sys_member_roles_link` VALUES (1227813260623872, 299935790530564, 299935790530578);
INSERT INTO `sys_member_roles_link` VALUES (1227977350184960, 299935790530562, 299935790530578);
INSERT INTO `sys_member_roles_link` VALUES (1228043624382464, 299935790530561, 299935790530578);
INSERT INTO `sys_member_roles_link` VALUES (1228205608402944, 299935790530570, 299935790530578);
INSERT INTO `sys_member_roles_link` VALUES (1228268883673088, 299935790530569, 299935790530578);
INSERT INTO `sys_member_roles_link` VALUES (1228325875875840, 299935790530568, 299935790530578);
INSERT INTO `sys_member_roles_link` VALUES (13892695328030720, 299935790530563, 299935790530578);
INSERT INTO `sys_member_roles_link` VALUES (35462212902453248, 299935786336256, 299935790530577);
INSERT INTO `sys_member_roles_link` VALUES (35462213049253888, 299935786336256, 299935790530578);
INSERT INTO `sys_member_roles_link` VALUES (35462213061836800, 299935786336256, 299935790530575);
INSERT INTO `sys_member_roles_link` VALUES (35462213078614016, 299935786336256, 299935790530576);
INSERT INTO `sys_member_roles_link` VALUES (36694368303710208, 299935790530564, 299935790530575);

-- ----------------------------
-- Table structure for sys_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles`  (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
INSERT INTO `sys_roles` VALUES (48079494410240, '体验者');
INSERT INTO `sys_roles` VALUES (299935790530574, 'System');
INSERT INTO `sys_roles` VALUES (299935790530575, '管理员');
INSERT INTO `sys_roles` VALUES (299935790530576, '供应商');
INSERT INTO `sys_roles` VALUES (299935790530577, '采购商');
INSERT INTO `sys_roles` VALUES (299935790530578, '玩家');

-- ----------------------------
-- Table structure for sys_trace
-- ----------------------------
DROP TABLE IF EXISTS `sys_trace`;
CREATE TABLE `sys_trace`  (
  `id` bigint(20) NOT NULL,
  `GlobalTraceId` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TraceId` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '调用链唯一标识',
  `PreTraceId` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级调用链唯一标识',
  `AppNameTarget` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目标App名称',
  `AppName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'App名称',
  `TTL` int(10) NULL DEFAULT NULL COMMENT '跳转次数',
  `Request` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求参数',
  `Response` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '响应参数',
  `Ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人IP',
  `Target` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目标地址',
  `UserId` bigint(20) NULL DEFAULT NULL COMMENT '操作人ID',
  `Timespan` datetime(6) NULL DEFAULT NULL COMMENT '记录时间',
  `Askchannel` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求管道',
  `Askrouter` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求路由',
  `Askmethod` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务方法',
  `Uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `UseTimeMs` double(28, 0) NULL DEFAULT -1,
  `Rlt` tinyint(1) NULL DEFAULT 1 COMMENT '处理结果',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_trace_Timespan_index`(`Timespan`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_trace
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
