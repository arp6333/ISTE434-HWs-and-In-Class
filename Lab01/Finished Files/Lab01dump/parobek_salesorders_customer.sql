-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: parobek_salesorders
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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customerID` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `addr1` varchar(50) DEFAULT NULL,
  `addr2` varchar(50) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` char(5) DEFAULT NULL,
  `custTypeID` char(1) NOT NULL,
  PRIMARY KEY (`customerID`),
  KEY `custTypeID_idx` (`custTypeID`),
  CONSTRAINT `custTypeID` FOREIGN KEY (`custTypeID`) REFERENCES `customertype` (`custTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (0,'Specialty Teleconstructors Inc','','1570 Hordes Drive','Columbia','SC','29260','F'),(1,'Room Plus Inc','Suite 836','6037 Ecuadorian Street','Clinton','MI','49236','C'),(2,'Motts Holdings Inc.','','1618 Greenland Street','Tallahassee','FL','32304','E'),(3,'Beckman Coulter Inc.','','5841 Pervades Drive','Fairfax','VA','22035','E'),(4,'Magainin Pharmaceuticals Inc','Dept #332','9138 Planetesimal Lane','Twining','MI','48766','F'),(5,'Sterling Financial Corp Washington','Dept #505','7258 Meriting Avenue','Portland','OR','97201','E'),(6,'Fidelity National Corp Ga','Dept #915','11455 Sheaf Drive','Anthony','FL','32617','S'),(7,'Fedders Corporation','Dept #520','3311 Blatantly Circle','Santa Fe Springs','CA','90670','E'),(8,'United Healthcare Corporation','Dept #855','675 Hordes Turnpike','Malaga','NM','88263','E'),(10,'Saint Andrews Golf Corp','','8068 Substances Street','North Miami','FL','33261','F'),(11,'Synaptic Pharmaceutical Corp','','8072 Powerless Street','Bridgeport','IL','62417','C'),(12,'Cohesant Technologies Inc','Dept #690','3334 Eggshell Circle','Oakley','SC','29461','F'),(13,'Publishing Co Of North America Inc','Suite 518','978 Degrees Street','Heron Bay','AL','36523','S'),(14,'Newcor Inc','Suite 401','8717 Involve Drive','Homer','MI','49245','S'),(15,'Railamerica Inc','','576 Stew Turnpike','Mans De Navarro','PR','00778','C'),(16,'Meridian Resources Corporation','Dept #804','1977 Symbiotic Turnpike','Fall River','MA','02724','C'),(17,'V.e.v. Sa','','7079 Aspect Circle','Ross Siding','PA','17723','F'),(18,'Scp Pool Corp','Suite 251','755 Leek Street','Enid','OK','73706','F'),(19,'Camera Platforms International Inc','','5347 Deposed Street','Houston','TX','77244','S'),(20,'Labor Ready Inc','Dept #759','4618 Days Drive','Waterville','WA','98858','F'),(21,'Shaw Brothers','Suite 371','2567 Cardinal Drive','Whiskey Flats','NV','89415','S'),(22,'Chemfix Technologies Inc','Suite 50','11533 Wonderingly Drive','Pasadena Hills','MO','63121','S'),(23,'Ligand Pharmaceuticals Incorporated','','8092 Bluest Street','Moorcroft','WY','82721','F'),(24,'Helpmate Robotics Inc','Suite 213','9711 Writers Turnpike','Saint Cloud','WI','53079','E'),(25,'Liberty Homes Inc','','3051 Bumblers Lane','Medon','TN','38356','F'),(26,'Firstfed America Bancorp Inc','Dept #851','5656 Settler Street','Ward Prairie','TX','75840','E'),(27,'Lnr Property Corp','','9382 Demolition Street','College Square','IA','50613','F'),(28,'Gte Corporation','Dept #532','7196 Heaver Lane','Winter Garden','FL','34777','S'),(29,'Usx-steel Group Inc.','','7120 Whimsically Turnpike','Olympia','WA','98501','S'),(30,'Pulitzer Publishing Company','Suite 277','126 Pathological Circle','Woodbury','NY','11797','S'),(31,'Setron','Dept #80','3085 Breakthrough Drive','Hart','MO','64865','S'),(32,'Greenman Technologies Inc','','4910 Liveried Boulevard','Dabney','IN','47023','F'),(33,'Polymer Group Inc.','Suite 204','11368 Harder Drive','Maidstone','VT','05905','C'),(34,'Emerson Electric Co.','','1792 Squash Drive','South Texarkana','TX','75501','E'),(35,'Integra -- A Hotel & Restaurant Company','Dept #822','5222 Blazed Street','Parsons','TN','38363','F'),(36,'Hickory Tech Corp','Dept #633','11119 Periphery Turnpike','Simpson','LA','71474','F'),(37,'Televideo Inc.','Dept #793','939 Publishers Turnpike','Fort Hood','TX','76544','E'),(38,'Seattle Filmworks Inc.','','4958 Dietitian Street','Davis','MO','63379','F'),(39,'Pricellular Corporation','Dept #5','10947 Eagle Street','Lisbon Falls','ME','04252','C'),(40,'Processing Equipment Corporation','Dept #2','29843 Klingon Road','Naperville','IL','60563','C');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-13 23:13:28
