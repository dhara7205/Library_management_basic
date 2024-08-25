-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.35

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
  `userId` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `EmailID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('Dhara_patel','Dhara Patel','Diya@123','dharapatel23@gmail.com'),('Diya_123','Diya Raval','Diya@123','diyaraval11@gmail.com');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `BookID` varchar(50) NOT NULL,
  `BookName` varchar(50) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Author` varchar(50) DEFAULT NULL,
  `Copies` int DEFAULT NULL,
  `Available` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`BookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES ('B001','Introduction to Algorithm','Data Structure and algorithms','Ronald Rivest',5,'yes'),('B002','Twisted Hate','Novel','Ana Huang',20,'yes'),('B003','Learning SQL','DataBase Management','Alan',10,'NO'),('B004','Twisted Games','Novel','Ana',20,'yes'),('B005','The Da Vinci Code','Novel ','Dan Brown',2,'Yes'),('B006','Angels and Demons','Novel','Dan Brown',5,'YES'),('B007','Twisted Love','Novel','Ana Huang',2,'Yes'),('B008','Twisted Lies','Novel ','Ana Huang',1,'yes'),('B009','A Good Girls Guide to Murder','Novel','Holly Jackson',3,'yes'),('B010','Good Girl Bad Blood','Novel','Holly jackson',4,'yes'),('B011','As Good as Dead','Novel','Holly Jackson',3,'NO'),('B012','One Indian Girl','Novel','Chetan Bhagat',5,'Yes'),('B013','400 Days','Novel','Chetan Bhagat',3,'Yes'),('B014','The Notebook','Novel','Nicholas Sparks',5,'Yes'),('B015','Ugly Love','Novel','Collen Hoover',1,'Yes'),('B016','The Love Hypothesis','Novel','Ali Hazelwood',6,'Yes'),('B017','The American Roomate Experiment','Novel','Elena Armas',5,'yes'),('B018','Introduction to Algorithms','Datastructure and algorithms','Ronald Rrevies',3,'yes'),('B019','Problem solving with Algorithms','Datastructure and algorithms','Bradley N Miller',3,'yes'),('B020','Advanced Datastructure','Datastructure and algorithms','Peter Brass',7,'yes'),('B021','Fundamentals of Database','Database Management','Ramez Elmasri',3,'yes'),('B022','Introduction to Database','Database and management','Atul Kahate',6,'yes'),('B023','Half Girlfriend','Novel','Chetan Bhagat',2,'No');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reader`
--

DROP TABLE IF EXISTS `reader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reader` (
  `ReaderId` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `ContactNo` varchar(50) DEFAULT NULL,
  `IssueDate` varchar(50) DEFAULT NULL,
  `ReturnDate` varchar(50) DEFAULT NULL,
  `BookId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ReaderId`),
  KEY `BookId` (`BookId`),
  CONSTRAINT `reader_ibfk_1` FOREIGN KEY (`BookId`) REFERENCES `books` (`BookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reader`
--

LOCK TABLES `reader` WRITE;
/*!40000 ALTER TABLE `reader` DISABLE KEYS */;
INSERT INTO `reader` VALUES ('B007','Dhanashree','4566732312','17/02/2024','7/04/2024','B010'),('B008','Ishan','3456743325','15/02/2024','7/04/2024','B011'),('R001','Rohan','9456737767','22/03/2004','24/04/2024','B002'),('R002','Dhara','4563875635','30/03/2023','5/08/2024','B004'),('R003','Aadish','4234567834','20/07/2023','7/09/2024','B005'),('R004','Diya','4234333333','20/07/2023','7/09/2024','B006'),('R005','Pearl','2222333333','19/07/2023','7/02/2024','B008'),('R006','Rhythm','1231231234','04/04/2024','7/02/2024','B009'),('R009','Parth','567678564','13/03/2024','17/05/2024','B015');
/*!40000 ALTER TABLE `reader` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-24 10:37:29
