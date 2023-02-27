-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.27-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para sql_bootcamp_feb2023
CREATE DATABASE IF NOT EXISTS `sql_bootcamp_feb2023` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `sql_bootcamp_feb2023`;

-- Volcando estructura para tabla sql_bootcamp_feb2023.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL,
  `cust_name` varchar(50) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `grade` int(11) NOT NULL DEFAULT 0,
  `salesman_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`customer_id`),
  KEY `fk_salesman` (`salesman_id`),
  CONSTRAINT `fk_salesman` FOREIGN KEY (`salesman_id`) REFERENCES `salesman` (`salesman_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla sql_bootcamp_feb2023.customer: ~8 rows (aproximadamente)
INSERT INTO `customer` (`customer_id`, `cust_name`, `city`, `grade`, `salesman_id`) VALUES
	(3001, 'Brad Guzan', 'London', 0, 5005),
	(3002, 'Nick Rimando', 'New York', 100, 5001),
	(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
	(3004, 'Fabian Johnson', 'Paris', 300, 5006),
	(3005, 'Graham Zusi', 'California', 200, 5002),
	(3007, 'Brad Davis', 'New York', 200, 5001),
	(3008, 'Julian Green', 'London', 300, 5002),
	(3009, 'Geoff Cameron', 'Berlin', 100, 5003);

-- Volcando estructura para tabla sql_bootcamp_feb2023.salesman
CREATE TABLE IF NOT EXISTS `salesman` (
  `salesman_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `commission` decimal(20,6) DEFAULT NULL,
  PRIMARY KEY (`salesman_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5008 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla sql_bootcamp_feb2023.salesman: ~6 rows (aproximadamente)
INSERT INTO `salesman` (`salesman_id`, `name`, `city`, `commission`) VALUES
	(5001, 'James Hoog', 'New York', 0.150000),
	(5002, 'Nail Knite', 'Paris', 0.130000),
	(5003, 'Lauson Hen', 'San Jose', 0.120000),
	(5005, 'Pit Alex', 'London', 0.110000),
	(5006, 'Mc Lyon', 'Paris', 0.140000),
	(5007, 'Paul Adam', 'Rome', 0.130000);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
