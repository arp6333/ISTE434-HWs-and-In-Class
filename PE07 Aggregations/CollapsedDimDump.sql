-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: pe_earnings
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `collapseddim`
--

DROP TABLE IF EXISTS `collapseddim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collapseddim` (
  `customerKey` int NOT NULL,
  `regionName` varchar(30) DEFAULT NULL,
  `dateKey` int NOT NULL,
  `earnings` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`customerKey`,`dateKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collapseddim`
--

LOCK TABLES `collapseddim` WRITE;
/*!40000 ALTER TABLE `collapseddim` DISABLE KEYS */;
INSERT INTO `collapseddim` VALUES (1,'Eastern',4,51),(1,'Eastern',6,229),(1,'Eastern',1263,51),(1,'Eastern',1346,229),(2,'Eastern',2,211),(2,'Eastern',4,66),(2,'Eastern',6,21),(2,'Eastern',1164,211),(2,'Eastern',1263,66),(2,'Eastern',1346,21),(3,'Eastern',2,181),(3,'Eastern',7,148),(3,'Eastern',1164,181),(3,'Eastern',1388,148),(4,'Eastern',3,116),(4,'Eastern',6,385),(4,'Eastern',1193,116),(4,'Eastern',1346,385),(5,'Eastern',1,23),(5,'Eastern',2,306),(5,'Eastern',1161,23),(5,'Eastern',1164,306),(6,'Eastern',1,230),(6,'Eastern',2,177),(6,'Eastern',6,268),(6,'Eastern',7,190),(6,'Eastern',1161,230),(6,'Eastern',1164,177),(6,'Eastern',1346,268),(6,'Eastern',1388,190),(7,'Eastern',3,114),(7,'Eastern',1193,114),(8,'Eastern',7,295),(8,'Eastern',1388,295),(9,'Eastern',1,369),(9,'Eastern',4,70),(9,'Eastern',6,141),(9,'Eastern',1161,369),(9,'Eastern',1263,70),(9,'Eastern',1346,141),(10,'Eastern',1,370),(10,'Eastern',6,345),(10,'Eastern',1161,370),(10,'Eastern',1346,345),(11,'Eastern',4,332),(11,'Eastern',5,338),(11,'Eastern',1263,332),(11,'Eastern',1315,338),(12,'Eastern',4,43),(12,'Eastern',5,302),(12,'Eastern',1263,43),(12,'Eastern',1315,302),(13,'Central',1,323),(13,'Central',7,348),(13,'Central',1161,323),(13,'Central',1388,348),(14,'Central',1,343),(14,'Central',2,472),(14,'Central',5,96),(14,'Central',1161,343),(14,'Central',1164,472),(14,'Central',1315,96),(15,'Central',2,89),(15,'Central',7,63),(15,'Central',1164,89),(15,'Central',1388,63),(16,'Central',2,46),(16,'Central',4,528),(16,'Central',6,387),(16,'Central',1164,46),(16,'Central',1263,528),(16,'Central',1346,387),(17,'Central',2,635),(17,'Central',6,343),(17,'Central',1164,635),(17,'Central',1346,343),(18,'Central',1,329),(18,'Central',2,777),(18,'Central',3,245),(18,'Central',7,268),(18,'Central',1161,329),(18,'Central',1164,777),(18,'Central',1193,245),(18,'Central',1388,268),(19,'Central',1,550),(19,'Central',2,528),(19,'Central',3,347),(19,'Central',4,96),(19,'Central',5,118),(19,'Central',1161,550),(19,'Central',1164,528),(19,'Central',1193,347),(19,'Central',1263,96),(19,'Central',1315,118),(20,'Central',2,269),(20,'Central',3,367),(20,'Central',4,328),(20,'Central',1164,269),(20,'Central',1193,367),(20,'Central',1263,328),(21,'Central',1,191),(21,'Central',2,98),(21,'Central',4,186),(21,'Central',1161,191),(21,'Central',1164,98),(21,'Central',1263,186),(22,'Central',2,329),(22,'Central',1164,329),(23,'Central',1,114),(23,'Central',3,372),(23,'Central',4,229),(23,'Central',7,373),(23,'Central',1161,114),(23,'Central',1193,372),(23,'Central',1263,229),(23,'Central',1388,373),(24,'Central',1,363),(24,'Central',2,728),(24,'Central',6,121),(24,'Central',7,323),(24,'Central',1161,363),(24,'Central',1164,728),(24,'Central',1346,121),(24,'Central',1388,323),(25,'Western',1,345),(25,'Western',2,260),(25,'Western',4,315),(25,'Western',1161,345),(25,'Western',1164,260),(25,'Western',1263,315),(26,'Western',1,245),(26,'Western',2,522),(26,'Western',5,27),(26,'Western',1161,245),(26,'Western',1164,522),(26,'Western',1315,27),(27,'Western',2,754),(27,'Western',3,273),(27,'Western',4,337),(27,'Western',5,265),(27,'Western',6,258),(27,'Western',1164,754),(27,'Western',1193,273),(27,'Western',1263,337),(27,'Western',1315,265),(27,'Western',1346,258),(28,'Western',7,383),(28,'Western',1388,383),(29,'Western',1,325),(29,'Western',2,797),(29,'Western',3,299),(29,'Western',5,244),(29,'Western',1161,325),(29,'Western',1164,797),(29,'Western',1193,299),(29,'Western',1315,244),(30,'Western',1263,51),(30,'Western',1346,229);
/*!40000 ALTER TABLE `collapseddim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'pe_earnings'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-07 14:29:27
