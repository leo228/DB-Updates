/*
Navicat MySQL Data Transfer

Source Server         : gunbad
Source Server Version : 50552
Source Host           : localhost:3306
Source Database       : war_characters

Target Server Type    : MYSQL
Target Server Version : 50552
File Encoding         : 65001

Date: 2018-12-27 15:01:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auctions`
-- ----------------------------
DROP TABLE IF EXISTS `auctions`;
CREATE TABLE `auctions` (
  `AuctionId` bigint(20) unsigned NOT NULL,
  `Realm` tinyint(3) unsigned NOT NULL,
  `SellerId` int(10) unsigned NOT NULL,
  `ItemId` int(10) unsigned NOT NULL,
  `SellPrice` int(10) unsigned NOT NULL,
  `Count` smallint(5) unsigned NOT NULL,
  `StartTime` int(10) unsigned NOT NULL,
  `Talismans` varchar(40) DEFAULT NULL,
  `PrimaryDye` smallint(5) unsigned NOT NULL,
  `SecondaryDye` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`AuctionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auctions
-- ----------------------------

-- ----------------------------
-- Table structure for `banned_names`
-- ----------------------------
DROP TABLE IF EXISTS `banned_names`;
CREATE TABLE `banned_names` (
  `NameString` varchar(255) NOT NULL,
  `FilterTypeString` text,
  PRIMARY KEY (`NameString`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of banned_names
-- ----------------------------

-- ----------------------------
-- Table structure for `bug_report`
-- ----------------------------
DROP TABLE IF EXISTS `bug_report`;
CREATE TABLE `bug_report` (
  `AccountId` int(10) unsigned NOT NULL,
  `CharacterId` int(10) unsigned NOT NULL,
  `ZoneId` smallint(5) unsigned NOT NULL,
  `X` smallint(5) unsigned NOT NULL,
  `Y` smallint(5) unsigned NOT NULL,
  `Time` int(10) unsigned NOT NULL,
  `Type` tinyint(3) unsigned NOT NULL,
  `Category` tinyint(3) unsigned NOT NULL,
  `Message` text NOT NULL,
  `ReportType` text NOT NULL,
  `FieldSting` text NOT NULL,
  `Assigned` text,
  `bug_report_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`bug_report_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bug_report
-- ----------------------------

-- ----------------------------
-- Table structure for `characters`
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `CharacterId` int(10) unsigned NOT NULL,
  `Name` varchar(24) NOT NULL,
  `Surname` varchar(24) NOT NULL,
  `RealmId` int(11) NOT NULL,
  `AccountId` int(11) NOT NULL,
  `SlotId` tinyint(3) unsigned NOT NULL,
  `ModelId` tinyint(3) unsigned NOT NULL,
  `Career` tinyint(3) unsigned NOT NULL,
  `CareerLine` tinyint(3) unsigned NOT NULL,
  `Realm` tinyint(3) unsigned NOT NULL,
  `HeldLeft` int(11) NOT NULL,
  `Race` tinyint(3) unsigned NOT NULL,
  `Traits` text NOT NULL,
  `Sex` tinyint(3) unsigned NOT NULL,
  `Anonymous` tinyint(3) unsigned NOT NULL,
  `Hidden` tinyint(3) unsigned NOT NULL,
  `OldName` varchar(24) NOT NULL,
  `PetName` varchar(24) NOT NULL,
  `PetModel` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`CharacterId`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of characters
-- ----------------------------

-- ----------------------------
-- Table structure for `characters_items`
-- ----------------------------
DROP TABLE IF EXISTS `characters_items`;
CREATE TABLE `characters_items` (
  `Guid` bigint(20) NOT NULL,
  `CharacterId` int(10) unsigned NOT NULL,
  `Entry` int(10) unsigned NOT NULL,
  `SlotId` smallint(5) unsigned NOT NULL,
  `ModelId` int(10) unsigned NOT NULL,
  `Counts` smallint(5) unsigned NOT NULL,
  `Talismans` varchar(40) DEFAULT NULL,
  `PrimaryDye` smallint(5) unsigned NOT NULL,
  `SecondaryDye` smallint(5) unsigned NOT NULL,
  `BoundtoPlayer` tinyint(3) unsigned NOT NULL,
  `Alternate_AppereanceEntry` int(10) unsigned NOT NULL,
  `characters_items_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`characters_items_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of characters_items
-- ----------------------------

-- ----------------------------
-- Table structure for `characters_mails`
-- ----------------------------
DROP TABLE IF EXISTS `characters_mails`;
CREATE TABLE `characters_mails` (
  `Guid` int(11) NOT NULL AUTO_INCREMENT,
  `AuctionType` tinyint(3) unsigned NOT NULL,
  `CharacterId` int(10) unsigned NOT NULL,
  `CharacterIdSender` int(10) unsigned NOT NULL,
  `SenderName` varchar(255) NOT NULL,
  `ReceiverName` varchar(255) NOT NULL,
  `SendDate` int(10) unsigned NOT NULL,
  `ReadDate` int(10) unsigned NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Content` text NOT NULL,
  `Money` int(10) unsigned NOT NULL,
  `Cr` tinyint(3) unsigned NOT NULL,
  `Opened` tinyint(3) unsigned NOT NULL,
  `ItemsString` text NOT NULL,
  PRIMARY KEY (`Guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of characters_mails
-- ----------------------------

-- ----------------------------
-- Table structure for `characters_quests`
-- ----------------------------
DROP TABLE IF EXISTS `characters_quests`;
CREATE TABLE `characters_quests` (
  `CharacterId` int(10) unsigned NOT NULL,
  `QuestID` smallint(5) unsigned NOT NULL,
  `Objectives` varchar(64) NOT NULL,
  `Done` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`CharacterId`,`QuestID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of characters_quests
-- ----------------------------

-- ----------------------------
-- Table structure for `characters_socials`
-- ----------------------------
DROP TABLE IF EXISTS `characters_socials`;
CREATE TABLE `characters_socials` (
  `CharacterId` int(10) unsigned NOT NULL,
  `DistCharacterId` int(10) unsigned NOT NULL,
  `DistName` varchar(255) NOT NULL,
  `Friend` tinyint(3) unsigned NOT NULL,
  `Ignore` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`CharacterId`,`DistCharacterId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of characters_socials
-- ----------------------------

-- ----------------------------
-- Table structure for `characters_toks`
-- ----------------------------
DROP TABLE IF EXISTS `characters_toks`;
CREATE TABLE `characters_toks` (
  `CharacterId` int(10) unsigned NOT NULL DEFAULT '0',
  `TokEntry` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Count` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`CharacterId`,`TokEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of characters_toks
-- ----------------------------

-- ----------------------------
-- Table structure for `characters_toks_kills`
-- ----------------------------
DROP TABLE IF EXISTS `characters_toks_kills`;
CREATE TABLE `characters_toks_kills` (
  `CharacterId` int(10) unsigned NOT NULL,
  `NPCEntry` smallint(5) unsigned NOT NULL,
  `Count` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`CharacterId`,`NPCEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of characters_toks_kills
-- ----------------------------

-- ----------------------------
-- Table structure for `characters_value`
-- ----------------------------
DROP TABLE IF EXISTS `characters_value`;
CREATE TABLE `characters_value` (
  `CharacterId` int(10) unsigned NOT NULL,
  `Level` tinyint(3) unsigned NOT NULL,
  `Xp` int(10) unsigned NOT NULL,
  `XpMode` int(11) NOT NULL,
  `RestXp` int(10) unsigned NOT NULL,
  `Renown` int(10) unsigned NOT NULL,
  `RenownRank` tinyint(3) unsigned NOT NULL,
  `Money` int(10) unsigned NOT NULL,
  `Speed` int(11) NOT NULL,
  `PlayedTime` int(10) unsigned NOT NULL,
  `LastSeen` int(11) DEFAULT NULL,
  `RegionId` int(11) NOT NULL,
  `ZoneId` smallint(5) unsigned NOT NULL,
  `WorldX` int(11) NOT NULL,
  `WorldY` int(11) NOT NULL,
  `WorldZ` int(11) NOT NULL,
  `WorldO` int(11) NOT NULL,
  `RallyPoint` smallint(5) unsigned NOT NULL,
  `BagBuy` tinyint(3) unsigned NOT NULL,
  `BankBuy` tinyint(3) unsigned NOT NULL,
  `Skills` int(10) unsigned NOT NULL,
  `Online` tinyint(3) unsigned NOT NULL,
  `GearShow` tinyint(3) unsigned NOT NULL,
  `TitleId` smallint(5) unsigned NOT NULL,
  `RenownSkills` text NOT NULL,
  `MasterySkills` text NOT NULL,
  `Morale1` smallint(5) unsigned DEFAULT NULL,
  `Morale2` smallint(5) unsigned DEFAULT NULL,
  `Morale3` smallint(5) unsigned DEFAULT NULL,
  `Morale4` smallint(5) unsigned DEFAULT NULL,
  `Tactic1` smallint(5) unsigned DEFAULT NULL,
  `Tactic2` smallint(5) unsigned DEFAULT NULL,
  `Tactic3` smallint(5) unsigned DEFAULT NULL,
  `Tactic4` smallint(5) unsigned DEFAULT NULL,
  `GatheringSkill` tinyint(3) unsigned NOT NULL,
  `GatheringSkillLevel` tinyint(3) unsigned NOT NULL,
  `CraftingSkill` tinyint(3) unsigned NOT NULL,
  `CraftingSkillLevel` tinyint(3) unsigned NOT NULL,
  `ExperimentalMode` tinyint(3) unsigned NOT NULL,
  `RVRKills` int(10) unsigned NOT NULL,
  `RVRDeaths` int(10) unsigned NOT NULL,
  `CraftingBags` tinyint(3) unsigned NOT NULL,
  `PendingXp` int(10) unsigned DEFAULT NULL,
  `PendingRenown` int(10) unsigned DEFAULT NULL,
  `Lockouts` text NOT NULL,
  `DisconcetTime` int(11) NOT NULL,
  PRIMARY KEY (`CharacterId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of characters_value
-- ----------------------------

-- ----------------------------
-- Table structure for `character_abilities`
-- ----------------------------
DROP TABLE IF EXISTS `character_abilities`;
CREATE TABLE `character_abilities` (
  `CharacterID` int(11) DEFAULT NULL,
  `AbilityID` smallint(5) unsigned DEFAULT NULL,
  `LastCast` int(11) DEFAULT NULL,
  `character_abilities_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`character_abilities_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of character_abilities
-- ----------------------------

-- ----------------------------
-- Table structure for `character_bag_pools`
-- ----------------------------
DROP TABLE IF EXISTS `character_bag_pools`;
CREATE TABLE `character_bag_pools` (
  `CharacterId` int(11) NOT NULL,
  `Bag_Type` int(11) NOT NULL,
  `BagPool_Value` int(11) NOT NULL,
  PRIMARY KEY (`CharacterId`,`Bag_Type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of character_bag_pools
-- ----------------------------

-- ----------------------------
-- Table structure for `character_client_data`
-- ----------------------------
DROP TABLE IF EXISTS `character_client_data`;
CREATE TABLE `character_client_data` (
  `CharacterId` int(10) unsigned NOT NULL,
  `ClientDataString` text NOT NULL,
  PRIMARY KEY (`CharacterId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of character_client_data
-- ----------------------------
INSERT INTO `character_client_data` VALUES ('2', 'AwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAkR8BAJAfAQDh2QICAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9QABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBQAE8AKADjAP4CkBDmD/APwgvpANwCMAyHAIgA3wCGACUnhABODAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==');

-- ----------------------------
-- Table structure for `character_deletions`
-- ----------------------------
DROP TABLE IF EXISTS `character_deletions`;
CREATE TABLE `character_deletions` (
  `DeletionIP` text,
  `AccountID` int(11) DEFAULT NULL,
  `AccountName` text,
  `CharacterID` int(10) unsigned DEFAULT NULL,
  `CharacterName` text,
  `DeletionTimeSeconds` int(11) DEFAULT NULL,
  `character_deletions_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`character_deletions_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of character_deletions
-- ----------------------------

-- ----------------------------
-- Table structure for `character_influences`
-- ----------------------------
DROP TABLE IF EXISTS `character_influences`;
CREATE TABLE `character_influences` (
  `CharacterId` int(11) NOT NULL,
  `InfluenceId` smallint(5) unsigned NOT NULL,
  `InfluenceCount` int(10) unsigned NOT NULL,
  `Tier_1_Itemtaken` tinyint(3) unsigned NOT NULL,
  `Tier_2_Itemtaken` tinyint(3) unsigned NOT NULL,
  `Tier_3_Itemtaken` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`CharacterId`,`InfluenceId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of character_influences
-- ----------------------------

-- ----------------------------
-- Table structure for `character_saved_buffs`
-- ----------------------------
DROP TABLE IF EXISTS `character_saved_buffs`;
CREATE TABLE `character_saved_buffs` (
  `CharacterId` int(10) unsigned NOT NULL,
  `BuffId` smallint(5) unsigned NOT NULL,
  `Level` tinyint(3) unsigned DEFAULT NULL,
  `StackLevel` tinyint(3) unsigned DEFAULT NULL,
  `EndTimeSeconds` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`CharacterId`,`BuffId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of character_saved_buffs
-- ----------------------------

-- ----------------------------
-- Table structure for `gmcommandlogs`
-- ----------------------------
DROP TABLE IF EXISTS `gmcommandlogs`;
CREATE TABLE `gmcommandlogs` (
  `AccountId` int(10) unsigned DEFAULT NULL,
  `PlayerName` varchar(255) DEFAULT NULL,
  `Command` text,
  `Date` datetime DEFAULT NULL,
  `gmcommandlogs_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`gmcommandlogs_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gmcommandlogs
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_alliance_info`
-- ----------------------------
DROP TABLE IF EXISTS `guild_alliance_info`;
CREATE TABLE `guild_alliance_info` (
  `AllianceId` int(10) unsigned NOT NULL,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`AllianceId`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of guild_alliance_info
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_event`
-- ----------------------------
DROP TABLE IF EXISTS `guild_event`;
CREATE TABLE `guild_event` (
  `SlotId` tinyint(3) unsigned NOT NULL,
  `GuildId` int(10) unsigned NOT NULL,
  `CharacterId` int(10) unsigned NOT NULL,
  `Begin` int(10) unsigned NOT NULL,
  `End` int(10) unsigned NOT NULL,
  `Name` text NOT NULL,
  `Description` text NOT NULL,
  `Alliance` tinyint(3) unsigned NOT NULL,
  `Locked` tinyint(3) unsigned NOT NULL,
  `Signups` text NOT NULL,
  `guild_event_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`guild_event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of guild_event
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_info`
-- ----------------------------
DROP TABLE IF EXISTS `guild_info`;
CREATE TABLE `guild_info` (
  `GuildId` int(10) unsigned NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Level` tinyint(3) unsigned NOT NULL,
  `Realm` tinyint(3) unsigned NOT NULL,
  `LeaderId` int(10) unsigned NOT NULL,
  `CreateDate` int(11) NOT NULL,
  `Motd` text NOT NULL,
  `AboutUs` text NOT NULL,
  `Xp` int(10) unsigned NOT NULL,
  `Renown` bigint(20) unsigned NOT NULL,
  `BriefDescription` text NOT NULL,
  `Summary` text NOT NULL,
  `PlayStyle` tinyint(3) unsigned NOT NULL,
  `Atmosphere` tinyint(3) unsigned NOT NULL,
  `CareersNeeded` int(10) unsigned NOT NULL,
  `Interests` tinyint(3) unsigned NOT NULL,
  `ActivelyRecruiting` tinyint(3) unsigned NOT NULL,
  `RanksNeeded` tinyint(3) unsigned NOT NULL,
  `Tax` tinyint(3) unsigned NOT NULL,
  `Money` bigint(20) unsigned NOT NULL,
  `guildvaultpurchased` text NOT NULL,
  `Banners` text NOT NULL,
  `Heraldry` text NOT NULL,
  `GuildTacticsPurchased` text NOT NULL,
  `AllianceId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`GuildId`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of guild_info
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_logs`
-- ----------------------------
DROP TABLE IF EXISTS `guild_logs`;
CREATE TABLE `guild_logs` (
  `GuildId` int(10) unsigned NOT NULL,
  `Time` int(10) unsigned NOT NULL,
  `Type` tinyint(3) unsigned NOT NULL,
  `Text` text NOT NULL,
  `guild_logs_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`guild_logs_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of guild_logs
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_members`
-- ----------------------------
DROP TABLE IF EXISTS `guild_members`;
CREATE TABLE `guild_members` (
  `GuildId` int(10) unsigned NOT NULL,
  `CharacterId` int(10) unsigned NOT NULL,
  `RankId` tinyint(3) unsigned NOT NULL,
  `PublicNote` text NOT NULL,
  `OfficerNote` text NOT NULL,
  `JoinDate` int(10) unsigned NOT NULL,
  `LastSeen` int(10) unsigned NOT NULL,
  `RealmCaptain` tinyint(3) unsigned NOT NULL,
  `StandardBearer` tinyint(3) unsigned NOT NULL,
  `GuildRecruiter` tinyint(3) unsigned NOT NULL,
  `RenownContributed` bigint(20) unsigned NOT NULL,
  `Tithe` tinyint(3) unsigned NOT NULL,
  `TitheContributed` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`CharacterId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of guild_members
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_ranks`
-- ----------------------------
DROP TABLE IF EXISTS `guild_ranks`;
CREATE TABLE `guild_ranks` (
  `GuildId` int(10) unsigned NOT NULL,
  `RankId` tinyint(3) unsigned NOT NULL,
  `Name` text NOT NULL,
  `Permissions` text NOT NULL,
  `Enabled` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`GuildId`,`RankId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of guild_ranks
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_vault_item`
-- ----------------------------
DROP TABLE IF EXISTS `guild_vault_item`;
CREATE TABLE `guild_vault_item` (
  `GuildId` int(10) unsigned NOT NULL,
  `Entry` int(10) unsigned NOT NULL,
  `VaultId` tinyint(3) unsigned NOT NULL,
  `SlotId` smallint(5) unsigned NOT NULL,
  `Counts` smallint(5) unsigned NOT NULL,
  `Talismans` varchar(40) DEFAULT NULL,
  `PrimaryDye` smallint(5) unsigned NOT NULL,
  `SecondaryDye` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`GuildId`,`VaultId`,`SlotId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of guild_vault_item
-- ----------------------------

-- ----------------------------
-- Table structure for `scenario_durations`
-- ----------------------------
DROP TABLE IF EXISTS `scenario_durations`;
CREATE TABLE `scenario_durations` (
  `Guid` int(11) NOT NULL AUTO_INCREMENT,
  `ScenarioId` smallint(5) unsigned DEFAULT NULL,
  `Tier` tinyint(3) unsigned DEFAULT NULL,
  `StartTime` bigint(20) DEFAULT NULL,
  `DurationSeconds` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`Guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of scenario_durations
-- ----------------------------
