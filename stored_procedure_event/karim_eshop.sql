-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: karim_eshop
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `AspNetRoleClaims`
--

DROP TABLE IF EXISTS `AspNetRoleClaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AspNetRoleClaims` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `RoleId` int NOT NULL,
  `ClaimType` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ClaimValue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetRoleClaims`
--

LOCK TABLES `AspNetRoleClaims` WRITE;
/*!40000 ALTER TABLE `AspNetRoleClaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetRoleClaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetRoles`
--

DROP TABLE IF EXISTS `AspNetRoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AspNetRoles` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `RoleNameIndex` (`NormalizedName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetRoles`
--

LOCK TABLES `AspNetRoles` WRITE;
/*!40000 ALTER TABLE `AspNetRoles` DISABLE KEYS */;
INSERT INTO `AspNetRoles` VALUES (1,'Member','MEMBER','019b0ce0-7292-4778-b5f6-953752207acd'),(2,'Admin','ADMIN','04ca8291-487b-4f86-b238-2bd5b010f190');
/*!40000 ALTER TABLE `AspNetRoles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUserClaims`
--

DROP TABLE IF EXISTS `AspNetUserClaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AspNetUserClaims` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `UserId` int NOT NULL,
  `ClaimType` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ClaimValue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetUserClaims_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetUserClaims`
--

