-- MySQL dump 10.10
--
-- Host: localhost    Database: datamart
-- ------------------------------------------------------
-- Server version	5.0.18-nt

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
-- Table structure for table `customer`
--
create  database datamart;
user datamart;

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `password` varchar(100) default NULL,
  `dob` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `phne` varchar(100) default NULL,
  `address` longtext,
  `status` varchar(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--


/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
LOCK TABLES `customer` WRITE;
INSERT INTO `customer` VALUES (1,'uppi','uppi','1995-10-15','uppi@gmail.com','8121999526','HYd','1');
UNLOCK TABLES;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

--
-- Table structure for table `incharge`
--

DROP TABLE IF EXISTS `incharge`;
CREATE TABLE `incharge` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `password` varchar(100) default NULL,
  `dob` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `phne` varchar(100) default NULL,
  `address` longtext,
  `status` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incharge`
--


/*!40000 ALTER TABLE `incharge` DISABLE KEYS */;
LOCK TABLES `incharge` WRITE;
INSERT INTO `incharge` VALUES (1,'sai','sai','1995-10-18','sai@gmail.com','8121999526','Hyd','1');
UNLOCK TABLES;
/*!40000 ALTER TABLE `incharge` ENABLE KEYS */;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL auto_increment,
  `sname` varchar(100) default NULL,
  `cname` varchar(100) default NULL,
  `pnmae` varchar(100) default NULL,
  `price` varchar(100) default NULL,
  `caddress` longtext,
  `subinch` varchar(10) default NULL,
  `retailer` varchar(10) default NULL,
  `admin` varchar(10) default NULL,
  `supplier` varchar(10) default NULL,
  `payment_stat` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--


/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
LOCK TABLES `orders` WRITE;
INSERT INTO `orders` VALUES (1,'arjun','uppi','ac','26000','HYd','1','1','1','1','Paid');
UNLOCK TABLES;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL auto_increment,
  `psupplier` varchar(100) default NULL,
  `pname` varchar(100) default NULL,
  `pdes` varchar(100) default NULL,
  `pqua` varchar(100) default NULL,
  `price` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--


/*!40000 ALTER TABLE `product` DISABLE KEYS */;
LOCK TABLES `product` WRITE;
INSERT INTO `product` VALUES (1,'arjun','ac','cool','499','26000'),(2,'arjun','xjb','kxj','455','100000');
UNLOCK TABLES;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

--
-- Table structure for table `retailer`
--

DROP TABLE IF EXISTS `retailer`;
CREATE TABLE `retailer` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `password` varchar(100) default NULL,
  `dob` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `phne` varchar(100) default NULL,
  `address` longtext,
  `status` varchar(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `retailer`
--


/*!40000 ALTER TABLE `retailer` DISABLE KEYS */;
LOCK TABLES `retailer` WRITE;
INSERT INTO `retailer` VALUES (1,'arun','arun','1995-10-18','arun@gmail.com','8121999526','Hyd','1');
UNLOCK TABLES;
/*!40000 ALTER TABLE `retailer` ENABLE KEYS */;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `password` varchar(100) default NULL,
  `dob` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `phne` varchar(100) default NULL,
  `address` longtext,
  `status` varchar(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--


/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
LOCK TABLES `supplier` WRITE;
INSERT INTO `supplier` VALUES (2,'arjun','arjun','1995-10-18','bmreddy512@gmail.com','8121999526','Hyd','1'),(3,'uppi','uppi','1995-10-15','uppi@gmail.com','8121999526','HYd','1');
UNLOCK TABLES;
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

