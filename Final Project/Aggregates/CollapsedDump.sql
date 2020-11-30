-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: SalesOrders_Collapse
-- ------------------------------------------------------
-- Server version	5.7.27

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
-- Table structure for table `invoice_Fact`
--

DROP TABLE IF EXISTS `invoice_Fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_Fact` (
  `salesBy` varchar(45) CHARACTER SET utf8 NOT NULL,
  `productID_sk` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `price1` double DEFAULT NULL,
  `productName` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`salesBy`,`productID_sk`),
  KEY `productID_sk_idx` (`productID_sk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_Fact`
--

LOCK TABLES `invoice_Fact` WRITE;
/*!40000 ALTER TABLE `invoice_Fact` DISABLE KEYS */;
INSERT INTO `invoice_Fact` VALUES ('TPCE',36,29,461.3,'Bomber Photo Equip'),('PEC',5,105,232.3,'Flake Photo Equip.'),('PEC',6,190,566,'Denigrating Polishing Equip.'),('PEC',8,43,289.2,'Chalmers Polishing Equip.'),('PEC',9,188,559.7,'Defeated Tray Supplies'),('PEC',13,159,429.8,'Coward Covers'),('PEC',15,144,226.7,'Syntax Polishing Equip.'),('PEC',16,184,200.7,'Insensitivity Manufacturing Equip'),('PEC',20,150,285.6,'Courthouses Manufacturing Equip'),('PEC',24,194,425.6,'Loaves Polishing Equip.'),('PEC',26,47,318.4,'Simulations Photo Equip.'),('PEC',27,94,498.1,'Vastest Photo Equip.'),('PEC',29,185,295.6,'Millimeters Flushing Chemicals'),('PEC',30,144,482.2,'Suing Manufacturing Equip'),('PEC',32,167,250.9,'Embodying Cleaning Supplies'),('PEC',33,87,374.1,'Pervasively Manufacturing Equip'),('PEC',38,115,436.3,'Commendation Fillers'),('PEC',39,84,165.2,'Disallow Manufacturing Equip'),('PEC',40,76,282.5,'Subclasses Polishing Equip.'),('PEC',43,144,461.3,'Bomber Photo Equip.'),('TPCE',7,186,436.3,'Commendation Fillers'),('TPCE',16,178,461,'Enhanced Covers'),('TPCE',20,31,232.3,'Flake Photo Equip'),('TPCE',21,70,566,'Denigrating Polishing Equip'),('TPCE',29,41,507.4,'Bluest Fillers'),('TPCE',41,169,172.6,'Consideration Tray Supplies'),('TPCE',42,19,559.7,'Carelessly Freezing Chemicals'),('TPCE',48,61,351.5,'Patriarchal Cleaning Supplies'),('TPCE',49,195,567.8,'Visage Flushing Chemicals'),('TPCE',65,91,120.4,'Extinguisher Manufacturing Equip'),('TPCE',74,68,271.4,'Flanker Fillers'),('TPCE',84,170,222.5,'Unjust Paper Supplies'),('TPCE',98,84,135.1,'Barrels Flushing Chemicals'),('TPCE',99,163,529.4,'Richards Freezing Chemicals'),('TPCE',100,107,374.1,'Enumerator Polishing Equipment'),('TPCW',23,105,233.3,'Decided Tray Supplies'),('TPCW',25,177,289.2,'Chalmers Polishing Equipment'),('TPCW',82,18,102.9,'Numerals Covers');
/*!40000 ALTER TABLE `invoice_Fact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-29 19:05:43
