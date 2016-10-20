CREATE DATABASE  IF NOT EXISTS `agri_tadka` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `agri_tadka`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: agri_tadka
-- ------------------------------------------------------
-- Server version	5.6.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `main_menu_master`
--

DROP TABLE IF EXISTS `main_menu_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_menu_master` (
  `main_menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(250) NOT NULL,
  `menu_description` varchar(2000) DEFAULT NULL,
  `is_veg` char(1) NOT NULL COMMENT 'veg = 1, Non Veg = 0',
  `is_active` char(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`main_menu_id`),
  UNIQUE KEY `main_menu` (`menu_name`),
  KEY `created_main_menu_idx` (`created_by`),
  CONSTRAINT `created_main_menu` FOREIGN KEY (`created_by`) REFERENCES `user_master` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='''''';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_menu_master`
--

LOCK TABLES `main_menu_master` WRITE;
/*!40000 ALTER TABLE `main_menu_master` DISABLE KEYS */;
INSERT INTO `main_menu_master` VALUES (1,'EGG',NULL,'0','1',1,'2016-09-21 17:44:13'),(2,'ROTI KI BAHAR',NULL,'1','1',1,'2016-09-21 17:44:13'),(3,'BASAMATI KA KHAZANA (VEG)',NULL,'1','1',1,'2016-09-21 17:44:13'),(4,'BASAMATI KA KHAZANA (NON-VEG)',NULL,'0','1',1,'2016-09-21 17:44:13'),(5,'PAPAD',NULL,'1','1',1,'2016-09-21 17:44:13'),(6,'CHINESE STARTER (VEG)',NULL,'1','1',1,'2016-09-21 17:44:13'),(7,'CHINESE STARTER NON-VEG)',NULL,'0','1',1,'2016-09-21 17:44:13'),(8,'CHINESE GRAVY & DRY (VEG.)',NULL,'1','1',1,'2016-09-21 17:44:13'),(9,'CHINESE GRAVY & DRY (NON-VEG.)',NULL,'0','1',1,'2016-09-21 17:44:13'),(10,'CHINESE SEA FOOD',NULL,'0','1',1,'2016-09-21 17:44:13'),(11,'NOODLES & RICE (VEG.)',NULL,'1','1',1,'2016-09-21 17:44:13'),(12,'NOODLES & RICE (NON-VEG.)',NULL,'0','1',1,'2016-09-21 17:44:14');
/*!40000 ALTER TABLE `main_menu_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_sub_menu_map`
--

DROP TABLE IF EXISTS `main_sub_menu_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_sub_menu_map` (
  `main_sub_menu_map_id` int(11) NOT NULL AUTO_INCREMENT,
  `main_menu_id` int(11) NOT NULL,
  `sub_menu_id` int(11) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`main_sub_menu_map_id`),
  KEY `main_menu` (`main_menu_id`),
  KEY `sub_menu` (`sub_menu_id`),
  KEY `created_ms_map_idx` (`created_by`),
  CONSTRAINT `created_ms_map` FOREIGN KEY (`created_by`) REFERENCES `user_master` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ms_main_id` FOREIGN KEY (`main_menu_id`) REFERENCES `main_menu_master` (`main_menu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='''''';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_sub_menu_map`
--

LOCK TABLES `main_sub_menu_map` WRITE;
/*!40000 ALTER TABLE `main_sub_menu_map` DISABLE KEYS */;
INSERT INTO `main_sub_menu_map` VALUES (1,1,1,'1',1,'2016-09-21 17:59:35'),(2,1,2,'1',1,'2016-09-21 18:00:03'),(3,1,3,'1',1,'2016-09-21 18:00:04'),(4,1,4,'1',1,'2016-09-21 18:00:04'),(5,1,5,'1',1,'2016-09-21 18:00:04'),(6,1,6,'1',1,'2016-09-21 18:00:04'),(7,2,7,'1',1,'2016-09-21 18:00:04'),(8,2,8,'1',1,'2016-09-21 18:00:04'),(9,2,9,'1',1,'2016-09-21 18:00:04'),(10,2,10,'1',1,'2016-09-21 18:00:04'),(11,2,11,'1',1,'2016-09-21 18:00:04'),(12,2,12,'1',1,'2016-09-21 18:00:04'),(13,2,13,'1',1,'2016-09-21 18:00:04'),(14,2,14,'1',1,'2016-09-21 18:00:04'),(15,2,15,'1',1,'2016-09-21 18:00:04'),(16,2,16,'1',1,'2016-09-21 18:00:04'),(17,2,17,'1',1,'2016-09-21 18:00:05'),(18,2,18,'1',1,'2016-09-21 18:00:05'),(19,2,19,'1',1,'2016-09-21 18:00:05'),(20,2,20,'1',1,'2016-09-21 18:00:05'),(21,3,21,'1',1,'2016-09-21 18:00:05'),(22,3,22,'1',1,'2016-09-21 18:00:05'),(23,3,23,'1',1,'2016-09-21 18:00:05'),(24,3,24,'1',1,'2016-09-21 18:00:05'),(25,3,25,'1',1,'2016-09-21 18:00:05'),(26,3,26,'1',1,'2016-09-21 18:00:05'),(27,3,27,'1',1,'2016-09-21 18:00:05'),(28,3,28,'1',1,'2016-09-21 18:00:05'),(29,3,29,'1',1,'2016-09-21 18:00:05'),(30,3,30,'1',1,'2016-09-21 18:00:05'),(31,4,31,'1',1,'2016-09-21 18:00:05'),(32,4,32,'1',1,'2016-09-21 18:00:05'),(33,4,33,'1',1,'2016-09-21 18:00:05'),(34,4,34,'1',1,'2016-09-21 18:00:05'),(35,4,35,'1',1,'2016-09-21 18:00:06'),(36,4,36,'1',1,'2016-09-21 18:00:06'),(37,4,37,'1',1,'2016-09-21 18:00:06'),(38,4,38,'1',1,'2016-09-21 18:00:06'),(39,4,39,'1',1,'2016-09-21 18:00:06'),(40,4,40,'1',1,'2016-09-21 18:00:06'),(41,4,41,'1',1,'2016-09-21 18:00:06'),(42,4,42,'1',1,'2016-09-21 18:00:06'),(43,4,43,'1',1,'2016-09-21 18:00:06'),(44,5,44,'1',1,'2016-09-21 18:00:06'),(45,5,45,'1',1,'2016-09-21 18:00:06'),(46,5,46,'1',1,'2016-09-21 18:00:06'),(47,6,47,'1',1,'2016-09-21 18:00:06'),(48,6,48,'1',1,'2016-09-21 18:00:06'),(49,6,49,'1',1,'2016-09-21 18:00:06'),(50,6,50,'1',1,'2016-09-21 18:00:06'),(51,7,51,'1',1,'2016-09-21 18:00:06'),(52,7,52,'1',1,'2016-09-21 18:00:06'),(53,7,53,'1',1,'2016-09-21 18:00:07'),(54,8,54,'1',1,'2016-09-21 18:00:07'),(55,8,55,'1',1,'2016-09-21 18:00:07'),(56,8,56,'1',1,'2016-09-21 18:00:07'),(57,8,57,'1',1,'2016-09-21 18:00:07'),(58,8,58,'1',1,'2016-09-21 18:00:07'),(59,8,59,'1',1,'2016-09-21 18:00:07'),(60,8,60,'1',1,'2016-09-21 18:00:07'),(61,8,61,'1',1,'2016-09-21 18:00:07'),(62,8,62,'1',1,'2016-09-21 18:00:07'),(63,8,63,'1',1,'2016-09-21 18:00:08'),(64,8,64,'1',1,'2016-09-21 18:00:08'),(65,8,65,'1',1,'2016-09-21 18:00:08'),(66,8,66,'1',1,'2016-09-21 18:00:08'),(67,9,67,'1',1,'2016-09-21 18:00:08'),(68,9,68,'1',1,'2016-09-21 18:00:08'),(69,9,69,'1',1,'2016-09-21 18:00:08'),(70,9,70,'1',1,'2016-09-21 18:00:08'),(71,9,71,'1',1,'2016-09-21 18:00:08'),(72,9,72,'1',1,'2016-09-21 18:00:08'),(73,9,73,'1',1,'2016-09-21 18:00:08'),(74,10,74,'1',1,'2016-09-21 18:00:08'),(75,10,75,'1',1,'2016-09-21 18:00:08'),(76,10,76,'1',1,'2016-09-21 18:00:08'),(77,10,77,'1',1,'2016-09-21 18:00:08'),(78,10,78,'1',1,'2016-09-21 18:00:08'),(79,10,79,'1',1,'2016-09-21 18:00:08'),(80,10,80,'1',1,'2016-09-21 18:00:08'),(81,11,81,'1',1,'2016-09-21 18:00:09'),(82,11,82,'1',1,'2016-09-21 18:00:09'),(83,11,83,'1',1,'2016-09-21 18:00:09'),(84,11,84,'1',1,'2016-09-21 18:00:09'),(85,11,85,'1',1,'2016-09-21 18:00:09'),(86,11,86,'1',1,'2016-09-21 18:00:09'),(87,11,87,'1',1,'2016-09-21 18:00:09'),(88,12,88,'1',1,'2016-09-21 18:00:09'),(89,12,89,'1',1,'2016-09-21 18:00:09'),(90,12,90,'1',1,'2016-09-21 18:00:09'),(91,12,91,'1',1,'2016-09-21 18:00:09'),(92,12,92,'1',1,'2016-09-21 18:00:09'),(93,12,93,'1',1,'2016-09-21 18:00:09'),(94,12,94,'1',1,'2016-09-21 18:00:09'),(95,12,95,'1',1,'2016-09-21 18:00:09'),(96,12,96,'1',1,'2016-09-21 18:00:10'),(97,12,97,'1',1,'2016-09-21 18:00:10'),(98,12,98,'1',1,'2016-09-21 18:00:10'),(99,12,99,'1',1,'2016-09-21 18:00:10'),(100,12,100,'1',1,'2016-09-21 18:00:10');
/*!40000 ALTER TABLE `main_sub_menu_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_master`
--

DROP TABLE IF EXISTS `order_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_master` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `table_id` int(11) DEFAULT NULL,
  `waiter_id` int(11) DEFAULT NULL,
  `tax` varchar(10) DEFAULT NULL,
  `customer_name` varchar(250) DEFAULT NULL,
  `customer_address` varchar(2000) DEFAULT NULL,
  `mobile_number` varchar(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `discount_amt` float NOT NULL DEFAULT '0',
  `advance_amt` float NOT NULL DEFAULT '0',
  `is_active` char(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`),
  KEY `created_order_idx` (`created_by`),
  KEY `order_status_idx` (`status_id`),
  CONSTRAINT `created_order` FOREIGN KEY (`created_by`) REFERENCES `user_master` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `order_status` FOREIGN KEY (`status_id`) REFERENCES `status_master` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_master`
--

LOCK TABLES `order_master` WRITE;
/*!40000 ALTER TABLE `order_master` DISABLE KEYS */;
INSERT INTO `order_master` VALUES (1,1,NULL,NULL,'Kiran Kadav','B7-404, Silver Star CHS Ltd., Silver Part, Mira Bhayandar Road, Miraroad-401107','9773102909',3,0,0,'1',1,'2016-10-01 15:11:13'),(2,1,NULL,NULL,'Kiran Kadav1','B7-404, Silver Star CHS Ltd., Silver Part, Mira Bhayandar Road, Miraroad-401107','9773102909',3,0,0,'1',1,'2016-10-01 16:07:54'),(3,1,NULL,NULL,'Kiran Kadav2','B7-404, Silver Star CHS Ltd., Silver Part, Mira Bhayandar Road, Miraroad-401107','9773102909',3,0,0,'1',1,'2016-10-01 16:10:32'),(4,1,NULL,NULL,'Kiran Kadav3','B7-404, Silver Star CHS Ltd., Silver Part, Mira Bhayandar Road, Miraroad-401107','9773102909',3,0,0,'1',1,'2016-10-01 17:08:17'),(5,2,NULL,NULL,'Kiran Kadav4','B7-404, Silver Star CHS Ltd., Silver Part, Mira Bhayandar Road, Miraroad-401107','9773102909',3,0,0,'1',1,'2016-10-01 17:08:41'),(6,3,NULL,NULL,'Kiran Kadav5','B7-404, Silver Star CHS Ltd., Silver Part, Mira Bhayandar Road, Miraroad-401107','9773102909',3,0,0,'1',1,'2016-10-01 17:10:28'),(7,3,NULL,NULL,'Kiran Kadav6','B7-404, Silver Star CHS Ltd., Silver Part, Mira Bhayandar Road, Miraroad-401107','9773102909',3,0,0,'1',1,'2016-10-01 17:13:56'),(8,3,NULL,NULL,'Kiran Kadav7','B7-404, Silver Star CHS Ltd., Silver Part, Mira Bhayandar Road, Miraroad-401107','9773102909',3,0,0,'1',1,'2016-10-01 17:28:18'),(9,3,NULL,NULL,'Kiran Kadav8','B7-404, Silver Star CHS Ltd., Silver Part, Mira Bhayandar Road, Miraroad-401107','9773102909',3,0,0,'1',1,'2016-10-01 17:28:59'),(10,11,NULL,NULL,'Kiran Kadav9','B7-404, Silver Star CHS Ltd., Silver Part, Mira Bhayandar Road, Miraroad-401107','9773102909',1,0,0,'1',1,'2016-10-02 06:02:14'),(11,3,NULL,NULL,'Kiran Kadav10','B7-404, Silver Star CHS Ltd., Silver Part, Mira Bhayandar Road, Miraroad-401107','9773102909',4,0,0,'1',1,'2016-10-02 13:51:20'),(12,12,NULL,NULL,'Kiran Kadav11','B7-404, Silver Star CHS Ltd., Silver Part, Mira Bhayandar Road, Miraroad-401107','9773102909',1,0,0,'1',1,'2016-10-02 15:58:25'),(13,3,NULL,NULL,'Kiran Kadav12','B7-404, Silver Star CHS Ltd., Silver Part, Mira Bhayandar Road, Miraroad-401107','9773102909',4,0,0,'1',1,'2016-10-03 17:25:33'),(14,3,NULL,NULL,NULL,NULL,NULL,4,0,0,'1',1,'2016-10-03 18:42:18'),(15,3,NULL,NULL,NULL,NULL,NULL,4,0,0,'1',1,'2016-10-03 18:46:46'),(16,3,NULL,NULL,NULL,NULL,NULL,4,0,0,'1',1,'2016-10-03 18:48:30'),(17,13,NULL,NULL,NULL,NULL,NULL,4,0,0,'1',1,'2016-10-03 18:55:03'),(18,13,NULL,NULL,NULL,NULL,NULL,4,0,0,'1',1,'2016-10-03 18:56:07'),(19,13,NULL,NULL,NULL,NULL,NULL,4,0,0,'1',1,'2016-10-03 18:56:41'),(20,13,NULL,NULL,NULL,NULL,NULL,4,0,0,'1',1,'2016-10-03 18:59:57'),(21,13,NULL,NULL,NULL,NULL,NULL,3,0,0,'1',1,'2016-10-03 19:00:11'),(22,13,NULL,NULL,NULL,NULL,NULL,3,0,0,'1',1,'2016-10-03 19:01:44'),(23,13,NULL,NULL,NULL,NULL,NULL,3,0,0,'1',1,'2016-10-03 19:11:14'),(24,13,NULL,NULL,NULL,NULL,NULL,3,0,0,'1',1,'2016-10-03 19:14:15'),(25,13,NULL,NULL,NULL,NULL,NULL,3,0,0,'1',1,'2016-10-03 19:15:55'),(26,13,NULL,NULL,NULL,NULL,NULL,3,0,0,'1',1,'2016-10-03 19:16:41'),(27,13,NULL,NULL,NULL,NULL,NULL,3,0,0,'1',1,'2016-10-03 19:18:18'),(28,13,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-04 19:07:23'),(29,14,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-06 14:23:28'),(30,15,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-06 16:21:37'),(31,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-06 16:31:27'),(32,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-06 16:33:52'),(33,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-06 16:33:59'),(34,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-06 16:34:04'),(35,16,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-06 16:36:01'),(36,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-06 17:09:06'),(37,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-06 17:13:57'),(38,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-06 17:14:13'),(39,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-06 17:15:49'),(40,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-06 17:16:10'),(41,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-06 17:16:36'),(42,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-06 17:17:54'),(43,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-06 17:18:32'),(44,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-06 18:36:27'),(45,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-06 18:36:32'),(46,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-06 19:33:25'),(47,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-06 19:35:44'),(48,4,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-08 06:14:49'),(49,5,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-08 10:10:17'),(50,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-08 10:13:00'),(51,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-08 16:38:42'),(52,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-08 16:39:30'),(53,2,NULL,NULL,NULL,NULL,NULL,4,0,0,'1',1,'2016-10-08 19:36:18'),(54,2,NULL,NULL,'Kiran','KIran\'s Home','9773102909',4,0,0,'1',1,'2016-10-08 19:41:10'),(55,6,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-09 08:02:55'),(56,1,NULL,NULL,'Kiran','KIran\'s Home','9773102909',4,0,0,'1',1,'2016-10-09 11:48:08'),(57,23,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-09 12:19:04'),(58,7,NULL,NULL,NULL,NULL,NULL,3,0,0,'1',1,'2016-10-09 12:51:26'),(59,7,NULL,NULL,'Kiran Kadav2','B7-404, Silver Star CHS Ltd., Silver Part, Mira Bhayandar Road, Miraroad-401107','9773102909',1,0,0,'1',1,'2016-10-09 13:00:06'),(60,8,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-09 14:20:08'),(61,9,2,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-09 15:55:11'),(62,10,1,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-09 17:34:20'),(63,17,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-19 14:22:43'),(64,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-19 14:42:09'),(65,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-19 14:42:14'),(66,18,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-20 06:00:23'),(67,19,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-20 06:03:53'),(68,20,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-20 06:05:26'),(69,0,NULL,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-20 06:17:28'),(70,3,2,NULL,NULL,NULL,NULL,1,0,0,'1',1,'2016-10-20 07:27:25'),(71,1,NULL,NULL,NULL,NULL,NULL,1,12.5,10,'1',1,'2016-10-20 12:25:30'),(72,2,NULL,NULL,NULL,NULL,NULL,4,0,0,'1',1,'2016-10-20 12:39:57'),(73,2,1,NULL,'Kiran','KIran\'s Home','9773102909',1,120,10,'1',1,'2016-10-20 12:49:25');
/*!40000 ALTER TABLE `order_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_menu_map`
--

DROP TABLE IF EXISTS `order_menu_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_menu_map` (
  `order_menu_map_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `main_sub_menu_map_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` float NOT NULL DEFAULT '0',
  `status_id` int(11) DEFAULT NULL,
  `notes` varchar(2000) DEFAULT NULL,
  `is_active` char(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_price` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_menu_map_id`),
  KEY `order_ms_id_idx` (`main_sub_menu_map_id`),
  KEY `quantity` (`quantity`) USING BTREE,
  KEY `orderm_orderid_idx` (`order_id`),
  KEY `orderm_status_idx` (`status_id`),
  CONSTRAINT `order_ms_id` FOREIGN KEY (`main_sub_menu_map_id`) REFERENCES `main_sub_menu_map` (`main_sub_menu_map_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `orderm_orderid` FOREIGN KEY (`order_id`) REFERENCES `order_master` (`order_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `orderm_status` FOREIGN KEY (`status_id`) REFERENCES `status_master` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_menu_map`
--

LOCK TABLES `order_menu_map` WRITE;
/*!40000 ALTER TABLE `order_menu_map` DISABLE KEYS */;
INSERT INTO `order_menu_map` VALUES (1,1,33,1,170,3,'','1',1,'2016-10-01 15:31:10',170),(2,1,31,1,140,3,'','1',1,'2016-10-01 15:31:10',140),(3,1,34,1,160,3,'','1',1,'2016-10-01 15:31:10',160),(4,1,31,1,140,3,'','1',1,'2016-10-01 15:35:20',140),(5,3,34,1,160,3,'','1',1,'2016-10-01 16:10:44',160),(6,3,31,1,140,3,'','1',1,'2016-10-01 16:10:44',140),(7,3,41,1,100,3,'','1',1,'2016-10-01 16:10:44',100),(8,3,33,1,170,3,'','1',1,'2016-10-01 16:10:44',170),(9,6,34,1,160,3,'','1',1,'2016-10-01 17:10:42',160),(10,7,41,1,100,3,'','1',1,'2016-10-01 17:14:03',100),(11,11,32,8,160,4,'','1',1,'2016-10-02 13:51:35',1280),(12,12,32,1,170,3,'','0',1,'2016-10-02 15:58:42',170),(13,12,34,1,170,3,'','1',1,'2016-10-02 15:58:42',170),(14,13,32,1,160,4,'','0',1,'2016-10-03 17:26:06',160),(15,13,32,1,160,4,'','0',1,'2016-10-03 17:26:06',160),(16,13,32,1,160,4,'','0',1,'2016-10-03 17:26:06',160),(17,13,32,1,160,4,'','0',1,'2016-10-03 17:26:06',160),(18,13,35,1,170,4,'','0',1,'2016-10-03 17:26:06',170),(19,13,34,1,160,4,'','1',1,'2016-10-03 18:41:47',160),(20,15,40,1,100,4,'','0',1,'2016-10-03 18:46:55',100),(21,15,33,1,170,4,'','0',1,'2016-10-03 18:46:55',170),(22,15,34,1,160,4,'','0',1,'2016-10-03 18:46:55',160),(23,16,34,1,160,4,'','1',1,'2016-10-03 18:48:39',160),(24,16,33,1,170,4,'','0',1,'2016-10-03 18:48:39',170),(25,16,40,1,100,4,'','1',1,'2016-10-03 18:48:39',100),(26,16,45,1,10,4,'','1',1,'2016-10-03 18:51:44',10),(27,16,44,1,15,4,'','1',1,'2016-10-03 18:51:45',15),(28,16,46,1,35,4,'','1',1,'2016-10-03 18:51:45',35),(29,17,41,1,110,4,'','1',1,'2016-10-03 18:55:10',110),(30,17,33,1,180,4,'','1',1,'2016-10-03 18:55:10',180),(31,17,34,1,170,4,'','1',1,'2016-10-03 18:55:10',170),(32,18,34,1,170,4,'','1',1,'2016-10-03 18:56:14',170),(33,22,41,1,110,3,'','1',1,'2016-10-03 19:03:08',110),(34,22,33,1,180,3,'','1',1,'2016-10-03 19:03:09',180),(35,23,41,1,110,3,'','1',1,'2016-10-03 19:11:31',110),(36,23,33,1,180,3,'','1',1,'2016-10-03 19:11:31',180),(37,36,35,1,170,1,'','1',1,'2016-10-06 17:09:25',170),(38,36,34,1,160,1,'','1',1,'2016-10-06 17:09:25',160),(39,36,32,1,160,1,'','1',1,'2016-10-06 17:09:25',160),(40,49,31,1,140,1,'','0',1,'2016-10-08 10:10:53',140),(41,49,31,1,140,2,'','1',1,'2016-10-08 10:10:53',140),(42,49,31,1,140,2,'','1',1,'2016-10-08 10:10:53',140),(43,49,31,1,140,1,'','0',1,'2016-10-08 10:10:53',140),(44,49,31,1,140,1,'','0',1,'2016-10-08 10:10:53',140),(45,49,31,1,140,2,'','1',1,'2016-10-08 10:10:53',140),(46,49,31,1,140,1,'','0',1,'2016-10-08 10:10:53',140),(47,49,31,1,140,1,'','1',1,'2016-10-08 10:12:15',140),(48,49,31,3,140,1,'','1',1,'2016-10-08 10:12:15',420),(49,49,31,1,140,1,'','1',1,'2016-10-08 10:12:15',140),(50,49,31,1,140,1,'','1',1,'2016-10-08 10:12:15',140),(51,49,31,1,140,1,'','1',1,'2016-10-08 10:12:15',140),(52,49,31,1,140,1,'','1',1,'2016-10-08 10:12:15',140),(53,49,31,4,140,1,'','1',1,'2016-10-08 10:12:15',560),(54,49,31,1,140,1,'','1',1,'2016-10-08 10:12:15',140),(55,49,31,1,140,1,'','1',1,'2016-10-08 10:12:15',140),(56,49,31,1,140,1,'','1',1,'2016-10-08 10:12:15',140),(57,5,31,1,140,4,'','0',1,'2016-10-08 10:14:07',140),(58,5,31,1,140,4,'','0',1,'2016-10-08 10:14:07',140),(59,5,31,1,140,4,'','1',1,'2016-10-08 10:14:07',140),(60,5,31,1,140,4,'','1',1,'2016-10-08 10:14:07',140),(61,5,31,1,140,4,'','1',1,'2016-10-08 10:14:07',140),(62,5,31,1,140,4,'','1',1,'2016-10-08 10:14:07',140),(64,53,40,1,100,4,'','1',1,'2016-10-08 19:38:12',100),(66,54,35,1,170,4,'','1',1,'2016-10-08 20:34:06',170),(67,54,40,1,100,4,'','1',1,'2016-10-08 20:34:38',100),(68,54,37,1,190,4,'','1',1,'2016-10-09 07:59:36',190),(69,54,33,1,170,4,'','1',1,'2016-10-09 07:59:36',170),(70,56,3,1,60,4,'','1',1,'2016-10-09 11:53:53',60),(71,56,1,1,30,4,'','1',1,'2016-10-09 11:53:54',30),(72,56,5,1,50,4,'','1',1,'2016-10-09 11:53:54',50),(73,57,35,1,180,2,'','1',1,'2016-10-09 12:19:12',180),(74,57,33,1,180,1,'','1',1,'2016-10-09 12:19:12',180),(77,57,37,1,200,1,'','1',1,'2016-10-09 12:41:27',200),(79,58,28,1,90,3,'','1',1,'2016-10-09 12:53:03',90),(80,58,37,1,190,3,'','1',1,'2016-10-09 12:53:03',190),(81,58,29,1,90,3,'','1',1,'2016-10-09 12:53:04',90),(82,58,28,1,90,3,'','1',1,'2016-10-09 12:53:04',90),(83,58,49,1,120,3,'','1',1,'2016-10-09 12:56:18',120),(84,58,50,3,120,3,'','1',1,'2016-10-09 12:56:18',360),(85,58,28,1,90,3,'','1',1,'2016-10-09 12:56:18',90),(86,59,34,1,160,1,'','1',1,'2016-10-09 13:00:44',160),(87,59,35,1,170,1,'','1',1,'2016-10-09 13:15:47',170),(88,59,35,1,170,1,'','1',1,'2016-10-09 13:15:47',170),(89,59,35,1,170,1,'','1',1,'2016-10-09 13:15:47',170),(90,59,35,1,170,1,'','1',1,'2016-10-09 13:15:47',170),(91,59,35,1,170,1,'','1',1,'2016-10-09 13:15:47',170),(92,59,35,1,170,1,'','1',1,'2016-10-09 13:15:47',170),(93,59,35,1,170,1,'','1',1,'2016-10-09 13:15:47',170),(94,59,35,1,170,1,'','1',1,'2016-10-09 13:15:47',170),(95,59,35,1,170,1,'','1',1,'2016-10-09 13:15:47',170),(96,59,35,1,170,1,'','1',1,'2016-10-09 13:15:47',170),(97,59,35,1,170,1,'','1',1,'2016-10-09 13:15:47',170),(98,59,41,1,100,1,'','1',1,'2016-10-09 13:15:47',100),(100,59,35,1,170,1,'','1',1,'2016-10-09 13:15:47',170),(101,59,35,1,170,1,'','1',1,'2016-10-09 13:15:48',170),(102,59,35,1,170,1,'','1',1,'2016-10-09 13:15:48',170),(103,59,35,1,170,1,'','1',1,'2016-10-09 13:15:48',170),(104,61,35,1,170,1,'','1',1,'2016-10-09 16:04:40',170),(105,61,40,1,100,1,'','1',1,'2016-10-09 16:04:40',100),(106,61,34,1,160,1,'','1',1,'2016-10-09 16:04:40',160),(107,61,32,1,160,1,'','1',1,'2016-10-09 16:06:52',160),(108,61,21,1,60,1,'','1',1,'2016-10-09 16:09:02',60),(109,61,40,1,100,1,'','1',1,'2016-10-09 16:10:13',100),(110,61,37,1,190,1,'','1',1,'2016-10-09 16:10:28',190),(111,61,37,1,190,1,'','1',1,'2016-10-09 16:17:23',190),(112,61,41,1,100,1,'','1',1,'2016-10-09 16:23:16',100),(113,61,40,1,100,1,'','1',1,'2016-10-09 16:23:16',100),(114,61,42,1,200,1,'','1',1,'2016-10-09 16:23:16',200),(115,61,37,1,190,1,'','1',1,'2016-10-09 16:23:16',190),(116,61,37,1,190,1,'','1',1,'2016-10-09 16:23:16',190),(117,61,60,1,130,1,'','1',1,'2016-10-09 16:24:02',130),(118,61,59,1,120,1,'','1',1,'2016-10-09 16:24:16',120),(119,61,62,1,120,1,'','1',1,'2016-10-09 16:24:16',120),(120,61,59,1,120,1,'','1',1,'2016-10-09 16:24:16',120),(121,62,40,1,100,1,'','1',1,'2016-10-09 17:34:47',100),(122,62,35,1,170,1,'','1',1,'2016-10-09 17:34:47',170),(123,62,33,1,170,1,'','1',1,'2016-10-09 17:34:47',170),(124,62,41,1,100,1,'','1',1,'2016-10-09 17:34:47',100),(125,62,37,1,190,1,'','1',1,'2016-10-09 17:34:48',190),(126,62,35,1,170,1,'','1',1,'2016-10-09 18:03:59',170),(127,62,33,1,170,1,'','1',1,'2016-10-09 18:04:00',170),(128,67,41,1,110,1,'','1',1,'2016-10-20 06:04:05',110),(129,67,40,1,110,1,'','1',1,'2016-10-20 06:04:12',110),(130,67,33,1,180,1,'','1',1,'2016-10-20 06:04:17',180),(131,70,33,1,170,1,'','1',1,'2016-10-20 07:27:26',170),(132,70,34,1,160,1,'','1',1,'2016-10-20 07:27:26',160),(133,70,41,1,100,1,'','1',1,'2016-10-20 07:27:26',100),(134,70,34,1,160,1,'','1',1,'2016-10-20 07:38:51',160),(135,72,35,1,170,4,'','1',1,'2016-10-20 12:40:08',170),(136,72,34,1,160,4,'','1',1,'2016-10-20 12:40:08',160),(137,72,32,1,160,4,'','1',1,'2016-10-20 12:40:08',160),(142,73,33,1,170,1,'','1',1,'2016-10-20 15:08:37',170),(143,73,40,1,100,1,'','1',1,'2016-10-20 15:08:37',100),(144,73,40,1,100,1,'','1',1,'2016-10-20 15:08:37',100),(145,73,40,1,100,1,'','1',1,'2016-10-20 15:08:37',100),(146,73,40,1,100,1,'','1',1,'2016-10-20 15:08:37',100),(147,73,40,1,100,1,'','1',1,'2016-10-20 15:08:37',100),(148,73,40,1,100,1,'','1',1,'2016-10-20 15:08:37',100),(149,73,40,1,100,1,'','1',1,'2016-10-20 15:08:37',100),(150,73,40,1,100,1,'','1',1,'2016-10-20 15:08:37',100),(151,73,40,1,100,1,'','1',1,'2016-10-20 15:08:37',100),(152,73,40,1,100,1,'','1',1,'2016-10-20 15:08:37',100),(153,73,40,1,100,1,'','1',1,'2016-10-20 15:08:37',100),(154,73,40,1,100,1,'','1',1,'2016-10-20 15:08:37',100),(155,73,40,1,100,1,'','1',1,'2016-10-20 15:08:37',100),(156,73,40,1,100,1,'','1',1,'2016-10-20 15:08:38',100),(157,73,40,1,100,1,'','1',1,'2016-10-20 15:08:38',100),(158,73,40,1,100,1,'','1',1,'2016-10-20 15:08:38',100),(159,73,40,1,100,1,'','1',1,'2016-10-20 15:08:38',100),(160,73,40,1,100,1,'','1',1,'2016-10-20 15:08:38',100),(161,73,40,1,100,1,'','1',1,'2016-10-20 15:08:38',100),(162,73,34,1,160,1,'','1',1,'2016-10-20 15:08:38',160),(163,73,35,1,170,1,'','1',1,'2016-10-20 15:08:38',170),(164,73,40,1,100,1,'','1',1,'2016-10-20 15:08:38',100),(165,73,40,1,100,1,'','1',1,'2016-10-20 15:08:38',100),(166,73,40,1,100,1,'','1',1,'2016-10-20 15:08:38',100),(167,73,40,1,100,1,'','1',1,'2016-10-20 15:08:38',100),(168,73,40,1,100,1,'','1',1,'2016-10-20 15:08:38',100),(169,73,40,1,100,1,'','1',1,'2016-10-20 15:08:38',100),(170,73,40,1,100,1,'','1',1,'2016-10-20 15:08:38',100),(171,73,40,1,100,1,'','1',1,'2016-10-20 15:08:38',100),(172,73,40,1,100,1,'','1',1,'2016-10-20 15:08:38',100),(173,73,40,1,100,1,'','1',1,'2016-10-20 15:08:38',100),(174,73,40,1,100,1,'','1',1,'2016-10-20 15:08:38',100),(175,73,40,1,100,1,'','1',1,'2016-10-20 15:08:38',100);
/*!40000 ALTER TABLE `order_menu_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_master`
--

DROP TABLE IF EXISTS `status_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_master` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_code` varchar(25) NOT NULL,
  `status_name` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_master`
--

LOCK TABLES `status_master` WRITE;
/*!40000 ALTER TABLE `status_master` DISABLE KEYS */;
INSERT INTO `status_master` VALUES (1,'INQUEUE','In Queue','1',1,'2016-09-24 12:28:14'),(2,'COOKING','Cooking','1',1,'2016-09-24 12:28:14'),(3,'COMPLETED','Completed','1',1,'2016-09-24 12:28:14'),(4,'CANCELLED','Cancelled','1',1,'2016-09-24 12:28:14');
/*!40000 ALTER TABLE `status_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_menu_master`
--

DROP TABLE IF EXISTS `sub_menu_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_menu_master` (
  `sub_menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(250) NOT NULL,
  `menu_description` varchar(2000) DEFAULT NULL,
  `is_veg` char(1) NOT NULL COMMENT '1 = veg, 0 = non Veg',
  `non_ac_unit_price` float NOT NULL DEFAULT '0',
  `ac_unit_price` float NOT NULL DEFAULT '0',
  `is_active` char(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sub_menu_id`),
  KEY `fmenu_user_id_idx` (`created_by`),
  CONSTRAINT `fmenu_user_id` FOREIGN KEY (`created_by`) REFERENCES `user_master` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_menu_master`
--

LOCK TABLES `sub_menu_master` WRITE;
/*!40000 ALTER TABLE `sub_menu_master` DISABLE KEYS */;
INSERT INTO `sub_menu_master` VALUES (1,'Boiled Egg Fry',NULL,'0',0,0,'1',1,'2016-09-21 17:44:50'),(2,'Boiled Egg',NULL,'0',25,35,'1',1,'2016-09-21 17:44:51'),(3,'Egg Masala',NULL,'0',60,70,'1',1,'2016-09-21 17:44:51'),(4,'Egg Omlet',NULL,'0',40,50,'1',1,'2016-09-21 17:44:51'),(5,'Egg Bhurji',NULL,'0',50,60,'1',1,'2016-09-21 17:44:51'),(6,'Half Fry',NULL,'0',30,40,'1',1,'2016-09-21 17:44:51'),(7,'Roti',NULL,'1',12,22,'1',1,'2016-09-21 17:44:51'),(8,'Butter Roti ',NULL,'1',15,25,'1',1,'2016-09-21 17:44:51'),(9,'Missi Roti',NULL,'1',30,40,'1',1,'2016-09-21 17:44:51'),(10,'Missi Butter Roti',NULL,'1',40,50,'1',1,'2016-09-21 17:44:51'),(11,'Nan',NULL,'1',20,30,'1',1,'2016-09-21 17:44:51'),(12,'Butter Nan',NULL,'1',25,35,'1',1,'2016-09-21 17:44:51'),(13,'Garlic Nan',NULL,'1',30,40,'1',1,'2016-09-21 17:44:51'),(14,'Butter Garlic Nan',NULL,'1',35,45,'1',1,'2016-09-21 17:44:52'),(15,'Chees Nan',NULL,'1',30,40,'1',1,'2016-09-21 17:44:52'),(16,'Kulcha',NULL,'1',25,35,'1',1,'2016-09-21 17:44:52'),(17,'Butter Kulcha',NULL,'1',30,40,'1',1,'2016-09-21 17:44:52'),(18,'Paratha',NULL,'1',40,50,'1',1,'2016-09-21 17:44:52'),(19,'Stuffed Paratha',NULL,'1',50,60,'1',1,'2016-09-21 17:44:52'),(20,'Butter Paratha',NULL,'1',45,55,'1',1,'2016-09-21 17:44:52'),(21,'Steam Rice',NULL,'1',60,70,'1',1,'2016-09-21 17:44:52'),(22,'Jira Rice',NULL,'1',80,90,'1',1,'2016-09-21 17:44:52'),(23,'Dahi Bhath',NULL,'1',80,90,'1',1,'2016-09-21 17:44:52'),(24,'Dal Khichadi',NULL,'1',100,110,'1',1,'2016-09-21 17:44:53'),(25,'Palak Khichadi',NULL,'1',100,110,'1',1,'2016-09-21 17:44:53'),(26,'Veg. Dum Biryani',NULL,'1',100,110,'1',1,'2016-09-21 17:44:53'),(27,'Veg. Hyderabadi Biryani',NULL,'1',110,120,'1',1,'2016-09-21 17:44:53'),(28,'Veg. Biryani',NULL,'1',90,100,'1',1,'2016-09-21 17:44:53'),(29,'Veg. Pulao',NULL,'1',90,100,'1',1,'2016-09-21 17:44:53'),(30,'Kashmiri Pulao',NULL,'1',120,130,'1',1,'2016-09-21 17:44:53'),(31,'Chicken Biryani',NULL,'0',140,150,'1',1,'2016-09-21 17:44:53'),(32,'Chicken Dum Biryani',NULL,'0',160,170,'1',1,'2016-09-21 17:44:53'),(33,'Chicken Tikka Biryani',NULL,'0',170,180,'1',1,'2016-09-21 17:44:53'),(34,'Chicken Hyderabadi Biryani',NULL,'0',160,170,'1',1,'2016-09-21 17:44:53'),(35,'Chicken Pulao',NULL,'0',170,180,'1',1,'2016-09-21 17:44:53'),(36,'Mutton Pulao',NULL,'0',200,210,'1',1,'2016-09-21 17:44:54'),(37,'Mutton Biryani',NULL,'0',190,200,'1',1,'2016-09-21 17:44:54'),(38,'Mutton Dum Biryani',NULL,'0',200,210,'1',1,'2016-09-21 17:44:54'),(39,'Mutton Hyderabadi Biryani',NULL,'0',190,200,'1',1,'2016-09-21 17:44:54'),(40,'Egg Pulao',NULL,'0',100,110,'1',1,'2016-09-21 17:44:54'),(41,'Egg Biryani',NULL,'0',100,110,'1',1,'2016-09-21 17:44:54'),(42,'Kheema Pulao',NULL,'0',200,210,'1',1,'2016-09-21 17:44:54'),(43,'Prawns Biryani',NULL,'0',220,230,'1',1,'2016-09-21 17:44:54'),(44,'Papad Fry',NULL,'1',15,25,'1',1,'2016-09-21 17:44:54'),(45,'Papad Roasted',NULL,'1',10,20,'1',1,'2016-09-21 17:44:55'),(46,'Papad Masala',NULL,'1',35,45,'1',1,'2016-09-21 17:44:55'),(47,'Veg. Crispy',NULL,'1',100,110,'1',1,'2016-09-21 17:44:55'),(48,'Veg. Lolly Pop',NULL,'1',100,110,'1',1,'2016-09-21 17:44:55'),(49,'Veg. Sechzwan Finger',NULL,'1',120,130,'1',1,'2016-09-21 17:44:55'),(50,'Veg. Spring Roll',NULL,'1',120,130,'1',1,'2016-09-21 17:44:55'),(51,'Chicken Satey',NULL,'0',130,140,'1',1,'2016-09-21 17:44:55'),(52,'Chicken Lolly Pop',NULL,'0',130,140,'1',1,'2016-09-21 17:44:55'),(53,'Chicken Spring Roll',NULL,'0',140,150,'1',1,'2016-09-21 17:44:55'),(54,'Veg. Manchurian / Chilly',NULL,'1',100,110,'1',1,'2016-09-21 17:44:55'),(55,'Veg. Garlic / Ginger',NULL,'1',110,120,'1',1,'2016-09-21 17:44:56'),(56,'Veg. In Hot Garlic Souce',NULL,'1',120,130,'1',1,'2016-09-21 17:44:56'),(57,'Veg. Sechzwan',NULL,'1',120,130,'1',1,'2016-09-21 17:44:56'),(58,'Paneer Manchurian / Chilly',NULL,'1',120,130,'1',1,'2016-09-21 17:44:56'),(59,'Paneer Ginger / Garlic',NULL,'1',120,130,'1',1,'2016-09-21 17:44:56'),(60,'Paneer In Hot Garlic Sauce',NULL,'1',130,140,'1',1,'2016-09-21 17:44:56'),(61,'Paneer Sechzwan',NULL,'1',140,150,'1',1,'2016-09-21 17:44:56'),(62,'Mushroom Sechzwan',NULL,'1',120,130,'1',1,'2016-09-21 17:44:56'),(63,'Mushroom Garlic / Ginger',NULL,'1',120,130,'1',1,'2016-09-21 17:44:56'),(64,'Mushroom Manchurian / Chilly',NULL,'1',110,120,'1',1,'2016-09-21 17:44:56'),(65,'Mushroom In Hot Garlic Sauce',NULL,'1',130,140,'1',1,'2016-09-21 17:44:56'),(66,'Baby Corn Manchurian / Chilly',NULL,'1',120,130,'1',1,'2016-09-21 17:44:57'),(67,'Chicken Chilly',NULL,'0',120,130,'1',1,'2016-09-21 17:44:57'),(68,'Chicken Manchurian',NULL,'0',120,130,'1',1,'2016-09-21 17:44:57'),(69,'Chicken In Hot Garlic Sauce',NULL,'0',140,150,'1',1,'2016-09-21 17:44:57'),(70,'Chicken Chilly With Bone',NULL,'0',150,160,'1',1,'2016-09-21 17:44:57'),(71,'Chicken Ginger Garlic',NULL,'0',140,150,'1',1,'2016-09-21 17:44:57'),(72,'Chicken Sechzwan',NULL,'0',140,150,'1',1,'2016-09-21 17:44:57'),(73,'Chicken65',NULL,'0',140,150,'1',1,'2016-09-21 17:44:57'),(74,'Fish Chilly',NULL,'0',180,190,'1',1,'2016-09-21 17:44:57'),(75,'Prawns Manchurian / Chilly',NULL,'0',180,190,'1',1,'2016-09-21 17:44:57'),(76,'Prawns In Hot Garlic Sauce',NULL,'0',180,190,'1',1,'2016-09-21 17:44:57'),(77,'Prawns Ginger / Garlic',NULL,'0',180,190,'1',1,'2016-09-21 17:44:58'),(78,'Prawns Sechzwan',NULL,'0',190,200,'1',1,'2016-09-21 17:44:58'),(79,'Prawns Salt & Pepper',NULL,'0',190,200,'1',1,'2016-09-21 17:44:58'),(80,'Bombil Chilly',NULL,'0',100,110,'1',1,'2016-09-21 17:44:58'),(81,'Veg. Fried Rice',NULL,'1',80,90,'1',1,'2016-09-21 17:44:58'),(82,'Veg. Noodles',NULL,'1',80,90,'1',1,'2016-09-21 17:44:58'),(83,'Veg. Sechzwan Fried Rice',NULL,'1',90,100,'1',1,'2016-09-21 17:44:58'),(84,'Veg. Sechzwan Noodles',NULL,'1',90,100,'1',1,'2016-09-21 17:44:58'),(85,'Veg. Tripple Fried Rice',NULL,'1',120,130,'1',1,'2016-09-21 17:44:58'),(86,'Veg. American Choupsy',NULL,'1',120,130,'1',1,'2016-09-21 17:44:58'),(87,'Mushroom Fried Rice',NULL,'1',90,100,'1',1,'2016-09-21 17:44:58'),(88,'Chicken Fried Rice',NULL,'0',100,110,'1',1,'2016-09-21 17:44:58'),(89,'Chicken Noodles',NULL,'0',100,110,'1',1,'2016-09-21 17:44:59'),(90,'Chicken Sechzwan Fried Rice',NULL,'0',120,130,'1',1,'2016-09-21 17:44:59'),(91,'Chicken Sechzwan Noodles',NULL,'0',120,130,'1',1,'2016-09-21 17:44:59'),(92,'Chicken Triple Fried Rice',NULL,'0',140,150,'1',1,'2016-09-21 17:44:59'),(93,'Chicken Hong Kong Fried Rice',NULL,'0',120,130,'1',1,'2016-09-21 17:44:59'),(94,'Chicken Singapore Fried Rice',NULL,'0',120,130,'1',1,'2016-09-21 17:44:59'),(95,'Egg Fried Rice',NULL,'0',100,110,'1',1,'2016-09-21 17:44:59'),(96,'Prawns Fried Rice',NULL,'0',170,180,'1',1,'2016-09-21 17:44:59'),(97,'Prawns Noodles',NULL,'0',170,180,'1',1,'2016-09-21 17:45:00'),(98,'Prawns Sechzwan Fried Rice',NULL,'0',180,190,'1',1,'2016-09-21 17:45:00'),(99,'Prawns Sechzwan Noodles',NULL,'0',180,190,'1',1,'2016-09-21 17:45:00'),(100,'Chicken American Choupsy',NULL,'0',120,130,'1',1,'2016-09-21 17:45:00');
/*!40000 ALTER TABLE `sub_menu_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_master`
--

DROP TABLE IF EXISTS `table_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_master` (
  `table_id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(45) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`table_id`),
  KEY `table_created_by_idx` (`created_by`),
  CONSTRAINT `table_created_by` FOREIGN KEY (`created_by`) REFERENCES `user_master` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_master`
--

LOCK TABLES `table_master` WRITE;
/*!40000 ALTER TABLE `table_master` DISABLE KEYS */;
INSERT INTO `table_master` VALUES (1,'Table 1','1',1,'2016-09-17 19:07:19'),(2,'Table 2','1',1,'2016-09-17 19:07:19'),(3,'Table 3','1',1,'2016-09-17 19:07:19'),(4,'Table 4','1',1,'2016-09-17 19:07:19'),(5,'Table 5','1',1,'2016-09-17 19:07:19'),(6,'Table 6','1',1,'2016-09-17 19:07:19'),(7,'Table 7','1',1,'2016-09-17 19:07:19'),(8,'Table 8','1',1,'2016-09-17 19:07:19'),(9,'Table 9','1',1,'2016-09-17 19:07:19'),(10,'Table 10','1',1,'2016-09-17 19:07:19'),(11,'Table 11','1',1,'2016-09-17 21:03:54'),(12,'Table 31','1',1,'2016-10-01 13:11:25');
/*!40000 ALTER TABLE `table_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_type_master`
--

DROP TABLE IF EXISTS `table_type_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_type_master` (
  `table_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `table_type` varchar(200) DEFAULT NULL,
  `is_active` char(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`table_type_id`),
  KEY `created_table_type_id_idx` (`created_by`),
  CONSTRAINT `created_table_type_id` FOREIGN KEY (`created_by`) REFERENCES `user_master` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_type_master`
--

LOCK TABLES `table_type_master` WRITE;
/*!40000 ALTER TABLE `table_type_master` DISABLE KEYS */;
INSERT INTO `table_type_master` VALUES (1,'Non A/C','1',1,'2016-09-17 19:05:31'),(2,'Garden with A/A','1',1,'2016-09-17 19:05:31');
/*!40000 ALTER TABLE `table_type_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_type_name_map`
--

DROP TABLE IF EXISTS `table_type_name_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_type_name_map` (
  `table_type_name_map_id` int(11) NOT NULL AUTO_INCREMENT,
  `table_type_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `price_type` varchar(45) NOT NULL DEFAULT 'NON-AC',
  `is_active` char(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`table_type_name_map_id`),
  KEY `table_type_idx` (`table_type_id`),
  KEY `tbl_name_idx` (`table_id`),
  KEY `tbl_created_idx` (`created_by`),
  CONSTRAINT `table_type` FOREIGN KEY (`table_type_id`) REFERENCES `table_type_master` (`table_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tbl_created` FOREIGN KEY (`created_by`) REFERENCES `user_master` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tbl_name` FOREIGN KEY (`table_id`) REFERENCES `table_master` (`table_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_type_name_map`
--

LOCK TABLES `table_type_name_map` WRITE;
/*!40000 ALTER TABLE `table_type_name_map` DISABLE KEYS */;
INSERT INTO `table_type_name_map` VALUES (1,1,1,'non_ac','1',1,'2016-09-17 19:13:31'),(2,1,2,'non_ac','1',1,'2016-09-17 19:13:31'),(3,1,3,'non_ac','1',1,'2016-09-17 19:13:31'),(4,1,4,'non_ac','1',1,'2016-09-17 19:13:31'),(5,1,5,'non_ac','1',1,'2016-09-17 19:13:31'),(6,1,6,'non_ac','1',1,'2016-09-17 19:13:31'),(7,1,7,'non_ac','1',1,'2016-09-17 19:13:31'),(8,1,8,'non_ac','1',1,'2016-09-17 19:13:31'),(9,1,9,'non_ac','1',1,'2016-09-17 19:13:31'),(10,1,10,'non_ac','1',1,'2016-09-17 19:13:31'),(11,2,1,'ac','1',1,'2016-09-17 19:13:31'),(12,2,2,'ac','1',1,'2016-09-17 19:13:31'),(13,2,3,'ac','1',1,'2016-09-17 19:13:31'),(14,2,4,'ac','1',1,'2016-09-17 19:13:31'),(15,2,5,'ac','1',1,'2016-09-17 19:13:31'),(16,2,6,'ac','1',1,'2016-09-17 19:13:31'),(17,2,7,'ac','1',1,'2016-09-17 19:13:31'),(18,2,8,'ac','1',1,'2016-09-17 19:13:31'),(19,2,9,'ac','1',1,'2016-09-17 19:13:31'),(20,2,10,'ac','1',1,'2016-09-17 19:13:31'),(22,2,11,'ac','1',1,'2016-09-17 21:04:11'),(23,1,12,'ac','1',1,'2016-10-01 13:11:26'),(24,2,12,'non-ac','0',1,'2016-10-01 13:11:26');
/*!40000 ALTER TABLE `table_type_name_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_master`
--

DROP TABLE IF EXISTS `user_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_master` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `new_password` varchar(45) NOT NULL DEFAULT '',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_master`
--

LOCK TABLES `user_master` WRITE;
/*!40000 ALTER TABLE `user_master` DISABLE KEYS */;
INSERT INTO `user_master` VALUES (1,'admin',NULL,'admin','kadav.kiran@gmail.com','admin','Kiran@123','',1,NULL,'2016-09-17 16:19:12');
/*!40000 ALTER TABLE `user_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waiter_master`
--

DROP TABLE IF EXISTS `waiter_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waiter_master` (
  `waiter_id` int(11) NOT NULL AUTO_INCREMENT,
  `wfirst_name` varchar(250) NOT NULL,
  `wlast_name` varchar(250) NOT NULL,
  `wmiddle_name` varchar(250) DEFAULT NULL,
  `email_address` varchar(250) DEFAULT NULL,
  `mobile_number` varchar(11) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`waiter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waiter_master`
--

LOCK TABLES `waiter_master` WRITE;
/*!40000 ALTER TABLE `waiter_master` DISABLE KEYS */;
INSERT INTO `waiter_master` VALUES (1,'kiran','kadav',NULL,NULL,'9773102909','1',1,'2016-10-09 15:06:53'),(2,'spruha','kadav',NULL,NULL,'9773102909','1',1,'2016-10-09 15:06:53');
/*!40000 ALTER TABLE `waiter_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'agri_tadka'
--

--
-- Dumping routines for database 'agri_tadka'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-20 23:52:16
