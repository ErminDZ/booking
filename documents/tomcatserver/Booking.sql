CREATE DATABASE  IF NOT EXISTS `booking` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `booking`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: booking
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `fk_user_id` int DEFAULT NULL,
  `booking_date` datetime NOT NULL,
  `booking_status` tinyint(1) DEFAULT NULL,
  `fk_item_id` int DEFAULT NULL,
  `days` int DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `fk_booking_user_idx` (`fk_user_id`),
  KEY `fk_booking_items1_idx` (`fk_item_id`),
  CONSTRAINT `fk_booking_items1` FOREIGN KEY (`fk_item_id`) REFERENCES `items` (`item_id`),
  CONSTRAINT `fk_booking_user` FOREIGN KEY (`fk_user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (122,1,'2021-07-15 00:00:00',1,2,3),(123,1,'2021-07-15 00:00:00',1,5,3),(124,1,'2021-07-15 00:00:00',1,6,3),(125,3,'2021-07-15 00:00:00',1,7,1),(126,1,'2021-07-15 00:00:00',1,2,3),(127,3,'2021-07-15 00:00:00',1,12,3),(128,1,'2021-07-15 00:00:00',1,1,3),(129,3,'2021-07-15 00:00:00',1,9,2),(130,3,'2021-07-15 00:00:00',1,4,3),(131,1,'2021-07-15 00:00:00',0,18,2),(132,1,'2021-07-15 00:00:00',0,2,3);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `fk_room_number` int DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `fk_items_room1_idx` (`fk_room_number`),
  CONSTRAINT `fk_items_room1` FOREIGN KEY (`fk_room_number`) REFERENCES `room` (`room_number`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Oculus Quest 2','Medialab',212,'VR-headset'),(2,'Oculus Quest 2','Medialab',212,'VR-headset'),(3,'Oculus Quest 2','Medialab',212,'VR-headset'),(4,'Oculus Quest 2','Medialab',212,'VR-headset'),(5,'Oculus Quest 2','Medialab',212,'VR-headset'),(6,'Oculus Quest 2','Medialab',212,'VR-headset'),(7,'Oculus Quest 2','Medialab',212,'VR-headset'),(8,'Oculus Quest 2','Medialab',212,'VR-headset'),(9,'Arbejdsstation pc','Medialab',212,'Arbejdscomputer'),(10,'HP','Medialab',212,'Plakatprinter'),(11,'Creatlity CR-10 S5','Makerlab',210,'3D printer'),(12,'Creatlity CR-10 S5','Makerlab',210,'3D printer'),(13,'Creatlity CR-10 S5','Makerlab',210,'3D printer'),(14,'Creatlity CR-10 S5','Makerlab',210,'3D printer'),(15,'Creatlity CR-10 S5','Makerlab',210,'3D printer'),(16,'Creatlity CR-10 S5','Makerlab',210,'3D printer'),(17,'Creatlity CR-10 S5','Makerlab',210,'3D printer'),(18,'Creatlity CR-10 S5','Makerlab',210,'3D printer'),(19,'Canon EOS 90D','Medialab',212,'Digitalkamera'),(20,'Canon EOS 90D','Medialab',212,'Digitalkamera'),(21,'Canon EOS 90D','Medialab',212,'Digitalkamera'),(22,'Panasonic 4k','Medialab',212,'Digitalkamera'),(23,'Fotostudio','Medialab',212,'Fotostudio');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `room_number` int NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`room_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (210,'Markerlab'),(212,'Medialab');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `phone` int NOT NULL,
  `points` int NOT NULL DEFAULT '50',
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'ermin','1234',23564578,7,'student'),(2,'admin','1234',7581256,50,'admin'),(3,'per','1234',123456789,15,'student');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-16 16:40:59
