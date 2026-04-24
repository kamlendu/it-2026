-- MySQL dump 10.13  Distrib 5.7.42, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.7.42

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
-- Table structure for table `ACCT_HOLDER`
--

DROP TABLE IF EXISTS `ACCT_HOLDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACCT_HOLDER` (
  `id` bigint(9) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(1000) DEFAULT NULL,
  `LAST_NAME` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACCT_HOLDER`
--

LOCK TABLES `ACCT_HOLDER` WRITE;
/*!40000 ALTER TABLE `ACCT_HOLDER` DISABLE KEYS */;
INSERT INTO `ACCT_HOLDER` VALUES (5,'David','Hefelfinger'),(6,'Prakash','Chandra'),(7,'Anil','Sharma'),(8,'John','Abraham');
/*!40000 ALTER TABLE `ACCT_HOLDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `addressID` varchar(255) NOT NULL,
  `ZIP` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL,
  `STREET` varchar(255) DEFAULT NULL,
  `customerid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`addressID`),
  KEY `new_fk3` (`customerid`),
  CONSTRAINT `new_fk3` FOREIGN KEY (`customerid`) REFERENCES `Customer` (`customerid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
INSERT INTO `Address` VALUES ('1','395007','gujarat','surat','13','1'),('2','432322','dsa','cscds','DSZdsfc','1');
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AuthorMaster`
--

DROP TABLE IF EXISTS `AuthorMaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AuthorMaster` (
  `AuthorID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Degree` varchar(50) DEFAULT NULL,
  `Specialization` varchar(30) DEFAULT NULL,
  `Birthdate` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`AuthorID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AuthorMaster`
--

LOCK TABLES `AuthorMaster` WRITE;
/*!40000 ALTER TABLE `AuthorMaster` DISABLE KEYS */;
INSERT INTO `AuthorMaster` VALUES (7,'kanetkar','MS(Computer)','OOP','10-07-1958'),(6,'Albert Schwartzer','MS','SE','31-04-1956'),(5,'Sudhir Pathak','M.Sc','Networks','12-09-64');
/*!40000 ALTER TABLE `AuthorMaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BookMaster`
--

DROP TABLE IF EXISTS `BookMaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BookMaster` (
  `BookName` varchar(50) DEFAULT NULL,
  `AuthorName` varchar(50) DEFAULT NULL,
  `PublisherName` varchar(50) DEFAULT NULL,
  `Synopsis` varchar(100) DEFAULT NULL,
  `BookID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`BookID`)
) ENGINE=MyISAM AUTO_INCREMENT=358 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BookMaster`
--

LOCK TABLES `BookMaster` WRITE;
/*!40000 ALTER TABLE `BookMaster` DISABLE KEYS */;
INSERT INTO `BookMaster` VALUES ('Way to Success','R. Adams','RTE','A motivational book',323),('Software Engineering','M.K. Agrawal','TMH','A book on SE',284),('Five Point Someone','Chetan Bhagat','Rupa and Company','Three Idiots',293),('The Scion of Ichhwaku','Amit Tripathi','TMH','A mythological Saga',330),('Himalayan Intern','Shri M.','Roopa Publication','A book on Spiritual Sciences',343);
/*!40000 ALTER TABLE `BookMaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bookbank`
--

DROP TABLE IF EXISTS `Bookbank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bookbank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bookbank`
--

LOCK TABLES `Bookbank` WRITE;
/*!40000 ALTER TABLE `Bookbank` DISABLE KEYS */;
INSERT INTO `Bookbank` VALUES (1,'sdsadsa','sadsd',234);
/*!40000 ALTER TABLE `Bookbank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Books`
--

DROP TABLE IF EXISTS `Books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Books` (
  `BookName` varchar(50) DEFAULT NULL,
  `AuthorName` varchar(50) DEFAULT NULL,
  `PublisherName` varchar(50) DEFAULT NULL,
  `Synopsis` varchar(100) DEFAULT NULL,
  `BookID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`BookID`)
) ENGINE=MyISAM AUTO_INCREMENT=149 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Books`
--

LOCK TABLES `Books` WRITE;
/*!40000 ALTER TABLE `Books` DISABLE KEYS */;
INSERT INTO `Books` VALUES ('Let Us C','Balagursamy','TMH','A really good Book',148);
/*!40000 ALTER TABLE `Books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CHECKING_ACCT`
--

DROP TABLE IF EXISTS `CHECKING_ACCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CHECKING_ACCT` (
  `ID` bigint(19) NOT NULL AUTO_INCREMENT,
  `ACCT_BALANCE` double DEFAULT NULL,
  `ACCT_NBR` bigint(19) DEFAULT NULL,
  `SAVINGS_ACCT_NBR` bigint(19) DEFAULT NULL,
  `ACCTHOLDER_ID` bigint(9) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_CHECKING_ACCT_1_idx` (`ACCTHOLDER_ID`),
  CONSTRAINT `fk_CHECKING_ACCT_1` FOREIGN KEY (`ACCTHOLDER_ID`) REFERENCES `ACCT_HOLDER` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHECKING_ACCT`
--

LOCK TABLES `CHECKING_ACCT` WRITE;
/*!40000 ALTER TABLE `CHECKING_ACCT` DISABLE KEYS */;
INSERT INTO `CHECKING_ACCT` VALUES (7,900,1234,1123,5),(8,50000,2234,2123,6),(9,20000,3234,3123,7),(10,5000,4234,4123,8);
/*!40000 ALTER TABLE `CHECKING_ACCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `customerid` varchar(10) NOT NULL,
  `FIRSTNAME` varchar(100) DEFAULT NULL,
  `LASTNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES ('1','Vinay','Pathak');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EJB__TIMER__TBL`
--

