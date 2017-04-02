/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : carms

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2016-04-19 23:38:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_button`
-- ----------------------------
DROP TABLE IF EXISTS `sys_button`;
CREATE TABLE `sys_button` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `buttom` varchar(200) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_button
-- ----------------------------
INSERT INTO `sys_button` VALUES ('1', '新增', '<button type=\"button\" id=\"addFun\" class=\"btn btn-primary marR10\">新增</button>', '');
INSERT INTO `sys_button` VALUES ('2', '编辑', '<button type=\"button\" id=\"editFun\" class=\"btn btn-info marR10\">编辑</button>', null);
INSERT INTO `sys_button` VALUES ('3', '删除', '<button type=\"button\" id=\"delFun\" class=\"btn btn-danger marR10\">删除</button>', null);
INSERT INTO `sys_button` VALUES ('4', '上传', '<button type=\"button\" id=\"upLoad\" class=\"btn btn-primary marR10\">上传</button>', null);
INSERT INTO `sys_button` VALUES ('5', '下载', '<button type=\"button\" id=\"downLoad\" class=\"btn btn-primary marR10\">下载</button>', null);
INSERT INTO `sys_button` VALUES ('6', '上移', '<button type=\"button\" id=\"lyGridUp\" class=\"btn btn-success marR10\">上移</button>', null);
INSERT INTO `sys_button` VALUES ('7', '下移', '<button type=\"button\" id=\"lyGridDown\" class=\"btn btn btn-grey marR10\">下移</button>', null);
INSERT INTO `sys_button` VALUES ('8', '分配权限', '<button type=\"button\" id=\"permissions\" class=\"btn btn btn-grey marR10\">分配权限</button>', null);

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountName` varchar(30) DEFAULT NULL,
  `module` varchar(30) DEFAULT NULL,
  `methods` varchar(30) DEFAULT NULL,
  `actionTime` varchar(30) DEFAULT NULL,
  `userIP` varchar(30) DEFAULT NULL,
  `operTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', 'admin', '系统管理', '用户管理-新增用户', '17', '127.0.0.1', '2016-03-27 22:49:29', '执行成功!');
INSERT INTO `sys_log` VALUES ('2', 'admin', '系统管理', '组管理-新增组', '3', '127.0.0.1', '2016-03-27 22:50:14', '执行成功!');
INSERT INTO `sys_log` VALUES ('3', 'admin', '系统管理', '组管理-修改组', '6', '127.0.0.1', '2016-03-27 22:50:54', '执行成功!');
INSERT INTO `sys_log` VALUES ('4', 'admin', '系统管理', '用户管理/组管理-修改权限', '3', '127.0.0.1', '2016-03-27 22:51:25', '执行成功!');
INSERT INTO `sys_log` VALUES ('5', 'admin', '系统管理', '用户管理/组管理-修改权限', '8', '127.0.0.1', '2016-03-27 22:52:00', '执行成功!');
INSERT INTO `sys_log` VALUES ('6', 'admin', '系统管理', '用户管理/组管理-修改权限', '19', '127.0.0.1', '2016-03-27 22:52:55', '执行成功!');
INSERT INTO `sys_log` VALUES ('7', 'admin', '系统管理', '用户管理/组管理-修改权限', '2', '127.0.0.1', '2016-03-27 22:53:09', '执行成功!');
INSERT INTO `sys_log` VALUES ('8', 'admin', '系统管理', '用户管理/组管理-修改权限', '8', '127.0.0.1', '2016-03-27 22:55:26', '执行成功!');
INSERT INTO `sys_log` VALUES ('9', 'admin', '系统管理', '用户管理/组管理-修改权限', '85648', '127.0.0.1', '2016-03-29 22:25:57', '执行成功!');
INSERT INTO `sys_log` VALUES ('10', 'admin', '系统管理', '资源管理-新增资源', '16', '127.0.0.1', '2016-03-29 22:32:18', '执行成功!');
INSERT INTO `sys_log` VALUES ('11', 'admin', '系统管理', '资源管理-新增资源', '0', '127.0.0.1', '2016-03-29 22:33:30', '执行成功!');
INSERT INTO `sys_log` VALUES ('12', 'admin', '系统管理', '资源管理-新增资源', '15', '127.0.0.1', '2016-03-29 22:34:43', '执行成功!');
INSERT INTO `sys_log` VALUES ('13', 'admin', '系统管理', '资源管理-新增资源', '0', '127.0.0.1', '2016-03-29 22:37:24', '执行成功!');
INSERT INTO `sys_log` VALUES ('14', 'admin', '系统管理', '资源管理-新增资源', '0', '127.0.0.1', '2016-03-29 22:38:23', '执行成功!');
INSERT INTO `sys_log` VALUES ('15', 'admin', '系统管理', '用户管理/组管理-修改权限', '1874', '127.0.0.1', '2016-03-29 22:38:42', '执行成功!');
INSERT INTO `sys_log` VALUES ('16', 'admin', '系统管理', '资源管理-修改资源', '12', '127.0.0.1', '2016-04-14 20:21:56', '执行成功!');
INSERT INTO `sys_log` VALUES ('17', 'admin', '系统管理', '资源管理-修改资源', '3', '127.0.0.1', '2016-04-14 20:22:21', '执行成功!');
INSERT INTO `sys_log` VALUES ('18', 'admin', '系统管理', '资源管理-修改资源', '3', '127.0.0.1', '2016-04-14 20:22:50', '执行成功!');
INSERT INTO `sys_log` VALUES ('19', 'admin', '系统管理', '资源管理-修改资源', '3', '127.0.0.1', '2016-04-14 20:23:28', '执行成功!');
INSERT INTO `sys_log` VALUES ('20', 'admin', '系统管理', '资源管理-修改资源', '2', '127.0.0.1', '2016-04-14 20:23:45', '执行成功!');
INSERT INTO `sys_log` VALUES ('21', 'admin', '系统管理', '资源管理-修改资源', '3', '127.0.0.1', '2016-04-14 20:24:21', '执行成功!');
INSERT INTO `sys_log` VALUES ('22', 'admin', '系统管理', '资源管理-修改资源', '4', '127.0.0.1', '2016-04-14 20:25:53', '执行成功!');
INSERT INTO `sys_log` VALUES ('23', 'admin', '系统管理', '资源管理-修改资源', '7', '127.0.0.1', '2016-04-14 20:26:36', '执行成功!');
INSERT INTO `sys_log` VALUES ('24', 'admin', '系统管理', '资源管理-修改资源', '2', '127.0.0.1', '2016-04-14 20:27:08', '执行成功!');
INSERT INTO `sys_log` VALUES ('25', 'admin', '系统管理', '用户管理-修改用户', '61', '127.0.0.1', '2016-04-19 22:14:43', '执行成功!');
INSERT INTO `sys_log` VALUES ('26', 'admin', '系统管理', '资源管理-修改资源', '5', '127.0.0.1', '2016-04-19 22:22:13', '执行成功!');
INSERT INTO `sys_log` VALUES ('27', 'admin', '系统管理', '资源管理-修改资源', '8', '127.0.0.1', '2016-04-19 22:24:34', '执行成功!');
INSERT INTO `sys_log` VALUES ('28', 'admin', '系统管理', '资源管理-修改资源', '6', '127.0.0.1', '2016-04-19 22:24:57', '执行成功!');

-- ----------------------------
-- Table structure for `sys_res_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_res_role`;
CREATE TABLE `sys_res_role` (
  `resId` int(11) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`resId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_res_role
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_res_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_res_user`;
CREATE TABLE `sys_res_user` (
  `resId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`userId`,`resId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_res_user
-- ----------------------------
INSERT INTO `sys_res_user` VALUES ('1', '3');
INSERT INTO `sys_res_user` VALUES ('2', '3');
INSERT INTO `sys_res_user` VALUES ('3', '3');
INSERT INTO `sys_res_user` VALUES ('4', '3');
INSERT INTO `sys_res_user` VALUES ('5', '3');
INSERT INTO `sys_res_user` VALUES ('6', '3');
INSERT INTO `sys_res_user` VALUES ('7', '3');
INSERT INTO `sys_res_user` VALUES ('8', '3');
INSERT INTO `sys_res_user` VALUES ('9', '3');
INSERT INTO `sys_res_user` VALUES ('10', '3');
INSERT INTO `sys_res_user` VALUES ('11', '3');
INSERT INTO `sys_res_user` VALUES ('25', '3');
INSERT INTO `sys_res_user` VALUES ('26', '3');
INSERT INTO `sys_res_user` VALUES ('27', '3');
INSERT INTO `sys_res_user` VALUES ('28', '3');
INSERT INTO `sys_res_user` VALUES ('29', '3');
INSERT INTO `sys_res_user` VALUES ('30', '3');
INSERT INTO `sys_res_user` VALUES ('31', '3');
INSERT INTO `sys_res_user` VALUES ('32', '3');
INSERT INTO `sys_res_user` VALUES ('33', '3');
INSERT INTO `sys_res_user` VALUES ('34', '3');
INSERT INTO `sys_res_user` VALUES ('35', '3');
INSERT INTO `sys_res_user` VALUES ('1', '4');
INSERT INTO `sys_res_user` VALUES ('2', '4');
INSERT INTO `sys_res_user` VALUES ('3', '4');
INSERT INTO `sys_res_user` VALUES ('4', '4');
INSERT INTO `sys_res_user` VALUES ('5', '4');
INSERT INTO `sys_res_user` VALUES ('6', '4');
INSERT INTO `sys_res_user` VALUES ('8', '4');
INSERT INTO `sys_res_user` VALUES ('9', '4');
INSERT INTO `sys_res_user` VALUES ('29', '4');
INSERT INTO `sys_res_user` VALUES ('30', '4');
INSERT INTO `sys_res_user` VALUES ('36', '4');
INSERT INTO `sys_res_user` VALUES ('37', '4');
INSERT INTO `sys_res_user` VALUES ('38', '4');

-- ----------------------------
-- Table structure for `sys_resources`
-- ----------------------------
DROP TABLE IF EXISTS `sys_resources`;
CREATE TABLE `sys_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `resKey` varchar(50) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `resUrl` varchar(200) DEFAULT NULL,
  `level` int(4) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `ishide` int(3) DEFAULT '0',
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_resources
-- ----------------------------
INSERT INTO `sys_resources` VALUES ('1', '系统基础管理', '0', 'system', '0', 'system', '1', 'fa-desktop', '0', '系统基础管理');
INSERT INTO `sys_resources` VALUES ('2', '用户管理', '1', 'user', '1', '/user/list.shtml', '2', null, '0', null);
INSERT INTO `sys_resources` VALUES ('3', '角色管理', '1', 'role', '1', '/role/list.shtml', '7', 'fa-list', '0', '组管理');
INSERT INTO `sys_resources` VALUES ('4', '菜单管理', '1', 'resources', '1', '/resources/list.shtml', '12', 'fa-list-alt', '0', '菜单管理');
INSERT INTO `sys_resources` VALUES ('5', '新增用户', '2', 'user_add', '2', '/user/addUI.shtml', '3', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addUser&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('6', '修改用户', '2', 'user_edit', '2', '/user/editUI.shtml', '4', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editUser&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('7', '删除用户', '2', 'user_delete', '2', '/user/deleteById.shtml', '5', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delUser&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('8', '新增角色', '3', 'role_add', '2', '/role/addUI.shtml', '8', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addRole&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('9', '修改角色', '3', 'role_edit', '2', '/role/editUI.shtml', '9', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editRole&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('10', '删除角色', '3', 'role_delete', '2', '/role/delete.shtml', '10', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delRole&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('11', '分配权限', '3', 'role_perss', '2', '/resources/permissions.shtml', '11', '无', '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;permissions&quot;&nbsp;class=&quot;btn&nbsp;btn&nbsp;btn-grey&nbsp;marR10&quot;&gt;分配权限&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('25', '登陆信息管理', '0', 'ly_login', '0', 'ly_login', '18', 'fa-calendar', '0', '登陆信息管理');
INSERT INTO `sys_resources` VALUES ('26', '用户登录记录', '25', 'ly_log_list', '1', '/userlogin/listUI.shtml', '19', null, '0', '用户登录记录');
INSERT INTO `sys_resources` VALUES ('27', '操作日志管理', '0', 'ly_log', '0', 'ly_log', '20', 'fa-picture-o', '1', '操作日志管理');
INSERT INTO `sys_resources` VALUES ('28', '日志查询', '27', 'ly_log', '1', '/log/list.shtml', '21', null, '0', null);
INSERT INTO `sys_resources` VALUES ('29', '新增菜单资源', '4', 'resources_add', '2', '/resources/addUI.shtml', '13', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addResources&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('30', '修改菜单资源', '4', 'resources_edit', '2', '/resources/editUI.shtml', '14', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editResources&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('31', '删除菜单资源', '4', 'resources_delete', '2', '/resources/delete.shtml', '15', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delResources&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('32', '系统监控管理', '0', 'monitor', '0', 'monitor', '16', 'fa-tag', '0', '系统监控管理');
INSERT INTO `sys_resources` VALUES ('33', '实时监控', '32', 'sysmonitor', '1', '/monitor/monitor.shtml', '17', null, '0', '实时监控');
INSERT INTO `sys_resources` VALUES ('34', '分配权限', '2', 'permissions', '2', '/resources/permissions.shtml', '6', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;permissions&quot;&nbsp;class=&quot;btn&nbsp;btn&nbsp;btn-grey&nbsp;marR10&quot;&gt;分配权限&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('35', '告警列表', '32', 'monitor_warn', '1', '/monitor/list.shtml', null, null, '0', '告警列表');
INSERT INTO `sys_resources` VALUES ('36', '测试一级菜单', '0', 'testFirstMenu', '0', 'firstMenu', null, null, '0', null);
INSERT INTO `sys_resources` VALUES ('37', '测试二级菜单', '36', 'testSecondMenu', '0', 'secondMenu', null, null, '0', null);
INSERT INTO `sys_resources` VALUES ('38', '测试三级菜单', '37', 'testThirdMenu', '1', 'thirdMenu', null, null, '0', null);
INSERT INTO `sys_resources` VALUES ('39', '三级菜单新增', '38', 'thirdMenu_add', '2', '/thirdMenu_add', null, null, '0', '&lt;button type=&quot;button&quot; id=&quot;addResources&quot; class=&quot;btn btn-primary marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('40', '三级菜单编辑', '38', 'thirdMenu_edit', '2', '/thirdMenu_edit', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editFun&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `state` varchar(3) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `roleKey` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '0', '管理员', 'admin', '管理员');
INSERT INTO `sys_role` VALUES ('2', '0', '普通角色', 'simple', '普通角色');
INSERT INTO `sys_role` VALUES ('3', '0', '超级管理员', 'SUPER', '超级管理员');
INSERT INTO `sys_role` VALUES ('4', '0', '测试角色', 'testRole', '测试角色');

-- ----------------------------
-- Table structure for `sys_server_info`
-- ----------------------------
DROP TABLE IF EXISTS `sys_server_info`;
CREATE TABLE `sys_server_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cpuUsage` varchar(255) DEFAULT NULL,
  `setCpuUsage` varchar(255) DEFAULT NULL,
  `jvmUsage` varchar(255) DEFAULT NULL,
  `setJvmUsage` varchar(255) DEFAULT NULL,
  `ramUsage` varchar(255) DEFAULT NULL,
  `setRamUsage` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `operTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_server_info
-- ----------------------------
INSERT INTO `sys_server_info` VALUES ('5', '18', '40', '49', '40', '71', '40', '121261494@qq.com', '2015-04-25 18:07:02', '<font color=\"red\">JVM当前：49%,超出预设值 40%<br>内存当前：71%,超出预设值  40%</font>');
INSERT INTO `sys_server_info` VALUES ('6', '3', '40', '50', '40', '71', '40', '121261494@qq.com', '2015-04-25 18:08:03', '<font color=\"red\">JVM当前：50%,超出预设值 40%<br>内存当前：71%,超出预设值  40%</font>');
INSERT INTO `sys_server_info` VALUES ('7', '5', '40', '50', '40', '70', '40', '121261494@qq.com', '2015-04-25 18:09:02', '<font color=\"red\">JVM当前：50%,超出预设值 40%<br>内存当前：70%,超出预设值  40%</font>');
INSERT INTO `sys_server_info` VALUES ('8', '5', '40', '52', '40', '69', '40', '121261494@qq.com', '2015-04-25 18:10:03', '<font color=\"red\">JVM当前：52%,超出预设值 40%<br>内存当前：69%,超出预设值  40%</font>');
INSERT INTO `sys_server_info` VALUES ('9', '2', '40', '52', '40', '68', '40', '121261494@qq.com', '2015-04-25 18:11:02', '<font color=\"red\">JVM当前：52%,超出预设值 40%<br>内存当前：68%,超出预设值  40%</font>');
INSERT INTO `sys_server_info` VALUES ('10', '7', '40', '53', '40', '67', '40', '121261494@qq.com', '2015-04-25 18:12:02', '<font color=\"red\">JVM当前：53%,超出预设值 40%<br>内存当前：67%,超出预设值  40%</font>');
INSERT INTO `sys_server_info` VALUES ('11', '5', '40', '54', '40', '67', '40', '121261494@qq.com', '2015-04-25 18:13:02', '<font color=\"red\">JVM当前：54%,超出预设值 40%<br>内存当前：67%,超出预设值  40%</font>');
INSERT INTO `sys_server_info` VALUES ('12', '16', '40', '55', '40', '66', '40', '121261494@qq.com', '2015-04-25 18:14:02', '<font color=\"red\">JVM当前：55%,超出预设值 40%<br>内存当前：66%,超出预设值  40%</font>');
INSERT INTO `sys_server_info` VALUES ('13', '5', '40', '56', '40', '65', '40', '121261494@qq.com', '2015-04-25 18:15:02', '<font color=\"red\">JVM当前：56%,超出预设值 40%<br>内存当前：65%,超出预设值  40%</font>');
INSERT INTO `sys_server_info` VALUES ('14', '8', '40', '57', '40', '64', '40', '121261494@qq.com', '2015-04-25 18:16:02', '<font color=\"red\">JVM当前：57%,超出预设值 40%<br>内存当前：64%,超出预设值  40%</font>');
INSERT INTO `sys_server_info` VALUES ('15', '3', '40', '58', '40', '63', '40', '121261494@qq.com', '2015-04-25 18:17:02', '<font color=\"red\">JVM当前：58%,超出预设值 40%<br>内存当前：63%,超出预设值  40%</font>');
INSERT INTO `sys_server_info` VALUES ('16', '6', '40', '59', '40', '62', '40', '121261494@qq.com', '2015-04-25 18:18:03', '<font color=\"red\">JVM当前：59%,超出预设值 40%<br>内存当前：62%,超出预设值  40%</font>');
INSERT INTO `sys_server_info` VALUES ('17', '1', '40', '60', '40', '61', '40', '121261494@qq.com', '2015-04-25 18:19:02', '<font color=\"red\">JVM当前：60%,超出预设值 40%<br>内存当前：61%,超出预设值  40%</font>');
INSERT INTO `sys_server_info` VALUES ('18', '5', '40', '61', '40', '61', '40', '121261494@qq.com', '2015-04-25 18:20:02', '<font color=\"red\">JVM当前：61%,超出预设值 40%<br>内存当前：61%,超出预设值  40%</font>');
INSERT INTO `sys_server_info` VALUES ('19', '5', '40', '38', '40', '61', '40', '121261494@qq.com', '2015-04-25 18:21:02', '<font color=\"red\">内存当前：61%,超出预设值  40%</font>');
INSERT INTO `sys_server_info` VALUES ('20', '5', '40', '39', '40', '60', '40', '121261494@qq.com', '2015-04-25 18:22:02', '<font color=\"red\">内存当前：60%,超出预设值  40%</font>');
INSERT INTO `sys_server_info` VALUES ('21', '4', '40', '40', '40', '59', '40', '121261494@qq.com', '2015-04-25 18:23:02', '<font color=\"red\">内存当前：59%,超出预设值  40%</font>');
INSERT INTO `sys_server_info` VALUES ('22', '32', '80', '41', '80', '81', '80', '121261494@qq.com', '2015-04-26 01:43:05', '<font color=\"red\">内存当前：81%,超出预设值  80%</font>');
INSERT INTO `sys_server_info` VALUES ('23', '55', '80', '55', '80', '81', '80', '121261494@qq.com', '2015-04-26 01:50:03', '<font color=\"red\">内存当前：81%,超出预设值  80%</font>');
INSERT INTO `sys_server_info` VALUES ('24', '13', '80', '53', '80', '81', '80', '121261494@qq.com', '2015-04-26 01:59:08', '<font color=\"red\">内存当前：81%,超出预设值  80%</font>');
INSERT INTO `sys_server_info` VALUES ('25', '85', '80', '58', '80', '72', '80', '121261494@qq.com', '2015-04-26 02:46:06', '<font color=\"red\">CPU当前：85%,超出预设值  80%<br></font>');
INSERT INTO `sys_server_info` VALUES ('26', '34', '80', '59', '80', '81', '80', '121261494@qq.com', '2015-04-27 00:29:06', '<font color=\"red\">内存当前：81%,超出预设值  80%</font>');
INSERT INTO `sys_server_info` VALUES ('27', '92', '80', '47', '80', '64', '80', '121261494@qq.com', '2015-04-27 00:44:07', '<font color=\"red\">CPU当前：92%,超出预设值  80%<br></font>');
INSERT INTO `sys_server_info` VALUES ('28', '85', '80', '49', '80', '68', '80', '121261494@qq.com', '2015-04-27 23:38:04', '<font color=\"red\">CPU当前：85%,超出预设值  80%<br></font>');
INSERT INTO `sys_server_info` VALUES ('29', '94', '80', '69', '80', '73', '80', '121261494@qq.com', '2015-04-28 01:35:03', '<font color=\"red\">CPU当前：94%,超出预设值  80%<br></font>');
INSERT INTO `sys_server_info` VALUES ('30', '6', '80', '43', '80', '87', '80', '121261494@qq.com', '2015-05-09 00:00:08', '<font color=\"red\">内存当前：87%,超出预设值  80%</font>');
INSERT INTO `sys_server_info` VALUES ('31', '88', '80', '59', '80', '87', '80', '121261494@qq.com', '2015-05-09 00:01:14', '<font color=\"red\">CPU当前：88%,超出预设值  80%<br>内存当前：87%,超出预设值  80%</font>');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `accountName` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `credentialsSalt` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `locked` varchar(3) DEFAULT '0',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletestatus` int(1) DEFAULT '0' COMMENT '逻辑删除状态0:存在1:删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '蓝缘', 'simple', '78e21a6eb88529eab722793a448ed394', '4157c3feef4a6ed91b2c28cf4392f2d1', '0', '1', '2015-05-17 22:23:15', '0');
INSERT INTO `sys_user` VALUES ('2', '超级管理员', 'ROOT', '78e21a6eb88529eab722793a448ed394', '4157c3feef4a6ed91b2c28cf4392f2d1', '0000', '1', '2015-05-23 17:39:37', '0');
INSERT INTO `sys_user` VALUES ('3', '管理员', 'admin', '78e21a6eb88529eab722793a448ed394', '4157c3feef4a6ed91b2c28cf4392f2d1', '3434', '1', '2015-05-23 17:39:39', '0');
INSERT INTO `sys_user` VALUES ('4', '王勇', 'wangyong', 'e8d27aec76860e6c8a91cf0ac259c1a6', '825d3f5777e4172c50e9dc2a60ffb82d', '测试账号', '1', '2016-03-27 22:49:29', '0');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '2');
INSERT INTO `sys_user_role` VALUES ('2', '3');
INSERT INTO `sys_user_role` VALUES ('3', '1');
INSERT INTO `sys_user_role` VALUES ('4', '1');
INSERT INTO `sys_user_role` VALUES ('4', '2');
INSERT INTO `sys_user_role` VALUES ('4', '3');
INSERT INTO `sys_user_role` VALUES ('4', '4');

-- ----------------------------
-- Table structure for `sys_userlogin`
-- ----------------------------
DROP TABLE IF EXISTS `sys_userlogin`;
CREATE TABLE `sys_userlogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `accountName` varchar(20) DEFAULT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `loginIP` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ly_user_loginlist` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_userlogin
-- ----------------------------
INSERT INTO `sys_userlogin` VALUES ('143', '3', 'admin', '2016-03-27 08:08:08', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('144', '3', 'admin', '2016-03-27 08:10:44', '192.168.1.101');
INSERT INTO `sys_userlogin` VALUES ('145', '3', 'admin', '2016-03-27 08:12:42', '192.168.1.103');
INSERT INTO `sys_userlogin` VALUES ('146', '3', 'admin', '2016-03-27 08:13:38', '192.168.1.103');
INSERT INTO `sys_userlogin` VALUES ('147', '3', 'admin', '2016-03-27 08:13:55', '192.168.1.103');
INSERT INTO `sys_userlogin` VALUES ('148', '3', 'admin', '2016-03-27 08:14:53', '192.168.1.103');
INSERT INTO `sys_userlogin` VALUES ('149', '3', 'admin', '2016-03-27 22:09:39', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('150', '3', 'admin', '2016-03-27 22:44:56', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('151', '4', 'wangyong', '2016-03-27 22:54:36', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('152', '3', 'admin', '2016-03-27 22:54:57', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('153', '4', 'wangyong', '2016-03-27 22:55:38', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('154', '3', 'admin', '2016-03-28 22:17:42', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('155', '3', 'admin', '2016-03-29 20:05:12', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('156', '3', 'admin', '2016-03-29 20:10:16', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('157', '3', 'admin', '2016-03-29 21:28:25', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('158', '3', 'admin', '2016-03-29 21:29:46', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('159', '3', 'admin', '2016-03-29 22:39:16', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('160', '4', 'wangyong', '2016-03-29 22:39:58', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('161', '3', 'admin', '2016-03-29 23:45:01', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('162', '3', 'admin', '2016-03-30 15:10:15', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('163', '3', 'admin', '2016-04-02 20:48:58', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('164', '3', 'admin', '2016-04-12 20:55:33', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('165', '3', 'admin', '2016-04-14 20:21:00', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('166', '3', 'admin', '2016-04-14 20:33:54', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('167', '3', 'admin', '2016-04-14 21:12:02', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('168', '3', 'admin', '2016-04-14 21:43:49', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('169', '3', 'admin', '2016-04-14 21:51:24', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('170', '3', 'admin', '2016-04-19 21:16:43', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('171', '3', 'admin', '2016-04-19 21:47:21', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('172', '3', 'admin', '2016-04-19 22:16:00', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('173', '3', 'admin', '2016-04-19 22:16:16', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('174', '3', 'admin', '2016-04-19 22:16:26', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('175', '3', 'admin', '2016-04-19 22:16:42', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('176', '4', 'wangyong', '2016-04-19 22:25:47', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('177', '3', 'admin', '2016-04-19 22:26:12', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('178', '3', 'admin', '2016-04-19 22:54:55', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('179', '3', 'admin', '2016-04-19 22:58:23', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('180', '3', 'admin', '2016-04-19 23:28:00', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('181', '3', 'admin', '2016-04-19 23:31:22', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('182', '3', 'admin', '2016-04-19 23:37:30', '127.0.0.1');
