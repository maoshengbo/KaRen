/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-05-31 16:36:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SCORE_SUM` int(11) DEFAULT NULL,
  `SCORE_AVG` int(11) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '小米', '60', '3', '12');
INSERT INTO `student` VALUES ('2', '小芳', '70', '2', '13');
INSERT INTO `student` VALUES ('3', '小哦', '80', '1', '15');

-- ----------------------------
-- Table structure for sup_base
-- ----------------------------
DROP TABLE IF EXISTS `sup_base`;
CREATE TABLE `sup_base` (
  `SUPP_RULE_ID` bigint(20) NOT NULL COMMENT '自增id',
  `SUPP_BUSS_ID` int(20) DEFAULT NULL COMMENT '业务单据编号（业务单据表 【字典表】）',
  `SUPP_BUSS_NAME` varchar(20) DEFAULT NULL COMMENT '业务单据',
  `APPRO_TYPE` int(20) DEFAULT NULL COMMENT '审批类型（10：顺序  20：会签【字典表】）',
  `APPRO_TIER_NUMBER` int(20) DEFAULT NULL COMMENT '审批层级（会签数量【字典表】）  根据APPROVAL_TYPE对应',
  `CREATE_USER` varchar(50) DEFAULT NULL COMMENT '创建人',
  `UPDATE_USER` varchar(50) DEFAULT NULL COMMENT '修改人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `YN` tinyint(4) DEFAULT NULL COMMENT '是否删除（0：删除  1：不删除【字典表】）',
  PRIMARY KEY (`SUPP_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商业务审批设置—基础表';

-- ----------------------------
-- Records of sup_base
-- ----------------------------

-- ----------------------------
-- Table structure for sup_buss_approval
-- ----------------------------
DROP TABLE IF EXISTS `sup_buss_approval`;
CREATE TABLE `sup_buss_approval` (
  `SUPP_ID` bigint(20) NOT NULL COMMENT '自增id',
  `APPRO_COM_ID` bigint(20) DEFAULT NULL COMMENT '审批单位id',
  `APPRO_DEP_ID` bigint(20) DEFAULT NULL COMMENT '审批部门id',
  `APPRO_ROLE_ID` bigint(20) DEFAULT NULL COMMENT '审批角色id',
  `APP_USER_ID` bigint(20) DEFAULT NULL COMMENT '审批人id',
  `LIMIT_TIME` varchar(20) DEFAULT NULL COMMENT '审批时限',
  `CREATE_USER` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `UPDATE_USER` bigint(20) DEFAULT NULL COMMENT '修改人id',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `YN` tinyint(4) DEFAULT NULL COMMENT '是否删除（0：删除  1：不删除【字典表】）',
  PRIMARY KEY (`SUPP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商业务审批设置——规则列表';

-- ----------------------------
-- Records of sup_buss_approval
-- ----------------------------
