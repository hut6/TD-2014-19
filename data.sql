# ************************************************************
# Sequel Pro SQL dump
# Version 4004
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.1.63-cll)
# Database: securecr_prod
# Generation Time: 2014-07-23 07:27:14 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table travel_allowance_location
# ------------------------------------------------------------

CREATE TABLE `travel_allowance_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `locationGroup_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A6E0E7F29D2F49C8` (`locationGroup_id`),
  CONSTRAINT `FK_A6E0E7F29D2F49C8` FOREIGN KEY (`locationGroup_id`) REFERENCES `travel_allowance_location_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `travel_allowance_location` WRITE;
/*!40000 ALTER TABLE `travel_allowance_location` DISABLE KEYS */;

INSERT INTO `travel_allowance_location` (`id`, `name`, `locationGroup_id`)
VALUES
	(1,'Adelaide',1),
	(2,'Brisbane',1),
	(3,'Canberra',1),
	(4,'Darwin',1),
	(5,'Hobart',1),
	(6,'Melbourne',1),
	(7,'Perth',1),
	(8,'Sydney',1),
	(9,'Alice Springs (NT)',2),
	(10,'Albany (WA)',2),
	(11,'Bourke (NSW)',2),
	(12,'Bright (VIC)',2),
	(13,'Broome (WA)',2),
	(14,'Bunbury (WA)',2),
	(15,'Burnie (TAS)',2),
	(16,'Cairns (QLD)',2),
	(17,'Carnarvon (WA)',2),
	(18,'Castlemaine (VIC)',2),
	(19,'Chinchilla (QLD)',2),
	(20,'Christmas Island (WA)',2),
	(21,'Cocos (Keeling) Islands (WA)',2),
	(22,'Dalby (QLD)',2),
	(23,'Dampier (WA)',2),
	(24,'Derby (WA)',2),
	(25,'Devonport (TAS)',2),
	(26,'Emerald (QLD)',2),
	(27,'Exmouth (WA)',2),
	(28,'Geraldton (WA)',2),
	(29,'Gladstone (QLD)',2),
	(30,'Gold Coast (QLD)',2),
	(31,'Halls Creek (WA)',2),
	(32,'Hervey Bay (QLD)',2),
	(33,'Horn Island (QLD)',2),
	(34,'Jabiru (NT)',2),
	(35,'Kalgoorlie (WA)',2),
	(36,'Karratha (WA)',2),
	(37,'Katherine (NT)',2),
	(38,'Kingaroy (QLD)',2),
	(39,'Kununurra (WA)',2),
	(40,'Mackay (QLD)',2),
	(41,'Mount Isa (QLD)',2),
	(42,'Mudgee (NSW)',2),
	(43,'Newcastle (NSW)',2),
	(44,'Newman (WA)',2),
	(45,'Norfolk Island',2),
	(46,'Northam (WA)',2),
	(47,'Port Hedland (WA)',2),
	(48,'Port Pirie (SA)',2),
	(49,'Thursday Island (QLD)',2),
	(50,'Wagga Wagga (NSW)',2),
	(51,'Weipa (QLD)',2),
	(52,'Whyalla (SA)',2),
	(53,'Wilpena-Pound (SA)',2),
	(54,'Wollongong (NSW)',2),
	(55,'Wonthaggi (VIC)',2),
	(56,'Yulara (NT)',2),
	(57,'Ararat (VIC)',3),
	(58,'Armidale (NSW)',3),
	(59,'Bairnsdale (VIC)',3),
	(60,'Ballarat (VIC)',3),
	(61,'Bathurst (NSW)',3),
	(62,'Bendigo (VIC)',3),
	(63,'Bordertown (SA)',2),
	(64,'Broken Hill (NSW)',3),
	(65,'Bundaberg (QLD)',3),
	(66,'Ceduna (SA)',3),
	(67,'Coffs Harbour (NSW)',3),
	(68,'Cooma (NSW)',3),
	(69,'Dubbo (NSW)',3),
	(70,'Esperance (WA)',3),
	(71,'Echuca (VIC)',3),
	(72,'Geelong (VIC)',3),
	(73,'Gosford (NSW)',2),
	(74,'Goulburn (NSW)',3),
	(75,'Hamilton (VIC)',3),
	(76,'Horsham (VIC)',3),
	(77,'Innisfail (QLD)',3),
	(78,'Kadina (SA)',3),
	(79,'Launceston (TAS)',3),
	(80,'Maitland (NSW)',2),
	(81,'Mildura (VIC)',3),
	(82,'Mount Gambier (SA)',3),
	(83,'Muswellbrook (NSW)',3),
	(84,'Naracoorte (SA)',3),
	(85,'Nowra (NSW)',3),
	(86,'Orange (NSW)',2),
	(87,'Port Augusta (SA)',3),
	(88,'Portland (VIC)',3),
	(89,'Port Lincoln (SA)',3),
	(90,'Port Macquarie (NSW)',3),
	(91,'Queanbeyan (NSW)',2),
	(92,'Renmark (SA)',3),
	(93,'Rockhampton (QLD)',3),
	(94,'Roma (QLD)',2),
	(95,'Seymour (VIC)',3),
	(96,'Shepparton (VIC)',3),
	(97,'Swan Hill (VIC)',3),
	(98,'Tamworth (NSW)',3),
	(99,'Tennant Creek (NT)',3),
	(100,'Toowoomba (QLD)',3),
	(101,'Townsville (QLD)',3),
	(102,'Tumut (NSW)',3),
	(103,'Warrnambool (VIC)',3),
	(104,'Other',4),
	(105,'Colac (VIC)',2),
	(106,'Albury (NSW)',3),
	(107,'Ayr (QLD)',3),
	(108,'Benalla (VIC)',3),
	(109,'Charters Towers',3),
	(110,'Gunnedah (NSW)',3),
	(111,'Sale (VIC)',3),
	(112,'Queenstown (TAS)',3);