LOCK TABLES `AspNetUserClaims` WRITE;
/*!40000 ALTER TABLE `AspNetUserClaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetUserClaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUserLogins`
--

DROP TABLE IF EXISTS `AspNetUserLogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AspNetUserLogins` (
  `LoginProvider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProviderKey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProviderDisplayName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `UserId` int NOT NULL,
  PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  KEY `IX_AspNetUserLogins_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetUserLogins`
--

LOCK TABLES `AspNetUserLogins` WRITE;
/*!40000 ALTER TABLE `AspNetUserLogins` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetUserLogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUserRoles`
--

DROP TABLE IF EXISTS `AspNetUserRoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AspNetUserRoles` (
  `UserId` int NOT NULL,
  `RoleId` int NOT NULL,
  PRIMARY KEY (`UserId`,`RoleId`),
  KEY `IX_AspNetUserRoles_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetUserRoles`
--

LOCK TABLES `AspNetUserRoles` WRITE;
/*!40000 ALTER TABLE `AspNetUserRoles` DISABLE KEYS */;
INSERT INTO `AspNetUserRoles` VALUES (1,1),(2,1),(3,1),(2,2);
/*!40000 ALTER TABLE `AspNetUserRoles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUserTokens`
--

DROP TABLE IF EXISTS `AspNetUserTokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AspNetUserTokens` (
  `UserId` int NOT NULL,
  `LoginProvider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`UserId`,`LoginProvider`,`Name`),
  CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetUserTokens`
--

LOCK TABLES `AspNetUserTokens` WRITE;
/*!40000 ALTER TABLE `AspNetUserTokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetUserTokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUsers`
--

DROP TABLE IF EXISTS `AspNetUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AspNetUsers` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedUserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedEmail` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `SecurityStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumber` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  KEY `EmailIndex` (`NormalizedEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetUsers`
--

LOCK TABLES `AspNetUsers` WRITE;
/*!40000 ALTER TABLE `AspNetUsers` DISABLE KEYS */;
INSERT INTO `AspNetUsers` VALUES (1,'bob','BOB','bob@test.com','BOB@TEST.COM',0,'AQAAAAIAAYagAAAAELXqFQ5GrgX9ueyzwAJbFu5ufcUCR0Ma5zOzdIuYaV428pq/z/xuezcnt3pHz74EYQ==','UBKY3OSYFLCKDMATPQNFBPDAHWE6CQKX','11a42c56-7cce-4a30-a3c6-b63a1c7abcaa',NULL,0,0,NULL,1,0),(2,'admin','ADMIN','admin@test.com','ADMIN@TEST.COM',0,'AQAAAAIAAYagAAAAEP7dNJgy/Qg3apuXPcg+aikDeZlsasUop0Bx/8hjHHdXdqL1WGykGk9RiX4rRCGGYw==','E3A2LRSYLG6BQBC6CBTIAOUZDB6RLUMY','edc8e40b-72a2-4430-a731-49abc183eb8a',NULL,0,0,NULL,1,0),(3,'karim','KARIM','ka.trabelsi9@gmail.com','KA.TRABELSI9@GMAIL.COM',0,'AQAAAAIAAYagAAAAEOr7i0MhcGhg4nnmySoeb6BTHKuDrXNR2+V8ucClZkUM3VB9XS3dzOXCKISehIgpNA==','YFTMFCZGDVAXJN7TUMHXUQ3SKYIVJNC6','737f457b-c6b8-4de4-b64e-1edd5af1d041',NULL,0,0,NULL,1,0);
/*!40000 ALTER TABLE `AspNetUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasketItem`
--

DROP TABLE IF EXISTS `BasketItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BasketItem` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Quantity` int NOT NULL,
  `ProductId` int NOT NULL,
  `BasketId` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_BasketItem_BasketId` (`BasketId`),
  KEY `IX_BasketItem_ProductId` (`ProductId`),
  CONSTRAINT `FK_BasketItem_Baskets_BasketId` FOREIGN KEY (`BasketId`) REFERENCES `Baskets` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_BasketItem_Products_ProductId` FOREIGN KEY (`ProductId`) REFERENCES `Products` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasketItem`
--

LOCK TABLES `BasketItem` WRITE;
/*!40000 ALTER TABLE `BasketItem` DISABLE KEYS */;
INSERT INTO `BasketItem` VALUES (12,1,1,7),(13,1,8,7);
/*!40000 ALTER TABLE `BasketItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Baskets`
--

DROP TABLE IF EXISTS `Baskets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Baskets` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `BuyerId` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Baskets`
--

LOCK TABLES `Baskets` WRITE;
/*!40000 ALTER TABLE `Baskets` DISABLE KEYS */;
INSERT INTO `Baskets` VALUES (7,'bob');
/*!40000 ALTER TABLE `Baskets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderItem`
--

DROP TABLE IF EXISTS `OrderItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderItem` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ItemOrdered_ProductId` int DEFAULT NULL,
  `ItemOrdered_Name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ItemOrdered_PictureUrl` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Price` bigint NOT NULL,
  `Quantity` int NOT NULL,
  `OrderId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_OrderItem_OrderId` (`OrderId`),
  CONSTRAINT `FK_OrderItem_Orders_OrderId` FOREIGN KEY (`OrderId`) REFERENCES `Orders` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderItem`
--

LOCK TABLES `OrderItem` WRITE;
/*!40000 ALTER TABLE `OrderItem` DISABLE KEYS */;
INSERT INTO `OrderItem` VALUES (1,1,'Table basse en Or','/images/products/table_basse_or.png',20000,1,1),(2,2,'Lustre en diamant','/images/products/lustre_diamant.png',15000,1,1),(3,3,'Peignoir de douche en peau d\'ours','/images/products/peignoir_peau_ours.png',18000,2,2),(4,8,'Armoire en bois noble','/images/products/armoire_noble.png',8000,2,3),(5,8,'Armoire en bois noble','/images/products/armoire_noble.png',8000,1,4),(6,9,'Cendrier en or','/images/products/cendrier en or.png',1500,1,6),(7,7,'Sac en peau de gazelle','https://res.cloudinary.com/duwjoidpb/image/upload/v1709029988/w7lpsyni26qjyxnt5oww.jpg',1000,2,7),(8,9,'Cendrier en or','https://res.cloudinary.com/duwjoidpb/image/upload/v1709028876/gaxppoieojogyqmwecoy.jpg',1500,1,8),(9,8,'Armoire en bois noble','https://res.cloudinary.com/duwjoidpb/image/upload/v1709028271/glhqhxxuyo0l9mu1xz7s.jpg',18000,1,9),(10,8,'Armoire en bois noble','https://res.cloudinary.com/duwjoidpb/image/upload/v1709028271/glhqhxxuyo0l9mu1xz7s.jpg',18000,1,10),(11,8,'Armoire en bois noble','https://res.cloudinary.com/duwjoidpb/image/upload/v1709028271/glhqhxxuyo0l9mu1xz7s.jpg',18000,10,12),(12,9,'Cendrier en or','https://res.cloudinary.com/duwjoidpb/image/upload/v1709028876/gaxppoieojogyqmwecoy.jpg',1500,10,13),(13,10,'Pipe en bois noble','https://res.cloudinary.com/duwjoidpb/image/upload/v1709029608/e4rusjnj2dq3upxznqgt.jpg',1800,10,14);
/*!40000 ALTER TABLE `OrderItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `BuyerId` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ShippingAddress_FullName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ShippingAddress_Address1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ShippingAddress_Address2` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ShippingAddress_City` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ShippingAddress_State` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ShippingAddress_Zip` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ShippingAddress_Country` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `OrderDate` datetime(6) NOT NULL,
  `Subtotal` bigint NOT NULL,
  `DeliveryFee` bigint NOT NULL,
  `OrderStatus` int NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,'bob','Bob test','test','test','test','test','test','France','2024-02-25 21:00:29.517374',35000,0,0),(2,'bob','Bob test','test','test','test','test','test','France','2024-02-25 21:36:30.556256',36000,0,0),(3,'bob','aefa','ezfe','zef','aef','ezf','01890','France','2024-02-26 19:03:45.874539',16000,0,0),(4,'bob','bobtest','test','test','test','test','01890','France','2024-02-26 19:28:29.673851',8000,500,0),(6,'bob','bobtest','test1','test','test','test','01890','France','2024-02-26 20:43:02.502597',1500,500,0),(7,'admin','gu','mj','mmlk','mll','kjjb','69330','jfuy','2024-02-28 21:03:50.149713',2000,500,0),(8,'admin','gu','mj','mmlk','mll','kjjb','69330','jfuy','2024-02-29 19:20:41.499171',1500,500,0),(9,'admin','gu','mj','mmlk','mll','kjjb','69330','jfuy','2024-03-01 11:16:59.167588',18000,0,0),(10,'admin','gu','mj','mmlk','mll','kjjb','69330','jfuy','2024-03-02 07:51:22.477527',18000,0,0),(11,'admin','string','string','string','string','string','string','string','2024-03-17 16:58:40.202557',0,500,0),(12,'admin','string','string','string','string','string','string','string','2024-03-17 17:04:25.658981',180000,0,0),(13,'admin','bob','123 rue de laliberté','','Paris','Ile de France','75018','France','2024-03-17 17:19:50.329677',15000,0,0),(14,'admin','bob','123 rue de laliberté','','Paris','Ile de France','75018','France','2024-03-17 19:50:01.124751',18000,0,0);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Products` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Price` bigint NOT NULL,
  `PictureUrl` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Photo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Type` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Brand` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `QuantityInStock` int NOT NULL,
  `PublicId` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES (1,'Table basse en Or','Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.',20000,'https://res.cloudinary.com/duwjoidpb/image/upload/v1709030068/edpqnunw2sw4zbdjaayd.jpg',NULL,'table basse','Fluknumbluk',99,'edpqnunw2sw4zbdjaayd'),(2,'Lustre en diamant','Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.',15000,'https://res.cloudinary.com/duwjoidpb/image/upload/v1709029170/q9mmo7pxgmnvtzn8rtp1.jpg',NULL,'Lustres','lustrulux',99,'q9mmo7pxgmnvtzn8rtp1'),(3,'Peignoir de douche en peau d\'ours','Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.',25000,'https://res.cloudinary.com/duwjoidpb/image/upload/v1709029302/vxkutmckgyykghhx15n1.jpg',NULL,'Vetement mixte','Louis Vuitton',98,'vxkutmckgyykghhx15n1'),(4,'robe de mariée satin bordé en or et diamant','Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.',30000,'https://res.cloudinary.com/duwjoidpb/image/upload/v1709029752/xmasr1hequk2owyquxzp.jpg',NULL,'Vetement femme','MariLux',100,'xmasr1hequk2owyquxzp'),(5,'Pendule en or','Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.',25000,'https://res.cloudinary.com/duwjoidpb/image/upload/v1709029430/a3wad0sobrhkivs3ubd1.jpg',NULL,'Horloge','Tissot',100,'a3wad0sobrhkivs3ubd1'),(6,'Chaussure peau crocodile','Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.',12000,'https://res.cloudinary.com/duwjoidpb/image/upload/v1709029000/acuikplbbvoopowaks1b.jpg',NULL,'Chaussure homme','Lacoste',100,'acuikplbbvoopowaks1b'),(7,'Sac en peau de gazelle','Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.',1000,'https://res.cloudinary.com/duwjoidpb/image/upload/v1709029988/w7lpsyni26qjyxnt5oww.jpg',NULL,'Maroquinerie mixte','Louis Vuitton',98,'w7lpsyni26qjyxnt5oww'),(8,'Armoire en bois noble','Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.',18000,'https://res.cloudinary.com/duwjoidpb/image/upload/v1709028271/glhqhxxuyo0l9mu1xz7s.jpg',NULL,'Mobilier chambre à coucher','Noblerama',85,'glhqhxxuyo0l9mu1xz7s'),(9,'Cendrier en or','Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.',1500,'https://res.cloudinary.com/duwjoidpb/image/upload/v1709028876/gaxppoieojogyqmwecoy.jpg',NULL,'Divers','Cendrilux',88,'gaxppoieojogyqmwecoy'),(10,'Pipe en bois noble','Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.',1800,'https://res.cloudinary.com/duwjoidpb/image/upload/v1709029608/e4rusjnj2dq3upxznqgt.jpg',NULL,'Divers','Stanwell',90,'e4rusjnj2dq3upxznqgt');
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAddress`
--

DROP TABLE IF EXISTS `UserAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserAddress` (
  `Id` int NOT NULL,
  `FullName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Address1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Address2` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `City` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `State` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Zip` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Country` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  CONSTRAINT `FK_UserAddress_AspNetUsers_Id` FOREIGN KEY (`Id`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAddress`
--

LOCK TABLES `UserAddress` WRITE;
/*!40000 ALTER TABLE `UserAddress` DISABLE KEYS */;
INSERT INTO `UserAddress` VALUES (1,'bobtest','test1','test','test','test','01890','France'),(2,'bob','123 rue de laliberté','','Paris','Ile de France','75018','France');
/*!40000 ALTER TABLE `UserAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `__EFMigrationsHistory`
--

DROP TABLE IF EXISTS `__EFMigrationsHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__EFMigrationsHistory`
--

LOCK TABLES `__EFMigrationsHistory` WRITE;
/*!40000 ALTER TABLE `__EFMigrationsHistory` DISABLE KEYS */;
INSERT INTO `__EFMigrationsHistory` VALUES ('20240225171826_InitialMigration','6.0.16'),('20240227063950_PublicId_Added_into_product_table','6.0.16'),('20240302085234_changesOnTables','6.0.16');
/*!40000 ALTER TABLE `__EFMigrationsHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `text` varchar(50) DEFAULT NULL,
  `post_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (2,'commentaire 1','2023-01-06 23:02:44'),(3,'commentaire 2','2023-01-05 23:12:54'),(4,'commentaire 3','2023-01-04 23:13:26'),(5,'commentaire 4','2023-01-03 23:13:34'),(6,'commentaire 5','2023-01-02 23:13:39'),(7,'commentaire 6','2022-12-29 23:13:46');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funding`
--

DROP TABLE IF EXISTS `funding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funding` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `amount` float DEFAULT NULL COMMENT 'amount',
  `payment_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funding`
--

LOCK TABLES `funding` WRITE;
/*!40000 ALTER TABLE `funding` DISABLE KEYS */;
INSERT INTO `funding` VALUES (1,350,'2023-10-01 06:45:09','payed'),(2,50,'2023-01-06 12:45:09','refused'),(3,350,'2023-01-06 18:45:09','payed'),(4,650,'2023-01-06 12:45:09','refused');
/*!40000 ALTER TABLE `funding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `status_project` tinyint(1) DEFAULT NULL,
  `start_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'project 1','this is a description for project 1',NULL,'2023-01-06 06:45:09',NULL),(2,'project 2','this is a description for project 2',NULL,'2023-01-06 06:45:10',NULL),(3,'project 3','this is a description for project 3',NULL,'2023-01-06 06:45:10',NULL),(4,'project 4','this is a description for project 4',NULL,'2023-01-06 06:45:10',NULL),(5,'project 5','this is a description for project 5',NULL,'2023-01-06 06:45:10',NULL),(6,'project 6','this is a description for project 6',NULL,'2023-01-06 06:45:10',NULL),(7,'project 7','this is a description for project 7',NULL,'2023-01-06 06:45:10',NULL),(8,'project 8','this is a description for project 8',NULL,'2023-01-06 06:45:10',NULL),(9,'project 9','this is a description for project 9',NULL,'2023-01-06 06:45:10',NULL),(10,'project 10','this is a description for project 10',NULL,'2023-01-06 06:45:10',NULL);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `label` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin'),(2,'user_founder'),(3,'user_funder');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_comment_project`
--

DROP TABLE IF EXISTS `user_comment_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_comment_project` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `user_id` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `comment_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `project_id` (`project_id`),
  KEY `comment_id` (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_comment_project`
--

LOCK TABLES `user_comment_project` WRITE;
/*!40000 ALTER TABLE `user_comment_project` DISABLE KEYS */;
INSERT INTO `user_comment_project` VALUES (1,1,3,5),(2,4,2,8);
/*!40000 ALTER TABLE `user_comment_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_project_founding`
--

DROP TABLE IF EXISTS `user_project_founding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_project_founding` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `user_id` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_project_founding`
--

LOCK TABLES `user_project_founding` WRITE;
/*!40000 ALTER TABLE `user_project_founding` DISABLE KEYS */;
INSERT INTO `user_project_founding` VALUES (1,13,4,NULL),(2,21,10,0),(3,30,3,1);
/*!40000 ALTER TABLE `user_project_founding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_project_funding`
--

DROP TABLE IF EXISTS `user_project_funding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_project_funding` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `user_id` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `funding_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `project_id` (`project_id`),
  KEY `funding_id` (`funding_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_project_funding`
--

LOCK TABLES `user_project_funding` WRITE;
/*!40000 ALTER TABLE `user_project_funding` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_project_funding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `passwords` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'user 1','First name 1','Last name1','MayPassword_1','adress1',1),(11,'user 1','First name 1','Last name1','MayPassword_1','adress1',2),(12,'user 2','First name 2','Last name2','MayPassword_2','adress2',2),(13,'user 3','First name 3','Last name3','MayPassword_3','adress3',2),(14,'user 4','First name 4','Last name4','MayPassword_4','adress4',2),(15,'user 5','First name 5','Last name5','MayPassword_5','adress5',2),(16,'user 6','First name 6','Last name6','MayPassword_6','adress6',2),(17,'user 7','First name 7','Last name7','MayPassword_7','adress7',2),(18,'user 8','First name 8','Last name8','MayPassword_8','adress8',2),(19,'user 9','First name 9','Last name9','MayPassword_9','adress9',2),(20,'user 10','First name 10','Last name10','MayPassword_10','adress10',2),(21,'user 1','First name 1','Last name1','MayPassword_1','adress1',3),(22,'user 2','First name 2','Last name2','MayPassword_2','adress2',3),(23,'user 3','First name 3','Last name3','MayPassword_3','adress3',3),(24,'user 4','First name 4','Last name4','MayPassword_4','adress4',3),(25,'user 5','First name 5','Last name5','MayPassword_5','adress5',3),(26,'user 6','First name 6','Last name6','MayPassword_6','adress6',3),(27,'user 7','First name 7','Last name7','MayPassword_7','adress7',3),(28,'user 8','First name 8','Last name8','MayPassword_8','adress8',3),(29,'user 9','First name 9','Last name9','MayPassword_9','adress9',3),(30,'user 10','First name 10','Last name10','MayPassword_10','adress10',3);
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

-- Dump completed on 2024-03-17 22:32:58
