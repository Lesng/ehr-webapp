/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : ehr

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2015-08-31 00:52:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ma_base_acl_access_log`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_acl_access_log`;
CREATE TABLE `ma_base_acl_access_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(255) DEFAULT NULL,
  `ACTION_ID` decimal(19,0) NOT NULL,
  `APP_ID` varchar(50) NOT NULL,
  `APP_INST` varchar(50) NOT NULL,
  `START_TIME` datetime NOT NULL,
  `END_TIME` datetime NOT NULL,
  `REQUEST_ADDR` varchar(50) NOT NULL,
  `REQUEST_URL` varchar(1024) NOT NULL,
  `REQUEST_DETAIL` longtext,
  `RESPONSE_CODE` varchar(10) DEFAULT NULL,
  `ERROR_MESSAGE` longtext,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_MA_BASE_ACL_ACCESS_LOG_01` (`USER_NAME`),
  KEY `IDX_MA_BASE_ACL_ACCESS_LOG_02` (`ACTION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_base_acl_access_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ma_base_acl_action`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_acl_action`;
CREATE TABLE `ma_base_acl_action` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `APP_ID` varchar(20) DEFAULT NULL,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `URI` varchar(255) DEFAULT NULL,
  `HTTP_METHOD` varchar(10) DEFAULT NULL,
  `LOG_OPTION` decimal(10,0) DEFAULT NULL,
  `LOG_LEVEL` varchar(10) DEFAULT NULL,
  `EFFECTIVE_TIME` datetime DEFAULT NULL,
  `INACTIVE_TIME` datetime DEFAULT NULL,
  `IS_GROUP` decimal(1,0) NOT NULL DEFAULT '0',
  `PARENT_ID` decimal(19,0) DEFAULT NULL,
  `MID` decimal(19,0) DEFAULT NULL,
  `ORDERED` decimal(10,0) NOT NULL DEFAULT '0',
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX_MA_BASE_ACL_ACTION_U1` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_base_acl_action
-- ----------------------------
INSERT INTO `ma_base_acl_action` VALUES ('1', null, 'ROOT', 'ROOT', 'ROOT', null, null, '0', 'ANY', '2015-08-28 22:00:21', null, '1', null, null, '1', '*SYSADM', '2015-08-28 22:00:21', '*SYSADM', '2015-08-28 22:00:21');
INSERT INTO `ma_base_acl_action` VALUES ('2', null, 'ADMIN_GROUP', 'MACULA ADMIN', 'MACULA后端', null, null, '0', 'ANY', '2015-08-28 22:00:21', null, '1', '1', null, '2', '*SYSADM', '2015-08-28 22:00:21', '*SYSADM', '2015-08-28 22:00:21');
INSERT INTO `ma_base_acl_action` VALUES ('3', null, 'FRONT_GROUP', 'MACULA FRONT', 'MACULA前端', null, null, '0', 'ANY', '2015-08-28 22:00:21', null, '1', '1', null, '3', '*SYSADM', '2015-08-28 22:00:21', '*SYSADM', '2015-08-28 22:00:21');
INSERT INTO `ma_base_acl_action` VALUES ('21', null, 'SYSTEM_GROUP', '系统管理', '系统管理', null, null, '0', 'ANY', '2015-08-28 22:00:21', null, '1', '2', null, '4', '*SYSADM', '2015-08-28 22:00:21', '*SYSADM', '2015-08-28 22:00:21');
INSERT INTO `ma_base_acl_action` VALUES ('22', null, 'DATASET_GROUP', '数据集维护', '数据集维护', null, null, '0', 'ANY', '2015-08-28 22:00:21', null, '1', '21', null, '5', '*SYSADM', '2015-08-28 22:00:21', '*SYSADM', '2015-08-28 22:00:21');
INSERT INTO `ma_base_acl_action` VALUES ('23', null, 'DATA_SOURCE_ADMIN', '数据源管理', '数据源管理', null, null, '0', 'ANY', '2015-08-28 22:00:21', null, '1', '22', null, '6', '*SYSADM', '2015-08-28 22:00:21', '*SYSADM', '2015-08-28 22:00:21');
INSERT INTO `ma_base_acl_action` VALUES ('24', null, 'DATA_SOURCE_ACTION', '数据源管理', '数据源管理', '/admin/macula-base/datasource/.*', null, '1', 'ERROR', '2015-08-28 22:00:21', null, '0', '23', '33', '7', '*SYSADM', '2015-08-28 22:00:21', '*SYSADM', '2015-08-28 22:00:21');
INSERT INTO `ma_base_acl_action` VALUES ('25', null, 'DATA_PARAM_ADMIN', '数据参数管理', '数据参数管理', null, null, '0', 'ANY', '2015-08-28 22:00:22', null, '1', '22', null, '8', '*SYSADM', '2015-08-28 22:00:22', '*SYSADM', '2015-08-28 22:00:22');
INSERT INTO `ma_base_acl_action` VALUES ('26', null, 'DATA_PARAM_ACTION', '数据参数管理', '数据参数管理', '/admin/macula-base/dataparam/.*', null, '1', 'ERROR', '2015-08-28 22:00:22', null, '0', '25', '36', '9', '*SYSADM', '2015-08-28 22:00:22', '*SYSADM', '2015-08-28 22:00:22');
INSERT INTO `ma_base_acl_action` VALUES ('27', null, 'DATA_SET_ADMIN', '数据集管理', '数据集管理', null, null, '0', 'ANY', '2015-08-28 22:00:22', null, '1', '22', null, '10', '*SYSADM', '2015-08-28 22:00:22', '*SYSADM', '2015-08-28 22:00:22');
INSERT INTO `ma_base_acl_action` VALUES ('28', null, 'DATA_SET_ACTION', '数据集管理', '数据集管理', '/admin/macula-base/dataset/.*', null, '1', 'ERROR', '2015-08-28 22:00:22', null, '0', '27', '35', '11', '*SYSADM', '2015-08-28 22:00:22', '*SYSADM', '2015-08-28 22:00:22');
INSERT INTO `ma_base_acl_action` VALUES ('29', null, 'APP_GROUP', '应用实例维护', '应用实例维护', null, null, '0', 'ANY', '2015-08-28 22:00:22', null, '1', '21', null, '12', '*SYSADM', '2015-08-28 22:00:22', '*SYSADM', '2015-08-28 22:00:22');
INSERT INTO `ma_base_acl_action` VALUES ('30', null, 'APP_ADMIN', '应用管理', '应用管理', null, null, '0', 'ANY', '2015-08-28 22:00:22', null, '1', '29', null, '13', '*SYSADM', '2015-08-28 22:00:22', '*SYSADM', '2015-08-28 22:00:22');
INSERT INTO `ma_base_acl_action` VALUES ('31', null, 'APP_ACTION', '应用管理', '应用管理', '/admin/macula-base/application/.*', null, '1', 'ERROR', '2015-08-28 22:00:22', null, '0', '30', '38', '14', '*SYSADM', '2015-08-28 22:00:22', '*SYSADM', '2015-08-28 22:00:22');
INSERT INTO `ma_base_acl_action` VALUES ('32', null, 'RES_GROUP', '资源和分组维护', '资源和分组维护', null, null, '0', 'ANY', '2015-08-28 22:00:22', null, '1', '21', null, '15', '*SYSADM', '2015-08-28 22:00:22', '*SYSADM', '2015-08-28 22:00:22');
INSERT INTO `ma_base_acl_action` VALUES ('33', null, 'ACTION_ADMIN', '功能管理', '功能管理', null, null, '0', 'ANY', '2015-08-28 22:00:22', null, '1', '32', null, '16', '*SYSADM', '2015-08-28 22:00:22', '*SYSADM', '2015-08-28 22:00:22');
INSERT INTO `ma_base_acl_action` VALUES ('34', null, 'ACTION_ACTION', '功能管理', '功能管理', '/admin/macula-base/actionresource/.*', null, '1', 'ERROR', '2015-08-28 22:00:23', null, '0', '33', '41', '17', '*SYSADM', '2015-08-28 22:00:23', '*SYSADM', '2015-08-28 22:00:23');
INSERT INTO `ma_base_acl_action` VALUES ('35', null, 'MENU_ADMIN', '菜单管理', '菜单管理', null, null, '0', 'ANY', '2015-08-28 22:00:23', null, '1', '22', null, '18', '*SYSADM', '2015-08-28 22:00:23', '*SYSADM', '2015-08-28 22:00:23');
INSERT INTO `ma_base_acl_action` VALUES ('36', null, 'MENU_ACTION', '菜单管理', '菜单管理', '/admin/macula-base/menuresource/.*', null, '1', 'ERROR', '2015-08-28 22:00:23', null, '0', '35', '40', '19', '*SYSADM', '2015-08-28 22:00:23', '*SYSADM', '2015-08-28 22:00:23');
INSERT INTO `ma_base_acl_action` VALUES ('37', null, 'ORG_VIEW', '组织机构查看', '组织机构查看', null, null, '0', 'ANY', '2015-08-28 22:00:23', null, '1', '22', null, '20', '*SYSADM', '2015-08-28 22:00:23', '*SYSADM', '2015-08-28 22:00:23');
INSERT INTO `ma_base_acl_action` VALUES ('38', null, 'ORG_ACTION', '组织机构查看', '组织机构查看', '/admin/macula-base/organization/.*', null, '1', 'ERROR', '2015-08-28 22:00:23', null, '0', '37', '42', '21', '*SYSADM', '2015-08-28 22:00:23', '*SYSADM', '2015-08-28 22:00:23');
INSERT INTO `ma_base_acl_action` VALUES ('39', null, 'POLICY_GROUP', '业务策略维护', '业务策略维护', null, null, '0', 'ANY', '2015-08-28 22:00:23', null, '1', '21', null, '22', '*SYSADM', '2015-08-28 22:00:23', '*SYSADM', '2015-08-28 22:00:23');
INSERT INTO `ma_base_acl_action` VALUES ('40', null, 'USER_RULE_ADMIN', '用户规则管理', '用户规则管理', null, null, '0', 'ANY', '2015-08-28 22:00:23', null, '1', '39', null, '23', '*SYSADM', '2015-08-28 22:00:23', '*SYSADM', '2015-08-28 22:00:23');
INSERT INTO `ma_base_acl_action` VALUES ('41', null, 'USER_RULE_ACTION', '用户规则管理', '用户规则管理', '/admin/macula-base/userrule/.*', null, '1', 'ERROR', '2015-08-28 22:00:23', null, '0', '40', '45', '24', '*SYSADM', '2015-08-28 22:00:23', '*SYSADM', '2015-08-28 22:00:23');
INSERT INTO `ma_base_acl_action` VALUES ('42', null, 'DECISION_RULE_ADMIN', '决策规则管理', '决策规则管理', null, null, '0', 'ANY', '2015-08-28 22:00:23', null, '1', '39', null, '25', '*SYSADM', '2015-08-28 22:00:23', '*SYSADM', '2015-08-28 22:00:23');
INSERT INTO `ma_base_acl_action` VALUES ('43', null, 'DECISION_RULE_ACTION', '决策规则管理', '决策规则管理', '/admin/macula-base/decisionrule/.*', null, '1', 'ERROR', '2015-08-28 22:00:24', null, '0', '42', '46', '26', '*SYSADM', '2015-08-28 22:00:24', '*SYSADM', '2015-08-28 22:00:24');
INSERT INTO `ma_base_acl_action` VALUES ('44', null, 'BIZ_POLICY_ADMIN', '业务决策管理', '业务决策管理', null, null, '0', 'ANY', '2015-08-28 22:00:24', null, '1', '39', null, '27', '*SYSADM', '2015-08-28 22:00:24', '*SYSADM', '2015-08-28 22:00:24');
INSERT INTO `ma_base_acl_action` VALUES ('45', null, 'BIZ_POLICY_ACTION', '业务决策管理', '业务决策管理', '/admin/macula-base/grantedpolicy/.*', null, '1', 'ERROR', '2015-08-28 22:00:24', null, '0', '44', '47', '28', '*SYSADM', '2015-08-28 22:00:24', '*SYSADM', '2015-08-28 22:00:24');
INSERT INTO `ma_base_acl_action` VALUES ('46', null, 'SECURITY_GROUP', '用户授权维护', '用户授权维护', null, null, '0', 'ANY', '2015-08-28 22:00:24', null, '1', '21', null, '29', '*SYSADM', '2015-08-28 22:00:24', '*SYSADM', '2015-08-28 22:00:24');
INSERT INTO `ma_base_acl_action` VALUES ('47', null, 'USER_ROLE_ADMIN', '业务部门角色管理', null, null, null, '0', 'ANY', '2015-08-28 22:00:24', null, '1', '46', null, '30', '3419', '2015-08-28 22:00:24', '3419', '2015-08-28 22:00:24');
INSERT INTO `ma_base_acl_action` VALUES ('48', null, 'USER_ROLE_ACTION', '业务部门角色管理', '业务部门角色管理', '/admin/macula-base/limitrole/.*', null, '1', 'ERROR', '2015-08-28 22:00:24', null, '0', '47', '49', '31', '3419', '2015-08-28 22:00:24', '*SYSADM', '2015-08-28 22:00:24');
INSERT INTO `ma_base_acl_action` VALUES ('49', null, 'ROLE_ADMIN', '角色管理', '角色管理', null, null, '0', 'ANY', '2015-08-28 22:00:24', null, '1', '46', null, '32', '*SYSADM', '2015-08-28 22:00:24', '*SYSADM', '2015-08-28 22:00:24');
INSERT INTO `ma_base_acl_action` VALUES ('50', null, 'ROLE_ACTION', '角色管理', '角色管理', '/admin/macula-base/grantedrole/.*', null, '1', 'ERROR', '2015-08-28 22:00:24', null, '0', '49', '51', '33', '*SYSADM', '2015-08-28 22:00:24', '*SYSADM', '2015-08-28 22:00:24');
INSERT INTO `ma_base_acl_action` VALUES ('51', null, 'USER_PRIV_ADMIN', '用户分组授权管理', null, null, null, '0', 'ANY', '2015-08-28 22:00:24', null, '1', '46', null, '34', '3419', '2015-08-28 22:00:24', '*SYSADM', '2015-08-28 22:00:24');
INSERT INTO `ma_base_acl_action` VALUES ('52', null, 'ADMIN_GRANT_ACTION', '管理员授权', '管理员授权', '/admin/macula-base/sysuser/(admingrant|admingrant/.*)', null, '1', 'ERROR', '2015-08-28 22:00:24', null, '0', '51', '50', '35', '3419', '2015-08-28 22:00:24', '3419', '2015-08-28 22:00:24');
INSERT INTO `ma_base_acl_action` VALUES ('53', null, 'USER_ACTION', '用户列表', '用户列表', '/admin/macula-base/sysuser/index.*', null, '1', 'ERROR', '2015-08-28 22:00:24', null, '0', '51', '50', '36', '*SYSADM', '2015-08-28 22:00:24', '*SYSADM', '2015-08-28 22:00:24');
INSERT INTO `ma_base_acl_action` VALUES ('54', null, 'USER_GRANT_ACTION', '操作员授权', '操作员授权', '/admin/macula-base/sysuser/limitgrant.*', null, '1', 'ERROR', '2015-08-28 22:00:24', null, '0', '51', '50', '37', '3419', '2015-08-28 22:00:24', '3419', '2015-08-28 22:00:24');
INSERT INTO `ma_base_acl_action` VALUES ('55', null, 'ADMIN_CAT_ACTION', '用户分组设置', '用户分组设置', '/admin/macula-base/sysuser/admincatalog.*', null, '1', 'ERROR', '2015-08-28 22:00:25', null, '0', '51', '50', '38', '3419', '2015-08-28 22:00:25', '3419', '2015-08-28 22:00:25');
INSERT INTO `ma_base_acl_action` VALUES ('56', null, 'SYSINFO_GROUP', '系统信息维护', '系统信息维护', null, null, '0', 'ANY', '2015-08-28 22:00:25', null, '1', '21', null, '39', '*SYSADM', '2015-08-28 22:00:25', '*SYSADM', '2015-08-28 22:00:25');
INSERT INTO `ma_base_acl_action` VALUES ('57', null, 'ONLINE_USER_VIEW', '在线用户信息', '在线用户', null, null, '0', 'ANY', '2015-08-28 22:00:25', null, '1', '56', null, '40', '*SYSADM', '2015-08-28 22:00:25', '3419', '2015-08-28 22:00:25');
INSERT INTO `ma_base_acl_action` VALUES ('58', null, 'ONLINE_USER_ACTION', '在线用户信息', '在线用户信息', '/admin/macula-base/sessions.*', null, '1', 'ERROR', '2015-08-28 22:00:25', null, '0', '57', '55', '41', '*SYSADM', '2015-08-28 22:00:25', '*SYSADM', '2015-08-28 22:00:25');
INSERT INTO `ma_base_acl_action` VALUES ('59', null, 'SYS_RUN_INFO', '系统运行信息', '系统运行信息', null, null, '0', 'ANY', '2015-08-28 22:00:25', null, '1', '56', null, '42', '*SYSADM', '2015-08-28 22:00:25', '3419', '2015-08-28 22:00:25');
INSERT INTO `ma_base_acl_action` VALUES ('60', null, 'SYS_RUN_ACTION', '系统运行信息', '系统运行信息', '/admin/macula-core/system/.*', null, '1', 'ERROR', '2015-08-28 22:00:25', null, '0', '59', '53', '43', '*SYSADM', '2015-08-28 22:00:25', '*SYSADM', '2015-08-28 22:00:25');
INSERT INTO `ma_base_acl_action` VALUES ('61', null, 'ACCESS_LOG_VIEW', '系统访问日志', '登录日志', null, null, '0', 'ANY', '2015-08-28 22:00:25', null, '1', '56', null, '44', '*SYSADM', '2015-08-28 22:00:25', '3419', '2015-08-28 22:00:25');
INSERT INTO `ma_base_acl_action` VALUES ('62', null, 'ACCESS_LOG_ACTION', '系统访问日志', '系统访问日志', '/admin/macula-base/accesslog/.*', null, '1', 'ERROR', '2015-08-28 22:00:25', null, '0', '61', '54', '45', '*SYSADM', '2015-08-28 22:00:25', '*SYSADM', '2015-08-28 22:00:25');
INSERT INTO `ma_base_acl_action` VALUES ('63', null, 'USER_SESSION_ADMIN', '用户状态维护', null, null, null, '0', 'ANY', '2015-08-28 22:00:25', null, '1', '56', null, '46', '3419', '2015-08-28 22:00:25', '3419', '2015-08-28 22:00:25');
INSERT INTO `ma_base_acl_action` VALUES ('64', null, 'USER_SESSION_ACTION', '用户状态维护', '用户状态维护', '/admin/macula-base/usersession/.*', null, '1', 'ERROR', '2015-08-28 22:00:25', null, '0', '63', '56', '47', '3419', '2015-08-28 22:00:25', '*SYSADM', '2015-08-28 22:00:25');
INSERT INTO `ma_base_acl_action` VALUES ('65', null, 'USER_SESSION_HIS_ACTION', '用户登录历史维护', '用户登录历史维护', '/admin/macula-base/usersessionhis/.*', null, '1', 'ERROR', '2015-08-28 22:00:25', null, '0', '63', '57', '48', '3419', '2015-08-28 22:00:25', 'admin', '2015-08-28 22:00:25');
INSERT INTO `ma_base_acl_action` VALUES ('66', null, 'LOGINED_GROUP', '登录用户默认功能', null, null, null, '0', 'ANY', '2015-08-28 22:00:25', null, '1', '1', null, '49', '3419', '2015-08-28 22:00:25', '*SYSADM', '2015-08-28 22:00:25');
INSERT INTO `ma_base_acl_action` VALUES ('67', null, 'MENU_GET_ACTION', '获取菜单', '获取菜单', '/.*/menu.*', null, '1', 'ERROR', '2015-08-28 22:00:25', null, '0', '66', null, '50', '3419', '2015-08-28 22:00:25', '3419', '2015-08-28 22:00:25');
INSERT INTO `ma_base_acl_action` VALUES ('68', null, 'INDEX_ADMIN', '管理首页', '管理首页', '/admin|/admin/dashboard.*|/admin/', null, '1', 'ERROR', '2015-08-28 22:00:25', null, '0', '66', null, '51', '*SYSADM', '2015-08-28 22:00:25', '3419', '2015-08-28 22:00:25');
INSERT INTO `ma_base_acl_action` VALUES ('69', null, 'INDEX_FRONT', '前端首页', '前端首页', '/front|/front/dashboard.*|/front/', null, '1', 'ERROR', '2015-08-28 22:00:25', null, '0', '66', null, '52', '*SYSADM', '2015-08-28 22:00:25', '3419', '2015-08-28 22:00:25');
INSERT INTO `ma_base_acl_action` VALUES ('70', null, 'ENUM_GET_ACTION', '获取枚举', '获取枚举', '/.*/macula-base/enum/.*', null, '1', 'ERROR', '2015-08-28 22:00:26', null, '0', '66', null, '53', '3419', '2015-08-28 22:00:26', '3419', '2015-08-28 22:00:26');
INSERT INTO `ma_base_acl_action` VALUES ('71', null, 'PARAM_GET_ACTION', '获取参数', '获取参数', '/.*/macula-base/param/.*', null, '1', 'ERROR', '2015-08-28 22:00:26', null, '0', '66', null, '54', '3419', '2015-08-28 22:00:26', '3419', '2015-08-28 22:00:26');
INSERT INTO `ma_base_acl_action` VALUES ('72', null, 'NOT_GRANTED_GROUP', '非授权功能', null, null, null, '0', 'ANY', '2015-08-28 22:00:26', null, '1', '1', null, '99999999', '3419', '2015-08-28 22:00:26', '3419', '2015-08-28 22:00:26');
INSERT INTO `ma_base_acl_action` VALUES ('73', null, 'FINDER_ACTION', 'MACULA_FINDER', 'MACULA_FINDER', '/.*/macula-mda/finder/.*', null, '1', 'ERROR', '2015-08-28 22:00:26', null, '0', '72', null, '999999999', '3419', '2015-08-28 22:00:26', '*SYSADM', '2015-08-28 22:00:26');
INSERT INTO `ma_base_acl_action` VALUES ('74', null, 'PASSWORD_POLICY_ACTION', '密码策略维护', '密码策略维护', '/admin/macula-base/passwordpolicy/.*', null, '1', 'ERROR', '2015-08-28 22:04:00', null, '0', '56', '58', '3314390', '3419', '2015-08-28 22:04:00', '*SYSADM', '2015-08-28 22:04:00');
INSERT INTO `ma_base_acl_action` VALUES ('75', null, 'USER_ADMINGRANTVIEW', '用户角色查看', '用户角色查看', '/admin/macula-base/sysuser/admingrantview.*', null, '0', 'ANY', '2015-08-28 22:04:16', null, '0', '51', '50', '100', '4291', '2015-08-28 22:04:16', '4291', '2015-08-28 22:04:16');
INSERT INTO `ma_base_acl_action` VALUES ('76', null, 'USER_ADMINRESOURCE', '用户资源查看', '用户资源查看', '/admin/macula-base/sysuser/adminresource.*', null, '0', 'ANY', '2015-08-28 22:04:17', null, '0', '51', '50', '100', '4291', '2015-08-28 22:04:17', '4291', '2015-08-28 22:04:17');
INSERT INTO `ma_base_acl_action` VALUES ('77', null, 'EHR_SAAS_ALL', 'SAAS所有功能', 'SAAS所有功能', '/admin/saas/.*', null, '0', 'ANY', '2015-08-31 00:14:41', null, '0', '66', null, '77', 'admin', '2015-08-31 00:14:41', 'admin', '2015-08-31 00:28:49');

-- ----------------------------
-- Table structure for `ma_base_acl_biz_rule`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_acl_biz_rule`;
CREATE TABLE `ma_base_acl_biz_rule` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `APP_ID` varchar(20) DEFAULT NULL,
  `EXP_TEXT` longtext,
  `IS_GROUP` decimal(1,0) NOT NULL DEFAULT '0',
  `PARENT_ID` decimal(19,0) DEFAULT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX_MA_BASE_ACL_BIZ_RULE_U1` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_base_acl_biz_rule
-- ----------------------------
INSERT INTO `ma_base_acl_biz_rule` VALUES ('1', 'ROOT', '决策规则列表', null, null, '1', null, '*SYSADM', '2015-08-28 22:00:26', '*SYSADM', '2015-08-28 22:00:26');

-- ----------------------------
-- Table structure for `ma_base_acl_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_acl_menu`;
CREATE TABLE `ma_base_acl_menu` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `APP_ID` varchar(20) DEFAULT NULL,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `URI` varchar(255) DEFAULT NULL,
  `HTTP_METHOD` varchar(10) DEFAULT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `OPEN_MODE` varchar(10) DEFAULT NULL,
  `IS_BAR_ITEM` decimal(1,0) NOT NULL DEFAULT '0',
  `EFFECTIVE_TIME` datetime DEFAULT NULL,
  `INACTIVE_TIME` datetime DEFAULT NULL,
  `ORDERED` decimal(10,0) NOT NULL DEFAULT '0',
  `IS_GROUP` decimal(1,0) NOT NULL DEFAULT '0',
  `PARENT_ID` decimal(19,0) DEFAULT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  `HELP_URI` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX_MA_BASE_ACL_MENU_U1` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_base_acl_menu
-- ----------------------------
INSERT INTO `ma_base_acl_menu` VALUES ('1', null, 'ROOT', 'ROOT', 'ROOT', null, null, null, null, '0', '2015-08-28 22:00:19', null, '1', '1', null, '*SYSADM', '2015-08-28 22:00:19', '*SYSADM', '2015-08-28 22:00:19', null);
INSERT INTO `ma_base_acl_menu` VALUES ('11', null, 'ADMIN_GROUP', 'MACULA ADMIN', '后端菜单', null, null, null, null, '0', '2015-08-28 22:00:19', null, '1', '1', '1', '*SYSADM', '2015-08-28 22:00:19', '*SYSADM', '2015-08-28 22:00:19', null);
INSERT INTO `ma_base_acl_menu` VALUES ('21', null, 'FRONT_GROUP', 'MACULA FRONT', '前端菜单', null, null, null, null, '0', '2015-08-28 22:00:19', null, '10', '1', '1', '*SYSADM', '2015-08-28 22:00:19', '*SYSADM', '2015-08-28 22:00:19', null);
INSERT INTO `ma_base_acl_menu` VALUES ('31', null, 'SYSTEM_GROUP', '系统管理', '系统管理', null, null, null, null, '0', '2015-08-28 22:00:19', null, '20', '1', '11', '*SYSADM', '2015-08-28 22:00:19', '*SYSADM', '2015-08-28 22:00:19', null);
INSERT INTO `ma_base_acl_menu` VALUES ('32', null, 'DATASET_GROUP', '数据集维护', null, null, null, null, null, '0', '2015-08-28 22:00:19', null, '30', '1', '31', '*SYSADM', '2015-08-28 22:00:19', '*SYSADM', '2015-08-28 22:00:19', null);
INSERT INTO `ma_base_acl_menu` VALUES ('33', null, 'DATA_SOURCE_ADMIN', '数据源管理', '数据源管理', 'admin/macula-base/datasource/list', 'GET', null, 'normal', '0', '2015-08-28 22:00:19', null, '40', '0', '32', '*SYSADM', '2015-08-28 22:00:19', '*SYSADM', '2015-08-28 22:00:19', null);
INSERT INTO `ma_base_acl_menu` VALUES ('35', null, 'DATA_SET_ADMIN', '数据集管理', '数据集管理', 'admin/macula-base/dataset/list', 'GET', null, 'normal', '0', '2015-08-28 22:00:19', null, '50', '0', '32', '*SYSADM', '2015-08-28 22:00:19', '*SYSADM', '2015-08-28 22:00:19', null);
INSERT INTO `ma_base_acl_menu` VALUES ('36', null, 'DATA_PARAM_ADMIN', '数据参数管理', '数据参数管理', 'admin/macula-base/dataparam/list', 'GET', null, 'normal', '0', '2015-08-28 22:00:19', null, '60', '0', '32', '*SYSADM', '2015-08-28 22:00:19', '*SYSADM', '2015-08-28 22:00:19', null);
INSERT INTO `ma_base_acl_menu` VALUES ('37', null, 'APPLICATION_GROUP', '应用实例维护', null, null, null, null, null, '0', '2015-08-28 22:00:19', null, '70', '1', '31', '*SYSADM', '2015-08-28 22:00:19', '*SYSADM', '2015-08-28 22:00:19', null);
INSERT INTO `ma_base_acl_menu` VALUES ('38', null, 'APP_ADMIN', '应用管理', '应用管理', 'admin/macula-base/application/list', 'GET', null, 'normal', '0', '2015-08-28 22:00:19', null, '80', '0', '37', '*SYSADM', '2015-08-28 22:00:19', '*SYSADM', '2015-08-28 22:00:19', null);
INSERT INTO `ma_base_acl_menu` VALUES ('39', null, 'RESOURCE_GROUP', '资源和分组维护', null, null, null, null, null, '0', '2015-08-28 22:00:19', null, '90', '1', '31', '*SYSADM', '2015-08-28 22:00:19', '*SYSADM', '2015-08-28 22:00:19', null);
INSERT INTO `ma_base_acl_menu` VALUES ('40', null, 'MENU_ADMIN', '菜单管理', '菜单管理', 'admin/macula-base/menuresource/list', 'GET', null, 'normal', '0', '2015-08-28 22:00:20', null, '100', '0', '39', '*SYSADM', '2015-08-28 22:00:20', '*SYSADM', '2015-08-28 22:00:20', null);
INSERT INTO `ma_base_acl_menu` VALUES ('41', null, 'ACTION_ADMIN', '功能管理', '功能管理', 'admin/macula-base/actionresource/list', 'GET', null, 'normal', '0', '2015-08-28 22:00:20', null, '110', '0', '39', '*SYSADM', '2015-08-28 22:00:20', '*SYSADM', '2015-08-28 22:00:20', null);
INSERT INTO `ma_base_acl_menu` VALUES ('42', null, 'ORG_VIEW', '组织机构查看', '组织机构查看', 'admin/macula-base/organization/list', 'GET', null, 'normal', '0', '2015-08-28 22:00:20', null, '120', '0', '39', '*SYSADM', '2015-08-28 22:00:20', '*SYSADM', '2015-08-28 22:00:20', null);
INSERT INTO `ma_base_acl_menu` VALUES ('43', null, 'URL_ACTION', '地址功能对应表', '地址功能对应表', 'admin/macula-base/actionresource/mapping', 'GET', null, 'normal', '0', '2015-08-28 22:00:20', null, '130', '0', '39', '*SYSADM', '2015-08-28 22:00:20', '*SYSADM', '2015-08-28 22:00:20', null);
INSERT INTO `ma_base_acl_menu` VALUES ('44', null, 'BIZ_POLICY_GROUP', '业务策略维护', null, null, null, null, null, '0', '2015-08-28 22:00:20', null, '140', '1', '31', '*SYSADM', '2015-08-28 22:00:20', '*SYSADM', '2015-08-28 22:00:20', null);
INSERT INTO `ma_base_acl_menu` VALUES ('45', null, 'USER_RULE_ADMIN', '用户规则管理', '用户规则管理', 'admin/macula-base/userrule/list', 'GET', null, 'normal', '0', '2015-08-28 22:00:20', null, '150', '0', '44', '*SYSADM', '2015-08-28 22:00:20', '*SYSADM', '2015-08-28 22:00:20', null);
INSERT INTO `ma_base_acl_menu` VALUES ('46', null, 'DECISION_RULE_ADMIN', '决策规则管理', '决策规则管理', 'admin/macula-base/decisionrule/list', 'GET', null, 'normal', '0', '2015-08-28 22:00:20', null, '160', '0', '44', '*SYSADM', '2015-08-28 22:00:20', '*SYSADM', '2015-08-28 22:00:20', null);
INSERT INTO `ma_base_acl_menu` VALUES ('47', null, 'BIZ_POLICY_ADMIN', '业务决策管理', '业务决策管理', 'admin/macula-base/grantedpolicy/list', 'GET', null, 'normal', '0', '2015-08-28 22:00:20', null, '170', '0', '44', '*SYSADM', '2015-08-28 22:00:20', '*SYSADM', '2015-08-28 22:00:20', null);
INSERT INTO `ma_base_acl_menu` VALUES ('48', null, 'SECURITY_GROUP', '用户授权维护', null, null, null, null, null, '0', '2015-08-28 22:00:20', null, '180', '1', '31', '*SYSADM', '2015-08-28 22:00:20', '*SYSADM', '2015-08-28 22:00:20', null);
INSERT INTO `ma_base_acl_menu` VALUES ('49', null, 'USER_ROLE_ADMIN', '业务部门角色管理', '业务部门角色管理', 'admin/macula-base/limitrole/list', 'GET', null, 'normal', '0', '2015-08-28 22:00:20', null, '190', '0', '48', '*SYSADM', '2015-08-28 22:00:20', '*SYSADM', '2015-08-28 22:00:20', null);
INSERT INTO `ma_base_acl_menu` VALUES ('50', null, 'ROLE_PRIV_ADMIN', '用户分组授权管理', '用户分组授权管理', 'admin/macula-base/sysuser/index', 'GET', null, 'normal', '0', '2015-08-28 22:00:20', null, '200', '0', '48', '*SYSADM', '2015-08-28 22:00:20', '*SYSADM', '2015-08-28 22:00:20', null);
INSERT INTO `ma_base_acl_menu` VALUES ('51', null, 'ROLE_ADMIN', '角色管理', '角色管理', 'admin/macula-base/grantedrole/list', 'GET', null, 'normal', '0', '2015-08-28 22:00:20', null, '210', '0', '48', '*SYSADM', '2015-08-28 22:00:20', '*SYSADM', '2015-08-28 22:00:20', null);
INSERT INTO `ma_base_acl_menu` VALUES ('52', null, 'SYSINFO_GROUP', '系统信息维护', null, null, null, null, null, '0', '2015-08-28 22:00:21', null, '220', '1', '31', '*SYSADM', '2015-08-28 22:00:21', '*SYSADM', '2015-08-28 22:00:21', null);
INSERT INTO `ma_base_acl_menu` VALUES ('53', null, 'SYS_RUN_INFO', '系统运行信息', '系统运行信息', 'admin/macula-core/system/runtime', 'GET', null, 'normal', '0', '2015-08-28 22:00:21', null, '230', '0', '52', '*SYSADM', '2015-08-28 22:00:21', '*SYSADM', '2015-08-28 22:00:21', null);
INSERT INTO `ma_base_acl_menu` VALUES ('54', null, 'ACCESS_LOG_VIEW', '系统访问日志', '系统访问日志', 'admin/macula-base/accesslog/index', 'GET', null, 'normal', '0', '2015-08-28 22:00:21', null, '240', '0', '52', '*SYSADM', '2015-08-28 22:00:21', '*SYSADM', '2015-08-28 22:00:21', null);
INSERT INTO `ma_base_acl_menu` VALUES ('55', null, 'ONLINE_USER_VIEW', '在线用户信息', '在线用户信息', 'admin/macula-base/sessions/list', 'GET', null, 'normal', '0', '2015-08-28 22:00:21', null, '250', '0', '52', '*SYSADM', '2015-08-28 22:00:21', '*SYSADM', '2015-08-28 22:00:21', null);
INSERT INTO `ma_base_acl_menu` VALUES ('56', null, 'USER_SESSION_ADMIN', '用户状态维护', '用户状态维护', 'admin/macula-base/usersession/index', 'GET', null, 'normal', '0', '2015-08-28 22:00:21', null, '260', '0', '52', '*SYSADM', '2015-08-28 22:00:21', '*SYSADM', '2015-08-28 22:00:21', null);
INSERT INTO `ma_base_acl_menu` VALUES ('57', null, 'USER_SESSION_HIS_ADMIN', '用户登录历史维护', '用户登录历史维护', 'admin/macula-base/usersessionhis/index', 'GET', null, 'normal', '0', '2015-08-28 22:00:21', null, '270', '0', '52', '*SYSADM', '2015-08-28 22:00:21', '*SYSADM', '2015-08-28 22:00:21', null);
INSERT INTO `ma_base_acl_menu` VALUES ('58', null, 'PASSWORD_POLICY_SETTING', '密码策略维护', '密码策略维护', 'admin/macula-base/passwordpolicy/settings', 'GET', null, 'normal', '0', '2015-08-28 22:04:00', null, '34804', '0', '52', '*SYSADM', '2015-08-28 22:04:00', '*SYSADM', '2015-08-28 22:04:00', null);
INSERT INTO `ma_base_acl_menu` VALUES ('59', null, 'EHR_SAAS_MANAGE', 'SAAS管理', null, null, null, null, null, '0', '2015-08-31 00:05:39', null, '59', '1', '11', 'admin', '2015-08-31 00:05:40', 'admin', '2015-08-31 00:11:31', null);
INSERT INTO `ma_base_acl_menu` VALUES ('60', null, 'EHR_SAAS_MANAGE_COMPANY', '注册公司管理', '注册公司管理', 'admin/saas/manager/company/list', 'GET', null, 'normal', '0', '2015-08-01 00:00:00', null, '0', '0', '59', 'admin', '2015-08-31 00:13:15', 'admin', '2015-08-31 00:13:15', null);

-- ----------------------------
-- Table structure for `ma_base_acl_org`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_acl_org`;
CREATE TABLE `ma_base_acl_org` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `OA_ID` decimal(19,0) NOT NULL,
  `APP_ID` varchar(20) DEFAULT NULL,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `SIMPLE_NAME` varchar(50) NOT NULL,
  `PARENT_ID` decimal(19,0) DEFAULT NULL,
  `IS_GROUP` decimal(1,0) NOT NULL DEFAULT '1',
  `ORDERED` decimal(10,0) NOT NULL,
  `LEADER_ACCOUNT` varchar(255) DEFAULT NULL,
  `FOUND_DATE` date NOT NULL,
  `ORG_LEVEL` decimal(10,0) NOT NULL DEFAULT '0',
  `ORG_TYPE` varchar(2) NOT NULL,
  `IS_ASSIGNABLE` decimal(1,0) NOT NULL DEFAULT '1',
  `ENABLED` decimal(1,0) NOT NULL DEFAULT '1',
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  `NICK_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX_MA_BASE_ACL_ORG_U1` (`OA_ID`),
  UNIQUE KEY `IDX_MA_BASE_ACL_ORG_U2` (`CODE`),
  UNIQUE KEY `UK_njauxe58a2j9qjdns5a5maxpl` (`OA_ID`),
  KEY `FK48C2EECCF086C060` (`PARENT_ID`),
  KEY `FK_kw2oi5g4s3n8f0q93htrvfgx` (`PARENT_ID`),
  CONSTRAINT `FK_kw2oi5g4s3n8f0q93htrvfgx` FOREIGN KEY (`PARENT_ID`) REFERENCES `ma_base_acl_org` (`OA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ma_base_acl_org
-- ----------------------------
INSERT INTO `ma_base_acl_org` VALUES ('1', '0', null, 'ROOT', '组织根', '组织根', null, '1', '1', null, '2015-08-28', '0', 'HO', '0', '1', '*SYSADM', '2015-08-28 22:00:26', '*SYSADM', '2015-08-28 22:00:26', null);

-- ----------------------------
-- Table structure for `ma_base_acl_policy`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_acl_policy`;
CREATE TABLE `ma_base_acl_policy` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `APP_ID` varchar(20) DEFAULT NULL,
  `IS_DECISION` decimal(1,0) NOT NULL DEFAULT '0',
  `IS_GROUP` decimal(1,0) NOT NULL DEFAULT '0',
  `PARENT_ID` decimal(19,0) DEFAULT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX_MA_BASE_ACL_POLICY_U1` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_base_acl_policy
-- ----------------------------
INSERT INTO `ma_base_acl_policy` VALUES ('1', 'ROOT', '业务策略列表', null, '0', '1', null, '*SYSADM', '2015-08-28 22:00:26', '*SYSADM', '2015-08-28 22:00:26');

-- ----------------------------
-- Table structure for `ma_base_acl_policy_entry`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_acl_policy_entry`;
CREATE TABLE `ma_base_acl_policy_entry` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `GRANTEDPOLICY_ID` decimal(19,0) NOT NULL,
  `USERRULE_ID` decimal(19,0) NOT NULL,
  `DECISIONRULE_ID` decimal(19,0) DEFAULT NULL,
  `QUERYRULE_ID` decimal(19,0) DEFAULT NULL,
  `DENY_REASON` varchar(255) DEFAULT NULL,
  `ORDERED` decimal(10,0) NOT NULL DEFAULT '0',
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_base_acl_policy_entry
-- ----------------------------

-- ----------------------------
-- Table structure for `ma_base_acl_provider_def`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_acl_provider_def`;
CREATE TABLE `ma_base_acl_provider_def` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `APP_ID` varchar(20) DEFAULT NULL,
  `NAME` varchar(20) NOT NULL,
  `GROUP_NAME` varchar(20) NOT NULL,
  `PROTOCOL` varchar(20) NOT NULL,
  `URI` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX_MA_BASE_ACL_PROVIDER_U1` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_base_acl_provider_def
-- ----------------------------

-- ----------------------------
-- Table structure for `ma_base_acl_role`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_acl_role`;
CREATE TABLE `ma_base_acl_role` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `IS_ASSIGNABLE` decimal(1,0) NOT NULL DEFAULT '1',
  `IS_RESIGNABLE` decimal(1,0) NOT NULL DEFAULT '1',
  `IS_RULE` decimal(1,0) NOT NULL DEFAULT '0',
  `USERRULE_ID` decimal(19,0) DEFAULT NULL,
  `IS_GROUP` decimal(1,0) NOT NULL DEFAULT '0',
  `PARENT_ID` decimal(19,0) DEFAULT NULL,
  `IS_OPPOSITE` decimal(1,0) NOT NULL DEFAULT '0',
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  `IS_INHERITABLE` decimal(1,0) NOT NULL DEFAULT '1',
  `INHERIT_FROM` decimal(19,0) DEFAULT NULL,
  `IS_EXECUTABLE` decimal(1,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX_MA_BASE_ACL_ROLE_U1` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_base_acl_role
-- ----------------------------
INSERT INTO `ma_base_acl_role` VALUES ('1', 'ROOT', '角色列表', '0', '0', '0', null, '1', null, '0', '*SYSADM', '2015-08-28 22:00:28', '*SYSADM', '2015-08-28 22:00:28', '1', null, '1');
INSERT INTO `ma_base_acl_role` VALUES ('10', 'ROLE_SYSTEM', '系统角色分组', '1', '1', '0', null, '1', '1', '0', '*SYSADM', '2015-08-28 22:00:31', '*SYSADM', '2015-08-28 22:00:31', '1', null, '1');
INSERT INTO `ma_base_acl_role` VALUES ('11', 'ROLE_ADMIN', '管理员角色', '1', '0', '0', null, '0', '10', '0', '*SYSADM', '2015-08-28 22:00:32', '*SYSADM', '2015-08-28 22:00:32', '1', null, '1');
INSERT INTO `ma_base_acl_role` VALUES ('12', 'ROLE_USER', '普通管理员角色', '1', '1', '0', null, '0', '10', '0', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33', '1', null, '1');
INSERT INTO `ma_base_acl_role` VALUES ('13', 'ROLE_LOGINED', '已登录用户角色', '0', '0', '1', '20', '0', '10', '0', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33', '1', null, '1');
INSERT INTO `ma_base_acl_role` VALUES ('14', 'ROLE_PUB', '公用用户角色', '0', '0', '1', '10', '0', '10', '0', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33', '1', null, '1');

-- ----------------------------
-- Table structure for `ma_base_acl_role_res`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_acl_role_res`;
CREATE TABLE `ma_base_acl_role_res` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `RES_TYPE` varchar(10) NOT NULL,
  `ROLE_ID` decimal(19,0) NOT NULL,
  `RES_ID` decimal(19,0) NOT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX_MA_BASE_ACL_ROLE_RES_U1` (`RES_TYPE`,`ROLE_ID`,`RES_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_base_acl_role_res
-- ----------------------------
INSERT INTO `ma_base_acl_role_res` VALUES ('70', 'ACTION', '11', '24', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('71', 'ACTION', '11', '26', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('72', 'ACTION', '11', '28', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('73', 'ACTION', '11', '31', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('74', 'ACTION', '11', '34', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('75', 'ACTION', '11', '36', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('76', 'ACTION', '11', '38', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('77', 'ACTION', '11', '41', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('78', 'ACTION', '11', '43', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('79', 'ACTION', '11', '45', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('80', 'ACTION', '11', '48', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('81', 'ACTION', '11', '50', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('82', 'ACTION', '11', '52', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('83', 'ACTION', '11', '53', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('84', 'ACTION', '11', '54', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('85', 'ACTION', '11', '55', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('86', 'ACTION', '11', '58', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('87', 'ACTION', '11', '60', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('88', 'ACTION', '11', '62', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('89', 'ACTION', '11', '64', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('90', 'ACTION', '11', '65', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('91', 'ACTION', '11', '67', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('92', 'ACTION', '11', '68', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('93', 'ACTION', '11', '69', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('94', 'ACTION', '11', '70', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('95', 'ACTION', '11', '71', '*SYSADM', '2015-08-28 22:00:33', '*SYSADM', '2015-08-28 22:00:33');
INSERT INTO `ma_base_acl_role_res` VALUES ('101', 'ACTION', '13', '67', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('102', 'ACTION', '13', '68', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('103', 'ACTION', '13', '69', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('104', 'ACTION', '13', '70', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('105', 'ACTION', '13', '71', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('108', 'MENU', '11', '33', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('109', 'MENU', '11', '35', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('110', 'MENU', '11', '36', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('111', 'MENU', '11', '38', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('112', 'MENU', '11', '40', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('113', 'MENU', '11', '41', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('114', 'MENU', '11', '42', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('115', 'MENU', '11', '43', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('116', 'MENU', '11', '45', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('117', 'MENU', '11', '46', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('118', 'MENU', '11', '47', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('119', 'MENU', '11', '49', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('120', 'MENU', '11', '50', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('121', 'MENU', '11', '51', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('122', 'MENU', '11', '53', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('123', 'MENU', '11', '54', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('124', 'MENU', '11', '55', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('125', 'MENU', '11', '56', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('126', 'MENU', '11', '57', '*SYSADM', '2015-08-28 22:00:34', '*SYSADM', '2015-08-28 22:00:34');
INSERT INTO `ma_base_acl_role_res` VALUES ('139', 'ACTION', '11', '74', '*SYSADM', '2015-08-28 22:04:00', '*SYSADM', '2015-08-28 22:04:00');
INSERT INTO `ma_base_acl_role_res` VALUES ('140', 'MENU', '11', '58', '*SYSADM', '2015-08-28 22:04:00', '*SYSADM', '2015-08-28 22:04:00');
INSERT INTO `ma_base_acl_role_res` VALUES ('141', 'ACTION', '11', '75', '*SYSADM', '2015-08-28 22:04:17', '*SYSADM', '2015-08-28 22:04:17');
INSERT INTO `ma_base_acl_role_res` VALUES ('142', 'ACTION', '11', '76', '*SYSADM', '2015-08-28 22:04:17', '*SYSADM', '2015-08-28 22:04:17');
INSERT INTO `ma_base_acl_role_res` VALUES ('143', 'MENU', '11', '60', 'admin', '2015-08-31 00:13:22', 'admin', '2015-08-31 00:13:22');
INSERT INTO `ma_base_acl_role_res` VALUES ('144', 'ACTION', '11', '77', 'admin', '2015-08-31 00:14:52', 'admin', '2015-08-31 00:14:52');

-- ----------------------------
-- Table structure for `ma_base_acl_user_cat`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_acl_user_cat`;
CREATE TABLE `ma_base_acl_user_cat` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(50) NOT NULL,
  `CAT_TYPE` varchar(10) NOT NULL,
  `CAT_ID` decimal(19,0) NOT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX_MA_BASE_ACL_USER_CAT_U1` (`USER_NAME`,`CAT_TYPE`,`CAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_base_acl_user_cat
-- ----------------------------

-- ----------------------------
-- Table structure for `ma_base_acl_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_acl_user_role`;
CREATE TABLE `ma_base_acl_user_role` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(50) NOT NULL,
  `ROLE_ID` decimal(19,0) NOT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX_MA_BASE_ACL_USER_ROLE_U1` (`USER_NAME`,`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_base_acl_user_role
-- ----------------------------
INSERT INTO `ma_base_acl_user_role` VALUES ('1', 'admin', '11', '*SYSADM', '2015-08-28 22:03:28', '*SYSADM', '2015-08-28 22:03:28');

-- ----------------------------
-- Table structure for `ma_base_acl_user_rule`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_acl_user_rule`;
CREATE TABLE `ma_base_acl_user_rule` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `APP_ID` varchar(20) DEFAULT NULL,
  `EXP_TEXT` longtext,
  `IS_GROUP` decimal(1,0) NOT NULL DEFAULT '0',
  `PARENT_ID` decimal(19,0) DEFAULT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX_MA_BASE_ACL_USER_RULE_U1` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_base_acl_user_rule
-- ----------------------------
INSERT INTO `ma_base_acl_user_rule` VALUES ('1', 'ROOT', '用户规则列表', null, null, '1', null, '*SYSADM', '2015-08-28 22:00:26', '*SYSADM', '2015-08-28 22:00:26');
INSERT INTO `ma_base_acl_user_rule` VALUES ('10', 'USER_RULE_PUB', '所有用户规则', null, 'true', '0', '1', '*SYSADM', '2015-08-28 22:00:26', '*SYSADM', '2015-08-28 22:00:26');
INSERT INTO `ma_base_acl_user_rule` VALUES ('11', 'USER_RULE_ADMIN', '系统管理员规则', null, 'user.roleCodes.contains(nullROLE_ADMINnull)', '0', '1', '*SYSADM', '2015-08-28 22:00:27', '*SYSADM', '2015-08-28 22:00:27');
INSERT INTO `ma_base_acl_user_rule` VALUES ('12', 'USER_RULE_USER', '普通用户规则', null, 'user.roleCodes.contains(nullROLE_USERnull)', '0', '1', '*SYSADM', '2015-08-28 22:00:27', '*SYSADM', '2015-08-28 22:00:27');
INSERT INTO `ma_base_acl_user_rule` VALUES ('20', 'USER_RULE_LOGINED', '所有登录用户规则', null, 'user != null', '0', '1', '*SYSADM', '2015-08-28 22:00:27', '*SYSADM', '2015-08-28 22:00:27');

-- ----------------------------
-- Table structure for `ma_base_acl_user_session`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_acl_user_session`;
CREATE TABLE `ma_base_acl_user_session` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(50) NOT NULL,
  `LOGIN_USER_NAME` varchar(50) DEFAULT NULL,
  `IS_LOGIN_IN` decimal(1,0) NOT NULL DEFAULT '0',
  `LAST_CHG_PWD_TIME` datetime DEFAULT NULL,
  `NEED_CHG_PWD` decimal(1,0) NOT NULL,
  `OLD_PWD` varchar(250) DEFAULT NULL,
  `PWD_FAILED_TIMES` decimal(10,0) DEFAULT NULL,
  `REM_ME_LAST_USED` datetime DEFAULT NULL,
  `REM_ME_SERIES` varchar(64) DEFAULT NULL,
  `REM_ME_TOKEN` varchar(64) DEFAULT NULL,
  `LAST_LOGIN_ADDR` varchar(255) DEFAULT NULL,
  `LAST_LOGIN_BROWSER` varchar(255) DEFAULT NULL,
  `LAST_LOGIN_INST` varchar(255) DEFAULT NULL,
  `LAST_LOGIN_TIME` datetime DEFAULT NULL,
  `LAST_LOGOUT_TIME` datetime DEFAULT NULL,
  `LOGIN_FAILED_TIME` datetime DEFAULT NULL,
  `IS_LOCKED` decimal(1,0) NOT NULL DEFAULT '0',
  `LOCKED_TIME` datetime DEFAULT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  `RETRIEVE_PWD_TIMES` decimal(10,0) NOT NULL DEFAULT '0',
  `RETRIEVE_PWD_TIME` datetime DEFAULT NULL,
  `ILLEGAL_REQUEST` decimal(1,0) NOT NULL DEFAULT '0',
  `LAST_LOGIN_AUTH_TYPE` varchar(255) DEFAULT NULL,
  `LAST_LOGIN_TERM_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX_MA_BASE_ACL_USER_SEN_U1` (`USER_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_base_acl_user_session
-- ----------------------------
INSERT INTO `ma_base_acl_user_session` VALUES ('255', 'admin', 'admin', '1', '2015-08-28 17:13:03', '0', null, '0', null, null, null, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'app01', '2015-08-31 00:34:10', '2015-08-31 00:34:10', null, '0', null, 'ANONYMOUS', '2015-08-28 17:13:03', 'ANONYMOUS', '2015-08-31 00:34:10', '0', null, '0', null, null);

-- ----------------------------
-- Table structure for `ma_base_acl_user_session_his`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_acl_user_session_his`;
CREATE TABLE `ma_base_acl_user_session_his` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(50) NOT NULL,
  `EVENT_INSTANCE` varchar(255) NOT NULL,
  `EVENT_ADDR` varchar(255) DEFAULT NULL,
  `EVENT_BROWSER` varchar(255) DEFAULT NULL,
  `EVENT_TYPE` varchar(10) NOT NULL,
  `EVENT_TIME` datetime NOT NULL,
  `EVENT_RESULT` varchar(10) NOT NULL,
  `EVENT_COMMENTS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_MA_BASE_ACL_USER_SEN_I1` (`USER_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=10324 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_base_acl_user_session_his
-- ----------------------------
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10302', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-28 17:10:55', 'FAILURE', 'AuthenticationFailureBadCredentialsEvent:???????????');
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10303', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-28 17:13:03', 'SUCCESS', 'AuthenticationSuccessEvent');
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10304', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-28 22:36:41', 'FAILURE', 'AuthenticationFailureBadCredentialsEvent:???????????');
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10305', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-28 22:36:59', 'FAILURE', 'AuthenticationFailureBadCredentialsEvent:???????????');
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10306', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-28 22:40:28', 'SUCCESS', 'AuthenticationSuccessEvent');
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10307', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-28 22:44:49', 'SUCCESS', 'AuthenticationSuccessEvent');
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10308', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-28 22:48:05', 'SUCCESS', 'AuthenticationSuccessEvent');
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10309', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-28 23:10:10', 'SUCCESS', 'AuthenticationSuccessEvent');
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10310', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-28 23:15:35', 'SUCCESS', 'AuthenticationSuccessEvent');
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10311', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-28 23:29:18', 'SUCCESS', 'AuthenticationSuccessEvent');
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10312', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-28 23:33:48', 'SUCCESS', 'AuthenticationSuccessEvent');
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10313', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-28 23:48:15', 'SUCCESS', 'AuthenticationSuccessEvent');
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10314', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-28 23:58:11', 'SUCCESS', 'AuthenticationSuccessEvent');
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10315', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-31 00:00:45', 'SUCCESS', 'AuthenticationSuccessEvent');
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10316', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-31 00:04:13', 'SUCCESS', 'AuthenticationSuccessEvent');
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10317', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-31 00:11:18', 'SUCCESS', 'AuthenticationSuccessEvent');
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10318', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-31 00:13:40', 'SUCCESS', 'AuthenticationSuccessEvent');
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10319', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-31 00:16:20', 'SUCCESS', 'AuthenticationSuccessEvent');
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10320', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-31 00:21:26', 'SUCCESS', 'AuthenticationSuccessEvent');
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10321', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-31 00:27:29', 'SUCCESS', 'AuthenticationSuccessEvent');
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10322', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-31 00:30:12', 'SUCCESS', 'AuthenticationSuccessEvent');
INSERT INTO `ma_base_acl_user_session_his` VALUES ('10323', 'admin', 'app01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'LOGIN', '2015-08-31 00:34:10', 'SUCCESS', 'AuthenticationSuccessEvent');

-- ----------------------------
-- Table structure for `ma_base_application`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_application`;
CREATE TABLE `ma_base_application` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `APP_ID` varchar(20) NOT NULL,
  `APP_NAME` varchar(50) NOT NULL,
  `APP_GROUP` varchar(20) DEFAULT NULL,
  `THEME` varchar(20) DEFAULT NULL,
  `HOME_PAGE` varchar(255) NOT NULL,
  `SECURE_KEY` varchar(1024) DEFAULT NULL,
  `PRIVATE_KEY` varchar(1024) DEFAULT NULL,
  `CONTACT` varchar(255) DEFAULT NULL,
  `SUPERVISOR` varchar(255) DEFAULT NULL,
  `IS_SSIN` decimal(1,0) NOT NULL DEFAULT '1',
  `IS_SSOUT` decimal(1,0) NOT NULL DEFAULT '1',
  `COMMENTS` varchar(255) DEFAULT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  `USE_ATTRS` decimal(1,0) NOT NULL DEFAULT '0',
  `ALLOWED_ATTRS` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX_MA_BASE_APPLICATION_U1` (`APP_ID`),
  UNIQUE KEY `UK_m6tjap6hhxvag8c2c9glb14vo` (`APP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_base_application
-- ----------------------------

-- ----------------------------
-- Table structure for `ma_base_app_instance`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_app_instance`;
CREATE TABLE `ma_base_app_instance` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `APP_ID` varchar(20) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `HOME_PAGE` varchar(255) NOT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX_MA_BASE_APP_INSTANCE_U1` (`APP_ID`,`CODE`),
  KEY `FK9519E5D619010073` (`APP_ID`),
  CONSTRAINT `ma_base_app_instance_ibfk_1` FOREIGN KEY (`APP_ID`) REFERENCES `ma_base_application` (`APP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_base_app_instance
-- ----------------------------

-- ----------------------------
-- Table structure for `ma_base_data_arg`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_data_arg`;
CREATE TABLE `ma_base_data_arg` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DATASET_ID` decimal(19,0) NOT NULL,
  `ARG_NAME` varchar(10) NOT NULL,
  `ARG_CLZ` varchar(50) NOT NULL,
  `DEFAULT_VALUE` varchar(50) DEFAULT NULL,
  `DATAPARAM_ID` decimal(19,0) DEFAULT NULL,
  `ALLOW_NULL` decimal(1,0) NOT NULL DEFAULT '0',
  `ARG_LABEL` varchar(50) NOT NULL,
  `ARG_CONTROL` varchar(20) NOT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX_MA_BASE_DATA_ARG_U1` (`DATASET_ID`,`ARG_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_base_data_arg
-- ----------------------------

-- ----------------------------
-- Table structure for `ma_base_data_enum`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_data_enum`;
CREATE TABLE `ma_base_data_enum` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `APP_ID` varchar(20) DEFAULT NULL,
  `TYPE` varchar(10) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `LOCALE` varchar(255) NOT NULL,
  `ORDERED` decimal(10,0) NOT NULL DEFAULT '0',
  `IS_GROUP` decimal(1,0) NOT NULL DEFAULT '0',
  `IS_ENABLED` decimal(1,0) NOT NULL DEFAULT '1',
  `PARENT_ID` decimal(19,0) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX_MA_BASE_DATA_ENUM_U1` (`TYPE`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_base_data_enum
-- ----------------------------

-- ----------------------------
-- Table structure for `ma_base_data_param`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_data_param`;
CREATE TABLE `ma_base_data_param` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `APP_ID` varchar(20) DEFAULT NULL,
  `TYPE` varchar(10) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `VALUE` varchar(2048) NOT NULL,
  `VALUE_SCOPE` varchar(20) NOT NULL,
  `PARAM_CLZ` varchar(10) DEFAULT NULL,
  `DATASOURCE_ID` decimal(19,0) DEFAULT NULL,
  `ORDERED` decimal(10,0) NOT NULL DEFAULT '0',
  `IS_GROUP` decimal(1,0) NOT NULL DEFAULT '0',
  `IS_ENABLED` decimal(1,0) NOT NULL DEFAULT '1',
  `PARENT_ID` decimal(19,0) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX_MA_BASE_DATA_PARAM_U1` (`TYPE`,`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_base_data_param
-- ----------------------------
INSERT INTO `ma_base_data_param` VALUES ('1', null, 'GROUP', 'ROOT', '数据参数列表', 'GROUP', 'NONE', 'String', null, '1', '1', '1', null, null, '*SYSADM', '2015-08-28 22:03:24', '*SYSADM', '2015-08-28 22:03:24');
INSERT INTO `ma_base_data_param` VALUES ('10', null, 'GROUP', 'MACULA_GROUP', '系统参数分组', 'GROUP', 'NONE', 'String', null, '1', '1', '0', '1', null, '*SYSADM', '2015-08-28 22:03:24', '*SYSADM', '2015-08-28 22:03:24');
INSERT INTO `ma_base_data_param` VALUES ('20', null, 'GROUP', 'DATASET_GROUP', '数据集分组', 'GROUP', 'NONE', 'String', null, '0', '1', '0', '10', null, '*SYSADM', '2015-08-28 22:03:24', '*SYSADM', '2015-08-28 22:03:24');
INSERT INTO `ma_base_data_param` VALUES ('21', null, 'MA_DATASET', 'datasource_url_list', '数据源URL类', 'jdbc:&lt;oracle:&lt;thin:&lt;@&lt;server&gt;[:<1521>]:&lt;database_name&gt;|jdbc:microsoft:sqlserver://<server_name>:<1433>;DatabaseName=<databaseName>aa', 'NONE', 'String', '1', '2', '0', '1', '20', null, 'daniel', '2015-08-28 22:03:24', '*SYSADM', '2015-08-28 22:03:24');
INSERT INTO `ma_base_data_param` VALUES ('22', null, 'MA_DATASET', 'datasource_driver_list', '数据源驱动类', 'oracle.jdbc.driver.OracleDriver|com.microsoft.jdbc.sqlserver.SQLServerDriver', 'NONE', 'String', null, '1', '0', '1', '20', null, '*SYSADM', '2015-08-28 22:03:24', '*SYSADM', '2015-08-28 22:03:24');
INSERT INTO `ma_base_data_param` VALUES ('23', null, 'MA_DATASET', 'dataparam_type_list', '数据参数类型列表', 'MA:macula框架|test:测试', 'NONE', 'String', null, '5', '0', '1', '20', null, 'daniel', '2015-08-28 22:03:24', '*SYSADM', '2015-08-28 22:03:24');
INSERT INTO `ma_base_data_param` VALUES ('24', null, 'MA_DATASET', 'dataparam_clz_list', '数据参数类型引用', 'String|Integer|Long|Double|Boolean|Timestamp|Date|Word', 'NONE', 'String', null, '6', '0', '1', '20', null, 'daniel', '2015-08-28 22:03:25', '*SYSADM', '2015-08-28 22:03:25');
INSERT INTO `ma_base_data_param` VALUES ('25', null, 'MA_DATASET', 'dataparam_group_list', '数据参数分组列表', 'select id, code, name as label, parent_id as pid, is_group as isgroup from ma_base_data_param where is_group = 1', 'NONE', 'String', '1', '4', '0', '1', '20', null, 'daniel', '2015-08-28 22:03:25', '*SYSADM', '2015-08-28 22:03:25');
INSERT INTO `ma_base_data_param` VALUES ('26', null, 'MA_DATASET', 'dataparam_valuescope_list', '数据参数作用范围', 'NONE:不缓存|SESSION:整个用户Session作用域|INSTANCE:实例级作用域|APPLICATION:全局级别作用域', 'NONE', 'String', null, '7', '0', '1', '20', null, 'daniel', '2015-08-28 22:03:25', '*SYSADM', '2015-08-28 22:03:25');
INSERT INTO `ma_base_data_param` VALUES ('27', null, 'MA_DATASET', 'dataparam_datasource_list', '数据源引用列表', 'select id, code, name as label from ma_base_data_source', 'NONE', 'String', '1', '0', '0', '1', '20', null, 'daniel', '2015-08-28 22:03:25', '*SYSADM', '2015-08-28 22:03:25');
INSERT INTO `ma_base_data_param` VALUES ('28', null, 'MA_DATASET', 'dataparam_all_list', '数据参数列表', 'select id, code, name as label, parent_id as pid, is_group as isgroup from ma_base_data_param', 'NONE', 'String', '1', '3', '0', '1', '20', null, '*SYSADM', '2015-08-28 22:03:25', '*SYSADM', '2015-08-28 22:03:25');
INSERT INTO `ma_base_data_param` VALUES ('29', null, 'MA_DATASET', 'dataset_all_list', '数据集列表', 'select id, code, name as label, parent_id as pid, is_group as isgroup from ma_base_data_set', 'NONE', 'String', '1', '11', '0', '1', '20', null, '*SYSADM', '2015-08-28 22:03:25', '*SYSADM', '2015-08-28 22:03:25');
INSERT INTO `ma_base_data_param` VALUES ('30', null, 'MA_DATASET', 'dataset_group_list', '数据集分组列表', 'select id, code, name as label, parent_id as pid, is_group as isgroup from ma_base_data_set where is_group = 1', 'NONE', 'String', '1', '12', '0', '1', '20', null, '*SYSADM', '2015-08-28 22:03:25', '*SYSADM', '2015-08-28 22:03:25');
INSERT INTO `ma_base_data_param` VALUES ('31', null, 'MA_DATASET', 'dataarg_control_list', '控件类型', 'Text|Password|TextArea|Combox|Radio|Checkbox|Date|DateTime|RadioList|CheckboxList|CheckboxTree|TableOption|TreeOption|MultiLine', 'NONE', 'String', null, '0', '0', '1', '20', null, '*SYSADM', '2015-08-28 22:03:25', '*SYSADM', '2015-08-28 22:03:25');
INSERT INTO `ma_base_data_param` VALUES ('40', null, 'GROUP', 'APPLICATION_GROUP', '应用实例分组', 'GROUP', 'NONE', 'String', null, '1', '1', '0', '10', null, '*SYSADM', '2015-08-28 22:03:25', '*SYSADM', '2015-08-28 22:03:25');
INSERT INTO `ma_base_data_param` VALUES ('41', null, 'MA_APP', 'application_list', '应用列表', 'select app_name as label, app_id as code from ma_base_application', 'NONE', 'String', '1', '1', '0', '1', '40', null, '*SYSADM', '2015-08-28 22:03:25', '*SYSADM', '2015-08-28 22:03:25');
INSERT INTO `ma_base_data_param` VALUES ('50', null, 'GROUP', 'RES_CAT_GROUP', '资源和分组分组', 'GROUP', 'NONE', 'String', null, '2', '1', '0', '10', null, '*SYSADM', '2015-08-28 22:03:26', '*SYSADM', '2015-08-28 22:03:26');
INSERT INTO `ma_base_data_param` VALUES ('51', null, 'MA_RES_CAT', 'action_log_options', '日志记录选项列表', '1:请求头|2:请求参数|4:SESSION数据|8:请求数据', 'NONE', 'String', null, '5', '0', '1', '50', null, '*SYSADM', '2015-08-28 22:03:26', '*SYSADM', '2015-08-28 22:03:26');
INSERT INTO `ma_base_data_param` VALUES ('52', null, 'MA_RES_CAT', 'action_log_levels', '日志记录级别列表', 'ANY:所有|LOGON:已登录|ERROR:出错|NONE:不记录', 'NONE', 'String', null, '6', '0', '1', '50', null, '*SYSADM', '2015-08-28 22:03:26', '*SYSADM', '2015-08-28 22:03:26');
INSERT INTO `ma_base_data_param` VALUES ('53', null, 'MA_RES_CAT', 'menu_tree_sugguest', '菜单树选择', 'select id, code as code, name as label, parent_id as pid, is_group as isgroup, ordered from ma_base_acl_menu', 'NONE', 'String', '1', '1', '0', '1', '50', null, '*SYSADM', '2015-08-28 22:03:26', '*SYSADM', '2015-08-28 22:03:26');
INSERT INTO `ma_base_data_param` VALUES ('54', null, 'MA_RES_CAT', 'action_group_list', '功能分组列表', 'select id, code, name as label, parent_id as pid, is_group as isgroup from ma_base_acl_action where is_group = 1', 'NONE', 'String', '1', '4', '0', '1', '50', null, '*SYSADM', '2015-08-28 22:03:26', '*SYSADM', '2015-08-28 22:03:26');
INSERT INTO `ma_base_data_param` VALUES ('55', null, 'MA_RES_CAT', 'menu_openmode_list', '菜单打开方式', 'normal:普通|iframe:框架|open:新窗口', 'NONE', 'String', null, '2', '0', '1', '50', null, '*SYSADM', '2015-08-28 22:03:26', '*SYSADM', '2015-08-28 22:03:26');
INSERT INTO `ma_base_data_param` VALUES ('56', null, 'MA_RES_CAT', 'menu_httpmethod_list', '菜单请求方式', 'GET|POST', 'NONE', 'String', null, '3', '0', '1', '50', null, '*SYSADM', '2015-08-28 22:03:26', '*SYSADM', '2015-08-28 22:03:26');
INSERT INTO `ma_base_data_param` VALUES ('57', null, 'MA_RES_CAT', 'menu_group_list', '菜单分组列表', 'select id, code, name as label, parent_id as pid, is_group as isgroup from ma_base_acl_menu where is_group = 1', 'NONE', 'String', '1', '1', '0', '1', '50', null, '*SYSADM', '2015-08-28 22:03:26', '*SYSADM', '2015-08-28 22:03:26');
INSERT INTO `ma_base_data_param` VALUES ('70', null, 'GROUP', 'PRIVILEDGE_GROUP', '用户授权分组', 'GROUP', 'NONE', 'String', null, '4', '1', '0', '10', null, '*SYSADM', '2015-08-28 22:03:26', '*SYSADM', '2015-08-28 22:03:26');
INSERT INTO `ma_base_data_param` VALUES ('71', null, 'MA_PRIVILE', 'role_group_list', '角色分组列表', 'select id, code, name as label, parent_id as pid from ma_base_acl_role where is_group = 1', 'NONE', 'String', '1', '1', '0', '1', '70', null, '*SYSADM', '2015-08-28 22:03:27', '*SYSADM', '2015-08-28 22:03:27');
INSERT INTO `ma_base_data_param` VALUES ('80', null, 'GROUP', 'POLICY_GROUP', '业务策略分组', 'GROUP', 'NONE', 'String', null, '3', '1', '0', '10', null, '*SYSADM', '2015-08-28 22:03:27', '*SYSADM', '2015-08-28 22:03:27');
INSERT INTO `ma_base_data_param` VALUES ('81', null, 'MA_POLICY', 'decisionrule_group_list', '决策业务规则分组列表', 'select id, code, name as label, parent_id as pid, is_group as isgroup from ma_base_acl_biz_rule where is_group = 1', 'NONE', 'String', '1', '3', '0', '1', '80', null, '*SYSADM', '2015-08-28 22:03:27', '*SYSADM', '2015-08-28 22:03:27');
INSERT INTO `ma_base_data_param` VALUES ('82', null, 'MA_POLICY', 'grantedpolicy_group_list', '业务策略分组列表', 'select id, code, name as label, parent_id as pid, is_group as isgroup from ma_base_acl_policy where is_group = 1', 'NONE', 'String', '1', '5', '0', '1', '80', null, '*SYSADM', '2015-08-28 22:03:27', '*SYSADM', '2015-08-28 22:03:27');
INSERT INTO `ma_base_data_param` VALUES ('83', null, 'MA_POLICY', 'user_rule_list', '用户规则列表', 'select id, code, name as label, parent_id as pid, is_group as isgroup from ma_base_acl_user_rule', 'NONE', 'String', '1', '2', '0', '1', '80', null, '*SYSADM', '2015-08-28 22:03:28', '*SYSADM', '2015-08-28 22:03:28');
INSERT INTO `ma_base_data_param` VALUES ('84', null, 'MA_POLICY', 'queryrule_list', '查询规则列表', 'select id, code, name as label, parent_id as pid, is_group as isgroup from ma_base_data_set', 'NONE', 'String', '1', '6', '0', '1', '80', null, '*SYSADM', '2015-08-28 22:03:28', '*SYSADM', '2015-08-28 22:03:28');
INSERT INTO `ma_base_data_param` VALUES ('85', null, 'MA_POLICY', 'decisionrule_list', '决策规则列表', 'select id, code, name as label, parent_id as pid, is_group as isgroup from ma_base_acl_biz_rule', 'NONE', 'String', '1', '4', '0', '1', '80', null, '*SYSADM', '2015-08-28 22:03:28', '*SYSADM', '2015-08-28 22:03:28');
INSERT INTO `ma_base_data_param` VALUES ('86', null, 'MA_POLICY', 'userrule_group_list', '用户规则分组列表', 'select id, code, name as label, parent_id as pid, is_group as isgroup from ma_base_acl_user_rule where is_group = 1', 'NONE', 'String', '1', '1', '0', '1', '80', null, '*SYSADM', '2015-08-28 22:03:28', '*SYSADM', '2015-08-28 22:03:28');

-- ----------------------------
-- Table structure for `ma_base_data_set`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_data_set`;
CREATE TABLE `ma_base_data_set` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `EXP_TEXT` longtext,
  `HANDLER_CHAIN` longtext,
  `DATASOURCE_ID` decimal(19,0) DEFAULT NULL,
  `IS_PAGABLE` decimal(1,0) NOT NULL DEFAULT '1',
  `IS_GROUP` decimal(1,0) NOT NULL DEFAULT '0',
  `PARENT_ID` decimal(19,0) DEFAULT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  `MID` decimal(19,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX_MA_BASE_DATA_SET_U1` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_base_data_set
-- ----------------------------
INSERT INTO `ma_base_data_set` VALUES ('1', 'ROOT', '数据集列表', null, null, null, '0', '1', null, '*SYSADM', '2015-08-28 22:03:28', '*SYSADM', '2015-08-28 22:03:28', null);
INSERT INTO `ma_base_data_set` VALUES ('10', 'MACULA_GROUP', '系统数据集分组', null, null, null, '0', '1', '1', '*SYSADM', '2015-08-28 22:03:28', '*SYSADM', '2015-08-28 22:03:28', null);
INSERT INTO `ma_base_data_set` VALUES ('11', 'ACCESS_LOG_SET', '访问日志数据集', 'select a.*, b.name from ma_base_acl_access_log a, ma_base_acl_action b\r\nwhere a.action_id = b.id order by a.start_time desc', null, '1', '1', '0', '10', '*SYSADM', '2015-08-28 22:03:28', '*SYSADM', '2015-08-28 22:03:28', null);
INSERT INTO `ma_base_data_set` VALUES ('12', 'USER_SESSION_SET', '用户状态数据集', 'select * from ma_base_acl_user_session', null, '1', '1', '0', '10', '*SYSADM', '2015-08-28 22:03:28', '*SYSADM', '2015-08-28 22:03:28', null);
INSERT INTO `ma_base_data_set` VALUES ('13', 'USER_SESSION_HIS_SET', '用户登录历史数据集', 'select * from ma_base_acl_user_session_his', null, '1', '1', '0', '10', '*SYSADM', '2015-08-28 22:03:28', '*SYSADM', '2015-08-28 22:03:28', null);

-- ----------------------------
-- Table structure for `ma_base_data_source`
-- ----------------------------
DROP TABLE IF EXISTS `ma_base_data_source`;
CREATE TABLE `ma_base_data_source` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `IS_JNDI` decimal(1,0) NOT NULL DEFAULT '0',
  `URI` varchar(255) NOT NULL,
  `DRIVER` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `VALIDATION_QUERY` varchar(255) DEFAULT NULL,
  `MAX_ACTIVE` decimal(10,0) NOT NULL DEFAULT '0',
  `MAX_IDLE` decimal(10,0) NOT NULL DEFAULT '0',
  `MAX_SIZE` decimal(10,0) NOT NULL DEFAULT '0',
  `MAX_WAIT` decimal(10,0) NOT NULL DEFAULT '0',
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  `TYPE` varchar(10) NOT NULL DEFAULT 'DATABASE',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDX_MA_BASE_DATA_SOURCE_U1` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_base_data_source
-- ----------------------------
INSERT INTO `ma_base_data_source` VALUES ('1', 'macula_ds', 'macula_ds', '0', 'macula_dataSource', '', '', '', 'select sysdate from dual', '0', '0', '0', '0', '*SYSADM', '2015-08-28 22:04:00', '*SYSADM', '2015-08-28 22:04:00', 'BEAN');

-- ----------------------------
-- Table structure for `ma_rule_dsl_template`
-- ----------------------------
DROP TABLE IF EXISTS `ma_rule_dsl_template`;
CREATE TABLE `ma_rule_dsl_template` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  `RULE_CONTENT` longtext NOT NULL,
  `RULE_VERSION` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_rule_dsl_template
-- ----------------------------

-- ----------------------------
-- Table structure for `ma_rule_info`
-- ----------------------------
DROP TABLE IF EXISTS `ma_rule_info`;
CREATE TABLE `ma_rule_info` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  `ACTIVE` int(11) NOT NULL,
  `RULE_CODE` varchar(20) NOT NULL,
  `RULE_DESC` varchar(200) NOT NULL,
  `RULE_NAME` varchar(100) NOT NULL,
  `RULE_TYPE_CODE` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_2ey9s3bbtkpwrgs39xljkkb8l` (`RULE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_rule_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ma_rule_invoke_log`
-- ----------------------------
DROP TABLE IF EXISTS `ma_rule_invoke_log`;
CREATE TABLE `ma_rule_invoke_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  `GLOBAL_OBJECTS` longtext NOT NULL,
  `INVOKED_BY` varchar(255) NOT NULL,
  `PASSED_IN_OBJECTS` longtext NOT NULL,
  `RULE_CODE` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_rule_invoke_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ma_rule_version`
-- ----------------------------
DROP TABLE IF EXISTS `ma_rule_version`;
CREATE TABLE `ma_rule_version` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  `RULE_CONTENT` longtext,
  `RULE_DISPLAY_SCRIPT` longtext NOT NULL,
  `RULE_INIT_SCRIPT` longtext NOT NULL,
  `RULE_CODE` varchar(20) NOT NULL,
  `SCRIPT_TYPE` varchar(20) NOT NULL,
  `RULE_VERSION` varchar(30) NOT NULL,
  `RULE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_l8msv0xkqj7lpywmtag0nbiwk` (`RULE_ID`),
  CONSTRAINT `FK_l8msv0xkqj7lpywmtag0nbiwk` FOREIGN KEY (`RULE_ID`) REFERENCES `ma_rule_info` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ma_rule_version
-- ----------------------------

-- ----------------------------
-- Table structure for `ss_company`
-- ----------------------------
DROP TABLE IF EXISTS `ss_company`;
CREATE TABLE `ss_company` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `COMPANY_CODE` varchar(50) NOT NULL,
  `COMPANY_NAME` varchar(50) NOT NULL,
  `CONTACT` varchar(255) DEFAULT NULL,
  `HOME_PAGE` varchar(255) NOT NULL,
  `PRIVATE_KEY` longtext NOT NULL,
  `SECURE_KEY` longtext NOT NULL,
  `SUPERVISOR` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_hi5sevbhh94hehm6ng6fjd4xj` (`COMPANY_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_company
-- ----------------------------
INSERT INTO `ss_company` VALUES ('1', 'admin', '2015-08-31 00:50:33', 'admin', '2015-08-31 00:50:50', null, 'TENONER', '天奕咨询', '123', 'http://www.tenoner.net', 'x', 'd', 'admin');

-- ----------------------------
-- Table structure for `ss_org`
-- ----------------------------
DROP TABLE IF EXISTS `ss_org`;
CREATE TABLE `ss_org` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  `ENABLED` tinyint(1) NOT NULL,
  `FOUND_DATE` date NOT NULL,
  `LEADER_ACCOUNT` varchar(255) DEFAULT NULL,
  `ORG_LEVEL` int(11) NOT NULL,
  `NICK_NAME` varchar(255) DEFAULT NULL,
  `ORDERED` int(11) NOT NULL,
  `SIMPLE_NAME` varchar(50) NOT NULL,
  `ORG_TYPE` varchar(2) NOT NULL,
  `PARENT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_11e7as0b4x3lqg0334wg31w7s` (`PARENT_ID`),
  CONSTRAINT `FK_11e7as0b4x3lqg0334wg31w7s` FOREIGN KEY (`PARENT_ID`) REFERENCES `ss_org` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_org
-- ----------------------------

-- ----------------------------
-- Table structure for `ss_user`
-- ----------------------------
DROP TABLE IF EXISTS `ss_user`;
CREATE TABLE `ss_user` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_BY` varchar(50) NOT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(50) NOT NULL,
  `LAST_UPDATED_TIME` datetime NOT NULL,
  `CITY` varchar(250) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `IS_ENABLED` tinyint(1) NOT NULL,
  `INACTIVE_DATE` datetime DEFAULT NULL,
  `LEADER_ACCOUNT` varchar(250) DEFAULT NULL,
  `LOCALE` varchar(20) NOT NULL,
  `MOBILE` varchar(50) DEFAULT NULL,
  `OFFICE_ADDR` varchar(250) DEFAULT NULL,
  `ORG_CODE` varchar(50) NOT NULL,
  `PASSWORD` varchar(250) NOT NULL,
  `REGION` varchar(250) DEFAULT NULL,
  `SEX` varchar(1) NOT NULL,
  `STATE` varchar(250) DEFAULT NULL,
  `TIMEZONE` varchar(50) NOT NULL,
  `USER_FROM` varchar(20) NOT NULL,
  `USER_NAME` varchar(50) NOT NULL,
  `USER_NICK_NAME` varchar(150) DEFAULT NULL,
  `USER_REAL_NAME` varchar(50) NOT NULL,
  `USER_TYPE` varchar(3) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_b3br0kx0kxvefesu10hgi09sk` (`USER_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_user
-- ----------------------------
INSERT INTO `ss_user` VALUES ('1', 'admin', '2015-08-28 22:31:26', 'admin', '2015-08-28 22:31:34', null, '2015-08-28 00:00:00', null, '1', null, null, '', null, null, '', '0192023a7bbd73250516f069df18b500', null, 'M', null, '', '', 'admin', 'admin', 'admin', '');