DROP TABLE IF EXISTS `EJB__TIMER__TBL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EJB__TIMER__TBL` (
  `TIMERID` varchar(255) NOT NULL,
  `APPLICATIONID` bigint(20) DEFAULT NULL,
  `BLOB` longblob,
  `CONTAINERID` bigint(20) DEFAULT NULL,
  `CREATIONTIMERAW` bigint(20) DEFAULT NULL,
  `INITIALEXPIRATIONRAW` bigint(20) DEFAULT NULL,
  `INTERVALDURATION` bigint(20) DEFAULT NULL,
  `LASTEXPIRATIONRAW` bigint(20) DEFAULT NULL,
  `OWNERID` varchar(255) DEFAULT NULL,
  `PKHASHCODE` int(11) DEFAULT NULL,
  `SCHEDULE` varchar(255) DEFAULT NULL,
  `STATE` int(11) DEFAULT NULL,
  PRIMARY KEY (`TIMERID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EJB__TIMER__TBL`
--

LOCK TABLES `EJB__TIMER__TBL` WRITE;
/*!40000 ALTER TABLE `EJB__TIMER__TBL` DISABLE KEYS */;
/*!40000 ALTER TABLE `EJB__TIMER__TBL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GROUPS`
--

DROP TABLE IF EXISTS `GROUPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GROUPS` (
  `ID` smallint(6) NOT NULL AUTO_INCREMENT,
  `GROUP_NAME` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GROUPS`
--

LOCK TABLES `GROUPS` WRITE;
/*!40000 ALTER TABLE `GROUPS` DISABLE KEYS */;
INSERT INTO `GROUPS` VALUES (1,'admin'),(2,'users');
/*!40000 ALTER TABLE `GROUPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PERSON`
--

DROP TABLE IF EXISTS `PERSON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PERSON` (
  `IDENTITY` smallint(6) NOT NULL AUTO_INCREMENT,
  `USER_ID` varchar(15) NOT NULL,
  `PASSWORD` varchar(15) NOT NULL,
  `GROUP_ID` smallint(6) NOT NULL,
  PRIMARY KEY (`IDENTITY`) USING BTREE,
  KEY `PERSON_FK` (`GROUP_ID`),
  CONSTRAINT `PERSON_FK` FOREIGN KEY (`GROUP_ID`) REFERENCES `GROUPS` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PERSON`
--

LOCK TABLES `PERSON` WRITE;
/*!40000 ALTER TABLE `PERSON` DISABLE KEYS */;
INSERT INTO `PERSON` VALUES (1,'admin','adminadmin',1),(2,'user','useruser',2);
/*!40000 ALTER TABLE `PERSON` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT`
--

DROP TABLE IF EXISTS `PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT` (
  `ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PRODUCTNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT`
--

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
INSERT INTO `PRODUCT` VALUES (1,'A washing device','Washing Machine'),(2,'A Coolant','Refrigerator');
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SAVINGS_ACCT`
--

DROP TABLE IF EXISTS `SAVINGS_ACCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SAVINGS_ACCT` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `ACCT_NBR` bigint(16) DEFAULT NULL,
  `ACCT_BALANCE` double DEFAULT NULL,
  `CHECKING_ACCT_NBR` bigint(19) DEFAULT NULL,
  `ACCTHOLDER_ID` bigint(9) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_SAVINGS_ACCT_1_idx` (`ACCTHOLDER_ID`),
  CONSTRAINT `fk_SAVINGS_ACCT_1` FOREIGN KEY (`ACCTHOLDER_ID`) REFERENCES `ACCT_HOLDER` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SAVINGS_ACCT`
--

LOCK TABLES `SAVINGS_ACCT` WRITE;
/*!40000 ALTER TABLE `SAVINGS_ACCT` DISABLE KEYS */;
INSERT INTO `SAVINGS_ACCT` VALUES (5,1123,1100,1234,5),(6,2123,20000,2234,6),(7,3123,10000,3234,7),(8,4123,8000,4234,8);
/*!40000 ALTER TABLE `SAVINGS_ACCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SEQUENCE`
--

DROP TABLE IF EXISTS `SEQUENCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SEQUENCE` (
  `SEQ_NAME` varchar(50) NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SEQUENCE`
--

LOCK TABLES `SEQUENCE` WRITE;
/*!40000 ALTER TABLE `SEQUENCE` DISABLE KEYS */;
INSERT INTO `SEQUENCE` VALUES ('SEQ_GEN',0);
/*!40000 ALTER TABLE `SEQUENCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stats`
--

DROP TABLE IF EXISTS `Stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stats` (
  `ClientIP` varchar(20) NOT NULL,
  `ServerNAme` varchar(20) NOT NULL,
  `url` varchar(50) NOT NULL,
  `dateTime` varchar(50) NOT NULL,
  `requestno` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stats`
--

LOCK TABLES `Stats` WRITE;
/*!40000 ALTER TABLE `Stats` DISABLE KEYS */;
INSERT INTO `Stats` VALUES ('0:0:0:0:0:0:0:1','localhost','/ListenerApp/','Mon Jan 24 23:53:11 IST 2011','1','Initialized'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/','Mon Jan 24 23:53:13 IST 2011','1','Destroyed'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/BooksOrder.html','Mon Jan 24 23:53:41 IST 2011','2','Initialized'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/BooksOrder.html','Mon Jan 24 23:53:41 IST 2011','2','Destroyed'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/OrderServlet','Mon Jan 24 23:53:50 IST 2011','3','Initialized'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/OrderServlet','Mon Jan 24 23:53:51 IST 2011','3','Destroyed'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/OrderServlet','Mon Jan 24 23:54:27 IST 2011','4','Initialized'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/OrderServlet','Mon Jan 24 23:54:27 IST 2011','4','Destroyed'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/OrderServlet','Mon Jan 24 23:54:42 IST 2011','5','Initialized'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/OrderServlet','Mon Jan 24 23:54:42 IST 2011','5','Destroyed'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/ContextAttribute','Mon Jan 24 23:56:30 IST 2011','6','Initialized'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/ContextAttribute','Mon Jan 24 23:56:30 IST 2011','6','Destroyed'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/ContextAttribute','Mon Jan 24 23:56:44 IST 2011','7','Initialized'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/ContextAttribute','Mon Jan 24 23:56:44 IST 2011','7','Destroyed'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/ContextAttribute','Mon Jan 24 23:57:05 IST 2011','8','Initialized'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/ContextAttribute','Mon Jan 24 23:57:05 IST 2011','8','Destroyed'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/ContextAttribute','Mon Jan 24 23:57:16 IST 2011','9','Initialized'),('0:0:0:0:0:0:0:1','localhost','/ListenerApp/ContextAttribute','Mon Jan 24 23:57:16 IST 2011','9','Destroyed');
/*!40000 ALTER TABLE `Stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subscription`
--

DROP TABLE IF EXISTS `Subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subscription` (
  `TITLE` varchar(255) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TITLE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subscription`
--

LOCK TABLES `Subscription` WRITE;
/*!40000 ALTER TABLE `Subscription` DISABLE KEYS */;
INSERT INTO `Subscription` VALUES ('Filmfare','Magazine'),('IEEE','Journal'),('Indian Exptress','News Paper'),('sarita','Magazine'),('Times of India','News Paper');
/*!40000 ALTER TABLE `Subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERMASTER`
--

DROP TABLE IF EXISTS `USERMASTER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USERMASTER` (
  `USERNAME` varchar(255) NOT NULL,
  `ABOUTME` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `LASTNAME` varchar(255) DEFAULT NULL,
  `FIRSTNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USERNAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERMASTER`
--

LOCK TABLES `USERMASTER` WRITE;
/*!40000 ALTER TABLE `USERMASTER` DISABLE KEYS */;
INSERT INTO `USERMASTER` VALUES ('VIKAS','hello','vikas@abc.com','Patel','Vikas','vikas'),('d','ds','d','ds','sdsa','ds'),('ghgh','','','','hkhk','nbmmm'),('anil','sadxsdxs','anil@sacdsa.com','pandya','anil','anil'),('tttttt','fd','hgfh','ffgfhg','gfgf','fdff'),('sd','q','sd','dswd','dsa','sd'),('vimal','hi','vimal@sds.com','Patel','Vimal','vimal'),('shailesh','dsdsd','shailesh@xdsa.com','Tripathi','Shailesh','shailesh');
/*!40000 ALTER TABLE `USERMASTER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserStat`
--

DROP TABLE IF EXISTS `UserStat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserStat` (
  `hostname` varchar(50) NOT NULL,
  `visits` int(11) NOT NULL,
  PRIMARY KEY (`hostname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserStat`
--

LOCK TABLES `UserStat` WRITE;
/*!40000 ALTER TABLE `UserStat` DISABLE KEYS */;
INSERT INTO `UserStat` VALUES ('127.0.0.1',5),('0:0:0:0:0:0:0:1',3);
/*!40000 ALTER TABLE `UserStat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(40) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'admin@mail.com','admin','jGl25bVBBBW96Qi9Te4V37Fnqchz/Eu4qB9vKrRIqRg=','admin','admin',1,'2018-09-04 01:49:43','2018-09-04 01:49:43'),(2,'user@mail.com','user','BPiZbadjt6lpsQKO4wB1aerzpjVIbdqyEdUSyFud+Ps=','user','user',1,'2018-09-04 01:51:55','2018-10-16 06:46:30');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_role`
--

DROP TABLE IF EXISTS `account_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `account_role_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `account_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_role`
--

LOCK TABLES `account_role` WRITE;
/*!40000 ALTER TABLE `account_role` DISABLE KEYS */;
INSERT INTO `account_role` VALUES (1,1,1),(2,2,2);
/*!40000 ALTER TABLE `account_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addr`
--

DROP TABLE IF EXISTS `addr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addr` (
  `ad_id` int(11) NOT NULL,
  `temp_id` int(11) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ad_id`,`temp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addr`
--

LOCK TABLES `addr` WRITE;
/*!40000 ALTER TABLE `addr` DISABLE KEYS */;
/*!40000 ALTER TABLE `addr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `AddressId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Street` varchar(80) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Zip` varchar(10) NOT NULL,
  `CustomerId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`AddressId`),
  KEY `fkcustadd` (`CustomerId`),
  CONSTRAINT `fkcustadd` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'123','surat','guj','1234',8),(2,'A-9','Vadodara','Guj','3950',7),(3,'D-4','Surat','Guj','3958',7),(4,'123','surat','guj','1234',8),(5,'123','surat','guj','1234',8);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmaster`
--

DROP TABLE IF EXISTS `bookmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookmaster` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BookName` varchar(45) NOT NULL,
  `Author` varchar(45) NOT NULL,
  `PublisherName` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmaster`
--

LOCK TABLES `bookmaster` WRITE;
/*!40000 ALTER TABLE `bookmaster` DISABLE KEYS */;
INSERT INTO `bookmaster` VALUES (1,'Let Us C','Kanetkarzdsw','TATA publication'),(2,'Adv Java','P. Johnson','AVI'),(6,'Computer Networks','Stevens','TMH');
/*!40000 ALTER TABLE `bookmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `username` varchar(30) NOT NULL,
  `itemname` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES ('Kamlendu','Using MySQL on Linux'),('Kamlendu','Using OpenOffice on Linux'),('Kamlendu','Using Staroffice 7.0 on Linux'),('Kamlendu','Application Development With Oracle & PHP on Linux'),('vinit','Using OpenOffice on Linux'),('vinit','Using Staroffice 7.0 on Linux'),('vinit','Application Development With Oracle & PHP on Linux'),('Priya','Using MySQL on Linux'),('Shyam','Using Staroffice 7.0 on Linux'),('Shyam','Application Development With Oracle & PHP on Linux'),('Shyam','Using MySQL on Linux'),('Priya','Using OpenOffice on Linux');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (25,'Kamal','kamal@ewdew.dew','wwewq','9999'),(26,'dddfe','asdas@dssa.ds','asdfsdfrr','324324');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cust_subs`
--

DROP TABLE IF EXISTS `cust_subs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cust_subs` (
  `CustomerId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SubscriptionId` int(10) unsigned NOT NULL,
  KEY `fk_cust_custsubs` (`CustomerId`),
  KEY `fk_subs_custsubs` (`SubscriptionId`),
  CONSTRAINT `fk_cust_custsubs` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`CustomerID`),
  CONSTRAINT `fk_subs_custsubs` FOREIGN KEY (`SubscriptionId`) REFERENCES `subscription` (`SubscriptionId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_subs`
--

LOCK TABLES `cust_subs` WRITE;
/*!40000 ALTER TABLE `cust_subs` DISABLE KEYS */;
INSERT INTO `cust_subs` VALUES (8,1),(8,2),(7,5);
/*!40000 ALTER TABLE `cust_subs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `CustomerID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Kamlendu','Pandey'),(2,'kamal','pandey'),(3,'asasas','ssddsw'),(6,'satish','panchal'),(7,'Sushil','Yadav'),(8,'Rohit','Sen'),(9,'Alkeh','Patala');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept` (
  `deptno` int(11) NOT NULL AUTO_INCREMENT,
  `deptname` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `empno` int(11) NOT NULL,
  `ename` varchar(50) DEFAULT NULL,
  `salary` double(7,2) DEFAULT NULL,
  PRIMARY KEY (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'suresh',3242.98),(2,'Rakesh',8754.00),(5,'harish',5167.32),(6,'Sapna',3456.00),(7,'Stoss',9000.00),(8,'Rahul',10000.00),(10,'Vishal Desai',10000.00),(11,'Sapna',9500.00),(12,'Smita',3000.00),(13,'Rauf',4990.00),(15,'Param',4000.00),(16,'Swati',5000.00),(17,'Alkesh Patel',7000.00),(20,'Arvind',40000.00);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expired`
--

DROP TABLE IF EXISTS `expired`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expired` (
  `expirycount` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expired`
--

LOCK TABLES `expired` WRITE;
/*!40000 ALTER TABLE `expired` DISABLE KEYS */;
INSERT INTO `expired` VALUES (125881);
/*!40000 ALTER TABLE `expired` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `GROUPNAME` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES ('Admin','admin'),('Supervisor','user');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grouptable`
--

DROP TABLE IF EXISTS `grouptable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grouptable` (
  `groupname` varchar(50) NOT NULL,
  `userid` varchar(10) NOT NULL,
  PRIMARY KEY (`groupname`) USING BTREE,
  KEY `new_fk_constraint` (`userid`),
  CONSTRAINT `new_fk_constraint` FOREIGN KEY (`userid`) REFERENCES `usertable` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grouptable`
--

LOCK TABLES `grouptable` WRITE;
/*!40000 ALTER TABLE `grouptable` DISABLE KEYS */;
INSERT INTO `grouptable` VALUES ('Admin','admin'),('Supervisor','user');
/*!40000 ALTER TABLE `grouptable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `IMG` blob,
  `IMG_ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`IMG_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (_binary 'ÿ\Øÿ\à\0JFIF\0\0\È\0\È\0\0ÿ\Û\0C\0	\Z!\Z\"$\"$ÿ\Û\0CÿÀ\0\0v\0°\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0õQöJÁeg\ç VDÓ¸<±õ«²Ö¼?#9’,¢œ\äü«Ÿ—\Ã:‹Ë„( ÷jú\Èb©µ«>*x:‰\é#Ï“\Ü\ïª%º”Ç´³Ó­h\Şø[Tµ\Ú\áRHWùj\Ğ/K\rŠ\Òg¦\Ô<\Õıb›WLŸª\ÕN\Î&[\\JO\ŞoÎš²¿$;~&¯6z¹2Å°ö½iWAòúŸZN¼w¸\Ö§b²\Ï7—1\ÈúÓ–I0>gü\ëR=4µm¤cÔ‘V­,·(#\Z¹\ïXKo$†<2\Íò±2õÀ\ÆjÀšL}\ésrMt	k|\í\Ì·5a-\áÊµØLœß¥dñ‹±·\Ô_s–Nx\Ï=<=\Û \Ë2w\Éj\êd¹±B­f<\ãŸs{œCoÇ¹,S–\ÑƒŒw‘\Å\Ğ,¤Lÿ\0)\åsÁ\íQı¢üœ—¸^1÷§\ç\Ş\\.\ØÁœAş\ß\ìN\í\Â\Çkr\ìGECUõ„·²3ú«\rÙœ\×Í·Oƒû\â7õ\äÿ\0œS\ã}LùJ3\ØLÙ­ûO\ëS|\ÍnññÀaŞµ¬>ß²µ\İ\Å\nc\î \Ë~uŒ±ôcö‘´2ú\Òû,\åK¤\\Í¬]é„™¿Æ’y\îÿ\0Ñµ=CgL´\íùñ^‰iğÿ\0M†E‘\æ‘\Ø{VŒ~Ñ¢`Y[Ô\Ø¹¥š\Ò\é©\Õª£Z\éó<\Ò9\îm\ÙOö¥ü\Ï\Üù\ïú\ÖÆ‘q$¦D–şc\È\äW Z\èú-£‡H\"\Ş:sW>\Õk\0!(ôQŠ\çf¥¢‰\ÑO,\å\ŞG3om\âY£]­2gûò‘ıkn\ÇI˜BõõÄ®NHYRM¬B?*\×c?\"RkmR{+J(n\îi\ËoQ=zU»{@	%K\n\æi\Üôô¬{\Åk‚•±\ëõ”S¾\æ\Í\Æ\Ûu`\ïX¥UŒ•ƒ$W(‰ğA\ÆsŠ\İM$›€ù\'\á^’\Â=¿4)Á\íÚºUh\Ó\ĞÁÑ•GvqS[I#ó	#\Ğdâ‘­\'û\Ğ\Æ\ÌÇƒƒÀş•Ù?\æ%# O\\b¬¼h˜“g<š—Œ\ìÕ³‰†Ğ¸Um\Şâ¤’\Úúq#§aŠ\ê\Äz”Ïµ=¡=¤U\Çz‡Šò.8^—98ô;\é0j¯÷½*Õ¯…dy.J·õ\Ò$g§šqR+¤Cy\â³xº\rŸS>\ß\Â:x§vc€ñZVºo\Zq\×\æ¨\äº\È\'›­4›Y\'¹«b\'NœªT•¢•ß¢4*i\Ù#J\Ş=6\İIŠcQ\É8\0Æ©\İx¯\Ã\Ö\ÅMjÁYòy\Ã\æ d\ã×‚+7R)¢*%L`©û§Ú±\Ú\â+Xü«H!¶BI+\Z…\îp?y\Ô#˜b\×:Jœ^\Ü\É\ÊV\îÒ”Rô»ó5”\è\ÒZİ¿-\äÎoéˆ…\Ö\áW*?U¤ñR4~dO¡ş$m\Ãô®V\â\æRI˜ö®SVĞµ&\Ô\×VğÎ -nŸOu•@ÀÊ¿\Ìb·¨±:Ø—\ÓZ\É\Å8\Ê+½œ¤¤—[4\ÖöÑ™*´\ë>JwŒº]¦Ÿ•\ì¬şó\Ğ\î¼\\\Ã#\Ìü«.\ã\Å\Òg»s\Ås\ï‘DB»Àl\È\È\Î\r5ler\Ö\ÇÒ¾’j)DñUÛ±©\'Š¯¢¨^µZ_jŸŸmS\Ï\Êœó\Å\Ö\î\ï…ù³\ê8­•:I]#™Õ¬İ›$:½ô§™[ŸJp¸º‘‚ù\Ç?\\Ó¦Ó§E.¾V÷Nj[k†p\Éh¥]J5´®z\Ü\Ö\èX\îg\Ï^µFxbRr¿PO«\"\È@l\äô5R}b2w~5\âû)ò«·(l*Ÿni¢I7pq\ì;V;ê©¿#Œu¤]V<üÄŸ¡ªt¥\Øh÷6‰\á‹Ç½4Ğ¯SŠ\Ë:¤`p\ÜRi\Ä\Ø\Ü\Ì=A¨öR\ìW¶sr>ë·œ÷©|¢T\ä€}«\ruuEÀl\ãûÇ¥Dú\êù\çœ•›£PµZ©½2*ó¯52®23\ëXm­‚x\ïL:¾Xg\éMP™/Zwt\Î\ìüê™»ec\åÁ#5VMS\Í˜\Ø\ã¹4Ÿm\ÏH‡¯´T´´‘“«®Œd\Ó8\às\ê\0ª¾]\Ä\Ã	u\ÍiÅ½ğaT\r\ß\ĞU¤\ÂdR;õN¯!>\Í\Ïvs^D\Î\ånuT2Z\Ş#\î1:\Ç\"»HmÃ‘,\ÛI\ÇÒ§™´õmÎ§w·4¾¹nƒú\Ö\çg¢\İ\\\Ä%G(Á¾\ë¡£\áQos	e=$L\ÌWF\×öò&\Ô\ìJ…Œ`—\ã8\êMD±s“\Õ,!³1­\ì­\"Et®<>9\ÏÒ·-´›W_Üº=­VZ…\Í\Í\ÔC\0=(\Z\æ—d\åË¿Ü¶D\çR\rËŒi\Ã{—L™8ŒJ\ÓK›\Í,\ÑÄ£\é\\\Í÷b\r‹d\İÛ“Y2ø§WRVf‰;*šÚ=ô0«‹\Ã\ÃmK\×SbBNHªr\È[Œ\Z·r¸vùj´Ä‘Œ••\ë\Ù<[}J’–\äÆ¢2¹<U–NO\Üc¢\ç?…Å¦È•œú€iWx<õ\'½HÅ±Ÿ.Ÿ¨\Îy&²“¶Æ‰\\\0f\n\Ç<S–	1†_Ö­DE\nA\'®1\ÅI%¸ú\×4ª§r²ÀJõ^µ\"C$®j\ì0«>C“Ü€1úR˜JùG\'?69¬K›{+jV4nrHú\ÓÑ£û¹@O¯AO3½a_¡¨\İ0ƒ\Ø\î¢÷[k³*ü°¼m\ãøz}w[™\í\ì\í\Æ\\¬%2\àI!Fz³(\ã9­ ñ¨\Æ\Ös\ê«\ÅV\Ô?\Ó\í\Ş\Î\ê\Ê+›WB¨Of¨>•7Z\"£;5\Ìôò)\ézäš¶¦\ê¶óŸ³j±\İ@I\Æcu§²8<úÔ}\Óğ\Ó~X5[MÑ­ô½6\ÛLÓ¬\Ö\Ê\Ù\nA\n*sø“O{y\'a\'\ë[%\îSm·q\æ[°§Ä“U¤–é—™_\Ù\â­\Åitùà¨«\é!ÌŒª õ\ÎsO\Ü9\'-ŒS¼“ºB\Üf«Hƒ9 g\Ô\×Qı™§FŒ%˜ds\ÇST$ŠÁ÷a‰\ÏJ\Ò„öF50\í|L\Äò\Ô_¥Ka½+QD0«\Îsœt§F°ùÀ°Ş¹±[Æµúò£n§Mq¤\Ün,B \ÏsŠ¥&ù¦N¹ Uû\Övr\Ìú\ç5Eœt\éXó\Íõ:”`ºû$ c\ïz\Ó\Ş!\Ëz{IŸ\â õ\ÆqQ6\İÛ°[×šW}\Ê\\½…dER\áP¤Qnõ=ğ9©	r0±\ã<ô§Cky3|‘9?LqPİ·e«\Ëd)*>X÷/»w¥A…\\†\'8j-õ\ÆXªûg&¦ş\ËX\Ñ\îö±\Ô5„ª\Ó[3xS¨÷Ca}2l²;÷\ÇOÊ«\êr\ÆU¿²\à’{‰>\àrV8ñÔŸğ\ëÖ­ª\è°\Æo4\ç°\Î)Q³BZ8\\ıp\é\\òNJÑ½û4\åI9¤\Ò\éÿ\0\rı3&\ÛJ\Ö÷“x“\Ér	Á§\ÆQ¦_%‡\à*+ûÿ\0øf	.u&\ß]\Ò\0Ä—\Ú4l·p/v’Õ‹oQœ““€~J\Ô}E›;bõ¨\êd!•T^iG\×Wó“›45KGü¡ş)\'øú“\èwZUõª\ßÁ,7¶³\Æ$·\n:†–\êò“b\Ã?\ì\Öl’€;X#µB9!…,~ó`p	<ıIõ¨\ØNq…bI\ÇµTº\È\å•T´‰v{\Ò\Ûv\á1\Ôm\êj–FGprš‰\í\ïw2Hª$ı*Šã«¤§ğ5¤c\Ô\ÆR—Th-Ä‹ó5 \çõVMEG\Êe;K\rÊ‡Æ©\É¯Ş¨ö62€{ãŠµN;\êÌ’[—˜»‚y\0t\ÃÚ«0>ù©\0ô\Îs\Ób\ÅB±>Â·M#I²8‘³´Ù©™¤\'jD´¹8\ŞC˜Z»o¥\ŞÙ\âqO\Ú\Åu\'\ÙIô=*k[V2HU˜z\Õ+¤·L&ü¢ú\í·\ÜW\Ûw(-ƒ#ŸÂ¼u7«=·8¥¢v-prª ŒVsıŸ\Ëq\ÇLSÜ‚	]Ş½1Qa\Ëw9\ì;\×Tl–\ç,Şˆ$P\È\ÑO¸š÷§…˜¢ô\Â\àSb°½™¾HdP?‰\ÑO\Zu\Øû\áØ¸©r§Õ”£Q­™VV™\Æ$–W>\îj»D½Iık_û.pfUÀšE\Òn°¤(\Ï\ŞsúRöğ]E\ì\'.†W—vœ})Dg8\0\äñZ‡L•(ufÿ\0f¦‡N)mÁ›ø†:~5/nZ\ÃÍ½i5-(xº\ßÂ¯u!Õ§²kÕ!fU[i,Ã…9\ÆrsÒºT\Ó\ì­\×÷Ûœ²ÿ\0{­X\"\åcÚ²\íùp0*‚\\\äœıMa*\Î]ltF’\Ù-\â81E\Zq÷Ÿ“O{TÂ©Ÿ>»R• •˜sS™WµsÎ­\æñ§~…_³¤c\Å{ôÉ¦›·\É,€œ\ãµh¢ª\äûwÓ·x¬ı»/Ø£>$‚\ÌZzV=MK\åy¯–µˆ/¸\ÍZó#SĞƒNó\ã\Æ\0?•Kª\î?fŠieo–õSÅ¦©Á.\É\ë°be\Î0´ıò`c­\Öl8ŒM&\Óv÷úš·’–ú\â Võ®M¶G\Îi©M\î\ÈpŠ\èXºŠ7$¹ª“[Z\ã,ÿ\0:–úM®Fp{V|—œ\ZÑ¹w&<½A¬¬\Ï‘O n)¶útÎ²¤²¼ñLi\İI$}i¯xzƒG=KZ\årS¾\ÅùŒ\Òg\ç R\Â8Àú\Öa¾äŒŒ\Ñö x+;H»\Ä\Ôb\åöŸÆ«\Ï,iÀbq\ÍR39#>¹¦·\Ì:®i¨\Ûry»µÌ£ıZ¨÷&¤Ye+œŒúUo/ıh§BÜª½]su.D’±\ÛÉ©ÀÀû\Ãòªª’\Ëf—scú\Ö.Mõ5JÅ¡·=ª\'`3\Å@\ÅÀ\'OL\Ô[İºPU\Ë\r*¼Æ›\æ\ÆŒúc9#€¹¤À\Ç\ÉO@\ÔsJ™ŸÂ›\çI¦3À\Ç\à*hp\Ë`\Ùî…¨\Ñ0\ÎN\n—\í\nF9¦J»d(ú\Ôh\äò*•ˆm–R`q\Ø{š³o(\Èù¸ª*\í\ÔF§\Ô\ã5f)ú\0 {b­\"‹—3JKúŸğ¬›ı7Z[Ø–\ÓO\Ó\'±(L\Ó\Ë$r¡Á\ác°o\á\ä¸\êxã’Š\êPFvZK¥N†‹ö‰ş•iò¦#\í“şQQÊ[ı•;óEÿ\0}ğ¦.\éF€ó\İ\ÏøQE>T!©csüFz\î?\áS\0†\'œ\î4QXTVzSŠ°¢\Ñ|Ê¬{\æ¤,@Ç¥V6¹¢\Óa­8²sÚ y‰=\Çùÿ\0\ëQEŠ&M‘Hdø°±\çø±\Ç4QNIX˜½EVs‚ª¼úšWó\Ùº\ÑEE‘wc~¥²i\Ñ\ïé»·­R\è¤]\Än\äô\ëJ‘.ıŞ´QEÁ¤O\Z|¹8\íV\à^\âŠ)¦Lÿ\Ù',1),(_binary 'ÿ\Øÿ\à\0JFIF\0\0\0d\0d\0\0ÿ\ì\0Ducky\0\0\0\0\0\0\0ÿ\î\0Adobe\0dÀ\0\0\0ÿ\Û\0„\0\r\r\r!!   &\')\'& 226622AAAAAAAAAAAAAAA((3%    %3-1)))1-883388AAAAAAAAAAAAAAAÿÀ\0\"\0ÿ\Ä\0£\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1AQaq\"‘2¡±ÁBR#\Ñbr3ğ\á‚C’$¢²\ÂSñ\Òs“4cƒD\0\0\0\0\0\0!1AQaq\"‘2ğ¡±Á\áñBR\Ñbÿ\Ú\0\0\0?\0c\Ô2ºn4\Ç\"6I^û¡`\×˜X\í+\Æ\İõ\ĞI>lWb(»\\€\Æ\×šŸ§ª\âÁŠ\È-”ğ®ô\Üxò½Y\Òs2c’\É\Ê\r\0VD\rK\×P–\î\Z\Ö	\'¥µG¹‘a\Ç\ÕM#ª?p\Û^B³s¢¾d™\Ó`°G’9½;–vC¤»šü«K™‡±4\ÓJcU2\í$\ÇlC‰\ÓN\ÊW,Í¹‚J\ïû{»{M5\\\Íq\êR…)\ä\ï¥pdD\Ì\Î\'vÕ…Ç¦‰\Â1~d›šÒ¦ü(G=k$™)xfxÂ¸.•%n/ğöÖ‹¦t§X\Ì\Ùr\Ê\Ï+oXÄ¡Tğ½ˆÖ´InCO]†Kc4‰\ÙK¡¸÷P)I)ÂŒ\Ê…uPq¼²n+¦¼i„¸¸óF\"%–1Ád\Çg\æ¥ù=($*1Qš(ˆò‹\é´nc~\Ú,±V\'\"Ş§>PÏ†i\'_–B­;\r7?•ƒpv®¤pq‘£š\Ë`\ä]P°\åÂ¥\Óğ£”|\ädş¤1‘´BOM—õ)$\Zb°ÂdU\n\Íñ\Î\Ü\ë>²–ÿ\0±«½k„¶ı\Åx\Ğú@Á\èŠG‘¤.Wóİ»F´TK¥2Z,¸[S0[\×Cz%„NÀ¶¤pÔŠ\ÇõN‹’ü²3;2\Ë¯\Ä\îo˜ij¨\à\ÛÙ“<\Ô-P÷;ªbJË‰¯+³¥\Û\ìQ…]\Ë)³Qø€€Ã··¨\Öş«·\ßYï§“#g „\ÊP¿\Ì»°¾¨\0­\"!(€ª5™*5ğµRR\æv%\áCD¦x¢BÓº¤dX—!A–µ™‹\ägËˆc\Æng\n§‡XÓ„\è}9\'ù‚$·º™Ÿgô\î¢\ÒDHbÕ¤!\îm[\Ó\0¡-rS4˜˜f8ÿ\0~DÑ¯À¡}ô´?\Ô\Ø\É<#.â±£+)·}\ä\Ó3Ÿcff*Ş›lGm¯k\Ø\Ù~Ú§#„‘\\’\\p\nP½¸\ÔYÿ\0¦½Uşß¸š<§T\ê’\Ù=EÉ¼zkéªµü²…¾\Û\Şô\ë;\\Yeº\Æ-#X25´\×^b“õ&8ó¡\Ï\ê‘\Â\É‚\í.\ì‹mô“[\04?V\è«,Š\\>\ëU½H÷¸7ø>öSn\ÉaOQ\Å[\ËK¤QŒı9ú†k\åa:.3¨ı\Ãp\Èó _\îÖªo¦²IÜ³Ç§\ÔVAõyŸ$VIrKm=.\ß+\\yGo:|w./_¹\ä—++M$E\'VYn¦\Ã*E ÀPü;uò*…Â\ë?:dõ¤‚Eƒn\Ä.¡QXø÷Ö˜–| ±­Ü\rs\åİ­\\TA\0ƒ\ÄE>	¹–\Æí„ \Ã\á [)!Š\ífºó÷ğÒÿ\0Ä¡ùB©`Bz©¹-\×iS\ËKšs\èÄ¢èˆ¶\âv„quU|i\'…W \Ç{¬m\Èq\â9Râ“–Ä¥\ÌlFŸ¦·©’N§\Ëûl\"e¸:Û\ÖÖªz¼	4i)ûœ#\Êu]¨¬\ä9]/z÷3\ê<|œYa8\Ú\Çx\Ò\ä|:kZ\á!Xac´Ç£s¶‡Y´§ıÆ­ñˆ\í\ì\"\è½K¢\à\â$É\İÙ¤V\İ\ÛdóZ\Ä\ï§IŸ\Ó\ä\Ô\\˜^.ƒ‚-I³1 \Ã\ê±\Ê$Lx\'P…{®T~¶R\0>5,ó‰‹‘š¨²0/}Ie(ª«\ÃRx{h~Hq^9I\Ï\ìTıBNœÁ\ÃB!\0¤/‘)´±_ŠlR\ÚxPuhó¥e•\ÒH¤¹ô¼Á/oËºÆ±\ÒO#=\Øİ¸_ğ©g\àI¶ºq«\áIv—0mpw<^”…Õ¡b¡\Ö\ä…ü¦ü†\ÔvIy\'ù—ÛˆmºE`wr\ã\ï¬oN\ê\Óa²\îrñ’7¡::\Zú^$\"%m¤’Î¶\ïŸ¯7€9ºB­#\ì•$¶—¹ ±\çÎ¬|L\æ‰“¤®‚\Ú&Á÷›\Ó\n\â.-W\Åg¸¥‰d\ÂÈ½\ï\"\Ú\Ç@H\á\İCd\ãK$ycüÀ˜-¯bEÈ¿}h‚ª\r4¤ş&¼Ic‡\0\Ø\í7Ö—Ô®}…ı/§&:¬GU²†$Hó=¿)<4ªóòrq\"l©¡‰\\.6»ı=\Ç\ãm¹\Óf!T³ªº–&Àòi\Ômf\Å218²F	Š•`t\î5Z/BVl‰cuh\Ú3,ù‘\ÜX?˜(Bx\0Ò¯\È\ê\Ã£iG©Œ¨J\êË¼\Ø7…+\Âx\ß\æ›\Ñ_”k.\Ë˜Æ‚Á˜^ı÷£fÆŠX\Òx\Ã ¨$Ø•\ÕMû/Xsi\ë¹\Ğ\ëV6›¦G3«I4›“r‚¤+\Û\Ëì¶”›\ê6r&L±\ä,ßµk\íES\æ\rk_w:\Ô3¨$³\0y’@¤9\ÓE\æ\\\Î^D\ìtAd‹K3´–µkt\İpŒ|mrË\á9£ª@ßº\ï \İÁšÇ\ŞUÇ¡\ã\È\ÆYe—\Öp‚FV\0~\ØòpM´¡’n¡Àc2fv#ÿ\0\nÿ\0\Z\É\ê İ\Ø){…/]T¼7°ü[œn\'@\Å÷e·\Ê\n\no¥•\èòM\Ç\0\éø©¢ \ê\Òq½y,\ãø\ÓpC(e7V¸Ö³&|R\Ø\Æ\åı;Kt’(Ágek£j‚õœÉ‘\"iY(\nv\è¢\Âöµ\ëI×·\Ä\äm\ç´7ô–¬f4yR°€/ *ªN½\äTÙ¤¥µ—ƒMA“7d’S\Ì\Û\ìÀ•!¸‹r=ôwG\É\Ä\Û\ê\Z\ç÷Cn\0÷^\Æõ´¬·Ô¬\Ç*Ò!DR¥‰\n·\ã \âI¢”M¤Á¹rW?X\é\îfJ±¨d–F\Z/b¡¶¼N´oKŠ\Ø\Ù\å\Âôa#ö\æõ\Z\ì{XŸ\nA€‘Ï“ş\Ë8N—Q©Go}kVs P*‡•€\áaÊ¶²ñ\ÄUOp³7.‡Şœ`¸ü\í\æoy¢75\è9r`Å„Í“*\ÅüÍ¥\Ï`\æO…+\È\ë\Í$L\İ<m²’\â\î\Æ\ÚmNW\ï÷Vn*Xõ\çA¡ \Z6)2cTƒ2\\G½÷\ÃbH\æ,A¯\É\Õz\Ö#V\Èuh\ZÌ›·Y\ÔkÆ˜\ä\'\Ôñ\âG“&D\Æ6]\Ò\"1¿˜-´µT!d\Ù\â\áŒd6’i.K4“±7<\Ï%û*¬©\Ò\á½•7°\n\ÛÏ¹/XÎ—‰™\Õò–6–Glf‘˜©~ş\ŞË©}#“g\é\í\ë¡\áY]GwmH\à9ş \Äf?.­<`\Ûx+½Áµ¢±[©\Û) 4>M³1@„ù¯µC†ñ fúV	ñññC„–(\ÂK.¾mw‡\ãî¦#£\ÃÑ£‘#™¥\í,PW˜\Zö\Òh©KÔ«;\"h§Ç…\Õ¥¾ÕŒ±R.X\í<(\Èò÷0@¥¯{—ş \0Úº|ll“MJbb\Ñ\î\×kkŠ´31µˆ=”@rBş¡\Ô\Î\n+i¥.@º¯\í¥ù»ğZõd{\én\nH½ı¦­\êG¦C\ä\åÄŒ\êP `Í¨ı+¸\Öo	Y2fIT\î[~`Oeg\åmD7\ìi\âUs1\îh\âÉšYİ¢u–8\Ô	\0\×i×‹ƒa\áj¯®u\é½1²\"·¬\ì#ˆ@-rZ\İÀP˜\Ø0eÌ¹1ŠO\Ì@Á,£ó>\Ó\Ù\ï©}WŒòt\'c«cÈ’\\~›”ûš—¶Ş¢ò$šƒ\ç™I4#±wsvv7$\Ó^c\ã6C\íùšª•%<=´t*± õ.y\î«pEj\Û\ÈË¢Á.Ps\Æñ\Éûm§™CsC\ÈŞ¶B—(ó\çÉ³UPYcMG\æÓa6\ä´0—1ùƒ^ü+KY\ÃÉ‰D\Ù9\Êğw\rı*ükı\Ó\Z\àÚºD\Â/Ÿ7©ôÌ¢\İCHÃ‡‘\Än\rÏ•YV\Ä\Û[Z\é½X\ç¦\ãŒğl0køX\nLsŒ\ï6&N3>>Á\èJ.\ìÒ®«\å:&Œ\ÂÇ†x/Ô‚Ab¬¬c\à54¯T”@¸\Ñ\Ë\×\Ğz÷Q{[\ÇAH“%•\äfF%Š\ç\ä\ÖöŠ²±!È’6ê²²1F1\"9‘›v•)1\Æù0š8ÿ\0_P\Î1ş\Ü;+G\ãvYpEn¨\Ş9~Ä¦\è\Óee\ãÍpÆWU\ÚF\Ò˜s\Ğp´\Ï\ç)±\âGq½)\éZ&˜bÏ—„\îöXb\Äi\î\ì,÷›´vf‘/¹€Áoo¾…WT“È­ek6°\r›Š¹a1¤V1¼²‘ñ)°]§¶üyVW;µôe/µ$f 0³[ÊºËºµù³iob‘¹¿i¬b¤vS4‡‘¬H\í\'ğ¢\ÉJ{õ*\Ã[t\åô<YMñ$ô\åü\Ñ1Ü§úX\ê±C‡º	¤\Ü;¾\Êc;\ãù\ÚUrO;vµ¤“£`õ.Ÿ &lH-(e\ÜK~\Õûª«,-\ÏS\0¸@\åÀ¤\Ş¤U\'°\0ıõõ¡e\Ğ[j‹_@4¬gN\é\Èz¨Æ=¿(\Û\İ8\r\Ê< “q[œJ?˜’n-Qj»5– \Z_SÁ2ŸNV\İ\Z•7W¶¢\×ï¨·QÂŒn“\"5Bl§w\Ù\ãS»/3~µõ\á­RøxŒ¥$Dmrñ€µùû\êó±\r%–YnY)\Ñ\ÊÀêƒ?–‰µQ…-qlªp¶­Ç…q\â)\Ã&P¿ª\ãzğ!´\ÅIlw\ßMw,8\Òiÿ\0\æz­\ã\È\Åù\\8›te‰6Z\Ú\êuğ­\îË©Ü­¡S\È\×¸¯c¹OxüE\']ú¨)^#\ÇôŞ¡š\ì˜Ø§h:)\0-¹p½\é\î:L››\"PiQ´-ôköó¦s&<\ÃÍ¶\çƒ\Øn‘ï¬—S\êC*|9=9c@\å,­‚\ã\á#]}õ›ñ>I§§SE\åN­GĞ»¨õÕŒ˜\âc]¶¥ˆ\âi$¿P;½»\ì(\ÌøúTø\Øù¨†e&\äÇ½,<›»xÒ†“N²\'°\ß\î«rd[ÿ\0=&·…¿\ê5(ş @\×tt\ïô0\Ë\éªM\Úş\nj_;\ÒŒ­\ìZY\è\Ün±@a \ì:8ğ5«À*p\á*Û†Û\ÛH¬J‡¥f\ç\Ã+\ÚiUe\"ê ±\0ë®•ôUU\0T\r\0\ä(M\È\Êrq“&\Ü#Z\ÜN\Ó{Pÿ\0ñø\ĞD}?\ÛPM\áL-@\ÊRl¯EüÈ£…\í­7Z\Û\î\ÈÕ¬´p3¬G\ÖI\'Ïƒ©C²CŠŸº¶õ—ú›ıe\ÌSt’\È\ãô²‹~\ÆÄ²fq^\\h\ÒD™l\ÃÇ5\ê?Vb\ã˜HfŸµÁXĞ‘\ïkR\è¦hˆµŠò\æ-AK2M’\Û®Û¶\Ú\ç\Ík\0xŠÔ§YHlş¡\Ô\'2K#K+p\'‚\ÅxS~$*\É>¢2€<B\ëjh\ã‘dTe¸S­½´l˜:~\Ó\Ú\Âûy5zµ„úŒ‡Tú~|¥Ì’\'ù”\Ö\æ=	\äXA\"\ê,&p¨\'v\'K ÷½g¢Ç‚<H&uGa´\ï7Õá¨·º‹!”:hŒ(oŠÇ¾‡\æ\Ô‡If‚¡\Z+z8«s¹\É+\È\æ\Ûªg\ëe_kL±\î\ĞŒ\Ãş¶¸û*K\ÔO#Xû\èQ‹$\á%pA°\0xŞ±\çg¼\Zpª\ÚF8yj\İB1&AgtIY¾#nJ,)¼¬R\ØkY¯‘7GÈ‡78\İ$_I©;\\^\çB9r eúŸªÊ›¾h\Ä	\0,(©öØ·\Û[QüSf7_,\Ô-\Ùe\×0Û¨t¹a‰\Ú)\Ğ#*H¹Aª0C\n\ÊÀ:\Öb\ïÿ\0-¨,\íc\é\"½‹+\ê.=U\Êl§\\y?q_ùµªäº‹…º\í\Â\nMõ\İÁ¾\Ê3/0±>\ïLG\æ\ÔöƒÆ–N@•ö‹)$¨\ì\Ü\r{+¢H\ácVw\ìPXû…[Uk(I´\å3\ê]8¿\ãRHˆe•‹\ÜZ\×\Ñx.ƒ‡\n;(@q\åL†U†E(\Åøy…«ôÄ¹\Ø\É\êc\ÆÉºÈ0V\0_Z\Óõ^Ÿóm@m\ß,ˆy9kj?›²²„°†\å¼\àù\ËÀŠ6\Éı\ØîŒpt6¸Ê–<\Æ2A\ÕMY\Ô	9“]Yv¨\à«\r9ƒKÌ¥\r&´\ì’)€-õÚ†\ç_\Õe\ãNñş›2EP•Yc\ÈlH\Üv~\éğdõ8øñ<¬l/•c¿6~B¾ƒ›Ô±0!\\e¹m‚8\Ò1¸ü;T[üt\Õf;\n×7¤ğ@6¦§˜\çÀÛ…^³n\"Ç¹Røò#1‚\n4İ \áÇ‰Ò¬\\Œ{‘¸\é\Ôı•µ¡#&\Ş²\Üø¤ŸCÊ²,)[¶\êT@6î¬¦V.NMŸ=Ò–Èø™\ßü5¨9‘&©{G\Ä\Ò[c‰eK\Õv{ªØ©}m­øVW²Œ3oü“÷\ZG’MA\r\ì¶O±@­Q–0Uova¸\î5¬g\Êv\Ş\Õ\ì\0\áZµÈSc\0ªºŸuE_y+È¢1\î£F@(\à†V\àA\â)p\é±\é:Ù‰%nkÙ½Oº®Ó¾\Èİ>k€F\Ò?6´t+\Z®\Ô;­­\Ş\ìII½Œ\çc;™‹ò\n\'\Ç\ÅB\Ì\ÛQ‘A*\çáºt\Ã5#F•6»\Ò30\ß~Wµé¨•Fªo\Ü9Ô·ùC\ro\È\Õòb€¡=#‘¶\Ó.\Õ2/\ÄVún ^ƒN èº‚\é\ÃJu\ë 6½š×¬\×^\Ì/&9Ÿ(<D²‰J\é\ËQ­KR],´c1Ô¢Q¶ü8ó«\ŞÛ€e×²³±u,gF!fÁYx-©\nu¸ü©<Š-Ä¶ôVÊ¹Ô«\Ñ\ÛÕ¨Œ\ÛAª\\‘n;µ\á\ãS\n\ËğH@<Efc\ëyŠ5š\äi\æU:{…Z~£\Éÿ\0Ù…¸\ß\ã\ì\Óu?\É^\ä~v\ä\Ï.,¹\Ü\Å\ï}ºµ‡e	‹\Ö:VX­\å•Z?üL-ö\Öo?\êL™`|wXQ\\m}€?\ÖM*\ÈF8&X\İ`{mso\Í\Â\ë{‹÷Š¶º¸ úJ[T–2;™ \ë¦!”\ÊU%YI ƒ¨ò\Ø÷\éXøú\à\Şa\Øje\Ö]b{\Ğip\Ç[qs\İtœ\Ìl1Á‹¤‘ùU_G¥‡\ZN¸96µ‘OaaW3°ø´5\Ê\æ©x\ÒÄƒ`ï…”¢\æ\Ê9®´1Pœñ\Ìd˜Î‡\ÛR›ô&\×\çşTWPLŸÓŠ˜\İR,§Q\n³ˆ”\ífº•\ç\ã_O€ŸIw7\çbu·²ö¯—.nV<‹\"5˜j®\0ñ\ì­Mú\Ç.75x\ØùŠ¨O-¬\í\ã´\Êc\ä \Û\èO\ßXLÎ±\Õ1\çšI#‰V	\Ú*\\Y¬Yog]®©bO\nõY=\\u!2E<\Ùx‚¿u|\Û2I+/Ø©–re\Öû¶aY\Ú\Í{JU5\ê}b–u|?œ†LwkE2h\Ç\áG_…½ö¦>ªˆ„¤c¡×•*\ê0¡\â\È\Æ?R\ÛXpV\ë~\Ñq¨«\ã\ËJYfw01R.µ\ÇuT“£MD6Éº\Ïq£©\í¦c¼l\ĞÎ»eM~#¸\Ñ]+£¦lY2)Tš\"«5öİƒ\Ş\Ê°[\Òvn»¡5\à>ú’\Èñj§A\ÛN#úg%¶´™1D\Ä3\é\âvŠq\Ó>›ÂŠQ‘,§$/Á¨	¸ˆoj|\âüˆ\Ït¥–B\Ø\í\É?·µ-˜\ßiÓ€<\ëCÓ»£¼\Æ+|(\0b\0\í&´Q\áÃ²¸…:<*xVdO\Ëh„$^…<6Ì²/0\à©û/^d`\æD›ŠP51\Ä¦ÀÓ¶‘À°¹\à;kƒß€><¨~:½ym\ê|÷¬»fc®3\Î$C6ğ¨lÚ¤\åá©¡11ºt\ßE sz\ÖıI\Ò\ã“ú„J\"º]¼$™nõ¬´˜+–P\r@$_\İP\ÓMVpm[VÉ¸R0N£€À*J·\à°×’Mk—\0vŞ“‰‘$ŠªŒ\rÎ…·qû)ş\'\ÓxBEl»\ä*…\Û	$D/ùšÚ¶µJ“ \á93b¤¹\ï\é†\ÈVk…ˆ:\Ú\ëz\Ğba\ä\ãEÿ\0m‡4jö-to·KÖ™\nÀ¢(‚\Æ€† )¿`¶†¤’9-\ÜöùùÖœ:¶d¯„dr2\'‰\Ã\ÉF\èw\rÀGn`†OIL„Th8[ˆÖ¨fõGÁ\nX\\{A\î«f„K\0…\î\nm÷P©k\Î\ÅY¸Yñúypz h®\'ô°\ÔV\'¬}4\Ğ\ÊF|…Üª…¥ÆšÓº·\Çqaf,£‰\ç§gm.\ÉtÈ\È#dLŒ\è|»¯}§—…B³\è)ú­aBĞ´$A\Ä\ÂY>>\Ñbx\ĞC§ıH™¹Y²\â<“Iqª\êÌ«\İeò\éÂŸzd\Éd\Ú\×\r\"FMş+|\nxT\à2º»¤¨M‰dhô\â\Ë ò‘¨¦œ	¾¨\Â\åbu›¶V+\ã\Æ5M\Êv\éü\çCSù\ì\\}%rHä ›{kz²\ä\Ù\Ãª5¸K]M‰}…UÓºwOY\ä•ñ¢it*úI£k (¡}‚¦\ß\'-\Ét¿	AŠ“ªB±‰7esµ­s\İ@Ë’\ã2Ì¦-ÁIBx\\v\×\Öe\ÆÆ™6Mr\'\éeR>\êE™ôI\É\É\\ ­/A¼NG\"’ª[üˆz6óºõ›,p¿ı´DX\è^üxp¢\çAq`lÀ ¸ór+ÈŸ\Zc‘x\ßÑ•t\æ°#•²°3\Å\éõ9—fXK4Šñ	[\ŞÃ‡Úˆı…–ıM?Ó™²|\ÙÊ‘\ß`EE\ØUØ±kiØ´õe6-n6½¸|V¬_©a\Æ\ï<¦\'m[Ir£…\Ü0\Òü«\Ô\ë}g)¶¶S\Ç\æ1…\íEûŠ›\àf\ïUf\"\ÄQ5\Z.\é¤H\Ï¹\Ôp\ænoXF	\Åò2&•¿B\Ã\Üj\è6±D»\Ç ÷\Ôò+ñ³[ÿ\03\Óä‘ L”ÜŠÙ®‹bt\ÚZÛ½”6VD=YW§aŸ˜œX=ŠÆ¡\r\ækjwZ²\ÌÏ“¨%ˆ \ßn4÷¡™ññ¥x˜&^Sü¼{¿\ÛHÁ‘œóÖ©9PK\\\\÷À©œ¨Œ6l,Ã¸›WE\Ğú\ãÜŠ%¦Uÿ\0\Óz–O\ëy¹©“,XÑ›Ñ¶z§ùvğ^\ÓFõ_§~iDı:S‘\Ú\"\Â&³_)©}$®oT t>¬ºzı\ë\"ÿ\0\êµ \êx³)*\äu@#J\Õôÿ\0§N&4\Òd\Ì\ÙY\Ï\ì˜\Å•6\Ú	ó5ùšùôÛ¼\ÚGU–ú\n×³Pƒ†3=YgÅ\0»¸Õ‹v}8ñ§9óğ\ŞiPH\Ñ\ŞUS\êYlB\Øh7:¡È²\áÉ’ÈUš4€ŒE´\àO-}”\Ë\"“\æò£\\u	$0•¶B\åo\âi·,“\ÛÑŠ0\Ú\ÊH ñi\\% Õ™“,ù3LªdveP,\0\'M5¡\ÍÀ13.-\'˜wñ¯^tü´u>lPZò1\çPG:òº“laQNmµµ·•OÔ·:\n½\ÓV:OW“§\å¬\èw!òO$g\âR>\ê?\ê.‡n±\Óò\ãlY\n°…‰õap\×ûk3vp¨	f6UI­\Ş.‹ú–F0#ô\ÌEƒ³«2\îS\Ä~_²“¬\äº5-7_sE\ê\Üf,\Öo\å=•\Ø\Z\×\Ó\á=\Ü\Ô\Òş›¹a¨$F—iÂ¥‚şty\íe\0–uıC…Zr“2²†\Ğğ/R\Ì)${qñ\Ò\äƒgyOûh{\0\ã\ßÂ‰*\"hš\"¨Ó¿\Û\ßFE—\Z@ƒ`•\"G?}W\ÈX¨5.\Çji¢‘-1o#ñf77µù\nk>„\Òú\Ög+­tø‰X‹eJ8*D¿ÿ\0cqöS\\O¨ú±ª|Ç \Ê\í•Jp›U§f„\ĞC¥LH{u \ÇW\èöÿ\0ó±ÿ\0û‹U\ÉÖº\"|Y\Ğû·şPj@ipx+\ÂÃ€4Oªz_ÿ\0¡¦?ÿ\0l~\Ò£\Õ0dbbJ\ëÿ\0»)X\Óÿ\0Q4\nI½\Z\ËE&©\"”o\éac_:˜À™ñ\Ø1–71Y²\ÛÆ´óuÌµ »Åø\Ü\Ç\Úÿ\0Â”\æ\Ú)wª\ÓK\Ç+\Ø\Ø|7R;¾Ê˜WƒJ\Í$;§«Ä‡\Ô`\ÙLC9äˆ?\ÛF¡ƒ(As¨\Üue)\Äg{½Î¶¹t\å\í¦(\êÆ¤\0º6\İñ>€Ö´„”\"[—/P…p[É©sÇ……¬/~\íjk`·k²\èT¿\"\é\Æühp\ä\Ü\Û^7\ÌA¶\ë_\Ø*À\Û[°ƒÄ’IkkÇ’Š	³\ró\\ù»ÿ\03{‚¤ü\Â\İ\È?40—^…\íØ—ò\í\Õ\ãe \ÜZT<\Ìu+¸s$iµ|iôƒUÁ¼nm¿\âCssjµv °^Wüi)\ë\"\Ì\äŠ#¯ğ\âx\Ó%;€#RM15.#ÈŒ\Å0Ü§ˆ\çK³Vh\åVuWœ[``^1®Ç°apÖ·tr\æ!T³`£´š\Íuªğ^0ñ`ˆ\ãl’J‡NÁ¡=\ÇJ\Z4l¢\áZH\ØÈ¯¹Š’ÿ\0	-\Îö©aÌ®d 7RWô–</zùø»¡0\ÊPò³6\Ñ\İÆ˜ôN³“\ÓÌ±f$™\ÈÀ\î\r¹o.ş øŠQI›\á”\Ë`M\ÅKæ‘e&\Æ\ê½;$ù\'›eı¶÷7\áD\È,¥†·\àyP\0ŸRÏˆøÑ¬²\îûI]7\r\Ô÷iYŒf\é™0´ŒY\îğ7;VÀ0\ìnÊ‡\Ôdd\ç.8¹HEû÷0¹\Ó\Â\Õ\ïL\Ã‹Œ°\Ëfvuø`$ø\ÒyeÒ­¦ö®X±™G§\éˆY\0õVúú–¤±¦<*\Z\ín6ñ§m&\Ö\\»!O†UøX(\ãì¤²L‰)ô©\å,,H\åqI¨X\Ğs.«\èUóğ¡ş\Ó.¶\Ô\ßZ´\æ\É jö±m\0¿:”O\Ì¢Æ·ó»r¦\Í¤›¡}\0Cù‡uFú³\ÈD²Ä±\Ë(\Î\â\ÖP¢\Öì£¾š\É|¾¥’\í{·\É@e[û-\Ì\Å\Ì\ÍpWjD¾T\Ş\ÛCÎ‚‰\'†v\Å`Ñ™¼º€À7\Ú.+E£\êeiÆ°}şK§¡*&°â°ƒ-½«§\ÛRN³\ì¸ó4¹TOü\ÏYœ\\q\n\íW\Ú8€l(\åe\Ü\àw\ÖM—_\ZGuüLp\Zx\'E:nUG\×ı/Yî«ô\ÏYs‘˜¸9m\Ç\ÕF9ki`{\Å]#\à\È6I2I\Ïa4£«\â®\ÏZ¡FT]½ºSMz\n\Ô\è\än…“‹}\ÂFSq,\r½Jp¸ğ¥²6K&\×vx×•÷\n\Ûa\åG.$,l  \ä,-Udô¼“¼¥œÿ\0¹\Ú\Ş\ÛU\Ìj.°a\ë­Oò>\0“o\ç\0ı¢‚“£\å\'\0\ZK¨-\Ğ[jói£O\Ê{ê³¦\Í>\å\n@m¦ºÆ¯\ÚÃŠ:ÿ\0¦ÿ\0Â»\ÉmAÂŒ£i«±±\Úy\â…ti]P\Í\Æ\Õ5B\ÆÈŒıÀS~‹‘\ç\Â\Å\0+w\Ûñ(&\ä\Ğ\Ú@i±>™é˜‘l\ï?\æÉ¸\İ\Ù`¤\Û\ÜkŸ§É\æ\\X!CH¸\è®-µA»\\~QL£Jñ	n\Z@h\äH<<A©ViÎ£…¸H\Ä\\\Ëó³\\H—:m¦œn¹!1W_õh~ú_\ë~èµ¯c\Ú8\Z·V2Q¢\Ë{\\y­)d\ëŞ¢òU«v°\Ï*aƒƒ4\ÜD3…\ZÜük\æ™]Jl“|‰ZVşc\åÀWÒ²<¬v‰®d#şµ#\ì½|·§Í“—zJ\ï\éµÿ\0-€Ò«\ÔM›¦\å\'G“ªL…!v!^nu~\å\à(5ø\×\Ñsc\Â\ÈÀ“¥b°úPn\ĞAd;¸qZù\ÒÁ3JbDg–ö(€³^öµ–üè«™Q–S ¯K“qeøSœ?¤ºÔ¯²+İ–FUbò\ŞôVgF\êK\é«cK6–h\Ö%!Oj²SvŒDµO2“\n(^`&ó-ş\Ú\ÑnØ€F\0U\n8A7\Ó\İFYF,¡E‰\İa\ìÖˆVd\Ò@E¸©q¬\î\Û4ñÂ•€‡R\ç\×Ffo‡K¾\Å\Å\Éb8oN¾±º(7|=\Õo©\Z¨>5\ê\æF%Pp°\ãIY\â$®+rœ)\ÚDx#VŠ@\å$Y\Ğ\æö’mL”,hŠ‘ù@?Ê…·y½+‡ª\âMÔ‚Ä\êJ»ˆÚ¤§\ÂXø_Z‘\ë\ë\'˜—`\ÄG,wğ­¹aN¸¶\áf\ÂCñ\r4\ÃV¶ƒNWc\ã\á^¶D1G¾g\Ù\ì\Ò,V\å%¬ö_^•YR(EÁ\Ñ\äE°\Ój¯‰ªi-$¬dr>&×geM¬—p­\ì=“ª,¾\\x÷woyoÀYx›\ÚR\\‘)p¼\Øm\n4¤\Óddj©¹#\àvO¶‡ù14Š¨\Z\çR\Ìo\îQP\æÚ¸ô4Q\\%\î\Ç3\çG¢R\æ\Ê2i”=v™™Ò¬ù/¸\Ç6-²şP\äh¶\ï¥c¥¬ØŠXL‡@\ß/Jz\Î/\Êd!¸\Û2\æ_+Qâ…¢ò¦\áô/\ê}s?©ù%`˜÷ºÀ„„öş£\ãK\0%¼\Ú\ÈU[À\æ…Z\Ø\\)·}m„e\ÜÜH€\Z\"	¡Û²\æ§\Óp[+*(\äòDXo\í\Ú5\"œıE…,s\â\Â ‘\\G ƒ\r‰\ï¸\ãP\î´.µzô³0\Ãp÷\×b™\æÉŠ]\â30K‡dQ~$Ø‡\Îcõ7<,i‡MÃ4šsµ\ÙP•{ê‡\Û\Ë^)gŒû>õw\n\ÂH‘[\Òw±d¿1\×^\Ë\Ñ]6\áw\î*›1ö\n,ifŠ Œ\ÌÀ\ßr\Ø!a£;1\ÒÜ‡¿hq±¾Vµcñ‘\Ãqÿ\0ªŒú\"•øxœ}\ŞKiÿ\0\Ê\ÜO\Öú{¸ùŒqkŸ\ßQ\ÙúÀû\é§mŠ~Q`+x\ëz\Ïu>ˆ\éq\Î\Ë\êR\×_ge6›„Œ+dµ0Yµ-k„3\è˜x\ÓeD&	\"©»\0\rˆ^\0øš[&,±µ¤R.ÿ\0\nqĞ‰l·\ä«ik\ÑJ·uW†KE–M½\'‡\í\Ş?\åø£#°©ü\rgr0\æ\Æ\êKš+\"À\İ]T·uÑ­Zù˜!\",\È\å\Ç,v¬¬»£=t&\ŞÚW_%\ÚZ\\vŞ›u6k+;F¾\ÊVz…nğ\ÌvN_«¦\âo¡:S\\>™,\İ=\Öf> 6]M{?TUP€\0I±nÁVÁ\×ñ3Œ³¢\Ü\ícX¹kCdªœÎ¢˜z&R\ÊP¯ú‡#\Û{Ó´\é­ò­ˆ[sJ6\în]\æİ•\ãu_J[:0¸·˜¯w}6„,¦Á¥\09¨¥½JJ«M\Å=B(—1\á¬bÁ¸ó4»:Lk¤\×\Ü	\ãÀŠy’Š¤n\Zt&F”\İT\ÛÓ ÖM3\âœ\04\'‡g¾¬°\çÆ‡‹¤\"\Ç\ÉÜ§OuP\"Û»jXÔ‚d \æüµ¦\ÚPD\ä\Ø(B²–Fò-Š›\n’\ÈBAöT=h P»\Î\ÆÁX›^‰FŠÚ“!˜)d’;‹\Û]®mx\å€>]GthÊ’[h‰²ÿ\0\Ì\çø\nVò9h°\äš\ĞaAò˜ñB¸\È%ó2\æ÷\\\n£+D\Æ&·\å5t¤\İ\È\Ğ\ä\Ü^¤­¹<($Î¤ù\Ò\Ìe\æ\Ô)\Ûho\é^\ê\Ò\à;	ÕœlÜ–a\ÃU°¥ÅŒ“hmy_\Í\ì½p£U/\Zy\Ñ\âb‡\ïµ].¡¨û½‡\æ«M=`{b.‡\á\â4§¦F:Œ\Ù\Ñ-òJ[‚.\ã\æo\n#*D.E±MÀÜ·sn\á\å:ó§0c¤K\äÔKsji=0zJÀ^I\ä2\Ê\ìM†Š şQ\Ì\ÑğcA-I<v([øÛXÆ½ah6\Û\Ô\ëTlHš­ˆ´\ÓBƒ\Â\ÔRÀ‹>e•uŠ_\Òİ‡¸ó¢š\çø\n‰\Ü\rBœ-\Ã+C\ç\ìY%h&R’F\Å]OE.S\äK\è\â‰UTU¿–÷Ôµ´­ŸP\èu˜õZ	¶…$(er8¿º‘\çt¬Î››i‰‰´\Ñğ\ÜP</P—ƒN\\’–O¥ô2Î»Ì²…B^ûJ5õ+¶\Ú_¶”e\âÊªø¤m•Î–\Öã²I\å0ÁtÌ†\Æıµv~^&^3\çe•… U@\Â\å¦Ñ´{Á\åÎ¥\ËõE¦ª\ßú´#&Í’ù¥BLŠu±¾–öU«\"‹\\ª2M€U™\ä*¯m¨†TÆƒô\äa¡\åW,D¤Æ¾sÏ-R\àyN½õzd˜Ô´º­K‘\Ê\ÇÉˆ*\ÚO\Ş-µ#\Z³7e©Ê´xñ—Œ Ÿ‰õ=úÚ²ø\Ó\Îù\ÑO‹\çV½€±k‹q\áO©Ì®c\ÈR§By\Û\Æ\ÔÚO ²\İ6d\×	´?¶ŸÂ†n‡Ñ¦m±o\Æq®\Ø\Îå·ƒ\Ş\Õ\î\Ì—.\Ë\é·)#;¶\ÚmyŒxØ³\ïg:I\Ã\É\ËJRú‰¥±\É\ĞRo\Ç\ÈVD•e!\ïm†\Ú\Ğğ…Í\\L\ä™J“Ä©\äÃ¼\Zº<ù#v¹6\'C\İP‹¶H61¹\Ö\Ú\Ğ\ÙI<Èú,\Ø´y\ïO\"\ä\Æ\Ì9¥´\ì:\Õ]2<—*‰ wØ…G™š·\é\Z\ËC:‡‰Å™¢²²\ã\ÏÒº\Ê\á¨õ ™^Xœş$iù–Ö­)i0ºhm‰@!\ÇHÀÓ‰=\äó«R§@x\ÃA	Lr¤«s\ìÃ•›J:ö:ğ«NH)y\ãŠ/Rv\nxjI”\rM\è·—\Æ\Ç?\n\Æv\ÈÃµ\Ûğk\ä\â#n¿Ÿ…\×SöW¢{¨f\Ê~üG\ÙL@G§1BS0¶›À}|E˜{ê‘ˆ\"\Ê\È;m´*\Ş<\Çï¦*-õÎ¢‘K$\âUK«‹\ZFŸ\àÖ‰\Ìò\Õ\'\Åÿ\0\"­4mJşaT}j{½9#˜úgwº£µT]\Î\â?@$kü\ÕD“;E;U\íÃ¼û\êU[fw®\áB¹ò*¯\ì\ÊŞ¢\Êÿ\0ö\ZG†Œ#’\"\ÍÀmBIöƒkû+GÕ±>n T\ìkv0\Ğß¸ó¬¿ü–^;#dˆvº\"³òV76¥“\×a‰ÁÅ‡nDh\Ë\'-\Í{\Ê\Ú\n»K\"\Ì\ë+\Ç\èD]B\ÚÅ®†\å­.‹.\\›´Í ü¢Ÿôˆ\éyyO\î°•m±ñÀ\Ç\ì¬\ê¥\ç&¤±Œú¹\ÙÓ—b¯7½‡`£\âšË´\êF”µ§\ÈTó¢HGû‘n\ï(ß…J,\é¼·â§ˆ4š-½$;}ş\Êñ¤kB6Eô«2\ÛÔ´Jš—\í_\ßB,·«UñÌŠ™Ñ·\ßI‚\äÀ%\Èy#R#bÓƒbE\Ã<B\ØÑ²Hš¢\ÊdS\È\Z¨Bv›sû)6ZÂ’Œ|e›%U¿¶w¶øG¾˜e\Í\é><\Ì|ª\Å$ş™ùU¬«\ê¢üQ¸y‘o\ãPÉ“zH¼mf·«G5µa¢@.ªn9\ÑSŠE\Z©\à)L {*ŒŒ‰)B›ZÂ™#r™\çoN\ÅUT\\t\ĞS$‡q«+Ÿ6\ß2ö\\\ØÛ²Œ\È\éÒ“$ÀçŠ¡3ş’\Ê\nHo&A”Æ¢\ämo\Ëûk¨öÚ‹xşˆÖ¾Dúò{\Z<k\Õ¸Kñ¢÷úZÖ °\İZŸp;\ÑMûw\0hÕµl\ÌwrLØšô^¸\ZöÂ¤¹\í\î¯µ\È\Z\nö\à9×´C1òŠ\ZVó±¿øú>\Ú\ĞÎ·-\â\Z–Rd#–\É{\ê\ÇuI9T\Ç\"‰…™XwŠ¤-\Ò\ÚòÒ«mAµ\ïcjhL\n^›\Ò’˜q¥ø²\İO†“\æôŸ,/ˆRXÁ;–m\á\È#ƒm<F¼)³±)µnN—ª² Q¶\\/D\î>\ÆC+#À–\Ïju¿¦öñ\à{d^\İkk•¡uı·`\Ö+§c\İJó¾œÅœ³â“ŒÇ‚|Qû¸ŠiH¸¸3\ë!\ZŞ¬õ™†\Ò/U\åt¡†KI)ÿ\0»™>\ÎÚ–<q²¯¨öf6ö¹ì£\År\ÇRüGš	\Òek0\Ğ ¹İ»KO\ç\Ä\Ë1ú¹$@.%Œ\î\Û\Û~b\Ü\è>‹2Eıd?¶\Ìoc\Ì÷ZM™±™a…™A¼¡\rõañ€>\Ú0\ÛÏ /+ä’…\ê*\0¬~>V\Z9¢,-\é\è\áPL9CMRoˆ:€¬´Ñ‰/©\á¨\à4¬™¨F1a†ÚŠOµô\í\é£\ê·Á\Ç\È>V\äE-\ÇËºÕ™\ØKŸºdÀL˜\î8îµ™\Ô4 ~Iñe7\ïG\Ó^^\êo*öp>*\Í1\Ù&e03\"]Š£«z†\Û@·m—™ò‚\ë¾<¦K‹«p Š¼\àG…–ds‰ÍŸ}´¹,N¼)?PÉH0+\ê›9\ä£C\áÂ’½—•?ñ¶,’]Ÿø1‰aV$ºús6\ĞZà½¾#ğ ¥\"YT®\Ï3ÿ\0R\èt¢–Fi9\Ó\ãa¡~\ßeu™‡be’D¼¶Vq§\è=´À0¶–¸¸\n^“ˆ·\0·P-·›;š\ÕrJC*y‘\Ôÿ\0”¶®	,\n\Â+©¸Ü¿r\Õ.\Ú#{©ø\Ô\ÓxY\Z¯¦”ğª\ç’5\'{À\êBl ’Í»Êª£è”µÀD”Jö\'p¼LHV\ìq¡¿%\êX©\åzx ˜}y›û{[\áWşe^u¡ôƒ\ŞB£\\¼|H\'Q\í¥û‘}ODk3Yo®\àºowº\ÕºˆÔº\Õ\Ì\è/“(=<™\Êaÿ\0\åOoM{JE÷^ôjg\Å6D¤\r×‘®A*?(ñ\áZ $Ÿ1Õ˜\êÆ¨˜©B\ã\Ì\íùñ¬d½A_#ºØ©$øP\Ò\È\ry;Ì€”oR;¿•¶d]ô±ò\İû…(4\ä\ëñ©zÔ¹d$\Ñ\Â\ÚÔ± •’\æ‰\n$…ƒi4\Ê\r—TNB­€¢\Ò;Ñ¥\íF$ÿ\0¶¼XjH<\ê\'%<!aŒ,\ë\"o&0\Âÿ\0\Íşt\"°3•n\nŸm8\êq¤Õ²\"„N\Ï- ı<›÷Ş·Z\ÏR¦9¶Ú§0ª\å3“ >şÁL§ŒI²U\àmzD\â|©ZE]\à’F\İl<8\ÕÖ­\è›ô%´²\Ú^§\Ôv° S]\Ö\î?mG\n_˜Ã†V;Œ‘«1\É\Z\Ôİ„q³}¢\àf®I€q,x\æE±8õ\Z®À·\Ü\Æ\Ë\áW\ãõy¬°\Ë¹ü« f÷[Z\ÌÏ\Ôú”Œ\ÓX\Ğ\İ#\İeK÷\rI\ï¬\ß_\Ç\Ê\ÂÉŠ6ò¾¢2\Ãk‚538.#S\é\í“\"ÿ\0¶\ÅG0\Ës\ì6®\\\Â\ÚzR)= \0=·¯›`ıeÖ±|³2\æF9L<\à\Ç[}\ëO\Ó~®\é™\å\"”ü¤\í£	\ØOò¿ñ¢`Ğœ”VıÀP\Û\á\'\Äpö\Ô÷°@ChN‡\Z¤9V&şQ§ux­	7±Œö®‹\î\áHp\ê¶\ëiÂ©õ\Æ\ã¹t¹\á\í«2nÁƒ_üEbu¾\àGi\åş5¡\È(/M\Ó~\ê¥\Ò\ÇJ‚	\á\Ş+\Ã+ƒ\ÆôĞš\æ7\á{WL€\Ä|\Ü5Ò‡Í•÷\én•~4¾¬;Mƒ\ã\áB\è\ra0UeSbMû\rJ7IPI¸:›©©0m\Ã‹uU.M1È…4¯«¼_ŸÖœ	ï«§B<›2ôA{“\å\ZŸ\Ê\'¥tü²\ÆHB3›““\ì\áöQY\"œ£pøŒ±ƒ¨şN×«‘\Ô:\Êx2›Š¨\"Z\ĞT0¾Y½™>\Ş8~oˆx\Ñ²41Ã´™H,º®ãª\îtKŸŸ˜±ò«µõU>QM±‘\Z%y¶\Ø7Eût\çL|´rJ‘Î¢P±ù‹5\Éuğ\éS\Â\ê0¦òº\İc›†\á\ÅC/\ãV\Éë‰ŸaV\rf\ÚÀ©ğ\Ş	eQÔ³\İp\ÌZ<‡$FZ\ß\r¼\æ\à‘\İQf¨ºòZ0\Ô3/f…Ÿ•\ãó\áj™\Ë\ËX\ÚGÅ‘UE\É\0\\\ÎÀŞ•cd\ÊK3\İv¶\Ò8jµa\êY\r(R6\Ä<\Í#ğ\å§mb\ÑĞœd.>´ef‘T„U\Úş¦ÒŸA4a\0Sq\ÙXQ–«\ÊXıBÁO;vS\ÌN ¶\Ô\é\İYŞ­hZiöH¾°š\ÜVo\ê,¥>\ÑY®©„d´±h‚ºóVskÓ¨g,‡–ò	ğ^P\Üfk\ìf\ä\rUÁÜŒ<mI5Š¿\Ó3òRS·O\às\á\Ç;c’5†\æó\r<xU8XsÉ–\Âwô£Q½mf\Şxr#‡\Z¶I\Å\ìx&¼IÀ\ÈNÒ¬/\î?…k_+x\ÓR°3\\,o!.\îS†»G´\n±R”$j­Ê6,nx\Ğ^±\äk¾eˆ§ù3\à_“ i\",M“s\08 ÖƒV‘\ãu;Z6;[ô³)¯g”	=¢ş#ü¨9&R¬–¶œ|i;KË›x‡G\Ún;\ã@ŒF8\Ê\Ø\Ê\à$*xh<\Ì{…Pó¸?\î\r\Ö\ï>Vûhx\İò2š[ycœ`p\í?\ç@\ZR±.üA?™¿Q\îì¡¤‘™\Âl93q\ä_\ë5b«8;\r”üsvÿ\0*\n°!Q\èÀ6ñv\ï¦\É\å&GL†WHöú\ÑE¢X±³q` \\\Ò\Ùò\æ.ü\ÚÃ\åMN0Z9™n\íşM,5<Om(ÉŒ\Æ\åµ¼\×=”\ç`Krİ¶;N†¯\Ş-¡¬\Ü\è¨Ê­gcZÁCLa<\ê˜1&š\Å\Ëú\ÛA\ì\í§¸q\ÆA>w\Ï\à+7,®IbÀ\ïf#jö>ÁL\âPYG=¦¡\Zó«£‘\ì\ì¿>úH–\Û+Ÿ\Z9\ãh¤V÷ƒÈŠ\Èu|) ˜©\â5p#¶¶«r.xš?3!*GuFü=µu±\rxf—iŒ6=•\ÑcDQXü\"\Ä2\è}\â‹\ÍÅI\á!;vŸ¶«ô”RG†\Ó}\Ş\ëW¡ÿ\0\"ø\Ùõ{ö<\ïû,Óª–½;›\Üe/¦¶Ú¤•’±&\ŞÊ§¨\çca\ÄC°H\ì\ÇÂ¥¹ƒ]x?…\é$ˆVE­\ÅH¸®c°^±ª6\èü\Ì9ò¬O\Õò	:²¨?) \år\Ä\Ö\ÜF`\İ\ï\ÛV>ø„ü«s\ÙX_ªGXƒÄ¦ı¤*j¾H«9BvÛ·QU÷_O}±msî¨•$hxñş¬#\î‹õ&^\".Dg\'*É¬¨£^¬\Ç\êXYM\é\ãÎ)½=\Ãı5ó`\Ò\ä\Â\ÚW\0‚¤†\ê\ÃBq.¥+XŠCc\ÌQ’­£\Ø²°+\ê¹ñö\ãõ;\Í\Ğd\î şaù\Ç\ÛZ\è\ç†h\Öxe…\Å\ÖE7R*ttûn\0Ó™¡‰\0€\Â\×öŠ3<\Ös\åà§²‡\ë¹o‰\Ò2g‰\í#L8\î\í\Ó\ÙzA¨;1O¨M­`\è÷Œ\à\ÈM\Õl\Ë\ÚA¿\nOô¬³6D\Ñ<Œ\ÊB«1 j{kP#ı\İ\ÌEÀ\Ğó¡¨c\åˆ+†@o\Ş\Ûx\Z½È #J¦d28)\åu\æ?5PÙ‡ı<\ÅÛŠm· ~Bx‡·}U5\"ÿ\0j\Üx\rBó¿wñ \Ñ\á|M\Ëå¹°u\Ñe\ì½ü§Û¯a«\É¢µÍ¯® ¯!\Ş*¬Yq\í˜nl8ƒÈŠ\Ğ\Ì3eWa)øf\ÊH\àm­Of8\Ñ3i\"n!\â\rœ{j\ä/\ZP†nC—õøPa¾[\"X\í¹2?tuWW#\ÙcLAùrƒ\ÈGØ‡‹\0/Üµ›\ÍÏŠyQovˆ’Ì¼‘¨\ï¢2rRFX‹e<- \ìñZW—†±‰%\Çò­µR-\ÜyTºD\î]m”C\çW\Ø\×2±²Ë¯ğ¢öEŒwy\Ïy»‘B¨õnKkn\êe\Ó\äWA$òne¹E<¿Æ°²:*\ÏfQ#¬\è.\Ú\Æ\Ü\Ñû¨,\\’$õ\á\Êô\ÊH¤Ÿ:*\Ş…\Ñ\Ğ\ë`\Æüi\'R\ÛS•a4,UøWpÛº•s\î”‡rM‡*)u`87º§\'R2F±\0w²“°ñµøŞ”H\Â&\n\Æö\ï\åWU{X\r•³\ĞÆ’•œ\ëQ—®%!\×KüC˜=•&fVIF¡£¸\éø\Ğ*Dj\Z\âKŸq£#Œ\äF}	QÁm\'kƒ\Ş\rJ]\rk\ä¯³\ì(NG\Zñ¦ \Üp¥ò´ñYf=\â¡ó-m¤\éN3 |³‡M·¶ û¨igX\İ\Ùş·6¡L\àp:×™²¨7µÔ«w\\h}ôn3Ë»4JªUØ²ª;[]i¬Xkkó1Ô¨ü\Çùe+\éù¦B€D–!\ê\å¸ù$_\éĞ\ëÖ‚6!¿¸	w0\â*šjYl«\Óm/«p\0pT¬@1Eñ7\Äÿ\0Âµô9š©¢T,\æ\Ü4™\ì¢G\0q\Ã\Z:Cm\Î÷=¶°¾´»7\ær\Ëe¶»;]£½ˆ\çWe‰%º®\ë“wa¦½€\ÒÌ§Ÿ!¯4+X¶º(°¡©s:\r8P÷\ZÁ\ê1¢5\r#úŠÁA\Óò×\Ô:^ÿ\0¶C™?VQ¶0•y\ÒlHÑ²6K(‚;ò0,£\Ø)‡ü—¥)p9Ó€goş’j±¶©U=r\'w \Ò)úøÀ—©È°cÕ¢””\0m¢Û¯*u\Ò\æ›+,™\ãXQ¸\"Ü¤ùN½¢³˜Oõ>¤ÿ\01›$‘cJC\Èdb\Ò\Ì?¤}¦¶glv\n\0\ÒÊ¼€\Z\n\Ï\Èë¢\Òw\É\Èô&Ä…‡—&M®J§½¬(…=@N\åbJ“\Åoù}œ¨´Áõ?Ü‰\Õ\ãş¾TlR¬\ĞÅ‘bQ\Õ\\¨ã­÷©Y¡Oú—\Æv¾\ê¶Äk\Ç\Ã¦c¶\Ú÷\é\\\r\èu\â\à•\"N»Ó„€f »D-\"r+ú¼E!PÁ\İ8[ü«tE\Çb³]\"h§\Æ\È h\Ã\\¼m\Â\ÚWW‡\Ìÿ\0ñoş>›œ¾_üµòû?\äi ]w·²ˆ,‚«`^um·,u>\ê–\Ë@ıJP‘³…»F7)#K\Ö;\êğ>k`¶\ßm:j·}õ²\ÊR\á»X+õB‚\ÇR$}¶\Ğ\Z•ª-ı¦t6\î<\êV\ì\åÂ oköpÁï ­Q™h÷5\"E‹&õ-\æ\Ö\å@Ia\0ò¢zwR\É\é’\ß„z\Ğ…»\ÇcPA˜\è=õ-Ç²\âˆ\Zf\ç3>/S÷Ìœ$C\Ø\ËK¾£•¡Â‡‚}išò‹y5•\n\È\âHØ«Ì¤«h«\Ë\Ë)\İ4+ZÛ‹9\\\Ô*C’Ÿ’T@û\é¥\ÊkpU÷ùj¦šÿ\0Æ‘}„A™!\àÎŠ§¼µ:\Ìe$G¨#V\"µ°\îBlŒ…™¾M´ÿ\0:„}BI\"\Ê]†V\Z\Z«0\r%œZ%\æŸ\İö\ÏohlœI‰\"ÌŠ>1ñ=ª/WU\Î\Î_`øQp¤·ÿ\0¶—\Í	?‘¸•ğ<ª\Øı(H\å}A/ıH\Ú\ÚıÆ’c\äI“‰ò›xô‰Î»Y–ü\ìh™\İ\ÙW\ÔMŒš\ã´:óª‚B}[\É\ê³yT\í\î\Ú\Ü=Æ†\êû’U\Ô\Âwü¿ı†½·.\Ë_uÁ¢ªy€…£\'s\0Q\Ï\"F–¦\0Ó¹\n¢‡!´\rØ·±ûª\ç*U‰\ßÑ\ÌK\åA\"şÚ‚Nò\ã!\İ\Ô\0\Ìyúghû¸/.Î¢óXÓµ8ÿ\0\â\åK¸v˜\î ’À›p½A$´\Ê\çò›\áV:½´<\Å¶B\Û@µùšÅ›\è8ƒ«FŠ\Ævó~^v‚³\Ó\Êó\Êò¹»9$\ÑM¶Ó¯iª=-§MO*I%‘\Ú\Í\Â+‰\åE\Ôn`/\ãLó˜GœA\0\n\0¤zk\æ\áh\ì®ÊšYœ4–Š8\n\Z–‰h>\æNœ—0\áöW‘¦@Q{\ÙEA\Ò\ãFñ?©”Ûƒ#ş`j\Õ\Ça Ê˜y!y~¢\â\'ø†x\ê\ã=†¾úö&f\êu‰ˆ[pÒ½ƒ\ZI£W»\0Mû{iª·İšrÑ·©I\È¸5f6\ìÜ„…nû„pôÆ¦õct<³1]ñ½ôû/Mº_O8’GFivù€:\rtóq\áM×Š–„­.$î§ˆ\ß,“\Ä/´…e\åo\Ë\ÇN\ê7¦d®N8*Ä˜Ï£#$¨I\ï+Ç¼\Z/`xš6W{\è^Ÿ€˜QˆY¼÷ywñ6\×Á@ûj9|`¨ÌŒ,o\î¥ò¿ªI\Ê8\Z÷/(5\âR~#Ø¿\çP„L\æ×°\"\Ö\ZT\æ1¸ñ9*Ÿf‹@F\â¹Ú†ùb·\ên\Ïú4*²ùef„Ÿ<·±–ß•\é\í<ùW¾›M\ËdKÀpT,ƒr,ltdK§o]\ÓúN$H²\ÛÔ“Qv\×i”cF-¶!\í¨\ÇDj\É›\Í\Ë^D….d˜\ÎZSù(^Ö£\ã\Ïfo4w\'V`i|8\ë\ï:³Kú»ˆ°\ÑjZL¤\à\'/7H#sbPòm	ª:6l‰c\Ê/\é1*y\ìs°\×\0\0°‚bğgG;7•¿m\Ç-­ü\r\n«@mšu\ÉG\Øf\r 6$\ØM]€l5¤ª¯¾¬$F\à\r¯fı@/kñ¢1ò\å°i\n¸:\îQ´ø\Û]htQ*D­œK\Z©Df\Çd\Z3 ÷‘¥²o\0©¸<ê¼\íSV\ÓO¡O8/Ú²y·i\Ê\Õ\æÀ8?°\Ôv…\Õx\"¹\Ú$C!øTOp­™’#&\ÒA7·ñj\Î}U\nü€p\íÊM»w)ûhiz\ŞTY\Ñ\Ë3`\Zklc\ËÂõÀ\r\Ãs#l¿¶ª}\â’\ëĞ¶¡C\Üù\Ûü#n„Zõ_Û‰ª\ÚF$†Ğƒb;ë½®kC2\Ëia\Æõ\á\"ıüÁ¨†\Ö÷·1Rİ­Î§•13\Ğt\Ğ\ÔøX\Ş\Õ^\í,8ŞˆGÇ—$ƒ\é-¬ü™®‡…\è\Åşúğ8øTt\äu\ì«ñ±%Í”C\nù›\ânH§‹1\ì\İt$ù^…O\Ç5\å=¤¹\Ó\ì¥\İG«)°\áb\Å?¼\ã·ôÆ‹\êü¯M%.‰,º\ëse\İ\ãaYXNE×†€øš\ÍRÁªnB^şj#›F‰n6y£?\ÈOô=\ÕTr¾;\İnÃ²™\Å>6Z©g	2jªx›\èTÿ\0)­S1hña\Êm\è=>¢+õAí¨”™mÀ\\h$Sx\Ü+S7\ÆY®ªv\Ô\Å\Â\İıã¾†1˜\É@Á»TkNR\ÕÀ$ŞŠ@öOM|·6=¦İ¦…‰‹\È\çòïµ»À¢¥\Å;$™/\ê!*\ÉË·rû¢¼\Æ\Ã>¡´†(ö‚daÅˆ±\0\îf“io¨$\Ü\á\à§r’l,½ ÷ø\éNeF,­\r½UBòuığ\ìªñV8ƒ&ÿ\04–ı\ËCnÍµ`È‹i\Ø\×~µı7·\ZN\Én‡\Æ\İ\Ğ~—Rœ$2|¾H¿ªX__\ÒTq=ü\è\Ïÿ\0R\éÁ”¹[\Îl¥\Ëw\0{ê¡‘,o¾6ò›˜\ì¦C©\âÀT\È\Ö·QÍ»…r\Ñ{\ÖË‹\Ã\èi]3°¯©ı/‹	x¬\ÑòI3Y]@&\Ö\Z\êÅ¶¤Z¶ı{©ŒŞŒÁ\Òf”![Ü²\êJxZ\Äû«\n\å’K8±ªñ+4\Ûs\Ç(´Xq\ã\\º\Ä¶5\0\ã\ÛV+\n¸*S\Ô{O–\0­:´Ì \í¶2O˜§¶\Í\êY\Ğy$ˆFÎ¼Ôƒ\Ì\r\é²Bqñ\ã[\İv€Oa£1¢‡%6e_!y$¾eS\İK”üI\åˆ›¬¦Å´¿iccY7\Zô\éG\Íô\îpğ 7Idkw5\ÈöRü•®w©+\î2ø\éW[­”²<•²\ÚW`ˆ.\Ä9Ô•Qö\Õrf\å™JB\è±\Æ\Ä%\ãWk\ßõz’ Å¬\\‘cf?˜]\Ü(X´kş‘oiªò?Š^\âñ\îÆƒ*V@tƒ[¶‡— ½\Ö\×D>ry¿%º¢2V8ZR\Ó\Ê\Ú7\åAo‹Æº4Qe\nvóc\Ì\Ö&„á‹›j\ÇV=ôLŠ»}#ğ·Æ£B\Ãôxvûª\nBZÚ·!^´±c\ë3¨“K\ßU]\ÇKÚ€-ô\ÔY\æğD`§µ\äø†\Õ¼t\0—Õ´\Ôñ6\í·ğ©G!\ín6´6û+g\àjÒ±·c\æ\\\Õ!ü–rb04½!S§²¸9m\Ú\Õ\í•5:µblCim[A\\H\à+‰-^HñÁ’S`\0IAµÆ€q\'…—64ŠÈ¤\È\Ü	_„\Z–\\\Ówò@8 \Ò\ãù¨<Î¯˜±T;.…øF§ÿ\0U4›\Ğ¸34ø‘JÄ¤€Yˆ6;—J!İˆU\ÚY?1+\î<Xvm!\èù\Ò6\çó3;\Ï`\Í2°Ev\ÜWpı³b..¼Eõ¦¥JD\ãV2Æ”«í¾÷\Ñ\Úk\ÒU\ËS‘_v\ÂU¼¦Ûƒmµ\Å\ìy‹ñ¨\áõø3˜³Jubªo\ä{s\àj-GĞº\Ùu4„\Õ©ô\Ï\Âú7ôó«XLO²ºv-\ì\Ê\ÓVF\Æª\Ä\ë0\Æ?Ü‰\Ê1\îCp}¢´]RÍ«cb\0\ÒD4¹\Zz‘ü\Å	õV/¥”™ yg\İ\Ù\"¬\ç\Í\Ë©<M¶TøO\Şh5:85_*®£¾±ô\ß\Íz™¸I¶bo$Kğ1<M¸¡¬¬°I\ì™}7šµÿ\0R\áHW\×S‰‘À¶­ûˆóFK“`$´ €.69#—~µi´ea\Èş\è¿?ğkM7FÁs\êª4…Á\çñ\Z°ú:O˜û‡€1û*•X®4’GTK1:\í\ãLú„¦xğ\0·Ü;ó¹¦\Ø_ñ\â;\á:úHm@›_Ô¼«Ùº\Î4È–\é\ÙJ\01¿–\äT·’’„\Å8}7 Pc:\İô6•£\Å\ÆÁ\éØ‡„km\ÒJúök«wR¼Ÿ©/ı¼GpüòÛ‰\çaH§\Ê\ÊÏ”‰L†şP~~À)\å\ê,-ıs©®qŒ\ãn8ñ\î³6†F:n·ge	\ÓE\Üú€\ì\0ß¾õq‰\ÛE^ºª\ÅÁ\ê\á±\âwIŒ|«o°¤š)¨¬Ì§\Ò\'\Ëù›\Æ=¢«‘ó)±\ÅApö&^BúJ\Û:n—\Õ\á\éhˆ:†+3G q}­\Äy®\Úi\Äğ¾”\İ\ÒR”‘JC£‡1#ı\àY”j»\×\ÍnC&Nûú\é\ZÀ\\ş¯‹¨@ 	31ôÿ\0oj‹ƒ§\í³[^k²z|Ió’\ì\è\Ê\È¦­asÎ³jr³&´¼a\ã¤\\„iggQ\Ä Ó¸T~i\Ü\Ú²î‘”íµ»ø\Ğ~¶\Z0d“‘b]½‚¯y%™7\ÌŞœc]§\â5²,¹öñ\İ8®ÛŠ\íü·øµ\àj1\Ô\Êô\\\0.\âüµ\Û\ÛcR\ÊZTôÔ¦\Ë\0Å‰×­ˆQ–§\r€V‡a§\Û\ÒX\\˜\ÌZF	¥ÆRÀv†m\í*™Á×™\ã¯eQó9\0\Ú,İ«·‡ÿ\0\Z½^Y@Wf6\àeRN\"w0óqi·g+E‚3G5¥ˆ’c…®·ñ\ã\î4«¥›ˆ\à{)\èuQs:\æQ¶€l9=B‚Áx–\åjª[\Ç\ë&U–\Òİ‰š&õvm\ÇN\Î\Úe\Ò1q\å\æ\äy•Ge#CQ\Ì#¯¥®ÀA\çrhxòşS\"ÿ\0¶A÷sm9•‚\â3Y¨‘\á]ob}D\Âø²p±ò?gqª\Ë&l<¢qmŠoyG\æğ·\ÙEcL&CüK£!¬\Ğlz‰®¶\çVyH „R™=X$!\r”ñr3 ›C¯})n©Œ\É:\\\Æ\r\Ø~GÙ¥,ˆX[™\ÔÖ…d\rpEÔ‹0<Á¤“cü¼ìŸ“Š\ä?\â\Õ|İµ\Ø\ÊÔP¼\Ï\n™™b[\Üä…xncøTWS~•v)‚YVD©6\Ä\ÎmqÌ\êû¨$*\"\Ñ7\İ3›)#ü\Ín\ê¶LXŠ©u,\î[q\âk¢—fi ‘d\Ù`m{\ÄqÖ‚\ê™OÆ«\Ç¿a±\'Ç&\àiK„\î±\Ù	\"ªnOò/y\åQY¿sc²¬wh‘&·\×ü^„Å™f‰£\ry\ãCö8\ï«ñ‚•–\'U—\Ö&w\ãnDv~¸»Zy|Z\Ïx\Ñzš­\"\"\Õ\Ò~\ç\êO¨-²r\'‰´@N\Ş4<±­\Â \Ğ7h«[+K\n¢d•\"‘Ï˜2diem¸±?­ª©Iùt:‘yä½\ÚTFd‹½¾ÁTv\Õ*\â^¸ÀFoT–Ùˆˆ\è#U¾\ê#¢³(›>êœ¢\ZõU~ı?U1–x½¼«ı7û\è¡^Y\İ<\"Utú¶A³\È\æ\Ã\ÇO—‚-\Ê/`¤“¯}“G\éş\êlò\í•—³\á¡\Öh!a\ÜqsğŠ‡\Ë\Ë3n™·1÷TKC„_\èd*p\Ãcª¥…÷[\ÈµûiwXé«ˆƒ©be\Ø$\Ñş–:\îö\ÓS\é\ã(Evª‚DøóbJoªGƒqVö\Zr\å0„k	J\"e^û\Ğ\Îó,e\Ú\ÚB\Z!\Z\Å<)\×RX\'Y\ÂùşŸ4oUrZğ\Ş„©°–F\Çh\Ö.\Åü \íä½¦¾“\"\ßp\í·\Ô\î5|S\'“®‡\Ë2R\ÖaÂ‡\á¯:oŸ\èdÍxF\ì£Ã—\ÙK¾T“\ÇJIÆ¥µ9[•n\í7ñ©‡\ZiE&*sÖ¬Ñ\ËO’,6(Á\ÓF\àò§)\Õ\Zx¾<m:‘\Ê\ÈPrÖ…XS€ˆ08Rm=Šª}JòqŒ“»+nG;<|\Ú\Øøp©ca¬g{\êÃ‡uªzZ”°\âˆ\î\Ø\Ê\à\\©½·¶¼(|­‘O5c{>‰©ıÿ\0Q>E\Ôyœª1\Z:‘\éø±d]¤\Ş\ãk•PğN\Ë{/R\İSÊ²³Ñ¤Z½¤r\ÙÓ™¼ &Ã´/‡+xP™].LXşb2<l.ò=\Âş\Ú+\"G—(÷\\\ÈH•c6!l|§õyu6\á]Š\Ó$Áœ\Åpc\rv\ÛÇ…Jµ\Ò\äß°q£qz\î“‚RP\ÅUV·ÿ\0¤Ó´p\Ğ6;+…±\Ü\ÎF\ÖkmˆıÕ™õV<™H$†C¸?-\Ç[ş™\á\älp ‘a6¿\é7û³\ÇEŒuĞ‡Ÿc\Û\Éh¢…c\Øv—k(¸\ï\çQlˆ¡³Jş¬\Ç\áUU\ïQ\Å\Èx\é}’2\Ûin\êªP7X|7\í§ø\ä¯\Ëd²N¡‘!T\n\ÌnZ\í\Ä\é÷Z¼Šlwrò@\åp±ğQ$d	øA?Ë¯\áRi£\È˜”zQ^Á\ã‘ùø(¦\è’\Æ	~[vú;\Ä\Ö\Û\ÛD\Ü÷Q	\ì.¡ö\î\ï¿\n‡ü,kµ®£E°m<\ÒL»˜\ØyGSL~M\ËI•MÛµ\Ôññ¡rò6««_i°¿q:Ô¡Ši\Íö\ã6ks\ç¥;.v2zVC¨,@£|šø«\Ê_\Ú\Ô@\Zc3G¼/\í!ø£ü\èø\ÙX—™Â©mH\Ô\ë\Î\Ô\×.\èYb0°W<WTkrº\ĞA’\ä‰%TR/˜ûôª\äû#UU¼°ˆTc\íN\\ \"\Äü*M\ín\Ë\Ñm]}X›d\ëñ)\çJ\Ò,h+\ÈXq¹\ï¯r®/µÁ\"ú)k\ëÔ¯·1 Å³%`=Af\äj\èrm¡:\Ò5˜c¾Št Yµˆ¤\ê5i\Ü\ĞÇ,\r].*\åÅ´².¨\İß¤øÒœw\ÓR0/Lñ\'[p¿:N\Z\å\rò¶\Ù#\\IÚˆ>/^²FV\Ä\Z\r;4§OŸd¡B\Ìl¬N„¥·-ş\ÛR,†›¡\Ğm!«E±ƒ‰\Ô2ıV‡•%\"^\Õo*ıº\Ó\\\Ì8ò\0\ÜÖ\Ü@\ãH0q\åyRbÀ,N{K.¢¶^c’I†÷:mE\0“Û¥\é\Ş\'¬\ãc.:X\ÏÅœñ$ÔX›®„‹ú‡e@d¹m“Z\ç\áp¿}L½†¼¸šC**«m­kñC\Åj¼œ‘Hu h;O*«\æ\\É n7\â¡rR\\\é–ü±¦²\È~\'ñ¡j\åLŒ©Œ,n\í\Ë^\ÒxS\Ìq®.0\r)ş\ã\'˜±ñ©&4F\"†T%®=¦¬g•\Ù\Z“ô \Ú>\Ên\Ò$‰ª\Ç\0¼§\ÍúVööW;\Ë=ƒy#Pòc68õ2eH—µ§Àš§şG?÷$˜H›G½¿…$ŸAŒ£\0YPk\Ø*\é&Le±óLx üiZuem\Ç)ôód>Ó¥[\ZX\î\'s,y\Ñ@!73}X\×ZÄš’PÙ³ü¾<’ó\Ê?˜ğ \rT©fIZ\Â\à{I°¯cf^\ê\ÊuN¤™S\Ãd˜\âu$ò/¸}Õ©”ù‡¶®«Ca¹\Ğ\Ò!\İ\å…z$Ò»Ô·…RÉ•úŸƒ\Ô\ZX$\Ö\äG\Âß…f\Öæ¾‹—\Í#\È\êU\Ç:ùü‘|¼¯Ÿ21[ğ½\ZMn:=‰.•0/PSV)‰Ò¤\ÕE«V¼L†Ñ©sØ ·\İGÁ\Ñú¬ÿ\0,€\Ì\à ÿ\0\Åj % :§Pı-ÿ\0Ş–(GeËŸ²Â\é\\P?w&F<öª¨ûoD	\Ù\Ü\Â\Â¶œ/\áze“\Ğh7\ä\Ô¯î¯£ú¯He+ –@\Ünöÿ\0\ÊR~\è—‚d#Qi/ÿ\0˜\Z¥einQŒ\éñ\ä®A8N%\n›y…±½\ãn=”\Ï/2e4gV\r`k­ƒ\0A\Ómü)w\Ó3c\ãOÿ\0Ş¯««\Æ@G\Ñlv\è{h‰\Ñ2¨\â5xØ¯›rhû…¸‘\ÃJ\Ê\ë\ä›F•-N{\n\Æ\áNAõ$o‚%Ô±?¤sñ:vD¦ª²ì‘€vÂp»~-\íÍ¬<µ\íÂ¯\ÆÅ³‘i§qw‘¸x–k\è;‡´Y‹.\É?\î\æcÁ4@G\r¶‡p4İ£»&µö]\ÏSä³£‰dWv\É2Yc\Zlò‚\rÕ¸)nf\â\ä\É9%\Òõcq~=”\Ò4.$É—\Ó\0\0°&¯®mN\Ôñû*ŒÜˆ\İ\Ñ\Õ,\\\\’Å›M,nx\ê¥w\Zª\å‘Kt\ç\0\Ò9€8\Õ\Ñô\ØP\r\×oü(ŸTsÒ¼2¯3G+u/…V\Ä.:j#P{H½\r›a	 _u]$\Ëk\î¡÷¬\ä\Ä5¸Ôl;i\n\Ë\â\Ò\ÜaÓŠÇ¡N\0Sú\ÅÉ¿²™Í—„½b\åM…‡ò\ê\ÌÅ“™\Ó\ÒXbXd:›´‘k‹wSnŸ\Ö7Æ°\ÌA6Ó–\ëT\ÇR|N<0ü¡z1\Ë k.\æ&\Ì,w5«Ò±ú¤‡\"8\Ìx\0+[‡ií©²\ã\åi*«\Ün\0Øú´D\ÈF\Çòó‘¼-ğeòzstÀuŞ‡E‹÷ö{hl‚r1RXÔ¶\Ö\Ú\ÛN¶5³•U1È\âqfS\Â\Şœ\Î\é³ô¥|®}L\Ïj\Ñ_ŸxªL†±\ØRWt;Ñ·œÿ\0)6Ö­XOk›ğ<(\É\È2¹ß¬úI\Ø×£\áq¶ı†õ¢K2eke@l3G%˜/´\0\î\Ş/¥\í§\ãNºoZô dš†\ØËµG¬H\ÕJóÓ°\Öv<Uv\ì‘ü[?¸E\î-ËŸ:÷&S3\"\Ä\Z$ˆ1h\ê66\İ\àŸˆß$´€mË“k<ØD€+wl?™]‘=ü\ÊGİ²\İK„O$kpA\Ş+ó!’2&WH@C)\à´w£\Ô\ï]<\rgk4ı\riD\ëYœÂ’\ÑûoF«¬\rí³—y¨\å`ú\Ï´m©QùOğ l\è\Û\ïñ\Õa\ånD5†5{m¿\Z^B²$qXn~\ër¡£\ÈÜ¶<j‰Ù‡\r;i\È\ÛK-\Ë\Ä\éO1\ã\\h‚\ãRNº&„\èø‘Od9\Ãm\n-¿71-yÜ³@R`DËœ\ß…¬*§‡5\îd”V¶dÍ¤\é\ßC\É6Yø\×J\0G“\æÁ\İé€¥»\ÍV #Õ´œ\n\Ü_\Ãm‹»#\æŒ\ß}\å5¶¦Ã‰\á\å½3\ãz<¥Y\ÈERÀy¥\Ô;â©¥Åˆí«ªwv¬ñT„]|u£\â®üŠs\ë!–6Õ¥—[“¡‰\éÙŒT\Ä\Æû>xÚ¡+)Š_N\ì&‘ŒJu>m4\í½‰\Ó\Û70¼\ÇøT\ÏÜ\Î®«u\\y)kPø¤Ğ“P—òä¦;1¢ó‘ù¤n@vú¸!†\Èü†\ÕSò§{U\á]€K–·\Ä\ç›s¡)\Ç_RH—›:\ï¹–K\í=µ–\è¸ÿ\0¸\ÓH·TŒÿ\0\ÈV€Ip·\åZT‹‡®/T\îÒ¼-N	¸I±ouIö>’¢H;C}\â¹F\Ô\Ø*$\Ó;\àt\Ç7l8/Û°º­‡§¥Šb@¤s\Ø	ûoR\Ú\Ì| šµb—ôÚ”„#\í@v(÷U›‰\çT,r6«@j%€×µ^<±\Æ.\äû?u!\Éh¯ha™|+#x!ümV	\ï®\Ç \Z\0™V>X\"U³Ø¨‘~ \ßEW‰/\Ú\áQWA¾6½ªoF¸`e&Àl7ôr\Ü,DŸMbŒö\ç·[‘ü×·uT\Ù\ÉLÑ…Ç\Ú\Ê\Ì\ZFÿ\0^¾å¿ˆ­Nvy\ØÍ\çi:¤–¾\Æ\ämÏ¼V3#\áNW-o2|2\ÊAR9,6ÿ\0ÒŒ{\ê\Í\Õ$e	mb@–@H6ø\Ó\Çï®f\İf‹\Ñka§³\Û^\æI\í\ê+^B\Â@Và¬€Z\âı´¾¢˜\Èfg¾\íc§·\Zª©Z@¦\Ék\æ‹q¡\Û0“a¯†µ^\\I\Ê#R8\\Ÿ¾¡½PÆ©Qò6[\ëH\Ü\ßLp\Ğ\Åv¶ö\å\Ø(8™È•Ç”|#¶–P«Sh\ÑYye­!\ØöÔ‘¨\êVcg\Ç\ŞI#\'NÚº‡\n]Ü¨Œ\Û\Äm_Wû\êEu*Wø\ä–fD1oQ½\0İ´üW\ì\ßª&JS§a\â=”•<r 6[·;~u‘(…™H‰¸#CcÊ†µÖ˜zw5\Ë\"\Èmx\é¹|\Â\à\èA\ì\ì¡\à\ÈBş;\è\à‹Šƒc%\Õú@NF\"“A©O\ê‡\Ätq\Ş+lö\"\Öö\Òl®ˆ¥\Ú\\)mYy_´U+Â†gjn…\Ø:b¬¾mÃ`ªòd˜\È·”ñ#MjÓ“	f–2.xE¸\Ú\ÊTóª#\Ô/\Ö\ÚS\Ş\ÖÖ³‘JbkT\Ö	Á\0Ş³²6­¤f\Û\\X\ëzY—ˆA%\Çe\Z²\\iSb×$\àvI£:Á\Üp\æ+\ÙZ\ê)¬ø\Ñ\Ê5=¼\è	°§@\Î\Éñu\Ö\Ş#hšfV«C™‹\'\ÊG,Gkµ\ÍùO\Zd²«\Ú,¤	\'cğ·ƒW56`À@m\ã­](D*\à<A©bE.†\åøjœ‚\ï˜»\í;G}«\Ñ$°/\î\ÃúOÄ¾HyF\ä}·\å\ÃZ\0\Ë\ãE‰V1Î§ƒh4<\ë\ÙsY\ÌpˆÌ¢\Î\ànı¼²\æt\Õ\È#†\ï\Ô\r½œhX:\Ç:\É#—U\Ô-¹÷š§\rò\ÊcW²¯Ym*`ó§\áµ\Öy\Å\æoy ş4\Ş\ée\í\ç]=yW\Ävc\Äğ¯L- şPA\'Ã•!6\Ş^NÆ‡j™YRO:]c£0ÿ\0nM¥W°-9Œi\áY¬«\Ç\Ô=4\Z/\ÜM\é¡yQ\Z¬)m¶\nˆ;MSòù\"ß¶Eü)š¢Æ¡W@*@\\Ö”¯gg,\\1\çá·x«\âÁ`û¤`@\àm ¯\0- \ĞU&\Â\àø\áWEaû„3w\n´\0…q4¤g¢Ã€®½y]Ho]zòº½u\ê5× d´5\è6¨Şº€\'\áTœX=OT Y?RùIş«qö\Ô\ï\\\Ä\Ğ9=ª30±s 0eF$CÀğe=ª\ÜA«A¯iŸ“\è\îœnašh›•È‘G°U\Çô^\ß51v\â@@=Õ¤½{zr\Å\Ê\ÏôDRW5Ô¯\Æ3}\ãÌ¹ˆ\äpVŒ¨>\ĞMl\ï^D±¤|ÿ\0¨ô\ÌÎ˜\æzo¢È‡r\Ù\ÊÆ“dJH¿e}K&rax\'A$N,\È\Ã_9úƒ£\ËÒ§\01“kú2\"\ÜQû\Ç\ÛS«uF\äJ‘\Ã[kLşjc\"\Æöµ.H\×F\í[í«±²“†ß¥X\"Íµ€©\ßt¾§\à|+¡@ÛŠ~Ú®W]¥x“ õPùˆ\\È§r\ÛQÊ¡iÑM´\ZÅ‘$d½¿U1‹(‘£‚;\Í$\ÆÏ@\æ‡ğ¦1¼<£kxRgB\ì\äi\Úİ´BH®\ê—`\Â\ß\ècøR¦\ë)#²¬‹.Dš2\ÇAºç¸«/\ãP\Ö 1¤\ÅC²\ÏOn´,¸xóZ5\'·÷Š¥g\Ä\êÚ’yÕ‹.¶½\è¬\ÂH_‘\Ò\Ü\Ä\Û[±µ‡\'ù•\í\ZŠ~\\\Úk€C¡sÔ;¬\na\È]7M\'R(©±¢cªƒ~\êa%ô¸\ìÖ–“\ßUjPLVfN*\êöhju®\åX›Šœµ \ÄË \åT´¤\è(VGã¸¶¹Va¨kı”Å†(ªr±\ãd,„,‡‘\ÑOS&FDcD-n\Î4$¹\ä\Ş\àƒ\Ì(hBIe\\ƒmÀ¥“¼Ú›cG ³\Ì\Æü£ÿ\0\æ¨a\Çh\Òi,\Î\Ãrÿ\0(<*\æjNW<\rôª±ò\åšFˆÅ²5Ô°<eA\Õj$ª‹e\ÖMK\n;ha¨<´ºL\Îo\ÍI#–\å\Ó\î£Õ´·!P”hO\0,\nb45\ê5uutq©.•\ÕÔ€•ë‰®®¤WWWR«Àk«¨\Ú\îu\Õ\Ô\Õ×®® ®\â-]]Hd+\Û\×WS\í\ë\Û\×WP›«\Í\Õ\Õ\Ô\ÇQTO3\Æc5–&ø\Ñ\Æ\å5\Õ\Ô•\ë_JBŠ\Ù=,°)\ælRw]GM¸û\rd\Z&~\Õ\Ô\Å\è *À5´¿}‚\Ä\éÊºº²z\ä\É\Ì\äO˜¡\'!tEArg^k«©›\ÒaG†\å·xÑ‘\ç¡\äØ€9\Ş\Ú}µ\ÕÔ­“E\Ëû‡Á8\Úï¦µ~\àÁ·uuuN6/%©/h«›l;+«¨vÿ\0³…z¦–®®¤2\Ã\áQÚµ\Õ\ÔÁ\áQ6\à+«¨\rTÈª\ãQ\Z\ê\ê™lO\å\Ûút\ãµuu3&R\ïWb\Ìş­™‹¸±7×uu.±‚\Îl \\Ğ™YlÀ-¬Í¢§={k«©ÿ\Ù',2),(_binary 'ÿ\Øÿ\à\0JFIF\0\0\0d\0d\0\0ÿ\ì\0Ducky\0\0\0\0\0<\0\0ÿ\î\0Adobe\0dÀ\0\0\0ÿ\Û\0„\0		\n\n\n\n\r\r\Z\ZÿÀ\0\0\Ö,\0ÿ\Ä\0˜\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1AQ\"aq2‘±B¡ÁRbr#3’²$\Ñá‚¢\ÂCScs4%\0\0\0\0\0\0\0!1AQ\"aqB2ÿ\Ú\0\0\0?\0\îHX\è\r|{\è)¹†\Z]I±4ªG*Y+¤kj“$ÎL¤Œ¥´ª\Éd[CnT²-y\ÄR´	6«·ÁÓ´e\ß_ ·ø…TMÛ±\Î^Lq¡¸b:¿†\ÚÖ¼µ\ÎÌº\ï\ë¿®;\îv>\Õ\×PÆ’<¥‡n1[©-¥¹!¾\Úöx\ékË»ù\ÃÏ¤¹Rev>“»K2úˆò9¹$9\Ô\×\Ù$¯G…ğÔ…V:@¯7.£\át\×\Úi¦ p¦“.Qt\êP}\âª\'/\0Bt`y\èE(Œõ1\åjK\É\ÛXŞ\Èo1é¶4d\Ìó\é¨²TÜ¶½\èÈ€ñ7ª*n@z´÷P@-­ uÇ”\Z2F¤^œ£$\\\Û\ŞiŒ„¨š¼\İ0\ç?üoşZ­jmE\Ä6‚\à_º\éÇ²T¨F\ÊA¾„Ğ›H_\ê_\ì Àjh\ß\ØhTy\ĞoOaª_¾¡¡k\ÓÓ­<•6Bu/Æ¦‚’\×! ²ùh3*\\:’iÀ‘\Ó\å&•I\0q\n@/A+÷\áÿ\0òr¯ûõ\n\ÓY\n¦\àJpv<\İÈ‹?G£„³\\|Mz?7/\å\Å\ß|\Ù;ıM\Şd\Ì\ÌlDv—lu…VM\æv\'\ÚM{ô\Äqø\Ë}ôW,KÙ¢¡‘*‰\ê¯\î^ùq\áÙ›yxu¡n»öß´c¼Ù’\n4^dû+]9Z\Ï}ğ\æ[\ï\Ö™ehğ#ô\ã\Z6¿\ë¯C—\Ëı¸÷\ì\Íd÷şñ-‹\Î\Şğm÷WOımX^\Õ3kú¹âº³?Zƒb¬nOº²ß„^]¶{\ßrò–\Öù[\è®.œ¿§V¦I-¨:Z¹.¶:!\Ò-Ê¦š#9õ¦Œ–a\Ômq¥ò;_S ¦-x`r\İ`\İxZ‚\Éh4ğ§“š••\"2ı yÂ™“e\â¿) dF \ßôR*oqES\ßÿ\0ı\ÕQ5€\ĞzkşQN\Õj\\\nYQ\0\ÛZ2—¢\Üh\ÈÁj´d¬!o\Ô\Ö\çL‰×¯§\áHğÔƒ \ÅJ\Şu0c@\Ã\Å$Ÿu ´Œ#q4òóƒU\æ !¤“_ˆ[‰¡OA Ú‚Ww	•¶¬ˆ\ãSH¡c_,+^z\Ûø§ôw\ê\ë\Ûı¢¸\ì\Ã×Š.¾}v°ÿ\0˜×¹Ã•˜2\ßkk\ç]Ÿ|\Ü6>\ä›	\âh#\è“>)­\Ø\åhü5\è\ãw\Ğl’\Ğnø„Ü£\Ç7O‡P\é:{\Åx\ßv³õ\ßó\×M\Ü÷\ÌM·Õ™Âµ¼ ø×›Ïk«}±<w\Ïx\æî›”½Rÿ\0-X„[\è{9k‡›×®Tø« ŒI$–\ë\áz\éğ\ç¯Kú²¡‹\Ô~}\ç\ìµ\ÅMS¡Ø·¶_.+Ù…\Ö\ëXm´i9\Õ\Ş\Õí·¼2K$J¦\åÀ\×\Û\\ûá¾²\Ç[\ím\âY±¡»u-\ín`ûëƒ¦±Ó¦\Íy•JÛŸ*\æ\Ú6\Ê,Š\ÅÇ…N €¼¨\"\ßTF÷F‡ZIxGUÎ\ÃO#5\î½*¾\ZÑ‘i‰cÔ“\Ï[SFG·Z^&š\ÛKñ¤2orb\Øş\ê¹\å(±`ˆø\"”T\Øyö©3.’³\0œ?U4”…®5`ü–­\å6 d…”)¹ø\Ó¿0:ºº~dğ\×-®oQ•\Òú¨É½Œi{Š2T¨7‹`\×\åH=]ly_Z¢-¬	¥H	½AR\Ã\Ù@\ÂFÕŠ¹[¢»XÁŒ½øur®ßL\ì\çúwÆ¸şk‹}u\î¨ò÷eÂ\Ã(=Rt\ê:WE\ïr+\âa\Íöü\ÜI\ÓO$	“0s\Ì\ÉÇ…\í[\ï\æ\"X\ßv.\ï³A\İ\Û\Ô\ØrÊ®I<¶\éW‘\Ì\Ö</^g\Õ\Ï\Ù\Ó\Ëx\Çw\'|\äî»£±p°‡>š\rGH¬øğÁuİ‹šwŸ5½%\êf>[¥\ë·ñ\Ë\ë[>\Ø\ìL\í\É\Ò|¥s¸\ê+\rûH\é\ç\Â\×ZØ¾ŸcbD«	ù®8\×ı]zñ\ÃD;EH\nı\"\ÂÀZ²½\Z\Í N\ÖTCOT{\Õz\Ã3\ì+/ô\\\ëÔº}£Nmš÷F\Û(‹v„.=\í\\w\è±\æ\Üz~&—øò\Ê\Ë\ZL,¨²aY ‘^&\Õ]H\"²ßŠ—\'%\ákÜš\Ï\nÁ¡\ã\áH¤O\0\à`ªmQùt£ †U)\ÔN¤ÑñT‹\\¨\É<\0\0o¦´S{˜}tô›\î«Ô°‡ÿ\0 y\"ÿ\0”R\Ø@\ã\ÊjTL\Ó![ò§’\Ã\Ù[R\É\á\êùTø\Ñ(6\è¤\\ñ½2ğGJõ\ß\Û@ğ\Õ(&\ç•,-\ì±cj(”«¤\r†/\ÊôŒx\éA<õ:B56ª€\í\î¢üy\Ğ	½´ \ÈwTR\ä\è8ÓB\Ê\'\Ç\Û{g\'3)„ftg766#\Ê>\Êö>nx\×?\Û\Ë\ï\Ó;ÿ\0\éòGtni¹oy™ˆıH\îDcÁWA^·=|0\ß{Pğ&\ÈX¢—¨”N¾™n\0“kš\Ñ37,±³\ÃoUòˆG‘9¨Ôq5†ø§\Ìq!c)ùø(÷\Ôc\n]\é\ßfG—–&\È^¥O3_KŸ\n\ã\í\Õ\ÙÇ–]\ÇgÙ£H\ÖÀ*Š\à\Ú\å\èM$öÛ³\Ã\é+Ë© h+£—¼\Şÿ\0M\Î!Y¸p\ÂÁ•|§•\é!r\ëvU\É\Ó\ê\Øh¼\ë\Çf¹ÁŒ\Øq\İ<ºX\êjl_;–cu†Ñ‡‰Å˜¡—\ãmµ•†Lü\Î\ÜÓ¦S.Ç”öµô‰?/ºµºûG\Ú\Ù]*,ˆg9c7Wö\Z\â\ß\\VšÜœP<À|*h#µ¸\Z	 \Æ\ãÂŒak\É= ­¯À\Ó,\Ğ,V\×\áAúP£;¸S^›\Ûìª•6£AaBút/ùE-Wlñ©Qµù¹ğ¦E*z‰\Ò\"¸¡µ0Bƒ\ÒÀ<h.z­\í·Â™5ñ¸$It©	\èµ¦\Zct#Ÿ*•’€\0(¡\ëü¾\Ú@Ã¡\Ó\ßzfp_§\ßH=¸½ª¢pòs—™*\Ş\Î\à\Éü©­¸òö©\é¼\×[Y/¯\İ\Ç.ß³¾$R*F\è!‰\Ç\æ?^÷-<øş=üòùª6\Ôhk¿XÎ¤\'J\ív\éÉ¿Ç•=„W29g6\ç©\"¹\Ú/ûCe;¦\à¨ñ©\Ôûk\Û\Éò\Ó.\ÛÛ›d[xôúm\Ôt5\åt\ß/O¸–ÁOH\Ğ_\áXÆ¶®c\Ür#Q\Ó!:i[k\ÑÏ·o\ì4û¶FC•v$…mi\ë\Ç]#\ÏR÷#SK+Á¹\ßùlt\Ö\ÃÆ•9<³ó1$Tû/,–ó9pK‰8\ê†Ac}m\àGº«Y–[Ÿúm\ÜE\Òn\ß\Î{\ç\í\ç¦6\'úŸ”u¸ø\Ë\r6\ÅtZÀ/sj\âoi\Ç\é) ‰\ŞÔ”‰\Ğı”\Ï&™ˆ½D\Ï\ÒK\Ğ¦¶4d²kqÿ\0ñdxzo÷S•5\núQø„_¸SªÔ©,|\éQ™dN6<hM‡\Ø\0>†\n t‹iLÌ«\Ø¯´PHş°\ã~v a«V\n\ß\Z2£\ì\à8Ş‹HÚmm*r`ğ·,‡†\å‡:-8L‹¦´\à$0¸Á@4`ªf\ÌN.~ğ\â\æ\Æ<`|O\Ò\Õ\éü¼ñ2\àúv\Î\ÓW\Ë\ßU·¬­Û¸dF¼PPopZşb+\Ú\á\Ë\Ë\Öùe×¥c\Zr®‹!\çÎ£\Z‰²¨20öš\ÏsŠÁ“&D \\ôğ¬ğ¯\Ú\íLö\èñ¶\äœÿ\0QÎ§†•\æ};½/ŸVõ§f°\é\é±\Ó\İ^m¾]«|\æpŸo:©Iuˆ,£Q\Ìó½1ƒñã¥H·»J¬•¸(\ÂPyxû\é\äM²+\ä>Sb,jr¹\"‹6A\ZøH\ë1º@C1\éã¡·\n©k=œß»rr¶\á\Ûw\ìBUÑº$¶Axƒ\ï\×$\Ú8úx®ó³gGŸ·Á•ºd\"È¾Î¡zóz\é\ëZó\Û18\ê ô›ƒX´À«S\Âô²($~C,¤\ßH ›\\š%2-©\Ó@i™iì½¨”©È…‘\ÇúNu÷UBD€~şQE8SZ\Æş²ªğ\ÅúlyQ„\å\ìö¤xR8@\'§[û(R@ yS\ÉDO7¥\Ãù—½©›^IµFUƒ\ÊÀ\Æ\ã2z4$Ò§‡¬G…,X¨\çHğK°¹\'ı\ÕP°@Ã•2°‰:\Ê\ÓY%a\ZkVœõ\Í+d†¾¦\î\Ğì·ùat\\xƒ+\È\ŞTûM{¼y\ãúyWlÛ³\å\êqù¤n%®Xø“©¯_œ\Äs\íQ\ä!÷RØ¢uv-n6\0V,\Ç*4<	¹÷\nüA¯\ë¿v‘Q·Bˆ¿*\0 W‘\İ\êp+X8\â+…\ÙZdHT\Ş\È8Û<«¹\ìøc¦l„\ro”°½i¬¬öµ/¾û%R}ö«š\'9A“¿ğ%\Èpy^\àÒ¼\ëI„ˆ;™d€k\Õn7\âjfµxˆóoK\Ô	\0ñµ\éú\ÓÊŸ#\'\ZP\áœkr5rV{m\ï\êf*¾Á$À\ß\Ñpá†¾\Ê\ê\â\ä\ì\éÿ\0OT\í°5\î\Ğ!±\â.+\Ïú¿OŒi”‘pOÉ–ô¥\Ñly‘H=ğ\çK¼k›‹{)‘¥E2ò¦gQW£õ\ÑQ÷?%”xIş\ê­I%´û+şQF\Ê\Õ\éC\ÔA>\ê…W©­Å¸pªD†¦b\Ì5µªm<Ä€\0\Ôs§;•\éfm^\ç\ÙN@¥üğü\ß_ı¯–\Ş\Ï\Z\Ó\Ò\á\Íó\Ø=•”£XšvŠ\êmPoI½\Ï;\Ó$®§\ÇÆ•€†‚ƒ&şk[\İTIİ»†rw#;©ôqÁ\äd:~^‡\É\Ë7?Ó“\ë\éqı¹w\×ı\É\"=§\Ö/4Ÿ\êò“[ >X\Ó\ìÖ½¯Ÿş^v\ÛÀ·@­øc]ñ•.¶\Z“¥F\ÇÛ”f`6ş\ÎUŠ‰\ÚÄ‰–‹Ñ©ĞŸeNÿ\0‡§\ë¿v\Ìe6\ÈX‹1Q¯Â¼~ß¯_Œğ¸yzº	¸\ç\\­\Ó\Ó{LXºc6b\îjõ\ÔZ\Ígm\çe;ƒw¹k]:øsm\å›\Ş;vLc\ÔrVVºÁıu¬©Â«*x§)»_Az[j½?]b\\‰0‰ –\é\×Jç®¨\Äwó\á&<re\ã\ãZé«Ÿ¦\Õm\Ç\ßr˜\Êr,\Ô~‹Ö¾®|Õ–VÕŸ™ˆv‰¬e\Ù’9°¬\î\Ò/\\»&,xxğc\ÇòB‹\Zb‹W™\ßl\ÖúJ–Œ\Z\çYÅ±:ò\áL«\İ-om$yxB\Ü\êmL\æAdó¡X,cj¨V#nCıEøzO÷Ujš‹°GaøW\îlq\é<O!\Ä\Ô*§\Í÷Ó°`Æ¾¢Š‘arX{j\ä%ñºDªq\ÒQ¦²\ëî­´\ÑfûŒ]]W?Ã­tz±öuÁs©\Ôr¯?Ë¨\"\ßSG“: ZÖ¨\Å\'¤ij~@¸ø\Òò\r»ji¨\Ô\ÏĞ¦K\Ø\n¨›M\æn{¶Õƒˆ¸D\îrr\Ñ\\¹\'›‡Wˆ®\ÎîŸ=ù\Í\ëŠ}X\Åß·M\Ï3eYº}XSş\Ú\"ô€4\íü¿l¿®møa\Ê\ZVÉ•è±‹|k\ÓöË–\Ä\è\"’\\¸!Œ]™…‡»Z\Ïx!Ù¶Ù™ò(L*—b\Ê\âÆ¹­k5\ÊÛ¶\È\ì¹ h\Íb*7¾¤\Åwm‹\Ûf8ıÁ¯¶¼¿¯O—\á\İÓ«È‹\Ô|:\ËXÕ…\Ï\ŞwV•‚B\ÌGBtû«}uŒ¶S\æe÷k\ã³â¤¢@\İ=\ëo^Æºt\ç?–;d\Ş\Ï\ŞHÏ—14k)ou¹«\ÛY?%[`ö¾\ç\"ddùf\ê\Ò>:|kğßœò\ïNv\ÜA³:\åF¦yU˜~\Z\æ\×i“ú.\Ú\ãEõO±³qûªLµ\Zh2Àn•\ĞFWCs{\×G= \Şfe\Îò2{«4bq\Zut_\Û\ÔE\ë£m%ş\\\×+\î\Ü\Şw\İaõıKA\"±S­€:|+—®’E\ék¾B\Ê\ê_0~µ\ätıu\Êy\0)mgX<‚\ß\ÄÑ’.\à^@f¹°\Zs¥§7\0kpoU\ìt\\O1A{S\ÎF¿ö\Ûî§’BˆŸB=xû…XÀ‹f¡±\áO&Oı\Ã\áH½wŒ\Éq±K\ÃM+ˆ‰bu\ç©+]\"3X\r\Ó&|y¾W‘\äô”5c©<x\n\ì\ÖF[«?¿\î]?\Ø$ô?§\êõk{Ûª\×\áZb!\ß!{©µy²\ÇP:ğ©¡\ê±\'JY2›MyÑ“Ö§#&¤½Í¸S\Ö“•-ô‘º¤şÕª\ä\Ë.—M½\æ¬É²ˆÇ¢\à]h‰\âa@\Ñ\ëf\0‚kó´\Ò\â–\Ñ\É;\ç²\'Ú³$Ü¶\ä\ë\Û\å%¤Œ\rcc\î\å_Aò}\Ì8{iU=«\çï˜‘À:\æ¹=#ˆ qøW~ÿ\0lV¿51¥À\Æk	%–<®ƒóu½¸×—\ßz.ŸñP\á\ír\áI4R§•­M¸€x\Ñ:L#},®£¶\çˆñ¡·\0£y½¦k³•ğ\Ü\ì\ØÑ©Q˜A±5\Z\ï7^ÈŠ\'iğ`„«jc öÖ¾\È\×yX\İ\Ób\Ûc‡9\Í±µTÙ¡Œ|LI$X¶øz\ä:4\Åt\Z›±M\ì=2#:uk“Y\ï³]ul;\ÕüÒªµ—¤­¹Yéœ—|z¨¾¥\í\ì\Í\ÈA\âr½tM±Q\Ê\çW4’„¦9ñ\ßö	÷p­È›®V»\Ñ’i\n†\ZInuÛ£Õ¼\Úd-¶@N¤(ûAµyıZDğö6ö\Ö\nÁKs­µñ§”Ò¹q\çBrñ\ì´øQ\r\r$†´\Æ$ğ÷P÷F##ÿ\0©¾\ê¨^£?\é\Ğø¨û…+²¡#´²oVıE¨M¯ü×¦”\\Ì€O\â:\éW\"k=—’\ïÀÖ²\ÔT?Q\ïo\Óz¯jœ:r1[Ÿ\Ñ\\®”•p\Êl9q¢€¼jNc\å\ãE\Ã\0I Z•<<64¡\ØdLbÁ\Ê\Ë]$\È?•\Ç÷~2+X\æ\Şf¨$^©•y{«C\Ìø\Ê\ä,E)û=\r¿\'­A6¶‡J\é\ã\Ò\Ê\Ëi«e\Ûvln\á\Ä\Ì\ÈuÆ…Š²4š–÷_T)V\è<\ì\Ã\ß^ÿ\0\Í\Û\Úyqu\Ñ\Óö\Ü	¶\í\çu\İwLXñ\áÉ›Õ‚<v@\Ê\è<\Ñ0.:O/1®_±\Ûñ\Æu¢Å¼\î+l\\e@$\âIcÂ¸¦öGWM2¸(b\ÆtQaec¾\Ù-f°÷Œ¬X\èk<-­\Û{\Ã.P¨Š¬ŒM>\ÑK8IW\ãf\ÍQ.L1;ò\ë_ˆ­&ñk·ğcuŸ·ö\Ø°\Ã\Zt\Ò^e>z\ïü°˜ù»·r\î¤A:\â`D|Çˆ\'—:›«l´{tÏ´f§\ÈYğp@ıuC¸³»¯u\Å\Ê\Æ\Æ\âÊ§\Í\í§]p\Ë\á®&Tcó†u\Ğßˆ5u8\Éö™0\âh\áK5¨\ÛE\ïl\Èd\ÚaboröñW7XbØ›iX,ò^\×\Z\n’ı$Ñ’úm`5ñ£\'’J‹‚F \éU“\Ë\ßV(“®WX£]\Ø*‹ø“aD‰¨û¤ˆp\'é±¼LCpEª¤$(\ÙF<_Â¿p©°X[O²–›é®”™¤\è\ãjq9R\î9\àF´‰µS4ˆ‰sZj›P¿:ş¯\Ë\åğ­=C¬\Ñ\\\ä;„«n\ê›U“\é¯\ZP@ \ëJ‡…H\ãS•1`¶O\ÈTÓ¥T+Mgt	“?£„½ùW5®X\Ï>U±a1\r%şn\ê~\ÇIlI67M‹·w\ä\ÛHm{£>¯;\åcvı§fË‰p÷	}(ò¡R_\ÊA¯o\ã®^\Ş\Z=‹k\Üpv\ÌÍ“v™YUñrÁ\ëV…Å¼¼O”ò\"«\îŸË§\ã\Û%A\ÛÙ»!’I%Ib\Ë$ú‘A\åÓ\í^]\ÛÃ»sR\Ïm|*0\É\êH’›q\'+WğÁ†K’mì©´Ö§z•V\İD ¥®™\\¬ö~ã“ºe^²\"¿™ı¶ºX[o»‡l\îM›o—\'g%Šr\ÂI\ë]>j\ßY\Û÷Ã\éî®u“r\Ê9»Y—öoá ­§Ï–S\éK\Ïú2\Ôb`ú†I<¾¡µ…Tùj¿\ì\Æ\ÃdÏ™!ˆ´…Ã¨\ês\Æ\ãst\×\r¹ô•cš\Ä\0µ–½j{2^½A:¤²(ûk—»8¿\rs­r\äğ’„•Ò‚\Åx\à­1!\0Q)\â’\Íå¿…<‰½\Ç9]»¸C)òXó#Pt­9\Û\n\Ö^\ìÁ\Úû\nMÄ»K$MŒ¡ubÉ¥\Íı•µ–ÿ\0\Ênó\Ü\Ø[>\Å\ç24‘2 \n8ù†—¨ºf«\\,¨ò±a\ÈKtL‹ ]^§mp!\×\ä\05V›\Şó·á²¬óv!R5»9\'÷V\æ´Ó©¨ù’\'¥\í#J©T3‡$õp\åW<\"šôÍ¯o_°u\Ó`µ\Â\é‚&•RXn\ãS’ utš-8b ñ°Ö§ kNù-ªa§¨/À»h¢µŒº\ßş\Ğ\n²’¬å¤’\ìşö\ÔÓƒS±õzvğÒƒ\Â6D\Â(\ËTõ*\ç›ô\æyòğ¾\ã]\\ü1¬¶N^P\â\ãî±·öÌ”U9Q\êc\Ì>IWU\Óö…\ë\Øù,sôj?¾Ë³n\í»\àE,qşO*#xra—OS¤ô€|k³¾š\íót\Â\Ërü<o r\Ë/–(\îJ¯\ï|k\Â\ßLW§|\Å²ƒ{h9Q‡=†a\Í1K{\ê8\n‹©\ëR\é\Ö×·›Ç•­2c+ss\0Ø*ô\Õ;\í…D›Ü˜\Ù‘:³#«+/ˆ<+¯N¸ºv9/sIœ¥e¹\ë7<‡¼\å\á†û°]\İ4yR\É\é“\Ñ\êtF9i\ÎÕ´¬<\ÕNÙ‰&.PVK8dÛ•Ÿü£sı\Ú||q4$t\Æö?mcÓ”­¹õ±¢\ÄÜ¡\Í\ÆI£7—¶¸·\ÓC^Ñ¼\ì64r-\×,¯¾\ÕÁ\İz\á¢W]t\ãÀ\×§ˆ _Oe\0©\r\ŞÂŠ\r6š\Ñ‰$!I½­\Ä\Õ`\á†T\ÈÁ–\'?Ë‘\n7¹…\\µa\Çw¿3-s°\ç\Ì\ã`¼\Æ\È\â\ÑwP¯WÚ¹·¸KŸ¾W+`‹+\"	\"ôı\ç¨tù)×²£üª¼©ÛÁ‰¶tÆ¸Ğ”\È`$`¶³Uw\æÖœ\éVûGz÷÷r‡‡hV£nF¨Š=–\r\\\Ûq\×V³z½\Ù{V=µ\ß3:f\Ü79>l©¼\Åo\Ê0\Ä\Û\áYm\ÓúVR²³E½•3bC‘‚§_…<‘_•_OˆµW±\áÑ¢,\Ø\È\ç\Ü\ß\Ä8\×m)\ÅR¦ö÷\ÔÕ¥FÖ¹¨ÀzN§^:\Ó:‚!bl-sFO$Ì¸°\Ã4Ÿ\êr=\ÇD¦X[š†¦ò»\ÃAFZ\Ã\Ñ\ÆÌ§ÀÑ¦\Şe(`\ŞõZ¢\ÖW/mg†i9Ù\è5Õ¦ò2ª8ö”\ÍÛ–\×\ÈÑ€ñ®®]ñYm®T\árŸo\Ë\í<\ã\×&*İ’fÓ¤¦²D·\äË­…{úû\Ç5\Ö\Æw¸ûû\Ş\ÖùBLGYE\Ët\Úı7¿*Ã¯Ï.}vm\ä\ë\'Z\à\Û_-¦\È\çS¦ú^ªö%™À°¥uT\İ?\Õ|G1—\êôO_1‰š|\Èò:\È.\ê\×\ZÚ»ô\ŞHá¼®R1\ç™#8N–ğf\éû\ÅWùcMxÓ­±÷\r\î6\ã2­¬À’5á­ª.Ñ´\àôöşü Í“Š°É/ˆ¯Q·n\çù\ÆV	ƒXmi:e\Íyµµ‹“…³F\'o;b¾\å\\«nw\Ñ\Ûx¿—\Ø0‘…›\Ó\êo{›×‘\ßõÕ¦\ÙY)µ\Ï+\×-«>·\Ğ\Ñ(zH-q§*)\ZvĞt\á#OMÁ\âE<©^’\Ã{q\à+Mk=˜mÍ±¡“¹\"–+\äMr1f\r`¥—¥ü¶\ço\Zõ~m\Ü\İ#5ùı­·\ä´H2÷„\\ub©\Z\Ú÷ı\ê\Ûmü¢\é\á³;\'}\îl†\Í\ê“mÁó:p\êrt^tu\íˆ\\ô\Íwh`\Æ\ÇL|x\ÄPÆ¡R5\Ğ\08W‘×¦k³]p¬\Î6$k8[+\ç±<9V˜B9K“j!½\êòôS&\ê\"\ÈúŸ$–¸ğa\Ï\ã\\®Œ-\0ºR§‡°“r”ZamEl\'¯4pŸ•T‡ÁSF2[\\Crä´’I(\Ö>Q\àƒEÓ®¯= \Ş4ESÊ‘9\neYŒ’\Ód3^\ê8U\êŠK§úYEµ\éoº®TX§Š\0»|D\Â+\\Œ3çŠ­¶®ZŸO+\ŞlEˆû+¿\ä\é\çõ‡o\Å\Æ\Õ\Úı³6Áó#¾2\â®+ˆ\äR²8=`¹ò»1ı\èw\Şzş¹y[“2`ú­ó)\à+Ï]\×eTñ21½Á§Jl‹\'?~µ+”\ÖC‚ñ\Ó\í§)İ²‡´$H\Ï\Ò«^¯mU\İ3X\'‡\áMÿ\0v§\Ù¸\ÛL’\Ñş$>\Ê\Òd®\æ_w9rt&üÀı5X¥w\Ê{bC,©@:Tÿ\0‘>¹H\Û0_p\Ü1ğc\à\î\ÍYt\ÛÁë«°Æ«B5\àƒ¥G°\nòºmš\èÔ”\æ[PMaiÔ›‘cK$Ch\ÚxU@oªü¹\éFM\ZBKøSVor€¦¬«\İ\ë©¸L_¡¿#`¿´t‘]üYn\Ã\ï»\Ì\Ãl\Øq›bb™O°±²Ÿ²ºp\Í\Ğ>šmƒ`L‰	\\Œ\Ç3µøÛ‚\×~4‘³Yœ]8Š\ã­\Ğ3©‰µTg²¾]•y¥ƒ&÷>\Úpo³Â™7Š¡¡·>G\Ú8W>7n¸oø†Œ*vÔ¡\Å\êV‘©‘gÍ\è3]8\Ò:ÿ\0S$ú1ø„9ªş´òj;4ºhA\î\n‘ °¸ÆµFƒ¹\ä•N‘\ÎõQ6ª\âŒ.xš¬¤‰‡ò\äº~\êqUb(loÀ ­!J­“¶ó{—1vLç™¿1H¢\à\ÎZ\Ä\\½k£lL¶¿Pvm¯¶{K¶;smOOû„%\îYı8İ™˜›’I¯O¼“W\'-³¶p\Â\Î\Ï…€\ç­y“Ã¾\Ïù³%\Ç\Z\Óf¤Î„\Æ‡Oª½\Âõ\n0%X\á:¿Jƒ§…gZÈ³n\ß\Ç\Ë\Ö	UX2Ÿe,¯\Â½´\â\ß\×\"G\Z°ÿ\0e«I½E\ÂÃµ†²Dÿ\0)\Öõ^\Ôx{ „_ p\ZTÂ·\r/\Óİ±=l\ÂA\ÃùQ{Î¬k÷ôò\Û\ry[VóÁ\'‡\nj@:xÚ–Y›ù¼*²p•o5\Í^L5¬ö\ÓKÓ…T\Ù-\æÓ™­uE¬gI3D	98\ï>k\×w{Vx|irQb\Ë\ĞF‡›Z\é\ÛñsiV‹Ò‰?¦¨¡G€\0WÕ¾±v‘°»^\Ã\í¬0\×åˆƒvk\Ñ*jf:ŸØš©R‚\Ñ8¸<¨„Mšö·Æ™·‘‚\0¿X\å¾.\Ğ\åŸür½NA…™_/\İY\Óy\Ö\İ+¬ŒB¨ö)‘•\Ğ2\n/ÉŠ¢>-Å;„ë±´R¨XhM,/\"\'#©˜ğ\áU!Z®”™\æ>\05xgh8A6\0qªš\ä²j=¿rÏ¼xÍ\Ì:zÆˆ·\Ò\ìÜ‡Âºù|›mø\Ç~\Ú\Åÿ\0n}2x±`şù:\Ë*6>1a\×ÿ\0%‘›ü5\éñø$ÿ\0ô\ä\ß\êş›]¿k\Ûv\èŒX8±c#j\â$T\ê#›Xj}¦»õ\Òkù\Ûmo\ë}fh?ºöŠJŒ\ìrò2\r‚²A\Äøñ¬>«0\×\çı`7‹uu-ı¢¼\Ìùz²xU.IŒ\Ü^\Ü\Åi+\r¡3ˆ\ç\Z\ë\ãW„90½3\Ô5\Ê,3}*5S\ÒÂ¢\è¯`³\å£y\é\ÌiD\ä^\Æ\äüä¤–&õS˜÷4\"\ÊÓùUˆ½\Ú.\Ô\í\ã~\ÏLHÀ\ë,­~˜Ó›1ûª´\årË§Oı·övÇ‡µÁ·.*…zD\à‘6,5¹5¶\ß6¶b\Ç>½¶Ÿ•]›\Ù9 —Á\ÈS~J\n‹Epõÿ\0Wùuiöÿ\0qE™…™ƒ\åÌ‰¢\×G\â§\Ük\Î\éòo¯\ë«^\Óo\Ã1ÈŸµrk¢òõ\í\Ö<*l5\'²–“\äk\ëU!U\Íy¬5\áZÈ‹X¿©ª%\ÈÀU=\'ù€·€µwüùF\îr…Zvó(Aö5ut\×\Ã-]·ˆâ‰½ƒ\î\åôıoª\É3P\Æ|y\ÖU¤5ù”v:\ëJB¦¥\Ôø\ÓI¢¬\n%,<°\êê¶µY&\İ\ã& \Ë\ï½`\ß&&F’=>u ¯¼UJyOÅŸÖ[µ8#\Å<\Ù\'\ä\Ç[‹ó•ôQJD\íı#¡Ò{\\ø±\Ô\Ó<fE[“`\Íô\0x\ÕHwÁ¸ğ÷M\Ä·c´ˆ\Â\âvºDGî½ˆ5\Ù\Ç\ã\ß\á\ÏÓ¾ºÿ\0+}¿±2Š\Î\å\æHW\Íğrtû+\Ñ\çş²ô\ã\Û\ëş—\Ø¯²\á…\é\ÇY¥^L\Éş\"+»Ÿ\Ç\Ï_\á†ıö\Ùj\0\0\0,\0+¢I?Š`P¯\ë\â¼]½º(6\Ä\Ï(\Är\Ä\Ãşš\Ã\è—\×Ã§æ¸¬$’”\r\Ó~ ,|k\Æ\Ú\â½Iyx²ò<yS›£mU\ï\×	\ãZ\Í\Ù\Øq3\Ğ\0jj²’‹cI\Â×ª”~R6\ç\åğ«›™ñöø|\Ò:\'¼€idª¿;¹v¼\Ù\ÑNC€¿-uª•6;\çĞˆó_´á˜¡fÍ“®ÀX]\0\×\ß]\\½]\"º\nR`<dW,\Äim¤\Ûô\å\Â4»^\Û*•“\'ˆ(§õV_õ¹ÿ\0Q_\ä\ÛûSgv>\ß3´¸²É‹!ùPy¡ğy~ú\æ\ëş»M¿<7\×\ë\Ú~²»\Öİ—´õÀv#§(|—ğ$ü§\Ù^OŠ\è\ë\ç\Úl€Î®„¡Hù† \×\ZÜ¨g¿®m­i\"6`¾¥fK‘†ê ‘„†:\Z\ïù\ã-\Ü\ß\íFC°`0ök ®®³\Ã-]\Ïm•g\ÚñrQ,(\ãü5\åt]\ZÔ˜Õˆ÷ò¬Õ”N§I¸hM<OV½M=^³YM#¯:‡OÂ¨°\ÚÁ¬e	\Ô\rs¶Á¢\n¹©\ã$N,‚	™Iò¿™G·˜©Â¥IŸ\ËPøÿ\0>yùE]/\ß&ğ£—)ºaFšC§J\Û\ŞxkË…\ŞøN\İ&¿­^\Í\Ú\Ñ\ÄFNó\':¬??\Ú~6¯{\çø5\×\Î\Ï7¿\×vñ\Z€\0°\0¯BL8\Å0(€(€\È}Y\Ù\ïØ›ŒH¥\æ\Æ—\Z¨¨ÿ\0\Ëzš\æ4\åq³’\ìq,˜){| ƒ\âµ\âv\Ó\ìirw2\é\"\×Z\ÆV˜P\å\ã\Æút\àk]k;\É~¡q\ãZ\Ê\Ê\ÄgG”\Û\ßO)±i\äÀŸ…<–™a¥¶\æuG\Ú6‰·m\âXÔ²‡›\è+H\Ïjû\'´6¡µv\Ş\00\Ä{Î§\ï®\î:\â8·¾W²\0P\0P2+–”ñ\\R³!K¹v~Íœ§ùg\ZS\ÂhH>2şŠ\æ\éòi´ü\Ãm{\íÿ\0v\ì.\äÀ¤‰á‹«	\"u„õ1ş^wOõûO1Ó¯\Ó+ŠıU\Ê\ë\Í\\p\n¼0tºC+3pa\ÄQË6¹d{ws\'\Æ\Ûeª\\¨•¿ƒm\Ûo	\Ö;´°Gkj4(£€A^?KšèŒtaqcaPxEvQ1sµT‰©V\0\\p¥a\Âdp\ä\ØRÁû#z£ü´\Ë.†À¡-k\×bdRÀ¸\àE2\ÊY!C\"’\Ñ!Se\ã Ö´\ÓLŸ¶?Z-§¶swFNq8\Ğ\ÎC˜ôõm 6¿H·Æ½në½¼\ì\â\íõ\ã\Äjğ6\ì,H„Q¯…\É>ö7\'\ã^¿>:\é1#\Ï\Û{µò“Z$P\0P\0P\ã¢:28Œe:‚„\Z…÷\Ö{w|Ÿn±\Çù˜Œy\Ä\ÇAÿ\0\nó~­·™ˆ3;°¸\àkÍ“Ë«(B	½½õ¤M†¦Á?—¨ğ§)\Íb—;!\áo\ÓW+=µWJ‹şª¬§\n¬ÀX8\n­S´vO ƒ»Z÷rt®C³c#¨lQ\ÃJ\ê\ç\Ï.>\Ûa\Ü\Ô\0\0\n\í“AL\n\0 \n\0 \n\0 \n}Oú7´w„e\âÀ\ßz:W(_Ó”\rBÊ£¨qüAz«-¹\Ïá¦,p?ıcr\íï¨¸ûn\áŒ\Øò\Å$LŒu\ÔGn¤q¡\×\Ûzó~.<»y\í+¥\Î, }5¯şºaˆ&ù´\çj!eY–ı35ü~ú¼$ôY7\'…	Ê»F½:Ôº\ä\ê\éö\Õ«º‘\â\rs~ºL\áC••+bc\'«0\â8,y\n\é\áó]\ï†]:\ë¬ò\×\ì]±‹¶±Éú\Ù\Î,Ò\n?e\á\ï\ç_Aóüšóóü¼®½\îÿ\0ú]Wc@@@@@`~¯\ì‡+fƒt‰€ö‘€\×Ò“Cö5«óş.Ÿl\\9®#u\'¸×‹¶¸¯WT‡…zn¦¥q$\èEõdğ­—¥kZ®T\İLÍ²\Ù	\âM<‰ªû\é‡\Óq¾\ïcq\Ü\"\r³`“x\İn³\ËÃ£]\n¯:\íùõ›8ş®®•õ~ƒoÀa\Û\ÂY@™a²ˆ¢Bğ¿\İ]ûLGŸ¬\Íò\Äm]\ÅÜ¸y\0\ãg\ËĞœc•šHÿ\0\ÂMª3ƒºº\ÉõuX·8N4\ÂÀÌ§ª&ö›…\é÷kNnŒ58›†bÅ\'QÄ£o}ªå”\Ó€)P(˜@@\Ş6\rŸy…\"Ü±#\ÉX›®u£o\ÚF\â§\İQ¾“iŠ­vºş9u\ìM´\ç4\Ë?›Î¤¯0OŠ×ƒõ|ş•\éq\é\í£¥\Å\ë‹-l@™I˜1ñª\ÊO>0\é¿>4½Œ€\İ:5CõG\æm\íªÁ;&İ¶\åg\é\r’5kI3ka\à—5¯\Ëòm½üW¢h\Ö\íûv.–:õ;sfñc\ã_CË”\Òb<ú]®jMj@@@@€.ty7-¾2Uòb?Zõ}—½,Á…~Or\âGoF7›[b€|XTû\Åz£\án+¿\à\ç\íÙ°%uxı;õ+F\ã\Ê\êyÛ,ûK\Æ\å\Ë7>\Ï\î]‘ú²1\ZlK\Ødc(\é\İT\ï5\çvù¬òôù}\Z\ß¬L½\"E-\à:\×\Ú\Ø\ê–S“K\Ã\ZÜ›_\ÄÑ“Á\Ûv\ã¾n)µm‹\Õ<Ÿ\Ô\Ãsv?umËŸµğÃ¶óX\è9ûä¿¶\Å\Ûû*ª®\"¤Ê·˜¸ùÊÀ“Î½>s\Òa\ã\ïn\×5\\\\©\æ\nŠZG:ŸOWv\É4x}›\"\r$ªu\"\×ıuŒ­pû+)ıPTó\éÿ\0})’µ5;.x\\J\ZUù4¶¾ûÑ‰­\ÃY\×\Z1?õ‚€üõ¾’\ã\ÊOU@@@Os\ìQ\ï[Á \ÈO>4?Q\àk.\Ü\æÚµ\å\ÓÖ¸Z\É\ÒE\"”–6)\"`u¾w¶˜¾œ¹†’2\äXPšQºn9T\äğ‡’V§ŠŸL~s¿®µşúKh\Û\×88¸•¼\\ñ5ô?Mpó{t÷\Û)•»!@@@@%Ó«ñ\î¥`F›opss\ãsú\ê.•^Ê¬®\ß\É-\Õ!>Ñ¯é©ºUK\ßÌ‘m#¢ûª})ûB\à\Ûrö©„ğ‘<m\å•MüW…9˜.\Ù[Ç•\Çv¿\á6¹­&Èºª³¶>\Ó\Íy^4%\İeº£½½ ­M\å­ş¯]\ç\åP\çı2\íü ÍµeÉ‰ H\Ñ\ÒH¯ûÁƒ?üÕ†ÿ\0&·ñÑ§Û´ısıÛµ{z‹fH}lÌx?¦\È4.Mü s¹®[ò\â\ã.ı>­n¹t—h\ìí±¡q“¼L½YS~©ñ\ày\n\ê\å\Ë]\'×›×¥\ßoü3ğ\â\äe»S#±$ŸkDÖ³·ûD\Æ\Ã#0t‘òF8üjµ\×,\î\ÍJcc Piñ­&‘8\0*ˆP\0P\0P\0P\0PÎ¾¦ö£0;ö\Z\\ ¶|`qQ\Â@<G:\àúşi˜\ê\á\Óøsü&®8\êğ÷\ç‡t©2Ç•guRd½1’8ò§¬,¨0·WXê½­q~¯\n\ß	õE};\Ç@@@@@@xÊ¬¥X\\4¬\ÈD\È\Ûb•@Gh˜jO?MÑ¤\ß\æ\Ù\ã˜•ıAÏ©A¥\ëE\İ\ZÛ†K\Ç)O$òŸ´Q\éGº6\ãšA		³ 1z\æ\ÆR/¯›ˆš\Üc¢\Å»¹µ‡\Ò\Ê\ãa±\ì°a\â\ÆYA’À›ò5Ql·­¥f)@@@@@@x\è’#F\êe\"\àƒ¡R³\"8—vö\é\í\İğÂ‡ıWT¸lI²\Å¿5\å\ì¯\éù6^—³h«Ÿ&\0£\Î=\Õ\çúc\ÃkU¦l*Š€\ëÂ«]\n\Ö\Ô_ı\×ú‡Ğ·«k«qµtÿ\0\Â2ûV½\ç–(€(€(€(€(€(€(€(\0ğ +ÿ\0²af`Å˜\Ü\êmXúyVMaöö¯”T»\ßù}Zqí§®FV¶«±\"œ€S€(€(€(€(€./nt@_\ê7o.õ\ÛSª(9x\êqš\Úõ ó(ş%¸¬ú\Ì\êÓ–Ø®5š\Äp5\â\ï<»ò¯\ÌU1\Ü~iHk¯ş\É\ìômñ­±0œù}Á^\Ë\Î@@@@@@@@@@@@@@\0xiE¥õ\êù¹\Ôjtª²\0mmxP4÷Bm\Ñ\ï™Ë¶\È\'\ÃõXÀ\ê&\å|\İ\'\Êt¯/\éšg\Åz<\íÂ‹!¼¾e>\Ş\í®Y\"«\Ôÿ\0û]úOO†œ-ï®œxCÿ\Ù',3);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('alka','proper'),('vimal','survey'),('kamal','hello');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `memberid` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `refid` int(11) NOT NULL,
  PRIMARY KEY (`memberid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'xxx',0),(2,'yyy',1),(3,'yyy',1),(4,'kkk',2),(5,'mmm',2),(6,'lll',2),(7,'lll',1),(8,'lll',7);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylogin`
--

DROP TABLE IF EXISTS `mylogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylogin` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylogin`
--

LOCK TABLES `mylogin` WRITE;
/*!40000 ALTER TABLE `mylogin` DISABLE KEYS */;
INSERT INTO `mylogin` VALUES (1,'scott','tiger'),(2,'satish','student');
/*!40000 ALTER TABLE `mylogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mystock`
--

DROP TABLE IF EXISTS `mystock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mystock` (
  `comp_id` int(11) NOT NULL AUTO_INCREMENT,
  `comp_name` varchar(30) NOT NULL,
  `cur_price` varchar(10) NOT NULL,
  PRIMARY KEY (`comp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mystock`
--

LOCK TABLES `mystock` WRITE;
/*!40000 ALTER TABLE `mystock` DISABLE KEYS */;
INSERT INTO `mystock` VALUES (1,'Reliance','500'),(2,'Wipro','700'),(3,'TataSteel','800'),(4,'Colgate','550'),(5,'Bharti','1500');
/*!40000 ALTER TABLE `mystock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mytable`
--

DROP TABLE IF EXISTS `mytable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mytable` (
  `nameid` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`nameid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mytable`
--

LOCK TABLES `mytable` WRITE;
/*!40000 ALTER TABLE `mytable` DISABLE KEYS */;
INSERT INTO `mytable` VALUES (1,'xyz'),(2,'abc');
/*!40000 ALTER TABLE `mytable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Table','Teak wood Table',2100.00),(2,'Chair','Plastic Chair',1000.00),(3,'master Bed','King size Bed',10000.00),(4,'Normal Bed','Queen size Bed',9000.00),(5,'Dining Table','4 chair dining table',6000.00),(6,'Cupboard','Steel Cupboard',5000.00);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration` (
  `regid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `hobby1` varchar(50) NOT NULL,
  `hobby2` varchar(50) NOT NULL,
  `hobby3` varchar(50) NOT NULL,
  `hobby4` varchar(50) NOT NULL,
  PRIMARY KEY (`regid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (3,'gujuhgu','ytyuuyu','huuh@hjhj.t','rrr','123','Reading','Music','Dance','Driving'),(4,'sdwdw','dewdfew','wqddewd@dcfds.fe','dfewfewfdsa@fdsf.ewfdew','4567','Reading','Music','Dance','Driving'),(5,'Vijay','Pandya','vijay@yahoo.com','abcd','1234','Reading','Music','Dance','Driving'),(6,'sdadsa','dffrer','wewq@fdsf.d','qwe','123','Reading','null','null','null'),(7,'vimal','Patel','sdsa@dsd.com','vimal2000','mypass','Reading','Music','null','null'),(8,'Rahul','Gajjar','rahul@yahoo.com','rahul','12345','Reading','Music','null','null'),(9,'fsafsaefsfsdfrse','cszsdsad','ssad@dvd.ews','cdsds','abc','Reading','Music','null','null'),(10,'dfrefsertret','fdsfd','dsz@ssds.in','dgdfsd','abc','Reading','Music','null','null'),(11,'vimal','Patel','xas@cfsdd.ds','vimal','patel','Reading','Music','Dance','null'),(12,'Ravi','Saha','ravi@hotmail.com','ravi','ravi','Reading','Music','null','null'),(13,'Arvind','Patel','arvind@gmail.com','arvind','patel','Reading','Music','null','null'),(14,'Vipul','Shah','sada@fsdf.desd','vipul','vipul','Reading','Music','null','null'),(15,'asas','saasd','saa@dsds.ds','surat','surat','Reading','Music','null','null'),(16,'Vimal','Pandya','sdds@dsd','vimal','vimal','Reading','Music','null','null'),(17,'Prakash','Shah','pshah@xaxas.com','ictict','ictict','Reading','Music','null','null');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Admin'),(2,'Supervisor');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stat`
--

DROP TABLE IF EXISTS `stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stat` (
  `uri` varchar(100) DEFAULT NULL,
  `accessdate` varchar(30) DEFAULT NULL,
  `accesstime` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stat`
--

LOCK TABLES `stat` WRITE;
/*!40000 ALTER TABLE `stat` DISABLE KEYS */;
INSERT INTO `stat` VALUES ('/FilterApp/Login','Tue Aug 09 11:58:23 IST 2016','8milliseconds'),('/FilterApp/Login','Tue Aug 09 11:59:02 IST 2016','11milliseconds'),('/FilterApp/','Fri Jan 06 14:18:39 IST 2017','954milliseconds'),('/FilterApp/Login','Fri Jan 06 14:18:46 IST 2017','30milliseconds'),('/FilterApp/Login','Fri Jan 06 14:18:58 IST 2017','29milliseconds'),('/FilterApp/Login','Fri Jan 06 14:19:20 IST 2017','14milliseconds'),('/FilterApp/BookMaster','Fri Jan 06 14:19:20 IST 2017','12milliseconds'),('/FilterApp/','Thu Dec 27 10:58:20 IST 2018','3215milliseconds'),('/FilterApp/Login','Thu Dec 27 10:58:28 IST 2018','14milliseconds'),('/FilterApp/Login','Thu Dec 27 11:01:46 IST 2018','36milliseconds'),('/FilterApp/BookMaster','Thu Dec 27 11:01:46 IST 2018','10milliseconds'),('/FilterApp/Login','Thu Dec 27 11:01:55 IST 2018','128milliseconds'),('/FilterApp/Login','Thu Dec 27 11:02:07 IST 2018','20milliseconds'),('/FilterApp/BookMaster','Thu Dec 27 11:02:07 IST 2018','17milliseconds'),('/FilterApp/','Thu Jan 03 12:38:24 IST 2019','3849milliseconds'),('/FilterApp/Login','Thu Jan 03 12:38:30 IST 2019','21milliseconds'),('/FilterApp/Login','Thu Jan 03 12:38:48 IST 2019','220milliseconds'),('/FilterApp/Login','Thu Jan 03 12:40:07 IST 2019','90milliseconds'),('/FilterApp/BookMaster','Thu Jan 03 12:40:07 IST 2019','117milliseconds'),('/FilterApp/','Thu Aug 29 10:38:21 IST 2019','4318milliseconds'),('/FilterApp/Login','Thu Aug 29 10:38:24 IST 2019','11milliseconds'),('/FilterApp/Login','Thu Aug 29 10:38:40 IST 2019','293milliseconds'),('/FilterApp/Login','Thu Aug 29 10:38:54 IST 2019','73milliseconds'),('/FilterApp/Login','Thu Aug 29 10:39:06 IST 2019','9milliseconds'),('/FilterApp/Login','Thu Aug 29 10:39:12 IST 2019','8milliseconds'),('/FilterApp/Login','Thu Aug 29 10:40:58 IST 2019','9milliseconds'),('/FilterApp/Login','Thu Aug 29 10:41:05 IST 2019','7milliseconds'),('/FilterApp/BookMaster','Thu Aug 29 10:41:05 IST 2019','141milliseconds'),('/FilterApp/Login','Thu Aug 29 10:41:30 IST 2019','13milliseconds'),('/FilterApp/Login','Thu Aug 29 10:41:38 IST 2019','8milliseconds'),('/FilterApp/BookMaster','Thu Aug 29 10:41:38 IST 2019','8milliseconds'),('/FilterApp/Login','Thu Aug 29 10:58:27 IST 2019','10milliseconds'),('/FilterApp/','Thu Aug 29 14:49:54 IST 2019','916milliseconds'),('/FilterApp/Login','Thu Aug 29 14:50:00 IST 2019','83milliseconds'),('/FilterApp/Login','Thu Aug 29 14:50:08 IST 2019','13milliseconds'),('/FilterApp/Login','Thu Aug 29 14:50:40 IST 2019','8milliseconds'),('/FilterApp/BookMaster','Thu Aug 29 14:50:41 IST 2019','128milliseconds');
/*!40000 ALTER TABLE `stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `stockid` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`stockid`),
  KEY `productid` (`productid`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,6,0),(2,5,150),(3,4,50),(4,3,100),(5,2,100),(6,1,0);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
  `SubscriptionId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  PRIMARY KEY (`SubscriptionId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES (1,'India Today','Magazine'),(2,'Seven','Other'),(3,'IndiaTimes','Newspaper'),(4,'Times Of India','Newspaper'),(5,'Abhiyan','Magazine');
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_continents`
--

DROP TABLE IF EXISTS `tbl_continents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_continents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_continents`
--

LOCK TABLES `tbl_continents` WRITE;
/*!40000 ALTER TABLE `tbl_continents` DISABLE KEYS */;
INSERT INTO `tbl_continents` VALUES (1,'Asia','Asia'),(2,'NorthAmerica','North America'),(3,'Europe','Europe'),(4,'Africa','Africa'),(5,'Australia','Australia'),(6,'SouthAmerica','South America');
/*!40000 ALTER TABLE `tbl_continents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_countries`
--

DROP TABLE IF EXISTS `tbl_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `desc` varchar(25) NOT NULL,
  `continent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_countries`
--

LOCK TABLES `tbl_countries` WRITE;
/*!40000 ALTER TABLE `tbl_countries` DISABLE KEYS */;
INSERT INTO `tbl_countries` VALUES (1,'India','India',1),(2,'Russia','Russia',1),(3,'China','China',1),(4,'Thailand','Thailand',1),(5,'Canada','Canada',2);
/*!40000 ALTER TABLE `tbl_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_districts`
--

DROP TABLE IF EXISTS `tbl_districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_districts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `desc` varchar(25) NOT NULL,
  `state_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_districts`
--

LOCK TABLES `tbl_districts` WRITE;
/*!40000 ALTER TABLE `tbl_districts` DISABLE KEYS */;
INSERT INTO `tbl_districts` VALUES (1,'Surat','Surat',1),(2,'Baroda','Baroda',1),(3,'Ahmedabad','Ahmedabad',1),(4,'Anand','Anand',1);
/*!40000 ALTER TABLE `tbl_districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_states`
--

DROP TABLE IF EXISTS `tbl_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `desc` varchar(25) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_states`
--

LOCK TABLES `tbl_states` WRITE;
/*!40000 ALTER TABLE `tbl_states` DISABLE KEYS */;
INSERT INTO `tbl_states` VALUES (1,'Gujarat','Gujarat',1),(2,'AndhraPradesh','Andhra Pradesh',1),(3,'Tamilnadu','Tamilnadu',1),(4,'Karnataka','Karnataka',1);
/*!40000 ALTER TABLE `tbl_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_talukas`
--

DROP TABLE IF EXISTS `tbl_talukas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_talukas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `desc` varchar(25) NOT NULL,
  `district_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_talukas`
--

LOCK TABLES `tbl_talukas` WRITE;
/*!40000 ALTER TABLE `tbl_talukas` DISABLE KEYS */;
INSERT INTO `tbl_talukas` VALUES (1,'Choryasi','Choryasi',1),(2,'Olpad','Olpad',1),(3,'Bardoli','Bardoli',1),(4,'Mahuva','Mahuva',1);
/*!40000 ALTER TABLE `tbl_talukas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_villages`
--

DROP TABLE IF EXISTS `tbl_villages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_villages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `desc` varchar(25) NOT NULL,
  `taluka_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_villages`
--

LOCK TABLES `tbl_villages` WRITE;
/*!40000 ALTER TABLE `tbl_villages` DISABLE KEYS */;
INSERT INTO `tbl_villages` VALUES (1,'ParvatGam','Parvat Gam',1),(2,'Bhestan','Bhestan',1),(3,'DindoliGam','Dindoli Gam',1);
/*!40000 ALTER TABLE `tbl_villages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluser` (
  `UserId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `EmailAddress` varchar(256) NOT NULL,
  `ContactNo` varchar(10) NOT NULL,
  `ResidentialAddress` varchar(512) NOT NULL,
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `UQ_Username` (`Username`),
  UNIQUE KEY `UQ_EmailAddress` (`EmailAddress`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluser`
--

LOCK TABLES `tbluser` WRITE;
/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
INSERT INTO `tbluser` VALUES (1,'kamlendu','ompandey','kamlendu@gmail.com','99999999','dsad'),(2,'kamlendu1','ompandey','k@fdds.in','543543','`wqwq'),(3,'kamal','kamal','assa@ssa.fds','21321321','wwqewqewq'),(4,'hello','hello','gfdgg@fdf.in','4545453','fffrere'),(5,'bhavin','bhavin','dsa@fds.in','32132121','saxssa'),(6,'kamal1','fdsfds','sdds@dvfds.in','4324242','vfdsf'),(7,'kamal2','kamal','kasa@da.ds','4324324','vgxfdfd'),(8,'dszdsdsa','vgfdgfdg','qdsds@sd.in','1212','fsdf'),(9,'mjhjjhg','gfdgfd','ffd@v.f','4435','vdgfd'),(10,'vikas','vikas','dsds@sdsa.com','321321','fsfds'),(11,'kamlendup','kamlendu','sadsa@das.com','545453','dffdf');
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testing`
--

DROP TABLE IF EXISTS `testing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testing` (
  `testing_id` int(11) NOT NULL,
  `adr_id` int(11) DEFAULT NULL,
  `temp_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`testing_id`),
  KEY `fk_testing_1_idx` (`adr_id`,`temp_id`),
  CONSTRAINT `fk_testing_1` FOREIGN KEY (`adr_id`, `temp_id`) REFERENCES `addr` (`ad_id`, `temp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testing`
--

LOCK TABLES `testing` WRITE;
/*!40000 ALTER TABLE `testing` DISABLE KEYS */;
/*!40000 ALTER TABLE `testing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','PBKDF2WithHmacSHA256:2048:uS4W774WdYj872LVuRSMujHdgqEVf7yPGZw6MGbgKI8=:VVT3CD1wfVvkQ7ct2eCNWUKr6GuMFztvJPOUgD1MybU='),('user','PBKDF2WithHmacSHA256:2048:ooL0ULgBf6Fq0YurXBIKMjWWrqOukulRBqAXzFjExys=:Gh8g16d69tWZVltJVRc17GweywmXVr1+eTl7FyKgdxQ=');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertable`
--

DROP TABLE IF EXISTS `usertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertable` (
  `userid` varchar(10) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertable`
--

LOCK TABLES `usertable` WRITE;
/*!40000 ALTER TABLE `usertable` DISABLE KEYS */;
INSERT INTO `usertable` VALUES ('admin','2CSU8F1pF7oC96qilonMtES7c/IDgIdssF0fN1N7eJI='),('user','4XLFZU28EteM4YUKT3lWum5aPSrEDwkl/G1pHrtU9r8=');
/*!40000 ALTER TABLE `usertable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v_account_role`
--

DROP TABLE IF EXISTS `v_account_role`;
/*!50001 DROP VIEW IF EXISTS `v_account_role`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_account_role` AS SELECT 
 1 AS `account_id`,
 1 AS `role_id`,
 1 AS `username`,
 1 AS `password`,
 1 AS `role_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_account_role`
--

/*!50001 DROP VIEW IF EXISTS `v_account_role`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_account_role` AS select `account_role`.`account_id` AS `account_id`,`account_role`.`role_id` AS `role_id`,`account`.`username` AS `username`,`account`.`password` AS `password`,`role`.`role_name` AS `role_name` from ((`account_role` join `account` on((`account_role`.`account_id` = `account`.`id`))) join `role` on((`account_role`.`role_id` = `role`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-14  0:12:04
