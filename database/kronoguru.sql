-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.9-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for kronoguru
CREATE DATABASE IF NOT EXISTS `kronoguru` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `kronoguru`;

-- Dumping structure for table kronoguru.brands
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

-- Dumping data for table kronoguru.brands: 5 rows
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` (`id`, `name`, `slug`, `logo`, `createdAt`, `updatedAt`) VALUES
	(1, 'A. Lange & Söhne', 'a-lange-soehne', 'a-lange-soehne-56.png', '2017-04-28 18:46:36', '2017-04-28 18:46:36'),
	(2, 'Arnold & Son', 'arnold-son', 'arnold-son-69.jpg', '2017-04-28 18:46:36', '2017-04-28 18:46:36'),
	(3, 'Audemars Piguet', 'audemars-piguet', 'audemars-piguet-60.jpg', '2017-04-28 18:46:36', '2017-04-28 18:46:36'),
	(4, 'Ball Watch', 'ball-watch', 'ball-watch-d5.jpg', '2017-04-28 18:46:37', '2017-04-28 18:46:37'),
	(5, 'Baume & Mercier', 'baume-mercier', 'baume-mercier-d2.jpg', '2017-04-28 18:46:37', '2017-04-28 18:46:37');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;

-- Dumping structure for table kronoguru.family
CREATE TABLE IF NOT EXISTS `family` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `brandId` int(11) NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=233 DEFAULT CHARSET=latin1;

-- Dumping data for table kronoguru.family: 5 rows
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` (`id`, `name`, `slug`, `brandId`, `createdAt`, `updatedAt`) VALUES
	(1, '1815', '1815', 1, '2017-04-28 18:46:36', '2017-04-28 18:46:36'),
	(2, 'Arkade', 'arkade', 4, '2017-04-28 18:46:36', '2017-07-14 20:08:03'),
	(3, 'Cabaret', 'cabaret', 1, '2017-04-28 18:46:36', '2017-04-28 18:46:36'),
	(4, 'Lange 1', 'lange-1', 2, '2017-04-28 18:46:36', '2017-07-14 20:08:17'),
	(5, 'Richard Lange', 'richard-lange', 1, '2017-04-28 18:46:36', '2017-04-28 18:46:36');
/*!40000 ALTER TABLE `family` ENABLE KEYS */;

-- Dumping structure for table kronoguru.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table kronoguru.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`email`, `token`, `createdAt`) VALUES
	('lbl8194@gmail.com', '$2y$10$s3sXWCcOOc9jgAiNPaMkAOSHSSILjHAvAJowYyQwMSp96/5aevF7S', '2017-07-16 21:54:59');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table kronoguru.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `familyId` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `material` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `movementType` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `diameter` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11067 DEFAULT CHARSET=latin1;

