-- MySQL dump 10.13  Distrib 5.7.41, for Win64 (x86_64)
--
-- Host: localhost    Database: employee
-- ------------------------------------------------------
-- Server version	5.7.41-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'username',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'password',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='admin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employeeId` int(100) unsigned NOT NULL,
  `firstName` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'firstName',
  `lastName` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'lastName',
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'gender',
  `phoneNum` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'phoneNum',
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'position',
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'image',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'date',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='employee';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (5,1,'Lucy','Yang','Male','1234567890','Oakland','F:\\\\6200 java\\\\EmployeeManagementSystem-KingOfJFX\\\\employeeManagementSystem\\\\photos\\\\001.png','2023-04-19 19:33:19'),(6,2,'David','Li','Male','1234567896','Seattle','F:\\\\6200 java\\\\EmployeeManagementSystem-KingOfJFX\\\\employeeManagementSystem\\\\photos\\\\002.jpg','2023-04-17 05:42:23'),(7,3,'Ye','Wang','Female','1345623467','Online','F:\\\\6200 java\\\\EmployeeManagementSystem-KingOfJFX\\\\employeeManagementSystem\\\\photos\\\\005.jpg','2023-04-17 05:44:23'),(8,4,'Liyan','Zhang','Female','2345435635','Online','F:\\\\6200 java\\\\EmployeeManagementSystem-KingOfJFX\\\\employeeManagementSystem\\\\photos\\\\006.jpg','2023-04-18 20:19:43'),(9,5,'Yang','Yang','Male','7797463524','Boston','F:\\\\6200 java\\\\EmployeeManagementSystem-KingOfJFX\\\\employeeManagementSystem\\\\photos\\\\010.jpg','2023-04-18 20:20:15'),(10,6,'lian','Tian','Female','4637859403','Oakland','F:\\\\6200 java\\\\EmployeeManagementSystem-KingOfJFX\\\\employeeManagementSystem\\\\photos\\\\005.jpg','2023-04-18 20:21:00');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_info`
--

DROP TABLE IF EXISTS `employee_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employeeId` int(100) unsigned NOT NULL,
  `firstName` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'firstName',
  `lastName` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'lastName',
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'position',
  `salary` double NOT NULL COMMENT 'image',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'date',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='employee_info';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_info`
--

LOCK TABLES `employee_info` WRITE;
/*!40000 ALTER TABLE `employee_info` DISABLE KEYS */;
INSERT INTO `employee_info` VALUES (5,1,'Lucy','Yang','Oakland',5000,'2023-04-17 05:41:35'),(6,2,'David','Li','Seattle',8000,'2023-04-17 05:42:23'),(7,3,'Ye','Wang','Online',6000,'2023-04-17 05:44:02'),(8,4,'Liyan','Zhang','Online',8000,'2023-04-18 20:19:43'),(9,5,'Yang','Yang','Boston',0,'2023-04-18 20:20:15'),(10,6,'lian','Tian','Oakland',0,'2023-04-18 20:21:00');
/*!40000 ALTER TABLE `employee_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-22 11:34:23