/*!40000 ALTER TABLE `travel_allowance_location` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table travel_allowance_location_group
# ------------------------------------------------------------

CREATE TABLE `travel_allowance_location_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `travel_allowance_location_group` WRITE;
/*!40000 ALTER TABLE `travel_allowance_location_group` DISABLE KEYS */;

INSERT INTO `travel_allowance_location_group` (`id`, `name`)
VALUES
	(1,'Cities'),
	(2,'High cost country centres'),
	(3,'Tier 2 country centres'),
	(4,'Other country centres');

/*!40000 ALTER TABLE `travel_allowance_location_group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table travel_allowance_rate
# ------------------------------------------------------------

CREATE TABLE `travel_allowance_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `breakfast` decimal(19,4) NOT NULL,
  `lunch` decimal(19,4) NOT NULL,
  `dinner` decimal(19,4) NOT NULL,
  `incidentals` decimal(19,4) NOT NULL,
  `notes` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `travel_allowance_rate` WRITE;
/*!40000 ALTER TABLE `travel_allowance_rate` DISABLE KEYS */;

INSERT INTO `travel_allowance_rate` (`id`, `breakfast`, `lunch`, `dinner`, `incidentals`, `notes`)
VALUES
	(1,25.3500,28.5500,48.6500,18.7000,'Table 1, cities/high-cost'),
	(2,22.7000,25.9500,44.7500,18.7000,'Table 1, tier 2/other'),
	(3,27.6000,39.1000,54.7500,26.7500,'Table 2, cities/high-cost'),
	(4,25.3500,25.9500,50.5500,26.7500,'Table 2, tier 2/other'),
	(5,32.5500,46.1000,64.6000,26.7500,'Table 3, all');

/*!40000 ALTER TABLE `travel_allowance_rate` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table travel_allowance_rate_group
# ------------------------------------------------------------

CREATE TABLE `travel_allowance_rate_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locationGroup_id` int(11) DEFAULT NULL,
  `rate_id` int(11) DEFAULT NULL,
  `salaryGrade_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_590E647DE423B84F` (`salaryGrade_id`),
  KEY `IDX_590E647DBC999F9F` (`rate_id`),
  KEY `IDX_590E647D9D2F49C8` (`locationGroup_id`),
  CONSTRAINT `FK_590E647D9D2F49C8` FOREIGN KEY (`locationGroup_id`) REFERENCES `travel_allowance_location_group` (`id`),
  CONSTRAINT `FK_590E647DBC999F9F` FOREIGN KEY (`rate_id`) REFERENCES `travel_allowance_rate` (`id`),
  CONSTRAINT `FK_590E647DE423B84F` FOREIGN KEY (`salaryGrade_id`) REFERENCES `staff_salary_grade` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `travel_allowance_rate_group` WRITE;
/*!40000 ALTER TABLE `travel_allowance_rate_group` DISABLE KEYS */;

INSERT INTO `travel_allowance_rate_group` (`id`, `locationGroup_id`, `rate_id`, `salaryGrade_id`)
VALUES
	(1,1,1,1),
	(2,2,1,1),
	(3,1,3,2),
	(4,2,3,2),
	(5,1,5,3),
	(6,3,2,1),
	(7,3,4,2),
	(8,2,5,3),
	(9,3,5,3),
	(10,4,2,1),
	(11,4,4,2),
	(12,4,5,3);

/*!40000 ALTER TABLE `travel_allowance_rate_group` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