-- Dumping data for table kronoguru.products: 20 rows
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `brandId`, `familyId`, `name`, `slug`, `material`, `images`, `price`, `movementType`, `reference`, `diameter`, `createdAt`, `updatedAt`) VALUES
	(1, 1, 1, '1815 Yellow Gold', '1815-yellow-gold', 'Yellow gold', '206-021-a1.jpg', NULL, 'Handwound', '206.021', '35.90 mm', '2017-04-28 18:46:00', '2017-04-28 18:46:00'),
	(2, 1, 1, '1815 35.9 White Gold Black', '1815-359-white-gold-black', 'White gold', '206-029-1d.jpg', NULL, 'Handwound', '206.029', '35.90 mm', '2017-04-28 18:46:00', '2017-04-28 18:46:00'),
	(3, 1, 1, '1815 Moonphase F.A. Lange Homage', '1815-moonphase-fa-lange-homage', 'Honey Gold', '212-050-e7.jpg', NULL, 'Handwound', '212.05', '37.40 mm', '2017-04-28 18:46:00', '2017-04-28 18:46:00'),
	(4, 1, 1, '1815 Up / Down Yellow Gold', '1815-up-down-yellow-gold', 'Yellow gold', '221-021-7e.jpg', NULL, 'Handwound', '221.021', '35.90 mm', '2017-04-28 18:46:00', '2017-04-28 18:46:00'),
	(5, 1, 1, '1815 Up / Down Walter Lange', '1815-up-down-walter-lange', 'Rose Gold', '223-032-fb.jpg', NULL, 'Handwound', '223.032', '37.50 mm', '2017-04-28 18:46:00', '2017-04-28 18:46:00'),
	(6, 1, 1, '1815 Yellow Gold', '1815-yellow-gold-6', 'Yellow gold', '233-021-90.jpg', NULL, 'Handwound', '233.021', '40.00 mm', '2017-04-28 18:46:00', '2017-04-28 18:46:00'),
	(7, 1, 1, '1815  Up/Down Yellow Gold', '1815-updown-yellow-gold', 'Yellow gold', '234-021-f3.jpg', NULL, 'Automatic', '234.021', '39.00 mm', '2017-04-28 18:46:00', '2017-04-28 18:46:00'),
	(8, 1, 1, '1815 Up/Down White Gold', '1815-updown-white-gold', 'White gold', '234-026-e6.jpg', NULL, 'Automatic', '234.026', '39.00 mm', '2017-04-28 18:46:00', '2017-04-28 18:46:00'),
	(9, 1, 1, '1815 Up/Down Pink Gold', '1815-updown-pink-gold', 'Pink gold', '234-032-dd.jpg', NULL, 'Automatic', '234.032', '39.00 mm', '2017-04-28 18:46:00', '2017-04-28 18:46:00'),
	(10, 1, 1, '1815 38.5 White Gold', '1815-385-white-gold', 'White gold', '235-026-aa.jpg', NULL, 'Handwound', '235.026', '38.50 mm', '2017-04-28 18:46:00', '2017-04-28 18:46:00'),
	(11, 1, 1, '1815 38.5 Pink Gold', '1815-385-pink-gold', 'Pink gold', '235-032-55.jpg', NULL, 'Handwound', '235.032', '38.50 mm', '2017-04-28 18:46:00', '2017-04-28 18:46:00'),
	(12, 1, 1, '1815 200th Anniversary F. A. Lange', '1815-200th-anniversary-f-a-lange', 'Platinum', '236-049-b3.jpg', NULL, 'Handwound', '236.049', '40.00 mm', '2017-04-28 18:46:00', '2017-04-28 18:46:00'),
	(13, 1, 1, '1815 200th Anniversary F. A. Lange', '1815-200th-anniversary-f-a-lange-13', 'Honey Gold', '236-050-d4.jpg', NULL, 'Handwound', '236.05', '40.00 mm', '2017-04-28 18:46:00', '2017-04-28 18:46:00'),
	(14, 1, 1, '1815 Kalenderwoche', '1815-kalenderwoche', 'Yellow gold', '245-021-93.jpg', NULL, 'Handwound', '245.021', '38.40 mm', '2017-04-28 18:46:00', '2017-04-28 18:46:00'),
	(15, 1, 1, '1815 Cuvette Oeding-Erdel', '1815-cuvette-oeding-erdel', 'White gold', '323-046-c1.jpg', NULL, 'Automatic', '323.046', '40.00 mm', '2017-04-28 18:46:00', '2017-04-28 18:46:00'),
	(16, 1, 1, '1815 Chronograph white Gold', '1815-chronograph-white-gold', 'White gold', '401-026-2c.jpg', NULL, 'Handwound', '401.026', '39.50 mm', '2017-04-28 18:46:00', '2017-04-28 18:46:00'),
	(17, 1, 1, '1815 Chronograph Pink Gold', '1815-chronograph-pink-gold', 'Pink gold', '401-031-4a.jpg', NULL, 'Handwound', '401.031', '39.50 mm', '2017-04-28 18:46:00', '2017-04-28 18:46:00'),
	(18, 1, 1, '1815 Chronograph White Gold', '1815-chronograph-white-gold-18', 'White gold', '402-026-b6.jpg', NULL, 'Handwound', '402.026', '39.50 mm', '2017-04-28 18:46:00', '2017-04-28 18:46:00'),
	(19, 1, 1, '1815 Chronograph Pink Gold', '1815-chronograph-pink-gold-19', 'Pink gold', '402-032-d2.jpg', NULL, 'Handwound', '402.032', '39.50 mm', '2017-04-28 18:46:00', '2017-04-28 18:46:00'),
	(20, 1, 1, 'Double Split Sincere Pink', 'double-split-sincere-pink', 'Pink gold', '404-047-99.jpg', NULL, 'Handwound', '404.047', '43.20 mm', '2017-04-28 18:46:00', '2017-04-28 18:46:00');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table kronoguru.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table kronoguru.users: ~3 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `createdAt`, `updatedAt`) VALUES
	(1, 'admin', 'admin@gmail.com', '$2y$10$MmYHsyeNKwJLf.jwzprflOg4Lb1SqephzAKR88oBW00xA21xIdZeS', 'QlmFHGMX6TNQR8p0ML0kuxyFYJvRteK4wKITfuzySMZh5KUguwaVP3ZD01kT', '2017-07-16 21:34:32', '2017-07-16 21:34:32');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
