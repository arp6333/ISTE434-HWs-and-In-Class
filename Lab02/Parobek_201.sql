-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: parobek_financialdm
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
-- Table structure for table `calendar_date`
--

DROP TABLE IF EXISTS `calendar_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendar_date` (
  `calendarDate_NK` int NOT NULL,
  `year` int DEFAULT NULL,
  `quarter` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `week` int DEFAULT NULL,
  `day` int DEFAULT NULL,
  PRIMARY KEY (`calendarDate_NK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar_date`
--

LOCK TABLES `calendar_date` WRITE;
/*!40000 ALTER TABLE `calendar_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_SK` int NOT NULL,
  `customer_NK` int NOT NULL,
  `country` varchar(45) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `zip` varchar(7) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `customerType` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customer_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fiscal_date`
--

DROP TABLE IF EXISTS `fiscal_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fiscal_date` (
  `fiscalDate_NK` int NOT NULL,
  `year` int DEFAULT NULL,
  `quarter` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `week` int DEFAULT NULL,
  `day` int DEFAULT NULL,
  PRIMARY KEY (`fiscalDate_NK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fiscal_date`
--

LOCK TABLES `fiscal_date` WRITE;
/*!40000 ALTER TABLE `fiscal_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `fiscal_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `invoice_NK` int NOT NULL,
  `invoiceNumber` int DEFAULT NULL,
  `division` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`invoice_NK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_date`
--

DROP TABLE IF EXISTS `order_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_date` (
  `orderDate_NK` int NOT NULL,
  `year` int DEFAULT NULL,
  `quarter` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `week` int DEFAULT NULL,
  `day` int DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`orderDate_NK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_date`
--

LOCK TABLES `order_date` WRITE;
/*!40000 ALTER TABLE `order_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pec_order`
--

DROP TABLE IF EXISTS `pec_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pec_order` (
  `pecOrder_SK` int NOT NULL,
  `pecOrder_NK` int NOT NULL,
  `shippingType` varchar(45) DEFAULT NULL,
  `orderMethod` varchar(45) DEFAULT NULL,
  `paymentMethod` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pecOrder_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pec_order`
--

LOCK TABLES `pec_order` WRITE;
/*!40000 ALTER TABLE `pec_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `pec_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_sales`
--

DROP TABLE IF EXISTS `product_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_sales` (
  `fiscalDate_NK` int NOT NULL,
  `calendarDate_NK` int NOT NULL,
  `saleDate_NK` int NOT NULL,
  `orderDate_NK` int NOT NULL,
  `customer_SK` int NOT NULL,
  `productType_SK` int NOT NULL,
  `pecOrder_SK` int NOT NULL,
  `invoice_NK` int NOT NULL,
  `manufacturingCost` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`fiscalDate_NK`,`calendarDate_NK`,`saleDate_NK`,`orderDate_NK`,`customer_SK`,`productType_SK`,`pecOrder_SK`,`invoice_NK`),
  KEY `calendarDate_NK_idx` (`calendarDate_NK`),
  KEY `saleDate_NK_idx` (`saleDate_NK`),
  KEY `orderDate_NK_idx` (`orderDate_NK`),
  KEY `customer_SK_idx` (`customer_SK`),
  KEY `productType_SK_idx` (`productType_SK`),
  KEY `pecOrder_SK_idx` (`pecOrder_SK`),
  KEY `invoice_NK_idx` (`invoice_NK`),
  CONSTRAINT `calendarDate_NK` FOREIGN KEY (`calendarDate_NK`) REFERENCES `calendar_date` (`calendarDate_NK`),
  CONSTRAINT `customer_SK` FOREIGN KEY (`customer_SK`) REFERENCES `customer` (`customer_SK`),
  CONSTRAINT `fiscalDate_NK` FOREIGN KEY (`fiscalDate_NK`) REFERENCES `fiscal_date` (`fiscalDate_NK`),
  CONSTRAINT `invoice_NK` FOREIGN KEY (`invoice_NK`) REFERENCES `invoice` (`invoice_NK`),
  CONSTRAINT `orderDate_NK` FOREIGN KEY (`orderDate_NK`) REFERENCES `order_date` (`orderDate_NK`),
  CONSTRAINT `pecOrder_SK` FOREIGN KEY (`pecOrder_SK`) REFERENCES `pec_order` (`pecOrder_SK`),
  CONSTRAINT `productType_SK` FOREIGN KEY (`productType_SK`) REFERENCES `product_type` (`productType_SK`),
  CONSTRAINT `saleDate_NK` FOREIGN KEY (`saleDate_NK`) REFERENCES `sale_date` (`saleDate_NK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sales`
--

LOCK TABLES `product_sales` WRITE;
/*!40000 ALTER TABLE `product_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_type` (
  `productType_SK` int NOT NULL,
  `productType_NK` int NOT NULL,
  `level` varchar(45) DEFAULT NULL,
  `productType` varchar(45) DEFAULT NULL,
  `businessUnit` int DEFAULT NULL,
  PRIMARY KEY (`productType_SK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_date`
--

DROP TABLE IF EXISTS `sale_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_date` (
  `saleDate_NK` int NOT NULL,
  `year` int DEFAULT NULL,
  `quarter` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `week` int DEFAULT NULL,
  `day` int DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`saleDate_NK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_date`
--

LOCK TABLES `sale_date` WRITE;
/*!40000 ALTER TABLE `sale_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'parobek_financialdm'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-16 14:19:42
