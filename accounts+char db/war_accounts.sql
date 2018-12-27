/*
Navicat MySQL Data Transfer

Source Server         : gunbad
Source Server Version : 50552
Source Host           : localhost:3306
Source Database       : war_accounts

Target Server Type    : MYSQL
Target Server Version : 50552
File Encoding         : 65001

Date: 2018-12-27 14:58:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `accounts`
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `AccountId` int(11) NOT NULL AUTO_INCREMENT,
  `PacketLog` tinyint(3) unsigned DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `CryptPassword` varchar(255) DEFAULT NULL,
  `Ip` varchar(255) DEFAULT NULL,
  `Token` varchar(255) DEFAULT NULL,
  `GmLevel` tinyint(4) NOT NULL,
  `Banned` int(11) NOT NULL,
  `BanReason` text,
  `AdviceBlockEnd` int(11) DEFAULT NULL,
  `StealthMuteEnd` int(11) DEFAULT NULL,
  `CoreLevel` int(11) DEFAULT NULL,
  `LastLogged` int(11) DEFAULT NULL,
  `LastNameChanged` int(11) DEFAULT NULL,
  `LastPatcherLog` text,
  `InvalidPasswordCount` int(10) unsigned NOT NULL,
  `noSurname` tinyint(4) NOT NULL,
  PRIMARY KEY (`AccountId`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of accounts
-- ----------------------------
INSERT INTO `accounts` VALUES ('1', '0', 'test', '', '31f014b53e5861c8b28a8707a1d6a2a2737ce2c22fd671884173498510a063f0', '127.0.0.1', 'NzcwODk0NDctNDJkMC00YTk3LTgzODAtZDc1ZDcyNGM5OGYz', '31', '0', '', '0', '0', '0', '1545868885', '0', '', '12', '0');

-- ----------------------------
-- Table structure for `account_sanction_logs`
-- ----------------------------
DROP TABLE IF EXISTS `account_sanction_logs`;
CREATE TABLE `account_sanction_logs` (
  `AccountId` int(11) DEFAULT NULL,
  `IssuedBy` varchar(24) DEFAULT NULL,
  `ActionType` varchar(24) DEFAULT NULL,
  `IssuerGmLevel` int(11) DEFAULT NULL,
  `ActionDuration` text,
  `ActionLog` varchar(255) DEFAULT NULL,
  `ActionTime` int(11) DEFAULT NULL,
  `account_sanction_logs_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`account_sanction_logs_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of account_sanction_logs
-- ----------------------------

-- ----------------------------
-- Table structure for `account_value`
-- ----------------------------
DROP TABLE IF EXISTS `account_value`;
CREATE TABLE `account_value` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AccountId` int(11) DEFAULT NULL,
  `InstallId` text,
  `IP` text,
  `MAC` text,
  `HDSerialHash` text,
  `CPUIDHash` text,
  `ModifyDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of account_value
-- ----------------------------

-- ----------------------------
-- Table structure for `ip_bans`
-- ----------------------------
DROP TABLE IF EXISTS `ip_bans`;
CREATE TABLE `ip_bans` (
  `Ip` varchar(255) NOT NULL,
  `Expire` int(11) DEFAULT NULL,
  PRIMARY KEY (`Ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ip_bans
-- ----------------------------

-- ----------------------------
-- Table structure for `realms`
-- ----------------------------
DROP TABLE IF EXISTS `realms`;
CREATE TABLE `realms` (
  `RealmId` tinyint(3) unsigned NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Language` varchar(255) DEFAULT NULL,
  `Adresse` varchar(255) DEFAULT NULL,
  `Port` int(11) NOT NULL,
  `AllowTrials` varchar(255) DEFAULT NULL,
  `CharfxerAvailable` varchar(255) DEFAULT NULL,
  `Legacy` varchar(255) DEFAULT NULL,
  `BonusDestruction` varchar(255) DEFAULT NULL,
  `BonusOrder` varchar(255) DEFAULT NULL,
  `Redirect` varchar(255) DEFAULT NULL,
  `Region` varchar(255) DEFAULT NULL,
  `Retired` varchar(255) DEFAULT NULL,
  `WaitingDestruction` varchar(255) DEFAULT NULL,
  `WaitingOrder` varchar(255) DEFAULT NULL,
  `DensityDestruction` varchar(255) DEFAULT NULL,
  `DensityOrder` varchar(255) DEFAULT NULL,
  `OpenRvr` varchar(255) DEFAULT NULL,
  `Rp` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Online` tinyint(3) unsigned NOT NULL,
  `OnlineDate` datetime DEFAULT NULL,
  `OnlinePlayers` int(10) unsigned DEFAULT NULL,
  `OrderCount` int(10) unsigned DEFAULT NULL,
  `DestructionCount` int(10) unsigned DEFAULT NULL,
  `MaxPlayers` int(10) unsigned DEFAULT NULL,
  `OrderCharacters` int(10) unsigned DEFAULT NULL,
  `DestruCharacters` int(10) unsigned DEFAULT NULL,
  `NextRotationTime` bigint(20) DEFAULT NULL,
  `MasterPassword` text,
  `BootTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`RealmId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of realms
-- ----------------------------
INSERT INTO `realms` VALUES ('1', 'Gunbad', 'EN', '127.0.0.1', '10622', '0', '1', '1', '0', '0', '0', 'STR_REGION_EUROPE', '0', '0', '1', '0', '0', '1', '0', '0', '1', '2018-12-27 00:01:12', '0', '0', '0', '100', '1', '0', '1546473600', '0', '1545868872');
