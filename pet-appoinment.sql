/*
 Navicat Premium Data Transfer

 Source Server         : nea-qcrm
 Source Server Type    : MariaDB
 Source Server Version : 101103
 Source Host           : localhost:3306
 Source Schema         : pet-appoinment

 Target Server Type    : MariaDB
 Target Server Version : 101103
 File Encoding         : 65001

 Date: 20/04/2025 20:49:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for animalsType
-- ----------------------------
DROP TABLE IF EXISTS `animalsType`;
CREATE TABLE `animalsType` (
  `name` varchar(255) DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of animalsType
-- ----------------------------
BEGIN;
INSERT INTO `animalsType` VALUES ('สุนัข', 0, 1);
INSERT INTO `animalsType` VALUES ('แมว', 0, 2);
COMMIT;

-- ----------------------------
-- Table structure for appointments
-- ----------------------------
DROP TABLE IF EXISTS `appointments`;
CREATE TABLE `appointments` (
  `animalsBreed` varchar(255) DEFAULT NULL,
  `animalsName` varchar(255) DEFAULT NULL,
  `timeAppointment` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `createBy` tinyint(4) DEFAULT NULL,
  `modifiedBy` tinyint(4) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` varchar(255) DEFAULT NULL,
  `subject` int(11) DEFAULT NULL,
  `animalsType` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9eb7c91184a3148ab595e6896c0` (`subject`),
  KEY `FK_977af278ba831174da74f79c075` (`animalsType`),
  KEY `FK_01733651151c8a1d6d980135cc4` (`userId`),
  CONSTRAINT `FK_01733651151c8a1d6d980135cc4` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_977af278ba831174da74f79c075` FOREIGN KEY (`animalsType`) REFERENCES `animalsType` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_9eb7c91184a3148ab595e6896c0` FOREIGN KEY (`subject`) REFERENCES `subjects` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of appointments
-- ----------------------------
BEGIN;
INSERT INTO `appointments` VALUES ('1', 'test', '2568-04-15 19:50:51', NULL, '2568-04-15 19:51:10', NULL, 2, NULL, 1, NULL, NULL, NULL, 11);
INSERT INTO `appointments` VALUES (NULL, 'จิงจิง', '2025-01-01 09:00:00', 0, '2025-04-15 20:20:35', '2025-04-15 20:20:35', 2, 2, 2, NULL, NULL, NULL, 2);
INSERT INTO `appointments` VALUES (NULL, 'liga', '2025-01-01 10:00:00', 0, '2025-04-15 20:23:13', '2025-04-15 20:23:13', 2, 2, 3, NULL, 1, NULL, 2);
INSERT INTO `appointments` VALUES (NULL, 'จิงจิง', '2025-01-01 10:00:00', 0, '2025-04-15 20:26:50', '2025-04-15 20:26:50', 2, 2, 4, NULL, NULL, NULL, 1);
INSERT INTO `appointments` VALUES (NULL, 'มูซู', '2025-01-01 16:00:00', 0, '2025-04-15 20:29:01', '2025-04-15 20:29:01', 2, 2, 5, NULL, 1, NULL, 11);
INSERT INTO `appointments` VALUES (NULL, 'liga', '2025-01-01 10:00:00', 0, '2025-04-15 21:28:52', '2025-04-15 21:28:52', 2, 2, 6, NULL, NULL, NULL, 1);
INSERT INTO `appointments` VALUES (NULL, 'liga', '2025-01-01 10:00:00', 0, '2025-04-15 21:30:39', '2025-04-15 21:30:39', 2, 2, 7, NULL, NULL, NULL, 1);
INSERT INTO `appointments` VALUES (NULL, 'liga', '2025-01-01 10:00:00', 0, '2025-04-15 21:32:41', '2025-04-15 21:32:41', 2, 2, 8, NULL, NULL, NULL, 1);
INSERT INTO `appointments` VALUES (NULL, 'จิงจิง', '2025-01-01 10:00:00', 0, '2025-04-15 21:41:31', '2025-04-15 21:41:31', 2, 2, 9, NULL, NULL, NULL, 1);
INSERT INTO `appointments` VALUES (NULL, 'liga', '2025-01-01 11:00:00', 0, '2025-04-15 21:42:36', '2025-04-15 21:42:36', 2, 2, 10, NULL, NULL, NULL, 1);
INSERT INTO `appointments` VALUES (NULL, 'liga', '2025-01-01 14:00:00', 0, '2025-04-15 21:47:13', '2025-04-15 21:47:13', 2, 2, 11, NULL, NULL, NULL, 1);
INSERT INTO `appointments` VALUES (NULL, 'mumu', '2025-01-01 16:00:00', 0, '2025-04-16 23:09:51', '2025-04-16 23:09:51', 11, 11, 12, '0', 3, 1, NULL);
INSERT INTO `appointments` VALUES (NULL, 'mumu', '2025-01-01 15:00:00', 0, '2025-04-16 23:11:32', '2025-04-16 23:11:32', 11, 11, 13, '0', 2, 1, NULL);
INSERT INTO `appointments` VALUES (NULL, 'mumu', '2025-01-01 10:00:00', 0, '2025-04-16 23:12:33', '2025-04-16 23:12:33', 11, 11, 14, '0', 2, 1, NULL);
INSERT INTO `appointments` VALUES (NULL, 'mumu', '2025-01-01 09:00:00', 0, '2025-04-16 23:13:47', '2025-04-16 23:13:47', 11, 11, 15, '0', 3, 1, NULL);
INSERT INTO `appointments` VALUES (NULL, 'mumu', '2025-01-01 13:00:00', 0, '2025-04-16 23:19:34', '2025-04-16 23:19:34', 11, 11, 16, '0', 3, 1, 11);
INSERT INTO `appointments` VALUES (NULL, 'liga', '2025-01-02 10:00:00', 0, '2025-04-16 23:36:33', '2025-04-16 23:36:33', 2, 2, 17, '0', 3, 1, 2);
INSERT INTO `appointments` VALUES (NULL, 'liga', '2025-01-02 13:00:00', 0, '2025-04-19 23:41:37', '2025-04-19 23:41:37', 2, 2, 18, '0', 2, 1, 2);
COMMIT;

-- ----------------------------
-- Table structure for days
-- ----------------------------
DROP TABLE IF EXISTS `days`;
CREATE TABLE `days` (
  `id` int(11) DEFAULT NULL,
  `day` varchar(55) DEFAULT NULL,
  `is_active` tinyint(11) DEFAULT NULL,
  `is_delete` tinyint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of days
-- ----------------------------
BEGIN;
INSERT INTO `days` VALUES (0, '1', 1, 0);
INSERT INTO `days` VALUES (1, '2', 1, 0);
INSERT INTO `days` VALUES (2, '3', 1, 0);
INSERT INTO `days` VALUES (3, '4', 1, 0);
INSERT INTO `days` VALUES (4, '5', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for month
-- ----------------------------
DROP TABLE IF EXISTS `month`;
CREATE TABLE `month` (
  `id` int(11) DEFAULT NULL,
  `month` varchar(55) DEFAULT NULL,
  `is_active` tinyint(11) DEFAULT NULL,
  `is_delete` tinyint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of month
-- ----------------------------
BEGIN;
INSERT INTO `month` VALUES (1, '1', 1, NULL);
INSERT INTO `month` VALUES (2, '2', 1, NULL);
INSERT INTO `month` VALUES (3, '3', 1, NULL);
INSERT INTO `month` VALUES (4, '4', 1, NULL);
INSERT INTO `month` VALUES (5, '5', 1, NULL);
INSERT INTO `month` VALUES (6, '6', 1, NULL);
INSERT INTO `month` VALUES (7, '7', 1, NULL);
INSERT INTO `month` VALUES (8, '8', 1, NULL);
INSERT INTO `month` VALUES (9, '9', 1, NULL);
INSERT INTO `month` VALUES (10, '10', 1, NULL);
INSERT INTO `month` VALUES (11, '11', 1, NULL);
INSERT INTO `month` VALUES (12, '12', 1, NULL);
COMMIT;

-- ----------------------------
-- Table structure for pets
-- ----------------------------
DROP TABLE IF EXISTS `pets`;
CREATE TABLE `pets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `animalsTypeId` int(11) DEFAULT NULL,
  `petBreeds` varchar(100) DEFAULT NULL,
  `petAge` varchar(11) DEFAULT NULL,
  `petWeightId` int(11) DEFAULT NULL,
  `createBy` int(11) DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `modifiedDete` timestamp NULL DEFAULT NULL,
  `isDelete` tinyint(1) DEFAULT NULL,
  `createDate` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of pets
-- ----------------------------
BEGIN;
INSERT INTO `pets` VALUES (1, NULL, 'bubu', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2025-01-23 15:47:54.827573');
INSERT INTO `pets` VALUES (2, NULL, 'bubu', 1, 'บางแก้ว', '3', 4, 1, NULL, NULL, NULL, '2025-01-23 15:52:34.007541');
INSERT INTO `pets` VALUES (3, NULL, 'เหมียว', 2, 'บริติช', '1', 1, 1, NULL, NULL, NULL, '2025-01-23 15:53:50.396299');
INSERT INTO `pets` VALUES (4, 2, 'มูซู', 1, 'ชิบะ', '2 ขวบคั้บ', 4, 2, NULL, NULL, NULL, '2025-01-23 16:01:24.073720');
INSERT INTO `pets` VALUES (5, 2, 'จิงจิง', 2, 'บริติช', '2 ปี', 1, 2, NULL, NULL, NULL, '2025-01-23 16:36:36.389943');
INSERT INTO `pets` VALUES (6, NULL, 'test', 2, 'eye', '2', 1, 1, NULL, NULL, NULL, '2025-02-09 09:57:21.434860');
INSERT INTO `pets` VALUES (7, NULL, 'gege', 2, 'thai', '2', 1, 1, NULL, NULL, NULL, '2025-02-09 10:00:48.251695');
INSERT INTO `pets` VALUES (8, NULL, 'toto', 1, 'thai', '2', 4, 1, NULL, NULL, NULL, '2025-02-09 10:03:08.767306');
INSERT INTO `pets` VALUES (9, 2, 'liga', 1, 'chocho', '2', 4, 1, NULL, NULL, NULL, '2025-02-09 10:11:57.091829');
INSERT INTO `pets` VALUES (10, 11, 'mumu', 1, 'thai', '1', 4, 11, NULL, NULL, NULL, '2025-02-09 10:12:58.307982');
COMMIT;

-- ----------------------------
-- Table structure for price
-- ----------------------------
DROP TABLE IF EXISTS `price`;
CREATE TABLE `price` (
  `id` tinyint(4) NOT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `animalTypeId` int(11) DEFAULT NULL,
  `subjectId` int(11) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `weightId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of price
-- ----------------------------
BEGIN;
INSERT INTO `price` VALUES (1, '0-3 Kg', 2, 1, '250', 1);
INSERT INTO `price` VALUES (2, '0-3 Kg', 2, 2, '350', 1);
INSERT INTO `price` VALUES (3, '0-3 Kg', 2, 4, '500', 1);
INSERT INTO `price` VALUES (4, '4-7 Kg', 2, 1, '350', 2);
INSERT INTO `price` VALUES (5, '4-7 Kg', 2, 2, '450', 2);
INSERT INTO `price` VALUES (6, '4-7 Kg', 2, 4, '600', 2);
INSERT INTO `price` VALUES (7, '7+ Kg', 2, 1, '450', 3);
INSERT INTO `price` VALUES (8, '7+ Kg', 2, 2, '550', 3);
INSERT INTO `price` VALUES (9, '7+ Kg', 2, 4, '700', 3);
INSERT INTO `price` VALUES (10, '0-5 Kg', 1, 1, '200', 4);
INSERT INTO `price` VALUES (11, '0-5 Kg', 1, 2, '150', 4);
INSERT INTO `price` VALUES (12, '0-5 Kg', 1, 3, '500', 4);
INSERT INTO `price` VALUES (13, '0-5 Kg', 1, 4, '350', 4);
INSERT INTO `price` VALUES (14, '6-10 Kg', 1, 1, '300', 5);
INSERT INTO `price` VALUES (15, '6-10 Kg', 1, 2, '200', 5);
INSERT INTO `price` VALUES (16, '6-10 Kg', 1, 3, '500', 5);
INSERT INTO `price` VALUES (17, '6-10 Kg', 1, 4, '500', 5);
INSERT INTO `price` VALUES (18, '11-15 Kg', 1, 1, '700', 6);
INSERT INTO `price` VALUES (19, '11-15 Kg', 1, 2, '700', 6);
INSERT INTO `price` VALUES (20, '11-15 Kg', 1, 3, '500', 6);
INSERT INTO `price` VALUES (21, '11-15 Kg', 1, 4, '500', 6);
COMMIT;

-- ----------------------------
-- Table structure for subjects
-- ----------------------------
DROP TABLE IF EXISTS `subjects`;
CREATE TABLE `subjects` (
  `subject` varchar(255) DEFAULT NULL,
  `is_delete` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createBy` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of subjects
-- ----------------------------
BEGIN;
INSERT INTO `subjects` VALUES ('อาบน้ำ', NULL, 1, NULL);
INSERT INTO `subjects` VALUES ('ตัดขน', NULL, 2, NULL);
INSERT INTO `subjects` VALUES ('สระว่ายน้ำ', NULL, 3, NULL);
INSERT INTO `subjects` VALUES ('อาบน้ำ,ตัดขน', '1', 4, NULL);
INSERT INTO `subjects` VALUES (NULL, '1', 5, NULL);
INSERT INTO `subjects` VALUES ('test', '1', 6, '1');
COMMIT;

-- ----------------------------
-- Table structure for time_slots
-- ----------------------------
DROP TABLE IF EXISTS `time_slots`;
CREATE TABLE `time_slots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_slot` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for times
-- ----------------------------
DROP TABLE IF EXISTS `times`;
CREATE TABLE `times` (
  `date` varchar(255) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `is_delete` tinyint(4) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of times
-- ----------------------------
BEGIN;
INSERT INTO `times` VALUES ('01/01/2025', '09:00:00', 1, NULL, 1);
INSERT INTO `times` VALUES ('01/01/2025', '10:00:00', 1, NULL, 2);
INSERT INTO `times` VALUES ('01/01/2025', '11:00:00', 1, NULL, 3);
INSERT INTO `times` VALUES ('01/01/2025', '14:00:00', 1, NULL, 4);
INSERT INTO `times` VALUES ('01/01/2025', '15:00:00', 1, NULL, 5);
INSERT INTO `times` VALUES ('01/01/2025', '16:00:00', 1, NULL, 6);
INSERT INTO `times` VALUES ('01/01/2025', '13:00:00', 1, NULL, 7);
INSERT INTO `times` VALUES ('02/01/2025', '09:00:00', NULL, NULL, 8);
INSERT INTO `times` VALUES ('02/01/2025', '10:00:00', 1, NULL, 9);
INSERT INTO `times` VALUES ('02/01/2025', '11:00:00', NULL, NULL, 10);
INSERT INTO `times` VALUES ('02/01/2025', '13:00:00', 1, NULL, 11);
INSERT INTO `times` VALUES ('02/01/2025', '14:00:00', NULL, NULL, 12);
INSERT INTO `times` VALUES ('02/01/2025', '15:00:00', NULL, NULL, 13);
INSERT INTO `times` VALUES ('02/01/2025', '16:00:00', NULL, NULL, 14);
INSERT INTO `times` VALUES ('03/01/2025', '09:00:00', NULL, NULL, 15);
INSERT INTO `times` VALUES ('03/01/2025', '10:00:00', NULL, NULL, 16);
INSERT INTO `times` VALUES ('03/01/2025', '11:00:00', NULL, NULL, 17);
INSERT INTO `times` VALUES ('03/01/2025', '13:00:00', NULL, NULL, 18);
INSERT INTO `times` VALUES ('03/01/2025', '14:00:00', NULL, NULL, 19);
INSERT INTO `times` VALUES ('03/01/2025', '15:00:00', NULL, NULL, 20);
INSERT INTO `times` VALUES ('03/01/2025', '16:00:00', NULL, NULL, 21);
COMMIT;

-- ----------------------------
-- Table structure for times_copy1
-- ----------------------------
DROP TABLE IF EXISTS `times_copy1`;
CREATE TABLE `times_copy1` (
  `id` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `is_active` tinyint(11) DEFAULT NULL,
  `is_delete` tinyint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of times_copy1
-- ----------------------------
BEGIN;
INSERT INTO `times_copy1` VALUES (1, '01/01/2025', '09:00:00', NULL, NULL);
INSERT INTO `times_copy1` VALUES (2, '01/01/2025', '10:00:00', NULL, NULL);
INSERT INTO `times_copy1` VALUES (3, '01/01/2025', '11:00:00', NULL, NULL);
INSERT INTO `times_copy1` VALUES (5, '01/01/2025', '14:00:00', NULL, NULL);
INSERT INTO `times_copy1` VALUES (6, '01/01/2025', '15:00:00', NULL, NULL);
INSERT INTO `times_copy1` VALUES (7, '01/01/2025', '16:00:00', NULL, NULL);
INSERT INTO `times_copy1` VALUES (4, '01/01/2025', '13:00:00', NULL, NULL);
INSERT INTO `times_copy1` VALUES (8, '02/01/2025', '09:00:00', NULL, NULL);
INSERT INTO `times_copy1` VALUES (9, '02/01/2025', '10:00:00', NULL, NULL);
INSERT INTO `times_copy1` VALUES (10, '02/01/2025', '11:00:00', NULL, NULL);
INSERT INTO `times_copy1` VALUES (11, '02/01/2025', '13:00:00', NULL, NULL);
INSERT INTO `times_copy1` VALUES (12, '02/01/2025', '14:00:00', NULL, NULL);
INSERT INTO `times_copy1` VALUES (13, '02/01/2025', '15:00:00', NULL, NULL);
INSERT INTO `times_copy1` VALUES (14, '02/01/2025', '16:00:00', NULL, NULL);
INSERT INTO `times_copy1` VALUES (15, '03/01/2025', '09:00:00', NULL, NULL);
INSERT INTO `times_copy1` VALUES (16, '03/01/2025', '10:00:00', NULL, NULL);
INSERT INTO `times_copy1` VALUES (17, '03/01/2025', '11:00:00', NULL, NULL);
INSERT INTO `times_copy1` VALUES (18, '03/01/2025', '13:00:00', NULL, NULL);
INSERT INTO `times_copy1` VALUES (19, '03/01/2025', '14:00:00', NULL, NULL);
INSERT INTO `times_copy1` VALUES (20, '03/01/2025', '15:00:00', NULL, NULL);
INSERT INTO `times_copy1` VALUES (21, '03/01/2025', '16:00:00', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for user_entity
-- ----------------------------
DROP TABLE IF EXISTS `user_entity`;
CREATE TABLE `user_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `createBy` int(11) NOT NULL,
  `modifiedBy` varchar(255) NOT NULL,
  `isDelete` int(11) NOT NULL DEFAULT 0,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifiedDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `role` tinyint(1) DEFAULT NULL,
  `createBy` tinyint(4) DEFAULT NULL,
  `modifiedBy` tinyint(4) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `is_delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('admin', 'admin_10', 'ben', 'li_x', '0611457951', 1, NULL, NULL, NULL, 1, '2025-01-21 18:00:41.697902', NULL);
INSERT INTO `users` VALUES ('ben', 'ben', 'Ben', 'To', '0966076129', 0, NULL, NULL, NULL, 2, '2025-01-21 18:00:41.697902', NULL);
INSERT INTO `users` VALUES ('roro', 'ok', 'benja', 'kiki', '0862574206', 0, NULL, NULL, NULL, 7, '2025-01-21 18:00:41.697902', NULL);
INSERT INTO `users` VALUES ('uuuu', 'brnbrn', 'brnkub', 'firt', '0966076129', 0, NULL, NULL, NULL, 8, '2025-01-21 18:00:41.697902', NULL);
INSERT INTO `users` VALUES ('hello', 'hello01', 'hello', 'ja', '0849549656', 0, 1, NULL, NULL, 9, '2025-01-21 18:00:41.697902', NULL);
INSERT INTO `users` VALUES ('testtest', 'test', 'test', 'testt', '0909090999', 0, 1, NULL, NULL, 10, '2025-01-21 18:01:24.803033', NULL);
INSERT INTO `users` VALUES ('oak', 'oak98', 'wanat', 'chapron', '0989897456', 0, 1, NULL, NULL, 11, '2025-01-21 18:04:43.762211', NULL);
COMMIT;

-- ----------------------------
-- Table structure for weight
-- ----------------------------
DROP TABLE IF EXISTS `weight`;
CREATE TABLE `weight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weight` varchar(255) DEFAULT NULL,
  `is_delete` varchar(255) DEFAULT NULL,
  `animalTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of weight
-- ----------------------------
BEGIN;
INSERT INTO `weight` VALUES (1, '0-3 Kg', NULL, 2);
INSERT INTO `weight` VALUES (2, '4-7 Kg', NULL, 2);
INSERT INTO `weight` VALUES (3, '7+ Kg', NULL, 2);
INSERT INTO `weight` VALUES (4, '0-5 Kg', NULL, 1);
INSERT INTO `weight` VALUES (5, '6-10 Kg', NULL, 1);
INSERT INTO `weight` VALUES (6, '11-15 Kg', NULL, 1);
INSERT INTO `weight` VALUES (7, '16+ Kg', NULL, 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
