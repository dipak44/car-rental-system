-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: art
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminid` int NOT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`adminid`),
  UNIQUE KEY `UK_gfn44sntic2k93auag97juyij` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist` (
  `artist_id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `artist_bio` varchar(255) DEFAULT NULL,
  `artist_email` varchar(255) DEFAULT NULL,
  `artist_price` int NOT NULL,
  `availiblity` bit(1) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_no` bigint NOT NULL,
  `postal_code` int NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`artist_id`),
  UNIQUE KEY `UK_jbd5t8ewo763j60petvaywr1l` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'kalewadi','painter','dipakkalekar98@gmail.com',888,_binary '','rahata','dipak','male','kalekar','pass',7777777,423107,'ARTIST','maharatastra',_binary '','dipak'),(19,'kalewadi','painter','dipakkalekar21798@gmail.com',888,_binary '','rahata','dipak','male','kalekar','$2a$10$leLkZJhaX.kqRC/8rVQg1utegA/PN7ncjvYUjHNmGzEuN9CmiqK8S',7777777,423107,'ROLE_ARTIST','maharatastra',_binary '','dipak1'),(20,'kalewadi','painter','ruturajvitekar0707@gmail.com',888,_binary '','rahata','ruturaj','male','vitekar','$2a$10$.fLUuIjdVycfIFPWnf8lUejJvRK6TjL1GThpd0i1UFcF/Am7Kl4E.',7777777,423107,'ROLE_ARTIST','maharatastra',_binary '','ruturaj123');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` bigint NOT NULL,
  `postal_code` int NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `UK_irnrrncatp2fvw52vp45j7rlw` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2,'korhale','nagar','dipakkalekar98@gmail.com','jayesh','male','dighe','$2a$10$MKZJsfNqUr.9sEYmHkzAK.Gs8zcEDxT7Uv91sN5ZTAyUwerD9QuI2',9939399393,423107,'ROLE_CUSTOMER','maharastra','user'),(8,'korhale','nagar','dipakkalekar21798@gmail.com','pppp','male','dighe','$2a$10$cofNdXw5sy2fopOsP5VKB.it8qWSjg5X6e3JAMT.ksowCCIwJwe8q',9939399393,423107,'ROLE_CUSTOMER','maharastra','pppp'),(9,'korhale','nagar','ruturajvitekar0707@gmail.com','Ruturaj','male','vitekar','$2a$10$PSXX2lcLwO38HmURYlQhWudG52rTAv9pGR18nBf7PCTPXD/Wn6jUe',9939399393,423107,'ROLE_CUSTOMER','maharastra','ruturaj'),(13,'korhale','nagar','ruturajvitekar0707@gmail.com','Ruturaj','male','vitekar','user123',9939399393,423107,'ROLE_CUSTOMER','maharastra','ruturaj12'),(15,'korhale','nagar','ruturajvitekar0707@gmail.com','Ruturaj','male','vitekar','$2a$10$KNL1mWMhB6fvwGwUUGmN7OJjGgAbJLFuLCgss1BOLE7eZQuFUfC2K',9939399393,423107,'ROLE_CUSTOMER','maharastra','ruturaj123'),(17,'korhale','nagar','ruturajvitekar0707@gmail.com','Ruturaj','male','vitekar','$2a$10$kyaIgzruPFSqAXY.s5cG9OZmD3zy3Mz/YWqnb2aHoBTDLJ9TjxDW2',9939399393,423107,'ROLE_CUSTOMER','maharastra','ruturaj1234');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (21);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `orderdetails_id` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `total_amount` int NOT NULL,
  `total_order_price` int DEFAULT NULL,
  `unit_price` int DEFAULT NULL,
  `order_order_id` int DEFAULT NULL,
  `product_product_id` int DEFAULT NULL,
  PRIMARY KEY (`orderdetails_id`),
  KEY `FKn5s774je1pjt7y8upyvbnq7ww` (`order_order_id`),
  KEY `FK3v1htipuwjrpps6h36twse7wx` (`product_product_id`),
  CONSTRAINT `FK3v1htipuwjrpps6h36twse7wx` FOREIGN KEY (`product_product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `FKn5s774je1pjt7y8upyvbnq7ww` FOREIGN KEY (`order_order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `address_line1` varchar(255) DEFAULT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `phoneno` bigint DEFAULT NULL,
  `postal_code` int NOT NULL,
  `product_cost` int NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total` int NOT NULL,
  `customer_customer_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FKgk0a4775o5scnc1sjrg2w8afa` (`customer_customer_id`),
  CONSTRAINT `FKgk0a4775o5scnc1sjrg2w8afa` FOREIGN KEY (`customer_customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `unit_in_stock` int NOT NULL,
  `unit_price` int NOT NULL,
  `artist_artist_id` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FKx98hjd5mf3v9vj24vgk5npqa` (`artist_artist_id`),
  CONSTRAINT `FKx98hjd5mf3v9vj24vgk5npqa` FOREIGN KEY (`artist_artist_id`) REFERENCES `artist` (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `reviewid` int NOT NULL,
  `comments` varchar(150) DEFAULT NULL,
  `likes` int DEFAULT NULL,
  `artist_review` int DEFAULT NULL,
  `customer_review` int DEFAULT NULL,
  PRIMARY KEY (`reviewid`),
  KEY `FK8s7r9gijyi4bpasxyo7foak2a` (`artist_review`),
  KEY `FKq1dli5llrkw29r6f8x16htbru` (`customer_review`),
  CONSTRAINT `FK8s7r9gijyi4bpasxyo7foak2a` FOREIGN KEY (`artist_review`) REFERENCES `artist` (`artist_id`),
  CONSTRAINT `FKq1dli5llrkw29r6f8x16htbru` FOREIGN KEY (`customer_review`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-08 17:30:50
