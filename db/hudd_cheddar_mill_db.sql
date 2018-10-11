# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.18)
# Database: hudd_cheddar_mill_db
# Generation Time: 2018-09-30 16:59:59 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'create_users_table',1),
	(2,'create_password_resets_table',1),
	(3,'create_cheddar_mill_restaurants_table',1),
	(4,'create_menus_table',1),
  (5,'create_orders_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cheddar_mill_restaurants
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cheddar_mill_restaurants`;

CREATE TABLE `cheddar_mill_restaurants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager_password` int(11) NOT NULL,
  `public_likes` bigint(11) NOT NULL,
  `last_publicly_liked` datetime NOT NULL,
  `cheddar_pizza_discounts` boolean NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cheddar_mill_restaurants` WRITE;
/*!40000 ALTER TABLE `cheddar_mill_restaurants` DISABLE KEYS */;

INSERT INTO `cheddar_mill_restaurants` (`id`, `name`, `brief`, `address`, `manager_password`, `public_likes`, `last_publicly_liked`, `cheddar_pizza_discounts`, `created_at`, `updated_at`)
VALUES
	(1,'Cheddar Factory Montreal','A Cheddar Factory Franchise in Montreal','Montreal','secret',1,'2018-09-30 16:59:59',1,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
	(2,'Cheddar Factory Laval','A Cheddar Factory Franchise in Laval','Laval','secret',1,'2018-09-30 16:59:59',1,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
	(3,'Cheddar Factory Dorval','A Cheddar Factory Franchise in Dorval','Dorval','secret',1,'2018-09-30 16:59:59',1,'2018-09-30 16:59:59','2018-09-30 17:00:00');

/*!40000 ALTER TABLE `cheddar_mill_restaurants` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cheddar_mill_menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cheddar_mill_menus`;

CREATE TABLE `cheddar_mill_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(10) unsigned NOT NULL,
  `menus` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_codes` char(1) NOT NULL,
  `menu_prices` int(11) NOT NULL,
  `menu_rating` int(11) NULL DEFAULT NULL,
  `order_daily_quantities` int(11) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menus_restaurant_id_index` (`restaurant_id`),
  CONSTRAINT `menus_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `cheddar_mill_restaurants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cheddar_mill_menus` WRITE;
/*!40000 ALTER TABLE `cheddar_mill_menus` DISABLE KEYS */;

INSERT INTO `cheddar_mill_menus` (`id`, `restaurant_id`, `menu_codes`, `menus`, `menu_prices`, `menu_rating`, `order_daily_quantities`, `created_at`, `updated_at`)
VALUES
  (1,1,'A','Menu 1',10,5,100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
	(2,1,'B','Menu 2',10,5,100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (3,1,'C','Menu 3', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (4,1,'D','Menu 4', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (5,1,'E','Menu 5', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (6,1,'F','Menu 6', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (7,1,'G','Menu 7', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (8,1,'H','Menu 8', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (9,1,'I','Menu 9', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (10,1,'J','Menu 10', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (11,1,'K','Menu 11', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (12,1,'L','Menu 12', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (13,2,'A','Menu 13', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
	(14,2,'B','Menu 14', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (15,2,'C','Menu 15', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (16,2,'D','Menu 16', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (17,2,'E','Menu 17', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (18,2,'F','Menu 18', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (19,2,'G','Menu 19', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (20,2,'H','Menu 20', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (21,2,'I','Menu 21', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (22,2,'J','Menu 22', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (23,2,'K','Menu 23', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (24,2,'L','Menu 24', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (25,3,'A','Menu 25', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
	(26,3,'B','Menu 26', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (27,3,'C','Menu 27', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (28,3,'D','Menu 28', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (29,3,'E','Menu 29', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (30,3,'F','Menu 30', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (31,3,'G','Menu 31', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (32,3,'H','Menu 32', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (33,3,'I','Menu 33', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (34,3,'J','Menu 34', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (35,3,'K','Menu 35', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (36,3,'L','Menu 36', 10, 5, 100,'2018-09-30 16:59:59','2018-09-30 17:00:00');
;

/*!40000 ALTER TABLE `cheddar_mill_menus` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table cheddar_mill_orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cheddar_mill_orders`;

CREATE TABLE `cheddar_mill_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(10) unsigned NOT NULL,
  `order_codes` char(1) NOT NULL,
  `orders` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_prices` int(11) NOT NULL,
  `menu_rating` int(11) NOT NULL,
  `order_daily_quantities` int(11) NOT NULL,
  `order_delivery_duration` int(11) NOT NULL,
  `order_agent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_restaurant_id_index` (`restaurant_id`),
  CONSTRAINT `orders_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `cheddar_mill_restaurants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cheddar_mill_orders` WRITE;
/*!40000 ALTER TABLE `cheddar_mill_orders` DISABLE KEYS */;

INSERT INTO `cheddar_mill_orders` (`id`, `restaurant_id`, `order_codes`, `orders`, `menu_prices`, `menu_rating`, `order_daily_quantities`, `order_delivery_duration`, `order_agent`, `created_at`, `updated_at`)
VALUES
  (1,1,'A','order-1-1A-18-9-30',10,5,100,1000,'Name Cheddar Agent','2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (2,3,'B','order-2-3B-18-9-30',10,5,100,1000,'Name Cheddar Agent','2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (3,1,'C','order-3-1C-18-9-30',10,5,100,1000,'Name Cheddar Agent','2018-09-30 16:59:59','2018-09-30 17:00:00'),
  (4,2,'B','order-4-2B-18-9-30',10,5,100,1000,'Name Cheddar Agent','2018-09-30 16:59:59','2018-09-30 17:00:00');
;

/*!40000 ALTER TABLE `cheddar_mill_orders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
