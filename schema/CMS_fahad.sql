# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.6.21)
# Database: CMS
# Generation Time: 2015-06-01 04:54:45 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table article_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `article_categories`;

CREATE TABLE `article_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(10) unsigned NOT NULL,
  `position` int(11) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `user_id_edited` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `article_categories_language_id_foreign` (`language_id`),
  KEY `article_categories_user_id_foreign` (`user_id`),
  KEY `article_categories_user_id_edited_foreign` (`user_id_edited`),
  CONSTRAINT `article_categories_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `article_categories_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `article_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `article_categories` WRITE;
/*!40000 ALTER TABLE `article_categories` DISABLE KEYS */;

INSERT INTO `article_categories` (`id`, `language_id`, `position`, `user_id`, `user_id_edited`, `title`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,1,NULL,1,NULL,'rem fugiat ducimus',NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32'),
	(2,3,NULL,2,NULL,'necessitatibus totam vel',NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32'),
	(3,3,NULL,2,NULL,'quasi quidem sed',NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32'),
	(4,1,NULL,3,NULL,'eum sed qui',NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32'),
	(5,2,NULL,3,NULL,'nam ut qui',NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32');

/*!40000 ALTER TABLE `article_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table articles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(10) unsigned NOT NULL,
  `position` int(11) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `user_id_edited` int(10) unsigned DEFAULT NULL,
  `article_category_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introduction` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `articles_language_id_foreign` (`language_id`),
  KEY `articles_user_id_foreign` (`user_id`),
  KEY `articles_user_id_edited_foreign` (`user_id_edited`),
  KEY `articles_article_category_id_foreign` (`article_category_id`),
  CONSTRAINT `articles_article_category_id_foreign` FOREIGN KEY (`article_category_id`) REFERENCES `article_categories` (`id`) ON DELETE SET NULL,
  CONSTRAINT `articles_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `articles_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;

INSERT INTO `articles` (`id`, `language_id`, `position`, `user_id`, `user_id_edited`, `article_category_id`, `title`, `slug`, `introduction`, `content`, `source`, `picture`, `created_at`, `updated_at`)
VALUES
	(1,3,NULL,1,NULL,2,'ipsum sequi nam',NULL,'Libero et sit minus quos. Doloribus ipsum quia voluptates eos laboriosam officiis. Laudantium quas laborum iure autem sit natus.','Officiis perspiciatis maxime rerum atque provident. At excepturi aperiam cum molestias. In blanditiis pariatur vel harum quia. Qui illum libero et dignissimos ullam. Adipisci dolores totam quia ullam molestiae totam explicabo molestiae. Voluptates dolorem suscipit enim ut sed voluptas autem nesciunt. Blanditiis facilis et a et accusamus exercitationem aliquid. Enim quo beatae quia repellat unde culpa. Blanditiis magni esse sit id minus sunt ratione. Omnis id architecto consequatur debitis at est quo.',NULL,NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32'),
	(2,2,NULL,1,NULL,2,'corrupti perferendis et',NULL,'Adipisci voluptate sit incidunt impedit repellendus dolores. Fugiat ab quia debitis modi quia qui nisi. Quia quas est et excepturi sunt necessitatibus fugiat et. Architecto qui repellat eius facere.','Soluta quibusdam quasi eos qui quia. Autem rem placeat aut pariatur deserunt dolore. Sit qui voluptas cupiditate esse repellat. Vel et accusamus porro quo ad aut deleniti. Sit illum fugiat cum mollitia quo sint error. Odio minima voluptatem ea dolor nemo qui. Sit sit veritatis dolorem magnam doloribus voluptas. Sunt quod fugit illo doloribus dolores eum. Sequi veniam esse delectus quis. Odio voluptates qui cum debitis.',NULL,NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32'),
	(3,2,NULL,3,NULL,1,'praesentium suscipit sunt',NULL,'Dolores perspiciatis et voluptatem maxime ipsa sint et quo. Maxime voluptatibus exercitationem quis nostrum facilis. Et ea nesciunt quis quae autem et. Deserunt veniam qui eos dolorem alias animi velit. Similique vitae laborum sed temporibus.','Qui repudiandae suscipit molestiae dolor et. Quo officiis et similique dolores beatae mollitia. Facilis illo voluptas autem asperiores ab. Assumenda ut labore et et. Quos qui et eos ducimus vel. Assumenda et vitae et. Consequatur aliquid officiis dicta deleniti eum. Culpa eligendi et magnam ullam. Quis voluptas rerum cumque qui asperiores asperiores. Laboriosam voluptate fuga vel. Amet sint excepturi omnis officia. Voluptatem dolor ullam sed quia et qui dolorem.',NULL,NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32'),
	(4,1,NULL,1,NULL,2,'optio nulla sed',NULL,'Eos numquam neque perspiciatis aut. Eveniet et aut saepe. Ut velit commodi laboriosam enim. Reprehenderit harum vel blanditiis nisi. Commodi maxime corrupti nobis sit ipsam laboriosam voluptatem.','Ut tenetur sint numquam praesentium ut alias eum. Rerum dolor aperiam ut sed sint. Vero consequuntur harum in in. Saepe sint sed omnis officiis. Minus voluptatem magnam quasi qui quam quae saepe facere. Fugiat nesciunt ut unde rem totam minus ut. Voluptatum ipsa quibusdam totam accusantium. Ea recusandae facere vel magni et blanditiis. Sequi optio minima repellendus ab repellat fuga. Quasi sit occaecati consequatur ipsam. Beatae ipsam natus voluptas ullam perspiciatis a quia inventore.',NULL,NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32');

/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table constituency
# ------------------------------------------------------------

DROP TABLE IF EXISTS `constituency`;

CREATE TABLE `constituency` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `constituency_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `constituency` WRITE;
/*!40000 ALTER TABLE `constituency` DISABLE KEYS */;

INSERT INTO `constituency` (`id`, `constituency_name`, `created_at`, `updated_at`)
VALUES
	(1,'Dharchula','2015-05-13 00:00:00','0000-00-00 00:00:00'),
	(2,'Kotdwar','2015-05-21 00:00:00','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `constituency` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table fund_activity
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fund_activity`;

CREATE TABLE `fund_activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fund_id` int(11) unsigned NOT NULL,
  `field` varchar(30) NOT NULL,
  `old_value` varchar(255) NOT NULL,
  `new_value` varchar(255) NOT NULL,
  `created_by` int(11) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `issue_id` (`fund_id`),
  CONSTRAINT `fund_activity_ibfk_1` FOREIGN KEY (`fund_id`) REFERENCES `funds` (`id`),
  CONSTRAINT `fund_activity_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `fund_activity` WRITE;
/*!40000 ALTER TABLE `fund_activity` DISABLE KEYS */;

INSERT INTO `fund_activity` (`id`, `fund_id`, `field`, `old_value`, `new_value`, `created_by`, `created_at`, `updated_at`)
VALUES
	(1,1,'category','Elec','Water',2,'2015-05-27 19:34:34','2015-05-27 19:34:34'),
	(2,1,'amount','400','4001',2,'2015-05-27 19:34:34','2015-05-27 19:34:34'),
	(3,1,'description','Desc','Desc1',2,'2015-05-27 19:34:34','2015-05-27 19:34:34');

/*!40000 ALTER TABLE `fund_activity` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table funds
# ------------------------------------------------------------

DROP TABLE IF EXISTS `funds`;

CREATE TABLE `funds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `constituency_id` int(11) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) unsigned NOT NULL,
  `created_by` int(11) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `issues_category_id_foreign` (`category_id`),
  KEY `created_by` (`created_by`),
  KEY `constituency_id` (`constituency_id`),
  CONSTRAINT `funds_ibfk_1` FOREIGN KEY (`constituency_id`) REFERENCES `constituency` (`id`),
  CONSTRAINT `funds_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `issue_category` (`id`),
  CONSTRAINT `funds_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `funds` WRITE;
/*!40000 ALTER TABLE `funds` DISABLE KEYS */;

INSERT INTO `funds` (`id`, `constituency_id`, `category_id`, `description`, `amount`, `created_by`, `created_at`, `updated_at`)
VALUES
	(1,1,1,'Desc1',4001,2,'2015-05-27 19:08:45','2015-05-27 19:34:34'),
	(2,1,4,'expense',5000,2,'2015-05-28 14:16:03','2015-05-28 14:16:03');

/*!40000 ALTER TABLE `funds` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table issue_activity
# ------------------------------------------------------------

DROP TABLE IF EXISTS `issue_activity`;

CREATE TABLE `issue_activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `issue_id` int(11) unsigned NOT NULL,
  `field` varchar(30) NOT NULL,
  `old_value` varchar(255) NOT NULL,
  `new_value` varchar(255) NOT NULL,
  `created_by` int(11) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `issue_id` (`issue_id`),
  CONSTRAINT `issue_activity_ibfk_1` FOREIGN KEY (`issue_id`) REFERENCES `issues` (`id`),
  CONSTRAINT `issue_activity_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `issue_activity` WRITE;
/*!40000 ALTER TABLE `issue_activity` DISABLE KEYS */;

INSERT INTO `issue_activity` (`id`, `issue_id`, `field`, `old_value`, `new_value`, `created_by`, `created_at`, `updated_at`)
VALUES
	(1,1,'reporter_name','222','2222',1,'2015-05-23 14:06:44','2015-05-23 14:06:44'),
	(2,1,'category','Elec','Water',1,'2015-05-23 14:18:55','2015-05-23 14:18:55'),
	(3,1,'village','Lakhimpur','Rampur',1,'2015-05-23 14:22:47','2015-05-23 14:22:47'),
	(4,6,'summary','11','111',1,'2015-05-23 14:59:20','2015-05-23 14:59:20'),
	(5,6,'reporter_name','111','1111',1,'2015-05-23 15:01:55','2015-05-23 15:01:55'),
	(6,6,'reporter_mobile','11','1111',1,'2015-05-23 15:01:55','2015-05-23 15:01:55'),
	(7,6,'category','Elec','Water',1,'2015-05-23 15:01:55','2015-05-23 15:01:55'),
	(8,6,'village','Rampur','Lakhimpur',1,'2015-05-23 15:01:55','2015-05-23 15:01:55'),
	(9,6,'summary','111','1111',1,'2015-05-23 15:01:55','2015-05-23 15:01:55'),
	(10,1,'reporter_name','2222','22222',1,'2015-05-23 20:51:53','2015-05-23 20:51:53'),
	(11,8,'reporter_mobile','999090909','9990909091',2,'2015-05-28 14:12:06','2015-05-28 14:12:06'),
	(12,9,'village','Baluwakot','Bangapani',2,'2015-05-30 09:34:29','2015-05-30 09:34:29');

/*!40000 ALTER TABLE `issue_activity` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table issue_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `issue_category`;

CREATE TABLE `issue_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `constituency_id` int(10) unsigned NOT NULL,
  `created_by` int(11) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `issue_category_constituency_id_foreign` (`constituency_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `issue_category_constituency_id_foreign` FOREIGN KEY (`constituency_id`) REFERENCES `constituency` (`id`),
  CONSTRAINT `issue_category_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `issue_category` WRITE;
/*!40000 ALTER TABLE `issue_category` DISABLE KEYS */;

INSERT INTO `issue_category` (`id`, `category_name`, `constituency_id`, `created_by`, `created_at`, `updated_at`)
VALUES
	(1,'Water',1,1,'2015-05-13 08:22:28','0000-00-00 00:00:00'),
	(2,'Electricity',1,1,'2015-05-07 16:11:19','0000-00-00 00:00:00'),
	(3,'Roads',1,1,'2015-05-23 15:58:39','2015-05-23 16:08:00'),
	(4,'Others',1,1,'2015-05-23 16:08:08','2015-05-23 16:08:19');

/*!40000 ALTER TABLE `issue_category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table issue_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `issue_comments`;

CREATE TABLE `issue_comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `issue_id` int(11) unsigned NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_by` int(11) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `issue_id` (`issue_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `issue_comments_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `issue_comments_issue_id_foreign` FOREIGN KEY (`issue_id`) REFERENCES `issues` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `issue_comments` WRITE;
/*!40000 ALTER TABLE `issue_comments` DISABLE KEYS */;

INSERT INTO `issue_comments` (`id`, `issue_id`, `comment`, `created_by`, `created_at`, `updated_at`)
VALUES
	(1,1,'COmmet 1',1,'2015-05-23 12:10:48','2015-05-23 12:10:48'),
	(2,1,'Comment 2',1,'2015-05-23 12:28:49','2015-05-23 12:28:49'),
	(3,1,'',1,'2015-05-23 14:04:24','2015-05-23 14:04:24'),
	(4,1,'',1,'2015-05-23 14:06:44','2015-05-23 14:06:44'),
	(5,1,'',1,'2015-05-23 14:06:54','2015-05-23 14:06:54'),
	(6,1,'',1,'2015-05-23 14:18:55','2015-05-23 14:18:55'),
	(7,1,'',1,'2015-05-23 14:22:47','2015-05-23 14:22:47'),
	(8,6,'11',1,'2015-05-23 14:59:20','2015-05-23 14:59:20'),
	(9,6,'1111',1,'2015-05-23 15:01:55','2015-05-23 15:01:55'),
	(10,1,'',1,'2015-05-23 20:41:09','2015-05-23 20:41:09'),
	(11,8,'Kuch Hua',2,'2015-05-28 14:14:55','2015-05-28 14:14:55'),
	(12,9,'Working is started to rectify the issue',2,'2015-05-30 09:34:02','2015-05-30 09:34:02'),
	(13,9,'Changing the village as it was entered wrong....',2,'2015-05-30 09:34:29','2015-05-30 09:34:29');

/*!40000 ALTER TABLE `issue_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table issues
# ------------------------------------------------------------

DROP TABLE IF EXISTS `issues`;

CREATE TABLE `issues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` int(11) unsigned NOT NULL DEFAULT '0',
  `reporter_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reporter_mobile` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `village_id` int(10) unsigned NOT NULL,
  `short_desc` text COLLATE utf8_unicode_ci,
  `long_desc` text COLLATE utf8_unicode_ci,
  `created_by` int(11) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('NEW','ASSIGNED','INPROGRESS','DEFERRED','COMPLETED') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `issues_category_id_foreign` (`category_id`),
  KEY `issues_village_id_foreign` (`village_id`),
  KEY `created_by` (`created_by`),
  KEY `status` (`status`),
  CONSTRAINT `issues_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `issue_category` (`id`),
  CONSTRAINT `issues_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `issues_village_id_foreign` FOREIGN KEY (`village_id`) REFERENCES `villages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;

INSERT INTO `issues` (`id`, `token`, `reporter_name`, `reporter_mobile`, `category_id`, `village_id`, `short_desc`, `long_desc`, `created_by`, `created_at`, `updated_at`, `status`)
VALUES
	(1,123,'22222','22',1,1,'What is the issye What is the issye What is the issye What is the issy...','WHat is the issue WHat is the issue WHat is the issue WHat is the issue WHat is the issue WHat is the issue WHat is the issue WHat is the issue WHat is the issue ',1,'2015-05-05 00:00:00','2015-05-23 20:51:53','COMPLETED'),
	(2,124,'Nop','8989898',3,2,'asd','sdfhj',1,'2015-05-23 00:00:00','0000-00-00 00:00:00','INPROGRESS'),
	(4,125,'Feeroz','9611014400',1,2,'Issue Summary','<p>Issue Description</p>',1,'2015-05-22 12:28:01','2015-05-22 12:28:01','ASSIGNED'),
	(5,126,'1111','1111',1,2,'111','<p>111</p>',1,'2015-05-22 12:57:25','2015-05-22 12:57:25','DEFERRED'),
	(6,127,'1111','1111',1,2,'1111','<p>1</p>',1,'2015-05-22 13:16:08','2015-05-23 15:01:55','COMPLETED'),
	(7,128,'Last','Last',2,2,'Lasrt','Last',1,'2015-05-23 15:05:59','2015-05-23 15:05:59','NEW'),
	(8,129,'Tushar','9990909091',2,2,'No issue','No Issue',2,'2015-05-28 14:11:54','2015-05-28 14:12:06','NEW'),
	(9,130,'Harish Sharma','9615674455',1,3,'Water is not provided from last 3 days','Water is not provided from last 3 days',2,'2015-05-30 09:32:08','2015-05-30 09:34:29','NEW');

/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table languages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `user_id_edited` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `languages_name_unique` (`name`),
  UNIQUE KEY `languages_lang_code_unique` (`lang_code`),
  KEY `languages_user_id_foreign` (`user_id`),
  KEY `languages_user_id_edited_foreign` (`user_id_edited`),
  CONSTRAINT `languages_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `languages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;

INSERT INTO `languages` (`id`, `position`, `name`, `lang_code`, `icon`, `user_id`, `user_id_edited`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,NULL,'English','en','icon_flag_gb.gif',NULL,NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32',NULL),
	(2,NULL,'Српски','sr','icon_flag_sr.gif',NULL,NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32',NULL),
	(3,NULL,'Bosanski','bs','icon_flag_bs.gif',NULL,NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32',NULL);

/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`migration`, `batch`)
VALUES
	('2014_10_12_000000_create_users_table',1),
	('2014_10_12_100000_create_password_resets_table',1),
	('2014_10_18_195027_create_languages_table',1),
	('2014_10_18_225005_create_article_categories_table',1),
	('2014_10_18_225505_create_articles_table',1),
	('2014_10_18_225928_create_photo_albums_table',1),
	('2014_10_18_230227_create_video_albums_table',1),
	('2014_10_18_231619_create_photos_table',1),
	('2014_10_18_232019_create_videos_table',1),
	('2015_05_21_110658_create_constituency_table',2),
	('2015_05_21_110705_create_village_table',3),
	('2015_05_21_110659_create_issue_category_table',4),
	('2015_05_21_110825_create_issues_table',5),
	('2015_05_21_181745_add_status_to_issues',6);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table photo_albums
# ------------------------------------------------------------

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(10) unsigned NOT NULL,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `folder_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `user_id_edited` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `photo_albums_language_id_foreign` (`language_id`),
  KEY `photo_albums_user_id_foreign` (`user_id`),
  KEY `photo_albums_user_id_edited_foreign` (`user_id_edited`),
  CONSTRAINT `photo_albums_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `photo_albums_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `photo_albums_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `photo_albums` WRITE;
/*!40000 ALTER TABLE `photo_albums` DISABLE KEYS */;

INSERT INTO `photo_albums` (`id`, `language_id`, `position`, `name`, `description`, `folder_id`, `user_id`, `user_id_edited`, `created_at`, `updated_at`)
VALUES
	(1,3,35250,'incidunt laudantium qui','Qui accusamus unde aut amet voluptatem culpa est voluptatem. Minima voluptatem et dolorem similique ullam. Voluptatem magni exercitationem maiores autem.','',3,NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32'),
	(2,3,625020,'nihil pariatur error','Quaerat ut dolorum perspiciatis recusandae exercitationem similique a. Quia aperiam aliquid consequatur sunt ut. Consequatur repudiandae exercitationem consequatur accusantium praesentium aliquam unde.','',2,NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32'),
	(3,1,4950,'maiores repudiandae est','Doloremque a iusto sunt error. Dicta pariatur necessitatibus aut praesentium. Maxime sunt a est voluptas repellendus deserunt porro. Velit harum voluptatem et numquam tempore sequi aspernatur ut.','',2,NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32'),
	(4,1,9484,'ut explicabo et','Adipisci quam omnis non occaecati velit officia quod amet. Sunt sapiente voluptatum deleniti nam magnam deserunt repellat. Porro qui aut pariatur ipsa et.','',1,NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32');

/*!40000 ALTER TABLE `photo_albums` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table photos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(10) unsigned NOT NULL,
  `position` int(11) DEFAULT NULL,
  `slider` tinyint(1) DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `photo_album_id` int(10) unsigned DEFAULT NULL,
  `album_cover` tinyint(1) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `user_id_edited` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `photos_language_id_foreign` (`language_id`),
  KEY `photos_photo_album_id_foreign` (`photo_album_id`),
  KEY `photos_user_id_foreign` (`user_id`),
  KEY `photos_user_id_edited_foreign` (`user_id_edited`),
  CONSTRAINT `photos_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `photos_photo_album_id_foreign` FOREIGN KEY (`photo_album_id`) REFERENCES `photo_albums` (`id`) ON DELETE SET NULL,
  CONSTRAINT `photos_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `photos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;

INSERT INTO `photos` (`id`, `language_id`, `position`, `slider`, `filename`, `name`, `description`, `photo_album_id`, `album_cover`, `user_id`, `user_id_edited`, `created_at`, `updated_at`)
VALUES
	(1,1,0,0,'d7ebe1562186fe32c00ae5c7d3d4056e.jpg','molestias','Quo nesciunt asperiores magni maxime aut. Qui maiores autem hic culpa nobis est et. Iste alias voluptatum magni eligendi. Fuga quia sed voluptas repellendus ut.',1,0,3,NULL,'2015-05-19 17:19:33','2015-05-19 17:19:33'),
	(2,2,0,0,'0344ff8a60853961992bbf4608a7563e.jpg','pariatur','Quo aperiam et accusantium labore sequi ad libero. Velit ut dolorum quo hic quia omnis sit. Quis asperiores est aut esse velit.',1,0,1,NULL,'2015-05-19 17:19:35','2015-05-19 17:19:35'),
	(3,3,1,0,'243910e60e4cc61efe841b3a34747a4c.jpg','qui','Sunt maiores harum quidem. Ea repellat error similique similique sunt. Aut modi ipsum voluptatem similique quibusdam. Ea et fuga beatae voluptatem.',3,0,1,NULL,'2015-05-19 17:19:36','2015-05-19 17:19:36'),
	(4,3,1,0,'58369b406bd592bdc1425fb92cc8076f.jpg','quod','Molestiae vitae ut consectetur error ullam. Reprehenderit officia adipisci rem est est. Ullam perspiciatis omnis fugit et sed.',3,1,3,NULL,'2015-05-19 17:19:37','2015-05-19 17:19:37'),
	(5,1,0,0,'0dc39281150f91f34ee4e52378043387.jpg','dolores','Adipisci quia consequuntur placeat. Quae neque unde quam nam reiciendis non molestias. Est reprehenderit magnam commodi nobis cumque recusandae aperiam. Totam illum placeat voluptate impedit saepe facere non similique.',1,1,2,NULL,'2015-05-19 17:19:38','2015-05-19 17:19:38');

/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table uid_db
# ------------------------------------------------------------

DROP TABLE IF EXISTS `uid_db`;

CREATE TABLE `uid_db` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `relation` enum('Wife','Son','Daughter','Father','Mother','Husband','Other') DEFAULT NULL,
  `uid` varchar(20) NOT NULL DEFAULT '',
  `uid_vill` int(11) unsigned NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `fathers_name` varchar(50) NOT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `dob` date NOT NULL,
  `ration_card_no` varchar(20) NOT NULL,
  `aadhar_no` varchar(20) NOT NULL,
  `village_id` int(11) unsigned NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_by` int(11) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `village_id` (`village_id`),
  KEY `village_id_2` (`village_id`),
  KEY `created_by` (`created_by`),
  KEY `parent_id` (`parent_id`),
  KEY `relation` (`relation`),
  CONSTRAINT `uid_db_ibfk_1` FOREIGN KEY (`village_id`) REFERENCES `villages` (`id`),
  CONSTRAINT `uid_db_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `uid_db` WRITE;
/*!40000 ALTER TABLE `uid_db` DISABLE KEYS */;

INSERT INTO `uid_db` (`id`, `parent_id`, `relation`, `uid`, `uid_vill`, `first_name`, `middle_name`, `last_name`, `fathers_name`, `mobile`, `gender`, `dob`, `ration_card_no`, `aadhar_no`, `village_id`, `address`, `created_by`, `created_at`, `updated_at`)
VALUES
	(1,0,NULL,'UK01011AA0001',1,'zz1','zzz','zzz','zzz','zzz','Male','1970-01-01','zzz','zzz',11,'zzz',1,'2015-06-01 04:43:05','2015-06-01 04:43:05'),
	(2,0,NULL,'UK01011AA0002',2,'zz2','zzz','zzz','zzz','zzz','Male','1970-01-01','zzz','zzz',11,'zzz',1,'2015-06-01 04:43:27','2015-06-01 04:43:27'),
	(3,0,NULL,'UK01001AA0001',1,'zz3','zzz','zzz','zzz','zzz','Male','1970-01-01','zzz','zzz',1,'zzz',1,'2015-06-01 04:43:54','2015-06-01 04:43:54'),
	(4,2,'Wife','UK01011AA0002',0,'zz4','zzz','zzz','zzz','zzz','Female','1970-01-01','zzz','zzz',11,'zzz',1,'2015-06-01 04:44:16','2015-06-01 04:44:16');

/*!40000 ALTER TABLE `uid_db` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `designation` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `constituency_id` int(11) unsigned NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `constituency_id` (`constituency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `confirmation_code`, `confirmed`, `admin`, `designation`, `constituency_id`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Admin User1','admin_user','admin@admin.com','$2y$10$AxWlvOGFovNfEa8FieM7pOQCg.YuGJIZjKaD8pkAqKqBBZW3X64Z6','f8a464ee1bdc5d092608c242cf2cd3c6',1,1,'Regional Manager',1,'3GL0OU3bfaH5buvyaLilwczwrPeclWUWIddHQ0zqZAPhLIp5nng8yUa3aFji','2015-05-19 17:19:32','2015-05-25 08:10:16'),
	(2,'Sunil Sharma','test_user','user@user.com','$2y$10$RaSgpqd.3XtFmwYUCIWwXuX4bA4HyhmrFwwAi98m7jpdjce62X/gm','4e2a53683a914b2a049bf1018e71d637',0,0,'Manager',1,'InnVzBnbj0FJDLamPYZ0GxjWeciqRXnlI7WkXriwaQKG6frC4C8D7oGW4osh','2015-05-19 17:19:32','2015-05-30 13:36:27'),
	(3,'Micheal Treutel','zoey15','wade06@pricegutkowski.net','occaecati','31ee4daa0db0ec96a1e682afd94992f9',1,0,NULL,1,NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32'),
	(4,'Dr. Blanche Kuhlman PhD','morissette.tyrel','zgrimes@yahoo.com','quia','31ee4daa0db0ec96a1e682afd94992f9',1,0,NULL,1,NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32'),
	(5,'Mr. Lexus Breitenberg','urutherford','joany.predovic@bechtelar.com','beatae','31ee4daa0db0ec96a1e682afd94992f9',1,0,NULL,1,NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32'),
	(6,'Mrs. Alberta Schuster','rosario.powlowski','stanton.eddie@powlowskisenger.com','optio','31ee4daa0db0ec96a1e682afd94992f9',0,0,NULL,1,NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32'),
	(7,'Hermann Hermiston II','amie98','muller.cassidy@hotmail.com','aut','31ee4daa0db0ec96a1e682afd94992f9',0,0,NULL,1,NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32'),
	(8,'Kenna Runolfsdottir','sofia95','rosa36@hoeger.com','omnis','31ee4daa0db0ec96a1e682afd94992f9',1,0,NULL,1,NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32'),
	(9,'Dr. Ari Gerhold','baylee30','wwyman@yahoo.com','fuga','31ee4daa0db0ec96a1e682afd94992f9',1,0,'Senior Manager',2,NULL,'2015-05-19 17:19:32','2015-05-24 17:57:56'),
	(11,'Kaelyn Lakin','evelyn.o\'reilly','perry40@hotmail.com','aut','31ee4daa0db0ec96a1e682afd94992f9',0,0,NULL,1,NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32'),
	(12,'Osbaldo Barton','becker.citlalli','geo.hansen@morar.com','quas','31ee4daa0db0ec96a1e682afd94992f9',1,0,NULL,1,NULL,'2015-05-19 17:19:32','2015-05-19 17:19:32'),
	(13,'Feeroz','feeroz_khan','feeroz.a.khan@gmail.com','$2y$10$9gR1MWhgLxxvDh.InLar/OdzvjaTmYCSzzAOPEo9wx6DKc3PF7mli','tvMW5TrMQk2oq5Qo8w6ltZamgaWe93eM',1,0,NULL,1,NULL,'2015-05-21 17:36:28','2015-05-21 17:36:28'),
	(14,'tttt','tttt','ttt@gmail.com','$2y$10$XDQ8VRAPrQPhL2sNGfYNJuBS4Hr.L70tMDhi9ESrPSdbvp0L.ucO.','pHiYJyM21HUVCGy9qVz9gVQnzEy4JWFN',1,0,NULL,2,NULL,'2015-05-23 18:04:16','2015-05-23 18:08:27');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table video_albums
# ------------------------------------------------------------

DROP TABLE IF EXISTS `video_albums`;

CREATE TABLE `video_albums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(10) unsigned NOT NULL,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `folder_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `user_id_edited` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `video_albums_language_id_foreign` (`language_id`),
  KEY `video_albums_user_id_foreign` (`user_id`),
  KEY `video_albums_user_id_edited_foreign` (`user_id_edited`),
  CONSTRAINT `video_albums_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `video_albums_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `video_albums_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `video_albums` WRITE;
/*!40000 ALTER TABLE `video_albums` DISABLE KEYS */;

INSERT INTO `video_albums` (`id`, `language_id`, `position`, `name`, `description`, `folder_id`, `user_id`, `user_id_edited`, `created_at`, `updated_at`)
VALUES
	(1,2,32,'similique nemo cum','Qui suscipit culpa delectus molestiae nesciunt. Aspernatur ullam corporis et possimus consequatur quod et minima. Maxime pariatur rerum alias culpa perferendis soluta ea. Quibusdam vero placeat eveniet quo.','',3,NULL,'2015-05-19 17:19:38','2015-05-19 17:19:38'),
	(2,2,822,'et accusantium laudantium','Consequatur nobis sit quidem occaecati consequatur vel incidunt. Nulla cupiditate quaerat dolore ab facilis non perspiciatis et. Et architecto aut ipsum commodi et et. Amet sint nesciunt sit.','',1,NULL,'2015-05-19 17:19:38','2015-05-19 17:19:38'),
	(3,2,114,'sit a voluptate','Quo rerum a deserunt dolor. Dolores explicabo qui nesciunt quia error provident ipsam impedit. Tempora hic architecto ipsam iusto. Ea error hic distinctio vel recusandae temporibus.','',2,NULL,'2015-05-19 17:19:38','2015-05-19 17:19:38'),
	(4,1,4294424,'tenetur eaque sint','Assumenda officia repellendus in qui. Distinctio amet fuga et. Aliquam qui doloremque consequatur et ea. Et consequatur delectus repudiandae recusandae.','',2,NULL,'2015-05-19 17:19:38','2015-05-19 17:19:38');

/*!40000 ALTER TABLE `video_albums` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table videos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `videos`;

CREATE TABLE `videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(10) unsigned NOT NULL,
  `position` int(11) DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_album_id` int(10) unsigned DEFAULT NULL,
  `album_cover` tinyint(1) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `user_id_edited` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `videos_language_id_foreign` (`language_id`),
  KEY `videos_video_album_id_foreign` (`video_album_id`),
  KEY `videos_user_id_foreign` (`user_id`),
  KEY `videos_user_id_edited_foreign` (`user_id_edited`),
  CONSTRAINT `videos_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `videos_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `videos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `videos_video_album_id_foreign` FOREIGN KEY (`video_album_id`) REFERENCES `video_albums` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;

INSERT INTO `videos` (`id`, `language_id`, `position`, `filename`, `name`, `description`, `youtube`, `video_album_id`, `album_cover`, `user_id`, `user_id_edited`, `created_at`, `updated_at`)
VALUES
	(1,1,0,'6e517f50496564ee01959d37d9eed8c5.jpg','quasi','Voluptatem quaerat est non fugit adipisci commodi mollitia. Dolore quo sequi accusantium eius explicabo. Hic voluptas est rerum est qui molestiae non. Explicabo beatae sit molestias adipisci temporibus adipisci dolore. Consequatur quo et eum accusantium aut.','https://www.youtube.com/watch?v=FIZ_gDOrzGk',3,0,1,NULL,'2015-05-19 17:19:40','2015-05-19 17:19:40'),
	(2,1,0,'352a7dba2fcfc8e28891fed10b48fe7b.jpg','labore','Tempore ullam qui quo excepturi pariatur est. Provident ea amet ipsum. Est sint aperiam voluptatem expedita eligendi qui maiores consequatur.','https://www.youtube.com/watch?v=FIZ_gDOrzGk',2,0,3,NULL,'2015-05-19 17:19:41','2015-05-19 17:19:41'),
	(3,2,0,'8d51c5933ca0ab2b308c7263d22510ec.jpg','repellat','Ea similique neque molestias illum non quod. Iste facere voluptatem similique. Omnis voluptatem ut deserunt sequi excepturi rerum non accusantium.','https://www.youtube.com/watch?v=FIZ_gDOrzGk',3,1,3,NULL,'2015-05-19 17:19:42','2015-05-19 17:19:42'),
	(4,2,1,'743e558133e37cc84101803b0a91688e.jpg','deleniti','Ab tempore aut numquam dolores. Velit laudantium eos minus iusto earum. Nisi alias aut officiis dolor.','https://www.youtube.com/watch?v=FIZ_gDOrzGk',1,0,2,NULL,'2015-05-19 17:19:43','2015-05-19 17:19:43'),
	(5,2,0,'a9efe69d71895326f6b766a2b45caa3a.jpg','vitae','Quia occaecati dolorem voluptatem nostrum doloremque quibusdam. Autem dolorem at sed quam qui voluptas molestiae. Est culpa et officia alias voluptatem.','https://www.youtube.com/watch?v=FIZ_gDOrzGk',2,1,1,NULL,'2015-05-19 17:19:44','2015-05-19 17:19:44');

/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table villages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `villages`;

CREATE TABLE `villages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `village_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `constituency_id` int(10) unsigned NOT NULL,
  `created_by` int(11) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `village_constituency_id_foreign` (`constituency_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `village_constituency_id_foreign` FOREIGN KEY (`constituency_id`) REFERENCES `constituency` (`id`),
  CONSTRAINT `villages_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `villages` WRITE;
/*!40000 ALTER TABLE `villages` DISABLE KEYS */;

INSERT INTO `villages` (`id`, `village_name`, `constituency_id`, `created_by`, `created_at`, `updated_at`)
VALUES
	(1,'Baling',1,1,'2015-05-06 06:29:26','0000-00-00 00:00:00'),
	(2,'Baluwakot',1,1,'2015-05-06 06:26:36','0000-00-00 00:00:00'),
	(3,'Bangapani',1,1,'2015-05-23 16:21:16','2015-05-23 16:30:00'),
	(4,'Baram',1,2,'2015-05-30 08:14:37','2015-05-30 08:14:37'),
	(5,'Bauling',1,2,'2015-05-30 08:15:57','2015-05-30 08:15:57'),
	(6,'Baun',1,2,'2015-05-30 08:17:30','2015-05-30 08:17:30'),
	(7,'Bundi',1,2,'2015-05-30 08:19:43','2015-05-30 08:19:43'),
	(8,'Bung Bung',1,2,'2015-05-30 08:20:05','2015-05-30 08:20:05'),
	(9,'Chal',1,2,'2015-05-30 08:22:08','2015-05-30 08:22:08'),
	(10,'Chhalmachhilason',1,2,'2015-05-30 08:22:18','2015-05-30 08:22:18'),
	(11,' Chharchhum',1,2,'2015-05-30 08:23:20','2015-05-30 08:23:20'),
	(12,'Dar',1,2,'2015-05-30 08:26:29','2015-05-30 08:26:29'),
	(13,'Daubu Yangsu',1,2,'2015-05-30 08:26:30','2015-05-30 08:26:30'),
	(14,'Dhar Pangu',1,2,'2015-05-30 08:26:30','2015-05-30 08:26:30'),
	(15,'Dharchula Dehat',1,2,'2015-05-30 08:26:30','2015-05-30 08:26:30'),
	(16,'Dhunga Toli',1,2,'2015-05-30 08:26:31','2015-05-30 08:26:31'),
	(17,'Dug R F',1,2,'2015-05-30 08:27:06','2015-05-30 08:27:06'),
	(18,'Dugtu',1,2,'2015-05-30 08:28:33','2015-05-30 08:28:33'),
	(19,'Duti Bagad',1,2,'2015-05-30 08:30:39','2015-05-30 08:30:39'),
	(20,'Galagar',1,2,'2015-05-30 08:30:47','2015-05-30 08:30:47'),
	(21,'Galati',1,2,'2015-05-30 08:30:53','2015-05-30 08:30:53'),
	(22,'Garbyang',1,2,'2015-05-30 08:30:59','2015-05-30 08:30:59'),
	(23,'Garguwa',1,2,'2015-05-30 08:31:04','2015-05-30 08:31:04'),
	(24,'Go',1,2,'2015-05-30 08:31:55','2015-05-30 08:31:55'),
	(25,'Gumkana',1,2,'2015-05-30 08:32:14','2015-05-30 08:32:14'),
	(26,'Gunji',1,2,'2015-05-30 08:32:19','2015-05-30 08:32:19'),
	(27,'Heera Gumari R F',1,2,'2015-05-30 08:32:26','2015-05-30 08:32:26'),
	(28,'Himkhola',1,2,'2015-05-30 08:32:31','2015-05-30 08:32:31'),
	(29,'Jamku',1,2,'2015-05-30 08:32:37','2015-05-30 08:32:37'),
	(30,'Jarajibli',1,2,'2015-05-30 08:32:44','2015-05-30 08:32:44'),
	(31,'Jaykot',1,2,'2015-05-30 08:32:49','2015-05-30 08:32:49'),
	(32,'Jipti',1,2,'2015-05-30 08:32:55','2015-05-30 08:32:55'),
	(33,'Jumma',1,2,'2015-05-30 08:33:01','2015-05-30 08:33:01'),
	(34,'Juntigar R F',1,2,'2015-05-30 08:33:07','2015-05-30 08:33:07'),
	(35,'Jyoti Pangu',1,2,'2015-05-30 08:33:13','2015-05-30 08:33:13'),
	(36,'Kalika',1,2,'2015-05-30 08:33:20','2015-05-30 08:33:20'),
	(37,'Kanar',1,2,'2015-05-30 08:33:26','2015-05-30 08:33:26'),
	(38,'Khela',1,2,'2015-05-30 08:33:31','2015-05-30 08:33:31'),
	(39,'Khet',1,2,'2015-05-30 08:33:36','2015-05-30 08:33:36'),
	(40,'Khimling',1,2,'2015-05-30 08:33:42','2015-05-30 08:33:42'),
	(41,'Khumati',1,2,'2015-05-30 08:33:47','2015-05-30 08:33:47'),
	(42,'Kimkhola',1,2,'2015-05-30 08:33:52','2015-05-30 08:33:52'),
	(43,'Kuti',1,2,'2015-05-30 08:33:57','2015-05-30 08:33:57'),
	(44,'Lum',1,2,'2015-05-30 08:34:03','2015-05-30 08:34:03'),
	(45,'Lumati',1,2,'2015-05-30 08:34:09','2015-05-30 08:34:09'),
	(46,'Majtham Payya R F',1,2,'2015-05-30 08:34:14','2015-05-30 08:34:14'),
	(47,'Marchha',1,2,'2015-05-30 08:34:18','2015-05-30 08:34:18'),
	(48,'Metali',1,2,'2015-05-30 08:34:23','2015-05-30 08:34:23'),
	(49,'Nagling',1,2,'2015-05-30 08:34:28','2015-05-30 08:34:28'),
	(50,'Napalachchu',1,2,'2015-05-30 08:34:33','2015-05-30 08:34:33'),
	(51,'Navi',1,2,'2015-05-30 08:34:38','2015-05-30 08:34:38'),
	(52,'New',1,2,'2015-05-30 08:34:43','2015-05-30 08:34:43'),
	(53,'Pangla',1,2,'2015-05-30 08:34:48','2015-05-30 08:34:48'),
	(54,'Payya Pauri',1,2,'2015-05-30 08:35:01','2015-05-30 08:35:01'),
	(55,'Philam',1,2,'2015-05-30 08:35:05','2015-05-30 08:35:05'),
	(56,'Punla Bhataka',1,2,'2015-05-30 08:35:15','2015-05-30 08:35:15'),
	(57,'Ramtoli',1,2,'2015-05-30 08:35:20','2015-05-30 08:35:20'),
	(58,'Ranthi',1,2,'2015-05-30 08:35:24','2015-05-30 08:35:24'),
	(59,'Raung Kong',1,2,'2015-05-30 08:35:29','2015-05-30 08:35:29'),
	(60,'Rung',1,2,'2015-05-30 08:35:33','2015-05-30 08:35:33'),
	(61,'Rungling R F',1,2,'2015-05-30 08:35:38','2015-05-30 08:35:38'),
	(62,'Sagri Dhakdhauna',1,2,'2015-05-30 08:35:55','2015-05-30 08:35:55'),
	(63,'Sela',1,2,'2015-05-30 08:35:59','2015-05-30 08:35:59'),
	(64,'Sipu',1,2,'2015-05-30 08:36:04','2015-05-30 08:36:04'),
	(65,'Sirdang',1,2,'2015-05-30 08:36:09','2015-05-30 08:36:09'),
	(66,'Sirkha',1,2,'2015-05-30 08:36:13','2015-05-30 08:36:13'),
	(67,'Sobala',1,2,'2015-05-30 08:36:18','2015-05-30 08:36:18'),
	(68,'Sobala R F',1,2,'2015-05-30 08:36:23','2015-05-30 08:36:23'),
	(69,'Sosa',1,2,'2015-05-30 08:36:29','2015-05-30 08:36:29'),
	(70,'Suwa',1,2,'2015-05-30 08:36:33','2015-05-30 08:36:33'),
	(71,'Syankuri',1,2,'2015-05-30 08:36:37','2015-05-30 08:36:37'),
	(72,'Tankul',1,2,'2015-05-30 08:36:41','2015-05-30 08:36:41'),
	(73,'Tanta Gaon Roto',1,2,'2015-05-30 08:36:46','2015-05-30 08:36:46'),
	(74,'Tejam',1,2,'2015-05-30 08:36:50','2015-05-30 08:36:50'),
	(75,'Thakla Dhafiya Dhura R F',1,2,'2015-05-30 08:36:56','2015-05-30 08:36:56'),
	(76,'Tham',1,2,'2015-05-30 08:37:00','2015-05-30 08:37:00'),
	(77,'Tidang',1,2,'2015-05-30 08:37:05','2015-05-30 08:37:05'),
	(78,'Toli',1,2,'2015-05-30 08:37:10','2015-05-30 08:37:10'),
	(79,'Umachiya',1,2,'2015-05-30 08:37:14','2015-05-30 08:37:14'),
	(80,'Watan',1,2,'2015-05-30 08:37:23','2015-05-30 08:37:23'),
	(81,'11111',1,1,'2015-05-30 14:50:49','2015-05-30 14:50:49'),
	(82,'1111',1,1,'2015-05-30 14:50:58','2015-05-30 14:50:58'),
	(83,'1111',1,1,'2015-05-30 14:52:05','2015-05-30 14:52:05'),
	(84,'1111',1,1,'2015-05-30 14:52:36','2015-05-30 14:52:36'),
	(85,'1111',1,1,'2015-05-30 14:53:06','2015-05-30 14:53:06');

/*!40000 ALTER TABLE `villages` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
