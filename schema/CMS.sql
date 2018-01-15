-- phpMyAdmin SQL Dump
-- version 4.2.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 04, 2015 at 02:31 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `CMS`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
`id` int(10) unsigned NOT NULL,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `language_id`, `position`, `user_id`, `user_id_edited`, `article_category_id`, `title`, `slug`, `introduction`, `content`, `source`, `picture`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, 1, NULL, 2, 'ipsum sequi nam', NULL, 'Libero et sit minus quos. Doloribus ipsum quia voluptates eos laboriosam officiis. Laudantium quas laborum iure autem sit natus.', 'Officiis perspiciatis maxime rerum atque provident. At excepturi aperiam cum molestias. In blanditiis pariatur vel harum quia. Qui illum libero et dignissimos ullam. Adipisci dolores totam quia ullam molestiae totam explicabo molestiae. Voluptates dolorem suscipit enim ut sed voluptas autem nesciunt. Blanditiis facilis et a et accusamus exercitationem aliquid. Enim quo beatae quia repellat unde culpa. Blanditiis magni esse sit id minus sunt ratione. Omnis id architecto consequatur debitis at est quo.', NULL, NULL, '2015-05-19 11:49:32', '2015-05-19 11:49:32'),
(2, 2, NULL, 1, NULL, 2, 'corrupti perferendis et', NULL, 'Adipisci voluptate sit incidunt impedit repellendus dolores. Fugiat ab quia debitis modi quia qui nisi. Quia quas est et excepturi sunt necessitatibus fugiat et. Architecto qui repellat eius facere.', 'Soluta quibusdam quasi eos qui quia. Autem rem placeat aut pariatur deserunt dolore. Sit qui voluptas cupiditate esse repellat. Vel et accusamus porro quo ad aut deleniti. Sit illum fugiat cum mollitia quo sint error. Odio minima voluptatem ea dolor nemo qui. Sit sit veritatis dolorem magnam doloribus voluptas. Sunt quod fugit illo doloribus dolores eum. Sequi veniam esse delectus quis. Odio voluptates qui cum debitis.', NULL, NULL, '2015-05-19 11:49:32', '2015-05-19 11:49:32'),
(3, 2, NULL, NULL, NULL, 1, 'praesentium suscipit sunt', NULL, 'Dolores perspiciatis et voluptatem maxime ipsa sint et quo. Maxime voluptatibus exercitationem quis nostrum facilis. Et ea nesciunt quis quae autem et. Deserunt veniam qui eos dolorem alias animi velit. Similique vitae laborum sed temporibus.', 'Qui repudiandae suscipit molestiae dolor et. Quo officiis et similique dolores beatae mollitia. Facilis illo voluptas autem asperiores ab. Assumenda ut labore et et. Quos qui et eos ducimus vel. Assumenda et vitae et. Consequatur aliquid officiis dicta deleniti eum. Culpa eligendi et magnam ullam. Quis voluptas rerum cumque qui asperiores asperiores. Laboriosam voluptate fuga vel. Amet sint excepturi omnis officia. Voluptatem dolor ullam sed quia et qui dolorem.', NULL, NULL, '2015-05-19 11:49:32', '2015-05-19 11:49:32'),
(4, 1, NULL, 1, NULL, 2, 'optio nulla sed', NULL, 'Eos numquam neque perspiciatis aut. Eveniet et aut saepe. Ut velit commodi laboriosam enim. Reprehenderit harum vel blanditiis nisi. Commodi maxime corrupti nobis sit ipsam laboriosam voluptatem.', 'Ut tenetur sint numquam praesentium ut alias eum. Rerum dolor aperiam ut sed sint. Vero consequuntur harum in in. Saepe sint sed omnis officiis. Minus voluptatem magnam quasi qui quam quae saepe facere. Fugiat nesciunt ut unde rem totam minus ut. Voluptatum ipsa quibusdam totam accusantium. Ea recusandae facere vel magni et blanditiis. Sequi optio minima repellendus ab repellat fuga. Quasi sit occaecati consequatur ipsam. Beatae ipsam natus voluptas ullam perspiciatis a quia inventore.', NULL, NULL, '2015-05-19 11:49:32', '2015-05-19 11:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `article_categories`
--

CREATE TABLE IF NOT EXISTS `article_categories` (
`id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  `position` int(11) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `user_id_edited` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `article_categories`
--

INSERT INTO `article_categories` (`id`, `language_id`, `position`, `user_id`, `user_id_edited`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, NULL, 'rem fugiat ducimus', NULL, '2015-05-19 11:49:32', '2015-05-19 11:49:32'),
(2, 3, NULL, 2, NULL, 'necessitatibus totam vel', NULL, '2015-05-19 11:49:32', '2015-05-19 11:49:32'),
(3, 3, NULL, 2, NULL, 'quasi quidem sed', NULL, '2015-05-19 11:49:32', '2015-05-19 11:49:32'),
(4, 1, NULL, NULL, NULL, 'eum sed qui', NULL, '2015-05-19 11:49:32', '2015-05-19 11:49:32'),
(5, 2, NULL, NULL, NULL, 'nam ut qui', NULL, '2015-05-19 11:49:32', '2015-05-19 11:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `constituency`
--

CREATE TABLE IF NOT EXISTS `constituency` (
`id` int(10) unsigned NOT NULL,
  `constituency_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `constituency`
--

INSERT INTO `constituency` (`id`, `constituency_name`, `created_at`, `updated_at`) VALUES
(1, 'Dharchula', '2015-05-12 18:30:00', '0000-00-00 00:00:00'),
(2, 'Kotdwar', '2015-05-20 18:30:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

CREATE TABLE IF NOT EXISTS `funds` (
`id` int(10) unsigned NOT NULL,
  `constituency_id` int(11) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) unsigned NOT NULL,
  `created_by` int(11) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `funds`
--

INSERT INTO `funds` (`id`, `constituency_id`, `category_id`, `description`, `amount`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Desc1', 4001, 2, '2015-05-27 13:38:45', '2015-05-27 14:04:34'),
(2, 1, 4, 'expense', 5000, 2, '2015-05-28 08:46:03', '2015-05-28 08:46:03'),
(3, 1, 2, 'Electricty', 5000000, 15, '2015-06-01 16:56:28', '2015-06-01 17:04:51'),
(4, 1, 2, 'Electricity problem solved in the area...', 500000, 15, '2015-06-01 17:05:32', '2015-06-01 17:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `fund_activity`
--

CREATE TABLE IF NOT EXISTS `fund_activity` (
`id` int(11) unsigned NOT NULL,
  `fund_id` int(11) unsigned NOT NULL,
  `field` varchar(30) NOT NULL,
  `old_value` varchar(255) NOT NULL,
  `new_value` varchar(255) NOT NULL,
  `created_by` int(11) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fund_activity`
--

INSERT INTO `fund_activity` (`id`, `fund_id`, `field`, `old_value`, `new_value`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'category', 'Elec', 'Water', 2, '2015-05-27 14:04:34', '2015-05-27 14:04:34'),
(2, 1, 'amount', '400', '4001', 2, '2015-05-27 14:04:34', '2015-05-27 14:04:34'),
(3, 1, 'description', 'Desc', 'Desc1', 2, '2015-05-27 14:04:34', '2015-05-27 14:04:34'),
(4, 3, 'amount', '50000', '500000', 15, '2015-06-01 17:01:05', '2015-06-01 17:01:05'),
(5, 3, 'description', 'Electricty', 'Electricty1', 15, '2015-06-01 17:01:05', '2015-06-01 17:01:05'),
(6, 3, 'amount', '500000', '5000000', 15, '2015-06-01 17:04:38', '2015-06-01 17:04:38'),
(7, 3, 'description', 'Electricty1', 'Electricty', 15, '2015-06-01 17:04:51', '2015-06-01 17:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE IF NOT EXISTS `issues` (
`id` int(10) unsigned NOT NULL,
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
  `assigned_mobile` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assigned_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assigned_designation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `token`, `reporter_name`, `reporter_mobile`, `category_id`, `village_id`, `short_desc`, `long_desc`, `created_by`, `created_at`, `updated_at`, `status`, `assigned_mobile`, `assigned_name`, `assigned_designation`) VALUES
(1, 123, 'Tushar Chhabra', '9999999999', 1, 1, 'Water Issue', 'Water Issue', 1, '2015-05-04 18:30:00', '2015-05-23 15:21:53', 'COMPLETED', '', NULL, NULL),
(2, 124, 'Tushar Chhabra', '8989898999', 3, 2, 'Water Issue', 'Water Issue', 1, '2015-05-22 18:30:00', '0000-00-00 00:00:00', 'INPROGRESS', '', NULL, NULL),
(4, 125, 'Feeroz', '9611014400', 1, 2, 'Issue Summary', 'Water Issue', 1, '2015-05-22 06:58:01', '2015-05-22 06:58:01', 'ASSIGNED', '', NULL, NULL),
(5, 126, '1111', '1111', 1, 2, 'Water Issue', 'Water Issue', 1, '2015-05-22 07:27:25', '2015-05-22 07:27:25', 'DEFERRED', '', NULL, NULL),
(6, 127, '1111', '1111', 1, 2, 'Water Issue', 'Water Issue', 1, '2015-05-22 07:46:08', '2015-05-23 09:31:55', 'COMPLETED', '', NULL, NULL),
(7, 128, 'Last', 'Last', 2, 2, 'Lasrt', 'Last', 1, '2015-05-23 09:35:59', '2015-05-23 09:35:59', 'NEW', '', NULL, NULL),
(8, 129, 'Tushar', '9990909091', 2, 2, 'Water Issue', 'Water Issue', 2, '2015-05-28 08:41:54', '2015-06-01 10:14:27', 'NEW', '', NULL, NULL),
(9, 130, 'Harish Sharma', '9615674455', 1, 3, 'Water is not provided from last 3 days', 'Water is not provided from last 3 days', 2, '2015-05-30 04:02:08', '2015-05-30 04:04:29', 'NEW', '', NULL, NULL),
(10, 131, 'tushar  chhabra', '9900872977', 3, 4, 'no connectivity to the nearest school', 'no road school', 15, '2015-06-01 10:11:48', '2015-06-01 16:18:19', 'COMPLETED', '', NULL, NULL),
(11, 132, 'Tushar Chhabra', '9090909090', 2, 11, 'New transformer needed in the area', '<p>New transformer needed in the area<br></p>', 15, '2015-06-02 03:37:53', '2015-06-03 10:24:39', 'COMPLETED', '', NULL, NULL),
(12, 133, 'Daljit Singh', '9900880098', 4, 11, 'Unemployment ', '<p>Poor family, No job</p>', 1, '2015-06-02 09:40:14', '2015-06-02 09:40:44', 'INPROGRESS', '', NULL, NULL),
(13, 134, 'Khajan Sahab', '9090909090', 2, 11, 'no power', '<p>power</p>', 1, '2015-06-03 10:22:11', '2015-06-03 15:24:17', 'ASSIGNED', '9611014400', 'Feeroz', 'AE'),
(14, 135, 'Khajan Sahab', '9090909090', 2, 11, 'No power', '<p>No Power</p>', 1, '2015-06-03 15:26:29', '2015-06-03 15:27:03', 'ASSIGNED', '9611014400', 'Feeroz Khan', 'Assistant Commisnor');

-- --------------------------------------------------------

--
-- Table structure for table `issue_activity`
--

CREATE TABLE IF NOT EXISTS `issue_activity` (
`id` int(11) unsigned NOT NULL,
  `issue_id` int(11) unsigned NOT NULL,
  `field` varchar(30) NOT NULL,
  `old_value` varchar(255) DEFAULT NULL,
  `new_value` varchar(255) DEFAULT NULL,
  `created_by` int(11) unsigned DEFAULT NULL,
  `created_name` varchar(50) DEFAULT NULL,
  `created_mobile` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `issue_activity`
--

INSERT INTO `issue_activity` (`id`, `issue_id`, `field`, `old_value`, `new_value`, `created_by`, `created_name`, `created_mobile`, `created_at`, `updated_at`) VALUES
(11, 8, 'reporter_mobile', '999090909', '9990909091', 2, NULL, NULL, '2015-05-28 08:42:06', '2015-05-28 08:42:06'),
(12, 9, 'village', 'Baluwakot', 'Bangapani', 2, NULL, NULL, '2015-05-30 04:04:29', '2015-05-30 04:04:29'),
(14, 10, 'status', 'NEW', 'ASSIGNED', 15, NULL, NULL, '2015-06-01 15:38:02', '2015-06-01 15:38:02'),
(15, 10, 'status', 'ASSIGNED', 'COMPLETED', 15, NULL, NULL, '2015-06-01 16:18:19', '2015-06-01 16:18:19'),
(16, 11, 'status', 'NEW', 'ASSIGNED', 15, NULL, NULL, '2015-06-02 03:39:06', '2015-06-02 03:39:06'),
(17, 12, 'status', 'NEW', 'INPROGRESS', 1, NULL, NULL, '2015-06-02 09:40:44', '2015-06-02 09:40:44'),
(18, 11, 'status', 'ASSIGNED', 'COMPLETED', 1, NULL, NULL, '2015-06-03 10:24:39', '2015-06-03 10:24:39'),
(19, 13, 'assigned_name', NULL, 'Feeroz', 1, NULL, NULL, '2015-06-03 13:13:28', '2015-06-03 13:13:28'),
(20, 13, 'assigned_mobile', '', '9090909090', 1, NULL, NULL, '2015-06-03 13:13:28', '2015-06-03 13:13:28'),
(21, 13, 'assigned_designation', NULL, 'AE', 1, NULL, NULL, '2015-06-03 13:13:28', '2015-06-03 13:13:28'),
(22, 13, 'status', 'NEW', 'ASSIGNED', 1, NULL, NULL, '2015-06-03 14:39:09', '2015-06-03 14:39:09'),
(23, 13, 'assigned_mobile', '9090909090', '9611014400', 1, NULL, NULL, '2015-06-03 15:24:17', '2015-06-03 15:24:17'),
(24, 14, 'status', 'NEW', 'ASSIGNED', 1, NULL, NULL, '2015-06-03 15:27:03', '2015-06-03 15:27:03'),
(25, 14, 'assigned_name', NULL, 'Feeroz Khan', 1, NULL, NULL, '2015-06-03 15:27:03', '2015-06-03 15:27:03'),
(26, 14, 'assigned_mobile', NULL, '9611014400', 1, NULL, NULL, '2015-06-03 15:27:03', '2015-06-03 15:27:03'),
(27, 14, 'assigned_designation', NULL, 'Assistant Commisnor', 1, NULL, NULL, '2015-06-03 15:27:03', '2015-06-03 15:27:03');

-- --------------------------------------------------------

--
-- Table structure for table `issue_category`
--

CREATE TABLE IF NOT EXISTS `issue_category` (
`id` int(10) unsigned NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `constituency_id` int(10) unsigned NOT NULL,
  `created_by` int(11) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `issue_category`
--

INSERT INTO `issue_category` (`id`, `category_name`, `constituency_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Water', 1, 1, '2015-05-13 02:52:28', '0000-00-00 00:00:00'),
(2, 'Electricity', 1, 1, '2015-05-07 10:41:19', '0000-00-00 00:00:00'),
(3, 'Roads', 1, 1, '2015-05-23 10:28:39', '2015-05-23 10:38:00'),
(4, 'Others', 1, 1, '2015-05-23 10:38:08', '2015-05-23 10:38:19'),
(5, 'Transfers', 1, 15, '2015-06-01 10:15:44', '2015-06-01 10:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `issue_comments`
--

CREATE TABLE IF NOT EXISTS `issue_comments` (
`id` int(11) unsigned NOT NULL,
  `issue_id` int(11) unsigned NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_by` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_name` varchar(50) DEFAULT NULL,
  `created_mobile` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `issue_comments`
--

INSERT INTO `issue_comments` (`id`, `issue_id`, `comment`, `created_by`, `created_at`, `updated_at`, `created_name`, `created_mobile`) VALUES
(1, 1, 'Test Comment', 1, '2015-05-23 06:40:48', '2015-05-23 06:40:48', NULL, NULL),
(2, 1, 'Test Comment', 1, '2015-05-23 06:58:49', '2015-05-23 06:58:49', NULL, NULL),
(8, 6, 'Test Comment', 1, '2015-05-23 09:29:20', '2015-05-23 09:29:20', NULL, NULL),
(9, 6, 'Test Comment', 1, '2015-05-23 09:31:55', '2015-05-23 09:31:55', NULL, NULL),
(10, 1, 'Test Comment', 1, '2015-05-23 15:11:09', '2015-05-23 15:11:09', NULL, NULL),
(11, 8, 'Test Comment', 2, '2015-05-28 08:44:55', '2015-05-28 08:44:55', NULL, NULL),
(12, 9, 'Working is started to rectify the issue', 2, '2015-05-30 04:04:02', '2015-05-30 04:04:02', NULL, NULL),
(13, 9, 'Changing the village as it was entered wrong....', 2, '2015-05-30 04:04:29', '2015-05-30 04:04:29', NULL, NULL),
(14, 8, 'Test Comment', 15, '2015-06-01 10:14:27', '2015-06-01 10:14:27', NULL, NULL),
(15, 10, 'Test Comment', 15, '2015-06-01 15:38:02', '2015-06-01 15:38:02', NULL, NULL),
(16, 10, 'new road started', 15, '2015-06-01 16:18:19', '2015-06-01 16:18:19', NULL, NULL),
(17, 11, 'Work started', 15, '2015-06-02 03:39:06', '2015-06-02 03:39:06', NULL, NULL),
(18, 12, 'Looking for unemployment benefits possible', 1, '2015-06-02 09:40:44', '2015-06-02 09:40:44', NULL, NULL),
(19, 11, 'dfn', 1, '2015-06-03 10:24:39', '2015-06-03 10:24:39', NULL, NULL),
(20, 13, 'Assigning to AE', 1, '2015-06-03 13:13:28', '2015-06-03 13:13:28', NULL, NULL),
(21, 13, 'Comments', 1, '2015-06-03 14:39:09', '2015-06-03 14:39:09', NULL, NULL),
(22, 13, 'Comment', 1, '2015-06-03 14:42:00', '2015-06-03 14:42:00', NULL, NULL),
(23, 13, 'c11', 1, '2015-06-03 14:44:00', '2015-06-03 14:44:00', NULL, NULL),
(24, 13, '1111', 1, '2015-06-03 15:22:25', '2015-06-03 15:22:25', NULL, NULL),
(25, 13, '1111', 1, '2015-06-03 15:24:17', '2015-06-03 15:24:17', NULL, NULL),
(26, 14, 'Please ressolve this...', 1, '2015-06-03 15:27:03', '2015-06-03 15:27:03', NULL, NULL),
(27, 14, 'Working on it...', 1, '2015-06-03 15:30:27', '2015-06-03 15:30:27', 'Feeroz Khan', '9611014400');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
`id` int(10) unsigned NOT NULL,
  `position` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `user_id_edited` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `position`, `name`, `lang_code`, `icon`, `user_id`, `user_id_edited`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'English', 'en', 'icon_flag_gb.gif', NULL, NULL, '2015-05-19 11:49:32', '2015-05-19 11:49:32', NULL),
(2, NULL, 'Српски', 'sr', 'icon_flag_sr.gif', NULL, NULL, '2015-05-19 11:49:32', '2015-05-19 11:49:32', NULL),
(3, NULL, 'Bosanski', 'bs', 'icon_flag_bs.gif', NULL, NULL, '2015-05-19 11:49:32', '2015-05-19 11:49:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_10_18_195027_create_languages_table', 1),
('2014_10_18_225005_create_article_categories_table', 1),
('2014_10_18_225505_create_articles_table', 1),
('2014_10_18_225928_create_photo_albums_table', 1),
('2014_10_18_230227_create_video_albums_table', 1),
('2014_10_18_231619_create_photos_table', 1),
('2014_10_18_232019_create_videos_table', 1),
('2015_05_21_110658_create_constituency_table', 2),
('2015_05_21_110705_create_village_table', 3),
('2015_05_21_110659_create_issue_category_table', 4),
('2015_05_21_110825_create_issues_table', 5),
('2015_05_21_181745_add_status_to_issues', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
`id` int(10) unsigned NOT NULL,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `language_id`, `position`, `slider`, `filename`, `name`, `description`, `photo_album_id`, `album_cover`, `user_id`, `user_id_edited`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 'd7ebe1562186fe32c00ae5c7d3d4056e.jpg', 'molestias', 'Quo nesciunt asperiores magni maxime aut. Qui maiores autem hic culpa nobis est et. Iste alias voluptatum magni eligendi. Fuga quia sed voluptas repellendus ut.', 1, 0, NULL, NULL, '2015-05-19 11:49:33', '2015-05-19 11:49:33'),
(2, 2, 0, 0, '0344ff8a60853961992bbf4608a7563e.jpg', 'pariatur', 'Quo aperiam et accusantium labore sequi ad libero. Velit ut dolorum quo hic quia omnis sit. Quis asperiores est aut esse velit.', 1, 0, 1, NULL, '2015-05-19 11:49:35', '2015-05-19 11:49:35'),
(3, 3, 1, 0, '243910e60e4cc61efe841b3a34747a4c.jpg', 'qui', 'Sunt maiores harum quidem. Ea repellat error similique similique sunt. Aut modi ipsum voluptatem similique quibusdam. Ea et fuga beatae voluptatem.', 3, 0, 1, NULL, '2015-05-19 11:49:36', '2015-05-19 11:49:36'),
(4, 3, 1, 0, '58369b406bd592bdc1425fb92cc8076f.jpg', 'quod', 'Molestiae vitae ut consectetur error ullam. Reprehenderit officia adipisci rem est est. Ullam perspiciatis omnis fugit et sed.', 3, 1, NULL, NULL, '2015-05-19 11:49:37', '2015-05-19 11:49:37'),
(5, 1, 0, 0, '0dc39281150f91f34ee4e52378043387.jpg', 'dolores', 'Adipisci quia consequuntur placeat. Quae neque unde quam nam reiciendis non molestias. Est reprehenderit magnam commodi nobis cumque recusandae aperiam. Totam illum placeat voluptate impedit saepe facere non similique.', 1, 1, 2, NULL, '2015-05-19 11:49:38', '2015-05-19 11:49:38');

-- --------------------------------------------------------

--
-- Table structure for table `photo_albums`
--

CREATE TABLE IF NOT EXISTS `photo_albums` (
`id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `folder_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `user_id_edited` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photo_albums`
--

INSERT INTO `photo_albums` (`id`, `language_id`, `position`, `name`, `description`, `folder_id`, `user_id`, `user_id_edited`, `created_at`, `updated_at`) VALUES
(1, 3, 35250, 'incidunt laudantium qui', 'Qui accusamus unde aut amet voluptatem culpa est voluptatem. Minima voluptatem et dolorem similique ullam. Voluptatem magni exercitationem maiores autem.', '', NULL, NULL, '2015-05-19 11:49:32', '2015-05-19 11:49:32'),
(2, 3, 625020, 'nihil pariatur error', 'Quaerat ut dolorum perspiciatis recusandae exercitationem similique a. Quia aperiam aliquid consequatur sunt ut. Consequatur repudiandae exercitationem consequatur accusantium praesentium aliquam unde.', '', 2, NULL, '2015-05-19 11:49:32', '2015-05-19 11:49:32'),
(3, 1, 4950, 'maiores repudiandae est', 'Doloremque a iusto sunt error. Dicta pariatur necessitatibus aut praesentium. Maxime sunt a est voluptas repellendus deserunt porro. Velit harum voluptatem et numquam tempore sequi aspernatur ut.', '', 2, NULL, '2015-05-19 11:49:32', '2015-05-19 11:49:32'),
(4, 1, 9484, 'ut explicabo et', 'Adipisci quam omnis non occaecati velit officia quod amet. Sunt sapiente voluptatum deleniti nam magnam deserunt repellat. Porro qui aut pariatur ipsa et.', '', 1, NULL, '2015-05-19 11:49:32', '2015-05-19 11:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `uid_db`
--

CREATE TABLE IF NOT EXISTS `uid_db` (
`id` int(11) unsigned NOT NULL,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `relation` enum('Primary','Wife','Son','Daughter','Father','Mother','Husband','Other') DEFAULT NULL,
  `uid` varchar(20) NOT NULL DEFAULT '',
  `uid_vill` int(11) unsigned NOT NULL DEFAULT '0',
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `fathers_name` varchar(50) NOT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `dob` date NOT NULL,
  `ration_card_no` varchar(20) NOT NULL,
  `aadhar_no` varchar(20) NOT NULL,
  `voter_id` varchar(50) DEFAULT NULL,
  `village_id` int(11) unsigned NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_by` int(11) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uid_db`
--

INSERT INTO `uid_db` (`id`, `parent_id`, `relation`, `uid`, `uid_vill`, `first_name`, `middle_name`, `last_name`, `fathers_name`, `mobile`, `gender`, `dob`, `ration_card_no`, `aadhar_no`, `voter_id`, `village_id`, `address`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 0, 'Primary', 'UK01011AA0001', 1, 'Tushar', '', 'Chhabra', 'Sunil Chhabra', '9090909090', 'Male', '1990-06-01', '11111111', '22222222', '33333333', 11, 'Full Address', 15, '2015-06-02 03:28:14', '2015-06-02 03:28:14'),
(2, 1, 'Son', 'UK01011AA0001', 0, 'Vivek', '', 'Chhabra', 'Tushar Chhabra', '9090909090', 'Male', '2012-06-01', '11111111', '3333', '2222', 11, 'Full Address', 15, '2015-06-02 03:29:02', '2015-06-02 03:29:15'),
(3, 0, 'Primary', 'UK01011AA0002', 2, 'Daljit', '', 'Singh', 'S. Singh', '9900880098', 'Male', '1968-08-08', 'ABC000000', 'ABC1111111', 'XYZ1234', 11, '12-chharchhum', 1, '2015-06-02 09:37:38', '2015-06-02 09:37:38'),
(4, 3, 'Daughter', 'UK01011AA0002', 0, 'Simran', '', 'Kaur', 'Daljit Singh', '99999999999', 'Female', '1989-08-06', 'ABC000000', 'TXC00000', 'XYZ12345678', 11, '12-chharchhum', 1, '2015-06-02 09:38:35', '2015-06-02 09:38:35'),
(5, 0, 'Primary', 'UK01011AA0003', 3, 'Khajan', '', 'Sahab', 'mr singh', '9090909090', 'Male', '1981-06-01', '1111111', '111111', '11111', 11, 'adrress', 1, '2015-06-03 10:21:07', '2015-06-03 10:21:07'),
(6, 0, 'Primary', 'UK01011AA0004', 4, 'Feeriz', '', 'Khan', 'M M Khan', '9090909090', 'Male', '1981-06-01', '1111', '1111', '1111', 11, '1111', 1, '2015-06-03 15:08:24', '2015-06-03 15:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `confirmation_code`, `confirmed`, `admin`, `designation`, `constituency_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin User', 'admin_user', 'admin@admin.com', '$2y$10$AxWlvOGFovNfEa8FieM7pOQCg.YuGJIZjKaD8pkAqKqBBZW3X64Z6', 'f8a464ee1bdc5d092608c242cf2cd3c6', 1, 1, 'Regional Manager', 1, 'RgFJupccaGG9pLSbaF2Jk0xJl32JLE3SzWJzImlUAmH6Lt34vIm8bAwWnoVG', '2015-05-19 11:49:32', '2015-06-03 10:16:14'),
(2, 'Sunil Sharma', 'test_user', 'user@user.com', '$2y$10$RaSgpqd.3XtFmwYUCIWwXuX4bA4HyhmrFwwAi98m7jpdjce62X/gm', '4e2a53683a914b2a049bf1018e71d637', 0, 0, 'Manager', 1, 'InnVzBnbj0FJDLamPYZ0GxjWeciqRXnlI7WkXriwaQKG6frC4C8D7oGW4osh', '2015-05-19 11:49:32', '2015-05-30 08:06:27'),
(13, 'Feeroz', 'feeroz_khan', 'feeroz.a.khan@gmail.com', '$2y$10$9gR1MWhgLxxvDh.InLar/OdzvjaTmYCSzzAOPEo9wx6DKc3PF7mli', 'tvMW5TrMQk2oq5Qo8w6ltZamgaWe93eM', 1, 0, NULL, 1, NULL, '2015-05-21 12:06:28', '2015-05-21 12:06:28'),
(15, 'karan', 'karan', 'kahlon.jaskaran@gmail.com', '$2y$10$p1WSf.7cORDbGHvCsjnd7eoDpyLPN2qRUqSQD189A8tiWNkQoBKW2', '4mYmRo1DFwr36gWQS01lGX0Ikr0VF45J', 1, 0, 'manager', 1, 'mdMUqfcBXnGIX0BnK2njji7JQYoctoLIDuvvjeKGwYmCtrS3CMqnt0n6rQRa', '2015-06-01 09:51:08', '2015-06-02 09:33:57'),
(16, 'Amit Kumar Singh', 'amit', 'amit@chanakyaneeti.in', '$2y$10$rTMGQcMKxr7L2R9Na6BHu.5QMreCAybZO/TY3c.RhQXITD8GwfBCO', 'tmUfQ11gOnX4BdzQOtdon9UAMDDeeQ07', 1, 0, 'Senior technical manager', 1, NULL, '2015-06-02 09:35:39', '2015-06-02 09:35:39');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
`id` int(10) unsigned NOT NULL,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `language_id`, `position`, `filename`, `name`, `description`, `youtube`, `video_album_id`, `album_cover`, `user_id`, `user_id_edited`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '6e517f50496564ee01959d37d9eed8c5.jpg', 'quasi', 'Voluptatem quaerat est non fugit adipisci commodi mollitia. Dolore quo sequi accusantium eius explicabo. Hic voluptas est rerum est qui molestiae non. Explicabo beatae sit molestias adipisci temporibus adipisci dolore. Consequatur quo et eum accusantium aut.', 'https://www.youtube.com/watch?v=FIZ_gDOrzGk', 3, 0, 1, NULL, '2015-05-19 11:49:40', '2015-05-19 11:49:40'),
(2, 1, 0, '352a7dba2fcfc8e28891fed10b48fe7b.jpg', 'labore', 'Tempore ullam qui quo excepturi pariatur est. Provident ea amet ipsum. Est sint aperiam voluptatem expedita eligendi qui maiores consequatur.', 'https://www.youtube.com/watch?v=FIZ_gDOrzGk', 2, 0, NULL, NULL, '2015-05-19 11:49:41', '2015-05-19 11:49:41'),
(3, 2, 0, '8d51c5933ca0ab2b308c7263d22510ec.jpg', 'repellat', 'Ea similique neque molestias illum non quod. Iste facere voluptatem similique. Omnis voluptatem ut deserunt sequi excepturi rerum non accusantium.', 'https://www.youtube.com/watch?v=FIZ_gDOrzGk', 3, 1, NULL, NULL, '2015-05-19 11:49:42', '2015-05-19 11:49:42'),
(4, 2, 1, '743e558133e37cc84101803b0a91688e.jpg', 'deleniti', 'Ab tempore aut numquam dolores. Velit laudantium eos minus iusto earum. Nisi alias aut officiis dolor.', 'https://www.youtube.com/watch?v=FIZ_gDOrzGk', 1, 0, 2, NULL, '2015-05-19 11:49:43', '2015-05-19 11:49:43'),
(5, 2, 0, 'a9efe69d71895326f6b766a2b45caa3a.jpg', 'vitae', 'Quia occaecati dolorem voluptatem nostrum doloremque quibusdam. Autem dolorem at sed quam qui voluptas molestiae. Est culpa et officia alias voluptatem.', 'https://www.youtube.com/watch?v=FIZ_gDOrzGk', 2, 1, 1, NULL, '2015-05-19 11:49:44', '2015-05-19 11:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `video_albums`
--

CREATE TABLE IF NOT EXISTS `video_albums` (
`id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `folder_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `user_id_edited` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `video_albums`
--

INSERT INTO `video_albums` (`id`, `language_id`, `position`, `name`, `description`, `folder_id`, `user_id`, `user_id_edited`, `created_at`, `updated_at`) VALUES
(1, 2, 32, 'similique nemo cum', 'Qui suscipit culpa delectus molestiae nesciunt. Aspernatur ullam corporis et possimus consequatur quod et minima. Maxime pariatur rerum alias culpa perferendis soluta ea. Quibusdam vero placeat eveniet quo.', '', NULL, NULL, '2015-05-19 11:49:38', '2015-05-19 11:49:38'),
(2, 2, 822, 'et accusantium laudantium', 'Consequatur nobis sit quidem occaecati consequatur vel incidunt. Nulla cupiditate quaerat dolore ab facilis non perspiciatis et. Et architecto aut ipsum commodi et et. Amet sint nesciunt sit.', '', 1, NULL, '2015-05-19 11:49:38', '2015-05-19 11:49:38'),
(3, 2, 114, 'sit a voluptate', 'Quo rerum a deserunt dolor. Dolores explicabo qui nesciunt quia error provident ipsam impedit. Tempora hic architecto ipsam iusto. Ea error hic distinctio vel recusandae temporibus.', '', 2, NULL, '2015-05-19 11:49:38', '2015-05-19 11:49:38'),
(4, 1, 4294424, 'tenetur eaque sint', 'Assumenda officia repellendus in qui. Distinctio amet fuga et. Aliquam qui doloremque consequatur et ea. Et consequatur delectus repudiandae recusandae.', '', 2, NULL, '2015-05-19 11:49:38', '2015-05-19 11:49:38');

-- --------------------------------------------------------

--
-- Table structure for table `villages`
--

CREATE TABLE IF NOT EXISTS `villages` (
`id` int(10) unsigned NOT NULL,
  `village_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `constituency_id` int(10) unsigned NOT NULL,
  `created_by` int(11) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `villages`
--

INSERT INTO `villages` (`id`, `village_name`, `constituency_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Baling', 1, 1, '2015-05-06 00:59:26', '0000-00-00 00:00:00'),
(2, 'Baluwakot', 1, 1, '2015-05-06 00:56:36', '0000-00-00 00:00:00'),
(3, 'Bangapani', 1, 1, '2015-05-23 10:51:16', '2015-05-23 11:00:00'),
(4, 'Baram', 1, 2, '2015-05-30 02:44:37', '2015-05-30 02:44:37'),
(5, 'Bauling', 1, 2, '2015-05-30 02:45:57', '2015-05-30 02:45:57'),
(6, 'Baun', 1, 2, '2015-05-30 02:47:30', '2015-05-30 02:47:30'),
(7, 'Bundi', 1, 2, '2015-05-30 02:49:43', '2015-05-30 02:49:43'),
(8, 'Bung Bung', 1, 2, '2015-05-30 02:50:05', '2015-05-30 02:50:05'),
(9, 'Chal', 1, 2, '2015-05-30 02:52:08', '2015-05-30 02:52:08'),
(10, 'Chhalmachhilason', 1, 2, '2015-05-30 02:52:18', '2015-05-30 02:52:18'),
(11, ' Chharchhum', 1, 2, '2015-05-30 02:53:20', '2015-05-30 02:53:20'),
(12, 'Dar', 1, 2, '2015-05-30 02:56:29', '2015-05-30 02:56:29'),
(13, 'Daubu Yangsu', 1, 2, '2015-05-30 02:56:30', '2015-05-30 02:56:30'),
(14, 'Dhar Pangu', 1, 2, '2015-05-30 02:56:30', '2015-05-30 02:56:30'),
(15, 'Dharchula Dehat', 1, 2, '2015-05-30 02:56:30', '2015-05-30 02:56:30'),
(16, 'Dhunga Toli', 1, 2, '2015-05-30 02:56:31', '2015-05-30 02:56:31'),
(17, 'Dug R F', 1, 2, '2015-05-30 02:57:06', '2015-05-30 02:57:06'),
(18, 'Dugtu', 1, 2, '2015-05-30 02:58:33', '2015-05-30 02:58:33'),
(19, 'Duti Bagad', 1, 2, '2015-05-30 03:00:39', '2015-05-30 03:00:39'),
(20, 'Galagar', 1, 2, '2015-05-30 03:00:47', '2015-05-30 03:00:47'),
(21, 'Galati', 1, 2, '2015-05-30 03:00:53', '2015-05-30 03:00:53'),
(22, 'Garbyang', 1, 2, '2015-05-30 03:00:59', '2015-05-30 03:00:59'),
(23, 'Garguwa', 1, 2, '2015-05-30 03:01:04', '2015-05-30 03:01:04'),
(24, 'Go', 1, 2, '2015-05-30 03:01:55', '2015-05-30 03:01:55'),
(25, 'Gumkana', 1, 2, '2015-05-30 03:02:14', '2015-05-30 03:02:14'),
(26, 'Gunji', 1, 2, '2015-05-30 03:02:19', '2015-05-30 03:02:19'),
(27, 'Heera Gumari R F', 1, 2, '2015-05-30 03:02:26', '2015-05-30 03:02:26'),
(28, 'Himkhola', 1, 2, '2015-05-30 03:02:31', '2015-05-30 03:02:31'),
(29, 'Jamku', 1, 2, '2015-05-30 03:02:37', '2015-05-30 03:02:37'),
(30, 'Jarajibli', 1, 2, '2015-05-30 03:02:44', '2015-05-30 03:02:44'),
(31, 'Jaykot', 1, 2, '2015-05-30 03:02:49', '2015-05-30 03:02:49'),
(32, 'Jipti', 1, 2, '2015-05-30 03:02:55', '2015-05-30 03:02:55'),
(33, 'Jumma', 1, 2, '2015-05-30 03:03:01', '2015-05-30 03:03:01'),
(34, 'Juntigar R F', 1, 2, '2015-05-30 03:03:07', '2015-05-30 03:03:07'),
(35, 'Jyoti Pangu', 1, 2, '2015-05-30 03:03:13', '2015-05-30 03:03:13'),
(36, 'Kalika', 1, 2, '2015-05-30 03:03:20', '2015-05-30 03:03:20'),
(37, 'Kanar', 1, 2, '2015-05-30 03:03:26', '2015-05-30 03:03:26'),
(38, 'Khela', 1, 2, '2015-05-30 03:03:31', '2015-05-30 03:03:31'),
(39, 'Khet', 1, 2, '2015-05-30 03:03:36', '2015-05-30 03:03:36'),
(40, 'Khimling', 1, 2, '2015-05-30 03:03:42', '2015-05-30 03:03:42'),
(41, 'Khumati', 1, 2, '2015-05-30 03:03:47', '2015-05-30 03:03:47'),
(42, 'Kimkhola', 1, 2, '2015-05-30 03:03:52', '2015-05-30 03:03:52'),
(43, 'Kuti', 1, 2, '2015-05-30 03:03:57', '2015-05-30 03:03:57'),
(44, 'Lum', 1, 2, '2015-05-30 03:04:03', '2015-05-30 03:04:03'),
(45, 'Lumati', 1, 2, '2015-05-30 03:04:09', '2015-05-30 03:04:09'),
(46, 'Majtham Payya R F', 1, 2, '2015-05-30 03:04:14', '2015-05-30 03:04:14'),
(47, 'Marchha', 1, 2, '2015-05-30 03:04:18', '2015-05-30 03:04:18'),
(48, 'Metali', 1, 2, '2015-05-30 03:04:23', '2015-05-30 03:04:23'),
(49, 'Nagling', 1, 2, '2015-05-30 03:04:28', '2015-05-30 03:04:28'),
(50, 'Napalachchu', 1, 2, '2015-05-30 03:04:33', '2015-05-30 03:04:33'),
(51, 'Navi', 1, 2, '2015-05-30 03:04:38', '2015-05-30 03:04:38'),
(52, 'New', 1, 2, '2015-05-30 03:04:43', '2015-05-30 03:04:43'),
(53, 'Pangla', 1, 2, '2015-05-30 03:04:48', '2015-05-30 03:04:48'),
(54, 'Payya Pauri', 1, 2, '2015-05-30 03:05:01', '2015-05-30 03:05:01'),
(55, 'Philam', 1, 2, '2015-05-30 03:05:05', '2015-05-30 03:05:05'),
(56, 'Punla Bhataka', 1, 2, '2015-05-30 03:05:15', '2015-05-30 03:05:15'),
(57, 'Ramtoli', 1, 2, '2015-05-30 03:05:20', '2015-05-30 03:05:20'),
(58, 'Ranthi', 1, 2, '2015-05-30 03:05:24', '2015-05-30 03:05:24'),
(59, 'Raung Kong', 1, 2, '2015-05-30 03:05:29', '2015-05-30 03:05:29'),
(60, 'Rung', 1, 2, '2015-05-30 03:05:33', '2015-05-30 03:05:33'),
(61, 'Rungling R F', 1, 2, '2015-05-30 03:05:38', '2015-05-30 03:05:38'),
(62, 'Sagri Dhakdhauna', 1, 2, '2015-05-30 03:05:55', '2015-05-30 03:05:55'),
(63, 'Sela', 1, 2, '2015-05-30 03:05:59', '2015-05-30 03:05:59'),
(64, 'Sipu', 1, 2, '2015-05-30 03:06:04', '2015-05-30 03:06:04'),
(65, 'Sirdang', 1, 2, '2015-05-30 03:06:09', '2015-05-30 03:06:09'),
(66, 'Sirkha', 1, 2, '2015-05-30 03:06:13', '2015-05-30 03:06:13'),
(67, 'Sobala', 1, 2, '2015-05-30 03:06:18', '2015-05-30 03:06:18'),
(68, 'Sobala R F', 1, 2, '2015-05-30 03:06:23', '2015-05-30 03:06:23'),
(69, 'Sosa', 1, 2, '2015-05-30 03:06:29', '2015-05-30 03:06:29'),
(70, 'Suwa', 1, 2, '2015-05-30 03:06:33', '2015-05-30 03:06:33'),
(71, 'Syankuri', 1, 2, '2015-05-30 03:06:37', '2015-05-30 03:06:37'),
(72, 'Tankul', 1, 2, '2015-05-30 03:06:41', '2015-05-30 03:06:41'),
(73, 'Tanta Gaon Roto', 1, 2, '2015-05-30 03:06:46', '2015-05-30 03:06:46'),
(74, 'Tejam', 1, 2, '2015-05-30 03:06:50', '2015-05-30 03:06:50'),
(75, 'Thakla Dhafiya Dhura R F', 1, 2, '2015-05-30 03:06:56', '2015-05-30 03:06:56'),
(76, 'Tham', 1, 2, '2015-05-30 03:07:00', '2015-05-30 03:07:00'),
(77, 'Tidang', 1, 2, '2015-05-30 03:07:05', '2015-05-30 03:07:05'),
(78, 'Toli', 1, 2, '2015-05-30 03:07:10', '2015-05-30 03:07:10'),
(79, 'Umachiya', 1, 2, '2015-05-30 03:07:14', '2015-05-30 03:07:14'),
(80, 'Watan', 1, 2, '2015-05-30 03:07:23', '2015-05-30 03:07:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
 ADD PRIMARY KEY (`id`), ADD KEY `articles_language_id_foreign` (`language_id`), ADD KEY `articles_user_id_foreign` (`user_id`), ADD KEY `articles_user_id_edited_foreign` (`user_id_edited`), ADD KEY `articles_article_category_id_foreign` (`article_category_id`);

--
-- Indexes for table `article_categories`
--
ALTER TABLE `article_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `article_categories_language_id_foreign` (`language_id`), ADD KEY `article_categories_user_id_foreign` (`user_id`), ADD KEY `article_categories_user_id_edited_foreign` (`user_id_edited`);

--
-- Indexes for table `constituency`
--
ALTER TABLE `constituency`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
 ADD PRIMARY KEY (`id`), ADD KEY `issues_category_id_foreign` (`category_id`), ADD KEY `created_by` (`created_by`), ADD KEY `constituency_id` (`constituency_id`);

--
-- Indexes for table `fund_activity`
--
ALTER TABLE `fund_activity`
 ADD PRIMARY KEY (`id`), ADD KEY `created_by` (`created_by`), ADD KEY `issue_id` (`fund_id`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
 ADD PRIMARY KEY (`id`), ADD KEY `issues_category_id_foreign` (`category_id`), ADD KEY `issues_village_id_foreign` (`village_id`), ADD KEY `created_by` (`created_by`), ADD KEY `status` (`status`), ADD KEY `assigned_to` (`assigned_mobile`);

--
-- Indexes for table `issue_activity`
--
ALTER TABLE `issue_activity`
 ADD PRIMARY KEY (`id`), ADD KEY `created_by` (`created_by`), ADD KEY `issue_id` (`issue_id`);

--
-- Indexes for table `issue_category`
--
ALTER TABLE `issue_category`
 ADD PRIMARY KEY (`id`), ADD KEY `issue_category_constituency_id_foreign` (`constituency_id`), ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `issue_comments`
--
ALTER TABLE `issue_comments`
 ADD PRIMARY KEY (`id`), ADD KEY `issue_id` (`issue_id`), ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `languages_name_unique` (`name`), ADD UNIQUE KEY `languages_lang_code_unique` (`lang_code`), ADD KEY `languages_user_id_foreign` (`user_id`), ADD KEY `languages_user_id_edited_foreign` (`user_id_edited`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
 ADD PRIMARY KEY (`id`), ADD KEY `photos_language_id_foreign` (`language_id`), ADD KEY `photos_photo_album_id_foreign` (`photo_album_id`), ADD KEY `photos_user_id_foreign` (`user_id`), ADD KEY `photos_user_id_edited_foreign` (`user_id_edited`);

--
-- Indexes for table `photo_albums`
--
ALTER TABLE `photo_albums`
 ADD PRIMARY KEY (`id`), ADD KEY `photo_albums_language_id_foreign` (`language_id`), ADD KEY `photo_albums_user_id_foreign` (`user_id`), ADD KEY `photo_albums_user_id_edited_foreign` (`user_id_edited`);

--
-- Indexes for table `uid_db`
--
ALTER TABLE `uid_db`
 ADD PRIMARY KEY (`id`), ADD KEY `village_id` (`village_id`), ADD KEY `village_id_2` (`village_id`), ADD KEY `created_by` (`created_by`), ADD KEY `parent_id` (`parent_id`), ADD KEY `relation` (`relation`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_username_unique` (`username`), ADD UNIQUE KEY `users_email_unique` (`email`), ADD KEY `constituency_id` (`constituency_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
 ADD PRIMARY KEY (`id`), ADD KEY `videos_language_id_foreign` (`language_id`), ADD KEY `videos_video_album_id_foreign` (`video_album_id`), ADD KEY `videos_user_id_foreign` (`user_id`), ADD KEY `videos_user_id_edited_foreign` (`user_id_edited`);

--
-- Indexes for table `video_albums`
--
ALTER TABLE `video_albums`
 ADD PRIMARY KEY (`id`), ADD KEY `video_albums_language_id_foreign` (`language_id`), ADD KEY `video_albums_user_id_foreign` (`user_id`), ADD KEY `video_albums_user_id_edited_foreign` (`user_id_edited`);

--
-- Indexes for table `villages`
--
ALTER TABLE `villages`
 ADD PRIMARY KEY (`id`), ADD KEY `village_constituency_id_foreign` (`constituency_id`), ADD KEY `created_by` (`created_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `article_categories`
--
ALTER TABLE `article_categories`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `constituency`
--
ALTER TABLE `constituency`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `fund_activity`
--
ALTER TABLE `fund_activity`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `issue_activity`
--
ALTER TABLE `issue_activity`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `issue_category`
--
ALTER TABLE `issue_category`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `issue_comments`
--
ALTER TABLE `issue_comments`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `photo_albums`
--
ALTER TABLE `photo_albums`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `uid_db`
--
ALTER TABLE `uid_db`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `video_albums`
--
ALTER TABLE `video_albums`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `villages`
--
ALTER TABLE `villages`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
ADD CONSTRAINT `articles_article_category_id_foreign` FOREIGN KEY (`article_category_id`) REFERENCES `article_categories` (`id`) ON DELETE SET NULL,
ADD CONSTRAINT `articles_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
ADD CONSTRAINT `articles_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `article_categories`
--
ALTER TABLE `article_categories`
ADD CONSTRAINT `article_categories_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
ADD CONSTRAINT `article_categories_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
ADD CONSTRAINT `article_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `funds`
--
ALTER TABLE `funds`
ADD CONSTRAINT `funds_ibfk_1` FOREIGN KEY (`constituency_id`) REFERENCES `constituency` (`id`),
ADD CONSTRAINT `funds_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `issue_category` (`id`),
ADD CONSTRAINT `funds_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `fund_activity`
--
ALTER TABLE `fund_activity`
ADD CONSTRAINT `fund_activity_ibfk_1` FOREIGN KEY (`fund_id`) REFERENCES `funds` (`id`),
ADD CONSTRAINT `fund_activity_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `issues`
--
ALTER TABLE `issues`
ADD CONSTRAINT `issues_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `issue_category` (`id`),
ADD CONSTRAINT `issues_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
ADD CONSTRAINT `issues_village_id_foreign` FOREIGN KEY (`village_id`) REFERENCES `villages` (`id`);

--
-- Constraints for table `issue_activity`
--
ALTER TABLE `issue_activity`
ADD CONSTRAINT `issue_activity_ibfk_1` FOREIGN KEY (`issue_id`) REFERENCES `issues` (`id`),
ADD CONSTRAINT `issue_activity_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `issue_category`
--
ALTER TABLE `issue_category`
ADD CONSTRAINT `issue_category_constituency_id_foreign` FOREIGN KEY (`constituency_id`) REFERENCES `constituency` (`id`),
ADD CONSTRAINT `issue_category_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `issue_comments`
--
ALTER TABLE `issue_comments`
ADD CONSTRAINT `issue_comments_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
ADD CONSTRAINT `issue_comments_issue_id_foreign` FOREIGN KEY (`issue_id`) REFERENCES `issues` (`id`);

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
ADD CONSTRAINT `languages_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
ADD CONSTRAINT `languages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
ADD CONSTRAINT `photos_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
ADD CONSTRAINT `photos_photo_album_id_foreign` FOREIGN KEY (`photo_album_id`) REFERENCES `photo_albums` (`id`) ON DELETE SET NULL,
ADD CONSTRAINT `photos_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
ADD CONSTRAINT `photos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `photo_albums`
--
ALTER TABLE `photo_albums`
ADD CONSTRAINT `photo_albums_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
ADD CONSTRAINT `photo_albums_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
ADD CONSTRAINT `photo_albums_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `uid_db`
--
ALTER TABLE `uid_db`
ADD CONSTRAINT `uid_db_ibfk_1` FOREIGN KEY (`village_id`) REFERENCES `villages` (`id`),
ADD CONSTRAINT `uid_db_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
ADD CONSTRAINT `videos_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
ADD CONSTRAINT `videos_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
ADD CONSTRAINT `videos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
ADD CONSTRAINT `videos_video_album_id_foreign` FOREIGN KEY (`video_album_id`) REFERENCES `video_albums` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `video_albums`
--
ALTER TABLE `video_albums`
ADD CONSTRAINT `video_albums_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
ADD CONSTRAINT `video_albums_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
ADD CONSTRAINT `video_albums_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `villages`
--
ALTER TABLE `villages`
ADD CONSTRAINT `village_constituency_id_foreign` FOREIGN KEY (`constituency_id`) REFERENCES `constituency` (`id`),
ADD CONSTRAINT `villages_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
