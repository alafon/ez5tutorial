-- MySQL dump 10.13  Distrib 5.1.44, for apple-darwin8.11.1 (i386)
--
-- Host: localhost    Database: ez5tutorial
-- ------------------------------------------------------
-- Server version	5.1.44

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
-- Table structure for table `ezapprove_items`
--

DROP TABLE IF EXISTS `ezapprove_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezapprove_items` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_process_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezapprove_items`
--

LOCK TABLES `ezapprove_items` WRITE;
/*!40000 ALTER TABLE `ezapprove_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezapprove_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezbasket`
--

DROP TABLE IF EXISTS `ezbasket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezbasket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `session_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezbasket_session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezbasket`
--

LOCK TABLES `ezbasket` WRITE;
/*!40000 ALTER TABLE `ezbasket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezbasket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezbinaryfile`
--

DROP TABLE IF EXISTS `ezbinaryfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezbinaryfile` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `download_count` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `original_filename` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contentobject_attribute_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezbinaryfile`
--

LOCK TABLES `ezbinaryfile` WRITE;
/*!40000 ALTER TABLE `ezbinaryfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezbinaryfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state`
--

DROP TABLE IF EXISTS `ezcobj_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state` (
  `default_language_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(45) NOT NULL DEFAULT '',
  `language_mask` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcobj_state_identifier` (`group_id`,`identifier`),
  KEY `ezcobj_state_lmask` (`language_mask`),
  KEY `ezcobj_state_priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state`
--

LOCK TABLES `ezcobj_state` WRITE;
/*!40000 ALTER TABLE `ezcobj_state` DISABLE KEYS */;
INSERT INTO `ezcobj_state` VALUES (2,2,1,'not_locked',3,0),(2,2,2,'locked',3,1);
/*!40000 ALTER TABLE `ezcobj_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_group`
--

DROP TABLE IF EXISTS `ezcobj_state_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_group` (
  `default_language_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(45) NOT NULL DEFAULT '',
  `language_mask` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcobj_state_group_identifier` (`identifier`),
  KEY `ezcobj_state_group_lmask` (`language_mask`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_group`
--

LOCK TABLES `ezcobj_state_group` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group` VALUES (2,2,'ez_lock',3);
/*!40000 ALTER TABLE `ezcobj_state_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_group_language`
--

DROP TABLE IF EXISTS `ezcobj_state_group_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_group_language` (
  `contentobject_state_group_id` int(11) NOT NULL DEFAULT '0',
  `description` longtext NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT '',
  `real_language_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contentobject_state_group_id`,`real_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_group_language`
--

LOCK TABLES `ezcobj_state_group_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group_language` VALUES (2,'',3,'Lock',0);
/*!40000 ALTER TABLE `ezcobj_state_group_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_language`
--

DROP TABLE IF EXISTS `ezcobj_state_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_language` (
  `contentobject_state_id` int(11) NOT NULL DEFAULT '0',
  `description` longtext NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_state_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_language`
--

LOCK TABLES `ezcobj_state_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_language` VALUES (1,'',3,'Not locked'),(2,'',3,'Locked');
/*!40000 ALTER TABLE `ezcobj_state_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_link`
--

DROP TABLE IF EXISTS `ezcobj_state_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_link` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_state_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contentobject_id`,`contentobject_state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_link`
--

LOCK TABLES `ezcobj_state_link` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_link` DISABLE KEYS */;
INSERT INTO `ezcobj_state_link` VALUES (4,1),(10,1),(11,1),(12,1),(13,1),(14,1),(41,1),(42,1),(45,1),(49,1),(50,1),(51,1),(52,1),(54,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1);
/*!40000 ALTER TABLE `ezcobj_state_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_group`
--

DROP TABLE IF EXISTS `ezcollab_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_group` (
  `created` int(11) NOT NULL DEFAULT '0',
  `depth` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_open` int(11) NOT NULL DEFAULT '1',
  `modified` int(11) NOT NULL DEFAULT '0',
  `parent_group_id` int(11) NOT NULL DEFAULT '0',
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcollab_group_depth` (`depth`),
  KEY `ezcollab_group_path` (`path_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_group`
--

LOCK TABLES `ezcollab_group` WRITE;
/*!40000 ALTER TABLE `ezcollab_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item`
--

DROP TABLE IF EXISTS `ezcollab_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` float NOT NULL DEFAULT '0',
  `data_float2` float NOT NULL DEFAULT '0',
  `data_float3` float NOT NULL DEFAULT '0',
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `type_identifier` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item`
--

LOCK TABLES `ezcollab_item` WRITE;
/*!40000 ALTER TABLE `ezcollab_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_group_link`
--

DROP TABLE IF EXISTS `ezcollab_item_group_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_group_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`collaboration_id`,`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_group_link`
--

LOCK TABLES `ezcollab_item_group_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_group_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_group_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_message_link`
--

DROP TABLE IF EXISTS `ezcollab_item_message_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_message_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL DEFAULT '0',
  `message_type` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `participant_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_message_link`
--

LOCK TABLES `ezcollab_item_message_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_message_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_message_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_participant_link`
--

DROP TABLE IF EXISTS `ezcollab_item_participant_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_participant_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `participant_id` int(11) NOT NULL DEFAULT '0',
  `participant_role` int(11) NOT NULL DEFAULT '1',
  `participant_type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`collaboration_id`,`participant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_participant_link`
--

LOCK TABLES `ezcollab_item_participant_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_participant_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_participant_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_status`
--

DROP TABLE IF EXISTS `ezcollab_item_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_status` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`collaboration_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_status`
--

LOCK TABLES `ezcollab_item_status` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_notification_rule`
--

DROP TABLE IF EXISTS `ezcollab_notification_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_notification_rule` (
  `collab_identifier` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_notification_rule`
--

LOCK TABLES `ezcollab_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezcollab_notification_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_notification_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_profile`
--

DROP TABLE IF EXISTS `ezcollab_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_profile` (
  `created` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_group` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_profile`
--

LOCK TABLES `ezcollab_profile` WRITE;
/*!40000 ALTER TABLE `ezcollab_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_simple_message`
--

DROP TABLE IF EXISTS `ezcollab_simple_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_simple_message` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` float NOT NULL DEFAULT '0',
  `data_float2` float NOT NULL DEFAULT '0',
  `data_float3` float NOT NULL DEFAULT '0',
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_type` varchar(40) NOT NULL DEFAULT '',
  `modified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_simple_message`
--

LOCK TABLES `ezcollab_simple_message` WRITE;
/*!40000 ALTER TABLE `ezcollab_simple_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_simple_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment`
--

DROP TABLE IF EXISTS `ezcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_key` varchar(32) DEFAULT NULL,
  `ip` varchar(100) NOT NULL,
  `contentobject_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `text` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_session_key_ip` (`user_id`,`session_key`,`ip`),
  KEY `content_parentcomment` (`contentobject_id`,`language_id`,`parent_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment`
--

LOCK TABLES `ezcomment` WRITE;
/*!40000 ALTER TABLE `ezcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment_notification`
--

DROP TABLE IF EXISTS `ezcomment_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentobject_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `send_time` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment_notification`
--

LOCK TABLES `ezcomment_notification` WRITE;
/*!40000 ALTER TABLE `ezcomment_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment_subscriber`
--

DROP TABLE IF EXISTS `ezcomment_subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment_subscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT '1',
  `hash_string` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment_subscriber`
--

LOCK TABLES `ezcomment_subscriber` WRITE;
/*!40000 ALTER TABLE `ezcomment_subscriber` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment_subscription`
--

DROP TABLE IF EXISTS `ezcomment_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment_subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `subscriber_id` int(11) NOT NULL,
  `subscription_type` varchar(30) NOT NULL,
  `content_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `subscription_time` int(11) NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT '1',
  `hash_string` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment_subscription`
--

LOCK TABLES `ezcomment_subscription` WRITE;
/*!40000 ALTER TABLE `ezcomment_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontent_language`
--

DROP TABLE IF EXISTS `ezcontent_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontent_language` (
  `disabled` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezcontent_language_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontent_language`
--

LOCK TABLES `ezcontent_language` WRITE;
/*!40000 ALTER TABLE `ezcontent_language` DISABLE KEYS */;
INSERT INTO `ezcontent_language` VALUES (0,2,'eng-US','English (American)');
/*!40000 ALTER TABLE `ezcontent_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentbrowsebookmark`
--

DROP TABLE IF EXISTS `ezcontentbrowsebookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentbrowsebookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcontentbrowsebookmark_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentbrowsebookmark`
--

LOCK TABLES `ezcontentbrowsebookmark` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentbrowserecent`
--

DROP TABLE IF EXISTS `ezcontentbrowserecent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentbrowserecent` (
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcontentbrowserecent_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentbrowserecent`
--

LOCK TABLES `ezcontentbrowserecent` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowserecent` DISABLE KEYS */;
INSERT INTO `ezcontentbrowserecent` VALUES (1361651355,1,'eZ Publish',2,14),(1361639844,2,'Users',5,14),(1361651334,3,'Code',63,14);
/*!40000 ALTER TABLE `ezcontentbrowserecent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass`
--

DROP TABLE IF EXISTS `ezcontentclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass` (
  `always_available` int(11) NOT NULL DEFAULT '0',
  `contentobject_name` varchar(255) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `initial_language_id` int(11) NOT NULL DEFAULT '0',
  `is_container` int(11) NOT NULL DEFAULT '0',
  `language_mask` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `serialized_description_list` longtext,
  `serialized_name_list` longtext,
  `sort_field` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '1',
  `url_alias_name` varchar(255) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentclass_version` (`version`),
  KEY `ezcontentclass_identifier` (`identifier`,`version`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass`
--

LOCK TABLES `ezcontentclass` WRITE;
/*!40000 ALTER TABLE `ezcontentclass` DISABLE KEYS */;
INSERT INTO `ezcontentclass` VALUES (1,'<short_name|name>',1024392098,14,1,'folder',2,1,3,1082454875,14,'a3d405b81be900468eb153d774f4f0d2','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:6:\"Folder\";}',1,1,'',0),(1,'<name>',1024392098,14,3,'user_group',2,1,3,1048494743,14,'25b4268cdcd01921b808a0d854b877ef','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:10:\"User group\";}',1,1,'',0),(1,'<first_name> <last_name>',1024392098,14,4,'user',2,0,3,1082018364,14,'40faa822edc579b02c25f6bb7beec3ad','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"User\";}',1,1,'',0),(1,'<name>',1081858024,14,14,'common_ini_settings',2,0,3,1081858024,14,'ffedf2e73b1ea0c3e630e42e2db9c900','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:19:\"Common ini settings\";}',1,1,'',0),(1,'<title>',1081858045,14,15,'template_look',2,0,3,1081858045,14,'59b43cd9feaaf0e45ac974fb4bbd3f92','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:13:\"Template look\";}',1,1,'',0),(0,'<short_title|title>',1361639841,14,16,'article',2,1,3,1361641583,14,'c15b600eb9198b1924063b5a68758232','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:7:\"Article\";}',1,1,'',0),(0,'<name>',1361639841,14,17,'blog',2,1,3,1361641621,14,'3a6f9c1f075b3bf49d7345576b196fe8','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Blog\";}',1,1,'',0),(0,'<title>',1361639841,14,18,'blog_post',2,1,3,1361649734,14,'7ecb961056b7cbb30f22a91357e0a007','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:9:\"Blog post\";}',1,1,'',0),(0,'<name>',1361639841,14,23,'landing_page',2,1,3,1361641734,14,'e36c458e3e4a81298a0945f53a2c81f4','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:12:\"Landing Page\";}',1,1,'',0),(0,'<name>',1361639841,14,26,'file',2,0,3,1361642207,14,'637d58bfddf164627bdfd265733280a0','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"File\";}',1,1,'',0),(0,'<name>',1361639841,14,27,'image',2,0,3,1361642171,14,'f6df12aa74e36230eb675f364fccd25a','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:5:\"Image\";}',1,1,'',0),(0,'<name>',1361639841,14,28,'link',2,0,3,1361641797,14,'74ec6507063150bc813549b22534ad48','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Link\";}',1,1,'',0),(0,'<name>',1361639841,14,29,'gallery',2,1,3,1361641700,14,'6a320cdc3e274841b82fcd63a86f80d1','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:7:\"Gallery\";}',1,1,'',0),(0,'<name>',1361639841,14,37,'video',2,0,3,1361642118,14,'b38417e8194fb8f893ca918d297b4fa8','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:5:\"Video\";}',1,1,'',0);
/*!40000 ALTER TABLE `ezcontentclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_attribute`
--

DROP TABLE IF EXISTS `ezcontentclass_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_attribute` (
  `can_translate` int(11) DEFAULT '1',
  `category` varchar(25) NOT NULL DEFAULT '',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` double DEFAULT NULL,
  `data_float2` double DEFAULT NULL,
  `data_float3` double DEFAULT NULL,
  `data_float4` double DEFAULT NULL,
  `data_int1` int(11) DEFAULT NULL,
  `data_int2` int(11) DEFAULT NULL,
  `data_int3` int(11) DEFAULT NULL,
  `data_int4` int(11) DEFAULT NULL,
  `data_text1` varchar(50) DEFAULT NULL,
  `data_text2` varchar(50) DEFAULT NULL,
  `data_text3` varchar(50) DEFAULT NULL,
  `data_text4` varchar(255) DEFAULT NULL,
  `data_text5` longtext,
  `data_type_string` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `is_information_collector` int(11) NOT NULL DEFAULT '0',
  `is_required` int(11) NOT NULL DEFAULT '0',
  `is_searchable` int(11) NOT NULL DEFAULT '0',
  `placement` int(11) NOT NULL DEFAULT '0',
  `serialized_data_text` longtext,
  `serialized_description_list` longtext,
  `serialized_name_list` longtext NOT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentclass_attr_ccid` (`contentclass_id`)
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_attribute`
--

LOCK TABLES `ezcontentclass_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',1,0,0,0,0,255,0,0,0,'Folder','','','','','ezstring',4,'name',0,1,1,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(1,'',3,0,0,0,0,255,0,0,0,'','','','','','ezstring',6,'name',0,1,1,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(1,'',3,0,0,0,0,255,0,0,0,'','','','','','ezstring',7,'description',0,0,1,2,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Description\";}',0),(1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring',8,'first_name',0,1,1,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:10:\"First name\";}',0),(1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring',9,'last_name',0,1,1,2,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:9:\"Last name\";}',0),(0,'',4,0,0,0,0,0,0,0,0,'','','','','','ezuser',12,'user_account',0,1,1,3,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:12:\"User account\";}',0),(1,'',1,0,0,0,0,5,0,0,0,'','','','','','ezxmltext',119,'short_description',0,0,1,3,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:7:\"Summary\";}',0),(1,'',1,0,0,0,0,100,0,0,0,'','','','','','ezstring',155,'short_name',0,0,1,2,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:10:\"Short name\";}',0),(1,'',1,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',156,'description',0,0,1,4,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Description\";}',0),(0,'',1,0,0,0,0,0,0,1,0,'','','','','','ezboolean',158,'show_children',0,0,0,5,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:17:\"Display sub items\";}',0),(1,'',14,0,0,0,0,0,0,0,0,'','','','','','ezstring',159,'name',0,0,1,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(0,'',14,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','IndexPage','','override;user;admin;demo','ezinisetting',160,'indexpage',0,0,0,2,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:10:\"Index Page\";}',0),(0,'',14,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','DefaultPage','','override;user;admin;demo','ezinisetting',161,'defaultpage',0,0,0,3,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:12:\"Default Page\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugOutput','','override;user;admin;demo','ezinisetting',162,'debugoutput',0,0,0,4,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:12:\"Debug Output\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugByIP','','override;user;admin;demo','ezinisetting',163,'debugbyip',0,0,0,5,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Debug By IP\";}',0),(0,'',14,0,0,0,0,6,0,0,0,'site.ini','DebugSettings','DebugIPList','','override;user;admin;demo','ezinisetting',164,'debugiplist',0,0,0,6,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:13:\"Debug IP List\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugRedirection','','override;user;admin;demo','ezinisetting',165,'debugredirection',0,0,0,7,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:17:\"Debug Redirection\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','ContentSettings','ViewCaching','','override;user;admin;demo','ezinisetting',166,'viewcaching',0,0,0,8,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:12:\"View Caching\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','TemplateSettings','TemplateCache','','override;user;admin;demo','ezinisetting',167,'templatecache',0,0,0,9,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:14:\"Template Cache\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','TemplateSettings','TemplateCompile','','override;user;admin;demo','ezinisetting',168,'templatecompile',0,0,0,10,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:16:\"Template Compile\";}',0),(0,'',14,0,0,0,0,6,0,0,0,'image.ini','small','Filters','','override;user;admin;demo','ezinisetting',169,'imagesmall',0,0,0,11,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:16:\"Image Small Size\";}',0),(0,'',14,0,0,0,0,6,0,0,0,'image.ini','medium','Filters','','override;user;admin;demo','ezinisetting',170,'imagemedium',0,0,0,12,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:17:\"Image Medium Size\";}',0),(0,'',14,0,0,0,0,6,0,0,0,'image.ini','large','Filters','','override;user;admin;demo','ezinisetting',171,'imagelarge',0,0,0,13,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:16:\"Image Large Size\";}',0),(0,'',15,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','SiteName','','override;user;admin;demo','ezinisetting',172,'title',0,0,0,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:5:\"Title\";}',0),(0,'',15,0,0,0,0,6,0,0,0,'site.ini','SiteSettings','MetaDataArray','','override;user;admin;demo','ezinisetting',173,'meta_data',0,0,0,2,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:9:\"Meta data\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezimage',174,'image',0,0,0,3,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:5:\"Image\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'sitestyle','','','','','ezpackage',175,'sitestyle',0,0,0,4,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:9:\"Sitestyle\";}',0),(0,'',15,0,0,0,0,1,0,0,0,'site.ini','MailSettings','AdminEmail','','override;user;admin;demo','ezinisetting',177,'email',0,0,0,6,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:5:\"Email\";}',0),(0,'',15,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','SiteURL','','override;user;admin;demo','ezinisetting',178,'siteurl',0,0,0,7,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:8:\"Site URL\";}',0),(1,'',4,0,0,0,0,10,0,0,0,'','','','','','eztext',179,'signature',0,0,1,4,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:9:\"Signature\";}',0),(1,'',4,0,0,0,0,1,0,0,0,'','','','','','ezimage',180,'image',0,0,0,5,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:5:\"Image\";}',0),(1,'',16,0,0,0,0,255,0,0,0,'New article','','','','','ezstring',181,'title',0,1,1,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:5:\"Title\";}',0),(1,'',16,0,0,0,0,255,0,0,0,'','','','','','ezstring',182,'short_title',0,0,1,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Short title\";}',0),(1,'',16,0,0,0,0,0,0,0,0,'','','','','','ezauthor',183,'author',0,0,0,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:6:\"Author\";}',0),(1,'',16,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',184,'intro',0,1,1,4,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:7:\"Summary\";}',0),(1,'',16,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',185,'body',0,0,1,5,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Body\";}',0),(1,'',16,0,0,0,0,0,0,0,0,'','','','','','ezimage',186,'image',0,0,0,6,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:5:\"Image\";}',0),(1,'',16,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',187,'caption',0,0,1,7,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:15:\"Caption (Image)\";}',0),(1,'',16,0,0,0,0,0,0,0,0,'','','','','','ezdatetime',188,'publish_date',0,0,1,8,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:12:\"Publish date\";}',0),(1,'',16,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',189,'star_rating',0,0,0,9,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Star Rating\";}',0),(1,'',16,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',190,'tags',0,0,1,10,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Tags\";}',0),(1,'',16,0,0,0,0,0,0,0,0,'','','','','','ezgmaplocation',191,'location',0,0,1,11,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:8:\"Location\";}',0),(1,'',16,0,0,0,0,0,0,0,0,'','','','','','ezcomcomments',192,'comments',0,0,1,12,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:8:\"Comments\";}',0),(1,'',17,0,0,0,0,0,0,0,0,'','','','','','ezstring',193,'name',0,0,1,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(1,'',17,0,0,0,0,5,0,0,0,'','','','','','ezxmltext',194,'description',0,0,1,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Description\";}',0),(1,'',17,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',195,'tags',0,0,1,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Tags\";}',0),(1,'',18,0,0,0,0,0,0,0,0,'','','','','','ezstring',196,'title',0,0,1,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:5:\"Title\";}',0),(1,'',18,0,0,0,0,25,0,0,0,'','','','','','ezxmltext',197,'body',0,0,1,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Body\";}',0),(1,'',18,0,0,0,0,1,0,0,0,'','','','','','ezdatetime',198,'publication_date',0,0,1,4,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:16:\"Publication date\";}',0),(1,'',18,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',199,'tags',0,0,1,5,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Tags\";}',0),(1,'',18,0,0,0,0,0,0,0,0,'','','','','','ezcomcomments',200,'comments',0,0,1,6,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:8:\"Comments\";}',0),(1,'',23,0,0,0,0,0,0,0,0,'','','','','','ezstring',227,'name',0,1,1,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(1,'',23,0,0,0,0,0,0,0,0,'','','','','','ezpage',228,'page',0,0,0,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:6:\"Layout\";}',0),(1,'',26,0,0,0,0,0,0,0,0,'New file','','','','','ezstring',238,'name',0,1,1,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(1,'',26,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',239,'description',0,0,1,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Description\";}',0),(1,'',26,0,0,0,0,0,0,0,0,'','','','','','ezbinaryfile',240,'file',0,1,0,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"File\";}',0),(1,'',26,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',241,'star_rating',0,0,1,4,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Star Rating\";}',0),(1,'',26,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',242,'tags',0,0,1,5,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Tags\";}',0),(1,'',26,0,0,0,0,0,0,0,0,'','','','','','ezcomcomments',243,'comments',0,0,1,6,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:8:\"Comments\";}',0),(1,'',27,0,0,0,0,150,0,0,0,'','','','','','ezstring',244,'name',0,1,1,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(1,'',27,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',245,'caption',0,0,1,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:7:\"Caption\";}',0),(1,'',27,0,0,0,0,2,0,0,0,'','','','','','ezimage',246,'image',0,0,0,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:5:\"Image\";}',0),(1,'',27,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',247,'star_rating',0,0,1,4,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Star Rating\";}',0),(1,'',27,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',248,'tags',0,0,1,5,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Tags\";}',0),(1,'',28,0,0,0,0,255,0,0,0,'','','','','','ezstring',249,'name',0,1,1,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(1,'',28,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',250,'description',0,0,1,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Description\";}',0),(1,'',28,0,0,0,0,0,0,0,0,'','','','','','ezurl',251,'location',0,0,0,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:8:\"Location\";}',0),(1,'',28,0,0,0,0,0,0,1,0,'','','','','','ezboolean',252,'open_in_new_window',0,0,1,4,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:18:\"Open in new window\";}',0),(1,'',29,0,0,0,0,0,0,0,0,'','','','','','ezstring',253,'name',0,1,1,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(1,'',29,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',254,'short_description',0,0,1,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:17:\"Short description\";}',0),(1,'',29,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',255,'description',0,0,1,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Description\";}',0),(1,'',29,0,0,0,0,0,0,0,0,'','','','','','ezobjectrelation',256,'image',0,0,1,4,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:5:\"Image\";}',0),(1,'',29,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',257,'tags',0,0,1,5,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Tags\";}',0),(1,'',37,0,0,0,0,0,0,0,0,'','','','','','ezstring',282,'name',0,0,1,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(1,'',37,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',283,'caption',0,0,1,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:7:\"Caption\";}',0),(1,'',37,0,0,0,0,0,0,0,0,'','','','','','ezbinaryfile',284,'file',0,0,1,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"File\";}',0),(1,'',37,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',285,'star_rating',0,0,1,4,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Star Rating\";}',0),(1,'',37,0,0,0,0,0,0,0,0,'','','','','','ezcomcomments',286,'comments',0,0,1,5,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:8:\"Comments\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezurl',287,'site_map_url',0,0,0,8,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:12:\"Site map URL\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezurl',288,'tag_cloud_url',0,0,0,9,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:13:\"Tag Cloud URL\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',289,'login_label',0,0,0,10,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:13:\"Login (label)\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',290,'logout_label',0,0,0,11,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:14:\"Logout (label)\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',291,'my_profile_label',0,0,0,12,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:18:\"My profile (label)\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',292,'register_user_label',0,0,0,13,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:25:\"Register new user (label)\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',293,'rss_feed',0,0,0,14,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:8:\"RSS feed\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',294,'shopping_basket_label',0,0,0,15,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:23:\"Shopping basket (label)\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',295,'site_settings_label',0,0,0,16,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:21:\"Site settings (label)\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',15,0,0,0,0,10,0,0,0,'','','','','','eztext',296,'footer_text',0,0,0,17,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:11:\"Footer text\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezboolean',297,'hide_powered_by',0,0,0,18,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:17:\"Hide \"Powered by\"\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',15,0,0,0,0,10,0,0,0,'','','','','','eztext',298,'footer_script',0,0,0,19,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:17:\"Footer Javascript\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',1,0,0,0,0,0,0,0,0,'','','','','','ezpage',299,'call_for_action',0,0,0,6,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:15:\"Call For Action\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',1,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',300,'tags',0,0,0,7,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',18,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',301,'summary',0,0,1,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:7:\"Summary\";s:16:\"always-available\";s:6:\"eng-US\";}',0);
/*!40000 ALTER TABLE `ezcontentclass_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_classgroup`
--

DROP TABLE IF EXISTS `ezcontentclass_classgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_classgroup` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_version` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`contentclass_id`,`contentclass_version`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_classgroup`
--

LOCK TABLES `ezcontentclass_classgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_classgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclass_classgroup` VALUES (1,0,1,'Content'),(3,0,2,'Users'),(4,0,2,'Users'),(14,0,4,'Setup'),(15,0,4,'Setup'),(16,0,1,'Content'),(17,0,1,'Content'),(18,0,1,'Content'),(23,0,1,'Content'),(26,0,3,'Media'),(27,0,3,'Media'),(28,0,1,'Content'),(29,0,1,'Content'),(37,0,3,'Media');
/*!40000 ALTER TABLE `ezcontentclass_classgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_name`
--

DROP TABLE IF EXISTS `ezcontentclass_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_name` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_version` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `language_locale` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentclass_id`,`contentclass_version`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_name`
--

LOCK TABLES `ezcontentclass_name` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_name` DISABLE KEYS */;
INSERT INTO `ezcontentclass_name` VALUES (1,0,3,'eng-US','Folder'),(3,0,3,'eng-US','User group'),(4,0,3,'eng-US','User'),(14,0,3,'eng-US','Common ini settings'),(15,0,3,'eng-US','Template look'),(16,0,3,'eng-US','Article'),(17,0,3,'eng-US','Blog'),(18,0,3,'eng-US','Blog post'),(23,0,3,'eng-US','Landing Page'),(26,0,3,'eng-US','File'),(27,0,3,'eng-US','Image'),(28,0,3,'eng-US','Link'),(29,0,3,'eng-US','Gallery'),(37,0,3,'eng-US','Video');
/*!40000 ALTER TABLE `ezcontentclass_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclassgroup`
--

DROP TABLE IF EXISTS `ezcontentclassgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclassgroup` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclassgroup`
--

LOCK TABLES `ezcontentclassgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclassgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclassgroup` VALUES (1031216928,14,1,1033922106,14,'Content'),(1031216941,14,2,1033922113,14,'Users'),(1032009743,14,3,1033922120,14,'Media'),(1081858024,14,4,1081858024,14,'Setup');
/*!40000 ALTER TABLE `ezcontentclassgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject`
--

DROP TABLE IF EXISTS `ezcontentobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `current_version` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `initial_language_id` int(11) NOT NULL DEFAULT '0',
  `language_mask` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) DEFAULT NULL,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcontentobject_remote_id` (`remote_id`),
  KEY `ezcontentobject_classid` (`contentclass_id`),
  KEY `ezcontentobject_currentversion` (`current_version`),
  KEY `ezcontentobject_lmask` (`language_mask`),
  KEY `ezcontentobject_owner` (`owner_id`),
  KEY `ezcontentobject_pub` (`published`),
  KEY `ezcontentobject_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject`
--

LOCK TABLES `ezcontentobject` WRITE;
/*!40000 ALTER TABLE `ezcontentobject` DISABLE KEYS */;
INSERT INTO `ezcontentobject` VALUES (3,1,4,2,3,1033917596,'Users',14,1033917596,'f5c88a2209584891056f987fd965b0ba',2,1),(4,2,10,2,3,1072180405,'Anonymous User',14,1033920665,'faaeb9be3bd98ed09f606fc16d144eca',2,1),(3,2,11,2,3,1361639844,'Members',14,1033920746,'5f7f0bdb3381d6a461d8c29ff53d908f',2,1),(3,1,12,2,3,1033920775,'Administrator users',14,1033920775,'9b47a45624b023b1a76c73b74d704acf',2,1),(3,1,13,2,3,1033920794,'Editors',14,1033920794,'3c160cca19fb135f83bd02d911f04db2',2,1),(4,4,14,2,3,1361639843,'Administrator User',14,1033920830,'1bb4fe25487f05527efa8bfd394cecc7',2,1),(1,1,41,2,3,1060695457,'Media',14,1060695457,'a6e35cbcb7cd6ae4b691f3eee30cd262',3,1),(3,1,42,2,3,1072180330,'Anonymous Users',14,1072180330,'15b256dbea2ae72418ff5facc999e8f9',2,1),(1,1,45,2,3,1079684190,'Setup',14,1079684190,'241d538ce310074e602f29f49e44e938',4,1),(1,1,49,2,3,1080220197,'Images',14,1080220197,'e7ff633c6b8e0fd3531e74c6e712bead',3,1),(1,1,50,2,3,1080220220,'Files',14,1080220220,'732a5acd01b51a6fe6eab448ad4138a9',3,1),(1,1,51,2,3,1080220233,'Multimedia',14,1080220233,'09082deb98662a104f325aaa8c4933d3',3,1),(14,1,52,2,2,1082016591,'Common INI settings',14,1082016591,'27437f3547db19cf81a33c92578b2c89',4,1),(15,2,54,2,2,1301062376,'eZ Publish 5 Tutorial',14,1082016652,'8b8b22fe3c6061ed500fbd2b377b885f',5,1),(1,1,56,2,3,1103023132,'Design',14,1103023132,'08799e609893f7aba22f10cb466d9cc8',5,1),(23,1,57,2,3,1196268696,'Home',14,1195480486,'8a9c9c761004866fb458d89910f52bee',1,1),(16,1,58,2,2,1352741504,'footer',14,1352735678,'115536b84726ddb2184014682753b794',1,1),(3,1,59,2,3,1361639844,'Partners',14,1361639844,'33ab7b24acb90149b0ea236103e6fe00',2,1),(17,1,60,2,2,1361649775,'About',14,1361649775,'643a09ce1052b241b37b1ee44fc37818',1,1),(17,1,61,2,2,1361651177,'Code',14,1361651177,'06e85eab38f1724cced4bfa69761cefb',1,1),(18,1,62,2,2,1361651284,'Working with eZ Publish 5 - Introduction',14,1361651284,'bcf695f3672d5c87133fdc15d697b00f',1,1),(18,1,63,2,2,1361651334,'Working With eZ Publish 5 - Symfony',14,1361651334,'c7453b57477fad35e8215e6917f6f262',1,1),(17,1,64,2,2,1361651355,'Home',14,1361651355,'185d53a9cbc3ffa615b0ccc513000faa',1,1);
/*!40000 ALTER TABLE `ezcontentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_attribute`
--

DROP TABLE IF EXISTS `ezcontentobject_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_attribute` (
  `attribute_original_id` int(11) DEFAULT '0',
  `contentclassattribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `data_float` double DEFAULT NULL,
  `data_int` int(11) DEFAULT NULL,
  `data_text` longtext,
  `data_type_string` varchar(50) DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_code` varchar(20) NOT NULL DEFAULT '',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `sort_key_int` int(11) NOT NULL DEFAULT '0',
  `sort_key_string` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentobject_attribute_co_id_ver_lang_code` (`contentobject_id`,`version`,`language_code`),
  KEY `ezcontentobject_attribute_language_code` (`language_code`),
  KEY `sort_key_int` (`sort_key_int`),
  KEY `sort_key_string` (`sort_key_string`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_attribute`
--

LOCK TABLES `ezcontentobject_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentobject_attribute` VALUES (0,7,4,NULL,NULL,'Main group','ezstring',7,'eng-US',3,0,'',1),(0,6,4,NULL,NULL,'Users','ezstring',8,'eng-US',3,0,'',1),(0,8,10,0,0,'Anonymous','ezstring',19,'eng-US',3,0,'anonymous',2),(0,9,10,0,0,'User','ezstring',20,'eng-US',3,0,'user',2),(0,12,10,0,0,'','ezuser',21,'eng-US',3,0,'',2),(0,6,11,0,0,'Guest accounts','ezstring',22,'eng-US',3,0,'',1),(0,6,11,0,0,'Members','ezstring',22,'eng-US',3,0,'members',2),(0,7,11,0,0,'','ezstring',23,'eng-US',3,0,'',1),(0,7,11,0,0,'','ezstring',23,'eng-US',3,0,'',2),(0,6,12,0,0,'Administrator users','ezstring',24,'eng-US',3,0,'',1),(0,7,12,0,0,'','ezstring',25,'eng-US',3,0,'',1),(0,6,13,0,0,'Editors','ezstring',26,'eng-US',3,0,'',1),(0,7,13,0,0,'','ezstring',27,'eng-US',3,0,'',1),(0,8,14,0,0,'Administrator','ezstring',28,'eng-US',3,0,'administrator',3),(0,8,14,0,0,'Administrator','ezstring',28,'eng-US',3,0,'administrator',4),(0,9,14,0,0,'User','ezstring',29,'eng-US',3,0,'user',3),(0,9,14,0,0,'User','ezstring',29,'eng-US',3,0,'user',4),(30,12,14,0,0,'','ezuser',30,'eng-US',3,0,'',3),(30,12,14,0,0,'','ezuser',30,'eng-US',3,0,'',4),(0,4,41,0,0,'Media','ezstring',98,'eng-US',3,0,'',1),(0,119,41,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',99,'eng-US',3,0,'',1),(0,6,42,0,0,'Anonymous Users','ezstring',100,'eng-US',3,0,'anonymous users',1),(0,7,42,0,0,'User group for the anonymous user','ezstring',101,'eng-US',3,0,'user group for the anonymous user',1),(0,155,41,0,0,'','ezstring',103,'eng-US',3,0,'',1),(0,156,41,0,1045487555,'','ezxmltext',105,'eng-US',3,0,'',1),(0,158,41,0,0,'','ezboolean',109,'eng-US',3,0,'',1),(0,4,45,0,0,'Setup','ezstring',123,'eng-US',3,0,'setup',1),(0,155,45,0,0,'','ezstring',124,'eng-US',3,0,'',1),(0,119,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',125,'eng-US',3,0,'',1),(0,156,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',126,'eng-US',3,0,'',1),(0,158,45,0,0,'','ezboolean',128,'eng-US',3,0,'',1),(0,4,49,0,0,'Images','ezstring',142,'eng-US',3,0,'images',1),(0,155,49,0,0,'','ezstring',143,'eng-US',3,0,'',1),(0,119,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',144,'eng-US',3,0,'',1),(0,156,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',145,'eng-US',3,0,'',1),(0,158,49,0,1,'','ezboolean',146,'eng-US',3,1,'',1),(0,4,50,0,0,'Files','ezstring',147,'eng-US',3,0,'files',1),(0,155,50,0,0,'','ezstring',148,'eng-US',3,0,'',1),(0,119,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',149,'eng-US',3,0,'',1),(0,156,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',150,'eng-US',3,0,'',1),(0,158,50,0,1,'','ezboolean',151,'eng-US',3,1,'',1),(0,4,51,0,0,'Multimedia','ezstring',152,'eng-US',3,0,'multimedia',1),(0,155,51,0,0,'','ezstring',153,'eng-US',3,0,'',1),(0,119,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',154,'eng-US',3,0,'',1),(0,156,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',155,'eng-US',3,0,'',1),(0,158,51,0,1,'','ezboolean',156,'eng-US',3,1,'',1),(0,159,52,0,0,'Common INI settings','ezstring',157,'eng-US',2,0,'common ini settings',1),(0,160,52,0,0,'/content/view/full/2/','ezinisetting',158,'eng-US',2,0,'',1),(0,161,52,0,0,'/content/view/full/2','ezinisetting',159,'eng-US',2,0,'',1),(0,162,52,0,0,'disabled','ezinisetting',160,'eng-US',2,0,'',1),(0,163,52,0,0,'disabled','ezinisetting',161,'eng-US',2,0,'',1),(0,164,52,0,0,'','ezinisetting',162,'eng-US',2,0,'',1),(0,165,52,0,0,'enabled','ezinisetting',163,'eng-US',2,0,'',1),(0,166,52,0,0,'disabled','ezinisetting',164,'eng-US',2,0,'',1),(0,167,52,0,0,'enabled','ezinisetting',165,'eng-US',2,0,'',1),(0,168,52,0,0,'enabled','ezinisetting',166,'eng-US',2,0,'',1),(0,169,52,0,0,'=geometry/scale=100;100','ezinisetting',167,'eng-US',2,0,'',1),(0,170,52,0,0,'=geometry/scale=200;200','ezinisetting',168,'eng-US',2,0,'',1),(0,171,52,0,0,'=geometry/scale=300;300','ezinisetting',169,'eng-US',2,0,'',1),(0,172,54,0,0,'eZ Publish 5 Tutorial','ezinisetting',170,'eng-US',2,0,'',2),(0,173,54,0,0,'author=eZ Systems\ncopyright=eZ Systems\ndescription=Content Management System\nkeywords=cms, publish, e-commerce, content management, development framework','ezinisetting',171,'eng-US',2,0,'',2),(0,174,54,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"eZ-Publish-5-Tutorial1.png\" suffix=\"png\" basename=\"eZ-Publish-5-Tutorial1\" dirpath=\"var/storage/images/design/plain-site/172-2-eng-US\" url=\"var/storage/images/design/plain-site/172-2-eng-US/eZ-Publish-5-Tutorial1.png\" original_filename=\"logo.png\" mime_type=\"image/png\" width=\"138\" height=\"46\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1361639843\"><original attribute_id=\"172\" attribute_version=\"2\" attribute_language=\"eng-US\"/><alias name=\"reference\" filename=\"eZ-Publish-5-Tutorial1_reference.png\" suffix=\"png\" dirpath=\"var/storage/images/design/plain-site/172-2-eng-US\" url=\"var/storage/images/design/plain-site/172-2-eng-US/eZ-Publish-5-Tutorial1_reference.png\" mime_type=\"image/png\" width=\"138\" height=\"46\" alias_key=\"2605465115\" timestamp=\"1361642451\" is_valid=\"1\"/><alias name=\"large\" filename=\"eZ-Publish-5-Tutorial1_large.png\" suffix=\"png\" dirpath=\"var/storage/images/design/plain-site/172-2-eng-US\" url=\"var/storage/images/design/plain-site/172-2-eng-US/eZ-Publish-5-Tutorial1_large.png\" mime_type=\"image/png\" width=\"138\" height=\"46\" alias_key=\"1592566908\" timestamp=\"1361642377\" is_valid=\"1\"/><alias name=\"small\" filename=\"eZ-Publish-5-Tutorial1_small.png\" suffix=\"png\" dirpath=\"var/storage/images/design/plain-site/172-2-eng-US\" url=\"var/storage/images/design/plain-site/172-2-eng-US/eZ-Publish-5-Tutorial1_small.png\" mime_type=\"image/png\" width=\"100\" height=\"33\" alias_key=\"2343348577\" timestamp=\"1361642451\" is_valid=\"1\"/></ezimage>\n','ezimage',172,'eng-US',2,0,'',2),(0,175,54,0,0,'0','ezpackage',173,'eng-US',2,0,'0',2),(0,177,54,0,0,'tutorial@example.com','ezinisetting',175,'eng-US',2,0,'',2),(0,178,54,0,0,'ez5tutorial.local','ezinisetting',176,'eng-US',2,0,'',2),(0,179,10,0,0,'','eztext',177,'eng-US',3,0,'',2),(0,179,14,0,0,'','eztext',178,'eng-US',3,0,'',3),(0,179,14,0,0,'','eztext',178,'eng-US',3,0,'',4),(0,180,10,0,0,'','ezimage',179,'eng-US',3,0,'',2),(0,180,14,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',180,'eng-US',3,0,'',3),(0,180,14,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',180,'eng-US',3,0,'',4),(0,4,56,0,NULL,'Design','ezstring',181,'eng-US',3,0,'design',1),(0,155,56,0,NULL,'','ezstring',182,'eng-US',3,0,'',1),(0,119,56,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',183,'eng-US',3,0,'',1),(0,156,56,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',184,'eng-US',3,0,'',1),(0,158,56,0,1,'','ezboolean',185,'eng-US',3,1,'',1),(0,227,57,0,NULL,'Home','ezstring',186,'eng-US',3,0,'home',1),(0,228,57,0,NULL,'<?xml version=\"1.0\"?>\n<page>\n  <zone_layout>2ZonesLayout1</zone_layout>\n  <zone id=\"id_865346aabbcc48a9839274cc554868be\">\n    <zone_identifier>left</zone_identifier>\n  </zone>\n  <zone id=\"id_f742abffba08fc849b6e80dec769a74c\">\n    <zone_identifier>right</zone_identifier>\n  </zone>\n</page>\n','ezpage',187,'eng-US',3,0,'',1),(0,181,58,0,NULL,'Footer','ezstring',188,'eng-US',2,0,'footer',1),(0,182,58,0,NULL,'footer','ezstring',189,'eng-US',2,0,'footer',1),(0,183,58,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',190,'eng-US',2,0,'',1),(0,184,58,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>eZ is a global company with offices around the world including Skien (Norway), New York (USA), Oslo (Norway), Cologne (Germany), Paris (France), Lyon (France), Beijing (China), Tokyo (Japan), Singapore, London (UK)</paragraph><paragraph><link url_id=\"23\">Contact us</link> for more information!</paragraph></section>','ezxmltext',191,'eng-US',2,0,'',1),(0,185,58,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ Official site: <link url_id=\"8\">http://ez.no</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ Community site: <link url_id=\"24\">http://share.ez.no</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Documentation: <link url_id=\"25\">http://doc.ez.no</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Follow us on <link url_id=\"26\">Twitter</link>, <link url_id=\"27\">Facebook</link> and <link url_id=\"28\">LinkedIn</link></paragraph></li></ul></paragraph><paragraph>Copyright ¬© 2012 eZ Systems AS (except where otherwise noted). All rights reserved.</paragraph></section>','ezxmltext',192,'eng-US',2,0,'',1),(0,186,58,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1361639842\"><original attribute_id=\"193\" attribute_version=\"1\" attribute_language=\"eng-US\"/></ezimage>\n','ezimage',193,'eng-US',2,0,'',1),(0,187,58,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',194,'eng-US',2,0,'',1),(0,188,58,0,1341417600,'','ezdatetime',195,'eng-US',2,1341417600,'',1),(0,189,58,0,0,'','ezsrrating',196,'eng-US',2,0,'',1),(0,190,58,0,NULL,'','ezkeyword',197,'eng-US',2,0,'',1),(0,191,58,0,0,'','ezgmaplocation',198,'eng-US',2,0,'',1),(0,192,58,1,1,'','ezcomcomments',199,'eng-US',2,0,'',1),(0,287,54,0,29,'Site map','ezurl',200,'eng-US',2,0,'',2),(0,288,54,0,30,'Tag cloud','ezurl',201,'eng-US',2,0,'',2),(0,289,54,0,NULL,'Login','ezstring',202,'eng-US',2,0,'login',2),(0,290,54,0,NULL,'Logout','ezstring',203,'eng-US',2,0,'logout',2),(0,291,54,0,NULL,'My profile','ezstring',204,'eng-US',2,0,'my profile',2),(0,292,54,0,NULL,'Register','ezstring',205,'eng-US',2,0,'register',2),(0,293,54,0,NULL,'/rss/feed/my_feed','ezstring',206,'eng-US',2,0,'/rss/feed/my_feed',2),(0,294,54,0,NULL,'Shopping basket','ezstring',207,'eng-US',2,0,'shopping basket',2),(0,295,54,0,NULL,'Site settings','ezstring',208,'eng-US',2,0,'site settings',2),(0,296,54,0,NULL,'Copyright &#169; 2013 <a href=\"http://ez.no\" title=\"eZ Systems\">eZ Systems AS</a> (except where otherwise noted). All rights reserved.','eztext',209,'eng-US',2,0,'',2),(0,297,54,0,0,'','ezboolean',210,'eng-US',2,0,'',2),(0,298,54,0,NULL,'','eztext',211,'eng-US',2,0,'',2),(0,6,59,0,NULL,'Partners','ezstring',212,'eng-US',3,0,'partners',1),(0,7,59,0,NULL,'','ezstring',213,'eng-US',3,0,'',1),(0,299,41,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',214,'eng-US',2,0,'',1),(0,299,45,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',215,'eng-US',2,0,'',1),(0,299,49,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',216,'eng-US',2,0,'',1),(0,299,50,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',217,'eng-US',2,0,'',1),(0,299,51,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',218,'eng-US',2,0,'',1),(0,299,56,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',219,'eng-US',2,0,'',1),(0,300,41,0,NULL,'','ezkeyword',220,'eng-US',2,0,'',1),(0,300,45,0,NULL,'','ezkeyword',221,'eng-US',2,0,'',1),(0,300,49,0,NULL,'','ezkeyword',222,'eng-US',2,0,'',1),(0,300,50,0,NULL,'','ezkeyword',223,'eng-US',2,0,'',1),(0,300,51,0,NULL,'','ezkeyword',224,'eng-US',2,0,'',1),(0,300,56,0,NULL,'','ezkeyword',225,'eng-US',2,0,'',1),(0,193,60,0,NULL,'About','ezstring',226,'eng-US',2,0,'about',1),(0,194,60,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is an about page.</paragraph></section>\n','ezxmltext',227,'eng-US',2,0,'',1),(0,195,60,0,NULL,'','ezkeyword',228,'eng-US',2,0,'',1),(0,193,61,0,NULL,'Code','ezstring',229,'eng-US',2,0,'code',1),(0,194,61,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',230,'eng-US',2,0,'',1),(0,195,61,0,NULL,'','ezkeyword',231,'eng-US',2,0,'',1),(0,196,62,0,NULL,'Working with eZ Publish 5 - Introduction','ezstring',232,'eng-US',2,0,'working with ez publish 5 - introduction',1),(0,301,62,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',233,'eng-US',2,0,'',1),(0,197,62,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>In early February, I had the opportunity to spend some learning some of the ins and outs of working with eZ Publish version 5 at a training event from eZ Systems. Having developed for years in eZ Publish, I knew 5 was going to be a big change, but didn\'t really consider¬†<emphasize>how much</emphasize>¬†change would be involved. After digging in, I found that there\'s a lot to like about the new system. The goal of this series of blog posts will be to help current eZ Publish developers get up to speed. We\'re mostly focusing on developers already familiar with eZ Publish 4, but as long as you have a basic familiarity with the CMS, you should be able to follow along.</paragraph><paragraph>The idea here is to provide a tutorial that will allow you to get up and running quickly with eZ Publish 5, even if you\'re a bit of a neophyte with Symfony (like me). We\'ll cover some basic concepts, and build out a basic site using only eZ Publish 5 concepts wherever possible. Each step of the tutorial has been stored as a branch in github to make it easy to follow along.</paragraph><paragraph>A lot of folks contributed in some way to the creation of this tutorial. Quick thanks to the staff at¬†<link target=\"_blank\" url_id=\"31\">Blend Interactive</link>¬†and¬†<link target=\"_blank\" url_id=\"8\">eZ Systems</link>¬†for their help clarifying and testing, and to¬†<link target=\"_blank\" url_id=\"32\">Damien Pobel</link>, who¬†<link target=\"_blank\" url_id=\"33\">open-sourced</link>¬†the¬†<link target=\"_blank\" url_id=\"34\">planet-ezpublish.fr</link>¬†site, around which much of my own code is based. That codebase proved a good introduction to eZ Publish 5 for me, and this tutorial will show that pedigree.</paragraph><section><header>Some Things To Clear Up</header><paragraph>First things first: Before we get in to code, let\'s address some facts and set aside any preconceived notions about what we\'re getting into:¬†</paragraph><section><section><header>eZ Publish 5 is a Totally New CMS</header><paragraph>If you\'ve read anything about eZ Publish 5, you probably know that most of eZ\'s core components are being replaced by the Symfony framework.</paragraph><paragraph>The version number hints that this new release, like the past major releases, is a continuation of the same system many of us have used for years. And while that system is still around, the \'5\' parts of eZ 5 (the Symfony parts) are all new. In essence,¬†<emphasize>eZ Publish 5 is a ground-up rewrite of the entire</emphasize>¬†CMS. The overall design direction is that where a component of the Symfony stack can be used instead of the counterpart from eZ Publish 4, the eZ Publish 4 component has been replaced.¬†Some examples:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">All interaction is handled via Symfony Controllers</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ templates are replaced by Twig templates</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ini files replaced by yml files</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZjscore replaced by Assetic</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ Publish caching is replaced by Symfony\'s caching</paragraph></li></ul></paragraph><paragraph>The core of the product, the eZ kernel itself, is now accessed via a Public API, which will remain stable in future versions. For developers, this is great news, since it means you\'re no longer hooking into core classes at random and hoping they don\'t change from version to version.¬†</paragraph><paragraph>In general, all of the architectural¬†decisions¬†that version 5 represents are great news. The Symfony community has a great ecosystem and a lot of mature, elegant code. By becoming a part of it, eZ developers spend less time working on the underlying platform components, and more time delivering the best CMS possible. From a business perspective, you\'re more likely to find developers with transferrable skills on Symfony, so it\'s a long-term win on that side as well.</paragraph></section></section><section><section><header>eZ Publish 5 isn\'t a New CMS</header><paragraph>Wait, what? Well, not yet anyway. While all of the pieces are here to build a site in eZ Publish 5, the administrative interface and a lot of the other system components (commenting, front-end editing, etc) have not yet been rewritten on the new stack. So for now, you\'ll be using a lot of the eZ Publish 4 code in your normal workflow. In fact,¬†<strong>all</strong>¬†of the previous eZ Publish code (now rechristened as eZ Publish Legacy) ships as part of eZ Publish 5, right alongside the shiny new Symfony-based kernel. This means that the CMS doesn\'t lose any features as it moves over to the new architecture, but it also means that there are some areas where you need to understand both systems or in some cases, duplicate effort.</paragraph></section></section><section><section><header>You don\'t have to switch right now</header><paragraph>The important thing to remember is that you dont¬†<emphasize>have¬†</emphasize>to start using the new architecture right now, or even this year. The development roadmap calls for the legacy architecture to be available for a long time, and there are a lot of clever methods built in to the Symfony architecture to allow it to fall back to using legacy components somewhat transparently. So you can choose to use as much or as little of the new architecture as you like.¬†</paragraph></section></section></section><section><header>The Project</header><paragraph>The point of this series, though, is to work with the shiny new stuff, so we\'re going to try to use as much of eZ Publish 5\'s Symfony components as we can. And to do that, I\'ve selected a fairly basic project - this blog! Over the next few pages, we\'ll work on building out the templates for the blog, learning the components of eZ 5 as we go.¬†</paragraph></section><section><header>What you need to follow along</header><paragraph>I\'ve placed all the code for this site¬†<link target=\"_blank\" url_id=\"35\">out on github</link>. I\'ve made a branch for each step of the tutorial. and I\'ll note as we go along which branch you can pull down in order to catch up with the tutorial progress. The \'master\' branch will be the code that this blog is actually running, which may be enhanced with extra features as time goes on. If you see a problem in either, please feel free to send a pull request, and I\'ll update the tutorial accordingly. There are still some things I\'m learning myself, so I\'ve called out some questions along the way. If you have the answer, drop me a note or a comment!</paragraph><paragraph>You\'ll also need a good working environment. Make sure you have all of the requirements for¬†<link target=\"_blank\" url_id=\"36\">Symfony</link>¬†and¬†<link target=\"_blank\" url_id=\"37\">eZ Publish</link>¬†installed.</paragraph><paragraph>Let\'s start by covering some of the¬†<link url_id=\"38\">basics of Symfony</link>.</paragraph></section></section>\n','ezxmltext',234,'eng-US',2,0,'',1),(0,198,62,0,1361651160,'','ezdatetime',235,'eng-US',2,1361651160,'',1),(0,199,62,0,NULL,'','ezkeyword',236,'eng-US',2,0,'',1),(0,200,62,1,1,'','ezcomcomments',237,'eng-US',2,0,'',1),(0,196,63,0,NULL,'Working With eZ Publish 5 - Symfony','ezstring',238,'eng-US',2,0,'working with ez publish 5 - symfony',1),(0,301,63,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',239,'eng-US',2,0,'',1),(0,197,63,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Before we dig in and start building a new site, let\'s look over some of the core concepts in Symfony. If you\'ve already got a good handle on Symfony, and aren\'t interested in some of the conceptual changes from eZ Publish 4, you can skip ahead to the next post and start getting your hands dirty.</paragraph><section><header>Model-View-Controller</header><paragraph>If you\'ve worked with Rails, ASP.Net MVC (or to a lesser degree, CakePHP) then you\'re probably familiar with the Model-View-Controller pattern. It provides a standard framework for building PHP applications in a common, organized way. When a request is received, it\'s directed to Symfony, which routes the request to an¬†<strong>action¬†</strong>on a¬†<strong>controller</strong>, which is really just a function defined by the app developer. This function gathers up whatever variables are needed to handle the request from a set of¬†<strong>model</strong>¬†objects. The model objects represent whatever systems the app stores data in (database calls, web APIs, punch cards, whatever). The controller hands back the data it\'s gathered, which is handled by the¬†<strong>view</strong>, which is a template language that\'s used to format the response.¬†</paragraph><paragraph>This all sounds pretty complicated, but in practice it\'s fairly straightforward. If you want your app to render some database output to a page, for example, you simply write a function on a controller class that returns an array containing the data you want to use, then write a template (in Symfony, the Twig templating language is used) that contains the HTML for your page. Using eZ Publish, it\'s even easier since for most pages, you\'ll be using a controller provided by eZ Publish.¬†</paragraph><paragraph>The main principles that drive MVC architecture are¬†<emphasize>separation of concerns</emphasize>¬†and¬†<emphasize>don\'t repeat yourself (DRY)</emphasize>. Since the job of fetching the data for the response (controller) is separate from the format of the response (view), it\'s very easy to change the appearance of the response, or even use JSON, XML, or something else instead of javascript.¬†</paragraph><paragraph>Symfony adds another layer on top of MVC by packaging most of the app components into¬†<emphasize>Bundles</emphasize>, which are directories that organize code around specific aspects of the application. This is sometimes referred to as HMVC (Hierarchical Model-View-Controller). This makes it easier for you to re-use code that other people have written by installing their bundles in to your project.</paragraph></section><section><header>Big Changes from eZ Publish 4</header><paragraph>If you\'re coming to eZ Publish 5 from version 4, there are some major changes that may trip you up unless you\'re looking for them.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><custom name=\"factbox\" custom:title=\"Note\" custom:align=\"right\"><paragraph>Wherever we\'re talking about \'eZ Publish 5\' here, keep in mind that we\'re only talking about the new, Symfony parts of eZ Publish 5. eZ Publish 4 is still there and uses all of the old concepts just as they\'ve always been.</paragraph></custom></paragraph><section><header>Twig</header><paragraph>The half-Smarty half-PHP template language PHP has used for years is being deprecated in favor of Twig, the template language closely associated with the Symfony framework. Twig templates will look pretty familiar, but function quite a bit differently under the hood. Twig provides some neat new features too, like template inheritance. Both the language itself and the means to extend it are well documented.¬†</paragraph></section><section><header>No more fetch() function</header><paragraph>In eZ Publish 4, if you wanted to pull some extra content from the repository in to your template, you simply called fetch, like so:¬†</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal>¬†{def $posts = fetch(content, list, hash(parent_node_id, 2, class_filter_type, \'include\', class_filter_array, array(\'blog_post\')))}</literal></paragraph><paragraph>This is handy, but the problem that arises is that you\'ve no longer separated your concerns. Your view template is now talking directly to the model and handling application logic. Over the years, eZ Publish 4 templates became more and more loaded with logic code, which lead to big, hairy, hard to read templates.</paragraph><paragraph>In the eZ Publish 5 approach, extra data is handled as a nested request to the CMS (a¬†<emphasize>sub-request</emphasize>). This¬†means that you\'ll write the query to retrieve the data as PHP in a controller action, and provide a template to render the results. This sounds like a bit more work, but it leads to better template re-use, and it also gives you a chance to keep any of the complex logic (like turning a list of events into a calendar) out of the template.</paragraph></section><section><header>Single-pass rendering</header><paragraph>Most eZ Publish 4 developers know that a page in eZ 4 is rendered in two steps: the system first renders the \'module result\' (the \'full view\' template of a content object) and then passes the result of that as HTML to a \'pagelayout\', which renders the page surround. If you want the pagelayout template to have access to variables used by the interior template, you need to either pass those variables in a specific structure, or fetch them again.¬†</paragraph><paragraph>In Twig, only one render step occurs for each request (ignoring sub-requests for the moment). The template language provides an inheritance model similar to classes and methods in PHP that still allows you to re-use your template code.</paragraph></section><section><header>Simplified cache</header><paragraph>In eZ Publish 4, there were a lot of pieces involved in caching a page - template cache, block cache, view cache, etc. eZ Publish 5 uses Symfony\'s native caching layer, and for the most part only caches entire requests. Symfony also adheres very closely to the HTTP specification to determine how this cache is managed, so if you\'re not up to speed on HTTP Headers like¬†<link target=\"_blank\" url_id=\"39\" anchor_name=\"sec14.9\">Cache-Control</link>¬†and¬†<link target=\"_blank\" url_id=\"40\">ETag</link>, you\'ll want to brush up before you begin any serious development - but we can skip that stuff for now.</paragraph><paragraph>Let\'s move on and¬†<link url_id=\"41\">set up an eZ Publish 5 installation</link>.</paragraph></section></section></section>\n','ezxmltext',240,'eng-US',2,0,'',1),(0,198,63,0,1361651280,'','ezdatetime',241,'eng-US',2,1361651280,'',1),(0,199,63,0,NULL,'','ezkeyword',242,'eng-US',2,0,'',1),(0,200,63,1,1,'','ezcomcomments',243,'eng-US',2,0,'',1),(0,193,64,0,NULL,'Home','ezstring',244,'eng-US',2,0,'home',1),(0,194,64,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is the home page</paragraph></section>\n','ezxmltext',245,'eng-US',2,0,'',1),(0,195,64,0,NULL,'','ezkeyword',246,'eng-US',2,0,'',1);
/*!40000 ALTER TABLE `ezcontentobject_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_link`
--

DROP TABLE IF EXISTS `ezcontentobject_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_link` (
  `contentclassattribute_id` int(11) NOT NULL DEFAULT '0',
  `from_contentobject_id` int(11) NOT NULL DEFAULT '0',
  `from_contentobject_version` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relation_type` int(11) NOT NULL DEFAULT '1',
  `to_contentobject_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezco_link_from` (`from_contentobject_id`,`from_contentobject_version`,`contentclassattribute_id`),
  KEY `ezco_link_to_co_id` (`to_contentobject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_link`
--

LOCK TABLES `ezcontentobject_link` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentobject_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_name`
--

DROP TABLE IF EXISTS `ezcontentobject_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_name` (
  `content_translation` varchar(20) NOT NULL DEFAULT '',
  `content_version` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `real_translation` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`contentobject_id`,`content_version`,`content_translation`),
  KEY `ezcontentobject_name_cov_id` (`content_version`),
  KEY `ezcontentobject_name_lang_id` (`language_id`),
  KEY `ezcontentobject_name_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_name`
--

LOCK TABLES `ezcontentobject_name` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_name` DISABLE KEYS */;
INSERT INTO `ezcontentobject_name` VALUES ('eng-US',1,4,3,'Users','eng-US'),('eng-US',2,10,3,'Anonymous User','eng-US'),('eng-US',1,11,3,'Guest accounts','eng-US'),('eng-US',2,11,3,'Members','eng-US'),('eng-US',1,12,3,'Administrator users','eng-US'),('eng-US',1,13,3,'Editors','eng-US'),('eng-US',3,14,3,'Administrator User','eng-US'),('eng-US',4,14,3,'Administrator User','eng-US'),('eng-US',1,41,3,'Media','eng-US'),('eng-US',1,42,3,'Anonymous Users','eng-US'),('eng-US',1,45,3,'Setup','eng-US'),('eng-US',1,49,3,'Images','eng-US'),('eng-US',1,50,3,'Files','eng-US'),('eng-US',1,51,3,'Multimedia','eng-US'),('eng-US',1,52,2,'Common INI settings','eng-US'),('eng-US',2,54,2,'eZ Publish 5 Tutorial','eng-US'),('eng-US',1,56,3,'Design','eng-US'),('eng-US',1,57,3,'Home','eng-US'),('eng-US',1,58,2,'footer','eng-US'),('eng-US',1,59,3,'Partners','eng-US'),('eng-US',1,60,2,'About','eng-US'),('eng-US',1,61,2,'Code','eng-US'),('eng-US',1,62,2,'Working with eZ Publish 5 - Introduction','eng-US'),('eng-US',1,63,2,'Working With eZ Publish 5 - Symfony','eng-US'),('eng-US',1,64,2,'Home','eng-US');
/*!40000 ALTER TABLE `ezcontentobject_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_trash`
--

DROP TABLE IF EXISTS `ezcontentobject_trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_trash` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `is_hidden` int(11) NOT NULL DEFAULT '0',
  `is_invisible` int(11) NOT NULL DEFAULT '0',
  `main_node_id` int(11) DEFAULT NULL,
  `modified_subnode` int(11) DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `parent_node_id` int(11) NOT NULL DEFAULT '0',
  `path_identification_string` longtext,
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  PRIMARY KEY (`node_id`),
  KEY `ezcobj_trash_co_id` (`contentobject_id`),
  KEY `ezcobj_trash_depth` (`depth`),
  KEY `ezcobj_trash_modified_subnode` (`modified_subnode`),
  KEY `ezcobj_trash_p_node_id` (`parent_node_id`),
  KEY `ezcobj_trash_path` (`path_string`),
  KEY `ezcobj_trash_path_ident` (`path_identification_string`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_trash`
--

LOCK TABLES `ezcontentobject_trash` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_trash` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentobject_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_tree`
--

DROP TABLE IF EXISTS `ezcontentobject_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_tree` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_is_published` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `is_hidden` int(11) NOT NULL DEFAULT '0',
  `is_invisible` int(11) NOT NULL DEFAULT '0',
  `main_node_id` int(11) DEFAULT NULL,
  `modified_subnode` int(11) DEFAULT '0',
  `node_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_node_id` int(11) NOT NULL DEFAULT '0',
  `path_identification_string` longtext,
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  PRIMARY KEY (`node_id`),
  KEY `ezcontentobject_tree_remote_id` (`remote_id`),
  KEY `ezcontentobject_tree_co_id` (`contentobject_id`),
  KEY `ezcontentobject_tree_depth` (`depth`),
  KEY `ezcontentobject_tree_p_node_id` (`parent_node_id`),
  KEY `ezcontentobject_tree_path` (`path_string`),
  KEY `ezcontentobject_tree_path_ident` (`path_identification_string`(50)),
  KEY `modified_subnode` (`modified_subnode`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_tree`
--

LOCK TABLES `ezcontentobject_tree` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_tree` DISABLE KEYS */;
INSERT INTO `ezcontentobject_tree` VALUES (0,1,1,0,0,0,1,1361651370,1,1,'','/1/',0,'629709ba256fe317c3ddcee35453a96a',1,1),(64,1,1,1,0,0,2,1361651370,2,1,'','/1/2/',0,'f3e90596361e31d496d4026eb624c983',8,1),(4,1,1,1,0,0,5,1361639844,5,1,'users','/1/5/',0,'3f6d92f8044aed134f32153517850f5a',1,1),(11,1,2,2,0,0,12,1361639844,12,5,'users/members','/1/5/12/',0,'602dcf84765e56b7f999eaafd3821dd3',1,1),(12,1,1,2,0,0,13,1361639843,13,5,'users/administrator_users','/1/5/13/',0,'769380b7aa94541679167eab817ca893',1,1),(13,1,1,2,0,0,14,1081860719,14,5,'users/editors','/1/5/14/',0,'f7dda2854fc68f7c8455d9cb14bd04a9',1,1),(14,1,4,3,0,0,15,1361639843,15,13,'users/administrator_users/administrator_user','/1/5/13/15/',0,'e5161a99f733200b9ed4e80f9c16187b',1,1),(41,1,1,1,0,0,43,1081860720,43,1,'media','/1/43/',0,'75c715a51699d2d309a924eca6a95145',9,1),(42,1,1,2,0,0,44,1081860719,44,5,'users/anonymous_users','/1/5/44/',0,'4fdf0072da953bb276c0c7e0141c5c9b',9,1),(10,1,2,3,0,0,45,1081860719,45,44,'users/anonymous_users/anonymous_user','/1/5/44/45/',0,'2cf8343bee7b482bab82b269d8fecd76',9,1),(45,1,1,1,0,0,48,1184592117,48,1,'setup2','/1/48/',0,'182ce1b5af0c09fa378557c462ba2617',9,1),(49,1,1,2,0,0,51,1081860720,51,43,'media/images','/1/43/51/',0,'1b26c0454b09bb49dfb1b9190ffd67cb',9,1),(50,1,1,2,0,0,52,1081860720,52,43,'media/files','/1/43/52/',0,'0b113a208f7890f9ad3c24444ff5988c',9,1),(51,1,1,2,0,0,53,1081860720,53,43,'media/multimedia','/1/43/53/',0,'4f18b82c75f10aad476cae5adf98c11f',9,1),(52,1,1,2,0,0,54,1184592117,54,48,'setup2/common_ini_settings','/1/48/54/',0,'fa9f3cff9cf90ecfae335718dcbddfe2',1,1),(54,1,2,2,0,0,56,1361639843,56,58,'design/plain_site','/1/58/56/',0,'772da20ecf88b3035d73cbdfcea0f119',1,1),(56,1,1,1,0,0,58,1361639843,58,1,'design','/1/58/',0,'79f2d67372ab56f59b5d65bb9e0ca3b9',2,0),(58,1,1,2,0,0,60,1361639843,60,2,'footer','/1/2/60/',0,'86bf306624668ee9b8b979b0d56f7e0d',1,1),(59,1,1,2,0,0,61,1361639844,61,5,'users/partners','/1/5/61/',0,'4b86c889f37f5e796a7d2e4b4d68aeae',1,1),(60,1,1,2,0,0,62,1361649775,62,2,'about','/1/2/62/',0,'0f50c8334dad203599cb1c7f3e9b2d80',1,1),(61,1,1,2,0,0,63,1361651334,63,2,'code','/1/2/63/',0,'1129572e7fe96d8a055ff7f7441b51d5',1,1),(62,1,1,3,0,0,64,1361651284,64,63,'code/working_with_ez_publish_5_introduction','/1/2/63/64/',0,'49115f25fb2a35f23d92afece3854cfd',1,1),(63,1,1,3,0,0,65,1361651334,65,63,'code/working_with_ez_publish_5_symfony','/1/2/63/65/',0,'7f7c6525ca1d4c539e13c0d0c235e4b5',1,1),(57,1,1,2,0,0,66,1361651370,66,2,'home','/1/2/66/',0,'db4deec457f7ef17c25e11d657f84c7a',1,1);
/*!40000 ALTER TABLE `ezcontentobject_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_version`
--

DROP TABLE IF EXISTS `ezcontentobject_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_version` (
  `contentobject_id` int(11) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `initial_language_id` int(11) NOT NULL DEFAULT '0',
  `language_mask` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_event_pos` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcobj_version_creator_id` (`creator_id`),
  KEY `ezcobj_version_status` (`status`),
  KEY `idx_object_version_objver` (`contentobject_id`,`version`),
  KEY `ezcontobj_version_obj_status` (`contentobject_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=514 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_version`
--

LOCK TABLES `ezcontentobject_version` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_version` DISABLE KEYS */;
INSERT INTO `ezcontentobject_version` VALUES (4,0,14,4,2,3,0,1,0,1,1),(11,1033920737,14,439,2,3,1033920746,3,0,1,0),(12,1033920760,14,440,2,3,1033920775,1,0,1,0),(13,1033920786,14,441,2,3,1033920794,1,0,1,0),(41,1060695450,14,472,2,3,1060695457,1,0,1,0),(42,1072180278,14,473,2,3,1072180330,1,0,1,0),(10,1072180337,14,474,2,3,1072180405,1,0,2,0),(45,1079684084,14,477,2,3,1079684190,1,0,1,0),(49,1080220181,14,488,2,3,1080220197,1,0,1,0),(50,1080220211,14,489,2,3,1080220220,1,0,1,0),(51,1080220225,14,490,2,3,1080220233,1,0,1,0),(52,1082016497,14,491,2,2,1082016591,1,0,1,0),(56,1103023120,14,495,2,3,1103023120,1,0,1,0),(14,1301061783,14,499,2,3,1301062024,3,0,3,0),(54,1301062300,14,500,2,2,1301062375,1,0,2,0),(57,1196268655,14,504,2,3,1196268696,1,0,1,0),(58,1352741487,14,505,2,3,1352741504,1,0,1,0),(14,1361639843,14,506,2,3,1361639843,1,0,4,0),(59,1361639843,14,507,2,3,1361639843,1,0,1,0),(11,1361639844,14,508,2,3,1361639844,1,0,2,0),(60,1361649750,14,509,2,3,1361649775,1,0,1,0),(61,1361651172,14,510,2,3,1361651177,1,0,1,0),(62,1361651189,14,511,2,3,1361651284,1,0,1,0),(63,1361651296,14,512,2,3,1361651334,1,0,1,0),(64,1361651347,14,513,2,3,1361651355,1,0,1,0);
/*!40000 ALTER TABLE `ezcontentobject_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcurrencydata`
--

DROP TABLE IF EXISTS `ezcurrencydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcurrencydata` (
  `auto_rate_value` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `code` varchar(4) NOT NULL DEFAULT '',
  `custom_rate_value` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(255) NOT NULL DEFAULT '',
  `rate_factor` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `status` int(11) NOT NULL DEFAULT '1',
  `symbol` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezcurrencydata_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcurrencydata`
--

LOCK TABLES `ezcurrencydata` WRITE;
/*!40000 ALTER TABLE `ezcurrencydata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcurrencydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdbfile`
--

DROP TABLE IF EXISTS `ezdbfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdbfile` (
  `datatype` varchar(255) NOT NULL DEFAULT 'application/octet-stream',
  `name` text NOT NULL,
  `name_trunk` text NOT NULL,
  `name_hash` varchar(34) NOT NULL DEFAULT '',
  `scope` varchar(20) NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `expired` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name_hash`),
  KEY `ezdbfile_name` (`name`(250)),
  KEY `ezdbfile_name_trunk` (`name_trunk`(250)),
  KEY `ezdbfile_mtime` (`mtime`),
  KEY `ezdbfile_expired_name` (`expired`,`name`(250))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdbfile`
--

LOCK TABLES `ezdbfile` WRITE;
/*!40000 ALTER TABLE `ezdbfile` DISABLE KEYS */;
INSERT INTO `ezdbfile` VALUES ('image/png','var/storage/images/design/plain-site/172-2-eng-US/eZ-Publish-5-Tutorial1_small.png','var/storage/images/design/plain-site/172-2-eng-US/eZ-Publish-5-Tutorial1_small.png','3bd2c42d55644c58ec20b307221260ad','image',1903,1361642451,0),('image/png','var/storage/images/design/plain-site/172-2-eng-US/eZ-Publish-5-Tutorial1_reference.png','var/storage/images/design/plain-site/172-2-eng-US/eZ-Publish-5-Tutorial1_reference.png','47b986d1765b5470c95f2b191c7fdb71','image',1591,1361642451,0),('image/png','var/storage/images/design/plain-site/172-2-eng-US/eZ-Publish-5-Tutorial1_large.png','var/storage/images/design/plain-site/172-2-eng-US/eZ-Publish-5-Tutorial1_large.png','8f2465ade8946f991c91ed121def6b3c','image',1591,1361642377,0),('image/png','var/storage/images/design/plain-site/172-2-eng-US/eZ-Publish-5-Tutorial1.png','var/storage/images/design/plain-site/172-2-eng-US/eZ-Publish-5-Tutorial1.png','b6681250dc6c41aada09f672703bb79f','image',2137,1361639843,0);
/*!40000 ALTER TABLE `ezdbfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdbfile_data`
--

DROP TABLE IF EXISTS `ezdbfile_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdbfile_data` (
  `name_hash` varchar(34) NOT NULL DEFAULT '',
  `offset` int(11) unsigned NOT NULL,
  `filedata` blob NOT NULL,
  PRIMARY KEY (`name_hash`,`offset`),
  CONSTRAINT `ezdbfile_fk1` FOREIGN KEY (`name_hash`) REFERENCES `ezdbfile` (`name_hash`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdbfile_data`
--

LOCK TABLES `ezdbfile_data` WRITE;
/*!40000 ALTER TABLE `ezdbfile_data` DISABLE KEYS */;
INSERT INTO `ezdbfile_data` VALUES ('3bd2c42d55644c58ec20b307221260ad',0,'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0d\0\0\0!\0\0\0/wã\0\0\0gAMA\0\0±è¸a\0\0\0sRGB\0ÆŒÈ\0\0\0 cHRM\0\0z&\0\0ÄÑ\0\0˙\0\0\0ÄË\0\0u0\0\0Í`\0\0:ò\0\0pú∫Q<\0\0\0bKGD\0ˇ\0ˇ\0ˇ†Ωßì\0\0TIDAThﬁÌ⁄kå]Uﬂæ˜NÌËhTQúëjåXJ¯&U„+hà5j4F˘‡T™F\rT„Éh4¢|1∆hÀ£à†DS£ƒgP£)∆>ÇÜv“ñ)g:}NÈ‹;˜l?Ïsg:enÁûsfZ∞˝\'7˜ës˜>{˝˜ZÎø÷>a’‡–ΩN-6b”Œ›ª‚)û˜YÉUÉCpæéhÁØ\Zx‘ÎıEΩâ,Àƒ·al:›F9ÕXç¯≈ïX” ë±ÓSü488$ãŸÇœ>’ö≤q√€∑m;›Üx∂ ‰Ôc»p-¥BpÌ⁄µ.ø‚äEôΩŸl˙ı¶M∂m›*ÑP}¿Á>¢D ÿÉeh‚`ÌîÃ£ËåMs!‚…+ŒïÚ»%ÿ“8›wv„1|\ZK%Ç⁄8xñêŸx+ﬁ`&Œ/$&qœŒ›ªv‰JÎ¿âú%d6˙Qºsë∆o‚Oÿ±s˜Æ9/8K»lDÏ¿/h¨>IŒæ0ˇÌê§®∫‚îRØ◊èWWbÓ≤”Ë∂cN1¶p\'™eŒ¡Gpu˛€æâÌ\'˚cœÑLNN\Z≥‚j©’j:|ËpÁÎKqï¥ÉjR›ì£WúóèsN˛y>√aå„â‹`s!ö#Æó¿r)Ù≠√ÄT¸›ÅüK ™+z&‰âΩ{›|”«L6õI¿vîtàëÒ}˚DAånîwjA¿C¯ˆ˜0TﬁÇ˜bMæ{X«¸ªÒG‹É]`¯π2|1_c?˛&ëÒP/ÓôêV´eddD-6Ω†?®– .\rÙ◊‰F\\ﬁúä∆èFÌÃJ…Szπ◊±gËCízÈÊ∫uIZ^ÇK±ó„sÆf˚g,sçñ^\'…ÿ˚Û˚›ﬁÎ ÖrH5◊ı˘Ïõñ:w©“•^\r;G3Î<fÔÅ,÷{+OØí<Èb)Ï<(ı≈∆0ö`.Ù„Eƒ€z‹Ä‹\"Ö≥™h‡Ì¯B~üá•&ÍóÚ˚+4P!Ù’8üÛ˙CiBV\ZΩßŒ:ﬁåó„i‹çÔ(nÃ_‡)Ô¿7∞∑‰2:X\"%Ô[%“GÒ-|Ooax\n#≤ÿ=-ˆà¨ã∏ÿ©]MJÃ?Qng„>\\+ÂûW®F»∏ü¿Û•Í˚< ’ÖQBˆF≤å¨b!3©õ—Ú#x™¬ÃèõŸNK*å”IﬁÔñ‘ﬁüq[˛^\Z≈	â1˜êäÕ¬ÚˇüêB√dÖŸ„	ÔEq5æ\"µY2)ﬁÇW3JŸ¬pA<§P»:kÒw’4≈Û‘]–¿u¯2^#)ºç¯\Zû¨fêô	äa:áú6È¥\néÂØ\"ô∞ƒÁ1$%Ô;ÒCâòA…êïuôΩ¢º(xD⁄ë•íÊqò¬ñØ]!%ÔNÂ˝òî?~™úßuEyB™ûÙfîå:O·W¶~ËóJ È}RÅ˘0n«c≤¬ÑrB¢P2ÍÑ@»±PÍlÅÂ™ùU\\ÉÎ±øwÚ¬ÌJ)y_óœüTy?Za˛ì¢îáÑ,⁄e≥övmKΩ(x1.í˙RE$2nïöà◊õõê>ºQ*W„®TË›%…ÊE√t”bæáB-øt:dUyM¸+ˇº¿ÛJ¨ıURã£!%‚ë9ÆÎ«áÒ›úå\'•u˚bì¡q≤ˇ~cc›Ωw|ﬂxzP!¢ù—Æ™≤k)~Õè6~+µ±_)ı¥V„7R◊vbûˇØî*˝§0‘	?\'.∏éèKﬁ\0‚GR«ˆ2’èu€“XWU÷ÄvªÌÓªæÌ¸eÀ:≥ÕB¡ƒƒÑ©÷îT©/ÑÏ-¨\n∂„´R\r0à˜Km¯h~uÃúô¥§∆‰˜=St˙R˘˜IY≠´∂ÿi¡ªªn4p4∆hÛÊÕsí1Ω¢j!‘ñŒ‘!Y˘“,(ö–;Ü¸±f>Ñ◊ÊÎµEyLÍe˝˜J„%Ø/π≤˘0aûÉ∏Ü‰¢jµìˆ¿#^Y/∆>1+≥√gèVÆ“oI ËØRˇË\"IuÕá∂‘DÏúiwª˘&níÚ»b†mûˆJzÏ’∏≠b_àô3eCj@-ùñ£Si/ÙNŒœ≥\ZΩ>\\∞jp(¿ÿ”¡__¢ø/ä%CV-∞ÁpÕëVXîáüûÀ(vbà-£\r€F=ä£Óà1	µ\"G¡gär˜«®ØM˘Ñ>5¸Cıæ‘ˇ\r˛âÇ(õñ2ºÚ\0\0\0%tEXtdate:create\02013-02-23T12:00:51-06:00*∑=g\0\0\0%tEXtdate:modify\02013-02-23T12:00:51-06:00[ÍÖ€\0\0\0tEXtSoftware\0Adobe ImageReadyq…e<\0\0\0\0IENDÆB`Ç'),('47b986d1765b5470c95f2b191c7fdb71',0,'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0ä\0\0\0.\0\0\0¿‘qÆ\0\0\0gAMA\0\0±è¸a\0\0\0sRGB\0ÆŒÈ\0\0\0 cHRM\0\0z&\0\0ÄÑ\0\0˙\0\0\0ÄË\0\0u0\0\0Í`\0\0:ò\0\0pú∫Q<\0\0›PLTE# \0\0\0# # # # # # # # # # # # # \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0# \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0# »««LIJˇˇˇZWX\0\0\01-.vS&·å-‰ê-„è-„é-¢j(yU&Óú-Óû-ø|*xT%Óö-Óù-ºy*xS%Óô,Óú,Óö,ªx)Óò+Óõ+Óö+ªx(xR$Óñ)Óô)Óò)ªv\'xR#Óï(Óò(Óó(ªv&xQ#Óì\'Óñ\'Óï\'ªt&Óí&Óï&Óî&ªt%xP\"Óê%Óì$Óí$ªr$xO!Óé$Óë#Óê#ªq#xN Óç\"Óê!Óè!ªp\"Óå!Óé Óç ªo!yMÔäÔåÔãºn yLÔàÔäÔâºlyKÔáÔâÔàºlyKÔÖÔá\ZÔÜºjyJÔÉÔÖÔÑºiëèêyIÔÅÔÉÔÇºhÔÄÔÇÔÅºg\ZyHÔÔÄÔºf\ZyGÔ~ÔÔ~ºeyG\ZÔ}Ô~Ô}ºd}IÔ|Ô}¡fnA\ZÃi–kŒjœkëP\Z‘ıÍ\0\0\0tRNS\0\0Ä Øœøﬂ@`üPèpÄ@øﬂp `œü0Ô0èPØ∏\'åt\0\0\0bKGD\"]e\\¨\0\0\rIDATX√ÂŸıs€0p;Õú¨Àfà{voÎxÎòôôôôôπcf∆nÎ\"]“»“ì≠&N≤ª}Kœ\',==C•ÑX⁄$&rΩ©îÏ£(J™MÚ≈íé_R°ÙMñ$J¢Ωïî≤%—œó§LBAîAQPbêî-â¥üN+˝1eHT:\ZEëÀ≥í»§§ö)ÒH∞•T+•J∂∑öÇ,ô™€5RbìT∑¥‘zä\\E¯4Í–àhÑ•±˝ﬂ°\"π)çü,í&Q.ç•ìCíºEVnã(∏ûÌ /ê“eòÔ£˚∏¢§)¶™ÎπˆÜnÁ¨Hàe£cU9î\"vå»ƒ…EIÚ‘QµS»¡Ñ[\\4èé+GRÜè9\n Ë14•Ä+OUΩÍ∂»©∂—≥G9Ò¢`C)c;«¡OQLtm{*¥jEæo‚b∞û8î	\'ÅÈúLQ≤Å #ÇZ,WÇÀ´@˝ëCô2u\ZòÈ3(\nZ:[éøBññè2sòŸs(\n˜‚5.≈Õ”Jô;o>òYäüêG—p¡3…°,ZºÃ“e¢ôC¡Ω^ LYæb%òU´Å\nø„SÙz\0√R÷¨≥n}]´’˚X Üçõ¿lﬁR≈ƒ÷˘\0 ÷m€¡Ïÿ…RÚ‹ß™\"pØ7\\πwî]ª˜ÄŸªO∏lŸÇe{Ωeˇ0’LQCñO9|‰(òc«YäéÈÍ™GŒ\0ÓıŸH0K9qÚò”g(äÕÎ∂Ÿ@Ÿ2\'‚î≥ÁŒÉπpë¢®ºÕâ∂Vœ¨∏‹ÎE(ó._sı\ZEA˝›\0J5’|Âá\'R∞< ı7¡‹∫M?:°´w\nZ‡û‚z6Ÿ pØ∑Ö$òráàÔw›ΩÊ˛ö‚:ºßWÜèz##[!˚¨Î·#0èü0èŸ.ÁÂØ:\rıQû>{Ê≈KÜ\"[YˆI€)√˜äB}ı˝WØﬂÄy˚éx1#ñÿÎ¯ZTà√%*æˇ˛√G0ü>√îÿ¬Ræ|˝Á;˘∫⁄ èüø∫Å¸Ó˛”tä‡á‰ˇä\"˛Oáÿ)ÔK√E\\◊\0\0\0%tEXtdate:create\02013-02-23T11:17:23-06:00)uç \0\0\0%tEXtdate:modify\02013-02-23T11:17:23-06:00X(5ú\0\0\0tEXtSoftware\0Adobe ImageReadyq…e<\0\0\0\0IENDÆB`Ç'),('8f2465ade8946f991c91ed121def6b3c',0,'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0ä\0\0\0.\0\0\0¿‘qÆ\0\0\0gAMA\0\0±è¸a\0\0\0sRGB\0ÆŒÈ\0\0\0 cHRM\0\0z&\0\0ÄÑ\0\0˙\0\0\0ÄË\0\0u0\0\0Í`\0\0:ò\0\0pú∫Q<\0\0›PLTE# \0\0\0# # # # # # # # # # # # # \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0# \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0# »««LIJˇˇˇZWX\0\0\01-.vS&·å-‰ê-„è-„é-¢j(yU&Óú-Óû-ø|*xT%Óö-Óù-ºy*xS%Óô,Óú,Óö,ªx)Óò+Óõ+Óö+ªx(xR$Óñ)Óô)Óò)ªv\'xR#Óï(Óò(Óó(ªv&xQ#Óì\'Óñ\'Óï\'ªt&Óí&Óï&Óî&ªt%xP\"Óê%Óì$Óí$ªr$xO!Óé$Óë#Óê#ªq#xN Óç\"Óê!Óè!ªp\"Óå!Óé Óç ªo!yMÔäÔåÔãºn yLÔàÔäÔâºlyKÔáÔâÔàºlyKÔÖÔá\ZÔÜºjyJÔÉÔÖÔÑºiëèêyIÔÅÔÉÔÇºhÔÄÔÇÔÅºg\ZyHÔÔÄÔºf\ZyGÔ~ÔÔ~ºeyG\ZÔ}Ô~Ô}ºd}IÔ|Ô}¡fnA\ZÃi–kŒjœkëP\Z‘ıÍ\0\0\0tRNS\0\0Ä Øœøﬂ@`üPèpÄ@øﬂp `œü0Ô0èPØ∏\'åt\0\0\0bKGD\"]e\\¨\0\0\rIDATX√ÂŸıs€0p;Õú¨Àfà{voÎxÎòôôôôôπcf∆nÎ\"]“»“ì≠&N≤ª}Kœ\',==C•ÑX⁄$&rΩ©îÏ£(J™MÚ≈íé_R°ÙMñ$J¢Ωïî≤%—œó§LBAîAQPbêî-â¥üN+˝1eHT:\ZEëÀ≥í»§§ö)ÒH∞•T+•J∂∑öÇ,ô™€5RbìT∑¥‘zä\\E¯4Í–àhÑ•±˝ﬂ°\"π)çü,í&Q.ç•ìCíºEVnã(∏ûÌ /ê“eòÔ£˚∏¢§)¶™ÎπˆÜnÁ¨Hàe£cU9î\"vå»ƒ…EIÚ‘QµS»¡Ñ[\\4èé+GRÜè9\n Ë14•Ä+OUΩÍ∂»©∂—≥G9Ò¢`C)c;«¡OQLtm{*¥jEæo‚b∞û8î	\'ÅÈúLQ≤Å #ÇZ,WÇÀ´@˝ëCô2u\ZòÈ3(\nZ:[éøBññè2sòŸs(\n˜‚5.≈Õ”Jô;o>òYäüêG—p¡3…°,ZºÃ“e¢ôC¡Ω^ LYæb%òU´Å\nø„SÙz\0√R÷¨≥n}]´’˚X Üçõ¿lﬁR≈ƒ÷˘\0 ÷m€¡Ïÿ…RÚ‹ß™\"pØ7\\πwî]ª˜ÄŸªO∏lŸÇe{Ωeˇ0’LQCñO9|‰(òc«YäéÈÍ™GŒ\0ÓıŸH0K9qÚò”g(äÕÎ∂Ÿ@Ÿ2\'‚î≥ÁŒÉπpë¢®ºÕâ∂Vœ¨∏‹ÎE(ó._sı\ZEA˝›\0J5’|Âá\'R∞< ı7¡‹∫M?:°´w\nZ‡û‚z6Ÿ pØ∑Ö$òráàÔw›ΩÊ˛ö‚:ºßWÜèz##[!˚¨Î·#0èü0èŸ.ÁÂØ:\rıQû>{Ê≈KÜ\"[YˆI€)√˜äB}ı˝WØﬂÄy˚éx1#ñÿÎ¯ZTà√%*æˇ˛√G0ü>√îÿ¬Ræ|˝Á;˘∫⁄ èüø∫Å¸Ó˛”tä‡á‰ˇä\"˛Oáÿ)ÔK√E\\◊\0\0\0%tEXtdate:create\02013-02-23T11:59:37-06:00øÄÍú\0\0\0%tEXtdate:modify\02013-02-23T11:59:37-06:00Œ›R \0\0\0tEXtSoftware\0Adobe ImageReadyq…e<\0\0\0\0IENDÆB`Ç'),('b6681250dc6c41aada09f672703bb79f',0,'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0ä\0\0\0.\0\0\0˜\nÅú\0\0\0tEXtSoftware\0Adobe ImageReadyq…e<\0\0$iTXtXML:com.adobe.xmp\0\0\0\0\0<?xpacket begin=\"Ôªø\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.0-c061 64.140949, 2010/12/07-10:57:01        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmp:CreatorTool=\"Adobe Photoshop CS5.1 Macintosh\" xmpMM:InstanceID=\"xmp.iid:29F868EF606311E196C1A2782C396FC4\" xmpMM:DocumentID=\"xmp.did:29F868F0606311E196C1A2782C396FC4\"> <xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:29F868ED606311E196C1A2782C396FC4\" stRef:documentID=\"xmp.did:29F868EE606311E196C1A2782C396FC4\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end=\"r\"?>ÖRZ®\0\0ÀIDATx⁄Ï\\AOA~[*ûƒ∆ªaç†$&‚…ÚÄx—x†ú=HEΩ∑ıFo¿¡3ÂÜ\'{¬ãƒr51©7√Æ3ÌLÿS∫€yovóŒó<Å⁄ŒvÁ}ÛÕ7o¶ı/˙u».vYÙ0\Z:;Ô¡¨ÉÂz“SˆY\'ı#èÒøW<ˆ‚0√˜∂¬¢„HbÖ(U´,J „«,Æ˚fg—ãä†<∫Úˇä—g~˙Ú9ıõ˘Ó=¸8=µ’93IñîEN9Ò≥Ã‚êˇ2BîßÀÀ©ﬂ»¬¬ÇÀfzd)Eàr_®LìOI≈ñZGñQ≤Œ⁄û∞Æ‹ûÛ(Œ≥®+LŒû#e°2µ‚åtÇC<e©â∏ß(±UaVo<‡> L9*q˚Ã)Jzxûß7Îàí¸<)q—Â+5lZº_Ω4î«z†ŸGWcqDIK◊©jH¬KÛºDﬂwSèÉ4ÃmÂ±]KIHb¨(Ø_æBø3eüß1ÊÜjpµae‚™S)ãKI–ãﬂe=Hö\0\"îDﬂUï«w`¥Íjá(ﬂNNlÃ≠„:ªß%õØH|Må⁄4Ir§Ù]ﬂÙ}›:è2°†ÎDÏ$µ#oeq%Ö$+¶\nåBîOÊ·Õ≥ª0«Z)éA±6è~˛ÉùØ¶-mkH¬;0Ú{?°ö,¬∞p]*¥≈t‘±Hí5q›íâi%% ≥ƒ˜J¥÷¯·„∆y\"∑îë∂)|⁄ tˆ÷\"Q∂4+õq(û	%µ!óë\0Ë\nÕ¨ÌÀKîEë$≤.“π·zThkH¬œê¨c\Zk\r$4§ã í—ãöe\"6ˆîø+LkUCÿ\Zˆ≈ÃÏ ©î«∏Ò≤fiãçû%)%)cõVZ¢F=õ<Bé®,§Ú6j(\\•ˆ5¶uùí®¥LÜƒY˛T…H¬(Q’,;BI–H¢+1QG<©¢†è \\0/ÇÜ≤jì>ãdsQíEnÊ√£Ñê√º¢ö÷∂fµ	äzí0àÖ+JHGî`&I‚?¢ö÷u∞[ÃÀQpõÓR,!ë=ãÆﬂ$È⁄f,Q¬Ä®~/âÇjÄ˙∂G‰¶µDÂ¯ÙÎ(An%À®√pO äiµJèëƒ≥9ò’P7í|¢˛îGèÖt*Ä∫_bäl¶Õ^‹Â1PöY˛è—Ù”≥@îJ$\0‚m…L ÌıHèB($<◊¯\0l¨Naf99æÉæü	í‡Ñ?°3®;≈€`vRNg@+\nI&M;kBI|Âuè“XŸXöz¬©«√XıHœPâL?øƒ®=Ñ1_à°æPU°Z1à•;¯\\ÉlúªOîèÕ÷îâÈ=\nŒ“ª¶‘&¯œ-∏^\Z7E\'∆¥—Cû™≈¸«˛Í3Ö(Õ,$”®mæ7q√πYYãÿ\'4¥Rnnπ©£p≤,âëª8≠eØŸ.‰e«‡ı€Wâ‰ÖhCf‡Q‚∑=AUdbõë˙Ño†0Id´≤ü6∫IàR7&\nü°ØÃNcd1|LnÄ≤<.\"{=$áñ∏SH¶V1æ|◊¡∂G˘{·¡ŸüyF|õ‚yCÆtªèIß	œp‰•µU{YÁæÀ-CSèÉSîI®ßÙæwìòOß*Ê¯/¿\0 ˝∫Qúúu\0\0\0\0IENDÆB`Ç');
/*!40000 ALTER TABLE `ezdbfile_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountrule`
--

DROP TABLE IF EXISTS `ezdiscountrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountrule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountrule`
--

LOCK TABLES `ezdiscountrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountsubrule`
--

DROP TABLE IF EXISTS `ezdiscountsubrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountsubrule` (
  `discount_percent` float DEFAULT NULL,
  `discountrule_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limitation` char(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountsubrule`
--

LOCK TABLES `ezdiscountsubrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountsubrule_value`
--

DROP TABLE IF EXISTS `ezdiscountsubrule_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountsubrule_value` (
  `discountsubrule_id` int(11) NOT NULL DEFAULT '0',
  `issection` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`discountsubrule_id`,`value`,`issection`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountsubrule_value`
--

LOCK TABLES `ezdiscountsubrule_value` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezenumobjectvalue`
--

DROP TABLE IF EXISTS `ezenumobjectvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezenumobjectvalue` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_version` int(11) NOT NULL DEFAULT '0',
  `enumelement` varchar(255) NOT NULL DEFAULT '',
  `enumid` int(11) NOT NULL DEFAULT '0',
  `enumvalue` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_attribute_id`,`contentobject_attribute_version`,`enumid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezenumobjectvalue`
--

LOCK TABLES `ezenumobjectvalue` WRITE;
/*!40000 ALTER TABLE `ezenumobjectvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumobjectvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezenumvalue`
--

DROP TABLE IF EXISTS `ezenumvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezenumvalue` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_attribute_version` int(11) NOT NULL DEFAULT '0',
  `enumelement` varchar(255) NOT NULL DEFAULT '',
  `enumvalue` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placement` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`contentclass_attribute_id`,`contentclass_attribute_version`),
  KEY `ezenumvalue_co_cl_attr_id_co_class_att_ver` (`contentclass_attribute_id`,`contentclass_attribute_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezenumvalue`
--

LOCK TABLES `ezenumvalue` WRITE;
/*!40000 ALTER TABLE `ezenumvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezforgot_password`
--

DROP TABLE IF EXISTS `ezforgot_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezforgot_password` (
  `hash_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezforgot_password_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezforgot_password`
--

LOCK TABLES `ezforgot_password` WRITE;
/*!40000 ALTER TABLE `ezforgot_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezforgot_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezgeneral_digest_user_settings`
--

DROP TABLE IF EXISTS `ezgeneral_digest_user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezgeneral_digest_user_settings` (
  `day` varchar(255) NOT NULL DEFAULT '',
  `digest_type` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receive_digest` int(11) NOT NULL DEFAULT '0',
  `time` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezgeneral_digest_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezgeneral_digest_user_settings`
--

LOCK TABLES `ezgeneral_digest_user_settings` WRITE;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezgmaplocation`
--

DROP TABLE IF EXISTS `ezgmaplocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezgmaplocation` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_version` int(11) NOT NULL DEFAULT '0',
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `address` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`contentobject_attribute_id`,`contentobject_version`),
  KEY `latitude_longitude_key` (`latitude`,`longitude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezgmaplocation`
--

LOCK TABLES `ezgmaplocation` WRITE;
/*!40000 ALTER TABLE `ezgmaplocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezgmaplocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezimagefile`
--

DROP TABLE IF EXISTS `ezimagefile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezimagefile` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `filepath` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `ezimagefile_coid` (`contentobject_attribute_id`),
  KEY `ezimagefile_file` (`filepath`(200))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezimagefile`
--

LOCK TABLES `ezimagefile` WRITE;
/*!40000 ALTER TABLE `ezimagefile` DISABLE KEYS */;
INSERT INTO `ezimagefile` VALUES (172,'var/storage/images/design/plain-site/172-2-eng-US/eZ-Publish-5-Tutorial1.png',1),(172,'var/storage/images/design/plain-site/172-2-eng-US/eZ-Publish-5-Tutorial1_reference.png',4),(172,'var/storage/images/design/plain-site/172-2-eng-US/eZ-Publish-5-Tutorial1_large.png',5),(172,'var/storage/images/design/plain-site/172-2-eng-US/eZ-Publish-5-Tutorial1_small.png',6);
/*!40000 ALTER TABLE `ezimagefile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezinfocollection`
--

DROP TABLE IF EXISTS `ezinfocollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezinfocollection` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) DEFAULT '0',
  `user_identifier` varchar(34) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezinfocollection_co_id_created` (`contentobject_id`,`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezinfocollection`
--

LOCK TABLES `ezinfocollection` WRITE;
/*!40000 ALTER TABLE `ezinfocollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezinfocollection_attribute`
--

DROP TABLE IF EXISTS `ezinfocollection_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezinfocollection_attribute` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_id` int(11) DEFAULT NULL,
  `contentobject_id` int(11) DEFAULT NULL,
  `data_float` float DEFAULT NULL,
  `data_int` int(11) DEFAULT NULL,
  `data_text` longtext,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `informationcollection_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezinfocollection_attr_cca_id` (`contentclass_attribute_id`),
  KEY `ezinfocollection_attr_co_id` (`contentobject_id`),
  KEY `ezinfocollection_attr_coa_id` (`contentobject_attribute_id`),
  KEY `ezinfocollection_attr_ic_id` (`informationcollection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezinfocollection_attribute`
--

LOCK TABLES `ezinfocollection_attribute` WRITE;
/*!40000 ALTER TABLE `ezinfocollection_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_group`
--

DROP TABLE IF EXISTS `ezisbn_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_group` (
  `description` varchar(255) NOT NULL DEFAULT '',
  `group_number` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_group`
--

LOCK TABLES `ezisbn_group` WRITE;
/*!40000 ALTER TABLE `ezisbn_group` DISABLE KEYS */;
INSERT INTO `ezisbn_group` VALUES ('English language',0,1),('English language',1,2),('French language',2,3),('German language',3,4),('Japan',4,5),('Russian Federation and former USSR',5,6),('Iran',600,7),('Kazakhstan',601,8),('Indonesia',602,9),('Saudi Arabia',603,10),('Vietnam',604,11),('Turkey',605,12),('Romania',606,13),('Mexico',607,14),('Macedonia',608,15),('Lithuania',609,16),('Thailand',611,17),('Peru',612,18),('Mauritius',613,19),('Lebanon',614,20),('Hungary',615,21),('Thailand',616,22),('Ukraine',617,23),('China, People\'s Republic',7,24),('Czech Republic and Slovakia',80,25),('India',81,26),('Norway',82,27),('Poland',83,28),('Spain',84,29),('Brazil',85,30),('Serbia and Montenegro',86,31),('Denmark',87,32),('Italy',88,33),('Korea, Republic',89,34),('Netherlands',90,35),('Sweden',91,36),('International NGO Publishers and EC Organizations',92,37),('India',93,38),('Netherlands',94,39),('Argentina',950,40),('Finland',951,41),('Finland',952,42),('Croatia',953,43),('Bulgaria',954,44),('Sri Lanka',955,45),('Chile',956,46),('Taiwan',957,47),('Colombia',958,48),('Cuba',959,49),('Greece',960,50),('Slovenia',961,51),('Hong Kong, China',962,52),('Hungary',963,53),('Iran',964,54),('Israel',965,55),('Ukraine',966,56),('Malaysia',967,57),('Mexico',968,58),('Pakistan',969,59),('Mexico',970,60),('Philippines',971,61),('Portugal',972,62),('Romania',973,63),('Thailand',974,64),('Turkey',975,65),('Caribbean Community',976,66),('Egypt',977,67),('Nigeria',978,68),('Indonesia',979,69),('Venezuela',980,70),('Singapore',981,71),('South Pacific',982,72),('Malaysia',983,73),('Bangladesh',984,74),('Belarus',985,75),('Taiwan',986,76),('Argentina',987,77),('Hong Kong, China',988,78),('Portugal',989,79),('Qatar',9927,80),('Albania',9928,81),('Guatemala',9929,82),('Costa Rica',9930,83),('Algeria',9931,84),('Lao People\'s Democratic Republic',9932,85),('Syria',9933,86),('Latvia',9934,87),('Iceland',9935,88),('Afghanistan',9936,89),('Nepal',9937,90),('Tunisia',9938,91),('Armenia',9939,92),('Montenegro',9940,93),('Georgia',9941,94),('Ecuador',9942,95),('Uzbekistan',9943,96),('Turkey',9944,97),('Dominican Republic',9945,98),('Korea, P.D.R.',9946,99),('Algeria',9947,100),('United Arab Emirates',9948,101),('Estonia',9949,102),('Palestine',9950,103),('Kosova',9951,104),('Azerbaijan',9952,105),('Lebanon',9953,106),('Morocco',9954,107),('Lithuania',9955,108),('Cameroon',9956,109),('Jordan',9957,110),('Bosnia and Herzegovina',9958,111),('Libya',9959,112),('Saudi Arabia',9960,113),('Algeria',9961,114),('Panama',9962,115),('Cyprus',9963,116),('Ghana',9964,117),('Kazakhstan',9965,118),('Kenya',9966,119),('Kyrgyz Republic',9967,120),('Costa Rica',9968,121),('Uganda',9970,122),('Singapore',9971,123),('Peru',9972,124),('Tunisia',9973,125),('Uruguay',9974,126),('Moldova',9975,127),('Tanzania',9976,128),('Costa Rica',9977,129),('Ecuador',9978,130),('Iceland',9979,131),('Papua New Guinea',9980,132),('Morocco',9981,133),('Zambia',9982,134),('Gambia',9983,135),('Latvia',9984,136),('Estonia',9985,137),('Lithuania',9986,138),('Tanzania',9987,139),('Ghana',9988,140),('Macedonia',9989,141),('Bahrain',99901,142),('Gabon',99902,143),('Mauritius',99903,144),('Netherlands Antilles and Aruba',99904,145),('Bolivia',99905,146),('Kuwait',99906,147),('Malawi',99908,148),('Malta',99909,149),('Sierra Leone',99910,150),('Lesotho',99911,151),('Botswana',99912,152),('Andorra',99913,153),('Suriname',99914,154),('Maldives',99915,155),('Namibia',99916,156),('Brunei Darussalam',99917,157),('Faroe Islands',99918,158),('Benin',99919,159),('Andorra',99920,160),('Qatar',99921,161),('Guatemala',99922,162),('El Salvador',99923,163),('Nicaragua',99924,164),('Paraguay',99925,165),('Honduras',99926,166),('Albania',99927,167),('Georgia',99928,168),('Mongolia',99929,169),('Armenia',99930,170),('Seychelles',99931,171),('Malta',99932,172),('Nepal',99933,173),('Dominican Republic',99934,174),('Haiti',99935,175),('Bhutan',99936,176),('Macau',99937,177),('Srpska, Republic of',99938,178),('Guatemala',99939,179),('Georgia',99940,180),('Armenia',99941,181),('Sudan',99942,182),('Albania',99943,183),('Ethiopia',99944,184),('Namibia',99945,185),('Nepal',99946,186),('Tajikistan',99947,187),('Eritrea',99948,188),('Mauritius',99949,189),('Cambodia',99950,190),('Congo',99951,191),('Mali',99952,192),('Paraguay',99953,193),('Bolivia',99954,194),('Srpska, Republic of',99955,195),('Albania',99956,196),('Malta',99957,197),('Bahrain',99958,198),('Luxembourg',99959,199),('Malawi',99960,200),('El Salvador',99961,201),('Mongolia',99962,202),('Cambodia',99963,203),('Nicaragua',99964,204),('Macau',99965,205),('Kuwait',99966,206),('Paraguay',99967,207),('Botswana',99968,208),('France',10,209);
/*!40000 ALTER TABLE `ezisbn_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_group_range`
--

DROP TABLE IF EXISTS `ezisbn_group_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_group_range` (
  `from_number` int(11) NOT NULL DEFAULT '0',
  `group_from` varchar(32) NOT NULL DEFAULT '',
  `group_length` int(11) NOT NULL DEFAULT '0',
  `group_to` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_group_range`
--

LOCK TABLES `ezisbn_group_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_group_range` DISABLE KEYS */;
INSERT INTO `ezisbn_group_range` VALUES (0,'0',1,'5',1,59999),(60000,'600',3,'649',2,64999),(70000,'7',1,'7',3,79999),(80000,'80',2,'94',4,94999),(95000,'950',3,'989',5,98999),(99000,'9900',4,'9989',6,99899),(99900,'99900',5,'99999',7,99999),(10000,'10',2,'10',8,10999);
/*!40000 ALTER TABLE `ezisbn_group_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_registrant_range`
--

DROP TABLE IF EXISTS `ezisbn_registrant_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_registrant_range` (
  `from_number` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn_group_id` int(11) NOT NULL DEFAULT '0',
  `registrant_from` varchar(32) NOT NULL DEFAULT '',
  `registrant_length` int(11) NOT NULL DEFAULT '0',
  `registrant_to` varchar(32) NOT NULL DEFAULT '',
  `to_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=927 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_registrant_range`
--

LOCK TABLES `ezisbn_registrant_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_registrant_range` DISABLE KEYS */;
INSERT INTO `ezisbn_registrant_range` VALUES (0,1,1,'00',2,'19',19999),(20000,2,1,'200',3,'699',69999),(70000,3,1,'7000',4,'8499',84999),(85000,4,1,'85000',5,'89999',89999),(90000,5,1,'900000',6,'949999',94999),(95000,6,1,'9500000',7,'9999999',99999),(0,7,2,'00',2,'09',9999),(10000,8,2,'100',3,'399',39999),(40000,9,2,'4000',4,'5499',54999),(55000,10,2,'55000',5,'86979',86979),(86980,11,2,'869800',6,'998999',99899),(99900,12,2,'9990000',7,'9999999',99999),(0,13,3,'00',2,'19',19999),(20000,14,3,'200',3,'349',34999),(35000,15,3,'35000',5,'39999',39999),(40000,16,3,'400',3,'699',69999),(70000,17,3,'7000',4,'8399',83999),(84000,18,3,'84000',5,'89999',89999),(90000,19,3,'900000',6,'949999',94999),(95000,20,3,'9500000',7,'9999999',99999),(0,21,4,'00',2,'02',2999),(3000,22,4,'030',3,'033',3399),(3400,23,4,'0340',4,'0369',3699),(3700,24,4,'03700',5,'03999',3999),(4000,25,4,'04',2,'19',19999),(20000,26,4,'200',3,'699',69999),(70000,27,4,'7000',4,'8499',84999),(85000,28,4,'85000',5,'89999',89999),(90000,29,4,'900000',6,'949999',94999),(95000,30,4,'9500000',7,'9539999',95399),(95400,31,4,'95400',5,'96999',96999),(97000,32,4,'9700000',7,'9899999',98999),(99000,33,4,'99000',5,'99499',99499),(99500,34,4,'99500',5,'99999',99999),(0,35,5,'00',2,'19',19999),(20000,36,5,'200',3,'699',69999),(70000,37,5,'7000',4,'8499',84999),(85000,38,5,'85000',5,'89999',89999),(90000,39,5,'900000',6,'949999',94999),(95000,40,5,'9500000',7,'9999999',99999),(0,41,6,'00',2,'19',19999),(20000,42,6,'200',3,'420',42099),(42100,43,6,'4210',4,'4299',42999),(43000,44,6,'430',3,'430',43099),(43100,45,6,'4310',4,'4399',43999),(44000,46,6,'440',3,'440',44099),(44100,47,6,'4410',4,'4499',44999),(45000,48,6,'450',3,'699',69999),(70000,49,6,'7000',4,'8499',84999),(85000,50,6,'85000',5,'89999',89999),(90000,51,6,'900000',6,'909999',90999),(91000,52,6,'91000',5,'91999',91999),(92000,53,6,'9200',4,'9299',92999),(93000,54,6,'93000',5,'94999',94999),(95000,55,6,'9500000',7,'9500999',95009),(95010,56,6,'9501',4,'9799',97999),(98000,57,6,'98000',5,'98999',98999),(99000,58,6,'9900000',7,'9909999',99099),(99100,59,6,'9910',4,'9999',99999),(0,60,7,'00',2,'09',9999),(10000,61,7,'100',3,'499',49999),(50000,62,7,'5000',4,'8999',89999),(90000,63,7,'90000',5,'99999',99999),(0,64,8,'00',2,'19',19999),(20000,65,8,'200',3,'699',69999),(70000,66,8,'7000',4,'7999',79999),(80000,67,8,'80000',5,'84999',84999),(85000,68,8,'85',2,'99',99999),(0,69,9,'00',2,'19',19999),(20000,70,9,'200',3,'799',79999),(80000,71,9,'8000',4,'9499',94999),(95000,72,9,'95000',5,'99999',99999),(0,73,10,'00',2,'04',4999),(5000,74,10,'05',2,'49',49999),(50000,75,10,'500',3,'799',79999),(80000,76,10,'8000',4,'8999',89999),(90000,77,10,'90000',5,'99999',99999),(0,78,11,'0',1,'4',49999),(50000,79,11,'50',2,'89',89999),(90000,80,11,'900',3,'979',97999),(98000,81,11,'9800',4,'9999',99999),(1000,82,12,'01',2,'09',9999),(10000,83,12,'100',3,'399',39999),(40000,84,12,'4000',4,'5999',59999),(60000,85,12,'60000',5,'89999',89999),(90000,86,12,'90',2,'99',99999),(0,87,13,'0',1,'0',9999),(10000,88,13,'10',2,'49',49999),(50000,89,13,'500',3,'799',79999),(80000,90,13,'8000',4,'9199',91999),(92000,91,13,'92000',5,'99999',99999),(0,92,14,'00',2,'39',39999),(40000,93,14,'400',3,'749',74999),(75000,94,14,'7500',4,'9499',94999),(95000,95,14,'95000',5,'99999',99999),(0,96,15,'0',1,'0',9999),(10000,97,15,'10',2,'19',19999),(20000,98,15,'200',3,'449',44999),(45000,99,15,'4500',4,'6499',64999),(65000,100,15,'65000',5,'69999',69999),(70000,101,15,'7',1,'9',99999),(0,102,16,'00',2,'39',39999),(40000,103,16,'400',3,'799',79999),(80000,104,16,'8000',4,'9499',94999),(95000,105,16,'95000',5,'99999',99999),(0,106,18,'00',2,'29',29999),(30000,107,18,'300',3,'399',39999),(40000,108,18,'4000',4,'4499',44999),(45000,109,18,'45000',5,'49999',49999),(50000,110,18,'50',2,'99',99999),(0,111,19,'0',1,'9',99999),(0,112,20,'00',2,'39',39999),(40000,113,20,'400',3,'799',79999),(80000,114,20,'8000',4,'9499',94999),(95000,115,20,'95000',5,'99999',99999),(0,116,21,'00',2,'09',9999),(10000,117,21,'100',3,'499',49999),(50000,118,21,'5000',4,'7999',79999),(80000,119,21,'80000',5,'89999',89999),(0,120,22,'00',2,'19',19999),(20000,121,22,'200',3,'699',69999),(70000,122,22,'7000',4,'8999',89999),(90000,123,22,'90000',5,'99999',99999),(0,124,23,'00',2,'49',49999),(50000,125,23,'500',3,'699',69999),(70000,126,23,'7000',4,'8999',89999),(90000,127,23,'90000',5,'99999',99999),(0,128,24,'00',2,'09',9999),(10000,129,24,'100',3,'499',49999),(50000,130,24,'5000',4,'7999',79999),(80000,131,24,'80000',5,'89999',89999),(90000,132,24,'900000',6,'999999',99999),(0,133,25,'00',2,'19',19999),(20000,134,25,'200',3,'699',69999),(70000,135,25,'7000',4,'8499',84999),(85000,136,25,'85000',5,'89999',89999),(90000,137,25,'900000',6,'999999',99999),(0,138,26,'00',2,'19',19999),(20000,139,26,'200',3,'699',69999),(70000,140,26,'7000',4,'8499',84999),(85000,141,26,'85000',5,'89999',89999),(90000,142,26,'900000',6,'999999',99999),(0,143,27,'00',2,'19',19999),(20000,144,27,'200',3,'699',69999),(70000,145,27,'7000',4,'8999',89999),(90000,146,27,'90000',5,'98999',98999),(99000,147,27,'990000',6,'999999',99999),(0,148,28,'00',2,'19',19999),(20000,149,28,'200',3,'599',59999),(60000,150,28,'60000',5,'69999',69999),(70000,151,28,'7000',4,'8499',84999),(85000,152,28,'85000',5,'89999',89999),(90000,153,28,'900000',6,'999999',99999),(0,154,29,'00',2,'14',14999),(15000,155,29,'15000',5,'19999',19999),(20000,156,29,'200',3,'699',69999),(70000,157,29,'7000',4,'8499',84999),(85000,158,29,'85000',5,'89999',89999),(90000,159,29,'9000',4,'9199',91999),(92000,160,29,'920000',6,'923999',92399),(92400,161,29,'92400',5,'92999',92999),(93000,162,29,'930000',6,'949999',94999),(95000,163,29,'95000',5,'96999',96999),(97000,164,29,'9700',4,'9999',99999),(0,165,30,'00',2,'19',19999),(20000,166,30,'200',3,'599',59999),(60000,167,30,'60000',5,'69999',69999),(70000,168,30,'7000',4,'8499',84999),(85000,169,30,'85000',5,'89999',89999),(90000,170,30,'900000',6,'979999',97999),(98000,171,30,'98000',5,'99999',99999),(0,172,31,'00',2,'29',29999),(30000,173,31,'300',3,'599',59999),(60000,174,31,'6000',4,'7999',79999),(80000,175,31,'80000',5,'89999',89999),(90000,176,31,'900000',6,'999999',99999),(0,177,32,'00',2,'29',29999),(40000,178,32,'400',3,'649',64999),(70000,179,32,'7000',4,'7999',79999),(85000,180,32,'85000',5,'94999',94999),(97000,181,32,'970000',6,'999999',99999),(0,182,33,'00',2,'19',19999),(20000,183,33,'200',3,'599',59999),(60000,184,33,'6000',4,'8499',84999),(85000,185,33,'85000',5,'89999',89999),(90000,186,33,'900000',6,'949999',94999),(95000,187,33,'95000',5,'99999',99999),(0,188,34,'00',2,'24',24999),(25000,189,34,'250',3,'549',54999),(55000,190,34,'5500',4,'8499',84999),(85000,191,34,'85000',5,'94999',94999),(95000,192,34,'950000',6,'969999',96999),(97000,193,34,'97000',5,'98999',98999),(99000,194,34,'990',3,'999',99999),(0,195,35,'00',2,'19',19999),(20000,196,35,'200',3,'499',49999),(50000,197,35,'5000',4,'6999',69999),(70000,198,35,'70000',5,'79999',79999),(80000,199,35,'800000',6,'849999',84999),(85000,200,35,'8500',4,'8999',89999),(90000,201,35,'90',2,'90',90999),(91000,202,35,'910000',6,'939999',93999),(94000,203,35,'94',2,'94',94999),(95000,204,35,'950000',6,'999999',99999),(0,205,36,'0',1,'1',19999),(20000,206,36,'20',2,'49',49999),(50000,207,36,'500',3,'649',64999),(70000,208,36,'7000',4,'7999',79999),(85000,209,36,'85000',5,'94999',94999),(97000,210,36,'970000',6,'999999',99999),(0,211,37,'0',1,'5',59999),(60000,212,37,'60',2,'79',79999),(80000,213,37,'800',3,'899',89999),(90000,214,37,'9000',4,'9499',94999),(95000,215,37,'95000',5,'98999',98999),(99000,216,37,'990000',6,'999999',99999),(0,217,38,'00',2,'09',9999),(10000,218,38,'100',3,'499',49999),(50000,219,38,'5000',4,'7999',79999),(80000,220,38,'80000',5,'94999',94999),(95000,221,38,'950000',6,'999999',99999),(0,222,39,'000',3,'599',59999),(60000,223,39,'6000',4,'8999',89999),(90000,224,39,'90000',5,'99999',99999),(0,225,40,'00',2,'49',49999),(50000,226,40,'500',3,'899',89999),(90000,227,40,'9000',4,'9899',98999),(99000,228,40,'99000',5,'99999',99999),(0,229,41,'0',1,'1',19999),(20000,230,41,'20',2,'54',54999),(55000,231,41,'550',3,'889',88999),(89000,232,41,'8900',4,'9499',94999),(95000,233,41,'95000',5,'99999',99999),(0,234,42,'00',2,'19',19999),(20000,235,42,'200',3,'499',49999),(50000,236,42,'5000',4,'5999',59999),(60000,237,42,'60',2,'65',65999),(66000,238,42,'6600',4,'6699',66999),(67000,239,42,'67000',5,'69999',69999),(70000,240,42,'7000',4,'7999',79999),(80000,241,42,'80',2,'94',94999),(95000,242,42,'9500',4,'9899',98999),(99000,243,42,'99000',5,'99999',99999),(0,244,43,'0',1,'0',9999),(10000,245,43,'10',2,'14',14999),(15000,246,43,'150',3,'549',54999),(55000,247,43,'55000',5,'59999',59999),(60000,248,43,'6000',4,'9499',94999),(95000,249,43,'95000',5,'99999',99999),(0,250,44,'00',2,'28',28999),(29000,251,44,'2900',4,'2999',29999),(30000,252,44,'300',3,'799',79999),(80000,253,44,'8000',4,'8999',89999),(90000,254,44,'90000',5,'92999',92999),(93000,255,44,'9300',4,'9999',99999),(0,256,45,'0000',4,'1999',19999),(20000,257,45,'20',2,'49',49999),(50000,258,45,'50000',5,'54999',54999),(55000,259,45,'550',3,'799',79999),(80000,260,45,'8000',4,'9499',94999),(95000,261,45,'95000',5,'99999',99999),(0,262,46,'00',2,'19',19999),(20000,263,46,'200',3,'699',69999),(70000,264,46,'7000',4,'9999',99999),(0,265,47,'00',2,'02',2999),(3000,266,47,'0300',4,'0499',4999),(5000,267,47,'05',2,'19',19999),(20000,268,47,'2000',4,'2099',20999),(21000,269,47,'21',2,'27',27999),(28000,270,47,'28000',5,'30999',30999),(31000,271,47,'31',2,'43',43999),(44000,272,47,'440',3,'819',81999),(82000,273,47,'8200',4,'9699',96999),(97000,274,47,'97000',5,'99999',99999),(0,275,48,'00',2,'56',56999),(57000,276,48,'57000',5,'59999',59999),(60000,277,48,'600',3,'799',79999),(80000,278,48,'8000',4,'9499',94999),(95000,279,48,'95000',5,'99999',99999),(0,280,49,'00',2,'19',19999),(20000,281,49,'200',3,'699',69999),(70000,282,49,'7000',4,'8499',84999),(85000,283,49,'85000',5,'99999',99999),(0,284,50,'00',2,'19',19999),(20000,285,50,'200',3,'659',65999),(66000,286,50,'6600',4,'6899',68999),(69000,287,50,'690',3,'699',69999),(70000,288,50,'7000',4,'8499',84999),(85000,289,50,'85000',5,'92999',92999),(93000,290,50,'93',2,'93',93999),(94000,291,50,'9400',4,'9799',97999),(98000,292,50,'98000',5,'99999',99999),(0,293,51,'00',2,'19',19999),(20000,294,51,'200',3,'599',59999),(60000,295,51,'6000',4,'8999',89999),(90000,296,51,'90000',5,'94999',94999),(0,297,52,'00',2,'19',19999),(20000,298,52,'200',3,'699',69999),(70000,299,52,'7000',4,'8499',84999),(85000,300,52,'85000',5,'86999',86999),(87000,301,52,'8700',4,'8999',89999),(90000,302,52,'900',3,'999',99999),(0,303,53,'00',2,'19',19999),(20000,304,53,'200',3,'699',69999),(70000,305,53,'7000',4,'8499',84999),(85000,306,53,'85000',5,'89999',89999),(90000,307,53,'9000',4,'9999',99999),(0,308,54,'00',2,'14',14999),(15000,309,54,'150',3,'249',24999),(25000,310,54,'2500',4,'2999',29999),(30000,311,54,'300',3,'549',54999),(55000,312,54,'5500',4,'8999',89999),(90000,313,54,'90000',5,'96999',96999),(97000,314,54,'970',3,'989',98999),(99000,315,54,'9900',4,'9999',99999),(0,316,55,'00',2,'19',19999),(20000,317,55,'200',3,'599',59999),(70000,318,55,'7000',4,'7999',79999),(90000,319,55,'90000',5,'99999',99999),(0,320,56,'00',2,'14',14999),(15000,321,56,'1500',4,'1699',16999),(17000,322,56,'170',3,'199',19999),(20000,323,56,'2000',4,'2999',29999),(30000,324,56,'300',3,'699',69999),(70000,325,56,'7000',4,'8999',89999),(90000,326,56,'90000',5,'99999',99999),(0,327,57,'00',2,'00',999),(1000,328,57,'0100',4,'0999',9999),(10000,329,57,'10000',5,'19999',19999),(30000,330,57,'300',3,'499',49999),(50000,331,57,'5000',4,'5999',59999),(60000,332,57,'60',2,'89',89999),(90000,333,57,'900',3,'989',98999),(99000,334,57,'9900',4,'9989',99899),(99900,335,57,'99900',5,'99999',99999),(1000,336,58,'01',2,'39',39999),(40000,337,58,'400',3,'499',49999),(50000,338,58,'5000',4,'7999',79999),(80000,339,58,'800',3,'899',89999),(90000,340,58,'9000',4,'9999',99999),(0,341,59,'0',1,'1',19999),(20000,342,59,'20',2,'39',39999),(40000,343,59,'400',3,'799',79999),(80000,344,59,'8000',4,'9999',99999),(1000,345,60,'01',2,'59',59999),(60000,346,60,'600',3,'899',89999),(90000,347,60,'9000',4,'9099',90999),(91000,348,60,'91000',5,'96999',96999),(97000,349,60,'9700',4,'9999',99999),(0,350,61,'000',3,'015',1599),(1600,351,61,'0160',4,'0199',1999),(2000,352,61,'02',2,'02',2999),(3000,353,61,'0300',4,'0599',5999),(6000,354,61,'06',2,'09',9999),(10000,355,61,'10',2,'49',49999),(50000,356,61,'500',3,'849',84999),(85000,357,61,'8500',4,'9099',90999),(91000,358,61,'91000',5,'98999',98999),(99000,359,61,'9900',4,'9999',99999),(0,360,62,'0',1,'1',19999),(20000,361,62,'20',2,'54',54999),(55000,362,62,'550',3,'799',79999),(80000,363,62,'8000',4,'9499',94999),(95000,364,62,'95000',5,'99999',99999),(0,365,63,'0',1,'0',9999),(10000,366,63,'100',3,'169',16999),(17000,367,63,'1700',4,'1999',19999),(20000,368,63,'20',2,'54',54999),(55000,369,63,'550',3,'759',75999),(76000,370,63,'7600',4,'8499',84999),(85000,371,63,'85000',5,'88999',88999),(89000,372,63,'8900',4,'9499',94999),(95000,373,63,'95000',5,'99999',99999),(0,374,64,'00',2,'19',19999),(20000,375,64,'200',3,'699',69999),(70000,376,64,'7000',4,'8499',84999),(85000,377,64,'85000',5,'89999',89999),(90000,378,64,'90000',5,'94999',94999),(95000,379,64,'9500',4,'9999',99999),(0,380,65,'00000',5,'01999',1999),(2000,381,65,'02',2,'24',24999),(25000,382,65,'250',3,'599',59999),(60000,383,65,'6000',4,'9199',91999),(92000,384,65,'92000',5,'98999',98999),(99000,385,65,'990',3,'999',99999),(0,386,66,'0',1,'3',39999),(40000,387,66,'40',2,'59',59999),(60000,388,66,'600',3,'799',79999),(80000,389,66,'8000',4,'9499',94999),(95000,390,66,'95000',5,'99999',99999),(0,391,67,'00',2,'19',19999),(20000,392,67,'200',3,'499',49999),(50000,393,67,'5000',4,'6999',69999),(70000,394,67,'700',3,'999',99999),(0,395,68,'000',3,'199',19999),(20000,396,68,'2000',4,'2999',29999),(30000,397,68,'30000',5,'79999',79999),(80000,398,68,'8000',4,'8999',89999),(90000,399,68,'900',3,'999',99999),(0,400,69,'000',3,'099',9999),(10000,401,69,'1000',4,'1499',14999),(15000,402,69,'15000',5,'19999',19999),(20000,403,69,'20',2,'29',29999),(30000,404,69,'3000',4,'3999',39999),(40000,405,69,'400',3,'799',79999),(80000,406,69,'8000',4,'9499',94999),(95000,407,69,'95000',5,'99999',99999),(0,408,70,'00',2,'19',19999),(20000,409,70,'200',3,'599',59999),(60000,410,70,'6000',4,'9999',99999),(0,411,71,'00',2,'11',11999),(12000,412,71,'1200',4,'1999',19999),(20000,413,71,'200',3,'289',28999),(29000,414,71,'2900',4,'9999',99999),(0,415,72,'00',2,'09',9999),(10000,416,72,'100',3,'699',69999),(70000,417,72,'70',2,'89',89999),(90000,418,72,'9000',4,'9799',97999),(98000,419,72,'98000',5,'99999',99999),(0,420,73,'00',2,'01',1999),(2000,421,73,'020',3,'199',19999),(20000,422,73,'2000',4,'3999',39999),(40000,423,73,'40000',5,'44999',44999),(45000,424,73,'45',2,'49',49999),(50000,425,73,'50',2,'79',79999),(80000,426,73,'800',3,'899',89999),(90000,427,73,'9000',4,'9899',98999),(99000,428,73,'99000',5,'99999',99999),(0,429,74,'00',2,'39',39999),(40000,430,74,'400',3,'799',79999),(80000,431,74,'8000',4,'8999',89999),(90000,432,74,'90000',5,'99999',99999),(0,433,75,'00',2,'39',39999),(40000,434,75,'400',3,'599',59999),(60000,435,75,'6000',4,'8999',89999),(90000,436,75,'90000',5,'99999',99999),(0,437,76,'00',2,'11',11999),(12000,438,76,'120',3,'559',55999),(56000,439,76,'5600',4,'7999',79999),(80000,440,76,'80000',5,'99999',99999),(0,441,77,'00',2,'09',9999),(10000,442,77,'1000',4,'1999',19999),(20000,443,77,'20000',5,'29999',29999),(30000,444,77,'30',2,'49',49999),(50000,445,77,'500',3,'899',89999),(90000,446,77,'9000',4,'9499',94999),(95000,447,77,'95000',5,'99999',99999),(0,448,78,'00',2,'14',14999),(15000,449,78,'15000',5,'16999',16999),(17000,450,78,'17000',5,'19999',19999),(20000,451,78,'200',3,'799',79999),(80000,452,78,'8000',4,'9699',96999),(97000,453,78,'97000',5,'99999',99999),(0,454,79,'0',1,'1',19999),(20000,455,79,'20',2,'54',54999),(55000,456,79,'550',3,'799',79999),(80000,457,79,'8000',4,'9499',94999),(95000,458,79,'95000',5,'99999',99999),(0,459,80,'00',2,'09',9999),(10000,460,80,'100',3,'399',39999),(40000,461,80,'4000',4,'4999',49999),(0,462,81,'00',2,'09',9999),(10000,463,81,'100',3,'399',39999),(40000,464,81,'4000',4,'4999',49999),(0,465,82,'0',1,'3',39999),(40000,466,82,'40',2,'54',54999),(55000,467,82,'550',3,'799',79999),(80000,468,82,'8000',4,'9999',99999),(0,469,83,'00',2,'49',49999),(50000,470,83,'500',3,'939',93999),(94000,471,83,'9400',4,'9999',99999),(0,472,84,'00',2,'29',29999),(30000,473,84,'300',3,'899',89999),(90000,474,84,'9000',4,'9999',99999),(0,475,85,'00',2,'39',39999),(40000,476,85,'400',3,'849',84999),(85000,477,85,'8500',4,'9999',99999),(0,478,86,'0',1,'0',9999),(10000,479,86,'10',2,'39',39999),(40000,480,86,'400',3,'899',89999),(90000,481,86,'9000',4,'9999',99999),(0,482,87,'0',1,'0',9999),(10000,483,87,'10',2,'49',49999),(50000,484,87,'500',3,'799',79999),(80000,485,87,'8000',4,'9999',99999),(0,486,88,'0',1,'0',9999),(10000,487,88,'10',2,'39',39999),(40000,488,88,'400',3,'899',89999),(90000,489,88,'9000',4,'9999',99999),(0,490,89,'0',1,'1',19999),(20000,491,89,'20',2,'39',39999),(40000,492,89,'400',3,'799',79999),(80000,493,89,'8000',4,'9999',99999),(0,494,90,'0',1,'2',29999),(30000,495,90,'30',2,'49',49999),(50000,496,90,'500',3,'799',79999),(80000,497,90,'8000',4,'9999',99999),(0,498,91,'00',2,'79',79999),(80000,499,91,'800',3,'949',94999),(95000,500,91,'9500',4,'9999',99999),(0,501,92,'0',1,'4',49999),(50000,502,92,'50',2,'79',79999),(80000,503,92,'800',3,'899',89999),(90000,504,92,'9000',4,'9999',99999),(0,505,93,'0',1,'1',19999),(20000,506,93,'20',2,'49',49999),(50000,507,93,'500',3,'899',89999),(90000,508,93,'9000',4,'9999',99999),(0,509,94,'0',1,'0',9999),(10000,510,94,'10',2,'39',39999),(40000,511,94,'400',3,'899',89999),(90000,512,94,'9000',4,'9999',99999),(0,513,95,'00',2,'89',89999),(90000,514,95,'900',3,'984',98499),(98500,515,95,'9850',4,'9999',99999),(0,516,96,'00',2,'29',29999),(30000,517,96,'300',3,'399',39999),(40000,518,96,'4000',4,'9999',99999),(0,519,97,'0000',4,'0999',9999),(10000,520,97,'100',3,'499',49999),(50000,521,97,'5000',4,'5999',59999),(60000,522,97,'60',2,'69',69999),(70000,523,97,'700',3,'799',79999),(80000,524,97,'80',2,'89',89999),(90000,525,97,'900',3,'999',99999),(0,526,98,'00',2,'00',999),(1000,527,98,'010',3,'079',7999),(8000,528,98,'08',2,'39',39999),(40000,529,98,'400',3,'569',56999),(57000,530,98,'57',2,'57',57999),(58000,531,98,'580',3,'849',84999),(85000,532,98,'8500',4,'9999',99999),(0,533,99,'0',1,'1',19999),(20000,534,99,'20',2,'39',39999),(40000,535,99,'400',3,'899',89999),(90000,536,99,'9000',4,'9999',99999),(0,537,100,'0',1,'1',19999),(20000,538,100,'20',2,'79',79999),(80000,539,100,'800',3,'999',99999),(0,540,101,'00',2,'39',39999),(40000,541,101,'400',3,'849',84999),(85000,542,101,'8500',4,'9999',99999),(0,543,102,'0',1,'0',9999),(10000,544,102,'10',2,'39',39999),(40000,545,102,'400',3,'899',89999),(90000,546,102,'9000',4,'9999',99999),(0,547,103,'00',2,'29',29999),(30000,548,103,'300',3,'849',84999),(85000,549,103,'8500',4,'9999',99999),(0,550,104,'00',2,'39',39999),(40000,551,104,'400',3,'849',84999),(85000,552,104,'8500',4,'9999',99999),(0,553,105,'0',1,'1',19999),(20000,554,105,'20',2,'39',39999),(40000,555,105,'400',3,'799',79999),(80000,556,105,'8000',4,'9999',99999),(0,557,106,'0',1,'0',9999),(10000,558,106,'10',2,'39',39999),(40000,559,106,'400',3,'599',59999),(60000,560,106,'60',2,'89',89999),(90000,561,106,'9000',4,'9999',99999),(0,562,107,'0',1,'1',19999),(20000,563,107,'20',2,'39',39999),(40000,564,107,'400',3,'799',79999),(80000,565,107,'8000',4,'9999',99999),(0,566,108,'00',2,'39',39999),(40000,567,108,'400',3,'929',92999),(93000,568,108,'9300',4,'9999',99999),(0,569,109,'0',1,'0',9999),(10000,570,109,'10',2,'39',39999),(40000,571,109,'400',3,'899',89999),(90000,572,109,'9000',4,'9999',99999),(0,573,110,'00',2,'39',39999),(40000,574,110,'400',3,'699',69999),(70000,575,110,'70',2,'84',84999),(85000,576,110,'8500',4,'8799',87999),(88000,577,110,'88',2,'99',99999),(0,578,111,'0',1,'0',9999),(10000,579,111,'10',2,'18',18999),(19000,580,111,'1900',4,'1999',19999),(20000,581,111,'20',2,'49',49999),(50000,582,111,'500',3,'899',89999),(90000,583,111,'9000',4,'9999',99999),(0,584,112,'0',1,'1',19999),(20000,585,112,'20',2,'79',79999),(80000,586,112,'800',3,'949',94999),(95000,587,112,'9500',4,'9999',99999),(0,588,113,'00',2,'59',59999),(60000,589,113,'600',3,'899',89999),(90000,590,113,'9000',4,'9999',99999),(0,591,114,'0',1,'2',29999),(30000,592,114,'30',2,'69',69999),(70000,593,114,'700',3,'949',94999),(95000,594,114,'9500',4,'9999',99999),(0,595,115,'00',2,'54',54999),(55000,596,115,'5500',4,'5599',55999),(56000,597,115,'56',2,'59',59999),(60000,598,115,'600',3,'849',84999),(85000,599,115,'8500',4,'9999',99999),(0,600,116,'0',1,'2',29999),(30000,601,116,'30',2,'54',54999),(55000,602,116,'550',3,'734',73499),(73500,603,116,'7350',4,'7499',74999),(75000,604,116,'7500',4,'9999',99999),(0,605,117,'0',1,'6',69999),(70000,606,117,'70',2,'94',94999),(95000,607,117,'950',3,'999',99999),(0,608,118,'00',2,'39',39999),(40000,609,118,'400',3,'899',89999),(90000,610,118,'9000',4,'9999',99999),(0,611,119,'000',3,'149',14999),(15000,612,119,'1500',4,'1999',19999),(20000,613,119,'20',2,'69',69999),(70000,614,119,'7000',4,'7499',74999),(75000,615,119,'750',3,'959',95999),(96000,616,119,'9600',4,'9999',99999),(0,617,120,'00',2,'39',39999),(40000,618,120,'400',3,'899',89999),(90000,619,120,'9000',4,'9999',99999),(0,620,121,'00',2,'49',49999),(50000,621,121,'500',3,'939',93999),(94000,622,121,'9400',4,'9999',99999),(0,623,122,'00',2,'39',39999),(40000,624,122,'400',3,'899',89999),(90000,625,122,'9000',4,'9999',99999),(0,626,123,'0',1,'5',59999),(60000,627,123,'60',2,'89',89999),(90000,628,123,'900',3,'989',98999),(99000,629,123,'9900',4,'9999',99999),(0,630,124,'00',2,'09',9999),(10000,631,124,'1',1,'1',19999),(20000,632,124,'200',3,'249',24999),(25000,633,124,'2500',4,'2999',29999),(30000,634,124,'30',2,'59',59999),(60000,635,124,'600',3,'899',89999),(90000,636,124,'9000',4,'9999',99999),(0,637,125,'00',2,'05',5999),(6000,638,125,'060',3,'089',8999),(9000,639,125,'0900',4,'0999',9999),(10000,640,125,'10',2,'69',69999),(70000,641,125,'700',3,'969',96999),(97000,642,125,'9700',4,'9999',99999),(0,643,126,'0',1,'2',29999),(30000,644,126,'30',2,'54',54999),(55000,645,126,'550',3,'749',74999),(75000,646,126,'7500',4,'9499',94999),(95000,647,126,'95',2,'99',99999),(0,648,127,'0',1,'0',9999),(10000,649,127,'100',3,'399',39999),(40000,650,127,'4000',4,'4499',44999),(45000,651,127,'45',2,'89',89999),(90000,652,127,'900',3,'949',94999),(95000,653,127,'9500',4,'9999',99999),(0,654,128,'0',1,'5',59999),(60000,655,128,'60',2,'89',89999),(90000,656,128,'900',3,'989',98999),(99000,657,128,'9900',4,'9999',99999),(0,658,129,'00',2,'89',89999),(90000,659,129,'900',3,'989',98999),(99000,660,129,'9900',4,'9999',99999),(0,661,130,'00',2,'29',29999),(30000,662,130,'300',3,'399',39999),(40000,663,130,'40',2,'94',94999),(95000,664,130,'950',3,'989',98999),(99000,665,130,'9900',4,'9999',99999),(0,666,131,'0',1,'4',49999),(50000,667,131,'50',2,'64',64999),(65000,668,131,'650',3,'659',65999),(66000,669,131,'66',2,'75',75999),(76000,670,131,'760',3,'899',89999),(90000,671,131,'9000',4,'9999',99999),(0,672,132,'0',1,'3',39999),(40000,673,132,'40',2,'89',89999),(90000,674,132,'900',3,'989',98999),(99000,675,132,'9900',4,'9999',99999),(0,676,133,'00',2,'09',9999),(10000,677,133,'100',3,'159',15999),(16000,678,133,'1600',4,'1999',19999),(20000,679,133,'20',2,'79',79999),(80000,680,133,'800',3,'949',94999),(95000,681,133,'9500',4,'9999',99999),(0,682,134,'00',2,'79',79999),(80000,683,134,'800',3,'989',98999),(99000,684,134,'9900',4,'9999',99999),(80000,685,135,'80',2,'94',94999),(95000,686,135,'950',3,'989',98999),(99000,687,135,'9900',4,'9999',99999),(0,688,136,'00',2,'49',49999),(50000,689,136,'500',3,'899',89999),(90000,690,136,'9000',4,'9999',99999),(0,691,137,'0',1,'4',49999),(50000,692,137,'50',2,'79',79999),(80000,693,137,'800',3,'899',89999),(90000,694,137,'9000',4,'9999',99999),(0,695,138,'00',2,'39',39999),(40000,696,138,'400',3,'899',89999),(90000,697,138,'9000',4,'9399',93999),(94000,698,138,'940',3,'969',96999),(97000,699,138,'97',2,'99',99999),(0,700,139,'00',2,'39',39999),(40000,701,139,'400',3,'879',87999),(88000,702,139,'8800',4,'9999',99999),(0,703,140,'0',1,'2',29999),(30000,704,140,'30',2,'54',54999),(55000,705,140,'550',3,'749',74999),(75000,706,140,'7500',4,'9999',99999),(0,707,141,'0',1,'0',9999),(10000,708,141,'100',3,'199',19999),(20000,709,141,'2000',4,'2999',29999),(30000,710,141,'30',2,'59',59999),(60000,711,141,'600',3,'949',94999),(95000,712,141,'9500',4,'9999',99999),(0,713,142,'00',2,'49',49999),(50000,714,142,'500',3,'799',79999),(80000,715,142,'80',2,'99',99999),(0,716,144,'0',1,'1',19999),(20000,717,144,'20',2,'89',89999),(90000,718,144,'900',3,'999',99999),(0,719,145,'0',1,'5',59999),(60000,720,145,'60',2,'89',89999),(90000,721,145,'900',3,'999',99999),(0,722,146,'0',1,'3',39999),(40000,723,146,'40',2,'79',79999),(80000,724,146,'800',3,'999',99999),(0,725,147,'0',1,'2',29999),(30000,726,147,'30',2,'59',59999),(60000,727,147,'600',3,'699',69999),(70000,728,147,'70',2,'89',89999),(90000,729,147,'90',2,'94',94999),(95000,730,147,'950',3,'999',99999),(0,731,148,'0',1,'0',9999),(10000,732,148,'10',2,'89',89999),(90000,733,148,'900',3,'999',99999),(0,734,149,'0',1,'3',39999),(40000,735,149,'40',2,'94',94999),(95000,736,149,'950',3,'999',99999),(0,737,150,'0',1,'2',29999),(30000,738,150,'30',2,'89',89999),(90000,739,150,'900',3,'999',99999),(0,740,151,'00',2,'59',59999),(60000,741,151,'600',3,'999',99999),(0,742,152,'0',1,'3',39999),(40000,743,152,'400',3,'599',59999),(60000,744,152,'60',2,'89',89999),(90000,745,152,'900',3,'999',99999),(0,746,153,'0',1,'2',29999),(30000,747,153,'30',2,'35',35999),(60000,748,153,'600',3,'604',60499),(0,749,154,'0',1,'4',49999),(50000,750,154,'50',2,'89',89999),(90000,751,154,'900',3,'999',99999),(0,752,155,'0',1,'4',49999),(50000,753,155,'50',2,'79',79999),(80000,754,155,'800',3,'999',99999),(0,755,156,'0',1,'2',29999),(30000,756,156,'30',2,'69',69999),(70000,757,156,'700',3,'999',99999),(0,758,157,'0',1,'2',29999),(30000,759,157,'30',2,'89',89999),(90000,760,157,'900',3,'999',99999),(0,761,158,'0',1,'3',39999),(40000,762,158,'40',2,'79',79999),(80000,763,158,'800',3,'999',99999),(0,764,159,'0',1,'2',29999),(30000,765,159,'300',3,'399',39999),(40000,766,159,'40',2,'69',69999),(90000,767,159,'900',3,'999',99999),(0,768,160,'0',1,'4',49999),(50000,769,160,'50',2,'89',89999),(90000,770,160,'900',3,'999',99999),(0,771,161,'0',1,'1',19999),(20000,772,161,'20',2,'69',69999),(70000,773,161,'700',3,'799',79999),(80000,774,161,'8',1,'8',89999),(90000,775,161,'90',2,'99',99999),(0,776,162,'0',1,'3',39999),(40000,777,162,'40',2,'69',69999),(70000,778,162,'700',3,'999',99999),(0,779,163,'0',1,'1',19999),(20000,780,163,'20',2,'79',79999),(80000,781,163,'800',3,'999',99999),(0,782,164,'0',1,'1',19999),(20000,783,164,'20',2,'79',79999),(80000,784,164,'800',3,'999',99999),(0,785,165,'0',1,'3',39999),(40000,786,165,'40',2,'79',79999),(80000,787,165,'800',3,'999',99999),(0,788,166,'0',1,'0',9999),(10000,789,166,'10',2,'59',59999),(60000,790,166,'600',3,'999',99999),(0,791,167,'0',1,'2',29999),(30000,792,167,'30',2,'59',59999),(60000,793,167,'600',3,'999',99999),(0,794,168,'0',1,'0',9999),(10000,795,168,'10',2,'79',79999),(80000,796,168,'800',3,'999',99999),(0,797,169,'0',1,'4',49999),(50000,798,169,'50',2,'79',79999),(80000,799,169,'800',3,'999',99999),(0,800,170,'0',1,'4',49999),(50000,801,170,'50',2,'79',79999),(80000,802,170,'800',3,'999',99999),(0,803,171,'0',1,'4',49999),(50000,804,171,'50',2,'79',79999),(80000,805,171,'800',3,'999',99999),(0,806,172,'0',1,'0',9999),(10000,807,172,'10',2,'59',59999),(60000,808,172,'600',3,'699',69999),(70000,809,172,'7',1,'7',79999),(80000,810,172,'80',2,'99',99999),(0,811,173,'0',1,'2',29999),(30000,812,173,'30',2,'59',59999),(60000,813,173,'600',3,'999',99999),(0,814,174,'0',1,'1',19999),(20000,815,174,'20',2,'79',79999),(80000,816,174,'800',3,'999',99999),(0,817,175,'0',1,'2',29999),(30000,818,175,'30',2,'59',59999),(60000,819,175,'600',3,'699',69999),(70000,820,175,'7',1,'8',89999),(90000,821,175,'90',2,'99',99999),(0,822,176,'0',1,'0',9999),(10000,823,176,'10',2,'59',59999),(60000,824,176,'600',3,'999',99999),(0,825,177,'0',1,'1',19999),(20000,826,177,'20',2,'59',59999),(60000,827,177,'600',3,'999',99999),(0,828,178,'0',1,'1',19999),(20000,829,178,'20',2,'59',59999),(60000,830,178,'600',3,'899',89999),(90000,831,178,'90',2,'99',99999),(0,832,179,'0',1,'5',59999),(60000,833,179,'60',2,'89',89999),(90000,834,179,'900',3,'999',99999),(0,835,180,'0',1,'0',9999),(10000,836,180,'10',2,'69',69999),(70000,837,180,'700',3,'999',99999),(0,838,181,'0',1,'2',29999),(30000,839,181,'30',2,'79',79999),(80000,840,181,'800',3,'999',99999),(0,841,182,'0',1,'4',49999),(50000,842,182,'50',2,'79',79999),(80000,843,182,'800',3,'999',99999),(0,844,183,'0',1,'2',29999),(30000,845,183,'30',2,'59',59999),(60000,846,183,'600',3,'999',99999),(0,847,184,'0',1,'4',49999),(50000,848,184,'50',2,'79',79999),(80000,849,184,'800',3,'999',99999),(0,850,185,'0',1,'5',59999),(60000,851,185,'60',2,'89',89999),(90000,852,185,'900',3,'999',99999),(0,853,186,'0',1,'2',29999),(30000,854,186,'30',2,'59',59999),(60000,855,186,'600',3,'999',99999),(0,856,187,'0',1,'2',29999),(30000,857,187,'30',2,'69',69999),(70000,858,187,'700',3,'999',99999),(0,859,188,'0',1,'4',49999),(50000,860,188,'50',2,'79',79999),(80000,861,188,'800',3,'999',99999),(0,862,189,'0',1,'1',19999),(20000,863,189,'20',2,'89',89999),(90000,864,189,'900',3,'999',99999),(0,865,190,'0',1,'4',49999),(50000,866,190,'50',2,'79',79999),(80000,867,190,'800',3,'999',99999),(0,868,192,'0',1,'4',49999),(50000,869,192,'50',2,'79',79999),(80000,870,192,'800',3,'999',99999),(0,871,193,'0',1,'2',29999),(30000,872,193,'30',2,'79',79999),(80000,873,193,'800',3,'939',93999),(94000,874,193,'94',2,'99',99999),(0,875,194,'0',1,'2',29999),(30000,876,194,'30',2,'69',69999),(70000,877,194,'700',3,'999',99999),(0,878,195,'0',1,'1',19999),(20000,879,195,'20',2,'59',59999),(60000,880,195,'600',3,'799',79999),(80000,881,195,'80',2,'89',89999),(90000,882,195,'90',2,'99',99999),(0,883,196,'00',2,'59',59999),(60000,884,196,'600',3,'859',85999),(86000,885,196,'86',2,'99',99999),(0,886,197,'0',1,'1',19999),(20000,887,197,'20',2,'79',79999),(80000,888,197,'800',3,'999',99999),(0,889,198,'0',1,'4',49999),(50000,890,198,'50',2,'94',94999),(95000,891,198,'950',3,'999',99999),(0,892,199,'0',1,'2',29999),(30000,893,199,'30',2,'59',59999),(60000,894,199,'600',3,'999',99999),(0,895,200,'0',1,'0',9999),(10000,896,200,'10',2,'94',94999),(95000,897,200,'950',3,'999',99999),(0,898,201,'0',1,'3',39999),(40000,899,201,'40',2,'89',89999),(90000,900,201,'900',3,'999',99999),(0,901,202,'0',1,'4',49999),(50000,902,202,'50',2,'79',79999),(80000,903,202,'800',3,'999',99999),(0,904,203,'00',2,'49',49999),(50000,905,203,'500',3,'999',99999),(0,906,204,'0',1,'1',19999),(20000,907,204,'20',2,'79',79999),(80000,908,204,'800',3,'999',99999),(0,909,205,'0',1,'3',39999),(40000,910,205,'40',2,'79',79999),(80000,911,205,'800',3,'999',99999),(0,912,206,'0',1,'2',29999),(30000,913,206,'30',2,'69',69999),(70000,914,206,'700',3,'799',79999),(0,915,207,'0',1,'1',19999),(20000,916,207,'20',2,'59',59999),(60000,917,207,'600',3,'899',89999),(0,918,208,'0',1,'3',39999),(40000,919,208,'400',3,'599',59999),(60000,920,208,'60',2,'89',89999),(90000,921,208,'900',3,'999',99999),(0,922,209,'00',2,'19',19999),(20000,923,209,'200',3,'699',69999),(70000,924,209,'7000',4,'8999',89999),(90000,925,209,'90000',5,'97599',97599),(97600,926,209,'976000',6,'999999',99999);
/*!40000 ALTER TABLE `ezisbn_registrant_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezkeyword`
--

DROP TABLE IF EXISTS `ezkeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezkeyword` (
  `class_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezkeyword_keyword` (`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezkeyword`
--

LOCK TABLES `ezkeyword` WRITE;
/*!40000 ALTER TABLE `ezkeyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezkeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezkeyword_attribute_link`
--

DROP TABLE IF EXISTS `ezkeyword_attribute_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezkeyword_attribute_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword_id` int(11) NOT NULL DEFAULT '0',
  `objectattribute_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezkeyword_attr_link_kid_oaid` (`keyword_id`,`objectattribute_id`),
  KEY `ezkeyword_attr_link_oaid` (`objectattribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezkeyword_attribute_link`
--

LOCK TABLES `ezkeyword_attribute_link` WRITE;
/*!40000 ALTER TABLE `ezkeyword_attribute_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezkeyword_attribute_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezm_block`
--

DROP TABLE IF EXISTS `ezm_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezm_block` (
  `id` char(32) NOT NULL,
  `zone_id` char(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `node_id` int(10) unsigned NOT NULL,
  `overflow_id` char(32) DEFAULT NULL,
  `last_update` int(10) unsigned DEFAULT '0',
  `block_type` varchar(255) DEFAULT NULL,
  `fetch_params` longtext,
  `rotation_type` int(10) unsigned DEFAULT NULL,
  `rotation_interval` int(10) unsigned DEFAULT NULL,
  `is_removed` int(2) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezm_block__is_removed` (`is_removed`),
  KEY `ezm_block__node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezm_block`
--

LOCK TABLES `ezm_block` WRITE;
/*!40000 ALTER TABLE `ezm_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezm_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezm_pool`
--

DROP TABLE IF EXISTS `ezm_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezm_pool` (
  `block_id` char(32) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  `priority` int(10) unsigned DEFAULT '0',
  `ts_publication` int(11) DEFAULT '0',
  `ts_visible` int(10) unsigned DEFAULT '0',
  `ts_hidden` int(10) unsigned DEFAULT '0',
  `rotation_until` int(10) unsigned DEFAULT '0',
  `moved_to` char(32) DEFAULT NULL,
  PRIMARY KEY (`block_id`,`object_id`),
  KEY `ezm_pool__block_id__ts_publication__priority` (`block_id`,`ts_publication`,`priority`),
  KEY `ezm_pool__block_id__ts_visible` (`block_id`,`ts_visible`),
  KEY `ezm_pool__block_id__ts_hidden` (`block_id`,`ts_hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezm_pool`
--

LOCK TABLES `ezm_pool` WRITE;
/*!40000 ALTER TABLE `ezm_pool` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezm_pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmedia`
--

DROP TABLE IF EXISTS `ezmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmedia` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `controls` varchar(50) DEFAULT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `has_controller` int(11) DEFAULT '0',
  `height` int(11) DEFAULT NULL,
  `is_autoplay` int(11) DEFAULT '0',
  `is_loop` int(11) DEFAULT '0',
  `mime_type` varchar(50) NOT NULL DEFAULT '',
  `original_filename` varchar(255) NOT NULL DEFAULT '',
  `pluginspage` varchar(255) DEFAULT NULL,
  `quality` varchar(50) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  PRIMARY KEY (`contentobject_attribute_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmedia`
--

LOCK TABLES `ezmedia` WRITE;
/*!40000 ALTER TABLE `ezmedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmessage`
--

DROP TABLE IF EXISTS `ezmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmessage` (
  `body` longtext,
  `destination_address` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_sent` int(11) NOT NULL DEFAULT '0',
  `send_method` varchar(50) NOT NULL DEFAULT '',
  `send_time` varchar(50) NOT NULL DEFAULT '',
  `send_weekday` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmessage`
--

LOCK TABLES `ezmessage` WRITE;
/*!40000 ALTER TABLE `ezmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmodule_run`
--

DROP TABLE IF EXISTS `ezmodule_run`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmodule_run` (
  `function_name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_data` longtext,
  `module_name` varchar(255) DEFAULT NULL,
  `workflow_process_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezmodule_run_workflow_process_id_s` (`workflow_process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmodule_run`
--

LOCK TABLES `ezmodule_run` WRITE;
/*!40000 ALTER TABLE `ezmodule_run` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmodule_run` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmultipricedata`
--

DROP TABLE IF EXISTS `ezmultipricedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmultipricedata` (
  `contentobject_attr_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attr_version` int(11) NOT NULL DEFAULT '0',
  `currency_code` varchar(4) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `value` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `ezmultipricedata_coa_id` (`contentobject_attr_id`),
  KEY `ezmultipricedata_coa_version` (`contentobject_attr_version`),
  KEY `ezmultipricedata_currency_code` (`currency_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmultipricedata`
--

LOCK TABLES `ezmultipricedata` WRITE;
/*!40000 ALTER TABLE `ezmultipricedata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmultipricedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznode_assignment`
--

DROP TABLE IF EXISTS `eznode_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznode_assignment` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `from_node_id` int(11) DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_main` int(11) NOT NULL DEFAULT '0',
  `op_code` int(11) NOT NULL DEFAULT '0',
  `parent_node` int(11) DEFAULT NULL,
  `parent_remote_id` varchar(100) NOT NULL DEFAULT '',
  `remote_id` varchar(100) NOT NULL DEFAULT '0',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `eznode_assignment_co_version` (`contentobject_version`),
  KEY `eznode_assignment_coid_cov` (`contentobject_id`,`contentobject_version`),
  KEY `eznode_assignment_is_main` (`is_main`),
  KEY `eznode_assignment_parent_node` (`parent_node`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznode_assignment`
--

LOCK TABLES `eznode_assignment` WRITE;
/*!40000 ALTER TABLE `eznode_assignment` DISABLE KEYS */;
INSERT INTO `eznode_assignment` VALUES (8,2,0,4,1,2,5,'','0',1,1),(42,1,0,5,1,2,5,'','0',9,1),(10,2,-1,6,1,2,44,'','0',9,1),(4,1,0,7,1,2,1,'','0',1,1),(12,1,0,8,1,2,5,'','0',1,1),(13,1,0,9,1,2,5,'','0',1,1),(41,1,0,11,1,2,1,'','0',1,1),(11,1,0,12,1,2,5,'','0',1,1),(45,1,-1,16,1,2,1,'','0',9,1),(49,1,0,27,1,2,43,'','0',9,1),(50,1,0,28,1,2,43,'','0',9,1),(51,1,0,29,1,2,43,'','0',9,1),(52,1,0,30,1,2,48,'','0',1,1),(56,1,0,34,1,2,1,'','0',2,0),(14,3,-1,38,1,2,13,'','0',1,1),(54,2,-1,39,1,2,58,'','0',1,1),(57,1,0,43,1,2,2,'07cdfd23373b17c6b337251c22b7ea57','0',8,1),(58,1,0,44,1,2,2,'86bf306624668ee9b8b979b0d56f7e0d','0',1,1),(14,4,-1,45,1,2,13,'','0',1,1),(59,1,0,46,1,2,5,'','0',1,1),(11,2,-1,47,1,2,5,'','0',1,1),(60,1,0,48,1,2,2,'','0',1,1),(61,1,0,49,1,2,2,'','0',1,1),(62,1,0,50,1,2,63,'','0',1,1),(63,1,0,51,1,2,63,'','0',1,1),(64,1,0,52,1,2,2,'','0',1,1);
/*!40000 ALTER TABLE `eznode_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationcollection`
--

DROP TABLE IF EXISTS `eznotificationcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationcollection` (
  `data_subject` longtext NOT NULL,
  `data_text` longtext NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT '0',
  `handler` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transport` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationcollection`
--

LOCK TABLES `eznotificationcollection` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationcollection_item`
--

DROP TABLE IF EXISTS `eznotificationcollection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationcollection_item` (
  `address` varchar(255) NOT NULL DEFAULT '',
  `collection_id` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `send_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationcollection_item`
--

LOCK TABLES `eznotificationcollection_item` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationevent`
--

DROP TABLE IF EXISTS `eznotificationevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationevent` (
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_int4` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `data_text4` longtext NOT NULL,
  `event_type_string` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationevent`
--

LOCK TABLES `eznotificationevent` WRITE;
/*!40000 ALTER TABLE `eznotificationevent` DISABLE KEYS */;
INSERT INTO `eznotificationevent` VALUES (57,1,0,0,'','','','','ezpublish',1,0),(58,1,0,0,'','','','','ezpublish',2,0),(14,4,0,0,'','','','','ezpublish',3,0),(59,1,0,0,'','','','','ezpublish',4,0),(11,2,0,0,'','','','','ezpublish',5,0),(60,1,0,0,'','','','','ezpublish',6,0),(61,1,0,0,'','','','','ezpublish',7,0),(62,1,0,0,'','','','','ezpublish',8,0),(63,1,0,0,'','','','','ezpublish',9,0),(64,1,0,0,'','','','','ezpublish',10,0);
/*!40000 ALTER TABLE `eznotificationevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezoperation_memento`
--

DROP TABLE IF EXISTS `ezoperation_memento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezoperation_memento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main` int(11) NOT NULL DEFAULT '0',
  `main_key` varchar(32) NOT NULL DEFAULT '',
  `memento_data` longtext NOT NULL,
  `memento_key` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`memento_key`),
  KEY `ezoperation_memento_memento_key_main` (`memento_key`,`main`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezoperation_memento`
--

LOCK TABLES `ezoperation_memento` WRITE;
/*!40000 ALTER TABLE `ezoperation_memento` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezoperation_memento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder`
--

DROP TABLE IF EXISTS `ezorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder` (
  `account_identifier` varchar(100) NOT NULL DEFAULT 'default',
  `created` int(11) NOT NULL DEFAULT '0',
  `data_text_1` longtext,
  `data_text_2` longtext,
  `email` varchar(150) DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ignore_vat` int(11) NOT NULL DEFAULT '0',
  `is_archived` int(11) NOT NULL DEFAULT '0',
  `is_temporary` int(11) NOT NULL DEFAULT '1',
  `order_nr` int(11) NOT NULL DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `status_id` int(11) DEFAULT '0',
  `status_modified` int(11) DEFAULT '0',
  `status_modifier_id` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_is_archived` (`is_archived`),
  KEY `ezorder_is_tmp` (`is_temporary`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder`
--

LOCK TABLES `ezorder` WRITE;
/*!40000 ALTER TABLE `ezorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_item`
--

DROP TABLE IF EXISTS `ezorder_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_item` (
  `description` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_vat_inc` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `price` float DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `vat_value` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_item_order_id` (`order_id`),
  KEY `ezorder_item_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_item`
--

LOCK TABLES `ezorder_item` WRITE;
/*!40000 ALTER TABLE `ezorder_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_nr_incr`
--

DROP TABLE IF EXISTS `ezorder_nr_incr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_nr_incr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_nr_incr`
--

LOCK TABLES `ezorder_nr_incr` WRITE;
/*!40000 ALTER TABLE `ezorder_nr_incr` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_nr_incr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_status`
--

DROP TABLE IF EXISTS `ezorder_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `status_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_status_active` (`is_active`),
  KEY `ezorder_status_name` (`name`),
  KEY `ezorder_status_sid` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_status`
--

LOCK TABLES `ezorder_status` WRITE;
/*!40000 ALTER TABLE `ezorder_status` DISABLE KEYS */;
INSERT INTO `ezorder_status` VALUES (1,1,'Pending',1),(2,1,'Processing',2),(3,1,'Delivered',3);
/*!40000 ALTER TABLE `ezorder_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_status_history`
--

DROP TABLE IF EXISTS `ezorder_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_status_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `status_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_status_history_mod` (`modified`),
  KEY `ezorder_status_history_oid` (`order_id`),
  KEY `ezorder_status_history_sid` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_status_history`
--

LOCK TABLES `ezorder_status_history` WRITE;
/*!40000 ALTER TABLE `ezorder_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpackage`
--

DROP TABLE IF EXISTS `ezpackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpackage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `install_date` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `version` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpackage`
--

LOCK TABLES `ezpackage` WRITE;
/*!40000 ALTER TABLE `ezpackage` DISABLE KEYS */;
INSERT INTO `ezpackage` VALUES (1,1301057838,'plain_site_data','1.0-1'),(2,1361639836,'ezwt_extension','5.0-0'),(3,1361639837,'ezstarrating_extension','5.0-0'),(4,1361639838,'ezgmaplocation_extension','5.0-0'),(5,1361639839,'ezdemo_extension','5.0-0'),(6,1361639840,'ezflow_extension','5.0-0'),(7,1361639841,'ezcomments_extension','5.0-0'),(8,1361639841,'ezdemo_classes','5.0-0'),(9,1361639843,'ezdemo_democontent_clean','5.0-0');
/*!40000 ALTER TABLE `ezpackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpaymentobject`
--

DROP TABLE IF EXISTS `ezpaymentobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpaymentobject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `payment_string` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `workflowprocess_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpaymentobject`
--

LOCK TABLES `ezpaymentobject` WRITE;
/*!40000 ALTER TABLE `ezpaymentobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpaymentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpdf_export`
--

DROP TABLE IF EXISTS `ezpdf_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpdf_export` (
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `export_classes` varchar(255) DEFAULT NULL,
  `export_structure` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intro_text` longtext,
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `pdf_filename` varchar(255) DEFAULT NULL,
  `show_frontpage` int(11) DEFAULT NULL,
  `site_access` varchar(255) DEFAULT NULL,
  `source_node_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sub_text` longtext,
  `title` varchar(255) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpdf_export`
--

LOCK TABLES `ezpdf_export` WRITE;
/*!40000 ALTER TABLE `ezpdf_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpdf_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpending_actions`
--

DROP TABLE IF EXISTS `ezpending_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpending_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(64) NOT NULL DEFAULT '',
  `created` int(11) DEFAULT NULL,
  `param` longtext,
  PRIMARY KEY (`id`),
  KEY `ezpending_actions_action` (`action`),
  KEY `ezpending_actions_created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpending_actions`
--

LOCK TABLES `ezpending_actions` WRITE;
/*!40000 ALTER TABLE `ezpending_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpending_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy`
--

DROP TABLE IF EXISTS `ezpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy` (
  `function_name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) DEFAULT NULL,
  `original_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpolicy_original_id` (`original_id`),
  KEY `ezpolicy_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy`
--

LOCK TABLES `ezpolicy` WRITE;
/*!40000 ALTER TABLE `ezpolicy` DISABLE KEYS */;
INSERT INTO `ezpolicy` VALUES ('*',308,'*',0,2),('login',319,'user',0,3),('read',328,'content',0,1),('pdf',329,'content',0,1),('*',330,'ezoe',0,3),('*',332,'ezoe',0,3),('feed',333,'rss',0,1),('login',334,'user',0,1),('login',335,'user',0,1),('read',336,'content',0,1),('create',337,'content',0,3),('create',338,'content',0,3),('create',339,'content',0,3),('create',340,'content',0,3),('create',341,'content',0,3),('create',342,'content',0,3),('use',343,'websitetoolbar',0,3),('edit',344,'content',0,3),('read',345,'content',0,3),('use',346,'notification',0,3),('manage_locations',347,'content',0,3),('*',348,'ezodf',0,3),('*',349,'ezflow',0,3),('*',350,'ezajax',0,3),('diff',351,'content',0,3),('versionread',352,'content',0,3),('versionremove',353,'content',0,3),('remove',354,'content',0,3),('translate',355,'content',0,3),('feed',356,'rss',0,3),('bookmark',357,'content',0,3),('pendinglist',358,'content',0,3),('dashboard',359,'content',0,3),('view_embed',360,'content',0,3),('read',361,'content',0,4),('create',362,'content',0,4),('create',363,'content',0,4),('create',364,'content',0,4),('edit',365,'content',0,4),('selfedit',366,'user',0,4),('use',367,'notification',0,4),('create',368,'content',0,5),('create',369,'content',0,5),('create',370,'content',0,5),('edit',371,'content',0,5),('selfedit',372,'user',0,5),('use',373,'notification',0,5),('password',374,'user',0,5),('call',375,'ezjscore',0,5);
/*!40000 ALTER TABLE `ezpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy_limitation`
--

DROP TABLE IF EXISTS `ezpolicy_limitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy_limitation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `policy_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `policy_id` (`policy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation`
--

LOCK TABLES `ezpolicy_limitation` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation` VALUES (251,'Section',328),(252,'Section',329),(254,'SiteAccess',334),(255,'SiteAccess',335),(256,'Class',336),(257,'Section',336),(258,'Class',337),(259,'ParentClass',337),(260,'Class',338),(261,'ParentClass',338),(262,'Class',339),(263,'ParentClass',339),(264,'Class',340),(265,'ParentClass',340),(266,'Class',341),(267,'ParentClass',341),(268,'Class',342),(269,'ParentClass',342),(270,'Class',343),(271,'Section',345),(272,'Section',361),(273,'Class',362),(274,'Section',362),(275,'ParentClass',362),(276,'Class',363),(277,'Section',363),(278,'ParentClass',363),(279,'Class',364),(280,'Section',364),(281,'ParentClass',364),(282,'Class',365),(283,'Section',365),(284,'Owner',365),(285,'Class',368),(286,'Section',368),(287,'ParentClass',368),(288,'Class',369),(289,'Section',369),(290,'ParentClass',369),(291,'Class',370),(292,'Section',370),(293,'ParentClass',370),(294,'Class',371),(295,'Section',371),(296,'Owner',371);
/*!40000 ALTER TABLE `ezpolicy_limitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy_limitation_value`
--

DROP TABLE IF EXISTS `ezpolicy_limitation_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy_limitation_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limitation_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpolicy_limitation_value_val` (`value`),
  KEY `ezpolicy_limit_value_limit_id` (`limitation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=569 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation_value`
--

LOCK TABLES `ezpolicy_limitation_value` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation_value` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation_value` VALUES (477,251,'1'),(478,252,'1'),(480,254,'2661726826'),(481,255,'2582995467'),(482,256,'27'),(483,256,'35'),(484,257,'3'),(485,258,'1'),(486,258,'28'),(487,258,'26'),(488,258,'21'),(489,258,'22'),(490,258,'23'),(491,258,'16'),(492,258,'17'),(493,258,'25'),(494,258,'24'),(495,258,'29'),(496,258,'30'),(497,258,'36'),(498,258,'34'),(499,258,'35'),(500,258,'27'),(501,259,'1'),(502,260,'18'),(503,261,'17'),(504,262,'31'),(505,263,'30'),(506,264,'33'),(507,265,'34'),(508,266,'27'),(509,267,'29'),(510,268,'1'),(511,268,'28'),(512,268,'22'),(513,268,'23'),(514,268,'24'),(515,268,'29'),(516,268,'34'),(517,268,'36'),(518,269,'23'),(519,270,'1'),(520,270,'28'),(521,270,'16'),(522,270,'17'),(523,270,'18'),(524,270,'21'),(525,270,'22'),(526,270,'23'),(527,270,'24'),(528,270,'25'),(529,270,'26'),(530,270,'27'),(531,270,'29'),(532,270,'30'),(533,270,'33'),(534,270,'34'),(535,270,'36'),(536,271,'1'),(537,271,'6'),(538,271,'3'),(539,272,'6'),(540,273,'31'),(541,274,'6'),(542,275,'30'),(543,276,'32'),(544,277,'6'),(545,278,'31'),(546,279,'13'),(547,280,'6'),(548,281,'16'),(549,282,'13'),(550,282,'31'),(551,282,'32'),(552,283,'6'),(553,284,'1'),(554,285,'31'),(555,286,'1'),(556,287,'30'),(557,288,'32'),(558,289,'1'),(559,290,'31'),(560,291,'13'),(561,292,'1'),(562,293,'16'),(563,293,'18'),(564,294,'13'),(565,294,'31'),(566,294,'32'),(567,295,'1'),(568,296,'1');
/*!40000 ALTER TABLE `ezpolicy_limitation_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpreferences`
--

DROP TABLE IF EXISTS `ezpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpreferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `value` longtext,
  PRIMARY KEY (`id`),
  KEY `ezpreferences_name` (`name`),
  KEY `ezpreferences_user_id_idx` (`user_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpreferences`
--

LOCK TABLES `ezpreferences` WRITE;
/*!40000 ALTER TABLE `ezpreferences` DISABLE KEYS */;
INSERT INTO `ezpreferences` VALUES (1,'admin_navigation_content',14,'1'),(2,'admin_navigation_roles',14,'1'),(3,'admin_navigation_policies',14,'1'),(4,'admin_list_limit',14,'2'),(5,'admin_treemenu',14,'1'),(6,'admin_bookmark_menu',14,'1'),(7,'admin_navigation_class_translations',14,'1'),(8,'admin_right_menu_show',14,'1'),(9,'admin_clearcache_type',14,'All');
/*!40000 ALTER TABLE `ezpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_authcode`
--

DROP TABLE IF EXISTS `ezprest_authcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_authcode` (
  `client_id` varchar(200) NOT NULL DEFAULT '',
  `expirytime` bigint(20) NOT NULL DEFAULT '0',
  `id` varchar(200) NOT NULL DEFAULT '',
  `scope` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `authcode_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_authcode`
--

LOCK TABLES `ezprest_authcode` WRITE;
/*!40000 ALTER TABLE `ezprest_authcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_authorized_clients`
--

DROP TABLE IF EXISTS `ezprest_authorized_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_authorized_clients` (
  `created` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rest_client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_user` (`rest_client_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_authorized_clients`
--

LOCK TABLES `ezprest_authorized_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_authorized_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authorized_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_clients`
--

DROP TABLE IF EXISTS `ezprest_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_clients` (
  `client_id` varchar(200) DEFAULT NULL,
  `client_secret` varchar(200) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `description` longtext,
  `endpoint_uri` varchar(200) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `updated` int(11) NOT NULL DEFAULT '0',
  `version` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id_unique` (`client_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_clients`
--

LOCK TABLES `ezprest_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_token`
--

DROP TABLE IF EXISTS `ezprest_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_token` (
  `client_id` varchar(200) NOT NULL DEFAULT '',
  `expirytime` bigint(20) NOT NULL DEFAULT '0',
  `id` varchar(200) NOT NULL DEFAULT '',
  `refresh_token` varchar(200) NOT NULL DEFAULT '',
  `scope` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_token`
--

LOCK TABLES `ezprest_token` WRITE;
/*!40000 ALTER TABLE `ezprest_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcategory`
--

DROP TABLE IF EXISTS `ezproductcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcategory`
--

LOCK TABLES `ezproductcategory` WRITE;
/*!40000 ALTER TABLE `ezproductcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection`
--

DROP TABLE IF EXISTS `ezproductcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection` (
  `created` int(11) DEFAULT NULL,
  `currency_code` varchar(4) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection`
--

LOCK TABLES `ezproductcollection` WRITE;
/*!40000 ALTER TABLE `ezproductcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection_item`
--

DROP TABLE IF EXISTS `ezproductcollection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection_item` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `discount` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_vat_inc` int(11) DEFAULT NULL,
  `item_count` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `price` float DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `vat_value` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezproductcollection_item_contentobject_id` (`contentobject_id`),
  KEY `ezproductcollection_item_productcollection_id` (`productcollection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection_item`
--

LOCK TABLES `ezproductcollection_item` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection_item_opt`
--

DROP TABLE IF EXISTS `ezproductcollection_item_opt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection_item_opt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `object_attribute_id` int(11) DEFAULT NULL,
  `option_item_id` int(11) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezproductcollection_item_opt_item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection_item_opt`
--

LOCK TABLES `ezproductcollection_item_opt` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item_opt` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection_item_opt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpublishingqueueprocesses`
--

DROP TABLE IF EXISTS `ezpublishingqueueprocesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpublishingqueueprocesses` (
  `created` int(11) DEFAULT NULL,
  `ezcontentobject_version_id` int(11) NOT NULL DEFAULT '0',
  `finished` int(11) DEFAULT NULL,
  `pid` int(8) DEFAULT NULL,
  `started` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  PRIMARY KEY (`ezcontentobject_version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpublishingqueueprocesses`
--

LOCK TABLES `ezpublishingqueueprocesses` WRITE;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrole`
--

DROP TABLE IF EXISTS `ezrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` char(1) DEFAULT NULL,
  `version` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrole`
--

LOCK TABLES `ezrole` WRITE;
/*!40000 ALTER TABLE `ezrole` DISABLE KEYS */;
INSERT INTO `ezrole` VALUES (1,0,'Anonymous','',0),(2,0,'Administrator','*',0),(3,0,'Editor','',0),(4,0,'Partner',NULL,0),(5,0,'Member',NULL,0);
/*!40000 ALTER TABLE `ezrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_export`
--

DROP TABLE IF EXISTS `ezrss_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_export` (
  `access_url` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `description` longtext,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) DEFAULT NULL,
  `main_node_only` int(11) NOT NULL DEFAULT '1',
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `node_id` int(11) DEFAULT NULL,
  `number_of_objects` int(11) NOT NULL DEFAULT '0',
  `rss_version` varchar(255) DEFAULT NULL,
  `site_access` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_export`
--

LOCK TABLES `ezrss_export` WRITE;
/*!40000 ALTER TABLE `ezrss_export` DISABLE KEYS */;
INSERT INTO `ezrss_export` VALUES ('my_feed',1,1361639844,14,'',1,0,1,1361639844,14,0,10,'2.0','',1,'My RSS Feed','http://example.com');
/*!40000 ALTER TABLE `ezrss_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_export_item`
--

DROP TABLE IF EXISTS `ezrss_export_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_export_item` (
  `category` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `enclosure` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rssexport_id` int(11) DEFAULT NULL,
  `source_node_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `subnodes` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`status`),
  KEY `ezrss_export_rsseid` (`rssexport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_export_item`
--

LOCK TABLES `ezrss_export_item` WRITE;
/*!40000 ALTER TABLE `ezrss_export_item` DISABLE KEYS */;
INSERT INTO `ezrss_export_item` VALUES ('',16,'intro','',1,1,139,1,0,'title');
/*!40000 ALTER TABLE `ezrss_export_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_import`
--

DROP TABLE IF EXISTS `ezrss_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_import` (
  `active` int(11) DEFAULT NULL,
  `class_description` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `class_title` varchar(255) DEFAULT NULL,
  `class_url` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `destination_node_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `import_description` longtext NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `object_owner_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `url` longtext,
  PRIMARY KEY (`id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_import`
--

LOCK TABLES `ezrss_import` WRITE;
/*!40000 ALTER TABLE `ezrss_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezscheduled_script`
--

DROP TABLE IF EXISTS `ezscheduled_script`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezscheduled_script` (
  `command` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_report_timestamp` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `process_id` int(11) NOT NULL DEFAULT '0',
  `progress` int(3) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezscheduled_script_timestamp` (`last_report_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezscheduled_script`
--

LOCK TABLES `ezscheduled_script` WRITE;
/*!40000 ALTER TABLE `ezscheduled_script` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezscheduled_script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_object_word_link`
--

DROP TABLE IF EXISTS `ezsearch_object_word_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_object_word_link` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `frequency` float NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `integer_value` int(11) NOT NULL DEFAULT '0',
  `next_word_id` int(11) NOT NULL DEFAULT '0',
  `placement` int(11) NOT NULL DEFAULT '0',
  `prev_word_id` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `word_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezsearch_object_word_link_frequency` (`frequency`),
  KEY `ezsearch_object_word_link_identifier` (`identifier`),
  KEY `ezsearch_object_word_link_integer_value` (`integer_value`),
  KEY `ezsearch_object_word_link_object` (`contentobject_id`),
  KEY `ezsearch_object_word_link_word` (`word_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6833 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_object_word_link`
--

LOCK TABLES `ezsearch_object_word_link` WRITE;
/*!40000 ALTER TABLE `ezsearch_object_word_link` DISABLE KEYS */;
INSERT INTO `ezsearch_object_word_link` VALUES (6,3,4,0,4663,'name',0,951,0,0,1033917596,2,930),(7,3,4,0,4664,'description',0,952,1,930,1033917596,2,951),(7,3,4,0,4665,'description',0,0,2,951,1033917596,2,952),(8,4,10,0,4666,'first_name',0,954,0,0,1033920665,2,953),(9,4,10,0,4667,'last_name',0,953,1,953,1033920665,2,954),(12,4,10,0,4668,'user_account',0,955,2,954,1033920665,2,953),(12,4,10,0,4669,'user_account',0,927,3,953,1033920665,2,955),(12,4,10,0,4670,'user_account',0,0,4,955,1033920665,2,927),(6,3,12,0,4673,'name',0,930,0,0,1033920775,2,958),(6,3,12,0,4674,'name',0,0,1,958,1033920775,2,930),(6,3,13,0,4675,'name',0,0,0,0,1033920794,2,959),(4,1,41,0,4681,'name',0,0,0,0,1060695457,3,961),(6,3,42,0,4682,'name',0,930,0,0,1072180330,2,953),(6,3,42,0,4683,'name',0,954,1,953,1072180330,2,930),(7,3,42,0,4684,'description',0,952,2,930,1072180330,2,954),(7,3,42,0,4685,'description',0,816,3,954,1072180330,2,952),(7,3,42,0,4686,'description',0,814,4,952,1072180330,2,816),(7,3,42,0,4687,'description',0,953,5,816,1072180330,2,814),(7,3,42,0,4688,'description',0,954,6,814,1072180330,2,953),(7,3,42,0,4689,'description',0,0,7,953,1072180330,2,954),(4,1,45,0,4690,'name',0,0,0,0,1079684190,4,812),(4,1,49,0,4691,'name',0,0,0,0,1080220197,3,962),(4,1,50,0,4692,'name',0,0,0,0,1080220220,3,963),(4,1,51,0,4693,'name',0,0,0,0,1080220233,3,964),(159,14,52,0,4694,'name',0,965,0,0,1082016591,4,877),(159,14,52,0,4695,'name',0,966,1,877,1082016591,4,965),(159,14,52,0,4696,'name',0,0,2,965,1082016591,4,966),(176,15,54,0,4697,'id',0,0,0,0,1082016652,5,967),(4,1,56,0,4698,'name',0,0,0,0,1103023132,5,968),(227,23,57,0,4699,'name',0,0,0,0,1361639841,1,969),(181,16,58,0,4700,'title',0,970,0,0,1361639842,1,970),(182,16,58,0,4701,'short_title',0,802,1,970,1361639842,1,970),(184,16,58,0,4702,'intro',0,805,2,970,1361639842,1,802),(184,16,58,0,4703,'intro',0,810,3,802,1361639842,1,805),(184,16,58,0,4704,'intro',0,971,4,805,1361639842,1,810),(184,16,58,0,4705,'intro',0,972,5,810,1361639842,1,971),(184,16,58,0,4706,'intro',0,809,6,971,1361639842,1,972),(184,16,58,0,4707,'intro',0,973,7,972,1361639842,1,809),(184,16,58,0,4708,'intro',0,974,8,809,1361639842,1,973),(184,16,58,0,4709,'intro',0,814,9,973,1361639842,1,974),(184,16,58,0,4710,'intro',0,975,10,974,1361639842,1,814),(184,16,58,0,4711,'intro',0,976,11,814,1361639842,1,975),(184,16,58,0,4712,'intro',0,977,12,975,1361639842,1,976),(184,16,58,0,4713,'intro',0,978,13,976,1361639842,1,977),(184,16,58,0,4714,'intro',0,929,14,977,1361639842,1,978),(184,16,58,0,4715,'intro',0,979,15,978,1361639842,1,929),(184,16,58,0,4716,'intro',0,980,16,929,1361639842,1,979),(184,16,58,0,4717,'intro',0,981,17,979,1361639842,1,980),(184,16,58,0,4718,'intro',0,978,18,980,1361639842,1,981),(184,16,58,0,4719,'intro',0,982,19,981,1361639842,1,978),(184,16,58,0,4720,'intro',0,983,20,978,1361639842,1,982),(184,16,58,0,4721,'intro',0,984,21,982,1361639842,1,983),(184,16,58,0,4722,'intro',0,985,22,983,1361639842,1,984),(184,16,58,0,4723,'intro',0,986,23,984,1361639842,1,985),(184,16,58,0,4724,'intro',0,985,24,985,1361639842,1,986),(184,16,58,0,4725,'intro',0,987,25,986,1361639842,1,985),(184,16,58,0,4726,'intro',0,988,26,985,1361639842,1,987),(184,16,58,0,4727,'intro',0,989,27,987,1361639842,1,988),(184,16,58,0,4728,'intro',0,990,28,988,1361639842,1,989),(184,16,58,0,4729,'intro',0,991,29,989,1361639842,1,990),(184,16,58,0,4730,'intro',0,992,30,990,1361639842,1,991),(184,16,58,0,4731,'intro',0,993,31,991,1361639842,1,992),(184,16,58,0,4732,'intro',0,994,32,992,1361639842,1,993),(184,16,58,0,4733,'intro',0,995,33,993,1361639842,1,994),(184,16,58,0,4734,'intro',0,816,34,994,1361639842,1,995),(184,16,58,0,4735,'intro',0,921,35,995,1361639842,1,816),(184,16,58,0,4736,'intro',0,922,36,816,1361639842,1,921),(184,16,58,0,4737,'intro',0,802,37,921,1361639842,1,922),(185,16,58,0,4738,'body',0,907,38,922,1361639842,1,802),(185,16,58,0,4739,'body',0,807,39,802,1361639842,1,907),(185,16,58,0,4740,'body',0,996,40,907,1361639842,1,807),(185,16,58,0,4741,'body',0,927,41,807,1361639842,1,996),(185,16,58,0,4742,'body',0,802,42,996,1361639842,1,927),(185,16,58,0,4743,'body',0,997,43,927,1361639842,1,802),(185,16,58,0,4744,'body',0,807,44,802,1361639842,1,997),(185,16,58,0,4745,'body',0,996,45,997,1361639842,1,807),(185,16,58,0,4746,'body',0,998,46,807,1361639842,1,996),(185,16,58,0,4747,'body',0,874,47,996,1361639842,1,998),(185,16,58,0,4748,'body',0,996,48,998,1361639842,1,874),(185,16,58,0,4749,'body',0,999,49,874,1361639842,1,996),(185,16,58,0,4750,'body',0,1000,50,996,1361639842,1,999),(185,16,58,0,4751,'body',0,995,51,999,1361639842,1,1000),(185,16,58,0,4752,'body',0,1001,52,1000,1361639842,1,995),(185,16,58,0,4753,'body',0,1002,53,995,1361639842,1,1001),(185,16,58,0,4754,'body',0,1003,54,1001,1361639842,1,1002),(185,16,58,0,4755,'body',0,833,55,1002,1361639842,1,1003),(185,16,58,0,4756,'body',0,1004,56,1003,1361639842,1,833),(185,16,58,0,4757,'body',0,1005,57,833,1361639842,1,1004),(185,16,58,0,4758,'body',0,1006,58,1004,1361639842,1,1005),(185,16,58,0,4759,'body',0,1007,59,1005,1361639842,1,1006),(185,16,58,0,4760,'body',0,802,60,1006,1361639842,1,1007),(185,16,58,0,4761,'body',0,925,61,1007,1361639842,1,802),(185,16,58,0,4762,'body',0,1008,62,802,1361639842,1,925),(185,16,58,0,4763,'body',0,1009,63,925,1361639842,1,1008),(185,16,58,0,4764,'body',0,1010,64,1008,1361639842,1,1009),(185,16,58,0,4765,'body',0,1011,65,1009,1361639842,1,1010),(185,16,58,0,4766,'body',0,1012,66,1010,1361639842,1,1011),(185,16,58,0,4767,'body',0,1013,67,1011,1361639842,1,1012),(185,16,58,0,4768,'body',0,1014,68,1012,1361639842,1,1013),(185,16,58,0,4769,'body',0,1015,69,1013,1361639842,1,1014),(185,16,58,0,4770,'body',0,1016,70,1014,1361639842,1,1015),(188,16,58,0,4771,'publish_date',1341417600,0,71,1015,1361639842,1,1016),(8,4,14,0,4772,'first_name',0,954,0,0,1033920830,2,958),(9,4,14,0,4773,'last_name',0,1017,1,958,1033920830,2,954),(12,4,14,0,4774,'user_account',0,934,2,954,1033920830,2,1017),(12,4,14,0,4775,'user_account',0,1018,3,1017,1033920830,2,934),(12,4,14,0,4776,'user_account',0,0,4,934,1033920830,2,1018),(6,3,59,0,4777,'name',0,0,0,0,1361639844,2,1019),(6,3,11,0,4778,'name',0,0,0,0,1033920746,2,1020),(193,17,60,0,4779,'name',0,1022,0,0,1361649775,1,1021),(194,17,60,0,4780,'description',0,805,1,1021,1361649775,1,1022),(194,17,60,0,4781,'description',0,1023,2,1022,1361649775,1,805),(194,17,60,0,4782,'description',0,1021,3,805,1361649775,1,1023),(194,17,60,0,4783,'description',0,1024,4,1023,1361649775,1,1021),(194,17,60,0,4784,'description',0,0,5,1021,1361649775,1,1024),(193,17,61,0,4785,'name',0,0,0,0,1361651177,1,1025),(196,18,62,0,4786,'title',0,809,0,0,1361651284,1,1026),(196,18,62,0,4787,'title',0,802,1,1026,1361651284,1,809),(196,18,62,0,4788,'title',0,1027,2,809,1361651284,1,802),(196,18,62,0,4789,'title',0,1028,3,802,1361651284,1,1027),(196,18,62,0,4790,'title',0,1029,4,1027,1361651284,1,1028),(196,18,62,0,4791,'title',0,1030,5,1028,1361651284,1,1029),(197,18,62,0,4792,'body',0,1031,6,1029,1361651284,1,1030),(197,18,62,0,4793,'body',0,1032,7,1030,1361651284,1,1031),(197,18,62,0,4794,'body',0,1033,8,1031,1361651284,1,1032),(197,18,62,0,4795,'body',0,1034,9,1032,1361651284,1,1033),(197,18,62,0,4796,'body',0,814,10,1033,1361651284,1,1034),(197,18,62,0,4797,'body',0,1035,11,1034,1361651284,1,814),(197,18,62,0,4798,'body',0,1036,12,814,1361651284,1,1035),(197,18,62,0,4799,'body',0,1037,13,1035,1361651284,1,1036),(197,18,62,0,4800,'body',0,1038,14,1036,1361651284,1,1037),(197,18,62,0,4801,'body',0,1039,15,1037,1361651284,1,1038),(197,18,62,0,4802,'body',0,1038,16,1038,1361651284,1,1039),(197,18,62,0,4803,'body',0,1040,17,1039,1361651284,1,1038),(197,18,62,0,4804,'body',0,814,18,1038,1361651284,1,1040),(197,18,62,0,4805,'body',0,1041,19,1040,1361651284,1,814),(197,18,62,0,4806,'body',0,833,20,814,1361651284,1,1041),(197,18,62,0,4807,'body',0,1042,21,1041,1361651284,1,833),(197,18,62,0,4808,'body',0,1040,22,833,1361651284,1,1042),(197,18,62,0,4809,'body',0,1026,23,1042,1361651284,1,1040),(197,18,62,0,4810,'body',0,809,24,1040,1361651284,1,1026),(197,18,62,0,4811,'body',0,802,25,1026,1361651284,1,809),(197,18,62,0,4812,'body',0,1027,26,809,1361651284,1,802),(197,18,62,0,4813,'body',0,1043,27,802,1361651284,1,1027),(197,18,62,0,4814,'body',0,1028,28,1027,1361651284,1,1043),(197,18,62,0,4815,'body',0,1044,29,1043,1361651284,1,1028),(197,18,62,0,4816,'body',0,810,30,1028,1361651284,1,1044),(197,18,62,0,4817,'body',0,1045,31,1044,1361651284,1,810),(197,18,62,0,4818,'body',0,1046,32,810,1361651284,1,1045),(197,18,62,0,4819,'body',0,1047,33,1045,1361651284,1,1046),(197,18,62,0,4820,'body',0,802,34,1046,1361651284,1,1047),(197,18,62,0,4821,'body',0,925,35,1047,1361651284,1,802),(197,18,62,0,4822,'body',0,1048,36,802,1361651284,1,925),(197,18,62,0,4823,'body',0,1049,37,925,1361651284,1,1048),(197,18,62,0,4824,'body',0,816,38,1048,1361651284,1,1049),(197,18,62,0,4825,'body',0,1050,39,1049,1361651284,1,816),(197,18,62,0,4826,'body',0,1030,40,816,1361651284,1,1050),(197,18,62,0,4827,'body',0,802,41,1050,1361651284,1,1030),(197,18,62,0,4828,'body',0,1027,42,1030,1361651284,1,802),(197,18,62,0,4829,'body',0,1033,43,802,1361651284,1,1027),(197,18,62,0,4830,'body',0,1051,44,1027,1361651284,1,1033),(197,18,62,0,4831,'body',0,1028,45,1033,1361651284,1,1051),(197,18,62,0,4832,'body',0,1052,46,1051,1361651284,1,1028),(197,18,62,0,4833,'body',0,1053,47,1028,1361651284,1,1052),(197,18,62,0,4834,'body',0,1036,48,1052,1361651284,1,1053),(197,18,62,0,4835,'body',0,1054,49,1053,1361651284,1,1036),(197,18,62,0,4836,'body',0,810,50,1036,1361651284,1,1054),(197,18,62,0,4837,'body',0,1055,51,1054,1361651284,1,810),(197,18,62,0,4838,'body',0,1056,52,810,1361651284,1,1055),(197,18,62,0,4839,'body',0,1057,53,1055,1361651284,1,1056),(197,18,62,0,4840,'body',0,1058,54,1056,1361651284,1,1057),(197,18,62,0,4841,'body',0,1059,55,1057,1361651284,1,1058),(197,18,62,0,4842,'body',0,1060,56,1058,1361651284,1,1059),(197,18,62,0,4843,'body',0,1061,57,1059,1361651284,1,1060),(197,18,62,0,4844,'body',0,1062,58,1060,1361651284,1,1061),(197,18,62,0,4845,'body',0,1063,59,1061,1361651284,1,1062),(197,18,62,0,4846,'body',0,1056,60,1062,1361651284,1,1063),(197,18,62,0,4847,'body',0,1064,61,1063,1361651284,1,1056),(197,18,62,0,4848,'body',0,1054,62,1056,1361651284,1,1064),(197,18,62,0,4849,'body',0,1065,63,1064,1361651284,1,1054),(197,18,62,0,4850,'body',0,1066,64,1054,1361651284,1,1065),(197,18,62,0,4851,'body',0,1067,65,1065,1361651284,1,1066),(197,18,62,0,4852,'body',0,1030,66,1066,1361651284,1,1067),(197,18,62,0,4853,'body',0,1033,67,1067,1361651284,1,1030),(197,18,62,0,4854,'body',0,1068,68,1030,1361651284,1,1033),(197,18,62,0,4855,'body',0,1069,69,1033,1361651284,1,1068),(197,18,62,0,4856,'body',0,1070,70,1068,1361651284,1,1069),(197,18,62,0,4857,'body',0,1071,71,1069,1361651284,1,1070),(197,18,62,0,4858,'body',0,810,72,1070,1361651284,1,1071),(197,18,62,0,4859,'body',0,1072,73,1071,1361651284,1,810),(197,18,62,0,4860,'body',0,1036,74,810,1361651284,1,1072),(197,18,62,0,4861,'body',0,1073,75,1072,1361651284,1,1036),(197,18,62,0,4862,'body',0,1021,76,1036,1361651284,1,1073),(197,18,62,0,4863,'body',0,814,77,1073,1361651284,1,1021),(197,18,62,0,4864,'body',0,929,78,1021,1361651284,1,814),(197,18,62,0,4865,'body',0,1074,79,814,1361651284,1,929),(197,18,62,0,4866,'body',0,814,80,929,1361651284,1,1074),(197,18,62,0,4867,'body',0,1075,81,1074,1361651284,1,814),(197,18,62,0,4868,'body',0,1040,82,814,1361651284,1,1075),(197,18,62,0,4869,'body',0,1022,83,1075,1361651284,1,1040),(197,18,62,0,4870,'body',0,1076,84,1040,1361651284,1,1022),(197,18,62,0,4871,'body',0,1040,85,1022,1361651284,1,1076),(197,18,62,0,4872,'body',0,1077,86,1076,1361651284,1,1040),(197,18,62,0,4873,'body',0,1078,87,1040,1361651284,1,1077),(197,18,62,0,4874,'body',0,1079,88,1077,1361651284,1,1078),(197,18,62,0,4875,'body',0,1054,89,1078,1361651284,1,1079),(197,18,62,0,4876,'body',0,1036,90,1079,1361651284,1,1054),(197,18,62,0,4877,'body',0,1080,91,1054,1361651284,1,1036),(197,18,62,0,4878,'body',0,1081,92,1036,1361651284,1,1080),(197,18,62,0,4879,'body',0,802,93,1080,1361651284,1,1081),(197,18,62,0,4880,'body',0,1027,94,1081,1361651284,1,802),(197,18,62,0,4881,'body',0,1082,95,802,1361651284,1,1027),(197,18,62,0,4882,'body',0,1083,96,1027,1361651284,1,1082),(197,18,62,0,4883,'body',0,1084,97,1082,1361651284,1,1083),(197,18,62,0,4884,'body',0,1036,98,1083,1361651284,1,1084),(197,18,62,0,4885,'body',0,1085,99,1084,1361651284,1,1036),(197,18,62,0,4886,'body',0,1086,100,1036,1361651284,1,1085),(197,18,62,0,4887,'body',0,1087,101,1085,1361651284,1,1086),(197,18,62,0,4888,'body',0,1088,102,1086,1361651284,1,1087),(197,18,62,0,4889,'body',0,1089,103,1087,1361651284,1,1088),(197,18,62,0,4890,'body',0,1001,104,1088,1361651284,1,1089),(197,18,62,0,4891,'body',0,1082,105,1089,1361651284,1,1001),(197,18,62,0,4892,'body',0,1090,106,1001,1361651284,1,1082),(197,18,62,0,4893,'body',0,1091,107,1082,1361651284,1,1090),(197,18,62,0,4894,'body',0,809,108,1090,1361651284,1,1091),(197,18,62,0,4895,'body',0,802,109,1091,1361651284,1,809),(197,18,62,0,4896,'body',0,1027,110,809,1361651284,1,802),(197,18,62,0,4897,'body',0,1092,111,802,1361651284,1,1027),(197,18,62,0,4898,'body',0,1057,112,1027,1361651284,1,1092),(197,18,62,0,4899,'body',0,1008,113,1092,1361651284,1,1057),(197,18,62,0,4900,'body',0,1093,114,1057,1361651284,1,1008),(197,18,62,0,4901,'body',0,1008,115,1008,1361651284,1,1093),(197,18,62,0,4902,'body',0,1094,116,1093,1361651284,1,1008),(197,18,62,0,4903,'body',0,1095,117,1008,1361651284,1,1094),(197,18,62,0,4904,'body',0,810,118,1094,1361651284,1,1095),(197,18,62,0,4905,'body',0,1096,119,1095,1361651284,1,810),(197,18,62,0,4906,'body',0,1097,120,810,1361651284,1,1096),(197,18,62,0,4907,'body',0,809,121,1096,1361651284,1,1097),(197,18,62,0,4908,'body',0,814,122,1097,1361651284,1,809),(197,18,62,0,4909,'body',0,1098,123,809,1361651284,1,814),(197,18,62,0,4910,'body',0,1094,124,814,1361651284,1,1098),(197,18,62,0,4911,'body',0,1099,125,1098,1361651284,1,1094),(197,18,62,0,4912,'body',0,1054,126,1094,1361651284,1,1099),(197,18,62,0,4913,'body',0,1100,127,1099,1361651284,1,1054),(197,18,62,0,4914,'body',0,1036,128,1054,1361651284,1,1100),(197,18,62,0,4915,'body',0,1000,129,1100,1361651284,1,1036),(197,18,62,0,4916,'body',0,1101,130,1036,1361651284,1,1000),(197,18,62,0,4917,'body',0,814,131,1000,1361651284,1,1101),(197,18,62,0,4918,'body',0,1102,132,1101,1361651284,1,814),(197,18,62,0,4919,'body',0,1103,133,814,1361651284,1,1102),(197,18,62,0,4920,'body',0,805,134,1102,1361651284,1,1103),(197,18,62,0,4921,'body',0,1036,135,1103,1361651284,1,805),(197,18,62,0,4922,'body',0,1104,136,805,1361651284,1,1036),(197,18,62,0,4923,'body',0,810,137,1036,1361651284,1,1104),(197,18,62,0,4924,'body',0,934,138,1104,1361651284,1,810),(197,18,62,0,4925,'body',0,1069,139,810,1361651284,1,934),(197,18,62,0,4926,'body',0,1079,140,934,1361651284,1,1069),(197,18,62,0,4927,'body',0,1105,141,1069,1361651284,1,1079),(197,18,62,0,4928,'body',0,1094,142,1079,1361651284,1,1105),(197,18,62,0,4929,'body',0,1036,143,1105,1361651284,1,1094),(197,18,62,0,4930,'body',0,1083,144,1094,1361651284,1,1036),(197,18,62,0,4931,'body',0,1084,145,1036,1361651284,1,1083),(197,18,62,0,4932,'body',0,833,146,1083,1361651284,1,1084),(197,18,62,0,4933,'body',0,1106,147,1084,1361651284,1,833),(197,18,62,0,4934,'body',0,1107,148,833,1361651284,1,1106),(197,18,62,0,4935,'body',0,809,149,1106,1361651284,1,1107),(197,18,62,0,4936,'body',0,802,150,1107,1361651284,1,809),(197,18,62,0,4937,'body',0,1027,151,809,1361651284,1,802),(197,18,62,0,4938,'body',0,1028,152,802,1361651284,1,1027),(197,18,62,0,4939,'body',0,1108,153,1027,1361651284,1,1028),(197,18,62,0,4940,'body',0,1109,154,1028,1361651284,1,1108),(197,18,62,0,4941,'body',0,1094,155,1108,1361651284,1,1109),(197,18,62,0,4942,'body',0,1087,156,1109,1361651284,1,1094),(197,18,62,0,4943,'body',0,810,157,1094,1361651284,1,1087),(197,18,62,0,4944,'body',0,1110,158,1087,1361651284,1,810),(197,18,62,0,4945,'body',0,1040,159,810,1361651284,1,1110),(197,18,62,0,4946,'body',0,810,160,1110,1361651284,1,1040),(197,18,62,0,4947,'body',0,1111,161,1040,1361651284,1,810),(197,18,62,0,4948,'body',0,809,162,810,1361651284,1,1111),(197,18,62,0,4949,'body',0,1112,163,1111,1361651284,1,809),(197,18,62,0,4950,'body',0,1073,164,809,1361651284,1,1112),(197,18,62,0,4951,'body',0,1113,165,1112,1361651284,1,1073),(197,18,62,0,4952,'body',0,1086,166,1073,1361651284,1,1113),(197,18,62,0,4953,'body',0,1114,167,1113,1361651284,1,1086),(197,18,62,0,4954,'body',0,1115,168,1086,1361651284,1,1114),(197,18,62,0,4955,'body',0,1038,169,1114,1361651284,1,1115),(197,18,62,0,4956,'body',0,1096,170,1115,1361651284,1,1038),(197,18,62,0,4957,'body',0,1116,171,1038,1361651284,1,1096),(197,18,62,0,4958,'body',0,833,172,1096,1361651284,1,1116),(197,18,62,0,4959,'body',0,1117,173,1116,1361651284,1,833),(197,18,62,0,4960,'body',0,1118,174,833,1361651284,1,1117),(197,18,62,0,4961,'body',0,810,175,1117,1361651284,1,1118),(197,18,62,0,4962,'body',0,1096,176,1118,1361651284,1,810),(197,18,62,0,4963,'body',0,807,177,810,1361651284,1,1096),(197,18,62,0,4964,'body',0,1119,178,1096,1361651284,1,807),(197,18,62,0,4965,'body',0,1120,179,807,1361651284,1,1119),(197,18,62,0,4966,'body',0,802,180,1119,1361651284,1,1120),(197,18,62,0,4967,'body',0,1027,181,1120,1361651284,1,802),(197,18,62,0,4968,'body',0,1028,182,802,1361651284,1,1027),(197,18,62,0,4969,'body',0,1116,183,1027,1361651284,1,1028),(197,18,62,0,4970,'body',0,1121,184,1028,1361651284,1,1116),(197,18,62,0,4971,'body',0,1122,185,1116,1361651284,1,1121),(197,18,62,0,4972,'body',0,1123,186,1121,1361651284,1,1122),(197,18,62,0,4973,'body',0,1124,187,1122,1361651284,1,1123),(197,18,62,0,4974,'body',0,1040,188,1123,1361651284,1,1124),(197,18,62,0,4975,'body',0,814,189,1124,1361651284,1,1040),(197,18,62,0,4976,'body',0,934,190,1040,1361651284,1,814),(197,18,62,0,4977,'body',0,1125,191,814,1361651284,1,934),(197,18,62,0,4978,'body',0,1126,192,934,1361651284,1,1125),(197,18,62,0,4979,'body',0,1127,193,1125,1361651284,1,1126),(197,18,62,0,4980,'body',0,1008,194,1126,1361651284,1,1127),(197,18,62,0,4981,'body',0,810,195,1127,1361651284,1,1008),(197,18,62,0,4982,'body',0,1128,196,1008,1361651284,1,810),(197,18,62,0,4983,'body',0,1030,197,810,1361651284,1,1128),(197,18,62,0,4984,'body',0,1129,198,1128,1361651284,1,1030),(197,18,62,0,4985,'body',0,1036,199,1030,1361651284,1,1129),(197,18,62,0,4986,'body',0,1130,200,1129,1361651284,1,1036),(197,18,62,0,4987,'body',0,1131,201,1036,1361651284,1,1130),(197,18,62,0,4988,'body',0,1132,202,1130,1361651284,1,1131),(197,18,62,0,4989,'body',0,1036,203,1131,1361651284,1,1132),(197,18,62,0,4990,'body',0,1000,204,1132,1361651284,1,1036),(197,18,62,0,4991,'body',0,1101,205,1036,1361651284,1,1000),(197,18,62,0,4992,'body',0,810,206,1000,1361651284,1,1101),(197,18,62,0,4993,'body',0,1072,207,1101,1361651284,1,810),(197,18,62,0,4994,'body',0,1040,208,810,1361651284,1,1072),(197,18,62,0,4995,'body',0,1133,209,1072,1361651284,1,1040),(197,18,62,0,4996,'body',0,1134,210,1040,1361651284,1,1133),(197,18,62,0,4997,'body',0,1030,211,1133,1361651284,1,1134),(197,18,62,0,4998,'body',0,1038,212,1134,1361651284,1,1030),(197,18,62,0,4999,'body',0,1135,213,1030,1361651284,1,1038),(197,18,62,0,5000,'body',0,1036,214,1038,1361651284,1,1135),(197,18,62,0,5001,'body',0,814,215,1135,1361651284,1,1036),(197,18,62,0,5002,'body',0,1136,216,1036,1361651284,1,814),(197,18,62,0,5003,'body',0,1040,217,814,1361651284,1,1136),(197,18,62,0,5004,'body',0,1022,218,1136,1361651284,1,1040),(197,18,62,0,5005,'body',0,934,219,1040,1361651284,1,1022),(197,18,62,0,5006,'body',0,1137,220,1022,1361651284,1,934),(197,18,62,0,5007,'body',0,1138,221,934,1361651284,1,1137),(197,18,62,0,5008,'body',0,1036,222,1137,1361651284,1,1138),(197,18,62,0,5009,'body',0,814,223,1138,1361651284,1,1036),(197,18,62,0,5010,'body',0,1139,224,1036,1361651284,1,814),(197,18,62,0,5011,'body',0,1044,225,814,1361651284,1,1139),(197,18,62,0,5012,'body',0,1140,226,1139,1361651284,1,1044),(197,18,62,0,5013,'body',0,1141,227,1044,1361651284,1,1140),(197,18,62,0,5014,'body',0,833,228,1140,1361651284,1,1141),(197,18,62,0,5015,'body',0,802,229,1141,1361651284,1,833),(197,18,62,0,5016,'body',0,925,230,833,1361651284,1,802),(197,18,62,0,5017,'body',0,816,231,802,1361651284,1,925),(197,18,62,0,5018,'body',0,1142,232,925,1361651284,1,816),(197,18,62,0,5019,'body',0,1080,233,816,1361651284,1,1142),(197,18,62,0,5020,'body',0,1143,234,1142,1361651284,1,1080),(197,18,62,0,5021,'body',0,833,235,1080,1361651284,1,1143),(197,18,62,0,5022,'body',0,1144,236,1143,1361651284,1,833),(197,18,62,0,5023,'body',0,833,237,833,1361651284,1,1144),(197,18,62,0,5024,'body',0,1036,238,1144,1361651284,1,833),(197,18,62,0,5025,'body',0,1145,239,833,1361651284,1,1036),(197,18,62,0,5026,'body',0,1146,240,1036,1361651284,1,1145),(197,18,62,0,5027,'body',0,1147,241,1145,1361651284,1,1146),(197,18,62,0,5028,'body',0,1148,242,1146,1361651284,1,1147),(197,18,62,0,5029,'body',0,1149,243,1147,1361651284,1,1148),(197,18,62,0,5030,'body',0,814,244,1148,1361651284,1,1149),(197,18,62,0,5031,'body',0,1150,245,1149,1361651284,1,814),(197,18,62,0,5032,'body',0,1151,246,814,1361651284,1,1150),(197,18,62,0,5033,'body',0,807,247,1150,1361651284,1,1151),(197,18,62,0,5034,'body',0,974,248,1151,1361651284,1,807),(197,18,62,0,5035,'body',0,1152,249,807,1361651284,1,974),(197,18,62,0,5036,'body',0,1063,250,974,1361651284,1,1152),(197,18,62,0,5037,'body',0,1040,251,1152,1361651284,1,1063),(197,18,62,0,5038,'body',0,1153,252,1063,1361651284,1,1040),(197,18,62,0,5039,'body',0,1154,253,1040,1361651284,1,1153),(197,18,62,0,5040,'body',0,1025,254,1153,1361651284,1,1154),(197,18,62,0,5041,'body',0,805,255,1154,1361651284,1,1025),(197,18,62,0,5042,'body',0,1155,256,1025,1361651284,1,805),(197,18,62,0,5043,'body',0,1069,257,805,1361651284,1,1155),(197,18,62,0,5044,'body',0,1156,258,1155,1361651284,1,1069),(197,18,62,0,5045,'body',0,1157,259,1069,1361651284,1,1156),(197,18,62,0,5046,'body',0,810,260,1156,1361651284,1,1157),(197,18,62,0,5047,'body',0,1158,261,1157,1361651284,1,810),(197,18,62,0,5048,'body',0,1029,262,810,1361651284,1,1158),(197,18,62,0,5049,'body',0,1036,263,1158,1361651284,1,1029),(197,18,62,0,5050,'body',0,802,264,1029,1361651284,1,1036),(197,18,62,0,5051,'body',0,1027,265,1036,1361651284,1,802),(197,18,62,0,5052,'body',0,1028,266,802,1361651284,1,1027),(197,18,62,0,5053,'body',0,816,267,1027,1361651284,1,1028),(197,18,62,0,5054,'body',0,1113,268,1028,1361651284,1,816),(197,18,62,0,5055,'body',0,833,269,816,1361651284,1,1113),(197,18,62,0,5056,'body',0,1022,270,1113,1361651284,1,833),(197,18,62,0,5057,'body',0,934,271,833,1361651284,1,1022),(197,18,62,0,5058,'body',0,1079,272,1022,1361651284,1,934),(197,18,62,0,5059,'body',0,1159,273,934,1361651284,1,1079),(197,18,62,0,5060,'body',0,1069,274,1079,1361651284,1,1159),(197,18,62,0,5061,'body',0,1160,275,1159,1361651284,1,1069),(197,18,62,0,5062,'body',0,1038,276,1069,1361651284,1,1160),(197,18,62,0,5063,'body',0,1161,277,1160,1361651284,1,1038),(197,18,62,0,5064,'body',0,1036,278,1038,1361651284,1,1161),(197,18,62,0,5065,'body',0,1162,279,1161,1361651284,1,1036),(197,18,62,0,5066,'body',0,1084,280,1036,1361651284,1,1162),(197,18,62,0,5067,'body',0,1163,281,1162,1361651284,1,1084),(197,18,62,0,5068,'body',0,1161,282,1084,1361651284,1,1163),(197,18,62,0,5069,'body',0,1163,283,1163,1361651284,1,1161),(197,18,62,0,5070,'body',0,1164,284,1161,1361651284,1,1163),(197,18,62,0,5071,'body',0,1086,285,1163,1361651284,1,1164),(197,18,62,0,5072,'body',0,1083,286,1164,1361651284,1,1086),(197,18,62,0,5073,'body',0,1030,287,1086,1361651284,1,1083),(197,18,62,0,5074,'body',0,1036,288,1083,1361651284,1,1030),(197,18,62,0,5075,'body',0,1025,289,1030,1361651284,1,1036),(197,18,62,0,5076,'body',0,1165,290,1036,1361651284,1,1025),(197,18,62,0,5077,'body',0,1071,291,1025,1361651284,1,1165),(197,18,62,0,5078,'body',0,1166,292,1165,1361651284,1,1071),(197,18,62,0,5079,'body',0,1038,293,1071,1361651284,1,1166),(197,18,62,0,5080,'body',0,1167,294,1166,1361651284,1,1038),(197,18,62,0,5081,'body',0,833,295,1038,1361651284,1,1167),(197,18,62,0,5082,'body',0,1168,296,1167,1361651284,1,833),(197,18,62,0,5083,'body',0,1169,297,833,1361651284,1,1168),(197,18,62,0,5084,'body',0,1170,298,1168,1361651284,1,1169),(197,18,62,0,5085,'body',0,1171,299,1169,1361651284,1,1170),(197,18,62,0,5086,'body',0,1172,300,1170,1361651284,1,1171),(197,18,62,0,5087,'body',0,1021,301,1171,1361651284,1,1172),(197,18,62,0,5088,'body',0,1173,302,1172,1361651284,1,1021),(197,18,62,0,5089,'body',0,1086,303,1021,1361651284,1,1173),(197,18,62,0,5090,'body',0,1087,304,1173,1361651284,1,1086),(197,18,62,0,5091,'body',0,1174,305,1086,1361651284,1,1087),(197,18,62,0,5092,'body',0,1175,306,1087,1361651284,1,1174),(197,18,62,0,5093,'body',0,802,307,1174,1361651284,1,1175),(197,18,62,0,5094,'body',0,1027,308,1175,1361651284,1,802),(197,18,62,0,5095,'body',0,1028,309,802,1361651284,1,1027),(197,18,62,0,5096,'body',0,805,310,1027,1361651284,1,1028),(197,18,62,0,5097,'body',0,810,311,1028,1361651284,1,805),(197,18,62,0,5098,'body',0,1176,312,805,1361651284,1,810),(197,18,62,0,5099,'body',0,929,313,810,1361651284,1,1176),(197,18,62,0,5100,'body',0,1098,314,1176,1361651284,1,929),(197,18,62,0,5101,'body',0,1109,315,929,1361651284,1,1098),(197,18,62,0,5102,'body',0,1094,316,1098,1361651284,1,1109),(197,18,62,0,5103,'body',0,1177,317,1109,1361651284,1,1094),(197,18,62,0,5104,'body',0,1178,318,1094,1361651284,1,1177),(197,18,62,0,5105,'body',0,1179,319,1177,1361651284,1,1178),(197,18,62,0,5106,'body',0,1021,320,1178,1361651284,1,1179),(197,18,62,0,5107,'body',0,802,321,1179,1361651284,1,1021),(197,18,62,0,5108,'body',0,1027,322,1021,1361651284,1,802),(197,18,62,0,5109,'body',0,1028,323,802,1361651284,1,1027),(197,18,62,0,5110,'body',0,1094,324,1027,1361651284,1,1028),(197,18,62,0,5111,'body',0,1180,325,1028,1361651284,1,1094),(197,18,62,0,5112,'body',0,1181,326,1094,1361651284,1,1180),(197,18,62,0,5113,'body',0,1069,327,1180,1361651284,1,1181),(197,18,62,0,5114,'body',0,1182,328,1181,1361651284,1,1069),(197,18,62,0,5115,'body',0,1040,329,1069,1361651284,1,1182),(197,18,62,0,5116,'body',0,802,330,1182,1361651284,1,1040),(197,18,62,0,5117,'body',0,1071,331,1040,1361651284,1,802),(197,18,62,0,5118,'body',0,1183,332,802,1361651284,1,1071),(197,18,62,0,5119,'body',0,1184,333,1071,1361651284,1,1183),(197,18,62,0,5120,'body',0,1185,334,1183,1361651284,1,1184),(197,18,62,0,5121,'body',0,1186,335,1184,1361651284,1,1185),(197,18,62,0,5122,'body',0,1187,336,1185,1361651284,1,1186),(197,18,62,0,5123,'body',0,1188,337,1186,1361651284,1,1187),(197,18,62,0,5124,'body',0,814,338,1187,1361651284,1,1188),(197,18,62,0,5125,'body',0,1112,339,1188,1361651284,1,814),(197,18,62,0,5126,'body',0,1189,340,814,1361651284,1,1112),(197,18,62,0,5127,'body',0,814,341,1112,1361651284,1,1189),(197,18,62,0,5128,'body',0,1043,342,1189,1361651284,1,814),(197,18,62,0,5129,'body',0,1190,343,814,1361651284,1,1043),(197,18,62,0,5130,'body',0,1191,344,1043,1361651284,1,1190),(197,18,62,0,5131,'body',0,1069,345,1190,1361651284,1,1191),(197,18,62,0,5132,'body',0,1022,346,1191,1361651284,1,1069),(197,18,62,0,5133,'body',0,929,347,1069,1361651284,1,1022),(197,18,62,0,5134,'body',0,1192,348,1022,1361651284,1,929),(197,18,62,0,5135,'body',0,1073,349,929,1361651284,1,1192),(197,18,62,0,5136,'body',0,814,350,1192,1361651284,1,1073),(197,18,62,0,5137,'body',0,1193,351,1073,1361651284,1,814),(197,18,62,0,5138,'body',0,1194,352,814,1361651284,1,1193),(197,18,62,0,5139,'body',0,1195,353,1193,1361651284,1,1194),(197,18,62,0,5140,'body',0,805,354,1194,1361651284,1,1195),(197,18,62,0,5141,'body',0,810,355,1195,1361651284,1,805),(197,18,62,0,5142,'body',0,1196,356,805,1361651284,1,810),(197,18,62,0,5143,'body',0,1040,357,810,1361651284,1,1196),(197,18,62,0,5144,'body',0,814,358,1196,1361651284,1,1040),(197,18,62,0,5145,'body',0,1197,359,1040,1361651284,1,814),(197,18,62,0,5146,'body',0,1074,360,814,1361651284,1,1197),(197,18,62,0,5147,'body',0,1198,361,1197,1361651284,1,1074),(197,18,62,0,5148,'body',0,1040,362,1074,1361651284,1,1198),(197,18,62,0,5149,'body',0,995,363,1198,1361651284,1,1040),(197,18,62,0,5150,'body',0,1095,364,1040,1361651284,1,995),(197,18,62,0,5151,'body',0,1199,365,995,1361651284,1,1095),(197,18,62,0,5152,'body',0,816,366,1095,1361651284,1,1199),(197,18,62,0,5153,'body',0,1050,367,1199,1361651284,1,816),(197,18,62,0,5154,'body',0,833,368,816,1361651284,1,1050),(197,18,62,0,5155,'body',0,1200,369,1050,1361651284,1,833),(197,18,62,0,5156,'body',0,1069,370,833,1361651284,1,1200),(197,18,62,0,5157,'body',0,1074,371,1200,1361651284,1,1069),(197,18,62,0,5158,'body',0,805,372,1069,1361651284,1,1074),(197,18,62,0,5159,'body',0,1201,373,1074,1361651284,1,805),(197,18,62,0,5160,'body',0,974,374,805,1361651284,1,1201),(197,18,62,0,5161,'body',0,814,375,1201,1361651284,1,974),(197,18,62,0,5162,'body',0,1028,376,974,1361651284,1,814),(197,18,62,0,5163,'body',0,1202,377,814,1361651284,1,1028),(197,18,62,0,5164,'body',0,1040,378,1028,1361651284,1,1202),(197,18,62,0,5165,'body',0,802,379,1202,1361651284,1,1040),(197,18,62,0,5166,'body',0,1028,380,1040,1361651284,1,802),(197,18,62,0,5167,'body',0,814,381,802,1361651284,1,1028),(197,18,62,0,5168,'body',0,1112,382,1028,1361651284,1,814),(197,18,62,0,5169,'body',0,1202,383,814,1361651284,1,1112),(197,18,62,0,5170,'body',0,1185,384,1112,1361651284,1,1202),(197,18,62,0,5171,'body',0,1013,385,1202,1361651284,1,1185),(197,18,62,0,5172,'body',0,929,386,1185,1361651284,1,1013),(197,18,62,0,5173,'body',0,1030,387,1013,1361651284,1,929),(197,18,62,0,5174,'body',0,1203,388,929,1361651284,1,1030),(197,18,62,0,5175,'body',0,802,389,1030,1361651284,1,1203),(197,18,62,0,5176,'body',0,1027,390,1203,1361651284,1,802),(197,18,62,0,5177,'body',0,1028,391,802,1361651284,1,1027),(197,18,62,0,5178,'body',0,805,392,1027,1361651284,1,1028),(197,18,62,0,5179,'body',0,810,393,1028,1361651284,1,805),(197,18,62,0,5180,'body',0,1204,394,805,1361651284,1,810),(197,18,62,0,5181,'body',0,1084,395,810,1361651284,1,1204),(197,18,62,0,5182,'body',0,1205,396,1204,1361651284,1,1084),(197,18,62,0,5183,'body',0,1040,397,1084,1361651284,1,1205),(197,18,62,0,5184,'body',0,814,398,1205,1361651284,1,1040),(197,18,62,0,5185,'body',0,1206,399,1040,1361651284,1,814),(197,18,62,0,5186,'body',0,1098,400,814,1361651284,1,1206),(197,18,62,0,5187,'body',0,814,401,1206,1361651284,1,1098),(197,18,62,0,5188,'body',0,1207,402,1098,1361651284,1,814),(197,18,62,0,5189,'body',0,968,403,814,1361651284,1,1207),(197,18,62,0,5190,'body',0,1208,404,1207,1361651284,1,968),(197,18,62,0,5191,'body',0,805,405,968,1361651284,1,1208),(197,18,62,0,5192,'body',0,1069,406,1208,1361651284,1,805),(197,18,62,0,5193,'body',0,1010,407,805,1361651284,1,1069),(197,18,62,0,5194,'body',0,810,408,1069,1361651284,1,1010),(197,18,62,0,5195,'body',0,1209,409,1010,1361651284,1,810),(197,18,62,0,5196,'body',0,1040,410,810,1361651284,1,1209),(197,18,62,0,5197,'body',0,814,411,1209,1361651284,1,1040),(197,18,62,0,5198,'body',0,1112,412,1040,1361651284,1,814),(197,18,62,0,5199,'body',0,1210,413,814,1361651284,1,1112),(197,18,62,0,5200,'body',0,1211,414,1112,1361651284,1,1210),(197,18,62,0,5201,'body',0,1054,415,1210,1361651284,1,1211),(197,18,62,0,5202,'body',0,1199,416,1211,1361651284,1,1054),(197,18,62,0,5203,'body',0,1212,417,1054,1361651284,1,1199),(197,18,62,0,5204,'body',0,1040,418,1199,1361651284,1,1212),(197,18,62,0,5205,'body',0,814,419,1212,1361651284,1,1040),(197,18,62,0,5206,'body',0,1213,420,1040,1361651284,1,814),(197,18,62,0,5207,'body',0,1047,421,814,1361651284,1,1213),(197,18,62,0,5208,'body',0,802,422,1213,1361651284,1,1047),(197,18,62,0,5209,'body',0,1027,423,1047,1361651284,1,802),(197,18,62,0,5210,'body',0,1092,424,802,1361651284,1,1027),(197,18,62,0,5211,'body',0,814,425,1027,1361651284,1,1092),(197,18,62,0,5212,'body',0,802,426,1092,1361651284,1,814),(197,18,62,0,5213,'body',0,1027,427,814,1361651284,1,802),(197,18,62,0,5214,'body',0,1092,428,802,1361651284,1,1027),(197,18,62,0,5215,'body',0,1209,429,1027,1361651284,1,1092),(197,18,62,0,5216,'body',0,1125,430,1092,1361651284,1,1209),(197,18,62,0,5217,'body',0,1126,431,1209,1361651284,1,1125),(197,18,62,0,5218,'body',0,1187,432,1125,1361651284,1,1126),(197,18,62,0,5219,'body',0,1038,433,1126,1361651284,1,1187),(197,18,62,0,5220,'body',0,1214,434,1187,1361651284,1,1038),(197,18,62,0,5221,'body',0,1013,435,1038,1361651284,1,1214),(197,18,62,0,5222,'body',0,1215,436,1214,1361651284,1,1013),(197,18,62,0,5223,'body',0,805,437,1013,1361651284,1,1215),(197,18,62,0,5224,'body',0,1216,438,1215,1361651284,1,805),(197,18,62,0,5225,'body',0,1217,439,805,1361651284,1,1216),(197,18,62,0,5226,'body',0,1112,440,1216,1361651284,1,1217),(197,18,62,0,5227,'body',0,1218,441,1217,1361651284,1,1112),(197,18,62,0,5228,'body',0,802,442,1112,1361651284,1,1218),(197,18,62,0,5229,'body',0,1219,443,1218,1361651284,1,802),(197,18,62,0,5230,'body',0,1185,444,802,1361651284,1,1219),(197,18,62,0,5231,'body',0,1187,445,1219,1361651284,1,1185),(197,18,62,0,5232,'body',0,1188,446,1185,1361651284,1,1187),(197,18,62,0,5233,'body',0,1220,447,1187,1361651284,1,1188),(197,18,62,0,5234,'body',0,1219,448,1188,1361651284,1,1220),(197,18,62,0,5235,'body',0,965,449,1220,1361651284,1,1219),(197,18,62,0,5236,'body',0,963,450,1219,1361651284,1,965),(197,18,62,0,5237,'body',0,1187,451,965,1361651284,1,963),(197,18,62,0,5238,'body',0,1188,452,963,1361651284,1,1187),(197,18,62,0,5239,'body',0,1221,453,1187,1361651284,1,1188),(197,18,62,0,5240,'body',0,963,454,1188,1361651284,1,1221),(197,18,62,0,5241,'body',0,1222,455,1221,1361651284,1,963),(197,18,62,0,5242,'body',0,1187,456,963,1361651284,1,1222),(197,18,62,0,5243,'body',0,1188,457,1222,1361651284,1,1187),(197,18,62,0,5244,'body',0,1223,458,1187,1361651284,1,1188),(197,18,62,0,5245,'body',0,802,459,1188,1361651284,1,1223),(197,18,62,0,5246,'body',0,1027,460,1223,1361651284,1,802),(197,18,62,0,5247,'body',0,1224,461,802,1361651284,1,1027),(197,18,62,0,5248,'body',0,805,462,1027,1361651284,1,1224),(197,18,62,0,5249,'body',0,1187,463,1224,1361651284,1,805),(197,18,62,0,5250,'body',0,1188,464,805,1361651284,1,1187),(197,18,62,0,5251,'body',0,1112,465,1187,1361651284,1,1188),(197,18,62,0,5252,'body',0,1071,466,1188,1361651284,1,1112),(197,18,62,0,5253,'body',0,1224,467,1112,1361651284,1,1071),(197,18,62,0,5254,'body',0,814,468,1071,1361651284,1,1224),(197,18,62,0,5255,'body',0,1183,469,1224,1361651284,1,814),(197,18,62,0,5256,'body',0,1040,470,814,1361651284,1,1183),(197,18,62,0,5257,'body',0,814,471,1183,1361651284,1,1040),(197,18,62,0,5258,'body',0,1225,472,1040,1361651284,1,814),(197,18,62,0,5259,'body',0,814,473,814,1361651284,1,1225),(197,18,62,0,5260,'body',0,802,474,1225,1361651284,1,814),(197,18,62,0,5261,'body',0,1226,475,814,1361651284,1,802),(197,18,62,0,5262,'body',0,1227,476,802,1361651284,1,1226),(197,18,62,0,5263,'body',0,805,477,1226,1361651284,1,1227),(197,18,62,0,5264,'body',0,1228,478,1227,1361651284,1,805),(197,18,62,0,5265,'body',0,1229,479,805,1361651284,1,1228),(197,18,62,0,5266,'body',0,1217,480,1228,1361651284,1,1229),(197,18,62,0,5267,'body',0,810,481,1229,1361651284,1,1217),(197,18,62,0,5268,'body',0,1230,482,1217,1361651284,1,810),(197,18,62,0,5269,'body',0,1231,483,810,1361651284,1,1230),(197,18,62,0,5270,'body',0,1152,484,1230,1361651284,1,1231),(197,18,62,0,5271,'body',0,1079,485,1231,1361651284,1,1152),(197,18,62,0,5272,'body',0,1232,486,1152,1361651284,1,1079),(197,18,62,0,5273,'body',0,1233,487,1079,1361651284,1,1232),(197,18,62,0,5274,'body',0,1030,488,1232,1361651284,1,1233),(197,18,62,0,5275,'body',0,1234,489,1233,1361651284,1,1030),(197,18,62,0,5276,'body',0,1235,490,1030,1361651284,1,1234),(197,18,62,0,5277,'body',0,816,491,1234,1361651284,1,1235),(197,18,62,0,5278,'body',0,1082,492,1235,1361651284,1,816),(197,18,62,0,5279,'body',0,1022,493,816,1361651284,1,1082),(197,18,62,0,5280,'body',0,805,494,1082,1361651284,1,1022),(197,18,62,0,5281,'body',0,1236,495,1022,1361651284,1,805),(197,18,62,0,5282,'body',0,1237,496,805,1361651284,1,1236),(197,18,62,0,5283,'body',0,1238,497,1236,1361651284,1,1237),(197,18,62,0,5284,'body',0,1131,498,1237,1361651284,1,1238),(197,18,62,0,5285,'body',0,1239,499,1238,1361651284,1,1131),(197,18,62,0,5286,'body',0,1094,500,1131,1361651284,1,1239),(197,18,62,0,5287,'body',0,1087,501,1239,1361651284,1,1094),(197,18,62,0,5288,'body',0,1240,502,1094,1361651284,1,1087),(197,18,62,0,5289,'body',0,1241,503,1087,1361651284,1,1240),(197,18,62,0,5290,'body',0,1242,504,1240,1361651284,1,1241),(197,18,62,0,5291,'body',0,1175,505,1241,1361651284,1,1242),(197,18,62,0,5292,'body',0,1183,506,1242,1361651284,1,1175),(197,18,62,0,5293,'body',0,1243,507,1175,1361651284,1,1183),(197,18,62,0,5294,'body',0,1044,508,1183,1361651284,1,1243),(197,18,62,0,5295,'body',0,1244,509,1243,1361651284,1,1044),(197,18,62,0,5296,'body',0,833,510,1044,1361651284,1,1244),(197,18,62,0,5297,'body',0,1245,511,1244,1361651284,1,833),(197,18,62,0,5298,'body',0,1246,512,833,1361651284,1,1245),(197,18,62,0,5299,'body',0,1247,513,1245,1361651284,1,1246),(197,18,62,0,5300,'body',0,1059,514,1246,1361651284,1,1247),(197,18,62,0,5301,'body',0,1056,515,1247,1361651284,1,1059),(197,18,62,0,5302,'body',0,1047,516,1059,1361651284,1,1056),(197,18,62,0,5303,'body',0,1043,517,1056,1361651284,1,1047),(197,18,62,0,5304,'body',0,1036,518,1047,1361651284,1,1043),(197,18,62,0,5305,'body',0,1043,519,1043,1361651284,1,1036),(197,18,62,0,5306,'body',0,1030,520,1036,1361651284,1,1043),(197,18,62,0,5307,'body',0,1248,521,1043,1361651284,1,1030),(197,18,62,0,5308,'body',0,1013,522,1030,1361651284,1,1248),(197,18,62,0,5309,'body',0,1040,523,1248,1361651284,1,1013),(197,18,62,0,5310,'body',0,814,524,1013,1361651284,1,1040),(197,18,62,0,5311,'body',0,1249,525,1040,1361651284,1,814),(197,18,62,0,5312,'body',0,1250,526,814,1361651284,1,1249),(197,18,62,0,5313,'body',0,1069,527,1249,1361651284,1,1250),(197,18,62,0,5314,'body',0,1043,528,1250,1361651284,1,1069),(197,18,62,0,5315,'body',0,1028,529,1069,1361651284,1,1043),(197,18,62,0,5316,'body',0,1251,530,1043,1361651284,1,1028),(197,18,62,0,5317,'body',0,1185,531,1028,1361651284,1,1251),(197,18,62,0,5318,'body',0,1236,532,1251,1361651284,1,1185),(197,18,62,0,5319,'body',0,1237,533,1185,1361651284,1,1236),(197,18,62,0,5320,'body',0,814,534,1236,1361651284,1,1237),(197,18,62,0,5321,'body',0,1112,535,1237,1361651284,1,814),(197,18,62,0,5322,'body',0,997,536,814,1361651284,1,1112),(197,18,62,0,5323,'body',0,1125,537,1112,1361651284,1,997),(197,18,62,0,5324,'body',0,810,538,997,1361651284,1,1125),(197,18,62,0,5325,'body',0,1236,539,1125,1361651284,1,810),(197,18,62,0,5326,'body',0,1252,540,810,1361651284,1,1236),(197,18,62,0,5327,'body',0,833,541,1236,1361651284,1,1252),(197,18,62,0,5328,'body',0,810,542,1252,1361651284,1,833),(197,18,62,0,5329,'body',0,1072,543,833,1361651284,1,810),(197,18,62,0,5330,'body',0,1040,544,810,1361651284,1,1072),(197,18,62,0,5331,'body',0,1253,545,1072,1361651284,1,1040),(197,18,62,0,5332,'body',0,1254,546,1040,1361651284,1,1253),(197,18,62,0,5333,'body',0,1025,547,1253,1361651284,1,1254),(197,18,62,0,5334,'body',0,1188,548,1254,1361651284,1,1025),(197,18,62,0,5335,'body',0,1255,549,1025,1361651284,1,1188),(197,18,62,0,5336,'body',0,810,550,1188,1361651284,1,1255),(197,18,62,0,5337,'body',0,1256,551,1255,1361651284,1,810),(197,18,62,0,5338,'body',0,1040,552,810,1361651284,1,1256),(197,18,62,0,5339,'body',0,1131,553,1256,1361651284,1,1040),(197,18,62,0,5340,'body',0,802,554,1040,1361651284,1,1131),(197,18,62,0,5341,'body',0,1082,555,1131,1361651284,1,802),(197,18,62,0,5342,'body',0,1037,556,802,1361651284,1,1082),(197,18,62,0,5343,'body',0,1257,557,1082,1361651284,1,1037),(197,18,62,0,5344,'body',0,1258,558,1037,1361651284,1,1257),(197,18,62,0,5345,'body',0,1026,559,1257,1361651284,1,1258),(197,18,62,0,5346,'body',0,1001,560,1258,1361651284,1,1026),(197,18,62,0,5347,'body',0,814,561,1026,1361651284,1,1001),(197,18,62,0,5348,'body',0,1259,562,1001,1361651284,1,814),(197,18,62,0,5349,'body',0,1260,563,814,1361651284,1,1259),(197,18,62,0,5350,'body',0,1184,564,1259,1361651284,1,1260),(197,18,62,0,5351,'body',0,833,565,1260,1361651284,1,1184),(197,18,62,0,5352,'body',0,921,566,1184,1361651284,1,833),(197,18,62,0,5353,'body',0,1258,567,833,1361651284,1,921),(197,18,62,0,5354,'body',0,1261,568,921,1361651284,1,1258),(197,18,62,0,5355,'body',0,814,569,1258,1361651284,1,1261),(197,18,62,0,5356,'body',0,1262,570,1261,1361651284,1,814),(197,18,62,0,5357,'body',0,1098,571,814,1361651284,1,1262),(197,18,62,0,5358,'body',0,1122,572,1262,1361651284,1,1098),(197,18,62,0,5359,'body',0,1047,573,1098,1361651284,1,1122),(197,18,62,0,5360,'body',0,810,574,1122,1361651284,1,1047),(197,18,62,0,5361,'body',0,1263,575,1047,1361651284,1,810),(197,18,62,0,5362,'body',0,1264,576,810,1361651284,1,1263),(197,18,62,0,5363,'body',0,1094,577,1263,1361651284,1,1264),(197,18,62,0,5364,'body',0,1087,578,1264,1361651284,1,1094),(197,18,62,0,5365,'body',0,921,579,1094,1361651284,1,1087),(197,18,62,0,5366,'body',0,1265,580,1087,1361651284,1,921),(197,18,62,0,5367,'body',0,1036,581,921,1361651284,1,1265),(197,18,62,0,5368,'body',0,1266,582,1265,1361651284,1,1036),(197,18,62,0,5369,'body',0,1082,583,1036,1361651284,1,1266),(197,18,62,0,5370,'body',0,809,584,1266,1361651284,1,1082),(197,18,62,0,5371,'body',0,1267,585,1082,1361651284,1,809),(197,18,62,0,5372,'body',0,1268,586,809,1361651284,1,1267),(197,18,62,0,5373,'body',0,1001,587,1267,1361651284,1,1268),(197,18,62,0,5374,'body',0,1112,588,1268,1361651284,1,1001),(197,18,62,0,5375,'body',0,1269,589,1001,1361651284,1,1112),(197,18,62,0,5376,'body',0,1131,590,1112,1361651284,1,1269),(197,18,62,0,5377,'body',0,1071,591,1269,1361651284,1,1131),(197,18,62,0,5378,'body',0,810,592,1131,1361651284,1,1071),(197,18,62,0,5379,'body',0,1093,593,1071,1361651284,1,810),(197,18,62,0,5380,'body',0,1270,594,810,1361651284,1,1093),(197,18,62,0,5381,'body',0,1271,595,1093,1361651284,1,1270),(197,18,62,0,5382,'body',0,1001,596,1270,1361651284,1,1271),(197,18,62,0,5383,'body',0,1069,597,1271,1361651284,1,1001),(197,18,62,0,5384,'body',0,1272,598,1001,1361651284,1,1069),(197,18,62,0,5385,'body',0,1008,599,1069,1361651284,1,1272),(197,18,62,0,5386,'body',0,1273,600,1272,1361651284,1,1008),(197,18,62,0,5387,'body',0,802,601,1008,1361651284,1,1273),(197,18,62,0,5388,'body',0,1027,602,1273,1361651284,1,802),(197,18,62,0,5389,'body',0,1028,603,802,1361651284,1,1027),(197,18,62,0,5390,'body',0,1274,604,1027,1361651284,1,1028),(197,18,62,0,5391,'body',0,1059,605,1028,1361651284,1,1274),(197,18,62,0,5392,'body',0,810,606,1274,1361651284,1,1059),(197,18,62,0,5393,'body',0,929,607,1059,1361651284,1,810),(197,18,62,0,5394,'body',0,1098,608,810,1361651284,1,929),(197,18,62,0,5395,'body',0,1275,609,929,1361651284,1,1098),(197,18,62,0,5396,'body',0,1173,610,1098,1361651284,1,1275),(197,18,62,0,5397,'body',0,1273,611,1275,1361651284,1,1173),(197,18,62,0,5398,'body',0,1276,612,1173,1361651284,1,1273),(197,18,62,0,5399,'body',0,1277,613,1273,1361651284,1,1276),(197,18,62,0,5400,'body',0,1278,614,1276,1361651284,1,1277),(197,18,62,0,5401,'body',0,1200,615,1277,1361651284,1,1278),(197,18,62,0,5402,'body',0,1013,616,1278,1361651284,1,1200),(197,18,62,0,5403,'body',0,1040,617,1200,1361651284,1,1013),(197,18,62,0,5404,'body',0,814,618,1013,1361651284,1,1040),(197,18,62,0,5405,'body',0,1279,619,1040,1361651284,1,814),(197,18,62,0,5406,'body',0,1185,620,814,1361651284,1,1279),(197,18,62,0,5407,'body',0,1103,621,1279,1361651284,1,1185),(197,18,62,0,5408,'body',0,1036,622,1185,1361651284,1,1103),(197,18,62,0,5409,'body',0,1117,623,1103,1361651284,1,1036),(197,18,62,0,5410,'body',0,810,624,1036,1361651284,1,1117),(197,18,62,0,5411,'body',0,807,625,1117,1361651284,1,810),(197,18,62,0,5412,'body',0,1030,626,810,1361651284,1,807),(197,18,62,0,5413,'body',0,802,627,807,1361651284,1,1030),(197,18,62,0,5414,'body',0,1027,628,1030,1361651284,1,802),(197,18,62,0,5415,'body',0,1028,629,802,1361651284,1,1027),(197,18,62,0,5416,'body',0,814,630,1027,1361651284,1,1028),(197,18,62,0,5417,'body',0,1280,631,1028,1361651284,1,814),(197,18,62,0,5418,'body',0,1281,632,814,1361651284,1,1280),(197,18,62,0,5419,'body',0,833,633,1280,1361651284,1,1281),(197,18,62,0,5420,'body',0,810,634,1281,1361651284,1,833),(197,18,62,0,5421,'body',0,1072,635,833,1361651284,1,810),(197,18,62,0,5422,'body',0,1040,636,810,1361651284,1,1072),(197,18,62,0,5423,'body',0,814,637,1072,1361651284,1,1040),(197,18,62,0,5424,'body',0,1282,638,1040,1361651284,1,814),(197,18,62,0,5425,'body',0,1074,639,814,1361651284,1,1282),(197,18,62,0,5426,'body',0,1184,640,1282,1361651284,1,1074),(197,18,62,0,5427,'body',0,1283,641,1074,1361651284,1,1184),(197,18,62,0,5428,'body',0,1284,642,1184,1361651284,1,1283),(197,18,62,0,5429,'body',0,1285,643,1283,1361651284,1,1284),(197,18,62,0,5430,'body',0,1286,644,1284,1361651284,1,1285),(197,18,62,0,5431,'body',0,1287,645,1285,1361651284,1,1286),(197,18,62,0,5432,'body',0,1095,646,1286,1361651284,1,1287),(197,18,62,0,5433,'body',0,1276,647,1287,1361651284,1,1095),(197,18,62,0,5434,'body',0,1277,648,1095,1361651284,1,1276),(197,18,62,0,5435,'body',0,1126,649,1276,1361651284,1,1277),(197,18,62,0,5436,'body',0,1288,650,1277,1361651284,1,1126),(197,18,62,0,5437,'body',0,1001,651,1126,1361651284,1,1288),(197,18,62,0,5438,'body',0,814,652,1288,1361651284,1,1001),(197,18,62,0,5439,'body',0,929,653,1001,1361651284,1,814),(197,18,62,0,5440,'body',0,1210,654,814,1361651284,1,929),(197,18,62,0,5441,'body',0,1269,655,929,1361651284,1,1210),(197,18,62,0,5442,'body',0,816,656,1210,1361651284,1,1269),(197,18,62,0,5443,'body',0,1228,657,1269,1361651284,1,816),(197,18,62,0,5444,'body',0,1094,658,816,1361651284,1,1228),(197,18,62,0,5445,'body',0,1114,659,1228,1361651284,1,1094),(197,18,62,0,5446,'body',0,1054,660,1094,1361651284,1,1114),(197,18,62,0,5447,'body',0,1119,661,1114,1361651284,1,1054),(197,18,62,0,5448,'body',0,810,662,1054,1361651284,1,1119),(197,18,62,0,5449,'body',0,1072,663,1119,1361651284,1,810),(197,18,62,0,5450,'body',0,1040,664,810,1361651284,1,1072),(197,18,62,0,5451,'body',0,814,665,1072,1361651284,1,1040),(197,18,62,0,5452,'body',0,802,666,1040,1361651284,1,814),(197,18,62,0,5453,'body',0,1027,667,814,1361651284,1,802),(197,18,62,0,5454,'body',0,1092,668,802,1361651284,1,1027),(197,18,62,0,5455,'body',0,1025,669,1027,1361651284,1,1092),(197,18,62,0,5456,'body',0,1030,670,1092,1361651284,1,1025),(197,18,62,0,5457,'body',0,1289,671,1025,1361651284,1,1030),(197,18,62,0,5458,'body',0,1290,672,1030,1361651284,1,1289),(197,18,62,0,5459,'body',0,1291,673,1289,1361651284,1,1290),(197,18,62,0,5460,'body',0,1030,674,1290,1361651284,1,1291),(197,18,62,0,5461,'body',0,1292,675,1291,1361651284,1,1030),(197,18,62,0,5462,'body',0,1013,676,1030,1361651284,1,1292),(197,18,62,0,5463,'body',0,1040,677,1292,1361651284,1,1013),(197,18,62,0,5464,'body',0,814,678,1013,1361651284,1,1040),(197,18,62,0,5465,'body',0,1293,679,1040,1361651284,1,814),(197,18,62,0,5466,'body',0,802,680,814,1361651284,1,1293),(197,18,62,0,5467,'body',0,1027,681,1293,1361651284,1,802),(197,18,62,0,5468,'body',0,1025,682,802,1361651284,1,1027),(197,18,62,0,5469,'body',0,1228,683,1027,1361651284,1,1025),(197,18,62,0,5470,'body',0,1294,684,1025,1361651284,1,1228),(197,18,62,0,5471,'body',0,1008,685,1228,1361651284,1,1294),(197,18,62,0,5472,'body',0,802,686,1294,1361651284,1,1008),(197,18,62,0,5473,'body',0,1027,687,1008,1361651284,1,802),(197,18,62,0,5474,'body',0,1295,688,802,1361651284,1,1027),(197,18,62,0,5475,'body',0,1296,689,1027,1361651284,1,1295),(197,18,62,0,5476,'body',0,1008,690,1295,1361651284,1,1296),(197,18,62,0,5477,'body',0,1256,691,1296,1361651284,1,1008),(197,18,62,0,5478,'body',0,1040,692,1008,1361651284,1,1256),(197,18,62,0,5479,'body',0,802,693,1256,1361651284,1,1040),(197,18,62,0,5480,'body',0,1027,694,1040,1361651284,1,802),(197,18,62,0,5481,'body',0,1028,695,802,1361651284,1,1027),(197,18,62,0,5482,'body',0,1297,696,1027,1361651284,1,1028),(197,18,62,0,5483,'body',0,1298,697,1028,1361651284,1,1297),(197,18,62,0,5484,'body',0,814,698,1297,1361651284,1,1298),(197,18,62,0,5485,'body',0,1299,699,1298,1361651284,1,814),(197,18,62,0,5486,'body',0,929,700,814,1361651284,1,1299),(197,18,62,0,5487,'body',0,1112,701,1299,1361651284,1,929),(197,18,62,0,5488,'body',0,1155,702,929,1361651284,1,1112),(197,18,62,0,5489,'body',0,1226,703,1112,1361651284,1,1155),(197,18,62,0,5490,'body',0,1022,704,1155,1361651284,1,1226),(197,18,62,0,5491,'body',0,1239,705,1226,1361651284,1,1022),(197,18,62,0,5492,'body',0,1069,706,1022,1361651284,1,1239),(197,18,62,0,5493,'body',0,814,707,1239,1361651284,1,1069),(197,18,62,0,5494,'body',0,1098,708,1069,1361651284,1,814),(197,18,62,0,5495,'body',0,1300,709,814,1361651284,1,1098),(197,18,62,0,5496,'body',0,1059,710,1098,1361651284,1,1300),(197,18,62,0,5497,'body',0,1301,711,1300,1361651284,1,1059),(197,18,62,0,5498,'body',0,1170,712,1059,1361651284,1,1301),(197,18,62,0,5499,'body',0,1302,713,1301,1361651284,1,1170),(197,18,62,0,5500,'body',0,1008,714,1170,1361651284,1,1302),(197,18,62,0,5501,'body',0,1131,715,1302,1361651284,1,1008),(197,18,62,0,5502,'body',0,1303,716,1008,1361651284,1,1131),(197,18,62,0,5503,'body',0,1304,717,1131,1361651284,1,1303),(197,18,62,0,5504,'body',0,1036,718,1303,1361651284,1,1304),(197,18,62,0,5505,'body',0,814,719,1304,1361651284,1,1036),(197,18,62,0,5506,'body',0,929,720,1036,1361651284,1,814),(197,18,62,0,5507,'body',0,1305,721,814,1361651284,1,929),(197,18,62,0,5508,'body',0,1057,722,929,1361651284,1,1305),(197,18,62,0,5509,'body',0,1131,723,1305,1361651284,1,1057),(197,18,62,0,5510,'body',0,1306,724,1057,1361651284,1,1131),(197,18,62,0,5511,'body',0,1239,725,1131,1361651284,1,1306),(197,18,62,0,5512,'body',0,1069,726,1306,1361651284,1,1239),(197,18,62,0,5513,'body',0,1070,727,1239,1361651284,1,1069),(197,18,62,0,5514,'body',0,1185,728,1069,1361651284,1,1070),(197,18,62,0,5515,'body',0,1038,729,1070,1361651284,1,1185),(197,18,62,0,5516,'body',0,1307,730,1185,1361651284,1,1038),(197,18,62,0,5517,'body',0,1010,731,1038,1361651284,1,1307),(197,18,62,0,5518,'body',0,1094,732,1307,1361651284,1,1010),(197,18,62,0,5519,'body',0,1308,733,1010,1361651284,1,1094),(197,18,62,0,5520,'body',0,1036,734,1094,1361651284,1,1308),(197,18,62,0,5521,'body',0,1309,735,1308,1361651284,1,1036),(197,18,62,0,5522,'body',0,1310,736,1036,1361651284,1,1309),(197,18,62,0,5523,'body',0,925,737,1309,1361651284,1,1310),(197,18,62,0,5524,'body',0,1311,738,1310,1361651284,1,925),(197,18,62,0,5525,'body',0,1030,739,925,1361651284,1,1311),(197,18,62,0,5526,'body',0,1038,740,1311,1361651284,1,1030),(197,18,62,0,5527,'body',0,1312,741,1030,1361651284,1,1038),(197,18,62,0,5528,'body',0,1313,742,1038,1361651284,1,1312),(197,18,62,0,5529,'body',0,1314,743,1312,1361651284,1,1313),(197,18,62,0,5530,'body',0,1094,744,1313,1361651284,1,1314),(197,18,62,0,5531,'body',0,1247,745,1314,1361651284,1,1094),(197,18,62,0,5532,'body',0,1059,746,1094,1361651284,1,1247),(197,18,62,0,5533,'body',0,1095,747,1247,1361651284,1,1059),(197,18,62,0,5534,'body',0,1036,748,1059,1361651284,1,1095),(197,18,62,0,5535,'body',0,1315,749,1095,1361651284,1,1036),(197,18,62,0,5536,'body',0,1297,750,1036,1361651284,1,1315),(197,18,62,0,5537,'body',0,1228,751,1315,1361651284,1,1297),(197,18,62,0,5538,'body',0,814,752,1297,1361651284,1,1228),(197,18,62,0,5539,'body',0,1316,753,1228,1361651284,1,814),(197,18,62,0,5540,'body',0,1317,754,814,1361651284,1,1316),(197,18,62,0,5541,'body',0,1036,755,1316,1361651284,1,1317),(197,18,62,0,5542,'body',0,1318,756,1317,1361651284,1,1036),(197,18,62,0,5543,'body',0,805,757,1036,1361651284,1,1318),(197,18,62,0,5544,'body',0,1069,758,1318,1361651284,1,805),(197,18,62,0,5545,'body',0,1094,759,805,1361651284,1,1069),(197,18,62,0,5546,'body',0,1319,760,1069,1361651284,1,1094),(197,18,62,0,5547,'body',0,1095,761,1094,1361651284,1,1319),(197,18,62,0,5548,'body',0,1036,762,1319,1361651284,1,1095),(197,18,62,0,5549,'body',0,1320,763,1095,1361651284,1,1036),(197,18,62,0,5550,'body',0,1119,764,1036,1361651284,1,1320),(197,18,62,0,5551,'body',0,814,765,1320,1361651284,1,1119),(197,18,62,0,5552,'body',0,929,766,1119,1361651284,1,814),(197,18,62,0,5553,'body',0,1305,767,814,1361651284,1,929),(197,18,62,0,5554,'body',0,1297,768,929,1361651284,1,1305),(197,18,62,0,5555,'body',0,1228,769,1305,1361651284,1,1297),(197,18,62,0,5556,'body',0,1311,770,1297,1361651284,1,1228),(197,18,62,0,5557,'body',0,1108,771,1228,1361651284,1,1311),(197,18,62,0,5558,'body',0,1022,772,1311,1361651284,1,1108),(197,18,62,0,5559,'body',0,1321,773,1108,1361651284,1,1022),(197,18,62,0,5560,'body',0,814,774,1022,1361651284,1,1321),(197,18,62,0,5561,'body',0,1322,775,1321,1361651284,1,814),(197,18,62,0,5562,'body',0,1323,776,814,1361651284,1,1322),(197,18,62,0,5563,'body',0,1324,777,1322,1361651284,1,1323),(197,18,62,0,5564,'body',0,816,778,1323,1361651284,1,1324),(197,18,62,0,5565,'body',0,814,779,1324,1361651284,1,816),(197,18,62,0,5566,'body',0,1295,780,816,1361651284,1,814),(197,18,62,0,5567,'body',0,1305,781,814,1361651284,1,1295),(197,18,62,0,5568,'body',0,1036,782,1295,1361651284,1,1305),(197,18,62,0,5569,'body',0,1054,783,1305,1361651284,1,1036),(197,18,62,0,5570,'body',0,1325,784,1036,1361651284,1,1054),(197,18,62,0,5571,'body',0,816,785,1054,1361651284,1,1325),(197,18,62,0,5572,'body',0,810,786,1325,1361651284,1,816),(197,18,62,0,5573,'body',0,1093,787,816,1361651284,1,810),(197,18,62,0,5574,'body',0,1258,788,810,1361651284,1,1093),(197,18,62,0,5575,'body',0,833,789,1093,1361651284,1,1258),(197,18,62,0,5576,'body',0,1070,790,1258,1361651284,1,833),(197,18,62,0,5577,'body',0,1185,791,833,1361651284,1,1070),(197,18,62,0,5578,'body',0,810,792,1070,1361651284,1,1185),(197,18,62,0,5579,'body',0,1072,793,1185,1361651284,1,810),(197,18,62,0,5580,'body',0,1040,794,810,1361651284,1,1072),(197,18,62,0,5581,'body',0,1326,795,1072,1361651284,1,1040),(197,18,62,0,5582,'body',0,1327,796,1040,1361651284,1,1326),(197,18,62,0,5583,'body',0,1328,797,1326,1361651284,1,1327),(197,18,62,0,5584,'body',0,1030,798,1327,1361651284,1,1328),(197,18,62,0,5585,'body',0,1036,799,1328,1361651284,1,1030),(197,18,62,0,5586,'body',0,814,800,1030,1361651284,1,1036),(197,18,62,0,5587,'body',0,1112,801,1036,1361651284,1,814),(197,18,62,0,5588,'body',0,1305,802,814,1361651284,1,1112),(197,18,62,0,5589,'body',0,1036,803,1112,1361651284,1,1305),(197,18,62,0,5590,'body',0,1105,804,1305,1361651284,1,1036),(197,18,62,0,5591,'body',0,1131,805,1036,1361651284,1,1105),(197,18,62,0,5592,'body',0,1036,806,1105,1361651284,1,1131),(197,18,62,0,5593,'body',0,1329,807,1131,1361651284,1,1036),(197,18,62,0,5594,'body',0,1330,808,1036,1361651284,1,1329),(197,18,62,0,5595,'body',0,1036,809,1329,1361651284,1,1330),(197,18,62,0,5596,'body',0,1119,810,1330,1361651284,1,1036),(197,18,62,0,5597,'body',0,1295,811,1036,1361651284,1,1119),(197,18,62,0,5598,'body',0,1184,812,1119,1361651284,1,1295),(197,18,62,0,5599,'body',0,1331,813,1295,1361651284,1,1184),(197,18,62,0,5600,'body',0,1332,814,1184,1361651284,1,1331),(197,18,62,0,5601,'body',0,1269,815,1331,1361651284,1,1332),(197,18,62,0,5602,'body',0,1094,816,1332,1361651284,1,1269),(197,18,62,0,5603,'body',0,1211,817,1269,1361651284,1,1094),(197,18,62,0,5604,'body',0,1333,818,1094,1361651284,1,1211),(197,18,62,0,5605,'body',0,1036,819,1211,1361651284,1,1333),(197,18,62,0,5606,'body',0,1334,820,1333,1361651284,1,1036),(197,18,62,0,5607,'body',0,1008,821,1036,1361651284,1,1334),(197,18,62,0,5608,'body',0,1063,822,1334,1361651284,1,1008),(197,18,62,0,5609,'body',0,1311,823,1008,1361651284,1,1063),(197,18,62,0,5610,'body',0,1008,824,1063,1361651284,1,1311),(197,18,62,0,5611,'body',0,1335,825,1311,1361651284,1,1008),(197,18,62,0,5612,'body',0,1040,826,1008,1361651284,1,1335),(197,18,62,0,5613,'body',0,814,827,1335,1361651284,1,1040),(197,18,62,0,5614,'body',0,929,828,1040,1361651284,1,814),(197,18,62,0,5615,'body',0,1305,829,814,1361651284,1,929),(197,18,62,0,5616,'body',0,1008,830,929,1361651284,1,1305),(197,18,62,0,5617,'body',0,1094,831,1305,1361651284,1,1008),(197,18,62,0,5618,'body',0,1073,832,1008,1361651284,1,1094),(197,18,62,0,5619,'body',0,814,833,1094,1361651284,1,1073),(197,18,62,0,5620,'body',0,1336,834,1073,1361651284,1,814),(197,18,62,0,5621,'body',0,814,835,814,1361651284,1,1336),(197,18,62,0,5622,'body',0,1337,836,1336,1361651284,1,814),(197,18,62,0,5623,'body',0,1040,837,814,1361651284,1,1337),(197,18,62,0,5624,'body',0,1022,838,1337,1361651284,1,1040),(197,18,62,0,5625,'body',0,1076,839,1040,1361651284,1,1022),(197,18,62,0,5626,'body',0,1338,840,1022,1361651284,1,1076),(197,18,62,0,5627,'body',0,805,841,1076,1361651284,1,1338),(197,18,62,0,5628,'body',0,1036,842,1338,1361651284,1,805),(197,18,62,0,5629,'body',0,1339,843,805,1361651284,1,1036),(197,18,62,0,5630,'body',0,809,844,1036,1361651284,1,1339),(197,18,62,0,5631,'body',0,814,845,1339,1361651284,1,809),(197,18,62,0,5632,'body',0,1299,846,809,1361651284,1,814),(197,18,62,0,5633,'body',0,929,847,814,1361651284,1,1299),(197,18,62,0,5634,'body',0,1340,848,1299,1361651284,1,929),(197,18,62,0,5635,'body',0,1269,849,929,1361651284,1,1340),(197,18,62,0,5636,'body',0,1086,850,1340,1361651284,1,1269),(197,18,62,0,5637,'body',0,1087,851,1269,1361651284,1,1086),(197,18,62,0,5638,'body',0,1053,852,1086,1361651284,1,1087),(197,18,62,0,5639,'body',0,1036,853,1087,1361651284,1,1053),(197,18,62,0,5640,'body',0,1341,854,1053,1361651284,1,1036),(197,18,62,0,5641,'body',0,1036,855,1036,1361651284,1,1341),(197,18,62,0,5642,'body',0,1334,856,1341,1361651284,1,1036),(197,18,62,0,5643,'body',0,1008,857,1036,1361651284,1,1334),(197,18,62,0,5644,'body',0,1063,858,1334,1361651284,1,1008),(197,18,62,0,5645,'body',0,1040,859,1008,1361651284,1,1063),(197,18,62,0,5646,'body',0,802,860,1063,1361651284,1,1040),(197,18,62,0,5647,'body',0,1027,861,1040,1361651284,1,802),(197,18,62,0,5648,'body',0,1028,862,802,1361651284,1,1027),(197,18,62,0,5649,'body',0,1071,863,1027,1361651284,1,1028),(197,18,62,0,5650,'body',0,1112,864,1028,1361651284,1,1071),(197,18,62,0,5651,'body',0,1184,865,1071,1361651284,1,1112),(197,18,62,0,5652,'body',0,1008,866,1112,1361651284,1,1184),(197,18,62,0,5653,'body',0,1086,867,1184,1361651284,1,1008),(197,18,62,0,5654,'body',0,1211,868,1008,1361651284,1,1086),(197,18,62,0,5655,'body',0,833,869,1086,1361651284,1,1211),(197,18,62,0,5656,'body',0,1036,870,1211,1361651284,1,833),(197,18,62,0,5657,'body',0,1342,871,833,1361651284,1,1036),(197,18,62,0,5658,'body',0,1069,872,1036,1361651284,1,1342),(197,18,62,0,5659,'body',0,1033,873,1342,1361651284,1,1069),(197,18,62,0,5660,'body',0,1177,874,1069,1361651284,1,1033),(197,18,62,0,5661,'body',0,1343,875,1033,1361651284,1,1177),(197,18,62,0,5662,'body',0,810,876,1177,1361651284,1,1343),(197,18,62,0,5663,'body',0,1344,877,1343,1361651284,1,810),(197,18,62,0,5664,'body',0,1096,878,810,1361651284,1,1344),(197,18,62,0,5665,'body',0,1336,879,1344,1361651284,1,1096),(197,18,62,0,5666,'body',0,1022,880,1096,1361651284,1,1336),(197,18,62,0,5667,'body',0,1077,881,1336,1361651284,1,1022),(197,18,62,0,5668,'body',0,1304,882,1022,1361651284,1,1077),(197,18,62,0,5669,'body',0,814,883,1077,1361651284,1,1304),(197,18,62,0,5670,'body',0,1345,884,1304,1361651284,1,814),(197,18,62,0,5671,'body',0,1346,885,814,1361651284,1,1345),(197,18,62,0,5672,'body',0,1347,886,1345,1361651284,1,1346),(197,18,62,0,5673,'body',0,1086,887,1346,1361651284,1,1347),(197,18,62,0,5674,'body',0,1114,888,1347,1361651284,1,1086),(197,18,62,0,5675,'body',0,1339,889,1086,1361651284,1,1114),(197,18,62,0,5676,'body',0,1001,890,1114,1361651284,1,1339),(197,18,62,0,5677,'body',0,1348,891,1339,1361651284,1,1001),(197,18,62,0,5678,'body',0,1118,892,1001,1361651284,1,1348),(197,18,62,0,5679,'body',0,814,893,1348,1361651284,1,1118),(197,18,62,0,5680,'body',0,1219,894,1118,1361651284,1,814),(197,18,62,0,5681,'body',0,816,895,814,1361651284,1,1219),(197,18,62,0,5682,'body',0,814,896,1219,1361651284,1,816),(197,18,62,0,5683,'body',0,1077,897,816,1361651284,1,814),(197,18,62,0,5684,'body',0,1039,898,814,1361651284,1,1077),(197,18,62,0,5685,'body',0,814,899,1077,1361651284,1,1039),(197,18,62,0,5686,'body',0,1184,900,1039,1361651284,1,814),(197,18,62,0,5687,'body',0,1040,901,814,1361651284,1,1184),(197,18,62,0,5688,'body',0,802,902,1184,1361651284,1,1040),(197,18,62,0,5689,'body',0,1028,903,1040,1361651284,1,802),(197,18,62,0,5690,'body',0,1008,904,802,1361651284,1,1028),(197,18,62,0,5691,'body',0,1086,905,1028,1361651284,1,1008),(197,18,62,0,5692,'body',0,1349,906,1008,1361651284,1,1086),(197,18,62,0,5693,'body',0,1173,907,1086,1361651284,1,1349),(197,18,62,0,5694,'body',0,1094,908,1349,1361651284,1,1173),(197,18,62,0,5695,'body',0,1308,909,1173,1361651284,1,1094),(197,18,62,0,5696,'body',0,1036,910,1094,1361651284,1,1308),(197,18,62,0,5697,'body',0,1000,911,1308,1361651284,1,1036),(197,18,62,0,5698,'body',0,1101,912,1036,1361651284,1,1000),(197,18,62,0,5699,'body',0,1033,913,1000,1361651284,1,1101),(197,18,62,0,5700,'body',0,1177,914,1101,1361651284,1,1033),(197,18,62,0,5701,'body',0,1350,915,1033,1361651284,1,1177),(197,18,62,0,5702,'body',0,1013,916,1177,1361651284,1,1350),(197,18,62,0,5703,'body',0,814,917,1350,1361651284,1,1013),(197,18,62,0,5704,'body',0,1025,918,1013,1361651284,1,814),(197,18,62,0,5705,'body',0,816,919,814,1361651284,1,1025),(197,18,62,0,5706,'body',0,1022,920,1025,1361651284,1,816),(197,18,62,0,5707,'body',0,807,921,816,1361651284,1,1022),(197,18,62,0,5708,'body',0,1118,922,1022,1361651284,1,807),(197,18,62,0,5709,'body',0,1001,923,807,1361651284,1,1118),(197,18,62,0,5710,'body',0,1129,924,1118,1361651284,1,1001),(197,18,62,0,5711,'body',0,1033,925,1001,1361651284,1,1129),(197,18,62,0,5712,'body',0,1177,926,1129,1361651284,1,1033),(197,18,62,0,5713,'body',0,1351,927,1033,1361651284,1,1177),(197,18,62,0,5714,'body',0,810,928,1177,1361651284,1,1351),(197,18,62,0,5715,'body',0,1128,929,1351,1361651284,1,810),(197,18,62,0,5716,'body',0,816,930,810,1361651284,1,1128),(197,18,62,0,5717,'body',0,1123,931,1128,1361651284,1,816),(197,18,62,0,5718,'body',0,1124,932,816,1361651284,1,1123),(197,18,62,0,5719,'body',0,1040,933,1123,1361651284,1,1124),(197,18,62,0,5720,'body',0,814,934,1124,1361651284,1,1040),(197,18,62,0,5721,'body',0,934,935,1040,1361651284,1,814),(197,18,62,0,5722,'body',0,833,936,814,1361651284,1,934),(197,18,62,0,5723,'body',0,1033,937,934,1361651284,1,833),(197,18,62,0,5724,'body',0,1114,938,833,1361651284,1,1033),(197,18,62,0,5725,'body',0,1352,939,1033,1361651284,1,1114),(197,18,62,0,5726,'body',0,1008,940,1114,1361651284,1,1352),(197,18,62,0,5727,'body',0,1086,941,1352,1361651284,1,1008),(197,18,62,0,5728,'body',0,1349,942,1008,1361651284,1,1086),(197,18,62,0,5729,'body',0,1101,943,1086,1361651284,1,1349),(197,18,62,0,5730,'body',0,1152,944,1349,1361651284,1,1101),(197,18,62,0,5731,'body',0,1128,945,1101,1361651284,1,1152),(197,18,62,0,5732,'body',0,1094,946,1152,1361651284,1,1128),(197,18,62,0,5733,'body',0,1211,947,1128,1361651284,1,1094),(197,18,62,0,5734,'body',0,1353,948,1094,1361651284,1,1211),(197,18,62,0,5735,'body',0,1354,949,1211,1361651284,1,1353),(197,18,62,0,5736,'body',0,1030,950,1353,1361651284,1,1354),(197,18,62,0,5737,'body',0,1355,951,1354,1361651284,1,1030),(197,18,62,0,5738,'body',0,1036,952,1030,1361651284,1,1355),(197,18,62,0,5739,'body',0,1356,953,1355,1361651284,1,1036),(197,18,62,0,5740,'body',0,1084,954,1036,1361651284,1,1356),(197,18,62,0,5741,'body',0,809,955,1356,1361651284,1,1084),(197,18,62,0,5742,'body',0,814,956,1084,1361651284,1,809),(197,18,62,0,5743,'body',0,934,957,809,1361651284,1,814),(197,18,62,0,5744,'body',0,1357,958,814,1361651284,1,934),(197,18,62,0,5745,'body',0,814,959,934,1361651284,1,1357),(197,18,62,0,5746,'body',0,1358,960,1357,1361651284,1,814),(197,18,62,0,5747,'body',0,1128,961,814,1361651284,1,1358),(197,18,62,0,5748,'body',0,1079,962,1358,1361651284,1,1128),(197,18,62,0,5749,'body',0,1054,963,1128,1361651284,1,1079),(197,18,62,0,5750,'body',0,814,964,1079,1361651284,1,1054),(197,18,62,0,5751,'body',0,1025,965,1054,1361651284,1,814),(197,18,62,0,5752,'body',0,1069,966,814,1361651284,1,1025),(197,18,62,0,5753,'body',0,1022,967,1025,1361651284,1,1069),(197,18,62,0,5754,'body',0,1077,968,1069,1361651284,1,1022),(197,18,62,0,5755,'body',0,805,969,1022,1361651284,1,1077),(197,18,62,0,5756,'body',0,1359,970,1077,1361651284,1,805),(197,18,62,0,5757,'body',0,1106,971,805,1361651284,1,1359),(197,18,62,0,5758,'body',0,1152,972,1359,1361651284,1,1106),(197,18,62,0,5759,'body',0,1360,973,1106,1361651284,1,1152),(197,18,62,0,5760,'body',0,1054,974,1152,1361651284,1,1360),(197,18,62,0,5761,'body',0,1361,975,1360,1361651284,1,1054),(197,18,62,0,5762,'body',0,809,976,1054,1361651284,1,1361),(197,18,62,0,5763,'body',0,1362,977,1361,1361651284,1,809),(197,18,62,0,5764,'body',0,1302,978,809,1361651284,1,1362),(197,18,62,0,5765,'body',0,1008,979,1362,1361651284,1,1302),(197,18,62,0,5766,'body',0,1258,980,1302,1361651284,1,1008),(197,18,62,0,5767,'body',0,1363,981,1008,1361651284,1,1258),(197,18,62,0,5768,'body',0,1001,982,1258,1361651284,1,1363),(197,18,62,0,5769,'body',0,1109,983,1363,1361651284,1,1001),(197,18,62,0,5770,'body',0,1094,984,1001,1361651284,1,1109),(197,18,62,0,5771,'body',0,1364,985,1109,1361651284,1,1094),(197,18,62,0,5772,'body',0,810,986,1094,1361651284,1,1364),(197,18,62,0,5773,'body',0,1365,987,1364,1361651284,1,810),(197,18,62,0,5774,'body',0,1030,988,810,1361651284,1,1365),(197,18,62,0,5775,'body',0,1366,989,1365,1361651284,1,1030),(197,18,62,0,5776,'body',0,1367,990,1030,1361651284,1,1366),(197,18,62,0,5777,'body',0,1368,991,1366,1361651284,1,1367),(197,18,62,0,5778,'body',0,1369,992,1367,1361651284,1,1368),(197,18,62,0,5779,'body',0,1036,993,1368,1361651284,1,1369),(197,18,62,0,5780,'body',0,1370,994,1369,1361651284,1,1036),(197,18,62,0,5781,'body',0,810,995,1036,1361651284,1,1370),(197,18,62,0,5782,'body',0,1353,996,1370,1361651284,1,810),(197,18,62,0,5783,'body',0,1371,997,810,1361651284,1,1353),(197,18,62,0,5784,'body',0,833,998,1353,1361651284,1,1371),(197,18,62,0,5785,'body',0,0,999,1371,1361651284,1,833),(197,18,62,0,5786,'body',0,1114,1000,0,1361651284,1,1033),(197,18,62,0,5787,'body',0,1372,1001,1033,1361651284,1,1114),(197,18,62,0,5788,'body',0,814,1002,1114,1361651284,1,1372),(197,18,62,0,5789,'body',0,934,1003,1372,1361651284,1,814),(197,18,62,0,5790,'body',0,1373,1004,814,1361651284,1,934),(197,18,62,0,5791,'body',0,1070,1005,934,1361651284,1,1373),(197,18,62,0,5792,'body',0,1185,1006,1373,1361651284,1,1070),(197,18,62,0,5793,'body',0,1201,1007,1070,1361651284,1,1185),(197,18,62,0,5794,'body',0,1038,1008,1185,1361651284,1,1201),(197,18,62,0,5795,'body',0,1161,1009,1201,1361651284,1,1038),(197,18,62,0,5796,'body',0,1033,1010,1038,1361651284,1,1161),(197,18,62,0,5797,'body',0,1374,1011,1161,1361651284,1,1033),(197,18,62,0,5798,'body',0,1039,1012,1033,1361651284,1,1374),(197,18,62,0,5799,'body',0,1375,1013,1374,1361651284,1,1039),(197,18,62,0,5800,'body',0,1269,1014,1039,1361651284,1,1375),(197,18,62,0,5801,'body',0,1033,1015,1375,1361651284,1,1269),(197,18,62,0,5802,'body',0,1177,1016,1269,1361651284,1,1033),(197,18,62,0,5803,'body',0,1376,1017,1033,1361651284,1,1177),(197,18,62,0,5804,'body',0,1118,1018,1177,1361651284,1,1376),(197,18,62,0,5805,'body',0,1038,1019,1376,1361651284,1,1118),(197,18,62,0,5806,'body',0,1377,1020,1118,1361651284,1,1038),(197,18,62,0,5807,'body',0,1101,1021,1038,1361651284,1,1377),(197,18,62,0,5808,'body',0,814,1022,1377,1361651284,1,1101),(197,18,62,0,5809,'body',0,1135,1023,1101,1361651284,1,814),(197,18,62,0,5810,'body',0,1109,1024,814,1361651284,1,1135),(197,18,62,0,5811,'body',0,1094,1025,1135,1361651284,1,1109),(197,18,62,0,5812,'body',0,1095,1026,1109,1361651284,1,1094),(197,18,62,0,5813,'body',0,814,1027,1094,1361651284,1,1095),(197,18,62,0,5814,'body',0,1378,1028,1095,1361651284,1,814),(197,18,62,0,5815,'body',0,1379,1029,814,1361651284,1,1378),(197,18,62,0,5816,'body',0,1113,1030,1378,1361651284,1,1379),(197,18,62,0,5817,'body',0,810,1031,1379,1361651284,1,1113),(197,18,62,0,5818,'body',0,1352,1032,1113,1361651284,1,810),(197,18,62,0,5819,'body',0,1311,1033,810,1361651284,1,1352),(197,18,62,0,5820,'body',0,810,1034,1352,1361651284,1,1311),(197,18,62,0,5821,'body',0,1380,1035,1311,1361651284,1,810),(197,18,62,0,5822,'body',0,1094,1036,810,1361651284,1,1380),(197,18,62,0,5823,'body',0,1114,1037,1380,1361651284,1,1094),(197,18,62,0,5824,'body',0,1306,1038,1094,1361651284,1,1114),(197,18,62,0,5825,'body',0,1308,1039,1114,1361651284,1,1306),(197,18,62,0,5826,'body',0,810,1040,1306,1361651284,1,1308),(197,18,62,0,5827,'body',0,1158,1041,1308,1361651284,1,810),(197,18,62,0,5828,'body',0,1026,1042,810,1361651284,1,1158),(197,18,62,0,5829,'body',0,1381,1043,1158,1361651284,1,1026),(197,18,62,0,5830,'body',0,1130,1044,1026,1361651284,1,1381),(197,18,62,0,5831,'body',0,1382,1045,1381,1361651284,1,1130),(197,18,62,0,5832,'body',0,1094,1046,1130,1361651284,1,1382),(197,18,62,0,5833,'body',0,1095,1047,1382,1361651284,1,1094),(197,18,62,0,5834,'body',0,1013,1048,1094,1361651284,1,1095),(197,18,62,0,5835,'body',0,1040,1049,1095,1361651284,1,1013),(197,18,62,0,5836,'body',0,814,1050,1013,1361651284,1,1040),(197,18,62,0,5837,'body',0,1383,1051,1040,1361651284,1,814),(197,18,62,0,5838,'body',0,816,1052,814,1361651284,1,1383),(197,18,62,0,5839,'body',0,1112,1053,1383,1361651284,1,816),(197,18,62,0,5840,'body',0,833,1054,816,1361651284,1,1112),(197,18,62,0,5841,'body',0,802,1055,1112,1361651284,1,833),(197,18,62,0,5842,'body',0,1027,1056,833,1361651284,1,802),(197,18,62,0,5843,'body',0,1384,1057,802,1361651284,1,1027),(197,18,62,0,5844,'body',0,1165,1058,1027,1361651284,1,1384),(197,18,62,0,5845,'body',0,1071,1059,1384,1361651284,1,1165),(197,18,62,0,5846,'body',0,1320,1060,1165,1361651284,1,1071),(197,18,62,0,5847,'body',0,1188,1061,1071,1361651284,1,1320),(197,18,62,0,5848,'body',0,1385,1062,1320,1361651284,1,1188),(197,18,62,0,5849,'body',0,1038,1063,1188,1361651284,1,1385),(197,18,62,0,5850,'body',0,1040,1064,1385,1361651284,1,1038),(197,18,62,0,5851,'body',0,814,1065,1038,1361651284,1,1040),(197,18,62,0,5852,'body',0,1386,1066,1040,1361651284,1,814),(197,18,62,0,5853,'body',0,1040,1067,814,1361651284,1,1386),(197,18,62,0,5854,'body',0,1112,1068,1386,1361651284,1,1040),(197,18,62,0,5855,'body',0,1387,1069,1040,1361651284,1,1112),(198,18,62,0,5856,'publication_date',1361651160,0,1070,1112,1361651284,1,1387),(196,18,63,0,5857,'title',0,809,0,0,1361651334,1,1026),(196,18,63,0,5858,'title',0,802,1,1026,1361651334,1,809),(196,18,63,0,5859,'title',0,1027,2,809,1361651334,1,802),(196,18,63,0,5860,'title',0,1028,3,802,1361651334,1,1027),(196,18,63,0,5861,'title',0,1112,4,1027,1361651334,1,1028),(196,18,63,0,5862,'title',0,1164,5,1028,1361651334,1,1112),(197,18,63,0,5863,'body',0,1086,6,1112,1361651334,1,1164),(197,18,63,0,5864,'body',0,1388,7,1164,1361651334,1,1086),(197,18,63,0,5865,'body',0,1030,8,1086,1361651334,1,1388),(197,18,63,0,5866,'body',0,833,9,1388,1361651334,1,1030),(197,18,63,0,5867,'body',0,1320,10,1030,1361651334,1,833),(197,18,63,0,5868,'body',0,1348,11,833,1361651334,1,1320),(197,18,63,0,5869,'body',0,810,12,1320,1361651334,1,1348),(197,18,63,0,5870,'body',0,929,13,1348,1361651334,1,810),(197,18,63,0,5871,'body',0,807,14,810,1361651334,1,929),(197,18,63,0,5872,'body',0,1165,15,929,1361651334,1,807),(197,18,63,0,5873,'body',0,1071,16,807,1361651334,1,1165),(197,18,63,0,5874,'body',0,1389,17,1165,1361651334,1,1071),(197,18,63,0,5875,'body',0,1304,18,1071,1361651334,1,1389),(197,18,63,0,5876,'body',0,1038,19,1389,1361651334,1,1304),(197,18,63,0,5877,'body',0,1040,20,1304,1361651334,1,1038),(197,18,63,0,5878,'body',0,814,21,1038,1361651334,1,1040),(197,18,63,0,5879,'body',0,1183,22,1040,1361651334,1,814),(197,18,63,0,5880,'body',0,1116,23,814,1361651334,1,1183),(197,18,63,0,5881,'body',0,1030,24,1183,1361651334,1,1116),(197,18,63,0,5882,'body',0,1112,25,1116,1361651334,1,1030),(197,18,63,0,5883,'body',0,1109,26,1030,1361651334,1,1112),(197,18,63,0,5884,'body',0,1094,27,1112,1361651334,1,1109),(197,18,63,0,5885,'body',0,1177,28,1109,1361651334,1,1094),(197,18,63,0,5886,'body',0,1090,29,1094,1361651334,1,1177),(197,18,63,0,5887,'body',0,1390,30,1177,1361651334,1,1090),(197,18,63,0,5888,'body',0,810,31,1090,1361651334,1,1390),(197,18,63,0,5889,'body',0,1158,32,1390,1361651334,1,810),(197,18,63,0,5890,'body',0,1391,33,810,1361651334,1,1158),(197,18,63,0,5891,'body',0,1001,34,1158,1361651334,1,1391),(197,18,63,0,5892,'body',0,1112,35,1391,1361651334,1,1001),(197,18,63,0,5893,'body',0,833,36,1001,1361651334,1,1112),(197,18,63,0,5894,'body',0,1392,37,1112,1361651334,1,833),(197,18,63,0,5895,'body',0,1059,38,833,1361651334,1,1392),(197,18,63,0,5896,'body',0,1393,39,1392,1361651334,1,1059),(197,18,63,0,5897,'body',0,1030,40,1059,1361651334,1,1393),(197,18,63,0,5898,'body',0,1038,41,1393,1361651334,1,1030),(197,18,63,0,5899,'body',0,1040,42,1030,1361651334,1,1038),(197,18,63,0,5900,'body',0,814,43,1038,1361651334,1,1040),(197,18,63,0,5901,'body',0,1394,44,1040,1361651334,1,814),(197,18,63,0,5902,'body',0,1395,45,814,1361651334,1,1394),(197,18,63,0,5903,'body',0,1047,46,1394,1361651334,1,1395),(197,18,63,0,5904,'body',0,802,47,1395,1361651334,1,1047),(197,18,63,0,5905,'body',0,1027,48,1047,1361651334,1,802),(197,18,63,0,5906,'body',0,1092,49,802,1361651334,1,1027),(197,18,63,0,5907,'body',0,1094,50,1027,1361651334,1,1092),(197,18,63,0,5908,'body',0,1211,51,1092,1361651334,1,1094),(197,18,63,0,5909,'body',0,1396,52,1094,1361651334,1,1211),(197,18,63,0,5910,'body',0,1397,53,1211,1361651334,1,1396),(197,18,63,0,5911,'body',0,1036,54,1396,1361651334,1,1397),(197,18,63,0,5912,'body',0,814,55,1397,1361651334,1,1036),(197,18,63,0,5913,'body',0,1345,56,1036,1361651334,1,814),(197,18,63,0,5914,'body',0,1398,57,814,1361651334,1,1345),(197,18,63,0,5915,'body',0,833,58,1345,1361651334,1,1398),(197,18,63,0,5916,'body',0,1320,59,1398,1361651334,1,833),(197,18,63,0,5917,'body',0,1174,60,833,1361651334,1,1320),(197,18,63,0,5918,'body',0,1289,61,1320,1361651334,1,1174),(197,18,63,0,5919,'body',0,1399,62,1174,1361651334,1,1289),(197,18,63,0,5920,'body',0,1400,63,1289,1361651334,1,1399),(197,18,63,0,5921,'body',0,1401,64,1399,1361651334,1,1400),(197,18,63,0,5922,'body',0,1402,65,1400,1361651334,1,1401),(197,18,63,0,5923,'body',0,1403,66,1401,1361651334,1,1402),(197,18,63,0,5924,'body',0,1109,67,1402,1361651334,1,1403),(197,18,63,0,5925,'body',0,1094,68,1403,1361651334,1,1109),(197,18,63,0,5926,'body',0,1177,69,1109,1361651334,1,1094),(197,18,63,0,5927,'body',0,1404,70,1094,1361651334,1,1177),(197,18,63,0,5928,'body',0,809,71,1177,1361651334,1,1404),(197,18,63,0,5929,'body',0,1405,72,1404,1361651334,1,809),(197,18,63,0,5930,'body',0,1406,73,809,1361651334,1,1405),(197,18,63,0,5931,'body',0,1407,74,1405,1361651334,1,1406),(197,18,63,0,5932,'body',0,1311,75,1406,1361651334,1,1407),(197,18,63,0,5933,'body',0,1036,76,1407,1361651334,1,1311),(197,18,63,0,5934,'body',0,810,77,1311,1361651334,1,1036),(197,18,63,0,5935,'body',0,1408,78,1036,1361651334,1,810),(197,18,63,0,5936,'body',0,1409,79,810,1361651334,1,1408),(197,18,63,0,5937,'body',0,1410,80,1408,1361651334,1,1409),(197,18,63,0,5938,'body',0,1411,81,1409,1361651334,1,1410),(197,18,63,0,5939,'body',0,1094,82,1410,1361651334,1,1411),(197,18,63,0,5940,'body',0,1087,83,1411,1361651334,1,1094),(197,18,63,0,5941,'body',0,1180,84,1094,1361651334,1,1087),(197,18,63,0,5942,'body',0,1091,85,1087,1361651334,1,1180),(197,18,63,0,5943,'body',0,809,86,1180,1361651334,1,1091),(197,18,63,0,5944,'body',0,814,87,1091,1361651334,1,809),(197,18,63,0,5945,'body',0,1401,88,809,1361651334,1,814),(197,18,63,0,5946,'body',0,1402,89,814,1361651334,1,1401),(197,18,63,0,5947,'body',0,1403,90,1401,1361651334,1,1402),(197,18,63,0,5948,'body',0,1412,91,1402,1361651334,1,1403),(197,18,63,0,5949,'body',0,1131,92,1403,1361651334,1,1412),(197,18,63,0,5950,'body',0,1413,93,1412,1361651334,1,1131),(197,18,63,0,5951,'body',0,810,94,1131,1361651334,1,1413),(197,18,63,0,5952,'body',0,1414,95,1413,1361651334,1,810),(197,18,63,0,5953,'body',0,1189,96,810,1361651334,1,1414),(197,18,63,0,5954,'body',0,816,97,1414,1361651334,1,1189),(197,18,63,0,5955,'body',0,1348,98,1189,1361651334,1,816),(197,18,63,0,5956,'body',0,1415,99,816,1361651334,1,1348),(197,18,63,0,5957,'body',0,1416,100,1348,1361651334,1,1415),(197,18,63,0,5958,'body',0,1030,101,1415,1361651334,1,1416),(197,18,63,0,5959,'body',0,810,102,1416,1361651334,1,1030),(197,18,63,0,5960,'body',0,877,103,1030,1361651334,1,810),(197,18,63,0,5961,'body',0,1417,104,810,1361651334,1,877),(197,18,63,0,5962,'body',0,1135,105,877,1361651334,1,1417),(197,18,63,0,5963,'body',0,1418,106,1417,1361651334,1,1135),(197,18,63,0,5964,'body',0,810,107,1135,1361651334,1,1418),(197,18,63,0,5965,'body',0,1371,108,1418,1361651334,1,810),(197,18,63,0,5966,'body',0,805,109,810,1361651334,1,1371),(197,18,63,0,5967,'body',0,1419,110,1371,1361651334,1,805),(197,18,63,0,5968,'body',0,1131,111,805,1361651334,1,1419),(197,18,63,0,5969,'body',0,1071,112,1419,1361651334,1,1131),(197,18,63,0,5970,'body',0,1420,113,1131,1361651334,1,1071),(197,18,63,0,5971,'body',0,1036,114,1071,1361651334,1,1420),(197,18,63,0,5972,'body',0,1112,115,1420,1361651334,1,1036),(197,18,63,0,5973,'body',0,1152,116,1036,1361651334,1,1112),(197,18,63,0,5974,'body',0,1421,117,1112,1361651334,1,1152),(197,18,63,0,5975,'body',0,814,118,1152,1361651334,1,1421),(197,18,63,0,5976,'body',0,1371,119,1421,1361651334,1,814),(197,18,63,0,5977,'body',0,1036,120,814,1361651334,1,1371),(197,18,63,0,5978,'body',0,1023,121,1371,1361651334,1,1036),(197,18,63,0,5979,'body',0,1422,122,1036,1361651334,1,1023),(197,18,63,0,5980,'body',0,1001,123,1023,1361651334,1,1422),(197,18,63,0,5981,'body',0,810,124,1422,1361651334,1,1001),(197,18,63,0,5982,'body',0,1403,125,1001,1361651334,1,810),(197,18,63,0,5983,'body',0,1152,126,810,1361651334,1,1403),(197,18,63,0,5984,'body',0,805,127,1403,1361651334,1,1152),(197,18,63,0,5985,'body',0,1060,128,1152,1361651334,1,805),(197,18,63,0,5986,'body',0,1423,129,805,1361651334,1,1060),(197,18,63,0,5987,'body',0,810,130,1060,1361651334,1,1423),(197,18,63,0,5988,'body',0,1424,131,1423,1361651334,1,810),(197,18,63,0,5989,'body',0,1425,132,810,1361651334,1,1424),(197,18,63,0,5990,'body',0,1188,133,1424,1361651334,1,1425),(197,18,63,0,5991,'body',0,814,134,1425,1361651334,1,1188),(197,18,63,0,5992,'body',0,1426,135,1188,1361651334,1,814),(197,18,63,0,5993,'body',0,1427,136,814,1361651334,1,1426),(197,18,63,0,5994,'body',0,1022,137,1426,1361651334,1,1427),(197,18,63,0,5995,'body',0,1424,138,1427,1361651334,1,1022),(197,18,63,0,5996,'body',0,1428,139,1022,1361651334,1,1424),(197,18,63,0,5997,'body',0,1084,140,1424,1361651334,1,1428),(197,18,63,0,5998,'body',0,1429,141,1428,1361651334,1,1084),(197,18,63,0,5999,'body',0,1430,142,1084,1361651334,1,1429),(197,18,63,0,6000,'body',0,1185,143,1429,1361651334,1,1430),(197,18,63,0,6001,'body',0,1431,144,1430,1361651334,1,1185),(197,18,63,0,6002,'body',0,1036,145,1185,1361651334,1,1431),(197,18,63,0,6003,'body',0,1391,146,1431,1361651334,1,1036),(197,18,63,0,6004,'body',0,814,147,1036,1361651334,1,1391),(197,18,63,0,6005,'body',0,1371,148,1391,1361651334,1,814),(197,18,63,0,6006,'body',0,1047,149,814,1361651334,1,1371),(197,18,63,0,6007,'body',0,810,150,1371,1361651334,1,1047),(197,18,63,0,6008,'body',0,1168,151,1047,1361651334,1,810),(197,18,63,0,6009,'body',0,1040,152,810,1361651334,1,1168),(197,18,63,0,6010,'body',0,1401,153,1168,1361651334,1,1040),(197,18,63,0,6011,'body',0,1432,154,1040,1361651334,1,1401),(197,18,63,0,6012,'body',0,814,155,1401,1361651334,1,1432),(197,18,63,0,6013,'body',0,1401,156,1432,1361651334,1,814),(197,18,63,0,6014,'body',0,1432,157,814,1361651334,1,1401),(197,18,63,0,6015,'body',0,1433,158,1401,1361651334,1,1432),(197,18,63,0,6016,'body',0,1429,159,1432,1361651334,1,1433),(197,18,63,0,6017,'body',0,925,160,1433,1361651334,1,1429),(197,18,63,0,6018,'body',0,814,161,1429,1361651334,1,925),(197,18,63,0,6019,'body',0,1426,162,925,1361651334,1,814),(197,18,63,0,6020,'body',0,1434,163,814,1361651334,1,1426),(197,18,63,0,6021,'body',0,1435,164,1426,1361651334,1,1434),(197,18,63,0,6022,'body',0,1030,165,1434,1361651334,1,1435),(197,18,63,0,6023,'body',0,1436,166,1435,1361651334,1,1030),(197,18,63,0,6024,'body',0,1324,167,1030,1361651334,1,1436),(197,18,63,0,6025,'body',0,1437,168,1436,1361651334,1,1324),(197,18,63,0,6026,'body',0,1438,169,1324,1361651334,1,1437),(197,18,63,0,6027,'body',0,1439,170,1437,1361651334,1,1438),(197,18,63,0,6028,'body',0,1440,171,1438,1361651334,1,1439),(197,18,63,0,6029,'body',0,1429,172,1439,1361651334,1,1440),(197,18,63,0,6030,'body',0,814,173,1440,1361651334,1,1429),(197,18,63,0,6031,'body',0,1403,174,1429,1361651334,1,814),(197,18,63,0,6032,'body',0,1399,175,814,1361651334,1,1403),(197,18,63,0,6033,'body',0,1330,176,1403,1361651334,1,1399),(197,18,63,0,6034,'body',0,814,177,1399,1361651334,1,1330),(197,18,63,0,6035,'body',0,1435,178,1330,1361651334,1,814),(197,18,63,0,6036,'body',0,1131,179,814,1361651334,1,1435),(197,18,63,0,6037,'body',0,1071,180,1435,1361651334,1,1131),(197,18,63,0,6038,'body',0,1441,181,1131,1361651334,1,1071),(197,18,63,0,6039,'body',0,1152,182,1071,1361651334,1,1441),(197,18,63,0,6040,'body',0,805,183,1441,1361651334,1,1152),(197,18,63,0,6041,'body',0,1216,184,1152,1361651334,1,805),(197,18,63,0,6042,'body',0,1188,185,805,1361651334,1,1216),(197,18,63,0,6043,'body',0,814,186,1216,1361651334,1,1188),(197,18,63,0,6044,'body',0,1402,187,1188,1361651334,1,814),(197,18,63,0,6045,'body',0,1152,188,814,1361651334,1,1402),(197,18,63,0,6046,'body',0,805,189,1402,1361651334,1,1152),(197,18,63,0,6047,'body',0,810,190,1152,1361651334,1,805),(197,18,63,0,6048,'body',0,1442,191,805,1361651334,1,810),(197,18,63,0,6049,'body',0,1443,192,810,1361651334,1,1442),(197,18,63,0,6050,'body',0,1069,193,1442,1361651334,1,1443),(197,18,63,0,6051,'body',0,1071,194,1443,1361651334,1,1069),(197,18,63,0,6052,'body',0,1199,195,1069,1361651334,1,1071),(197,18,63,0,6053,'body',0,1036,196,1071,1361651334,1,1199),(197,18,63,0,6054,'body',0,1444,197,1199,1361651334,1,1036),(197,18,63,0,6055,'body',0,814,198,1036,1361651334,1,1444),(197,18,63,0,6056,'body',0,1445,199,1444,1361651334,1,814),(197,18,63,0,6057,'body',0,1022,200,814,1361651334,1,1445),(197,18,63,0,6058,'body',0,1013,201,1445,1361651334,1,1022),(197,18,63,0,6059,'body',0,1446,202,1022,1361651334,1,1013),(197,18,63,0,6060,'body',0,1447,203,1013,1361651334,1,1446),(197,18,63,0,6061,'body',0,1448,204,1446,1361651334,1,1447),(197,18,63,0,6062,'body',0,1057,205,1447,1361651334,1,1448),(197,18,63,0,6063,'body',0,1030,206,1448,1361651334,1,1057),(197,18,63,0,6064,'body',0,1449,207,1057,1361651334,1,1030),(197,18,63,0,6065,'body',0,1131,208,1030,1361651334,1,1449),(197,18,63,0,6066,'body',0,1071,209,1449,1361651334,1,1131),(197,18,63,0,6067,'body',0,1344,210,1131,1361651334,1,1071),(197,18,63,0,6068,'body',0,1450,211,1071,1361651334,1,1344),(197,18,63,0,6069,'body',0,1109,212,1344,1361651334,1,1450),(197,18,63,0,6070,'body',0,1094,213,1450,1361651334,1,1109),(197,18,63,0,6071,'body',0,1451,214,1109,1361651334,1,1094),(197,18,63,0,6072,'body',0,1289,215,1094,1361651334,1,1451),(197,18,63,0,6073,'body',0,1426,216,1451,1361651334,1,1289),(197,18,63,0,6074,'body',0,1036,217,1289,1361651334,1,1426),(197,18,63,0,6075,'body',0,1452,218,1426,1361651334,1,1036),(197,18,63,0,6076,'body',0,1038,219,1036,1361651334,1,1452),(197,18,63,0,6077,'body',0,1436,220,1452,1361651334,1,1038),(197,18,63,0,6078,'body',0,1453,221,1038,1361651334,1,1436),(197,18,63,0,6079,'body',0,1036,222,1436,1361651334,1,1453),(197,18,63,0,6080,'body',0,810,223,1453,1361651334,1,1036),(197,18,63,0,6081,'body',0,1024,224,1036,1361651334,1,810),(197,18,63,0,6082,'body',0,816,225,810,1361651334,1,1024),(197,18,63,0,6083,'body',0,1454,226,1024,1361651334,1,816),(197,18,63,0,6084,'body',0,1094,227,816,1361651334,1,1454),(197,18,63,0,6085,'body',0,1455,228,1454,1361651334,1,1094),(197,18,63,0,6086,'body',0,1456,229,1094,1361651334,1,1455),(197,18,63,0,6087,'body',0,810,230,1455,1361651334,1,1456),(197,18,63,0,6088,'body',0,1424,231,1456,1361651334,1,810),(197,18,63,0,6089,'body',0,1001,232,810,1361651334,1,1424),(197,18,63,0,6090,'body',0,810,233,1424,1361651334,1,1001),(197,18,63,0,6091,'body',0,1403,234,1001,1361651334,1,810),(197,18,63,0,6092,'body',0,1457,235,810,1361651334,1,1403),(197,18,63,0,6093,'body',0,1069,236,1403,1361651334,1,1457),(197,18,63,0,6094,'body',0,1458,237,1457,1361651334,1,1069),(197,18,63,0,6095,'body',0,1023,238,1069,1361651334,1,1458),(197,18,63,0,6096,'body',0,1459,239,1458,1361651334,1,1023),(197,18,63,0,6097,'body',0,1460,240,1023,1361651334,1,1459),(197,18,63,0,6098,'body',0,814,241,1459,1361651334,1,1460),(197,18,63,0,6099,'body',0,1435,242,1460,1361651334,1,814),(197,18,63,0,6100,'body',0,1094,243,814,1361651334,1,1435),(197,18,63,0,6101,'body',0,1451,244,1435,1361651334,1,1094),(197,18,63,0,6102,'body',0,1036,245,1094,1361651334,1,1451),(197,18,63,0,6103,'body',0,1334,246,1451,1361651334,1,1036),(197,18,63,0,6104,'body',0,1411,247,1036,1361651334,1,1334),(197,18,63,0,6105,'body',0,1456,248,1334,1361651334,1,1411),(197,18,63,0,6106,'body',0,810,249,1411,1361651334,1,1456),(197,18,63,0,6107,'body',0,1442,250,1456,1361651334,1,810),(197,18,63,0,6108,'body',0,1030,251,810,1361651334,1,1442),(197,18,63,0,6109,'body',0,1112,252,1442,1361651334,1,1030),(197,18,63,0,6110,'body',0,814,253,1030,1361651334,1,1112),(197,18,63,0,6111,'body',0,1220,254,1112,1361651334,1,814),(197,18,63,0,6112,'body',0,1461,255,814,1361651334,1,1220),(197,18,63,0,6113,'body',0,1443,256,1220,1361651334,1,1461),(197,18,63,0,6114,'body',0,805,257,1461,1361651334,1,1443),(197,18,63,0,6115,'body',0,1199,258,1443,1361651334,1,805),(197,18,63,0,6116,'body',0,1069,259,805,1361651334,1,1199),(197,18,63,0,6117,'body',0,1462,260,1199,1361651334,1,1069),(197,18,63,0,6118,'body',0,814,261,1069,1361651334,1,1462),(197,18,63,0,6119,'body',0,1463,262,1462,1361651334,1,814),(197,18,63,0,6120,'body',0,816,263,814,1361651334,1,1463),(197,18,63,0,6121,'body',0,1289,264,1463,1361651334,1,816),(197,18,63,0,6122,'body',0,1024,265,816,1361651334,1,1289),(197,18,63,0,6123,'body',0,1119,266,1289,1361651334,1,1024),(197,18,63,0,6124,'body',0,802,267,1024,1361651334,1,1119),(197,18,63,0,6125,'body',0,1027,268,1119,1361651334,1,802),(197,18,63,0,6126,'body',0,1131,269,802,1361651334,1,1027),(197,18,63,0,6127,'body',0,1071,270,1027,1361651334,1,1131),(197,18,63,0,6128,'body',0,1108,271,1131,1361651334,1,1071),(197,18,63,0,6129,'body',0,1464,272,1071,1361651334,1,1108),(197,18,63,0,6130,'body',0,1238,273,1108,1361651334,1,1464),(197,18,63,0,6131,'body',0,816,274,1464,1361651334,1,1238),(197,18,63,0,6132,'body',0,1182,275,1238,1361651334,1,816),(197,18,63,0,6133,'body',0,1347,276,816,1361651334,1,1182),(197,18,63,0,6134,'body',0,1094,277,1182,1361651334,1,1347),(197,18,63,0,6135,'body',0,1114,278,1347,1361651334,1,1094),(197,18,63,0,6136,'body',0,1054,279,1094,1361651334,1,1114),(197,18,63,0,6137,'body',0,1119,280,1114,1361651334,1,1054),(197,18,63,0,6138,'body',0,810,281,1054,1361651334,1,1119),(197,18,63,0,6139,'body',0,1403,282,1119,1361651334,1,810),(197,18,63,0,6140,'body',0,1465,283,810,1361651334,1,1403),(197,18,63,0,6141,'body',0,1188,284,1403,1361651334,1,1465),(197,18,63,0,6142,'body',0,802,285,1465,1361651334,1,1188),(197,18,63,0,6143,'body',0,1027,286,1188,1361651334,1,802),(197,18,63,0,6144,'body',0,814,287,802,1361651334,1,1027),(197,18,63,0,6145,'body',0,951,288,1027,1361651334,1,814),(197,18,63,0,6146,'body',0,1466,289,814,1361651334,1,951),(197,18,63,0,6147,'body',0,1069,290,951,1361651334,1,1466),(197,18,63,0,6148,'body',0,1467,291,1466,1361651334,1,1069),(197,18,63,0,6149,'body',0,1407,292,1069,1361651334,1,1467),(197,18,63,0,6150,'body',0,1305,293,1467,1361651334,1,1407),(197,18,63,0,6151,'body',0,1185,294,1407,1361651334,1,1305),(197,18,63,0,6152,'body',0,1468,295,1305,1361651334,1,1185),(197,18,63,0,6153,'body',0,1040,296,1185,1361651334,1,1468),(197,18,63,0,6154,'body',0,1469,297,1468,1361651334,1,1040),(197,18,63,0,6155,'body',0,833,298,1040,1361651334,1,1469),(197,18,63,0,6156,'body',0,1247,299,1469,1361651334,1,833),(197,18,63,0,6157,'body',0,1059,300,833,1361651334,1,1247),(197,18,63,0,6158,'body',0,1470,301,1247,1361651334,1,1059),(197,18,63,0,6159,'body',0,1471,302,1059,1361651334,1,1470),(197,18,63,0,6160,'body',0,1472,303,1470,1361651334,1,1471),(197,18,63,0,6161,'body',0,1238,304,1471,1361651334,1,1472),(197,18,63,0,6162,'body',0,814,305,1472,1361651334,1,1238),(197,18,63,0,6163,'body',0,1473,306,1238,1361651334,1,814),(197,18,63,0,6164,'body',0,1040,307,814,1361651334,1,1473),(197,18,63,0,6165,'body',0,1474,308,1473,1361651334,1,1040),(197,18,63,0,6166,'body',0,814,309,1040,1361651334,1,1474),(197,18,63,0,6167,'body',0,1435,310,1474,1361651334,1,814),(197,18,63,0,6168,'body',0,816,311,814,1361651334,1,1435),(197,18,63,0,6169,'body',0,814,312,1435,1361651334,1,816),(197,18,63,0,6170,'body',0,1445,313,816,1361651334,1,814),(197,18,63,0,6171,'body',0,1403,314,814,1361651334,1,1445),(197,18,63,0,6172,'body',0,805,315,1445,1361651334,1,1403),(197,18,63,0,6173,'body',0,1475,316,1403,1361651334,1,805),(197,18,63,0,6174,'body',0,1047,317,805,1361651334,1,1475),(197,18,63,0,6175,'body',0,814,318,1475,1361651334,1,1047),(197,18,63,0,6176,'body',0,1444,319,1047,1361651334,1,814),(197,18,63,0,6177,'body',0,1040,320,814,1361651334,1,1444),(197,18,63,0,6178,'body',0,814,321,1444,1361651334,1,1040),(197,18,63,0,6179,'body',0,1445,322,1040,1361651334,1,814),(197,18,63,0,6180,'body',0,1402,323,814,1361651334,1,1445),(197,18,63,0,6181,'body',0,1131,324,1445,1361651334,1,1402),(197,18,63,0,6182,'body',0,1071,325,1402,1361651334,1,1131),(197,18,63,0,6183,'body',0,1476,326,1131,1361651334,1,1071),(197,18,63,0,6184,'body',0,1132,327,1071,1361651334,1,1476),(197,18,63,0,6185,'body',0,1036,328,1476,1361651334,1,1132),(197,18,63,0,6186,'body',0,1056,329,1132,1361651334,1,1036),(197,18,63,0,6187,'body',0,814,330,1036,1361651334,1,1056),(197,18,63,0,6188,'body',0,1477,331,1056,1361651334,1,814),(197,18,63,0,6189,'body',0,1040,332,814,1361651334,1,1477),(197,18,63,0,6190,'body',0,814,333,1477,1361651334,1,1040),(197,18,63,0,6191,'body',0,1445,334,1040,1361651334,1,814),(197,18,63,0,6192,'body',0,1311,335,814,1361651334,1,1445),(197,18,63,0,6193,'body',0,1108,336,1445,1361651334,1,1311),(197,18,63,0,6194,'body',0,1334,337,1311,1361651334,1,1108),(197,18,63,0,6195,'body',0,1478,338,1108,1361651334,1,1334),(197,18,63,0,6196,'body',0,1479,339,1334,1361651334,1,1478),(197,18,63,0,6197,'body',0,1311,340,1478,1361651334,1,1479),(197,18,63,0,6198,'body',0,1480,341,1479,1361651334,1,1311),(197,18,63,0,6199,'body',0,1481,342,1311,1361651334,1,1480),(197,18,63,0,6200,'body',0,1212,343,1480,1361651334,1,1481),(197,18,63,0,6201,'body',0,1040,344,1481,1361651334,1,1212),(197,18,63,0,6202,'body',0,1482,345,1212,1361651334,1,1040),(197,18,63,0,6203,'body',0,1112,346,1040,1361651334,1,1482),(197,18,63,0,6204,'body',0,1483,347,1482,1361651334,1,1112),(197,18,63,0,6205,'body',0,1484,348,1112,1361651334,1,1483),(197,18,63,0,6206,'body',0,1485,349,1483,1361651334,1,1484),(197,18,63,0,6207,'body',0,1001,350,1484,1361651334,1,1485),(197,18,63,0,6208,'body',0,1486,351,1485,1361651334,1,1001),(197,18,63,0,6209,'body',0,1040,352,1001,1361651334,1,1486),(197,18,63,0,6210,'body',0,1407,353,1486,1361651334,1,1040),(197,18,63,0,6211,'body',0,1188,354,1040,1361651334,1,1407),(197,18,63,0,6212,'body',0,1487,355,1407,1361651334,1,1188),(197,18,63,0,6213,'body',0,1182,356,1188,1361651334,1,1487),(197,18,63,0,6214,'body',0,1040,357,1487,1361651334,1,1182),(197,18,63,0,6215,'body',0,814,358,1182,1361651334,1,1040),(197,18,63,0,6216,'body',0,1426,359,1040,1361651334,1,814),(197,18,63,0,6217,'body',0,1184,360,814,1361651334,1,1426),(197,18,63,0,6218,'body',0,1175,361,1426,1361651334,1,1184),(197,18,63,0,6219,'body',0,1488,362,1184,1361651334,1,1175),(197,18,63,0,6220,'body',0,1152,363,1175,1361651334,1,1488),(197,18,63,0,6221,'body',0,1185,364,1488,1361651334,1,1152),(197,18,63,0,6222,'body',0,1489,365,1152,1361651334,1,1185),(197,18,63,0,6223,'body',0,1069,366,1185,1361651334,1,1489),(197,18,63,0,6224,'body',0,1490,367,1489,1361651334,1,1069),(197,18,63,0,6225,'body',0,1025,368,1069,1361651334,1,1490),(197,18,63,0,6226,'body',0,974,369,1490,1361651334,1,1025),(197,18,63,0,6227,'body',0,1491,370,1025,1361651334,1,974),(197,18,63,0,6228,'body',0,1492,371,974,1361651334,1,1491),(197,18,63,0,6229,'body',0,1040,372,1491,1361651334,1,1492),(197,18,63,0,6230,'body',0,814,373,1492,1361651334,1,1040),(197,18,63,0,6231,'body',0,1493,374,1040,1361651334,1,814),(197,18,63,0,6232,'body',0,1022,375,814,1361651334,1,1493),(197,18,63,0,6233,'body',0,805,376,1493,1361651334,1,1022),(197,18,63,0,6234,'body',0,1494,377,1022,1361651334,1,805),(197,18,63,0,6235,'body',0,1495,378,805,1361651334,1,1494),(197,18,63,0,6236,'body',0,1036,379,1494,1361651334,1,1495),(197,18,63,0,6237,'body',0,1008,380,1495,1361651334,1,1036),(197,18,63,0,6238,'body',0,1496,381,1036,1361651334,1,1008),(197,18,63,0,6239,'body',0,1497,382,1008,1361651334,1,1496),(197,18,63,0,6240,'body',0,1401,383,1496,1361651334,1,1497),(197,18,63,0,6241,'body',0,1402,384,1497,1361651334,1,1401),(197,18,63,0,6242,'body',0,1403,385,1401,1361651334,1,1402),(197,18,63,0,6243,'body',0,1022,386,1402,1361651334,1,1403),(197,18,63,0,6244,'body',0,1498,387,1403,1361651334,1,1022),(197,18,63,0,6245,'body',0,1131,388,1022,1361651334,1,1498),(197,18,63,0,6246,'body',0,1464,389,1498,1361651334,1,1131),(197,18,63,0,6247,'body',0,816,390,1131,1361651334,1,1464),(197,18,63,0,6248,'body',0,1094,391,1464,1361651334,1,816),(197,18,63,0,6249,'body',0,1036,392,816,1361651334,1,1094),(197,18,63,0,6250,'body',0,1087,393,1094,1361651334,1,1036),(197,18,63,0,6251,'body',0,1334,394,1036,1361651334,1,1087),(197,18,63,0,6252,'body',0,1025,395,1087,1361651334,1,1334),(197,18,63,0,6253,'body',0,1069,396,1334,1361651334,1,1025),(197,18,63,0,6254,'body',0,1282,397,1025,1361651334,1,1069),(197,18,63,0,6255,'body',0,1499,398,1069,1361651334,1,1282),(197,18,63,0,6256,'body',0,1095,399,1282,1361651334,1,1499),(197,18,63,0,6257,'body',0,1500,400,1499,1361651334,1,1095),(197,18,63,0,6258,'body',0,1188,401,1095,1361651334,1,1500),(197,18,63,0,6259,'body',0,1501,402,1500,1361651334,1,1188),(197,18,63,0,6260,'body',0,1142,403,1188,1361651334,1,1501),(197,18,63,0,6261,'body',0,1488,404,1501,1361651334,1,1142),(197,18,63,0,6262,'body',0,1030,405,1142,1361651334,1,1488),(197,18,63,0,6263,'body',0,1036,406,1488,1361651334,1,1030),(197,18,63,0,6264,'body',0,1289,407,1030,1361651334,1,1036),(197,18,63,0,6265,'body',0,1336,408,1036,1361651334,1,1289),(197,18,63,0,6266,'body',0,1055,409,1289,1361651334,1,1336),(197,18,63,0,6267,'body',0,1395,410,1336,1361651334,1,1055),(197,18,63,0,6268,'body',0,1047,411,1055,1361651334,1,1395),(197,18,63,0,6269,'body',0,802,412,1395,1361651334,1,1047),(197,18,63,0,6270,'body',0,1027,413,1047,1361651334,1,802),(197,18,63,0,6271,'body',0,1092,414,802,1361651334,1,1027),(197,18,63,0,6272,'body',0,1109,415,1027,1361651334,1,1092),(197,18,63,0,6273,'body',0,1094,416,1092,1361651334,1,1109),(197,18,63,0,6274,'body',0,1087,417,1109,1361651334,1,1094),(197,18,63,0,6275,'body',0,1502,418,1094,1361651334,1,1087),(197,18,63,0,6276,'body',0,1036,419,1087,1361651334,1,1502),(197,18,63,0,6277,'body',0,802,420,1502,1361651334,1,1036),(197,18,63,0,6278,'body',0,1027,421,1036,1361651334,1,802),(197,18,63,0,6279,'body',0,1028,422,802,1361651334,1,1027),(197,18,63,0,6280,'body',0,1047,423,1027,1361651334,1,1028),(197,18,63,0,6281,'body',0,1043,424,1028,1361651334,1,1047),(197,18,63,0,6282,'body',0,1092,425,1047,1361651334,1,1043),(197,18,63,0,6283,'body',0,1070,426,1043,1361651334,1,1092),(197,18,63,0,6284,'body',0,1185,427,1092,1361651334,1,1070),(197,18,63,0,6285,'body',0,1038,428,1070,1361651334,1,1185),(197,18,63,0,6286,'body',0,1194,429,1185,1361651334,1,1038),(197,18,63,0,6287,'body',0,1395,430,1038,1361651334,1,1194),(197,18,63,0,6288,'body',0,1069,431,1194,1361651334,1,1395),(197,18,63,0,6289,'body',0,1360,432,1395,1361651334,1,1069),(197,18,63,0,6290,'body',0,1503,433,1069,1361651334,1,1360),(197,18,63,0,6291,'body',0,1094,434,1360,1361651334,1,1503),(197,18,63,0,6292,'body',0,1084,435,1503,1361651334,1,1094),(197,18,63,0,6293,'body',0,1504,436,1094,1361651334,1,1084),(197,18,63,0,6294,'body',0,1094,437,1084,1361651334,1,1504),(197,18,63,0,6295,'body',0,1087,438,1504,1361651334,1,1094),(197,18,63,0,6296,'body',0,1505,439,1094,1361651334,1,1087),(197,18,63,0,6297,'body',0,816,440,1087,1361651334,1,1505),(197,18,63,0,6298,'body',0,1506,441,1505,1361651334,1,816),(197,18,63,0,6299,'body',0,1121,442,816,1361651334,1,1506),(197,18,63,0,6300,'body',0,1086,443,1506,1361651334,1,1121),(197,18,63,0,6301,'body',0,1087,444,1121,1361651334,1,1086),(197,18,63,0,6302,'body',0,1507,445,1086,1361651334,1,1087),(197,18,63,0,6303,'body',0,1021,446,1087,1361651334,1,1507),(197,18,63,0,6304,'body',0,802,447,1507,1361651334,1,1021),(197,18,63,0,6305,'body',0,1027,448,1021,1361651334,1,802),(197,18,63,0,6306,'body',0,1028,449,802,1361651334,1,1027),(197,18,63,0,6307,'body',0,1103,450,1027,1361651334,1,1028),(197,18,63,0,6308,'body',0,1508,451,1028,1361651334,1,1103),(197,18,63,0,6309,'body',0,1030,452,1103,1361651334,1,1508),(197,18,63,0,6310,'body',0,1509,453,1508,1361651334,1,1030),(197,18,63,0,6311,'body',0,1069,454,1030,1361651334,1,1509),(197,18,63,0,6312,'body',0,1086,455,1509,1361651334,1,1069),(197,18,63,0,6313,'body',0,1087,456,1069,1361651334,1,1086),(197,18,63,0,6314,'body',0,1120,457,1086,1361651334,1,1087),(197,18,63,0,6315,'body',0,1507,458,1087,1361651334,1,1120),(197,18,63,0,6316,'body',0,1021,459,1120,1361651334,1,1507),(197,18,63,0,6317,'body',0,814,460,1507,1361651334,1,1021),(197,18,63,0,6318,'body',0,929,461,1021,1361651334,1,814),(197,18,63,0,6319,'body',0,1112,462,814,1361651334,1,929),(197,18,63,0,6320,'body',0,1202,463,929,1361651334,1,1112),(197,18,63,0,6321,'body',0,1040,464,1112,1361651334,1,1202),(197,18,63,0,6322,'body',0,802,465,1202,1361651334,1,1040),(197,18,63,0,6323,'body',0,1027,466,1040,1361651334,1,802),(197,18,63,0,6324,'body',0,1028,467,802,1361651334,1,1027),(197,18,63,0,6325,'body',0,802,468,1027,1361651334,1,1028),(197,18,63,0,6326,'body',0,1027,469,1028,1361651334,1,802),(197,18,63,0,6327,'body',0,1092,470,802,1361651334,1,1027),(197,18,63,0,6328,'body',0,805,471,1027,1361651334,1,1092),(197,18,63,0,6329,'body',0,1201,472,1092,1361651334,1,805),(197,18,63,0,6330,'body',0,1070,473,805,1361651334,1,1201),(197,18,63,0,6331,'body',0,833,474,1201,1361651334,1,1070),(197,18,63,0,6332,'body',0,1510,475,1070,1361651334,1,833),(197,18,63,0,6333,'body',0,1013,476,833,1361651334,1,1510),(197,18,63,0,6334,'body',0,1040,477,1510,1361651334,1,1013),(197,18,63,0,6335,'body',0,814,478,1013,1361651334,1,1040),(197,18,63,0,6336,'body',0,1511,479,1040,1361651334,1,814),(197,18,63,0,6337,'body',0,1116,480,814,1361651334,1,1511),(197,18,63,0,6338,'body',0,1423,481,1511,1361651334,1,1116),(197,18,63,0,6339,'body',0,1008,482,1116,1361651334,1,1423),(197,18,63,0,6340,'body',0,1246,483,1423,1361651334,1,1008),(197,18,63,0,6341,'body',0,1177,484,1008,1361651334,1,1246),(197,18,63,0,6342,'body',0,1512,485,1246,1361651334,1,1177),(197,18,63,0,6343,'body',0,1126,486,1177,1361651334,1,1512),(197,18,63,0,6344,'body',0,1220,487,1512,1361651334,1,1126),(197,18,63,0,6345,'body',0,814,488,1126,1361651334,1,1220),(197,18,63,0,6346,'body',0,1513,489,1220,1361651334,1,814),(197,18,63,0,6347,'body',0,1514,490,814,1361651334,1,1513),(197,18,63,0,6348,'body',0,1513,491,1513,1361651334,1,1514),(197,18,63,0,6349,'body',0,1415,492,1514,1361651334,1,1513),(197,18,63,0,6350,'body',0,1442,493,1513,1361651334,1,1415),(197,18,63,0,6351,'body',0,1443,494,1415,1361651334,1,1442),(197,18,63,0,6352,'body',0,1415,495,1442,1361651334,1,1443),(197,18,63,0,6353,'body',0,1125,496,1443,1361651334,1,1415),(197,18,63,0,6354,'body',0,1199,497,1415,1361651334,1,1125),(197,18,63,0,6355,'body',0,816,498,1125,1361651334,1,1199),(197,18,63,0,6356,'body',0,1050,499,1199,1361651334,1,816),(197,18,63,0,6357,'body',0,805,500,816,1361651334,1,1050),(197,18,63,0,6358,'body',0,1186,501,1050,1361651334,1,805),(197,18,63,0,6359,'body',0,1515,502,805,1361651334,1,1186),(197,18,63,0,6360,'body',0,1030,503,1186,1361651334,1,1515),(197,18,63,0,6361,'body',0,1516,504,1515,1361651334,1,1030),(197,18,63,0,6362,'body',0,1040,505,1030,1361651334,1,1516),(197,18,63,0,6363,'body',0,1220,506,1516,1361651334,1,1040),(197,18,63,0,6364,'body',0,814,507,1040,1361651334,1,1220),(197,18,63,0,6365,'body',0,1442,508,1220,1361651334,1,814),(197,18,63,0,6366,'body',0,1443,509,814,1361651334,1,1442),(197,18,63,0,6367,'body',0,1517,510,1442,1361651334,1,1443),(197,18,63,0,6368,'body',0,1518,511,1443,1361651334,1,1517),(197,18,63,0,6369,'body',0,809,512,1517,1361651334,1,1518),(197,18,63,0,6370,'body',0,814,513,1518,1361651334,1,809),(197,18,63,0,6371,'body',0,1112,514,809,1361651334,1,814),(197,18,63,0,6372,'body',0,1189,515,814,1361651334,1,1112),(197,18,63,0,6373,'body',0,1220,516,1112,1361651334,1,1189),(197,18,63,0,6374,'body',0,1219,517,1189,1361651334,1,1220),(197,18,63,0,6375,'body',0,1079,518,1220,1361651334,1,1219),(197,18,63,0,6376,'body',0,1389,519,1219,1361651334,1,1079),(197,18,63,0,6377,'body',0,1447,520,1079,1361651334,1,1389),(197,18,63,0,6378,'body',0,1091,521,1389,1361651334,1,1447),(197,18,63,0,6379,'body',0,1057,522,1447,1361651334,1,1091),(197,18,63,0,6380,'body',0,1424,523,1091,1361651334,1,1057),(197,18,63,0,6381,'body',0,1519,524,1057,1361651334,1,1424),(197,18,63,0,6382,'body',0,810,525,1424,1361651334,1,1519),(197,18,63,0,6383,'body',0,1110,526,1519,1361651334,1,810),(197,18,63,0,6384,'body',0,1520,527,810,1361651334,1,1110),(197,18,63,0,6385,'body',0,1521,528,1110,1361651334,1,1520),(197,18,63,0,6386,'body',0,814,529,1520,1361651334,1,1521),(197,18,63,0,6387,'body',0,1522,530,1521,1361651334,1,814),(197,18,63,0,6388,'body',0,1220,531,814,1361651334,1,1522),(197,18,63,0,6389,'body',0,1413,532,1522,1361651334,1,1220),(197,18,63,0,6390,'body',0,1038,533,1220,1361651334,1,1413),(197,18,63,0,6391,'body',0,1523,534,1413,1361651334,1,1038),(197,18,63,0,6392,'body',0,929,535,1038,1361651334,1,1523),(197,18,63,0,6393,'body',0,1302,536,1523,1361651334,1,929),(197,18,63,0,6394,'body',0,1524,537,929,1361651334,1,1302),(197,18,63,0,6395,'body',0,1073,538,1302,1361651334,1,1524),(197,18,63,0,6396,'body',0,1442,539,1524,1361651334,1,1073),(197,18,63,0,6397,'body',0,1525,540,1073,1361651334,1,1442),(197,18,63,0,6398,'body',0,1310,541,1442,1361651334,1,1525),(197,18,63,0,6399,'body',0,814,542,1525,1361651334,1,1310),(197,18,63,0,6400,'body',0,1443,543,1310,1361651334,1,814),(197,18,63,0,6401,'body',0,1227,544,814,1361651334,1,1443),(197,18,63,0,6402,'body',0,833,545,1443,1361651334,1,1227),(197,18,63,0,6403,'body',0,814,546,1227,1361651334,1,833),(197,18,63,0,6404,'body',0,1239,547,833,1361651334,1,814),(197,18,63,0,6405,'body',0,1036,548,814,1361651334,1,1239),(197,18,63,0,6406,'body',0,1526,549,1239,1361651334,1,1036),(197,18,63,0,6407,'body',0,1131,550,1036,1361651334,1,1526),(197,18,63,0,6408,'body',0,1185,551,1526,1361651334,1,1131),(197,18,63,0,6409,'body',0,1273,552,1131,1361651334,1,1185),(197,18,63,0,6410,'body',0,1527,553,1185,1361651334,1,1273),(197,18,63,0,6411,'body',0,1240,554,1273,1361651334,1,1527),(197,18,63,0,6412,'body',0,921,555,1527,1361651334,1,1240),(197,18,63,0,6413,'body',0,1528,556,1240,1361651334,1,921),(197,18,63,0,6414,'body',0,1424,557,921,1361651334,1,1528),(197,18,63,0,6415,'body',0,1030,558,1528,1361651334,1,1424),(197,18,63,0,6416,'body',0,802,559,1424,1361651334,1,1030),(197,18,63,0,6417,'body',0,1027,560,1030,1361651334,1,802),(197,18,63,0,6418,'body',0,1092,561,802,1361651334,1,1027),(197,18,63,0,6419,'body',0,1109,562,1027,1361651334,1,1092),(197,18,63,0,6420,'body',0,1094,563,1092,1361651334,1,1109),(197,18,63,0,6421,'body',0,1529,564,1109,1361651334,1,1094),(197,18,63,0,6422,'body',0,1036,565,1094,1361651334,1,1529),(197,18,63,0,6423,'body',0,1353,566,1529,1361651334,1,1036),(197,18,63,0,6424,'body',0,1038,567,1036,1361651334,1,1353),(197,18,63,0,6425,'body',0,1362,568,1353,1361651334,1,1038),(197,18,63,0,6426,'body',0,1530,569,1038,1361651334,1,1362),(197,18,63,0,6427,'body',0,1047,570,1362,1361651334,1,1530),(197,18,63,0,6428,'body',0,814,571,1530,1361651334,1,1047),(197,18,63,0,6429,'body',0,1531,572,1047,1361651334,1,814),(197,18,63,0,6430,'body',0,1030,573,814,1361651334,1,1531),(197,18,63,0,6431,'body',0,1036,574,1531,1361651334,1,1030),(197,18,63,0,6432,'body',0,1289,575,1030,1361651334,1,1036),(197,18,63,0,6433,'body',0,1442,576,1036,1361651334,1,1289),(197,18,63,0,6434,'body',0,1094,577,1289,1361651334,1,1442),(197,18,63,0,6435,'body',0,1455,578,1442,1361651334,1,1094),(197,18,63,0,6436,'body',0,1376,579,1094,1361651334,1,1455),(197,18,63,0,6437,'body',0,1528,580,1455,1361651334,1,1376),(197,18,63,0,6438,'body',0,1073,581,1376,1361651334,1,1528),(197,18,63,0,6439,'body',0,1269,582,1528,1361651334,1,1073),(197,18,63,0,6440,'body',0,1532,583,1073,1361651334,1,1269),(197,18,63,0,6441,'body',0,1078,584,1269,1361651334,1,1532),(197,18,63,0,6442,'body',0,1528,585,1532,1361651334,1,1078),(197,18,63,0,6443,'body',0,1530,586,1078,1361651334,1,1528),(197,18,63,0,6444,'body',0,1533,587,1528,1361651334,1,1530),(197,18,63,0,6445,'body',0,1534,588,1530,1361651334,1,1533),(197,18,63,0,6446,'body',0,1535,589,1533,1361651334,1,1534),(197,18,63,0,6447,'body',0,1536,590,1534,1361651334,1,1535),(197,18,63,0,6448,'body',0,1537,591,1535,1361651334,1,1536),(197,18,63,0,6449,'body',0,1538,592,1536,1361651334,1,1537),(197,18,63,0,6450,'body',0,1539,593,1537,1361651334,1,1538),(197,18,63,0,6451,'body',0,1459,594,1538,1361651334,1,1539),(197,18,63,0,6452,'body',0,1540,595,1539,1361651334,1,1459),(197,18,63,0,6453,'body',0,1022,596,1459,1361651334,1,1540),(197,18,63,0,6454,'body',0,805,597,1540,1361651334,1,1022),(197,18,63,0,6455,'body',0,1541,598,1022,1361651334,1,805),(197,18,63,0,6456,'body',0,1057,599,805,1361651334,1,1541),(197,18,63,0,6457,'body',0,814,600,1541,1361651334,1,1057),(197,18,63,0,6458,'body',0,1365,601,1057,1361651334,1,814),(197,18,63,0,6459,'body',0,1069,602,814,1361651334,1,1365),(197,18,63,0,6460,'body',0,1542,603,1365,1361651334,1,1069),(197,18,63,0,6461,'body',0,805,604,1069,1361651334,1,1542),(197,18,63,0,6462,'body',0,1069,605,1542,1361651334,1,805),(197,18,63,0,6463,'body',0,1094,606,805,1361651334,1,1069),(197,18,63,0,6464,'body',0,1177,607,1069,1361651334,1,1094),(197,18,63,0,6465,'body',0,1240,608,1094,1361651334,1,1177),(197,18,63,0,6466,'body',0,1241,609,1177,1361651334,1,1240),(197,18,63,0,6467,'body',0,1543,610,1240,1361651334,1,1241),(197,18,63,0,6468,'body',0,1289,611,1241,1361651334,1,1543),(197,18,63,0,6469,'body',0,1469,612,1543,1361651334,1,1289),(197,18,63,0,6470,'body',0,1289,613,1289,1361651334,1,1469),(197,18,63,0,6471,'body',0,1402,614,1469,1361651334,1,1289),(197,18,63,0,6472,'body',0,1442,615,1289,1361651334,1,1402),(197,18,63,0,6473,'body',0,805,616,1402,1361651334,1,1442),(197,18,63,0,6474,'body',0,1228,617,1442,1361651334,1,805),(197,18,63,0,6475,'body',0,1507,618,805,1361651334,1,1228),(197,18,63,0,6476,'body',0,1544,619,1228,1361651334,1,1507),(197,18,63,0,6477,'body',0,1036,620,1507,1361651334,1,1544),(197,18,63,0,6478,'body',0,814,621,1544,1361651334,1,1036),(197,18,63,0,6479,'body',0,1401,622,1036,1361651334,1,814),(197,18,63,0,6480,'body',0,833,623,814,1361651334,1,1401),(197,18,63,0,6481,'body',0,1545,624,1401,1361651334,1,833),(197,18,63,0,6482,'body',0,1493,625,833,1361651334,1,1545),(197,18,63,0,6483,'body',0,1546,626,1545,1361651334,1,1493),(197,18,63,0,6484,'body',0,1304,627,1493,1361651334,1,1546),(197,18,63,0,6485,'body',0,814,628,1546,1361651334,1,1304),(197,18,63,0,6486,'body',0,1050,629,1304,1361651334,1,814),(197,18,63,0,6487,'body',0,802,630,814,1361651334,1,1050),(197,18,63,0,6488,'body',0,1027,631,1050,1361651334,1,802),(197,18,63,0,6489,'body',0,1092,632,802,1361651334,1,1027),(197,18,63,0,6490,'body',0,1219,633,1027,1361651334,1,1092),(197,18,63,0,6491,'body',0,1547,634,1092,1361651334,1,1219),(197,18,63,0,6492,'body',0,921,635,1219,1361651334,1,1547),(197,18,63,0,6493,'body',0,833,636,1547,1361651334,1,921),(197,18,63,0,6494,'body',0,921,637,921,1361651334,1,833),(197,18,63,0,6495,'body',0,1548,638,833,1361651334,1,921),(197,18,63,0,6496,'body',0,809,639,921,1361651334,1,1548),(197,18,63,0,6497,'body',0,1546,640,1548,1361651334,1,809),(197,18,63,0,6498,'body',0,1025,641,809,1361651334,1,1546),(197,18,63,0,6499,'body',0,1152,642,1546,1361651334,1,1025),(197,18,63,0,6500,'body',0,1549,643,1025,1361651334,1,1152),(197,18,63,0,6501,'body',0,1036,644,1152,1361651334,1,1549),(197,18,63,0,6502,'body',0,1055,645,1549,1361651334,1,1036),(197,18,63,0,6503,'body',0,1550,646,1036,1361651334,1,1055),(197,18,63,0,6504,'body',0,1551,647,1055,1361651334,1,1550),(197,18,63,0,6505,'body',0,1036,648,1550,1361651334,1,1551),(197,18,63,0,6506,'body',0,1178,649,1551,1361651334,1,1036),(197,18,63,0,6507,'body',0,1219,650,1036,1361651334,1,1178),(197,18,63,0,6508,'body',0,1030,651,1178,1361651334,1,1219),(197,18,63,0,6509,'body',0,814,652,1219,1361651334,1,1030),(197,18,63,0,6510,'body',0,802,653,1030,1361651334,1,814),(197,18,63,0,6511,'body',0,1027,654,814,1361651334,1,802),(197,18,63,0,6512,'body',0,1028,655,802,1361651334,1,1027),(197,18,63,0,6513,'body',0,1552,656,1027,1361651334,1,1028),(197,18,63,0,6514,'body',0,1362,657,1028,1361651334,1,1552),(197,18,63,0,6515,'body',0,1435,658,1552,1361651334,1,1362),(197,18,63,0,6516,'body',0,805,659,1362,1361651334,1,1435),(197,18,63,0,6517,'body',0,1216,660,1435,1361651334,1,805),(197,18,63,0,6518,'body',0,1008,661,805,1361651334,1,1216),(197,18,63,0,6519,'body',0,810,662,1216,1361651334,1,1008),(197,18,63,0,6520,'body',0,1553,663,1008,1361651334,1,810),(197,18,63,0,6521,'body',0,1371,664,810,1361651334,1,1553),(197,18,63,0,6522,'body',0,1036,665,1553,1361651334,1,1371),(197,18,63,0,6523,'body',0,814,666,1371,1361651334,1,1036),(197,18,63,0,6524,'body',0,1098,667,1036,1361651334,1,814),(197,18,63,0,6525,'body',0,810,668,814,1361651334,1,1098),(197,18,63,0,6526,'body',0,1554,669,1098,1361651334,1,810),(197,18,63,0,6527,'body',0,1371,670,810,1361651334,1,1554),(197,18,63,0,6528,'body',0,1022,671,1554,1361651334,1,1371),(197,18,63,0,6529,'body',0,1239,672,1371,1361651334,1,1022),(197,18,63,0,6530,'body',0,1069,673,1022,1361651334,1,1239),(197,18,63,0,6531,'body',0,1094,674,1239,1361651334,1,1069),(197,18,63,0,6532,'body',0,1114,675,1069,1361651334,1,1094),(197,18,63,0,6533,'body',0,1456,676,1094,1361651334,1,1114),(197,18,63,0,6534,'body',0,814,677,1114,1361651334,1,1456),(197,18,63,0,6535,'body',0,1555,678,1456,1361651334,1,814),(197,18,63,0,6536,'body',0,1036,679,814,1361651334,1,1555),(197,18,63,0,6537,'body',0,1556,680,1555,1361651334,1,1036),(197,18,63,0,6538,'body',0,814,681,1036,1361651334,1,1556),(197,18,63,0,6539,'body',0,1435,682,1556,1361651334,1,814),(197,18,63,0,6540,'body',0,1008,683,814,1361651334,1,1435),(197,18,63,0,6541,'body',0,1415,684,1435,1361651334,1,1008),(197,18,63,0,6542,'body',0,1030,685,1008,1361651334,1,1415),(197,18,63,0,6543,'body',0,810,686,1415,1361651334,1,1030),(197,18,63,0,6544,'body',0,1403,687,1030,1361651334,1,810),(197,18,63,0,6545,'body',0,1422,688,810,1361651334,1,1403),(197,18,63,0,6546,'body',0,833,689,1403,1361651334,1,1422),(197,18,63,0,6547,'body',0,1104,690,1422,1361651334,1,833),(197,18,63,0,6548,'body',0,810,691,833,1361651334,1,1104),(197,18,63,0,6549,'body',0,1442,692,1104,1361651334,1,810),(197,18,63,0,6550,'body',0,1036,693,810,1361651334,1,1442),(197,18,63,0,6551,'body',0,1452,694,1442,1361651334,1,1036),(197,18,63,0,6552,'body',0,814,695,1036,1361651334,1,1452),(197,18,63,0,6553,'body',0,1557,696,1452,1361651334,1,814),(197,18,63,0,6554,'body',0,1022,697,814,1361651334,1,1557),(197,18,63,0,6555,'body',0,1446,698,1557,1361651334,1,1022),(197,18,63,0,6556,'body',0,1073,699,1022,1361651334,1,1446),(197,18,63,0,6557,'body',0,810,700,1446,1361651334,1,1073),(197,18,63,0,6558,'body',0,1110,701,1073,1361651334,1,810),(197,18,63,0,6559,'body',0,921,702,810,1361651334,1,1110),(197,18,63,0,6560,'body',0,1339,703,1110,1361651334,1,921),(197,18,63,0,6561,'body',0,1057,704,921,1361651334,1,1339),(197,18,63,0,6562,'body',0,1131,705,1339,1361651334,1,1057),(197,18,63,0,6563,'body',0,1558,706,1057,1361651334,1,1131),(197,18,63,0,6564,'body',0,1036,707,1131,1361651334,1,1558),(197,18,63,0,6565,'body',0,1559,708,1558,1361651334,1,1036),(197,18,63,0,6566,'body',0,1442,709,1036,1361651334,1,1559),(197,18,63,0,6567,'body',0,1087,710,1559,1361651334,1,1442),(197,18,63,0,6568,'body',0,1334,711,1442,1361651334,1,1087),(197,18,63,0,6569,'body',0,833,712,1087,1361651334,1,1334),(197,18,63,0,6570,'body',0,1131,713,1334,1361651334,1,833),(197,18,63,0,6571,'body',0,1306,714,833,1361651334,1,1131),(197,18,63,0,6572,'body',0,1560,715,1131,1361651334,1,1306),(197,18,63,0,6573,'body',0,1094,716,1306,1361651334,1,1560),(197,18,63,0,6574,'body',0,810,717,1560,1361651334,1,1094),(197,18,63,0,6575,'body',0,1561,718,1094,1361651334,1,810),(197,18,63,0,6576,'body',0,1036,719,810,1361651334,1,1561),(197,18,63,0,6577,'body',0,1508,720,1561,1361651334,1,1036),(197,18,63,0,6578,'body',0,1170,721,1036,1361651334,1,1508),(197,18,63,0,6579,'body',0,1040,722,1508,1361651334,1,1170),(197,18,63,0,6580,'body',0,814,723,1170,1361651334,1,1040),(197,18,63,0,6581,'body',0,1562,724,1040,1361651334,1,814),(197,18,63,0,6582,'body',0,1546,725,814,1361651334,1,1562),(197,18,63,0,6583,'body',0,1073,726,1562,1361651334,1,1546),(197,18,63,0,6584,'body',0,1563,727,1546,1361651334,1,1073),(197,18,63,0,6585,'body',0,810,728,1073,1361651334,1,1563),(197,18,63,0,6586,'body',0,1533,729,1563,1361651334,1,810),(197,18,63,0,6587,'body',0,1040,730,810,1361651334,1,1533),(197,18,63,0,6588,'body',0,1564,731,1533,1361651334,1,1040),(197,18,63,0,6589,'body',0,1175,732,1040,1361651334,1,1564),(197,18,63,0,6590,'body',0,810,733,1564,1361651334,1,1175),(197,18,63,0,6591,'body',0,1565,734,1175,1361651334,1,810),(197,18,63,0,6592,'body',0,1118,735,810,1361651334,1,1565),(197,18,63,0,6593,'body',0,1040,736,1565,1361651334,1,1118),(197,18,63,0,6594,'body',0,814,737,1118,1361651334,1,1040),(197,18,63,0,6595,'body',0,1442,738,1040,1361651334,1,814),(197,18,63,0,6596,'body',0,1566,739,814,1361651334,1,1442),(197,18,63,0,6597,'body',0,1567,740,1442,1361651334,1,1566),(197,18,63,0,6598,'body',0,1568,741,1566,1361651334,1,1567),(197,18,63,0,6599,'body',0,1182,742,1567,1361651334,1,1568),(197,18,63,0,6600,'body',0,802,743,1568,1361651334,1,1182),(197,18,63,0,6601,'body',0,1027,744,1182,1361651334,1,802),(197,18,63,0,6602,'body',0,1092,745,802,1361651334,1,1027),(197,18,63,0,6603,'body',0,1082,746,1027,1361651334,1,1092),(197,18,63,0,6604,'body',0,1181,747,1092,1361651334,1,1082),(197,18,63,0,6605,'body',0,1069,748,1082,1361651334,1,1181),(197,18,63,0,6606,'body',0,810,749,1181,1361651334,1,1069),(197,18,63,0,6607,'body',0,1024,750,1069,1361651334,1,810),(197,18,63,0,6608,'body',0,1030,751,810,1361651334,1,1024),(197,18,63,0,6609,'body',0,802,752,1024,1361651334,1,1030),(197,18,63,0,6610,'body',0,1092,753,1030,1361651334,1,802),(197,18,63,0,6611,'body',0,805,754,802,1361651334,1,1092),(197,18,63,0,6612,'body',0,1569,755,1092,1361651334,1,805),(197,18,63,0,6613,'body',0,1030,756,805,1361651334,1,1569),(197,18,63,0,6614,'body',0,1570,757,1569,1361651334,1,1030),(197,18,63,0,6615,'body',0,1571,758,1030,1361651334,1,1570),(197,18,63,0,6616,'body',0,814,759,1570,1361651334,1,1571),(197,18,63,0,6617,'body',0,1074,760,1571,1361651334,1,814),(197,18,63,0,6618,'body',0,1163,761,814,1361651334,1,1074),(197,18,63,0,6619,'body',0,1572,762,1074,1361651334,1,1163),(197,18,63,0,6620,'body',0,814,763,1163,1361651334,1,1572),(197,18,63,0,6621,'body',0,1573,764,1572,1361651334,1,814),(197,18,63,0,6622,'body',0,1574,765,814,1361651334,1,1573),(197,18,63,0,6623,'body',0,814,766,1573,1361651334,1,1574),(197,18,63,0,6624,'body',0,1575,767,1574,1361651334,1,814),(197,18,63,0,6625,'body',0,1402,768,814,1361651334,1,1575),(197,18,63,0,6626,'body',0,1442,769,1575,1361651334,1,1402),(197,18,63,0,6627,'body',0,1040,770,1402,1361651334,1,1442),(197,18,63,0,6628,'body',0,810,771,1442,1361651334,1,1040),(197,18,63,0,6629,'body',0,1530,772,1040,1361651334,1,810),(197,18,63,0,6630,'body',0,1576,773,810,1361651334,1,1530),(197,18,63,0,6631,'body',0,833,774,1530,1361651334,1,1576),(197,18,63,0,6632,'body',0,1411,775,1576,1361651334,1,833),(197,18,63,0,6633,'body',0,1577,776,833,1361651334,1,1411),(197,18,63,0,6634,'body',0,814,777,1411,1361651334,1,1577),(197,18,63,0,6635,'body',0,1574,778,1577,1361651334,1,814),(197,18,63,0,6636,'body',0,1040,779,814,1361651334,1,1574),(197,18,63,0,6637,'body',0,1069,780,1574,1361651334,1,1040),(197,18,63,0,6638,'body',0,1008,781,1040,1361651334,1,1069),(197,18,63,0,6639,'body',0,1463,782,1069,1361651334,1,1008),(197,18,63,0,6640,'body',0,1036,783,1008,1361651334,1,1463),(197,18,63,0,6641,'body',0,810,784,1463,1361651334,1,1036),(197,18,63,0,6642,'body',0,1578,785,1036,1361651334,1,810),(197,18,63,0,6643,'body',0,1152,786,810,1361651334,1,1578),(197,18,63,0,6644,'body',0,1572,787,1578,1361651334,1,1152),(197,18,63,0,6645,'body',0,814,788,1152,1361651334,1,1572),(197,18,63,0,6646,'body',0,1024,789,1572,1361651334,1,814),(197,18,63,0,6647,'body',0,1579,790,814,1361651334,1,1024),(197,18,63,0,6648,'body',0,1109,791,1024,1361651334,1,1579),(197,18,63,0,6649,'body',0,1094,792,1579,1361651334,1,1109),(197,18,63,0,6650,'body',0,1451,793,1109,1361651334,1,1094),(197,18,63,0,6651,'body',0,814,794,1094,1361651334,1,1451),(197,18,63,0,6652,'body',0,1578,795,1451,1361651334,1,814),(197,18,63,0,6653,'body',0,1442,796,814,1361651334,1,1578),(197,18,63,0,6654,'body',0,1036,797,1578,1361651334,1,1442),(197,18,63,0,6655,'body',0,1095,798,1442,1361651334,1,1036),(197,18,63,0,6656,'body',0,1580,799,1036,1361651334,1,1095),(197,18,63,0,6657,'body',0,1036,800,1095,1361651334,1,1580),(197,18,63,0,6658,'body',0,1430,801,1580,1361651334,1,1036),(197,18,63,0,6659,'body',0,1199,802,1036,1361651334,1,1430),(197,18,63,0,6660,'body',0,1188,803,1430,1361651334,1,1199),(197,18,63,0,6661,'body',0,814,804,1199,1361651334,1,1188),(197,18,63,0,6662,'body',0,1581,805,1188,1361651334,1,814),(197,18,63,0,6663,'body',0,1442,806,814,1361651334,1,1581),(197,18,63,0,6664,'body',0,1094,807,1581,1361651334,1,1442),(197,18,63,0,6665,'body',0,1308,808,1442,1361651334,1,1094),(197,18,63,0,6666,'body',0,1036,809,1094,1361651334,1,1308),(197,18,63,0,6667,'body',0,1366,810,1308,1361651334,1,1036),(197,18,63,0,6668,'body',0,1567,811,1036,1361651334,1,1366),(197,18,63,0,6669,'body',0,1582,812,1366,1361651334,1,1567),(197,18,63,0,6670,'body',0,1430,813,1567,1361651334,1,1582),(197,18,63,0,6671,'body',0,1030,814,1582,1361651334,1,1430),(197,18,63,0,6672,'body',0,810,815,1430,1361651334,1,1030),(197,18,63,0,6673,'body',0,1491,816,1030,1361651334,1,810),(197,18,63,0,6674,'body',0,1583,817,810,1361651334,1,1491),(197,18,63,0,6675,'body',0,1311,818,1491,1361651334,1,1583),(197,18,63,0,6676,'body',0,1528,819,1583,1361651334,1,1311),(197,18,63,0,6677,'body',0,1506,820,1311,1361651334,1,1528),(197,18,63,0,6678,'body',0,1584,821,1528,1361651334,1,1506),(197,18,63,0,6679,'body',0,1030,822,1506,1361651334,1,1584),(197,18,63,0,6680,'body',0,1220,823,1584,1361651334,1,1030),(197,18,63,0,6681,'body',0,1120,824,1030,1361651334,1,1220),(197,18,63,0,6682,'body',0,1585,825,1220,1361651334,1,1120),(197,18,63,0,6683,'body',0,1452,826,1120,1361651334,1,1585),(197,18,63,0,6684,'body',0,1124,827,1585,1361651334,1,1452),(197,18,63,0,6685,'body',0,1586,828,1452,1361651334,1,1124),(197,18,63,0,6686,'body',0,816,829,1124,1361651334,1,1586),(197,18,63,0,6687,'body',0,1123,830,1586,1361651334,1,816),(197,18,63,0,6688,'body',0,1371,831,816,1361651334,1,1123),(197,18,63,0,6689,'body',0,1587,832,1123,1361651334,1,1371),(197,18,63,0,6690,'body',0,1554,833,1371,1361651334,1,1587),(197,18,63,0,6691,'body',0,1588,834,1587,1361651334,1,1554),(197,18,63,0,6692,'body',0,816,835,1554,1361651334,1,1588),(197,18,63,0,6693,'body',0,814,836,1588,1361651334,1,816),(197,18,63,0,6694,'body',0,1589,837,816,1361651334,1,814),(197,18,63,0,6695,'body',0,814,838,814,1361651334,1,1589),(197,18,63,0,6696,'body',0,1442,839,1589,1361651334,1,814),(197,18,63,0,6697,'body',0,1443,840,814,1361651334,1,1442),(197,18,63,0,6698,'body',0,1413,841,1442,1361651334,1,1443),(197,18,63,0,6699,'body',0,1023,842,1443,1361651334,1,1413),(197,18,63,0,6700,'body',0,1525,843,1413,1361651334,1,1023),(197,18,63,0,6701,'body',0,1401,844,1023,1361651334,1,1525),(197,18,63,0,6702,'body',0,1590,845,1525,1361651334,1,1401),(197,18,63,0,6703,'body',0,1036,846,1401,1361651334,1,1590),(197,18,63,0,6704,'body',0,1243,847,1590,1361651334,1,1036),(197,18,63,0,6705,'body',0,833,848,1036,1361651334,1,1243),(197,18,63,0,6706,'body',0,1327,849,1243,1361651334,1,833),(197,18,63,0,6707,'body',0,1030,850,833,1361651334,1,1327),(197,18,63,0,6708,'body',0,1415,851,1327,1361651334,1,1030),(197,18,63,0,6709,'body',0,1069,852,1030,1361651334,1,1415),(197,18,63,0,6710,'body',0,1201,853,1415,1361651334,1,1069),(197,18,63,0,6711,'body',0,1591,854,1069,1361651334,1,1201),(197,18,63,0,6712,'body',0,1094,855,1201,1361651334,1,1591),(197,18,63,0,6713,'body',0,1036,856,1591,1361651334,1,1094),(197,18,63,0,6714,'body',0,1087,857,1094,1361651334,1,1036),(197,18,63,0,6715,'body',0,1334,858,1036,1361651334,1,1087),(197,18,63,0,6716,'body',0,1289,859,1087,1361651334,1,1334),(197,18,63,0,6717,'body',0,1442,860,1334,1361651334,1,1289),(197,18,63,0,6718,'body',0,1025,861,1289,1361651334,1,1442),(197,18,63,0,6719,'body',0,1592,862,1442,1361651334,1,1025),(197,18,63,0,6720,'body',0,1593,863,1025,1361651334,1,1592),(197,18,63,0,6721,'body',0,1030,864,1592,1361651334,1,1593),(197,18,63,0,6722,'body',0,802,865,1593,1361651334,1,1030),(197,18,63,0,6723,'body',0,1027,866,1030,1361651334,1,802),(197,18,63,0,6724,'body',0,1092,867,802,1361651334,1,1027),(197,18,63,0,6725,'body',0,1070,868,1027,1361651334,1,1092),(197,18,63,0,6726,'body',0,1594,869,1092,1361651334,1,1070),(197,18,63,0,6727,'body',0,810,870,1070,1361651334,1,1594),(197,18,63,0,6728,'body',0,1072,871,1594,1361651334,1,810),(197,18,63,0,6729,'body',0,1040,872,810,1361651334,1,1072),(197,18,63,0,6730,'body',0,1279,873,1072,1361651334,1,1040),(197,18,63,0,6731,'body',0,1065,874,1040,1361651334,1,1279),(197,18,63,0,6732,'body',0,1030,875,1279,1361651334,1,1065),(197,18,63,0,6733,'body',0,1224,876,1065,1361651334,1,1030),(197,18,63,0,6734,'body',0,810,877,1030,1361651334,1,1224),(197,18,63,0,6735,'body',0,1024,878,1224,1361651334,1,810),(197,18,63,0,6736,'body',0,1442,879,810,1361651334,1,1024),(197,18,63,0,6737,'body',0,1593,880,1024,1361651334,1,1442),(197,18,63,0,6738,'body',0,1595,881,1442,1361651334,1,1593),(197,18,63,0,6739,'body',0,1593,882,1593,1361651334,1,1595),(197,18,63,0,6740,'body',0,1402,883,1595,1361651334,1,1593),(197,18,63,0,6741,'body',0,1593,884,1593,1361651334,1,1402),(197,18,63,0,6742,'body',0,1287,885,1402,1361651334,1,1593),(197,18,63,0,6743,'body',0,802,886,1593,1361651334,1,1287),(197,18,63,0,6744,'body',0,1027,887,1287,1361651334,1,802),(197,18,63,0,6745,'body',0,1028,888,802,1361651334,1,1027),(197,18,63,0,6746,'body',0,1510,889,1027,1361651334,1,1028),(197,18,63,0,6747,'body',0,1112,890,1028,1361651334,1,1510),(197,18,63,0,6748,'body',0,1071,891,1510,1361651334,1,1112),(197,18,63,0,6749,'body',0,1596,892,1112,1361651334,1,1071),(197,18,63,0,6750,'body',0,1224,893,1071,1361651334,1,1596),(197,18,63,0,6751,'body',0,1485,894,1596,1361651334,1,1224),(197,18,63,0,6752,'body',0,833,895,1224,1361651334,1,1485),(197,18,63,0,6753,'body',0,816,896,1485,1361651334,1,833),(197,18,63,0,6754,'body',0,814,897,833,1361651334,1,816),(197,18,63,0,6755,'body',0,1182,898,816,1361651334,1,814),(197,18,63,0,6756,'body',0,1256,899,814,1361651334,1,1182),(197,18,63,0,6757,'body',0,1120,900,1182,1361651334,1,1256),(197,18,63,0,6758,'body',0,1597,901,1256,1361651334,1,1120),(197,18,63,0,6759,'body',0,1206,902,1120,1361651334,1,1597),(197,18,63,0,6760,'body',0,1588,903,1597,1361651334,1,1206),(197,18,63,0,6761,'body',0,1112,904,1206,1361651334,1,1588),(197,18,63,0,6762,'body',0,1306,905,1588,1361651334,1,1112),(197,18,63,0,6763,'body',0,1598,906,1112,1361651334,1,1306),(197,18,63,0,6764,'body',0,1476,907,1306,1361651334,1,1598),(197,18,63,0,6765,'body',0,1517,908,1598,1361651334,1,1476),(197,18,63,0,6766,'body',0,1036,909,1476,1361651334,1,1517),(197,18,63,0,6767,'body',0,814,910,1517,1361651334,1,1036),(197,18,63,0,6768,'body',0,996,911,1036,1361651334,1,814),(197,18,63,0,6769,'body',0,1599,912,814,1361651334,1,996),(197,18,63,0,6770,'body',0,1036,913,996,1361651334,1,1599),(197,18,63,0,6771,'body',0,1600,914,1599,1361651334,1,1036),(197,18,63,0,6772,'body',0,1062,915,1036,1361651334,1,1600),(197,18,63,0,6773,'body',0,1022,916,1600,1361651334,1,1062),(197,18,63,0,6774,'body',0,1593,917,1062,1361651334,1,1022),(197,18,63,0,6775,'body',0,805,918,1022,1361651334,1,1593),(197,18,63,0,6776,'body',0,1601,919,1593,1361651334,1,805),(197,18,63,0,6777,'body',0,1269,920,805,1361651334,1,1601),(197,18,63,0,6778,'body',0,1109,921,1601,1361651334,1,1269),(197,18,63,0,6779,'body',0,1094,922,1269,1361651334,1,1109),(197,18,63,0,6780,'body',0,1087,923,1109,1361651334,1,1094),(197,18,63,0,6781,'body',0,1276,924,1094,1361651334,1,1087),(197,18,63,0,6782,'body',0,1084,925,1087,1361651334,1,1276),(197,18,63,0,6783,'body',0,1036,926,1276,1361651334,1,1084),(197,18,63,0,6784,'body',0,1085,927,1084,1361651334,1,1036),(197,18,63,0,6785,'body',0,1001,928,1036,1361651334,1,1085),(197,18,63,0,6786,'body',0,996,929,1085,1361651334,1,1001),(197,18,63,0,6787,'body',0,1602,930,1001,1361651334,1,996),(197,18,63,0,6788,'body',0,1073,931,996,1361651334,1,1602),(197,18,63,0,6789,'body',0,1593,932,1602,1361651334,1,1073),(197,18,63,0,6790,'body',0,1603,933,1073,1361651334,1,1593),(197,18,63,0,6791,'body',0,833,934,1593,1361651334,1,1603),(197,18,63,0,6792,'body',0,1604,935,1603,1361651334,1,833),(197,18,63,0,6793,'body',0,1094,936,833,1361651334,1,1604),(197,18,63,0,6794,'body',0,1114,937,1604,1361651334,1,1094),(197,18,63,0,6795,'body',0,1451,938,1094,1361651334,1,1114),(197,18,63,0,6796,'body',0,1036,939,1114,1361651334,1,1451),(197,18,63,0,6797,'body',0,1605,940,1451,1361651334,1,1036),(197,18,63,0,6798,'body',0,1084,941,1036,1361651334,1,1605),(197,18,63,0,6799,'body',0,1164,942,1605,1361651334,1,1084),(197,18,63,0,6800,'body',0,1094,943,1084,1361651334,1,1164),(197,18,63,0,6801,'body',0,1606,944,1164,1361651334,1,1094),(197,18,63,0,6802,'body',0,1170,945,1094,1361651334,1,1606),(197,18,63,0,6803,'body',0,1607,946,1606,1361651334,1,1170),(197,18,63,0,6804,'body',0,1322,947,1170,1361651334,1,1607),(197,18,63,0,6805,'body',0,1057,948,1607,1361651334,1,1322),(197,18,63,0,6806,'body',0,1086,949,1322,1361651334,1,1057),(197,18,63,0,6807,'body',0,1211,950,1057,1361651334,1,1086),(197,18,63,0,6808,'body',0,1396,951,1086,1361651334,1,1211),(197,18,63,0,6809,'body',0,1069,952,1211,1361651334,1,1396),(197,18,63,0,6810,'body',0,1340,953,1396,1361651334,1,1069),(197,18,63,0,6811,'body',0,816,954,1069,1361651334,1,1340),(197,18,63,0,6812,'body',0,1228,955,1340,1361651334,1,816),(197,18,63,0,6813,'body',0,1165,956,816,1361651334,1,1228),(197,18,63,0,6814,'body',0,1071,957,1228,1361651334,1,1165),(197,18,63,0,6815,'body',0,1608,958,1165,1361651334,1,1071),(197,18,63,0,6816,'body',0,1001,959,1071,1361651334,1,1608),(197,18,63,0,6817,'body',0,833,960,1608,1361651334,1,1001),(197,18,63,0,6818,'body',0,1168,961,1001,1361651334,1,833),(197,18,63,0,6819,'body',0,1084,962,833,1361651334,1,1168),(197,18,63,0,6820,'body',0,1023,963,1168,1361651334,1,1084),(197,18,63,0,6821,'body',0,802,964,1084,1361651334,1,1023),(197,18,63,0,6822,'body',0,1027,965,1023,1361651334,1,802),(197,18,63,0,6823,'body',0,1028,966,802,1361651334,1,1027),(197,18,63,0,6824,'body',0,1609,967,1027,1361651334,1,1028),(197,18,63,0,6825,'body',0,1610,968,1028,1361651334,1,1609),(198,18,63,0,6826,'publication_date',1361651280,0,969,1609,1361651334,1,1610),(193,17,64,0,6827,'name',0,1022,0,0,1361651355,1,969),(194,17,64,0,6828,'description',0,805,1,969,1361651355,1,1022),(194,17,64,0,6829,'description',0,814,2,1022,1361651355,1,805),(194,17,64,0,6830,'description',0,969,3,805,1361651355,1,814),(194,17,64,0,6831,'description',0,1024,4,814,1361651355,1,969),(194,17,64,0,6832,'description',0,0,5,969,1361651355,1,1024);
/*!40000 ALTER TABLE `ezsearch_object_word_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_return_count`
--

DROP TABLE IF EXISTS `ezsearch_return_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_return_count` (
  `count` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezsearch_return_cnt_ph_id_cnt` (`phrase_id`,`count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_return_count`
--

LOCK TABLES `ezsearch_return_count` WRITE;
/*!40000 ALTER TABLE `ezsearch_return_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsearch_return_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_search_phrase`
--

DROP TABLE IF EXISTS `ezsearch_search_phrase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_search_phrase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(250) DEFAULT NULL,
  `phrase_count` int(11) DEFAULT '0',
  `result_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezsearch_search_phrase_phrase` (`phrase`),
  KEY `ezsearch_search_phrase_count` (`phrase_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_search_phrase`
--

LOCK TABLES `ezsearch_search_phrase` WRITE;
/*!40000 ALTER TABLE `ezsearch_search_phrase` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsearch_search_phrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_word`
--

DROP TABLE IF EXISTS `ezsearch_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_count` int(11) NOT NULL DEFAULT '0',
  `word` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezsearch_word_obj_count` (`object_count`),
  KEY `ezsearch_word_word_i` (`word`)
) ENGINE=InnoDB AUTO_INCREMENT=1611 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_word`
--

LOCK TABLES `ezsearch_word` WRITE;
/*!40000 ALTER TABLE `ezsearch_word` DISABLE KEYS */;
INSERT INTO `ezsearch_word` VALUES (802,3,'ez'),(805,5,'is'),(807,3,'site'),(809,3,'with'),(810,3,'a'),(812,1,'setup'),(814,5,'the'),(816,4,'for'),(833,3,'and'),(874,1,'documentation'),(877,2,'common'),(907,1,'official'),(921,3,'more'),(922,1,'information'),(925,3,'systems'),(927,2,'ez.no'),(929,3,'new'),(930,3,'users'),(934,2,'tutorial'),(951,2,'main'),(952,2,'group'),(953,2,'anonymous'),(954,3,'user'),(955,1,'nospam'),(958,2,'administrator'),(959,1,'editors'),(961,1,'media'),(962,1,'images'),(963,2,'files'),(964,1,'multimedia'),(965,2,'ini'),(966,1,'settings'),(967,1,'sitestyle_identifier'),(968,2,'design'),(969,2,'home'),(970,1,'footer'),(971,1,'global'),(972,1,'company'),(973,1,'offices'),(974,3,'around'),(975,1,'world'),(976,1,'including'),(977,1,'skien'),(978,1,'norway'),(979,1,'york'),(980,1,'usa'),(981,1,'oslo'),(982,1,'cologne'),(983,1,'germany'),(984,1,'paris'),(985,1,'france'),(986,1,'lyon'),(987,1,'beijing'),(988,1,'china'),(989,1,'tokyo'),(990,1,'japan'),(991,1,'singapore'),(992,1,'london'),(993,1,'uk'),(994,1,'contact'),(995,2,'us'),(996,2,'http'),(997,2,'community'),(998,1,'share.ez.no'),(999,1,'doc.ez.no'),(1000,2,'follow'),(1001,3,'on'),(1002,1,'twitter'),(1003,1,'facebook'),(1004,1,'linkedin'),(1005,1,'copyright'),(1006,1,'c'),(1007,1,'2012'),(1008,3,'as'),(1009,1,'except'),(1010,2,'where'),(1011,1,'otherwise'),(1012,1,'noted'),(1013,3,'all'),(1014,1,'rights'),(1015,1,'reserved'),(1016,1,'1341417600'),(1017,1,'admin'),(1018,1,'example.com'),(1019,1,'partners'),(1020,1,'members'),(1021,3,'about'),(1022,4,'this'),(1023,2,'an'),(1024,3,'page'),(1025,3,'code'),(1026,2,'working'),(1027,2,'publish'),(1028,2,'5'),(1029,1,'introduction'),(1030,2,'in'),(1031,1,'early'),(1032,1,'february'),(1033,1,'i'),(1034,1,'had'),(1035,1,'opportunity'),(1036,2,'to'),(1037,1,'spend'),(1038,2,'some'),(1039,1,'learning'),(1040,2,'of'),(1041,1,'ins'),(1042,1,'outs'),(1043,2,'version'),(1044,1,'at'),(1045,1,'training'),(1046,1,'event'),(1047,2,'from'),(1048,1,'having'),(1049,1,'developed'),(1050,2,'years'),(1051,1,'knew'),(1052,1,'was'),(1053,1,'going'),(1054,2,'be'),(1055,2,'big'),(1056,2,'change'),(1057,2,'but'),(1058,1,'didn'),(1059,2,'t'),(1060,2,'really'),(1061,1,'consider'),(1062,2,'how'),(1063,1,'much'),(1064,1,'would'),(1065,2,'involved'),(1066,1,'after'),(1067,1,'digging'),(1068,1,'found'),(1069,2,'that'),(1070,2,'there'),(1071,2,'s'),(1072,2,'lot'),(1073,2,'like'),(1074,2,'system'),(1075,1,'goal'),(1076,1,'series'),(1077,1,'blog'),(1078,2,'posts'),(1079,2,'will'),(1080,1,'help'),(1081,1,'current'),(1082,2,'developers'),(1083,1,'get'),(1084,2,'up'),(1085,2,'speed'),(1086,2,'we'),(1087,2,'re'),(1088,1,'mostly'),(1089,1,'focusing'),(1090,2,'already'),(1091,2,'familiar'),(1092,2,'4'),(1093,1,'long'),(1094,2,'you'),(1095,2,'have'),(1096,1,'basic'),(1097,1,'familiarity'),(1098,2,'cms'),(1099,1,'should'),(1100,1,'able'),(1101,1,'along'),(1102,1,'idea'),(1103,2,'here'),(1104,2,'provide'),(1105,1,'allow'),(1106,1,'running'),(1107,1,'quickly'),(1108,2,'even'),(1109,2,'if'),(1110,2,'bit'),(1111,1,'neophyte'),(1112,2,'symfony'),(1113,1,'me'),(1114,2,'ll'),(1115,1,'cover'),(1116,2,'concepts'),(1117,1,'build'),(1118,2,'out'),(1119,2,'using'),(1120,2,'only'),(1121,2,'wherever'),(1122,1,'possible'),(1123,2,'each'),(1124,2,'step'),(1125,2,'has'),(1126,2,'been'),(1127,1,'stored'),(1128,1,'branch'),(1129,1,'github'),(1130,1,'make'),(1131,2,'it'),(1132,2,'easy'),(1133,1,'folks'),(1134,1,'contributed'),(1135,2,'way'),(1136,1,'creation'),(1137,1,'quick'),(1138,1,'thanks'),(1139,1,'staff'),(1140,1,'blend'),(1141,1,'interactive'),(1142,2,'their'),(1143,1,'clarifying'),(1144,1,'testing'),(1145,1,'damien'),(1146,1,'pobel'),(1147,1,'who'),(1148,1,'open'),(1149,1,'sourced'),(1150,1,'planet'),(1151,1,'ezpublish.fr'),(1152,2,'which'),(1153,1,'my'),(1154,1,'own'),(1155,1,'based'),(1156,1,'codebase'),(1157,1,'proved'),(1158,2,'good'),(1159,1,'show'),(1160,1,'pedigree'),(1161,1,'things'),(1162,1,'clear'),(1163,2,'first'),(1164,2,'before'),(1165,2,'let'),(1166,1,'address'),(1167,1,'facts'),(1168,2,'set'),(1169,1,'aside'),(1170,2,'any'),(1171,1,'preconceived'),(1172,1,'notions'),(1173,1,'what'),(1174,2,'getting'),(1175,2,'into'),(1176,1,'totally'),(1177,2,'ve'),(1178,2,'read'),(1179,1,'anything'),(1180,2,'probably'),(1181,2,'know'),(1182,2,'most'),(1183,2,'core'),(1184,2,'components'),(1185,2,'are'),(1186,2,'being'),(1187,1,'replaced'),(1188,2,'by'),(1189,2,'framework'),(1190,1,'number'),(1191,1,'hints'),(1192,1,'release'),(1193,1,'past'),(1194,2,'major'),(1195,1,'releases'),(1196,1,'continuation'),(1197,1,'same'),(1198,1,'many'),(1199,2,'used'),(1200,1,'while'),(1201,2,'still'),(1202,2,'parts'),(1203,1,'essence'),(1204,1,'ground'),(1205,1,'rewrite'),(1206,2,'entire'),(1207,1,'overall'),(1208,1,'direction'),(1209,1,'component'),(1210,1,'stack'),(1211,2,'can'),(1212,2,'instead'),(1213,1,'counterpart'),(1214,1,'examples'),(1215,1,'interaction'),(1216,2,'handled'),(1217,1,'via'),(1218,1,'controllers'),(1219,2,'templates'),(1220,2,'twig'),(1221,1,'yml'),(1222,1,'ezjscore'),(1223,1,'assetic'),(1224,2,'caching'),(1225,1,'product'),(1226,1,'kernel'),(1227,2,'itself'),(1228,2,'now'),(1229,1,'accessed'),(1230,1,'public'),(1231,1,'api'),(1232,1,'remain'),(1233,1,'stable'),(1234,1,'future'),(1235,1,'versions'),(1236,1,'great'),(1237,1,'news'),(1238,2,'since'),(1239,2,'means'),(1240,2,'no'),(1241,2,'longer'),(1242,1,'hooking'),(1243,2,'classes'),(1244,1,'random'),(1245,1,'hoping'),(1246,2,'they'),(1247,2,'don'),(1248,1,'general'),(1249,1,'architectural'),(1250,1,'decisions'),(1251,1,'represents'),(1252,1,'ecosystem'),(1253,1,'mature'),(1254,1,'elegant'),(1255,1,'becoming'),(1256,2,'part'),(1257,1,'less'),(1258,1,'time'),(1259,1,'underlying'),(1260,1,'platform'),(1261,1,'delivering'),(1262,1,'best'),(1263,1,'business'),(1264,1,'perspective'),(1265,1,'likely'),(1266,1,'find'),(1267,1,'transferrable'),(1268,1,'skills'),(1269,2,'so'),(1270,1,'term'),(1271,1,'win'),(1272,1,'side'),(1273,2,'well'),(1274,1,'isn'),(1275,1,'wait'),(1276,2,'not'),(1277,1,'yet'),(1278,1,'anyway'),(1279,2,'pieces'),(1280,1,'administrative'),(1281,1,'interface'),(1282,2,'other'),(1283,1,'commenting'),(1284,1,'front'),(1285,1,'end'),(1286,1,'editing'),(1287,2,'etc'),(1288,1,'rewritten'),(1289,2,'your'),(1290,1,'normal'),(1291,1,'workflow'),(1292,1,'fact'),(1293,1,'previous'),(1294,1,'rechristened'),(1295,1,'legacy'),(1296,1,'ships'),(1297,1,'right'),(1298,1,'alongside'),(1299,1,'shiny'),(1300,1,'doesn'),(1301,1,'lose'),(1302,2,'features'),(1303,1,'moves'),(1304,2,'over'),(1305,2,'architecture'),(1306,2,'also'),(1307,1,'areas'),(1308,2,'need'),(1309,1,'understand'),(1310,2,'both'),(1311,2,'or'),(1312,1,'cases'),(1313,1,'duplicate'),(1314,1,'effort'),(1315,1,'switch'),(1316,1,'important'),(1317,1,'thing'),(1318,1,'remember'),(1319,1,'dont'),(1320,2,'start'),(1321,1,'year'),(1322,2,'development'),(1323,1,'roadmap'),(1324,2,'calls'),(1325,1,'available'),(1326,1,'clever'),(1327,2,'methods'),(1328,1,'built'),(1329,1,'fall'),(1330,2,'back'),(1331,1,'somewhat'),(1332,1,'transparently'),(1333,1,'choose'),(1334,2,'use'),(1335,1,'little'),(1336,2,'project'),(1337,1,'point'),(1338,1,'though'),(1339,2,'work'),(1340,2,'stuff'),(1341,1,'try'),(1342,1,'do'),(1343,1,'selected'),(1344,2,'fairly'),(1345,2,'next'),(1346,1,'few'),(1347,2,'pages'),(1348,2,'building'),(1349,1,'go'),(1350,1,'placed'),(1351,1,'made'),(1352,1,'note'),(1353,2,'pull'),(1354,1,'down'),(1355,1,'order'),(1356,1,'catch'),(1357,1,'progress'),(1358,1,'master'),(1359,1,'actually'),(1360,2,'may'),(1361,1,'enhanced'),(1362,2,'extra'),(1363,1,'goes'),(1364,1,'see'),(1365,2,'problem'),(1366,2,'either'),(1367,1,'please'),(1368,1,'feel'),(1369,1,'free'),(1370,1,'send'),(1371,2,'request'),(1372,1,'update'),(1373,1,'accordingly'),(1374,1,'m'),(1375,1,'myself'),(1376,2,'called'),(1377,1,'questions'),(1378,1,'answer'),(1379,1,'drop'),(1380,1,'comment'),(1381,1,'environment'),(1382,1,'sure'),(1383,1,'requirements'),(1384,1,'installed'),(1385,1,'covering'),(1386,1,'basics'),(1387,1,'1361651160'),(1388,1,'dig'),(1389,1,'look'),(1390,1,'got'),(1391,1,'handle'),(1392,1,'aren'),(1393,1,'interested'),(1394,1,'conceptual'),(1395,1,'changes'),(1396,1,'skip'),(1397,1,'ahead'),(1398,1,'post'),(1399,1,'hands'),(1400,1,'dirty'),(1401,1,'model'),(1402,1,'view'),(1403,1,'controller'),(1404,1,'worked'),(1405,1,'rails'),(1406,1,'asp.net'),(1407,1,'mvc'),(1408,1,'lesser'),(1409,1,'degree'),(1410,1,'cakephp'),(1411,1,'then'),(1412,1,'pattern'),(1413,1,'provides'),(1414,1,'standard'),(1415,1,'php'),(1416,1,'applications'),(1417,1,'organized'),(1418,1,'when'),(1419,1,'received'),(1420,1,'directed'),(1421,1,'routes'),(1422,1,'action'),(1423,1,'just'),(1424,1,'function'),(1425,1,'defined'),(1426,1,'app'),(1427,1,'developer'),(1428,1,'gathers'),(1429,1,'whatever'),(1430,1,'variables'),(1431,1,'needed'),(1432,1,'objects'),(1433,1,'represent'),(1434,1,'stores'),(1435,1,'data'),(1436,1,'database'),(1437,1,'web'),(1438,1,'apis'),(1439,1,'punch'),(1440,1,'cards'),(1441,1,'gathered'),(1442,1,'template'),(1443,1,'language'),(1444,1,'format'),(1445,1,'response'),(1446,1,'sounds'),(1447,1,'pretty'),(1448,1,'complicated'),(1449,1,'practice'),(1450,1,'straightforward'),(1451,1,'want'),(1452,1,'render'),(1453,1,'output'),(1454,1,'example'),(1455,1,'simply'),(1456,1,'write'),(1457,1,'class'),(1458,1,'returns'),(1459,1,'array'),(1460,1,'containing'),(1461,1,'templating'),(1462,1,'contains'),(1463,1,'html'),(1464,1,'easier'),(1465,1,'provided'),(1466,1,'principles'),(1467,1,'drive'),(1468,1,'separation'),(1469,1,'concerns'),(1470,1,'repeat'),(1471,1,'yourself'),(1472,1,'dry'),(1473,1,'job'),(1474,1,'fetching'),(1475,1,'separate'),(1476,1,'very'),(1477,1,'appearance'),(1478,1,'json'),(1479,1,'xml'),(1480,1,'something'),(1481,1,'else'),(1482,1,'javascript'),(1483,1,'adds'),(1484,1,'another'),(1485,1,'layer'),(1486,1,'top'),(1487,1,'packaging'),(1488,1,'bundles'),(1489,1,'directories'),(1490,1,'organize'),(1491,1,'specific'),(1492,1,'aspects'),(1493,1,'application'),(1494,1,'sometimes'),(1495,1,'referred'),(1496,1,'hmvc'),(1497,1,'hierarchical'),(1498,1,'makes'),(1499,1,'people'),(1500,1,'written'),(1501,1,'installing'),(1502,1,'coming'),(1503,1,'trip'),(1504,1,'unless'),(1505,1,'looking'),(1506,1,'them'),(1507,1,'talking'),(1508,1,'keep'),(1509,1,'mind'),(1510,1,'uses'),(1511,1,'old'),(1512,1,'always'),(1513,1,'half'),(1514,1,'smarty'),(1515,1,'deprecated'),(1516,1,'favor'),(1517,1,'closely'),(1518,1,'associated'),(1519,1,'quite'),(1520,1,'differently'),(1521,1,'under'),(1522,1,'hood'),(1523,1,'neat'),(1524,1,'too'),(1525,1,'inheritance'),(1526,1,'extend'),(1527,1,'documented'),(1528,1,'fetch'),(1529,1,'wanted'),(1530,1,'content'),(1531,1,'repository'),(1532,1,'def'),(1533,1,'list'),(1534,1,'hash'),(1535,1,'parent_node_id'),(1536,1,'2'),(1537,1,'class_filter_type'),(1538,1,'include'),(1539,1,'class_filter_array'),(1540,1,'blog_post'),(1541,1,'handy'),(1542,1,'arises'),(1543,1,'separated'),(1544,1,'directly'),(1545,1,'handling'),(1546,1,'logic'),(1547,1,'became'),(1548,1,'loaded'),(1549,1,'lead'),(1550,1,'hairy'),(1551,1,'hard'),(1552,1,'approach'),(1553,1,'nested'),(1554,1,'sub'),(1555,1,'query'),(1556,1,'retrieve'),(1557,1,'results'),(1558,1,'leads'),(1559,1,'better'),(1560,1,'gives'),(1561,1,'chance'),(1562,1,'complex'),(1563,1,'turning'),(1564,1,'events'),(1565,1,'calendar'),(1566,1,'single'),(1567,1,'pass'),(1568,1,'rendering'),(1569,1,'rendered'),(1570,1,'two'),(1571,1,'steps'),(1572,1,'renders'),(1573,1,'module'),(1574,1,'result'),(1575,1,'full'),(1576,1,'object'),(1577,1,'passes'),(1578,1,'pagelayout'),(1579,1,'surround'),(1580,1,'access'),(1581,1,'interior'),(1582,1,'those'),(1583,1,'structure'),(1584,1,'again'),(1585,1,'one'),(1586,1,'occurs'),(1587,1,'ignoring'),(1588,1,'requests'),(1589,1,'moment'),(1590,1,'similar'),(1591,1,'allows'),(1592,1,'simplified'),(1593,1,'cache'),(1594,1,'were'),(1595,1,'block'),(1596,1,'native'),(1597,1,'caches'),(1598,1,'adheres'),(1599,1,'specification'),(1600,1,'determine'),(1601,1,'managed'),(1602,1,'headers'),(1603,1,'control'),(1604,1,'etag'),(1605,1,'brush'),(1606,1,'begin'),(1607,1,'serious'),(1608,1,'move'),(1609,1,'installation'),(1610,1,'1361651280');
/*!40000 ALTER TABLE `ezsearch_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsection`
--

DROP TABLE IF EXISTS `ezsection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `navigation_part_identifier` varchar(100) DEFAULT 'ezcontentnavigationpart',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsection`
--

LOCK TABLES `ezsection` WRITE;
/*!40000 ALTER TABLE `ezsection` DISABLE KEYS */;
INSERT INTO `ezsection` VALUES (1,'standard','','Standard','ezcontentnavigationpart'),(2,'users','','Users','ezusernavigationpart'),(3,'media','','Media','ezmedianavigationpart'),(4,'setup','','Setup','ezsetupnavigationpart'),(5,'design','','Design','ezvisualnavigationpart'),(6,'','','Restricted','ezcontentnavigationpart');
/*!40000 ALTER TABLE `ezsection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsession`
--

DROP TABLE IF EXISTS `ezsession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsession` (
  `data` longtext NOT NULL,
  `expiration_time` int(11) NOT NULL DEFAULT '0',
  `session_key` varchar(32) NOT NULL DEFAULT '',
  `user_hash` varchar(32) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_key`),
  KEY `expiration_time` (`expiration_time`),
  KEY `ezsession_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsession`
--

LOCK TABLES `ezsession` WRITE;
/*!40000 ALTER TABLE `ezsession` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsite_data`
--

DROP TABLE IF EXISTS `ezsite_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsite_data` (
  `name` varchar(60) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsite_data`
--

LOCK TABLES `ezsite_data` WRITE;
/*!40000 ALTER TABLE `ezsite_data` DISABLE KEYS */;
INSERT INTO `ezsite_data` VALUES ('ezdemo','2.0'),('ezpublish-release','1'),('ezpublish-version','5.1.0alpha1');
/*!40000 ALTER TABLE `ezsite_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezstarrating`
--

DROP TABLE IF EXISTS `ezstarrating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezstarrating` (
  `contentobject_id` int(11) NOT NULL,
  `contentobject_attribute_id` int(11) NOT NULL,
  `rating_average` float NOT NULL,
  `rating_count` int(11) NOT NULL,
  PRIMARY KEY (`contentobject_id`,`contentobject_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezstarrating`
--

LOCK TABLES `ezstarrating` WRITE;
/*!40000 ALTER TABLE `ezstarrating` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezstarrating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezstarrating_data`
--

DROP TABLE IF EXISTS `ezstarrating_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezstarrating_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_key` varchar(32) NOT NULL,
  `rating` float NOT NULL,
  `contentobject_id` int(11) NOT NULL,
  `contentobject_attribute_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_session_key` (`user_id`,`session_key`),
  KEY `contentobject_id_contentobject_attribute_id` (`contentobject_id`,`contentobject_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezstarrating_data`
--

LOCK TABLES `ezstarrating_data` WRITE;
/*!40000 ALTER TABLE `ezstarrating_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezstarrating_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsubtree_notification_rule`
--

DROP TABLE IF EXISTS `ezsubtree_notification_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsubtree_notification_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL DEFAULT '0',
  `use_digest` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezsubtree_notification_rule_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsubtree_notification_rule`
--

LOCK TABLES `ezsubtree_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezsubtree_notification_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsubtree_notification_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztipafriend_counter`
--

DROP TABLE IF EXISTS `eztipafriend_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztipafriend_counter` (
  `count` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `requested` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`node_id`,`requested`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztipafriend_counter`
--

LOCK TABLES `eztipafriend_counter` WRITE;
/*!40000 ALTER TABLE `eztipafriend_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztipafriend_request`
--

DROP TABLE IF EXISTS `eztipafriend_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztipafriend_request` (
  `created` int(11) NOT NULL DEFAULT '0',
  `email_receiver` varchar(100) NOT NULL DEFAULT '',
  KEY `eztipafriend_request_created` (`created`),
  KEY `eztipafriend_request_email_rec` (`email_receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztipafriend_request`
--

LOCK TABLES `eztipafriend_request` WRITE;
/*!40000 ALTER TABLE `eztipafriend_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztrigger`
--

DROP TABLE IF EXISTS `eztrigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztrigger` (
  `connect_type` char(1) NOT NULL DEFAULT '',
  `function_name` varchar(200) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(200) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `workflow_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `eztrigger_def_id` (`module_name`(50),`function_name`(50),`connect_type`),
  KEY `eztrigger_fetch` (`name`(25),`module_name`(50),`function_name`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztrigger`
--

LOCK TABLES `eztrigger` WRITE;
/*!40000 ALTER TABLE `eztrigger` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztrigger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurl`
--

DROP TABLE IF EXISTS `ezurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurl` (
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_valid` int(11) NOT NULL DEFAULT '1',
  `last_checked` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `original_url_md5` varchar(32) NOT NULL DEFAULT '',
  `url` longtext,
  PRIMARY KEY (`id`),
  KEY `ezurl_url` (`url`(255))
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl`
--

LOCK TABLES `ezurl` WRITE;
/*!40000 ALTER TABLE `ezurl` DISABLE KEYS */;
INSERT INTO `ezurl` VALUES (1082368571,8,1,0,1082368571,'dfcdb471b240d964dc3f57b998eb0533','http://ez.no'),(1361639842,23,1,0,1361639842,'a99e0cbe4aa82974daa427a121c1bd32','http://ez.no/About-eZ/Contact-Us'),(1361639842,24,1,0,1361639842,'265d537bfba0e5ed4e85fbcd7f30ea84','http://share.ez.no'),(1361639842,25,1,0,1361639842,'ba55ac8a1ebe1cd6eedbb5fc073feb4e','http://doc.ez.no'),(1361639842,26,1,0,1361639842,'aaea21dc8d911e7b5dbcde30028e5232','https://twitter.com/eZSystems'),(1361639842,27,1,0,1361639842,'ec8180e4dbb06b25b58150922546d389','http://www.facebook.com/eZPublishEnterprise'),(1361639842,28,1,0,1361639842,'f010a7745c13a177f06df0afadb91ed9','https://www.linkedin.com/company/ez-systems'),(1361639843,29,1,0,1361639843,'9b492048041e95b32de08bafc86d759b','/content/view/sitemap/2'),(1361639843,30,1,0,1361639843,'c86bcb109d8e70f9db65c803baafd550','/content/view/tagcloud/2'),(1361651268,31,1,0,1361651268,'e4a4d4a2f25b3e9cedf819192a5d59ba','http://blendinteractive.com'),(1361651268,32,1,0,1361651268,'2c535275947538e25d30952979814f88','http://pwet.fr/blog'),(1361651268,33,1,0,1361651268,'35350529c9433f02d0940210a8656ddb','https://github.com/dpobel/planet-ezpublish.fr'),(1361651268,34,1,0,1361651268,'250539f8ead8841ed0f91f39c0744732','http://www.planet-ezpublish.fr/'),(1361651268,35,1,0,1361651268,'057529bfc8ed90e92c11894908d64b79','https://github.com/blendinteractive/partialcontent'),(1361651268,36,1,0,1361651268,'874a421888df2f2b8aaebed7c1ee2427','http://symfony.com/doc/current/reference/requirements.html'),(1361651268,37,1,0,1361651268,'39aa67d414f1f4d15dadc5a211025624','https://confluence.ez.no/display/EZP/Requirements+for+doing+a+normal+installation'),(1361651268,38,1,0,1361651268,'2ab151910c62ee8ed98a95f9b9b373e3','/Code/Working-with-eZ-Publish-5-Symfony'),(1361651321,39,1,0,1361651321,'8c7ed89829690111d836743b563b1ad1','http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html'),(1361651321,40,1,0,1361651321,'46d38db583fde27f10ce204142dc2881','http://en.wikipedia.org/wiki/HTTP_ETag'),(1361651321,41,1,0,1361651321,'e31c68b9e170b5a5783ace0bf42b45c8','/Code/Working-with-eZ-Publish-5-Setup');
/*!40000 ALTER TABLE `ezurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurl_object_link`
--

DROP TABLE IF EXISTS `ezurl_object_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurl_object_link` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_version` int(11) NOT NULL DEFAULT '0',
  `url_id` int(11) NOT NULL DEFAULT '0',
  KEY `ezurl_ol_coa_id` (`contentobject_attribute_id`),
  KEY `ezurl_ol_coa_version` (`contentobject_attribute_version`),
  KEY `ezurl_ol_url_id` (`url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl_object_link`
--

LOCK TABLES `ezurl_object_link` WRITE;
/*!40000 ALTER TABLE `ezurl_object_link` DISABLE KEYS */;
INSERT INTO `ezurl_object_link` VALUES (191,1,23),(192,1,8),(192,1,24),(192,1,25),(192,1,26),(192,1,27),(192,1,28),(200,2,29),(201,2,30),(234,1,31),(234,1,8),(234,1,32),(234,1,33),(234,1,34),(234,1,35),(234,1,36),(234,1,37),(234,1,38),(240,1,39),(240,1,40),(240,1,41);
/*!40000 ALTER TABLE `ezurl_object_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias`
--

DROP TABLE IF EXISTS `ezurlalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias` (
  `destination_url` longtext NOT NULL,
  `forward_to_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_imported` int(11) NOT NULL DEFAULT '0',
  `is_internal` int(11) NOT NULL DEFAULT '1',
  `is_wildcard` int(11) NOT NULL DEFAULT '0',
  `source_md5` varchar(32) DEFAULT NULL,
  `source_url` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ezurlalias_desturl` (`destination_url`(200)),
  KEY `ezurlalias_forward_to_id` (`forward_to_id`),
  KEY `ezurlalias_imp_wcard_fwd` (`is_imported`,`is_wildcard`,`forward_to_id`),
  KEY `ezurlalias_source_md5` (`source_md5`),
  KEY `ezurlalias_source_url` (`source_url`(255)),
  KEY `ezurlalias_wcard_fwd` (`is_wildcard`,`forward_to_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias`
--

LOCK TABLES `ezurlalias` WRITE;
/*!40000 ALTER TABLE `ezurlalias` DISABLE KEYS */;
INSERT INTO `ezurlalias` VALUES ('content/view/full/2',0,12,1,1,0,'d41d8cd98f00b204e9800998ecf8427e',''),('content/view/full/5',0,13,1,1,0,'9bc65c2abec141778ffaa729489f3e87','users'),('content/view/full/12',0,15,1,1,0,'02d4e844e3a660857a3f81585995ffe1','users/guest_accounts'),('content/view/full/13',0,16,1,1,0,'1b1d79c16700fd6003ea7be233e754ba','users/administrator_users'),('content/view/full/14',0,17,1,1,0,'0bb9dd665c96bbc1cf36b79180786dea','users/editors'),('content/view/full/15',0,18,1,1,0,'f1305ac5f327a19b451d82719e0c3f5d','users/administrator_users/administrator_user'),('content/view/full/43',0,20,1,1,0,'62933a2951ef01f4eafd9bdf4d3cd2f0','media'),('content/view/full/44',0,21,1,1,0,'3ae1aac958e1c82013689d917d34967a','users/anonymous_users'),('content/view/full/45',0,22,1,1,0,'aad93975f09371695ba08292fd9698db','users/anonymous_users/anonymous_user'),('content/view/full/48',0,25,1,1,0,'a0f848942ce863cf53c0fa6cc684007d','setup'),('content/view/full/50',0,27,1,1,0,'c60212835de76414f9bfd21eecb8f221','foo_bar_folder/images/vbanner'),('content/view/full/51',0,28,1,1,0,'38985339d4a5aadfc41ab292b4527046','media/images'),('content/view/full/52',0,29,1,1,0,'ad5a8c6f6aac3b1b9df267fe22e7aef6','media/files'),('content/view/full/53',0,30,1,1,0,'562a0ac498571c6c3529173184a2657c','media/multimedia'),('content/view/full/54',0,31,1,1,0,'e501fe6c81ed14a5af2b322d248102d8','setup/common_ini_settings'),('content/view/full/56',0,32,1,1,0,'2dd3db5dc7122ea5f3ee539bb18fe97d','design/ez_publish'),('content/view/full/58',0,33,1,1,0,'31c13f47ad87dd7baa2d558a91e0fbb9','design');
/*!40000 ALTER TABLE `ezurlalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias_ml`
--

DROP TABLE IF EXISTS `ezurlalias_ml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias_ml` (
  `action` longtext NOT NULL,
  `action_type` varchar(32) NOT NULL DEFAULT '',
  `alias_redirects` int(11) NOT NULL DEFAULT '1',
  `id` int(11) NOT NULL DEFAULT '0',
  `is_alias` int(11) NOT NULL DEFAULT '0',
  `is_original` int(11) NOT NULL DEFAULT '0',
  `lang_mask` int(11) NOT NULL DEFAULT '0',
  `link` int(11) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  `text` longtext NOT NULL,
  `text_md5` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`parent`,`text_md5`),
  KEY `ezurlalias_ml_act_org` (`action`(32),`is_original`),
  KEY `ezurlalias_ml_actt_org_al` (`action_type`,`is_original`,`is_alias`),
  KEY `ezurlalias_ml_id` (`id`),
  KEY `ezurlalias_ml_par_act_id_lnk` (`action`(32),`id`,`link`,`parent`),
  KEY `ezurlalias_ml_par_lnk_txt` (`parent`,`text`(32),`link`),
  KEY `ezurlalias_ml_text` (`text`(32),`id`,`link`),
  KEY `ezurlalias_ml_text_lang` (`text`(32),`lang_mask`,`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml`
--

LOCK TABLES `ezurlalias_ml` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml` VALUES ('nop:','nop',1,14,0,0,1,14,0,'foo_bar_folder','0288b6883046492fa92e4a84eb67acc9'),('eznode:66','eznode',1,40,0,1,3,40,0,'Home','106a6c241b8797f52e1e77317b96a201'),('eznode:59','eznode',1,38,0,1,3,38,0,'eZ-Publish','10e4c3cb527fb9963258469986c16240'),('eznode:60','eznode',1,39,0,1,2,39,0,'footer','251d164643533a527361dbe1a7b9235d'),('eznode:58','eznode',1,25,0,1,3,25,0,'Design','31c13f47ad87dd7baa2d558a91e0fbb9'),('eznode:62','eznode',1,43,0,1,2,43,0,'About','46b3931b9959c927df4fc65fdee94b07'),('eznode:48','eznode',1,13,0,1,3,13,0,'Setup2','475e97c0146bfb1c490339546d9e72ee'),('nop:','nop',1,17,0,0,1,17,0,'media2','50e2736330de124f6edea9b008556fe6'),('eznode:43','eznode',1,9,0,1,3,9,0,'Media','62933a2951ef01f4eafd9bdf4d3cd2f0'),('nop:','nop',1,21,0,0,1,21,0,'setup3','732cefcf28bf4547540609fb1a786a30'),('nop:','nop',1,3,0,0,1,3,0,'users2','86425c35a33507d479f71ade53a669aa'),('eznode:5','eznode',1,2,0,1,3,2,0,'Users','9bc65c2abec141778ffaa729489f3e87'),('eznode:63','eznode',1,44,0,1,2,44,0,'Code','c13367945d5d4c91047b3b50234aa7ab'),('eznode:2','eznode',1,1,0,1,2,1,0,'','d41d8cd98f00b204e9800998ecf8427e'),('eznode:61','eznode',1,41,0,1,3,41,2,'Partners','7896f8fa69398c56d86a65357615c41f'),('eznode:14','eznode',1,6,0,1,3,6,2,'Editors','a147e136bfa717592f2bd70bd4b53b17'),('eznode:44','eznode',1,10,0,1,3,10,2,'Anonymous-Users','c2803c3fa1b0b5423237b4e018cae755'),('eznode:12','eznode',1,4,0,1,3,4,2,'Members','d2e3083420929d8bfae81f58fa4594cb'),('eznode:12','eznode',1,42,0,0,3,4,2,'Guest-accounts','e57843d836e3af8ab611fde9e2139b3a'),('eznode:13','eznode',1,5,0,1,3,5,2,'Administrator-users','f89fad7f8a3abc8c09e1deb46a420007'),('nop:','nop',1,11,0,0,1,11,3,'anonymous_users2','505e93077a6dde9034ad97a14ab022b1'),('eznode:12','eznode',1,26,0,0,0,4,3,'guest_accounts','70bb992820e73638731aa8de79b3329e'),('eznode:14','eznode',1,29,0,0,1,6,3,'editors','a147e136bfa717592f2bd70bd4b53b17'),('nop:','nop',1,7,0,0,1,7,3,'administrator_users2','a7da338c20bf65f9f789c87296379c2a'),('eznode:13','eznode',1,27,0,0,1,5,3,'administrator_users','aeb8609aa933b0899aa012c71139c58c'),('eznode:44','eznode',1,30,0,0,1,10,3,'anonymous_users','e9e5ad0c05ee1a43715572e5cc545926'),('eznode:15','eznode',1,8,0,1,3,8,5,'Administrator-User','5a9d7b0ec93173ef4fedee023209cb61'),('eznode:15','eznode',1,28,0,0,0,8,7,'administrator_user','a3cca2de936df1e2f805710399989971'),('eznode:53','eznode',1,20,0,1,3,20,9,'Multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c'),('eznode:52','eznode',1,19,0,1,3,19,9,'Files','45b963397aa40d4a0063e0d85e4fe7a1'),('eznode:51','eznode',1,18,0,1,3,18,9,'Images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:45','eznode',1,12,0,1,3,12,10,'Anonymous-User','ccb62ebca03a31272430bc414bd5cd5b'),('eznode:45','eznode',1,31,0,0,1,12,11,'anonymous_user','c593ec85293ecb0e02d50d4c5c6c20eb'),('eznode:54','eznode',1,22,0,1,2,22,13,'Common-INI-settings','4434993ac013ae4d54bb1f51034d6401'),('nop:','nop',1,15,0,0,1,15,14,'images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:50','eznode',1,16,0,1,2,16,15,'vbanner','c54e2d1b93642e280bdc5d99eab2827d'),('eznode:53','eznode',1,34,0,0,1,20,17,'multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c'),('eznode:52','eznode',1,33,0,0,1,19,17,'files','45b963397aa40d4a0063e0d85e4fe7a1'),('eznode:51','eznode',1,32,0,0,1,18,17,'images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:54','eznode',1,35,0,0,1,22,21,'common_ini_settings','e59d6834e86cee752ed841f9cd8d5baf'),('eznode:56','eznode',1,37,0,0,2,24,25,'eZ-publish','10e4c3cb527fb9963258469986c16240'),('eznode:56','eznode',1,24,0,1,2,24,25,'Plain-site','49a39d99a955d95aa5d636275656a07a'),('eznode:65','eznode',1,46,0,1,2,46,44,'Working-With-eZ-Publish-5-Symfony','4dffbd24422a05d320d881f07fef634f'),('eznode:64','eznode',1,45,0,1,2,45,44,'Working-with-eZ-Publish-5-Introduction','86c71582f9a8b0b73a28b8561e1bedf2');
/*!40000 ALTER TABLE `ezurlalias_ml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias_ml_incr`
--

DROP TABLE IF EXISTS `ezurlalias_ml_incr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias_ml_incr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml_incr`
--

LOCK TABLES `ezurlalias_ml_incr` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml_incr` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml_incr` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46);
/*!40000 ALTER TABLE `ezurlalias_ml_incr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlwildcard`
--

DROP TABLE IF EXISTS `ezurlwildcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlwildcard` (
  `destination_url` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_url` longtext NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlwildcard`
--

LOCK TABLES `ezurlwildcard` WRITE;
/*!40000 ALTER TABLE `ezurlwildcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezurlwildcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser`
--

DROP TABLE IF EXISTS `ezuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(150) NOT NULL DEFAULT '',
  `login` varchar(150) NOT NULL DEFAULT '',
  `password_hash` varchar(50) DEFAULT NULL,
  `password_hash_type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`contentobject_id`),
  KEY `ezuser_login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser`
--

LOCK TABLES `ezuser` WRITE;
/*!40000 ALTER TABLE `ezuser` DISABLE KEYS */;
INSERT INTO `ezuser` VALUES (10,'nospam@ez.no','anonymous','4e6f6184135228ccd45f8233d72a0363',2),(14,'tutorial@example.com','admin','9f6b07f7c08e29a24bbb35a6120fac53',2);
/*!40000 ALTER TABLE `ezuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_accountkey`
--

DROP TABLE IF EXISTS `ezuser_accountkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_accountkey` (
  `hash_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hash_key` (`hash_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_accountkey`
--

LOCK TABLES `ezuser_accountkey` WRITE;
/*!40000 ALTER TABLE `ezuser_accountkey` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_accountkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_discountrule`
--

DROP TABLE IF EXISTS `ezuser_discountrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_discountrule` (
  `contentobject_id` int(11) DEFAULT NULL,
  `discountrule_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_discountrule`
--

LOCK TABLES `ezuser_discountrule` WRITE;
/*!40000 ALTER TABLE `ezuser_discountrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_discountrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_role`
--

DROP TABLE IF EXISTS `ezuser_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_role` (
  `contentobject_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limit_identifier` varchar(255) DEFAULT '',
  `limit_value` varchar(255) DEFAULT '',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezuser_role_contentobject_id` (`contentobject_id`),
  KEY `ezuser_role_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_role`
--

LOCK TABLES `ezuser_role` WRITE;
/*!40000 ALTER TABLE `ezuser_role` DISABLE KEYS */;
INSERT INTO `ezuser_role` VALUES (12,25,'','',2),(11,28,'','',1),(42,31,'','',1),(13,32,'Subtree','/1/2/',3),(13,33,'Subtree','/1/43/',3),(11,34,'','',5),(59,35,'','',4),(59,36,'','',5),(59,37,'','',1),(13,38,'','',5);
/*!40000 ALTER TABLE `ezuser_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_setting`
--

DROP TABLE IF EXISTS `ezuser_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_setting` (
  `is_enabled` int(11) NOT NULL DEFAULT '0',
  `max_login` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_setting`
--

LOCK TABLES `ezuser_setting` WRITE;
/*!40000 ALTER TABLE `ezuser_setting` DISABLE KEYS */;
INSERT INTO `ezuser_setting` VALUES (1,1000,10),(1,10,14);
/*!40000 ALTER TABLE `ezuser_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuservisit`
--

DROP TABLE IF EXISTS `ezuservisit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuservisit` (
  `current_visit_timestamp` int(11) NOT NULL DEFAULT '0',
  `failed_login_attempts` int(11) NOT NULL DEFAULT '0',
  `last_visit_timestamp` int(11) NOT NULL DEFAULT '0',
  `login_count` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `ezuservisit_co_visit_count` (`current_visit_timestamp`,`login_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuservisit`
--

LOCK TABLES `ezuservisit` WRITE;
/*!40000 ALTER TABLE `ezuservisit` DISABLE KEYS */;
INSERT INTO `ezuservisit` VALUES (1361656692,0,1361649621,3,14);
/*!40000 ALTER TABLE `ezuservisit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvatrule`
--

DROP TABLE IF EXISTS `ezvatrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvatrule` (
  `country_code` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vat_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvatrule`
--

LOCK TABLES `ezvatrule` WRITE;
/*!40000 ALTER TABLE `ezvatrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvatrule_product_category`
--

DROP TABLE IF EXISTS `ezvatrule_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvatrule_product_category` (
  `product_category_id` int(11) NOT NULL DEFAULT '0',
  `vatrule_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vatrule_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvatrule_product_category`
--

LOCK TABLES `ezvatrule_product_category` WRITE;
/*!40000 ALTER TABLE `ezvatrule_product_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvattype`
--

DROP TABLE IF EXISTS `ezvattype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvattype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `percentage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvattype`
--

LOCK TABLES `ezvattype` WRITE;
/*!40000 ALTER TABLE `ezvattype` DISABLE KEYS */;
INSERT INTO `ezvattype` VALUES (1,'Std',0);
/*!40000 ALTER TABLE `ezvattype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezview_counter`
--

DROP TABLE IF EXISTS `ezview_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezview_counter` (
  `count` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezview_counter`
--

LOCK TABLES `ezview_counter` WRITE;
/*!40000 ALTER TABLE `ezview_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezview_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezwaituntildatevalue`
--

DROP TABLE IF EXISTS `ezwaituntildatevalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezwaituntildatevalue` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_event_id` int(11) NOT NULL DEFAULT '0',
  `workflow_event_version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`workflow_event_id`,`workflow_event_version`),
  KEY `ezwaituntildateevalue_wf_ev_id_wf_ver` (`workflow_event_id`,`workflow_event_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezwaituntildatevalue`
--

LOCK TABLES `ezwaituntildatevalue` WRITE;
/*!40000 ALTER TABLE `ezwaituntildatevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwaituntildatevalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezwishlist`
--

DROP TABLE IF EXISTS `ezwishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezwishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezwishlist`
--

LOCK TABLES `ezwishlist` WRITE;
/*!40000 ALTER TABLE `ezwishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow`
--

DROP TABLE IF EXISTS `ezworkflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_enabled` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_type_string` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow`
--

LOCK TABLES `ezworkflow` WRITE;
/*!40000 ALTER TABLE `ezworkflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_assign`
--

DROP TABLE IF EXISTS `ezworkflow_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_assign` (
  `access_type` int(11) NOT NULL DEFAULT '0',
  `as_tree` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_assign`
--

LOCK TABLES `ezworkflow_assign` WRITE;
/*!40000 ALTER TABLE `ezworkflow_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_event`
--

DROP TABLE IF EXISTS `ezworkflow_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_event` (
  `data_int1` int(11) DEFAULT NULL,
  `data_int2` int(11) DEFAULT NULL,
  `data_int3` int(11) DEFAULT NULL,
  `data_int4` int(11) DEFAULT NULL,
  `data_text1` varchar(255) DEFAULT NULL,
  `data_text2` varchar(255) DEFAULT NULL,
  `data_text3` varchar(255) DEFAULT NULL,
  `data_text4` varchar(255) DEFAULT NULL,
  `data_text5` longtext,
  `description` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placement` int(11) NOT NULL DEFAULT '0',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  `workflow_type_string` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`version`),
  KEY `wid_version_placement` (`workflow_id`,`version`,`placement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_event`
--

LOCK TABLES `ezworkflow_event` WRITE;
/*!40000 ALTER TABLE `ezworkflow_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_group`
--

DROP TABLE IF EXISTS `ezworkflow_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_group` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_group`
--

LOCK TABLES `ezworkflow_group` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group` DISABLE KEYS */;
INSERT INTO `ezworkflow_group` VALUES (1024392098,14,1,1024392098,14,'Standard');
/*!40000 ALTER TABLE `ezworkflow_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_group_link`
--

DROP TABLE IF EXISTS `ezworkflow_group_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_group_link` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(255) DEFAULT NULL,
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  `workflow_version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`workflow_id`,`group_id`,`workflow_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_group_link`
--

LOCK TABLES `ezworkflow_group_link` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_group_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_process`
--

DROP TABLE IF EXISTS `ezworkflow_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_process` (
  `activation_date` int(11) DEFAULT NULL,
  `content_id` int(11) NOT NULL DEFAULT '0',
  `content_version` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `event_position` int(11) NOT NULL DEFAULT '0',
  `event_state` int(11) DEFAULT NULL,
  `event_status` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_event_id` int(11) NOT NULL DEFAULT '0',
  `last_event_position` int(11) NOT NULL DEFAULT '0',
  `last_event_status` int(11) NOT NULL DEFAULT '0',
  `memento_key` varchar(32) DEFAULT NULL,
  `modified` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `parameters` longtext,
  `process_key` varchar(32) NOT NULL DEFAULT '',
  `session_key` varchar(32) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezworkflow_process_process_key` (`process_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_process`
--

LOCK TABLES `ezworkflow_process` WRITE;
/*!40000 ALTER TABLE `ezworkflow_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_process` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-01  6:48:47
