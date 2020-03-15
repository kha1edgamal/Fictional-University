-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-02-20 10:50:23','2020-02-20 10:50:23','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://amazing-colleage.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://amazing-colleage.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Amazing Colleage','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','5aled.gamal231@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:111:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"events/?$\";s:26:\"index.php?post_type=events\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=events&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=events&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=events&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:39:\"index.php?events=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:33:\"index.php?events=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?events=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?events=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?events=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?events=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?events=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=52&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','fractional-university-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','fractional-university-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','45805','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','54','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','52','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (93,'admin_email_lifespan','1597747822','yes');
INSERT INTO `wp_options` VALUES (94,'initial_db_version','45805','yes');
INSERT INTO `wp_options` VALUES (95,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (96,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (103,'cron','a:6:{i:1584147025;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1584183024;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1584183025;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1584183310;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1584183313;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'nonce_key','C6;1jcTrm<]E?%;Kk%1/[tk2!J,kP#%E-y,RG)Ip>dlj3,kLuDG~qNV}?.=*BK2<','no');
INSERT INTO `wp_options` VALUES (111,'nonce_salt','EH+e$udxO2&5*0-y2qcIXr8eDlKUVAfju9Sj@!0Bt[Ya>K*;J|]a~H|#DUU(BYik','no');
INSERT INTO `wp_options` VALUES (112,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (117,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1584143583;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (119,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1584143585;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (122,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1584143586;s:7:\"checked\";a:5:{s:27:\"fractional-university-theme\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (123,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1582201690;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (141,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (145,'current_theme','','yes');
INSERT INTO `wp_options` VALUES (146,'theme_mods_fractional-university-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:9:\"headerNav\";i:3;s:12:\"footerNavOne\";i:4;s:12:\"footerNavTwo\";i:5;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (147,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (183,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (276,'_site_transient_timeout_browser_97fc230848bc304ccee289a55f3e5339','1584285540','no');
INSERT INTO `wp_options` VALUES (277,'_site_transient_browser_97fc230848bc304ccee289a55f3e5339','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (278,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1584285540','no');
INSERT INTO `wp_options` VALUES (279,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (295,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (315,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (347,'recovery_mode_email_last_sent','1584045585','yes');
INSERT INTO `wp_options` VALUES (367,'_site_transient_timeout_theme_roots','1584145385','no');
INSERT INTO `wp_options` VALUES (368,'_site_transient_theme_roots','a:5:{s:27:\"fractional-university-theme\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1582372086:1');
INSERT INTO `wp_postmeta` VALUES (6,7,'_edit_lock','1582372113:1');
INSERT INTO `wp_postmeta` VALUES (9,9,'_edit_lock','1582375386:1');
INSERT INTO `wp_postmeta` VALUES (10,12,'_edit_lock','1583687908:1');
INSERT INTO `wp_postmeta` VALUES (11,14,'_edit_lock','1583070969:1');
INSERT INTO `wp_postmeta` VALUES (13,17,'_edit_lock','1583071008:1');
INSERT INTO `wp_postmeta` VALUES (14,19,'_edit_lock','1583074047:1');
INSERT INTO `wp_postmeta` VALUES (15,3,'_edit_lock','1583074067:1');
INSERT INTO `wp_postmeta` VALUES (16,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (17,3,'_wp_trash_meta_time','1583074213');
INSERT INTO `wp_postmeta` VALUES (18,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (19,19,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (20,19,'_wp_trash_meta_time','1583074235');
INSERT INTO `wp_postmeta` VALUES (21,19,'_wp_desired_post_slug','privacy-policy-2');
INSERT INTO `wp_postmeta` VALUES (22,22,'_edit_lock','1583689095:1');
INSERT INTO `wp_postmeta` VALUES (23,24,'_edit_lock','1583074167:1');
INSERT INTO `wp_postmeta` VALUES (24,2,'_edit_lock','1583231238:1');
INSERT INTO `wp_postmeta` VALUES (25,28,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (26,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (27,28,'_menu_item_object_id','28');
INSERT INTO `wp_postmeta` VALUES (28,28,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (29,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (30,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (31,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (32,28,'_menu_item_url','http://amazing-colleage.local/');
INSERT INTO `wp_postmeta` VALUES (34,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (35,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (36,29,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (37,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (38,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (39,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (40,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (41,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (43,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (44,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (45,30,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (46,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (47,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (48,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (49,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (50,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (52,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (53,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (54,31,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (55,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (56,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (57,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (58,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (59,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (61,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (62,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (63,32,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (64,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (65,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (66,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (67,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (68,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (70,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (71,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (72,33,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (73,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (74,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (75,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (76,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (77,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (79,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (80,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (81,34,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (82,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (83,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (84,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (85,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (86,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (88,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (89,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (90,35,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (91,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (92,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (93,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (94,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (95,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (97,36,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (98,36,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (99,36,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (100,36,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (101,36,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (102,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (103,36,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (104,36,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (105,36,'_menu_item_orphaned','1583685074');
INSERT INTO `wp_postmeta` VALUES (106,37,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (107,37,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (108,37,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (109,37,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (110,37,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (111,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (112,37,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (113,37,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (114,37,'_menu_item_orphaned','1583685074');
INSERT INTO `wp_postmeta` VALUES (115,38,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (116,38,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (117,38,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (118,38,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (119,38,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (120,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (121,38,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (122,38,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (123,38,'_menu_item_orphaned','1583685074');
INSERT INTO `wp_postmeta` VALUES (124,39,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (125,39,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (126,39,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (127,39,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (128,39,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (129,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (130,39,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (131,39,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (132,39,'_menu_item_orphaned','1583685074');
INSERT INTO `wp_postmeta` VALUES (133,40,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (134,40,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (135,40,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (136,40,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (137,40,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (138,40,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (139,40,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (140,40,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (141,40,'_menu_item_orphaned','1583685074');
INSERT INTO `wp_postmeta` VALUES (142,41,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (143,41,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (144,41,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (145,41,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (146,41,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (147,41,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (148,41,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (149,41,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (151,42,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (152,42,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (153,42,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (154,42,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (155,42,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (156,42,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (157,42,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (158,42,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (187,46,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (188,46,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (189,46,'_menu_item_object_id','46');
INSERT INTO `wp_postmeta` VALUES (190,46,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (191,46,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (192,46,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (193,46,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (194,46,'_menu_item_url','http://www.google.com');
INSERT INTO `wp_postmeta` VALUES (196,47,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (197,47,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (198,47,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (199,47,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (200,47,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (201,47,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (202,47,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (203,47,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (205,48,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (206,48,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (207,48,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (208,48,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (209,48,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (210,48,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (211,48,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (212,48,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (214,49,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (215,49,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (216,49,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (217,49,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (218,49,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (219,49,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (220,49,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (221,49,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (223,50,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (224,50,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (225,50,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (226,50,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (227,50,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (228,50,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (229,50,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (230,50,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (232,51,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (233,51,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (234,51,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (235,51,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (236,51,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (237,51,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (238,51,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (239,51,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (241,52,'_edit_lock','1583701091:1');
INSERT INTO `wp_postmeta` VALUES (242,54,'_edit_lock','1583863588:1');
INSERT INTO `wp_postmeta` VALUES (243,56,'_edit_lock','1583715632:1');
INSERT INTO `wp_postmeta` VALUES (246,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (247,58,'_edit_lock','1584046244:1');
INSERT INTO `wp_postmeta` VALUES (248,59,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (249,59,'_edit_lock','1584046269:1');
INSERT INTO `wp_postmeta` VALUES (250,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (251,60,'_edit_lock','1584047239:1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-02-20 10:50:23','2020-02-20 10:50:23','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-02-20 10:50:23','2020-02-20 10:50:23','',0,'http://amazing-colleage.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-02-20 10:50:23','2020-02-20 10:50:23','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://amazing-colleage.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2020-02-20 10:50:23','2020-02-20 10:50:23','',0,'http://amazing-colleage.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-02-20 10:50:23','2020-02-20 10:50:23','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://amazing-colleage.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2020-03-01 14:50:13','2020-03-01 14:50:13','',0,'http://amazing-colleage.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2020-02-22 11:50:19','2020-02-22 11:50:19','<!-- wp:paragraph -->\n<p>Post Test Paragraph</p>\n<!-- /wp:paragraph -->','Post Test','','publish','open','open','','post-test','','','2020-02-22 11:50:19','2020-02-22 11:50:19','',0,'http://amazing-colleage.local/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2020-02-22 11:50:19','2020-02-22 11:50:19','<!-- wp:paragraph -->\n<p>Post Test Paragraph</p>\n<!-- /wp:paragraph -->','Post Test','','inherit','closed','closed','','5-revision-v1','','','2020-02-22 11:50:19','2020-02-22 11:50:19','',5,'http://amazing-colleage.local/5-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2020-02-22 11:50:54','2020-02-22 11:50:54','<!-- wp:paragraph -->\n<p>This is the second test post paragraph</p>\n<!-- /wp:paragraph -->','Second Test Post','','publish','open','open','','second-test-post','','','2020-02-22 11:50:54','2020-02-22 11:50:54','',0,'http://amazing-colleage.local/?p=7',0,'post','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2020-02-22 11:50:54','2020-02-22 11:50:54','<!-- wp:paragraph -->\n<p>This is the second test post paragraph</p>\n<!-- /wp:paragraph -->','Second Test Post','','inherit','closed','closed','','7-revision-v1','','','2020-02-22 11:50:54','2020-02-22 11:50:54','',7,'http://amazing-colleage.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-02-22 12:45:24','2020-02-22 12:45:24','<!-- wp:paragraph -->\n<p>This is Test Page Here.</p>\n<!-- /wp:paragraph -->','Test Page','','publish','closed','closed','','test-page','','','2020-02-22 12:45:24','2020-02-22 12:45:24','',0,'http://amazing-colleage.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-02-22 12:45:24','2020-02-22 12:45:24','<!-- wp:paragraph -->\n<p>This is Test Page Here.</p>\n<!-- /wp:paragraph -->','Test Page','','inherit','closed','closed','','9-revision-v1','','','2020-02-22 12:45:24','2020-02-22 12:45:24','',9,'http://amazing-colleage.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-03-01 12:05:20','2020-03-01 12:05:20','<!-- wp:paragraph -->\n<p>This is about us page. </p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2020-03-01 12:05:20','2020-03-01 12:05:20','',0,'http://amazing-colleage.local/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-03-01 12:05:20','2020-03-01 12:05:20','<!-- wp:paragraph -->\n<p>This is about us page. </p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','12-revision-v1','','','2020-03-01 12:05:20','2020-03-01 12:05:20','',12,'http://amazing-colleage.local/12-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-03-01 13:58:30','2020-03-01 13:58:30','<!-- wp:paragraph -->\n<p>This is parent page of about-us page called our vision.</p>\n<!-- /wp:paragraph -->','Our Vision','','publish','closed','closed','','our-vision','','','2020-03-01 13:58:30','2020-03-01 13:58:30','',12,'http://amazing-colleage.local/?page_id=14',0,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-03-01 13:58:30','2020-03-01 13:58:30','<!-- wp:paragraph -->\n<p>This is parent page of about-us page called our vision.</p>\n<!-- /wp:paragraph -->','Our Vision','','inherit','closed','closed','','14-revision-v1','','','2020-03-01 13:58:30','2020-03-01 13:58:30','',14,'http://amazing-colleage.local/14-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-03-01 13:59:10','2020-03-01 13:59:10','<!-- wp:paragraph -->\n<p>This is a child of About us page called our goals.</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2020-03-01 13:59:10','2020-03-01 13:59:10','',12,'http://amazing-colleage.local/?page_id=17',0,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-03-01 13:59:10','2020-03-01 13:59:10','<!-- wp:paragraph -->\n<p>This is a child of About us page called our goals.</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','17-revision-v1','','','2020-03-01 13:59:10','2020-03-01 13:59:10','',17,'http://amazing-colleage.local/17-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-03-01 14:49:32','2020-03-01 14:49:32','<!-- wp:paragraph -->\n<p>This is Privacy Policy Page</p>\n<!-- /wp:paragraph -->','Privacy Policy','','trash','closed','closed','','privacy-policy-2__trashed','','','2020-03-01 14:50:35','2020-03-01 14:50:35','',0,'http://amazing-colleage.local/?page_id=19',0,'page','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-03-01 14:49:32','2020-03-01 14:49:32','<!-- wp:paragraph -->\n<p>This is Privacy Policy Page</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','19-revision-v1','','','2020-03-01 14:49:32','2020-03-01 14:49:32','',19,'http://amazing-colleage.local/19-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-03-01 14:50:13','2020-03-01 14:50:13','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://amazing-colleage.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-03-01 14:50:13','2020-03-01 14:50:13','',3,'http://amazing-colleage.local/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-03-01 14:51:07','2020-03-01 14:51:07','<!-- wp:paragraph -->\n<p>This Is Privacy Policy Page</p>\n<!-- /wp:paragraph -->','Privacy Policy','','publish','closed','closed','','privacy-policy','','','2020-03-01 14:51:07','2020-03-01 14:51:07','',0,'http://amazing-colleage.local/?page_id=22',0,'page','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-03-01 14:51:07','2020-03-01 14:51:07','<!-- wp:paragraph -->\n<p>This Is Privacy Policy Page</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','22-revision-v1','','','2020-03-01 14:51:07','2020-03-01 14:51:07','',22,'http://amazing-colleage.local/22-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-03-01 14:51:45','2020-03-01 14:51:45','<!-- wp:paragraph -->\n<p>This is child page of Privacy Policy page.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2020-03-01 14:51:45','2020-03-01 14:51:45','',22,'http://amazing-colleage.local/?page_id=24',0,'page','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2020-03-01 14:51:45','2020-03-01 14:51:45','<!-- wp:paragraph -->\n<p>This is child page of Privacy Policy page.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','24-revision-v1','','','2020-03-01 14:51:45','2020-03-01 14:51:45','',24,'http://amazing-colleage.local/24-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-03-02 16:04:23','2020-03-02 16:04:23','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://amazing-colleage.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-autosave-v1','','','2020-03-02 16:04:23','2020-03-02 16:04:23','',2,'http://amazing-colleage.local/2-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2020-03-08 15:19:01','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-03-08 15:19:01','0000-00-00 00:00:00','',0,'http://amazing-colleage.local/?p=27',0,'post','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-03-08 16:28:19','2020-03-08 16:28:19','','Home','','publish','closed','closed','','home','','','2020-03-08 16:28:19','2020-03-08 16:28:19','',0,'http://amazing-colleage.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-03-08 16:28:19','2020-03-08 16:28:19',' ','','','publish','closed','closed','','29','','','2020-03-08 16:28:19','2020-03-08 16:28:19','',0,'http://amazing-colleage.local/?p=29',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-03-08 16:28:19','2020-03-08 16:28:19',' ','','','publish','closed','closed','','30','','','2020-03-08 16:28:19','2020-03-08 16:28:19','',12,'http://amazing-colleage.local/?p=30',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-03-08 16:28:19','2020-03-08 16:28:19',' ','','','publish','closed','closed','','31','','','2020-03-08 16:28:19','2020-03-08 16:28:19','',12,'http://amazing-colleage.local/?p=31',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-03-08 16:28:19','2020-03-08 16:28:19',' ','','','publish','closed','closed','','32','','','2020-03-08 16:28:19','2020-03-08 16:28:19','',0,'http://amazing-colleage.local/?p=32',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-03-08 16:28:19','2020-03-08 16:28:19',' ','','','publish','closed','closed','','33','','','2020-03-08 16:28:19','2020-03-08 16:28:19','',22,'http://amazing-colleage.local/?p=33',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-03-08 16:28:19','2020-03-08 16:28:19',' ','','','publish','closed','closed','','34','','','2020-03-08 16:28:19','2020-03-08 16:28:19','',0,'http://amazing-colleage.local/?p=34',7,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-03-08 16:28:19','2020-03-08 16:28:19',' ','','','publish','closed','closed','','35','','','2020-03-08 16:28:19','2020-03-08 16:28:19','',0,'http://amazing-colleage.local/?p=35',8,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2020-03-08 16:31:14','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-03-08 16:31:14','0000-00-00 00:00:00','',0,'http://amazing-colleage.local/?p=36',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2020-03-08 16:31:14','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-03-08 16:31:14','0000-00-00 00:00:00','',22,'http://amazing-colleage.local/?p=37',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-03-08 16:31:14','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-03-08 16:31:14','0000-00-00 00:00:00','',0,'http://amazing-colleage.local/?p=38',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2020-03-08 16:31:14','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-03-08 16:31:14','0000-00-00 00:00:00','',12,'http://amazing-colleage.local/?p=39',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2020-03-08 16:31:14','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-03-08 16:31:14','0000-00-00 00:00:00','',12,'http://amazing-colleage.local/?p=40',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2020-03-08 16:33:32','2020-03-08 16:33:32',' ','','','publish','closed','closed','','41','','','2020-03-08 16:33:43','2020-03-08 16:33:43','',0,'http://amazing-colleage.local/?p=41',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-03-08 16:33:32','2020-03-08 16:33:32',' ','','','publish','closed','closed','','42','','','2020-03-08 16:33:42','2020-03-08 16:33:42','',0,'http://amazing-colleage.local/?p=42',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2020-03-08 16:55:20','2020-03-08 16:55:20','','Google','','publish','closed','closed','','google','','','2020-03-08 16:56:51','2020-03-08 16:56:51','',0,'http://amazing-colleage.local/?p=46',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-03-08 16:56:51','2020-03-08 16:56:51',' ','','','publish','closed','closed','','47','','','2020-03-08 16:56:51','2020-03-08 16:56:51','',12,'http://amazing-colleage.local/?p=47',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2020-03-08 16:56:51','2020-03-08 16:56:51',' ','','','publish','closed','closed','','48','','','2020-03-08 16:56:51','2020-03-08 16:56:51','',12,'http://amazing-colleage.local/?p=48',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2020-03-08 16:56:51','2020-03-08 16:56:51',' ','','','publish','closed','closed','','49','','','2020-03-08 16:56:51','2020-03-08 16:56:51','',22,'http://amazing-colleage.local/?p=49',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2020-03-08 16:57:10','2020-03-08 16:57:10',' ','','','publish','closed','closed','','50','','','2020-03-08 16:57:10','2020-03-08 16:57:10','',0,'http://amazing-colleage.local/?p=50',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2020-03-08 16:57:10','2020-03-08 16:57:10',' ','','','publish','closed','closed','','51','','','2020-03-08 16:57:10','2020-03-08 16:57:10','',0,'http://amazing-colleage.local/?p=51',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2020-03-08 21:00:32','2020-03-08 21:00:32','','Home','','publish','closed','closed','','home','','','2020-03-08 21:00:32','2020-03-08 21:00:32','',0,'http://amazing-colleage.local/?page_id=52',0,'page','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2020-03-08 21:00:32','2020-03-08 21:00:32','','Home','','inherit','closed','closed','','52-revision-v1','','','2020-03-08 21:00:32','2020-03-08 21:00:32','',52,'http://amazing-colleage.local/52-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-03-08 21:00:41','2020-03-08 21:00:41','','Blog','','publish','closed','closed','','blog','','','2020-03-08 21:00:41','2020-03-08 21:00:41','',0,'http://amazing-colleage.local/?page_id=54',0,'page','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2020-03-08 21:00:41','2020-03-08 21:00:41','','Blog','','inherit','closed','closed','','54-revision-v1','','','2020-03-08 21:00:41','2020-03-08 21:00:41','',54,'http://amazing-colleage.local/54-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2020-03-09 00:14:06','2020-03-09 00:14:06','<!-- wp:paragraph -->\n<p>This is awards</p>\n<!-- /wp:paragraph -->','Awards','','publish','open','open','','awards','','','2020-03-09 00:14:06','2020-03-09 00:14:06','',0,'http://amazing-colleage.local/?p=56',0,'post','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2020-03-09 00:14:06','2020-03-09 00:14:06','<!-- wp:paragraph -->\n<p>This is awards</p>\n<!-- /wp:paragraph -->','Awards','','inherit','closed','closed','','56-revision-v1','','','2020-03-09 00:14:06','2020-03-09 00:14:06','',56,'http://amazing-colleage.local/56-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2020-03-12 20:53:07','2020-03-12 20:53:07','<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','Math Mettup','','publish','closed','closed','','math-mettup','','','2020-03-12 20:53:07','2020-03-12 20:53:07','',0,'http://amazing-colleage.local/?post_type=events&#038;p=58',0,'events','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2020-03-12 20:53:32','2020-03-12 20:53:32','<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','Physics for you','','publish','closed','closed','','physics-for-you','','','2020-03-12 20:53:32','2020-03-12 20:53:32','',0,'http://amazing-colleage.local/?post_type=events&#038;p=59',0,'events','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2020-03-12 20:53:48','2020-03-12 20:53:48','<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','Poetry','','publish','closed','closed','','poetry','','','2020-03-12 20:53:48','2020-03-12 20:53:48','',0,'http://amazing-colleage.local/?post_type=events&#038;p=60',0,'events','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2020-03-12 20:55:07','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-03-12 20:55:07','0000-00-00 00:00:00','',0,'http://amazing-colleage.local/?post_type=events&p=61',0,'events','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2020-03-12 20:55:35','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-03-12 20:55:35','0000-00-00 00:00:00','',0,'http://amazing-colleage.local/?post_type=events&p=62',0,'events','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (5,1,0);
INSERT INTO `wp_term_relationships` VALUES (7,1,0);
INSERT INTO `wp_term_relationships` VALUES (28,2,0);
INSERT INTO `wp_term_relationships` VALUES (29,2,0);
INSERT INTO `wp_term_relationships` VALUES (30,2,0);
INSERT INTO `wp_term_relationships` VALUES (31,2,0);
INSERT INTO `wp_term_relationships` VALUES (32,2,0);
INSERT INTO `wp_term_relationships` VALUES (33,2,0);
INSERT INTO `wp_term_relationships` VALUES (34,2,0);
INSERT INTO `wp_term_relationships` VALUES (35,2,0);
INSERT INTO `wp_term_relationships` VALUES (41,3,0);
INSERT INTO `wp_term_relationships` VALUES (42,3,0);
INSERT INTO `wp_term_relationships` VALUES (46,5,0);
INSERT INTO `wp_term_relationships` VALUES (47,5,0);
INSERT INTO `wp_term_relationships` VALUES (48,5,0);
INSERT INTO `wp_term_relationships` VALUES (49,5,0);
INSERT INTO `wp_term_relationships` VALUES (50,4,0);
INSERT INTO `wp_term_relationships` VALUES (51,4,0);
INSERT INTO `wp_term_relationships` VALUES (56,6,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,8);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'nav_menu','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'category','This is description of category.',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Menu 1','menu-1',0);
INSERT INTO `wp_terms` VALUES (3,'My Header Menu','my-header-menu',0);
INSERT INTO `wp_terms` VALUES (4,'Explore Nav','explore-nav',0);
INSERT INTO `wp_terms` VALUES (5,'Legal Menu','legal-menu',0);
INSERT INTO `wp_terms` VALUES (6,'Awards','awards',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Khaled');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','This is my biographical info as a user.');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"7a30b271a5f223e412bd77d5dba5d7b9decde80365594f28dd7571b7c3aa3897\";a:4:{s:10:\"expiration\";i:1584890338;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36\";s:5:\"login\";i:1583680738;}s:64:\"efb0743efebdf7a5c29491b96846aed519047cc3ed916a92daf19d259bd1eaa6\";a:4:{s:10:\"expiration\";i:1585254965;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36\";s:5:\"login\";i:1584045365;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','27');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'closedpostboxes_dashboard','a:1:{i:0;s:17:\"dashboard_primary\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'metaboxhidden_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (22,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings','mfold=o');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_user-settings-time','1584046101');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'khaled','$P$BKtUmwqfvkWLaFiuhj8Y1GO3RUvdaq0','khaled','5aled.gamal231@gmail.com','','2020-02-20 10:50:23','',0,'Khaled');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-14  4:34:14
