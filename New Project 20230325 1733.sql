-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.30-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema smevcs
--

CREATE DATABASE IF NOT EXISTS smevcs;
USE smevcs;

--
-- Definition of table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE `tbl_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
INSERT INTO `tbl_admin` (`id`,`email`,`password`) VALUES 
 (1,'admin@gmail.com','Admin123');
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;


--
-- Definition of table `tbl_booking`
--

DROP TABLE IF EXISTS `tbl_booking`;
CREATE TABLE `tbl_booking` (
  `i` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slotname` varchar(45) NOT NULL,
  `address` varchar(455) NOT NULL,
  `area` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  PRIMARY KEY (`i`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_booking`
--

/*!40000 ALTER TABLE `tbl_booking` DISABLE KEYS */;
INSERT INTO `tbl_booking` (`i`,`slotname`,`address`,`area`,`city`,`state`) VALUES 
 (1,'Karve Nager','114/A, Karve Rd, Hingne Budrukh, Karve Nagar, Pune, Maharashtra 411053','Karve Nager','pune','Maharashtra'),
 (2,'Karve Nager','114/A, Karve Rd, Hingne Budrukh, Karve Nagar, Pune, Maharashtra 411053','Karve Nager','pune','Maharashtra'),
 (3,'Karve Nager','114/A, Karve Rd, Hingne Budrukh, Karve Nagar, Pune, Maharashtra 411053','Karve Nager','pune','Maharashtra');
/*!40000 ALTER TABLE `tbl_booking` ENABLE KEYS */;


--
-- Definition of table `tbl_chat`
--

DROP TABLE IF EXISTS `tbl_chat`;
CREATE TABLE `tbl_chat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `que` varchar(45) NOT NULL,
  `ans` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_chat`
--

/*!40000 ALTER TABLE `tbl_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_chat` ENABLE KEYS */;


--
-- Definition of table `tbl_payment`
--

DROP TABLE IF EXISTS `tbl_payment`;
CREATE TABLE `tbl_payment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ownername` varchar(45) NOT NULL,
  `vehno` varchar(45) NOT NULL,
  `paymenttype` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment`
--

/*!40000 ALTER TABLE `tbl_payment` DISABLE KEYS */;
INSERT INTO `tbl_payment` (`id`,`ownername`,`vehno`,`paymenttype`,`amount`) VALUES 
 (1,'sonali','98901236','240','2000');
/*!40000 ALTER TABLE `tbl_payment` ENABLE KEYS */;


--
-- Definition of table `tbl_slot`
--

DROP TABLE IF EXISTS `tbl_slot`;
CREATE TABLE `tbl_slot` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slotname` varchar(455) NOT NULL,
  `address` varchar(455) NOT NULL,
  `area` varchar(455) NOT NULL,
  `city` varchar(455) NOT NULL,
  `state` varchar(455) NOT NULL,
  `country` varchar(455) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slot`
--

/*!40000 ALTER TABLE `tbl_slot` DISABLE KEYS */;
INSERT INTO `tbl_slot` (`id`,`slotname`,`address`,`area`,`city`,`state`,`country`) VALUES 
 (1,'a','rosary school','warje','pune','mh','india'),
 (2,'Karve Nager','114/A, Karve Rd, Hingne Budrukh, Karve Nagar, Pune, Maharashtra 411053','Karve Nager','pune','Maharashtra','India'),
 (3,'Warje',' NDA Rd, Giridhar Nagar, Warje, Pune, Maharashtra 411058','warje','pune','Maharashtra','India'),
 (4,'Hadapsar','Solapur Rd, Gadital, Hadapsar, Pune, Maharashtra 411028','Hadapsar','pune','Maharashtra','India'),
 (5,'Singhgad Road','Sun City Rd, Sun City, Daulat Nagar, Pune, Maharashtra 411051','Singhgad Road','pune','Maharashtra','India'),
 (6,'swargate','Police Colony, Swargate, Pune, Maharashtra 411042','swargate','pune','Maharashtra','India'),
 (7,'Baner','Baner Hill, Baner, Pune, Maharashtra 411021','Baner','pune','Maharashtra','India'),
 (8,'Bavdhan','NDA Pashan Rd, Ram Nagar, Bavdhan, Pune, Maharashtra 411021','Bavdhan','pune','Maharashtra','India'),
 (9,'Wakad','Datta Mandir Rd, Pratham Bunglow Society, Wakad, Pimpri-Chinchwad, Maharashtra 411057','wakad','pune','Maharashtra','India'),
 (10,'Hinjewadi','Hinjewadi Phase 1 Rd, Phase 1, Hinjewadi Rajiv Gandhi Infotech Park, Hinjawadi, Pimpri-Chinchwad, Maharashtra 411057','Hinjewadi','pune','Maharashtra','India');
/*!40000 ALTER TABLE `tbl_slot` ENABLE KEYS */;


--
-- Definition of table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(4555) NOT NULL,
  `address` varchar(4555) NOT NULL,
  `mobile_no` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `vehicle_no` varchar(45) NOT NULL,
  `vehicle_name` varchar(4555) NOT NULL,
  `vehicle_owner_name` varchar(4555) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` (`id`,`name`,`address`,`mobile_no`,`email`,`password`,`vehicle_no`,`vehicle_name`,`vehicle_owner_name`) VALUES 
 (1,'sonali','pune','9890123456','sonalimitkari05@gmail.com','Sonali123','123','suzuki access','sonu'),
 (2,'ss','ss','9890123456','ss@gmail.com','Ss12345','123','suzuki Access','o'),
 (3,'riddhi','mumbai','1234567890','xyz@gmail.com','111','122','yo','rk'),
 (4,'rk','19,abc','123qavcx','admin@gmail.com','Sndt02!!','11','aa','rk'),
 (5,'rk','19,abc','123qavcx','rk@gmail.com','Abc123..','11','aa','rk');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
