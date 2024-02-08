-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: zadanie3
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `favourites`
--

DROP TABLE IF EXISTS `favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favourites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(45) NOT NULL,
  `EnergyDrink` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourites`
--

LOCK TABLES `favourites` WRITE;
/*!40000 ALTER TABLE `favourites` DISABLE KEYS */;
INSERT INTO `favourites` VALUES (1,'Fukuda Misaki','Red Bull'),(2,'Catherine King','Drive'),(3,'Dai Yuning','Volt'),(4,'Albert Castro','Red Bull'),(5,'Betty Gomez','Monster');
/*!40000 ALTER TABLE `favourites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(300) NOT NULL,
  `manufacturer` varchar(90) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Red Bull','Red Bull предлагает широкий ассортимент энергетических напитков, включая классический Red Bull Energy Drink, Sugarfree, и различные вкусы, такие как кокос-киви и апельсин-тропический.','Red Bull GmbH'),(2,'testEnergy','testEnergy','testEnergy'),(3,'Rockstar Energy Drink',' Rockstar Energy Drink предлагает разнообразие энергетических напитков, в том числе классический Original, XDurance, Recovery, и различные вкусы.','Rockstar, Inc.'),(4,'Bang Energy','Bang Energy приобрел огромную популярность благодаря своим разнообразным вкусам и высокому содержанию кофеина.','Vital Pharmaceuticals, Inc.'),(5,'NOS Energy Drink','NOS Energy Drink предлагает напитки с высоким содержанием кофеина и цитрусовыми вкусами, предназначенные для повышения выносливости.','High Performance Beverage Co.');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `surname` varchar(35) NOT NULL,
  `father_name` varchar(45) DEFAULT NULL,
  `email` varchar(90) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Helen ','Takuya','Takuasy','helengutierrez@outlook.com','HYH4WrLcCy'),(2,'test2','test2','test2','test2','test2'),(3,'Ruth ','Zhennan','Gu ','harrisr@mail.com','zLbYEVXiWu'),(4,'Charlotte ','Ayato','Nakamura ','tranc@mail.com','YL8NcWo54H'),(5,'Karen','Yuito','Ogawa ','karens@gmail.com','QQYwbcESKs');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-09  1:25:20
