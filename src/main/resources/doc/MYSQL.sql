/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : carms

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2016-05-26 20:39:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_button`
-- ----------------------------
DROP TABLE IF EXISTS `sys_button`;
CREATE TABLE `sys_button` (
  `ID` VARCHAR(36) NOT NULL,
  `NAME` VARCHAR(30) DEFAULT NULL,
  `BUTTOM` VARCHAR(200) DEFAULT NULL,
  `DESCRIPTION` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_button
-- ----------------------------
INSERT INTO `SYS_BUTTON` VALUES ('1', '新增', '<button type=\"button\" id=\"addFun\" class=\"btn btn-primary marR10\">新增</button>', '');
INSERT INTO `SYS_BUTTON` VALUES ('2', '编辑', '<button type=\"button\" id=\"editFun\" class=\"btn btn-info marR10\">编辑</button>', null);
INSERT INTO `SYS_BUTTON` VALUES ('3', '删除', '<button type=\"button\" id=\"delFun\" class=\"btn btn-danger marR10\">删除</button>', null);
INSERT INTO `SYS_BUTTON` VALUES ('4', '上传', '<button type=\"button\" id=\"upLoad\" class=\"btn btn-primary marR10\">上传</button>', null);
INSERT INTO `SYS_BUTTON` VALUES ('5', '下载', '<button type=\"button\" id=\"downLoad\" class=\"btn btn-primary marR10\">下载</button>', null);
INSERT INTO `SYS_BUTTON` VALUES ('6', '上移', '<button type=\"button\" id=\"lyGridUp\" class=\"btn btn-success marR10\">上移</button>', null);
INSERT INTO `SYS_BUTTON` VALUES ('7', '下移', '<button type=\"button\" id=\"lyGridDown\" class=\"btn btn btn-grey marR10\">下移</button>', null);
INSERT INTO `SYS_BUTTON` VALUES ('8', '分配权限', '<button type=\"button\" id=\"permissions\" class=\"btn btn btn-grey marR10\">分配权限</button>', null);
INSERT INTO `SYS_BUTTON` VALUES ('9', '角色授权', '<button type=\"button\" id=\"rolePermissions\" class=\"btn btn btn-grey marR10\">角色授权</button>', null);

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `ID` VARCHAR(36) NOT NULL,
  `ACCOUNTNAME` VARCHAR(300) DEFAULT NULL,
  `MODULE` VARCHAR(300) DEFAULT NULL,
  `METHODS` VARCHAR(300) DEFAULT NULL,
  `ACTIONTIME` VARCHAR(300) DEFAULT NULL,
  `USERIP` VARCHAR(300) DEFAULT NULL,
  `OPERTIME` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DESCRIPTION` VARCHAR(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('0146f88020fa11e62560a607745f8faf', 'admin', '系统管理', '<font color=\"red\">执行方法异常:-->资源管理-删除资源</font>', '0', '127.0.0.1', '2016-05-23 23:21:21', '<font color=\"red\">执行方法异常:-->java.lang.RuntimeException: org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.reflect.UndeclaredThrowableException\r\n### Cause: java.lang.reflect.UndeclaredThrowableException</font>');
INSERT INTO `sys_log` VALUES ('028eee501a5611e6f3d264e6d7cb6476', 'admin', '系统管理', '用户管理-新增用户', '40', '127.0.0.1', '2016-05-15 12:32:19', '执行成功!');
INSERT INTO `sys_log` VALUES ('04137c7020ee11e61049a126c704f892', 'admin', '系统管理', '组管理-新增组', '7', '127.0.0.1', '2016-05-23 21:55:32', '执行成功!');
INSERT INTO `sys_log` VALUES ('07fdad201c4711e635f64f80f11c336d', 'admin', '系统管理', '资源管理-用户授权', '11779', '127.0.0.1', '2016-05-17 23:50:08', '执行成功!');
INSERT INTO `sys_log` VALUES ('09247bb020ee11e61049a126c704f892', 'admin', '系统管理', '组管理-新增组', '4', '127.0.0.1', '2016-05-23 21:55:40', '执行成功!');
INSERT INTO `sys_log` VALUES ('0aebfc10192911e6732d3837f2b37a88', 'admin', '系统管理', '组管理-新增组', '3618', '127.0.0.1', '2016-05-14 00:37:54', '执行成功!');
INSERT INTO `sys_log` VALUES ('0b1c42501ea411e6c41c001b1aa300d6', 'admin', '系统管理', '组管理-新增组', '3', '127.0.0.1', '2016-05-21 00:00:59', '执行成功!');
INSERT INTO `sys_log` VALUES ('0ddfe0e020ee11e61049a126c704f892', 'admin', '系统管理', '组管理-新增组', '3', '127.0.0.1', '2016-05-23 21:55:48', '执行成功!');
INSERT INTO `sys_log` VALUES ('13639f2020ee11e61049a126c704f892', 'admin', '系统管理', '组管理-新增组', '16', '127.0.0.1', '2016-05-23 21:55:58', '执行成功!');
INSERT INTO `sys_log` VALUES ('18bae1601aa711e6aa65c31183fcc80f', 'admin', '系统管理', '用户管理-删除用户', '15', '127.0.0.1', '2016-05-15 22:12:45', '执行成功!');
INSERT INTO `sys_log` VALUES ('199f62c020ee11e61049a126c704f892', 'admin', '系统管理', '组管理-新增组', '3', '127.0.0.1', '2016-05-23 21:56:08', '执行成功!');
INSERT INTO `sys_log` VALUES ('1b5a1f5020f911e62560a607745f8faf', 'admin', '系统管理', '<font color=\"red\">执行方法异常:-->资源管理-删除资源</font>', '0', '127.0.0.1', '2016-05-23 23:20:56', '<font color=\"red\">执行方法异常:-->java.lang.RuntimeException: org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.PersistenceException: ### Error updating database. Cause: java.lang.reflect.UndeclaredThrowableException ### Cause: java.lang.reflect.UndeclaredThrowableException</font>');
INSERT INTO `sys_log` VALUES ('20cd60d01aa711e6aa65c31183fcc80f', 'admin', '系统管理', '用户管理-新增用户', '13', '127.0.0.1', '2016-05-15 22:12:59', '执行成功!');
INSERT INTO `sys_log` VALUES ('2339458020ee11e61049a126c704f892', 'admin', '系统管理', '组管理-新增组', '3', '127.0.0.1', '2016-05-23 21:56:24', '执行成功!');
INSERT INTO `sys_log` VALUES ('29a2c3c0193611e6145da05d5495e402', 'admin', '系统管理', '组管理-新增组', '4', '127.0.0.1', '2016-05-14 02:11:49', '执行成功!');
INSERT INTO `sys_log` VALUES ('2a1468a01aa711e6aa65c31183fcc80f', 'admin', '系统管理', '用户管理-修改用户', '3897', '127.0.0.1', '2016-05-15 22:13:14', '执行成功!');
INSERT INTO `sys_log` VALUES ('2ada84a0192f11e6cb05c602e3c2d662', 'admin', '系统管理', '用户管理-删除用户', '23', '127.0.0.1', '2016-05-14 01:21:45', '执行成功!');
INSERT INTO `sys_log` VALUES ('2b4ac8d01ea411e6c41c001b1aa300d6', 'admin', '系统管理', '资源管理-用户授权', '8', '127.0.0.1', '2016-05-21 00:01:53', '执行成功!');
INSERT INTO `sys_log` VALUES ('2c9cd2d020ea11e61049a126c704f892', 'admin', '系统管理', '用户管理-新增用户', '23', '127.0.0.1', '2016-05-23 21:28:02', '执行成功!');
INSERT INTO `sys_log` VALUES ('3a7597c020ea11e61049a126c704f892', 'admin', '系统管理', '用户管理-新增用户', '3', '127.0.0.1', '2016-05-23 21:28:25', '执行成功!');
INSERT INTO `sys_log` VALUES ('3c28bd10193611e6145da05d5495e402', 'admin', '系统管理', '组管理-删除组', '3', '127.0.0.1', '2016-05-14 02:12:20', '执行成功!');
INSERT INTO `sys_log` VALUES ('3ecea7101aa711e6aa65c31183fcc80f', 'admin', '系统管理', '用户管理-修改用户', '2474', '127.0.0.1', '2016-05-15 22:13:49', '执行成功!');
INSERT INTO `sys_log` VALUES ('470e29a020ec11e61049a126c704f892', 'admin', '系统管理', '用户管理-新增用户', '12', '127.0.0.1', '2016-05-23 21:43:05', '执行成功!');
INSERT INTO `sys_log` VALUES ('47a7497020f911e6bca4718d5dcb9ff1', 'admin', '系统管理', '<font color=\"red\">执行方法异常:-->资源管理-删除资源</font>', '0', '127.0.0.1', '2016-05-23 23:16:10', '<font color=\"red\">执行方法异常:-->java.lang.RuntimeException: org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.reflect.UndeclaredThrowableException\r\n### Cause: java.lang.reflect.UndeclaredThrowableException</font>');
INSERT INTO `sys_log` VALUES ('4db996a020fa11e62560a607745f8faf', 'admin', '系统管理', '<font color=\"red\">执行方法异常:-->资源管理-删除资源</font>', '0', '127.0.0.1', '2016-05-23 23:23:29', '<font color=\"red\">执行方法异常:-->java.lang.RuntimeException: org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.reflect.UndeclaredThrowableException\r\n### Cause: java.lang.reflect.UndeclaredThrowableException</font>');
INSERT INTO `sys_log` VALUES ('576f64f01a9b11e63c7393aab17b7432', 'admin', '系统管理', '用户管理-删除用户', '21', '127.0.0.1', '2016-05-15 20:48:37', '执行成功!');
INSERT INTO `sys_log` VALUES ('7c1cd770192811e6972375f9f6682d04', 'admin', '系统管理', '组管理-修改组', '4', '127.0.0.1', '2016-05-14 00:33:55', '执行成功!');
INSERT INTO `sys_log` VALUES ('848bf2a0192411e6972375f9f6682d04', 'admin', '系统管理', '用户管理-删除用户', '14', '127.0.0.1', '2016-05-14 00:05:31', '执行成功!');
INSERT INTO `sys_log` VALUES ('86a0eff0192411e6972375f9f6682d04', 'admin', '系统管理', '用户管理-删除用户', '7', '127.0.0.1', '2016-05-14 00:05:34', '执行成功!');
INSERT INTO `sys_log` VALUES ('8805103020ed11e61049a126c704f892', 'admin', '系统管理', '用户管理-修改用户', '25', '127.0.0.1', '2016-05-23 21:52:04', '执行成功!');
INSERT INTO `sys_log` VALUES ('8fee83d020ed11e61049a126c704f892', 'admin', '系统管理', '用户管理-删除用户', '6', '127.0.0.1', '2016-05-23 21:52:17', '执行成功!');
INSERT INTO `sys_log` VALUES ('9ef65e601a5411e65118ff34da925a64', 'admin', '系统管理', '用户管理-删除用户', '12', '127.0.0.1', '2016-05-15 12:22:22', '执行成功!');
INSERT INTO `sys_log` VALUES ('a58cce30192d11e6ef6d371adddfe726', 'admin', '系统管理', '角色管理-修改权限', '49', '127.0.0.1', '2016-05-14 01:10:52', '执行成功!');
INSERT INTO `sys_log` VALUES ('a64407301a5411e65118ff34da925a64', 'admin', '系统管理', '用户管理-新增用户', '6', '127.0.0.1', '2016-05-15 12:22:35', '执行成功!');
INSERT INTO `sys_log` VALUES ('bb5a1f5020f911e62560a607745f8faf', 'admin', '系统管理', '<font color=\"red\">执行方法异常:-->资源管理-删除资源</font>', '0', '127.0.0.1', '2016-05-23 23:19:24', '<font color=\"red\">执行方法异常:-->java.lang.RuntimeException: org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.reflect.UndeclaredThrowableException\r\n### Cause: java.lang.reflect.UndeclaredThrowableException</font>');
INSERT INTO `sys_log` VALUES ('d67fdd00192f11e6cb05c602e3c2d662', 'admin', '系统管理', '用户管理-新增用户', '11', '127.0.0.1', '2016-05-14 01:26:33', '执行成功!');
INSERT INTO `sys_log` VALUES ('e6caafc020f811e6bca4718d5dcb9ff1', 'admin', '系统管理', '资源管理-新增资源', '15', '127.0.0.1', '2016-05-23 23:13:27', '执行成功!');
INSERT INTO `sys_log` VALUES ('f067959019ee11e64b50e43528e70690', 'admin', '系统管理', '用户管理-新增用户', '20', '127.0.0.1', '2016-05-15 00:14:30', '执行成功!');
INSERT INTO `sys_log` VALUES ('f07b75e020f811e6bca4718d5dcb9ff1', 'admin', '系统管理', '资源管理-修改资源', '14', '127.0.0.1', '2016-05-23 23:13:44', '执行成功!');
INSERT INTO `sys_log` VALUES ('f1fd23201ea311e6c41c001b1aa300d6', 'admin', '系统管理', '组管理-修改组', '15', '127.0.0.1', '2016-05-21 00:00:16', '执行成功!');
INSERT INTO `sys_log` VALUES ('f3e6cc20193c11e67e80bc44bb91daff', 'admin', '系统管理', '用户管理-删除用户', '8456', '127.0.0.1', '2016-05-14 03:00:26', '执行成功!');
INSERT INTO `sys_log` VALUES ('fc6982d020ed11e61049a126c704f892', 'admin', '系统管理', '组管理-新增组', '6', '127.0.0.1', '2016-05-23 21:55:19', '执行成功!');

-- ----------------------------
-- Table structure for `sys_resources`
-- ----------------------------
DROP TABLE IF EXISTS `sys_resources`;
CREATE TABLE `sys_resources` (
  `ID` VARCHAR(36) NOT NULL,
  `NAME` VARCHAR(50) DEFAULT NULL,
  `PARENTID` VARCHAR(36) DEFAULT NULL,
  `RESKEY` VARCHAR(50) DEFAULT NULL,
  `TYPE` VARCHAR(40) DEFAULT NULL,
  `RESURL` VARCHAR(200) DEFAULT NULL,
  `RESLEVEL` INT(4) DEFAULT NULL,
  `ICON` VARCHAR(100) DEFAULT NULL,
  `ISHIDE` INT(3) DEFAULT '0',
  `DESCRIPTION` VARCHAR(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_resources
-- ----------------------------
INSERT INTO `sys_resources` VALUES ('82fffbb7-1e8f-11e6-b33a-f0def1a98b46', '系统基础管理', '0', 'system', '0', 'system', '1', 'fa-desktop', '0', '系统基础管理');
INSERT INTO `sys_resources` VALUES ('82fffe81-1e8f-11e6-b33a-f0def1a98b46', '删除角色', '83000655-1e8f-11e6-b33a-f0def1a98b46', 'role_delete', '2', '/role/delete.shtml', '10', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delRole&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('82ffffb1-1e8f-11e6-b33a-f0def1a98b46', '用户管理', '82fffbb7-1e8f-11e6-b33a-f0def1a98b46', 'user', '1', '/user/listUI.shtml', '2', null, '0', null);
INSERT INTO `sys_resources` VALUES ('830000fb-1e8f-11e6-b33a-f0def1a98b46', '登陆信息管理', '0', 'userlogin', '0', 'userlogin', '18', 'fa-calendar', '0', '登陆信息管理');
INSERT INTO `sys_resources` VALUES ('8300020f-1e8f-11e6-b33a-f0def1a98b46', '用户登录记录', '830000fb-1e8f-11e6-b33a-f0def1a98b46', 'userlogin_listUI', '1', '/userlogin/listUI.shtml', '19', null, '0', '用户登录记录');
INSERT INTO `sys_resources` VALUES ('83000332-1e8f-11e6-b33a-f0def1a98b46', '操作日志管理', '0', 'log', '0', 'log', '20', 'fa-picture-o', '1', '操作日志管理');
INSERT INTO `sys_resources` VALUES ('83000442-1e8f-11e6-b33a-f0def1a98b46', '日志查询', '83000332-1e8f-11e6-b33a-f0def1a98b46', 'log_listUI', '1', '/log/listUI.shtml', '21', null, '0', null);
INSERT INTO `sys_resources` VALUES ('83000545-1e8f-11e6-b33a-f0def1a98b46', '新增资源', '83000d91-1e8f-11e6-b33a-f0def1a98b46', 'resources_add', '2', '/resources/addUI.shtml', '13', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addResources&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('83000655-1e8f-11e6-b33a-f0def1a98b46', '角色管理', '82fffbb7-1e8f-11e6-b33a-f0def1a98b46', 'role', '1', '/role/listUI.shtml', '7', 'fa-list', '0', '组管理');
INSERT INTO `sys_resources` VALUES ('83000760-1e8f-11e6-b33a-f0def1a98b46', '修改资源', '83000d91-1e8f-11e6-b33a-f0def1a98b46', 'resources_edit', '2', '/resources/editUI.shtml', '14', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editResources&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('83000863-1e8f-11e6-b33a-f0def1a98b46', '删除资源', '83000d91-1e8f-11e6-b33a-f0def1a98b46', 'resources_delete', '2', '/resources/delete.shtml', '15', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delResources&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('83000962-1e8f-11e6-b33a-f0def1a98b46', '系统监控管理', '0', 'monitor', '0', 'monitor', '16', 'fa-tag', '0', '系统监控管理');
INSERT INTO `sys_resources` VALUES ('83000a6d-1e8f-11e6-b33a-f0def1a98b46', '实时监控', '83000962-1e8f-11e6-b33a-f0def1a98b46', 'monitor_realtime', '1', '/monitor/realtime.shtml', '17', null, '0', '实时监控');
INSERT INTO `sys_resources` VALUES ('83000b70-1e8f-11e6-b33a-f0def1a98b46', '用户授权', '82ffffb1-1e8f-11e6-b33a-f0def1a98b46', 'userPermissions', '2', '/resources/userPermissions.shtml', '6', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;userPermissions&quot;&nbsp;class=&quot;btn&nbsp;btn&nbsp;btn-grey&nbsp;marR10&quot;&gt;用户授权&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('83000c8e-1e8f-11e6-b33a-f0def1a98b46', '告警列表', '83000962-1e8f-11e6-b33a-f0def1a98b46', 'monitor_warn', '1', '/monitor/warmListUI.shtml', null, null, '0', '告警列表');
INSERT INTO `sys_resources` VALUES ('83000d91-1e8f-11e6-b33a-f0def1a98b46', '资源管理', '82fffbb7-1e8f-11e6-b33a-f0def1a98b46', 'resources', '1', '/resources/listUI.shtml', '12', 'fa-list-alt', '0', '资源管理');
INSERT INTO `sys_resources` VALUES ('83000e93-1e8f-11e6-b33a-f0def1a98b46', '角色授权', '83000655-1e8f-11e6-b33a-f0def1a98b46', 'resources_rolePermissions', '2', '/resources/rolePermissions.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;rolePermissions&quot;&nbsp;class=&quot;btn&nbsp;btn&nbsp;btn-grey&nbsp;marR10&quot;&gt;角色授权&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('83000fa4-1e8f-11e6-b33a-f0def1a98b46', '新增用户', '82ffffb1-1e8f-11e6-b33a-f0def1a98b46', 'user_add', '2', '/user/addUI.shtml', '3', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addUser&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('830010ab-1e8f-11e6-b33a-f0def1a98b46', '修改用户', '82ffffb1-1e8f-11e6-b33a-f0def1a98b46', 'user_edit', '2', '/user/editUI.shtml', '4', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editUser&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('830011a5-1e8f-11e6-b33a-f0def1a98b46', '删除用户', '82ffffb1-1e8f-11e6-b33a-f0def1a98b46', 'user_delete', '2', '/user/delete.shtml', '5', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delUser&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('8300129f-1e8f-11e6-b33a-f0def1a98b46', '新增角色', '83000655-1e8f-11e6-b33a-f0def1a98b46', 'role_add', '2', '/role/addUI.shtml', '8', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addRole&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('830013a6-1e8f-11e6-b33a-f0def1a98b46', '修改角色', '83000655-1e8f-11e6-b33a-f0def1a98b46', 'role_edit', '2', '/role/editUI.shtml', '9', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editRole&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');
INSERT INTO `sys_resources` VALUES ('e6c865d020f811e6bca4718d5dcb9ff1', 'a', '82fffbb7-1e8f-11e6-b33a-f0def1a98b46', 'a', '1', 'a', null, 'a', '1', null);

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ID` VARCHAR(36) NOT NULL,
  `STATE` VARCHAR(3) DEFAULT NULL,
  `NAME` VARCHAR(50) DEFAULT NULL,
  `ROLEKEY` VARCHAR(50) DEFAULT NULL,
  `DESCRIPTION` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('0', '1', '开发人员角色', 'developer', '开发人员角色');
INSERT INTO `sys_role` VALUES ('0412921020ee11e61049a126c704f892', '1', '角色2', 'role2', 'role2');
INSERT INTO `sys_role` VALUES ('0923df7020ee11e61049a126c704f892', '1', 'role3', 'role3', null);
INSERT INTO `sys_role` VALUES ('0b1bf4301ea411e6c41c001b1aa300d6', '1', 'root角色', 'root', 'root角色');
INSERT INTO `sys_role` VALUES ('0ddf6bb020ee11e61049a126c704f892', '1', 'role4', 'role4', 'role4');
INSERT INTO `sys_role` VALUES ('1361553020ee11e61049a126c704f892', '1', 'role5', 'role5', 'role5');
INSERT INTO `sys_role` VALUES ('199eed9020ee11e61049a126c704f892', '1', 'role6', 'role6', 'role6');
INSERT INTO `sys_role` VALUES ('2', '1', '普通角色', 'simple', '普通角色');
INSERT INTO `sys_role` VALUES ('22e116e4-1e8e-11e6-b33a-f0def1a98b46', '1', '管理员', 'admin', '管理员');
INSERT INTO `sys_role` VALUES ('2338d05020ee11e61049a126c704f892', '1', 'role7', 'role7', 'role7');
INSERT INTO `sys_role` VALUES ('fc68987020ed11e61049a126c704f892', '1', '角色1', 'role1', 'role1');

-- ----------------------------
-- Table structure for `sys_role_res`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_res`;
CREATE TABLE `sys_role_res` (
  `ROLEID` VARCHAR(36) COLLATE UTF8_BIN NOT NULL DEFAULT '0',
  `RESID` VARCHAR(36) COLLATE UTF8_BIN NOT NULL DEFAULT '0',
  PRIMARY KEY (`resId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_role_res
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_server_info`
-- ----------------------------
DROP TABLE IF EXISTS `sys_server_info`;
CREATE TABLE `sys_server_info` (
  `ID` VARCHAR(36) NOT NULL,
  `CPUUSAGE` VARCHAR(255) DEFAULT NULL,
  `SETCPUUSAGE` VARCHAR(255) DEFAULT NULL,
  `JVMUSAGE` VARCHAR(255) DEFAULT NULL,
  `SETJVMUSAGE` VARCHAR(255) DEFAULT NULL,
  `RAMUSAGE` VARCHAR(255) DEFAULT NULL,
  `SETRAMUSAGE` VARCHAR(255) DEFAULT NULL,
  `EMAIL` VARCHAR(255) DEFAULT NULL,
  `OPERTIME` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MARK` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_server_info
-- ----------------------------
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
INSERT INTO `sys_server_info` VALUES ('5', '18', '40', '49', '40', '71', '40', '121261494@qq.com', '2015-04-25 18:07:02', '<font color=\"red\">JVM当前：49%,超出预设值 40%<br>内存当前：71%,超出预设值  40%</font>');
INSERT INTO `sys_server_info` VALUES ('6', '3', '40', '50', '40', '71', '40', '121261494@qq.com', '2015-04-25 18:08:03', '<font color=\"red\">JVM当前：50%,超出预设值 40%<br>内存当前：71%,超出预设值  40%</font>');
INSERT INTO `sys_server_info` VALUES ('7', '5', '40', '50', '40', '70', '40', '121261494@qq.com', '2015-04-25 18:09:02', '<font color=\"red\">JVM当前：50%,超出预设值 40%<br>内存当前：70%,超出预设值  40%</font>');
INSERT INTO `sys_server_info` VALUES ('8', '5', '40', '52', '40', '69', '40', '121261494@qq.com', '2015-04-25 18:10:03', '<font color=\"red\">JVM当前：52%,超出预设值 40%<br>内存当前：69%,超出预设值  40%</font>');
INSERT INTO `sys_server_info` VALUES ('9', '2', '40', '52', '40', '68', '40', '121261494@qq.com', '2015-04-25 18:11:02', '<font color=\"red\">JVM当前：52%,超出预设值 40%<br>内存当前：68%,超出预设值  40%</font>');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `ID` VARCHAR(36) NOT NULL,
  `USERNAME` VARCHAR(20) DEFAULT NULL,
  `ACCOUNTNAME` VARCHAR(20) DEFAULT NULL,
  `PASSWORD` VARCHAR(100) DEFAULT NULL,
  `CREDENTIALSSALT` VARCHAR(100) DEFAULT NULL,
  `DESCRIPTION` VARCHAR(100) DEFAULT NULL,
  `LOCKED` VARCHAR(3) DEFAULT '0',
  `CREATETIME` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DELETESTATUS` INT(1) DEFAULT '0' COMMENT '逻辑删除状态0:存在1:删除',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('0', '开发人员', 'developer', '78e21a6eb88529eab722793a448ed394', '4157c3feef4a6ed91b2c28cf4392f2d1', '开发账号', '0', '2016-05-20 22:16:24', '0');
INSERT INTO `sys_user` VALUES ('2c9a88e020ea11e61049a126c704f892', '王勇', 'wangyong1', 'ae475a2d268dd3bff0df99fe5752c3d4', '2e7203560baa85b882da05bfd1343e1d', null, '0', '2016-05-23 21:28:02', '0');
INSERT INTO `sys_user` VALUES ('3a75229020ea11e61049a126c704f892', 'wangyong2', 'wangyong2', '2f0f99763c57746ce8d88d766cd29e53', '21ca1d33ac7e86f8c8183ef0f4bd725e', null, '0', '2016-05-23 21:28:25', '0');
INSERT INTO `sys_user` VALUES ('3abae69f-1e8f-11e6-b33a-f0def1a98b46', '超级管理员', 'root', '78e21a6eb88529eab722793a448ed394', '4157c3feef4a6ed91b2c28cf4392f2d1', '0000', '1', '2016-05-20 23:59:06', '0');
INSERT INTO `sys_user` VALUES ('456709400bb711e6cfe88fa657e1e423', '王勇', 'wangyong', 'e8d27aec76860e6c8a91cf0ac259c1a6', '825d3f5777e4172c50e9dc2a60ffb82d', '测试账号', '1', '2016-05-20 21:29:47', '0');
INSERT INTO `sys_user` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '管理员', 'admin', '78e21a6eb88529eab722793a448ed394', '4157c3feef4a6ed91b2c28cf4392f2d1', '3434', '1', '2016-05-20 21:20:22', '0');

-- ----------------------------
-- Table structure for `sys_user_res`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_res`;
CREATE TABLE `sys_user_res` (
  `USERID` VARCHAR(36) NOT NULL,
  `RESID` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`USERID`,`RESID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_res
-- ----------------------------
INSERT INTO `sys_user_res` VALUES ('3abae69f-1e8f-11e6-b33a-f0def1a98b46', '82fffbb7-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('3abae69f-1e8f-11e6-b33a-f0def1a98b46', '82ffffb1-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('3abae69f-1e8f-11e6-b33a-f0def1a98b46', '83000b70-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('3abae69f-1e8f-11e6-b33a-f0def1a98b46', '83000fa4-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('3abae69f-1e8f-11e6-b33a-f0def1a98b46', '830010ab-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('3abae69f-1e8f-11e6-b33a-f0def1a98b46', '830011a5-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '82fffbb7-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '82fffe81-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '82ffffb1-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '830000fb-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '8300020f-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '83000332-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '83000442-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '83000545-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '83000655-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '83000760-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '83000863-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '83000962-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '83000a6d-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '83000b70-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '83000c8e-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '83000d91-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '83000e93-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '83000fa4-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '830010ab-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '830011a5-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '8300129f-1e8f-11e6-b33a-f0def1a98b46');
INSERT INTO `sys_user_res` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '830013a6-1e8f-11e6-b33a-f0def1a98b46');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `USERID` VARCHAR(36) NOT NULL,
  `ROLEID` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`USERID`,`ROLEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('0', '0');
INSERT INTO `sys_user_role` VALUES ('8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', '22e116e4-1e8e-11e6-b33a-f0def1a98b46');

-- ----------------------------
-- Table structure for `sys_userlogin`
-- ----------------------------
DROP TABLE IF EXISTS `sys_userlogin`;
CREATE TABLE `sys_userlogin` (
  `ID` VARCHAR(36) NOT NULL,
  `USERID` VARCHAR(36) DEFAULT NULL,
  `ACCOUNTNAME` VARCHAR(20) DEFAULT NULL,
  `LOGINTIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `LOGINIP` VARCHAR(40) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `LY_USER_LOGINLIST` (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_userlogin
-- ----------------------------
INSERT INTO `sys_userlogin` VALUES ('001a2bc01e9e11e6bddf7cfaec361c9e', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 23:17:43', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('003913801ea011e6b8fda73ca20d1997', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 23:32:02', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('030a9000192f11e6cb05c602e3c2d662', '3', 'admin', '2016-05-14 01:20:38', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('03c35cc01ab011e6ab22dcce4fb02449', '3', 'admin', '2016-05-15 23:16:36', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('07154b101aa911e615df3ca62920d3a8', '3', 'admin', '2016-05-15 22:26:35', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('0846aad0191711e680f21558f554ac8c', '3', 'admin', '2016-05-13 22:28:59', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('08758d501e9911e63aff970d369e01af', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 22:42:10', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('096267a00bbc11e67541c6878535257e', '3', 'admin', '2016-04-26 22:34:52', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('0a427f30193511e6b1bc3e2f4e45a0c4', '3', 'admin', '2016-05-14 02:03:47', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('0af8caa01a5811e622b6dc4dc45e1228', '3', 'admin', '2016-05-15 12:46:52', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('0f14a0601a9811e62c9dfb7d24c56f6b', '3', 'admin', '2016-05-15 20:25:07', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('100c21f01aa711e6aa65c31183fcc80f', '3', 'admin', '2016-05-15 22:12:31', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('143', '3', 'admin', '2016-03-27 08:08:08', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('144', '3', 'admin', '2016-03-27 08:10:44', '192.168.1.101');
INSERT INTO `sys_userlogin` VALUES ('145', '3', 'admin', '2016-03-27 08:12:42', '192.168.1.103');
INSERT INTO `sys_userlogin` VALUES ('146', '3', 'admin', '2016-03-27 08:13:38', '192.168.1.103');
INSERT INTO `sys_userlogin` VALUES ('147', '3', 'admin', '2016-03-27 08:13:55', '192.168.1.103');
INSERT INTO `sys_userlogin` VALUES ('148', '3', 'admin', '2016-03-27 08:14:53', '192.168.1.103');
INSERT INTO `sys_userlogin` VALUES ('149', '3', 'admin', '2016-03-27 22:09:39', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('14a230601a9d11e66c767db2652f7686', '3', 'admin', '2016-05-15 21:01:03', '127.0.0.1');
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
INSERT INTO `sys_userlogin` VALUES ('183', '3', 'admin', '2016-04-20 19:28:40', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('184', '5', 'test', '2016-04-20 19:48:02', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('185', '3', 'admin', '2016-04-20 19:48:38', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('186', '3', 'admin', '2016-04-20 20:08:46', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('187', '3', 'admin', '2016-04-20 20:15:11', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('188', '3', 'admin', '2016-04-20 20:17:19', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('189', '3', 'admin', '2016-04-20 20:48:18', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('190', '10', 'wy5', '2016-04-20 21:57:13', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('191', '10', 'wy5', '2016-04-20 21:57:58', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('192', '10', 'wy5', '2016-04-20 21:59:18', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('193', '10', 'wy5', '2016-04-20 22:00:56', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('194', '3', 'admin', '2016-04-20 22:04:48', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('195', '3', 'admin', '2016-04-20 22:10:48', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('196', '3', 'admin', '2016-04-20 22:24:25', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('197', '3', 'admin', '2016-04-20 22:32:06', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('198', '3', 'admin', '2016-04-20 22:35:15', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('199', '3', 'admin', '2016-04-20 22:41:23', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('1b1283501e9411e6f2cef0ffec7c81a0', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 22:06:53', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('1bb7c010191a11e68e80f04b07a4aa8a', '3', 'admin', '2016-05-13 22:51:00', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('1d2bdb401a5311e68f35184bbbc66250', '3', 'admin', '2016-05-15 12:11:35', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('1db7c1e0193211e6d22338fdf6d55580', '3', 'admin', '2016-05-14 01:42:51', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('200', '3', 'admin', '2016-04-20 22:44:36', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('201', '3', 'admin', '2016-04-20 22:45:20', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('202', '3', 'admin', '2016-04-20 22:53:26', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('203', '3', 'admin', '2016-04-20 22:55:23', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('204', '3', 'admin', '2016-04-20 23:12:42', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('205', '3', 'admin', '2016-04-20 23:15:08', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('206', '3', 'admin', '2016-04-20 23:24:15', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('207', '3', 'admin', '2016-04-20 23:27:28', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('208', '3', 'admin', '2016-04-20 23:28:47', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('209', '3', 'admin', '2016-04-21 17:30:55', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('210', '3', 'admin', '2016-04-26 21:31:33', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('211', '3', 'admin', '2016-04-26 21:58:37', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('23ad89201e9311e65ff425b4b345e6ff', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 21:59:59', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('283629101e9411e6f2cef0ffec7c81a0', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 22:07:16', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('297386001aad11e693f6f8b1a6802390', '3', 'admin', '2016-05-15 22:56:10', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('2ab6d990193b11e6e68d0e27a21cacdc', '3', 'admin', '2016-05-14 02:47:39', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('303585c020f111e6b95694050e3b8021', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-23 22:18:14', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('36efcc901e9e11e6bddf7cfaec361c9e', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 23:19:15', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('377349e01e9d11e6def4fc4fd2610e84', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 23:12:07', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('381a23201e9b11e60757cbdb926ce386', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 22:57:49', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('3b357e10192311e6972375f9f6682d04', '3', 'admin', '2016-05-13 23:56:18', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('3dadab00191811e680f21558f554ac8c', '3', 'admin', '2016-05-13 22:37:38', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('404f7dc01ea411e6c41c001b1aa300d6', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-21 00:02:28', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('44e0fcf0193711e64da97c8ea5ddc80c', '3', 'admin', '2016-05-14 02:19:45', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('450739300bbb11e6917b1a5acb11637b', '3', 'admin', '2016-04-26 22:29:22', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('47b23d901e9611e6511c675df75a2e12', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 22:22:27', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('4f4942d00bbb11e6917b1a5acb11637b', '3', 'admin', '2016-04-26 22:29:39', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('50995d201a9b11e63c7393aab17b7432', '3', 'admin', '2016-05-15 20:48:25', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('51ecbf201a4e11e68f35184bbbc66250', '3', 'admin', '2016-05-15 11:37:16', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('58fe6ce0193c11e6de5c36e24a0dd855', '3', 'admin', '2016-05-14 02:56:06', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('5aa58070192c11e6cb804516d58bd603', '3', 'admin', '2016-05-14 01:01:37', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('5aa74a10228011e668e0afcd3cf31353', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-25 21:55:35', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('6251cd90193811e6bfe62deb492002b4', '3', 'admin', '2016-05-14 02:27:43', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('675035201e9c11e6f067816d54489e5f', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 23:06:17', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('676084c01aaa11e6711c758ef5b6e3cb', '3', 'admin', '2016-05-15 22:36:26', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('6ca4ce80193511e6b813c91f2fc1f25b', '3', 'admin', '2016-05-14 02:06:32', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('6e6696c01e9b11e60757cbdb926ce386', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 22:59:20', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('7473a020193311e680ce695ee323f82e', '3', 'admin', '2016-05-14 01:52:26', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('7680ef501ea411e6c41c001b1aa300d6', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-21 00:03:59', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('799f46100bbb11e6917b1a5acb11637b', '3', 'admin', '2016-04-26 22:30:52', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('7b49f7d01e9e11e63384f94a63d2a6a2', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 23:21:10', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('7c48738020f811e6bca4718d5dcb9ff1', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-23 23:10:29', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('7e8a00601aa811e6ea7a7af5f86a0098', '3', 'admin', '2016-05-15 22:22:46', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('87456dd01a5711e6d4a3c0226a7dc1c3', '3', 'admin', '2016-05-15 12:43:11', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('88944560192d11e6ef6d371adddfe726', '3', 'admin', '2016-05-14 01:10:03', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('8924c160193411e62ccc627319ad96ab', '3', 'admin', '2016-05-14 02:00:11', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('8bcb4c20193b11e6607c82d18819a2fd', '3', 'admin', '2016-05-14 02:50:22', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('8d0ffc801e9e11e63384f94a63d2a6a2', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 23:21:40', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('8dc949201e9811e68f0dafacbbebfa1c', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 22:38:44', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('9117fac01e9f11e65d8f70df13df3185', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 23:28:56', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('914274a01a5611e6af996e96da1368fb', '3', 'admin', '2016-05-15 12:36:18', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('99a0a2100bbb11e6917b1a5acb11637b', '3', 'admin', '2016-04-26 22:31:44', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('99b994301a5411e65118ff34da925a64', '3', 'admin', '2016-05-15 12:22:14', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('9c4b38a01e9311e65ff425b4b345e6ff', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 22:03:22', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('9f51aac01ea711e6125e48c3b8442cbf', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-21 00:26:36', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('a0c04c601e9b11e6efe6625b946a96ed', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 23:00:44', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('a147a9001e9411e6f2cef0ffec7c81a0', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 22:10:39', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('a40d33d01ea311e6c41c001b1aa300d6', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 23:58:06', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('a463a1d0228011e64cf2013358d8eab0', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-25 21:57:39', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('a499cc501c4611e635f64f80f11c336d', '3', 'admin', '2016-05-17 23:47:21', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('a6104c601aa911e6fcfca161338f1cab', '3', 'admin', '2016-05-15 22:31:01', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('abd0b3901aab11e686691b43c7659dcf', '3', 'admin', '2016-05-15 22:45:30', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('ad1fb0601e9e11e6c876ba8df7105378', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 23:22:34', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('ae37ed401e9511e6f2038b34a0671371', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 22:18:10', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('b3e7a8b0232311e654ba1643a8839c69', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-26 17:24:53', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('b3fe6cc020f911e62560a607745f8faf', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-23 23:19:12', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('b458e1e0192f11e6cb05c602e3c2d662', '3', 'admin', '2016-05-14 01:25:36', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('b74841c01ea211e69200bd537874ff16', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 23:51:29', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('b7782eb01aad11e694dfb2f82069d4a7', '3', 'admin', '2016-05-15 23:00:09', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('bb396240193511e6145da05d5495e402', '3', 'admin', '2016-05-14 02:08:44', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('bd59273019f411e6d89f75f7705a801a', '3', 'admin', '2016-05-15 00:56:02', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('bee882101aaa11e6593fc02765beb9f7', '3', 'admin', '2016-05-15 22:38:53', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('bef785d01e9211e65ff425b4b345e6ff', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 21:57:09', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('bfefbcc020e811e61049a126c704f892', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-23 21:17:50', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('c54b2330192c11e6191d1f353f72bf62', '3', 'admin', '2016-05-14 01:04:36', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('ceb20580192011e642bbc23fb7e0ede1', '3', 'admin', '2016-05-13 23:38:57', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('cf45a3d019ed11e64b50e43528e70690', '3', 'admin', '2016-05-15 00:06:25', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('d5e079301e9411e6d12aa10eb303307e', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 22:12:07', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('d7e8f8e01aae11e69748578d9c9bb8e3', '3', 'admin', '2016-05-15 23:08:13', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('db3f287020f311e6333b48140cb9f01b', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-23 22:37:20', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('e9137f00193c11e67e80bc44bb91daff', '3', 'admin', '2016-05-14 03:00:08', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('f27432300bbb11e67541c6878535257e', '3', 'admin', '2016-04-26 22:34:13', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('f57f48301ea711e6125e48c3b8442cbf', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-21 00:29:00', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('f65bb3d0192811e6732d3837f2b37a88', '3', 'admin', '2016-05-14 00:37:20', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('f71e76d01a5511e6f3d264e6d7cb6476', '3', 'admin', '2016-05-15 12:32:00', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('f9277bd0191911e67f2f956ade995a0b', '3', 'admin', '2016-05-13 22:50:02', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('fdc0789020f311e6333b48140cb9f01b', '2c9a88e020ea11e61049a126c704f892', 'wangyong1', '2016-05-23 22:38:18', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('fe56dfa01e9711e69933a4ea5074ce8c', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 22:34:43', '127.0.0.1');
INSERT INTO `sys_userlogin` VALUES ('fe6183701e9611e69933a4ea5074ce8c', '8f6c79f0-1e8d-11e6-b33a-f0def1a98b46', 'admin', '2016-05-20 22:27:34', '127.0.0.1');
