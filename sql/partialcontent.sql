-- MySQL dump 10.13  Distrib 5.1.44, for apple-darwin8.11.1 (i386)
--
-- Host: localhost    Database: partialcontent
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
INSERT INTO `ezcobj_state_link` VALUES (4,1),(10,1),(11,1),(12,1),(13,1),(14,1),(41,1),(42,1),(45,1),(49,1),(50,1),(51,1),(52,1),(54,1),(56,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1),(113,1),(114,1),(115,1),(116,1),(117,1),(118,1),(119,1),(120,1),(121,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentbrowserecent`
--

LOCK TABLES `ezcontentbrowserecent` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowserecent` DISABLE KEYS */;
INSERT INTO `ezcontentbrowserecent` VALUES (1360948164,1,'eZ Publish',2,14),(1360944319,13,'Users',5,14),(1361228164,14,'Code',103,14),(1360955829,15,'Series',104,14),(1361217323,16,'Working with eZ Publish 5 - Setup',111,14),(1361206584,17,'Images',51,14),(1361225685,18,'Working with eZ Publish 5 - Templates',114,14),(1361229600,19,'Working With eZ Publish 5 - Content Templates',122,14);
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
  KEY `ezcontentclass_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass`
--

LOCK TABLES `ezcontentclass` WRITE;
/*!40000 ALTER TABLE `ezcontentclass` DISABLE KEYS */;
INSERT INTO `ezcontentclass` VALUES (1,'<short_name|name>',1024392098,14,1,'folder',2,1,3,1082454875,14,'a3d405b81be900468eb153d774f4f0d2','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:6:\"Folder\";}',1,1,'',0),(1,'<name>',1024392098,14,3,'user_group',2,1,3,1048494743,14,'25b4268cdcd01921b808a0d854b877ef','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:10:\"User group\";}',1,1,'',0),(1,'<first_name> <last_name>',1024392098,14,4,'user',2,0,3,1082018364,14,'40faa822edc579b02c25f6bb7beec3ad','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"User\";}',1,1,'',0),(0,'<subject>',1052385685,14,13,'comment',2,0,3,1082455144,14,'000c14f4f475e9f2955dedab72799941','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:7:\"Comment\";}',1,1,'',0),(1,'<name>',1081858024,14,14,'common_ini_settings',2,0,3,1081858024,14,'ffedf2e73b1ea0c3e630e42e2db9c900','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:19:\"Common ini settings\";}',1,1,'',0),(1,'<title>',1081858045,14,15,'template_look',2,0,3,1360948962,14,'59b43cd9feaaf0e45ac974fb4bbd3f92','a:3:{i:0;s:0:\"\";s:16:\"always-available\";b:0;s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:13:\"Site Surround\";}',1,1,'',0),(0,'<name>',1360944309,14,17,'blog',2,1,3,1360945234,14,'3a6f9c1f075b3bf49d7345576b196fe8','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Blog\";}',2,0,'<url_slug|name>',0),(0,'<title>',1360944309,14,18,'blog_post',2,1,3,1360946113,14,'7ecb961056b7cbb30f22a91357e0a007','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:9:\"Blog post\";}',1,1,'',0),(0,'<name>',1360944310,14,26,'file',2,0,3,1360947312,14,'637d58bfddf164627bdfd265733280a0','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"File\";}',1,1,'',0),(0,'<name>',1360944310,14,27,'image',2,0,3,1360947137,14,'f6df12aa74e36230eb675f364fccd25a','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:5:\"Image\";}',1,1,'',0),(0,'<name>',1360944310,14,28,'link',2,0,3,1360946422,14,'74ec6507063150bc813549b22534ad48','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Link\";}',1,1,'',0),(0,'<title>',1360946154,14,38,'series',2,0,3,1360946364,14,'9a314db229db539a1d789d29714d989f','a:2:{s:6:\"eng-US\";s:51:\"Combines Blog Posts together in to a special series\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:6:\"Series\";s:16:\"always-available\";s:6:\"eng-US\";}',1,1,'<url_slug|title>',0),(0,'<title>',1360949566,14,39,'article',2,0,3,1360949616,14,'8f0c61164cdc6c20c690e7733c1543ba','a:2:{s:6:\"eng-US\";s:51:\"Stub article class just to keep ezdemo bundle happy\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:7:\"Article\";s:16:\"always-available\";s:6:\"eng-US\";}',1,1,'',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_attribute`
--

LOCK TABLES `ezcontentclass_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',1,0,0,0,0,255,0,0,0,'Folder','','','','','ezstring',4,'name',0,1,1,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(1,'',3,0,0,0,0,255,0,0,0,'','','','','','ezstring',6,'name',0,1,1,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(1,'',3,0,0,0,0,255,0,0,0,'','','','','','ezstring',7,'description',0,0,1,2,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Description\";}',0),(1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring',8,'first_name',0,1,1,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:10:\"First name\";}',0),(1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring',9,'last_name',0,1,1,2,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:9:\"Last name\";}',0),(0,'',4,0,0,0,0,0,0,0,0,'','','','','','ezuser',12,'user_account',0,1,1,3,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:12:\"User account\";}',0),(1,'',1,0,0,0,0,5,0,0,0,'','','','','','ezxmltext',119,'short_description',0,0,1,3,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:7:\"Summary\";}',0),(1,'',13,0,0,0,0,100,0,0,0,'','','','','','ezstring',149,'subject',0,1,1,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:7:\"Subject\";}',0),(1,'',13,0,0,0,0,0,0,0,0,'','','','','','ezstring',150,'author',0,1,1,2,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:6:\"Author\";}',0),(1,'',13,0,0,0,0,20,0,0,0,'','','','','','eztext',151,'message',0,1,1,3,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:7:\"Message\";}',0),(1,'',1,0,0,0,0,100,0,0,0,'','','','','','ezstring',155,'short_name',0,0,1,2,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:10:\"Short name\";}',0),(1,'',1,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',156,'description',0,0,1,4,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Description\";}',0),(0,'',1,0,0,0,0,0,0,1,0,'','','','','','ezboolean',158,'show_children',0,0,0,5,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:17:\"Display sub items\";}',0),(1,'',14,0,0,0,0,0,0,0,0,'','','','','','ezstring',159,'name',0,0,1,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(0,'',14,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','IndexPage','','override;user;admin;demo','ezinisetting',160,'indexpage',0,0,0,2,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:10:\"Index Page\";}',0),(0,'',14,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','DefaultPage','','override;user;admin;demo','ezinisetting',161,'defaultpage',0,0,0,3,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:12:\"Default Page\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugOutput','','override;user;admin;demo','ezinisetting',162,'debugoutput',0,0,0,4,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:12:\"Debug Output\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugByIP','','override;user;admin;demo','ezinisetting',163,'debugbyip',0,0,0,5,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Debug By IP\";}',0),(0,'',14,0,0,0,0,6,0,0,0,'site.ini','DebugSettings','DebugIPList','','override;user;admin;demo','ezinisetting',164,'debugiplist',0,0,0,6,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:13:\"Debug IP List\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugRedirection','','override;user;admin;demo','ezinisetting',165,'debugredirection',0,0,0,7,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:17:\"Debug Redirection\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','ContentSettings','ViewCaching','','override;user;admin;demo','ezinisetting',166,'viewcaching',0,0,0,8,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:12:\"View Caching\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','TemplateSettings','TemplateCache','','override;user;admin;demo','ezinisetting',167,'templatecache',0,0,0,9,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:14:\"Template Cache\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','TemplateSettings','TemplateCompile','','override;user;admin;demo','ezinisetting',168,'templatecompile',0,0,0,10,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:16:\"Template Compile\";}',0),(0,'',14,0,0,0,0,6,0,0,0,'image.ini','small','Filters','','override;user;admin;demo','ezinisetting',169,'imagesmall',0,0,0,11,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:16:\"Image Small Size\";}',0),(0,'',14,0,0,0,0,6,0,0,0,'image.ini','medium','Filters','','override;user;admin;demo','ezinisetting',170,'imagemedium',0,0,0,12,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:17:\"Image Medium Size\";}',0),(0,'',14,0,0,0,0,6,0,0,0,'image.ini','large','Filters','','override;user;admin;demo','ezinisetting',171,'imagelarge',0,0,0,13,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:16:\"Image Large Size\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezimage',174,'header_image',0,0,0,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:3:{i:0;s:0:\"\";s:16:\"always-available\";b:0;s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:12:\"Header Image\";}',0),(1,'',4,0,0,0,0,10,0,0,0,'','','','','','eztext',179,'signature',0,0,1,4,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:9:\"Signature\";}',0),(1,'',4,0,0,0,0,1,0,0,0,'','','','','','ezimage',180,'image',0,0,0,5,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:5:\"Image\";}',0),(1,'',17,0,0,0,0,0,0,0,0,'','','','','','ezstring',193,'name',0,0,1,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(1,'',17,0,0,0,0,5,0,0,0,'','','','','','ezxmltext',194,'description',0,0,1,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Description\";}',0),(1,'',18,0,0,0,0,0,0,0,0,'','','','','','ezstring',196,'title',0,0,1,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:5:\"Title\";}',0),(1,'',18,0,0,0,0,25,0,0,0,'','','','','','ezxmltext',197,'body',0,0,1,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Body\";}',0),(1,'',18,0,0,0,0,1,0,0,0,'','','','','','ezdatetime',198,'publication_date',0,0,1,4,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:16:\"Publication date\";}',0),(1,'',18,0,0,0,0,0,0,0,0,'','','','','','ezcomcomments',200,'comments',0,0,1,5,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:8:\"Comments\";}',0),(1,'',26,0,0,0,0,0,0,0,0,'New file','','','','','ezstring',238,'name',0,1,1,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(1,'',26,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',239,'description',0,0,1,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Description\";}',0),(1,'',26,0,0,0,0,0,0,0,0,'','','','','','ezbinaryfile',240,'file',0,1,0,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"File\";}',0),(1,'',26,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',241,'star_rating',0,0,1,4,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Star Rating\";}',0),(1,'',26,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',242,'tags',0,0,1,5,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Tags\";}',0),(1,'',26,0,0,0,0,0,0,0,0,'','','','','','ezcomcomments',243,'comments',0,0,1,6,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:8:\"Comments\";}',0),(1,'',27,0,0,0,0,150,0,0,0,'','','','','','ezstring',244,'name',0,1,1,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(1,'',27,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',245,'caption',0,0,1,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:7:\"Caption\";}',0),(1,'',27,0,0,0,0,2,0,0,0,'','','','','','ezimage',246,'image',0,0,0,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:5:\"Image\";}',0),(1,'',27,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',247,'star_rating',0,0,1,4,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Star Rating\";}',0),(1,'',27,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',248,'tags',0,0,1,5,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Tags\";}',0),(1,'',28,0,0,0,0,255,0,0,0,'','','','','','ezstring',249,'name',0,1,1,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:4:\"Name\";}',0),(1,'',28,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',250,'description',0,0,1,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:11:\"Description\";}',0),(1,'',28,0,0,0,0,0,0,0,0,'','','','','','ezurl',251,'location',0,0,0,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:8:\"Location\";}',0),(1,'',28,0,0,0,0,0,0,1,0,'','','','','','ezboolean',252,'open_in_new_window',0,0,1,4,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:18:\"Open in new window\";}',0),(1,'',1,0,0,0,0,0,0,0,0,'','','','','','ezpage',299,'call_for_action',0,0,0,6,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:15:\"Call For Action\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',1,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',300,'tags',0,0,0,7,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'meta',17,0,0,0,0,0,0,0,0,'','','','','','ezstring',301,'url_slug',0,0,0,4,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:49:\"Place a value here to represent this blog in URLs\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:8:\"URL Slug\";}',0),(1,'',17,0,0,0,0,0,0,0,0,'','','','','','ezstring',302,'tagline',0,0,1,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:7:\"Tagline\";}',0),(1,'',18,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',303,'summary',0,0,1,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:0:\"\";}','a:2:{s:16:\"always-available\";s:6:\"eng-US\";s:6:\"eng-US\";s:7:\"Summary\";}',0),(1,'',38,0,0,0,0,0,0,0,0,'','','','','','ezstring',304,'title',0,0,1,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:12:\"Series title\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',38,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',305,'description',0,0,1,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',38,0,0,0,0,0,0,0,0,'','','','','<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints><allowed-class contentclass-identifier=\"blog_post\"/></constraints><type value=\"2\"/><selection_type value=\"0\"/><object_class value=\"\"/><contentobject-placement/></related-objects>\n','ezobjectrelationlist',306,'posts',0,0,1,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:45:\"Select the posts that are part of this series\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:5:\"Posts\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'meta',38,0,0,0,0,0,0,0,0,'','','','','','ezstring',307,'url_slug',0,0,0,4,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:48:\"Portion of the URL to represent this series page\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:8:\"URL Slug\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',308,'title',0,0,0,2,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:22:\"Title/name of the site\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',15,0,0,0,0,10,0,0,0,'','','','','','eztext',309,'meta_description',0,0,0,3,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:16:\"Meta Description\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',15,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',311,'sidebar',0,0,0,4,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:65:\"Sidebar items entered here will appear on every page of the site.\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:14:\"Global Sidebar\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',15,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',312,'footer',0,0,0,5,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:6:\"Footer\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',313,'ga_code',0,0,0,6,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:24:\"Google Analytics UA code\";s:16:\"always-available\";s:6:\"eng-US\";}',0),(1,'',39,0,0,0,0,0,0,0,0,'','','','','','ezstring',314,'title',0,1,0,1,'a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-US\";}','a:2:{s:6:\"eng-US\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-US\";}',0);
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
INSERT INTO `ezcontentclass_classgroup` VALUES (1,0,1,'Content'),(3,0,2,'Users'),(4,0,2,'Users'),(13,0,1,'Content'),(14,0,4,'Setup'),(15,0,4,'Setup'),(17,0,1,'Content'),(18,0,1,'Content'),(26,0,3,'Media'),(27,0,3,'Media'),(28,0,1,'Content'),(38,0,1,'Content'),(39,0,1,'Content');
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
INSERT INTO `ezcontentclass_name` VALUES (1,0,3,'eng-US','Folder'),(3,0,3,'eng-US','User group'),(4,0,3,'eng-US','User'),(13,0,3,'eng-US','Comment'),(14,0,3,'eng-US','Common ini settings'),(15,0,3,'eng-US','Site Surround'),(17,0,3,'eng-US','Blog'),(18,0,3,'eng-US','Blog post'),(26,0,3,'eng-US','File'),(27,0,3,'eng-US','Image'),(28,0,3,'eng-US','Link'),(38,0,3,'eng-US','Series'),(39,0,3,'eng-US','Article');
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject`
--

LOCK TABLES `ezcontentobject` WRITE;
/*!40000 ALTER TABLE `ezcontentobject` DISABLE KEYS */;
INSERT INTO `ezcontentobject` VALUES (3,1,4,2,3,1033917596,'Users',14,1033917596,'f5c88a2209584891056f987fd965b0ba',2,1),(4,2,10,2,3,1072180405,'Anonymous User',14,1033920665,'faaeb9be3bd98ed09f606fc16d144eca',2,1),(3,2,11,2,3,1360944319,'Members',14,1033920746,'5f7f0bdb3381d6a461d8c29ff53d908f',2,1),(3,1,12,2,3,1033920775,'Administrator users',14,1033920775,'9b47a45624b023b1a76c73b74d704acf',2,1),(3,1,13,2,3,1033920794,'Editors',14,1033920794,'3c160cca19fb135f83bd02d911f04db2',2,1),(4,4,14,2,3,1360944318,'Administrator User',14,1033920830,'1bb4fe25487f05527efa8bfd394cecc7',2,1),(1,1,41,2,3,1060695457,'Media',14,1060695457,'a6e35cbcb7cd6ae4b691f3eee30cd262',3,1),(3,1,42,2,3,1072180330,'Anonymous Users',14,1072180330,'15b256dbea2ae72418ff5facc999e8f9',2,1),(1,1,45,2,3,1079684190,'Setup',14,1079684190,'241d538ce310074e602f29f49e44e938',4,1),(1,1,49,2,3,1080220197,'Images',14,1080220197,'e7ff633c6b8e0fd3531e74c6e712bead',3,1),(1,1,50,2,3,1080220220,'Files',14,1080220220,'732a5acd01b51a6fe6eab448ad4138a9',3,1),(1,1,51,2,3,1080220233,'Multimedia',14,1080220233,'09082deb98662a104f325aaa8c4933d3',3,1),(14,1,52,2,2,1082016591,'Common INI settings',14,1082016591,'27437f3547db19cf81a33c92578b2c89',4,1),(15,6,54,2,2,1361375269,'Partial Content',14,1082016652,'8b8b22fe3c6061ed500fbd2b377b885f',5,1),(1,1,56,2,3,1103023132,'Design',14,1103023132,'08799e609893f7aba22f10cb466d9cc8',5,1),(3,1,99,2,3,1360944319,'Partners',14,1360944319,'97ce7f8d4a2eecfff09544872f195a62',2,1),(17,2,100,2,2,1360962515,'Home',14,1360946849,'2253bf0cb3db7235975f988fff5d7836',1,1),(17,1,101,2,2,1360946942,'Code',14,1360946942,'f8e4908901776f8eb36e9c7a7e9f0c05',1,1),(17,1,102,2,2,1360946971,'Series',14,1360946971,'c8945c20ee6635de9eb5c5a9bb80f971',1,1),(18,2,103,2,2,1360965640,'Working with eZ Publish 5 - Introduction',14,1360947072,'6272723ff5e63f5bc28226ac99d66d3b',1,2),(17,1,104,2,2,1360948164,'About',14,1360948164,'88077edd7594031628d4fcb4e3b17bb8',1,1),(18,1,105,2,2,1360955738,'Working With eZ Publish 5 - Symfony',14,1360955738,'ea0d067b07a18755b8a05bae6190e162',1,2),(38,2,106,2,2,1361204343,'Working With eZ Publish 5',14,1360955829,'a1198672bfa240366eaaded4a7571ba7',1,1),(18,6,107,2,2,1361226643,'Working with eZ Publish 5 - Introduction',14,1361204166,'f1dd8c46494ebd2efa564e1a8e3c99d6',1,1),(18,3,108,2,2,1361226267,'Working with eZ Publish 5 - Symfony',14,1361204166,'262a64f892474863b07bd6bf808ef580',1,1),(18,3,109,2,2,1361221530,'Working with eZ Publish 5 - Setup',14,1361204167,'7d15f3bc0bd97305a9cecdd6ad02d9be',1,1),(27,1,110,2,2,1361204167,'Default eZ 5 File Structure',14,1361204167,'965b87a507eacf53856bb1fd8296f342',1,1),(27,1,111,2,2,1361204167,'Setup Wizard Screenshot',14,1361204167,'0c32b8c32ddce0019797249b2651d8b9',1,1),(18,6,112,2,2,1361295713,'Working with eZ Publish 5 - Templates',14,1361206344,'8067fd0968c7fb4135343aa2c7022ecb',1,1),(27,1,113,2,2,1361206584,'Demo Site Content Screenshot',14,1361206584,'dcfaa4eda1a485cd1622409e1710e5d9',3,1),(27,1,114,2,2,1361209032,'Bundle Generation Screenshot',14,1361209032,'f82141c0e220a527bbe3bce78cfe53cf',1,1),(18,2,115,2,2,1361215128,'Working with eZ Publish 5 - Installation',14,1361215102,'b2fce71bfb1c67452b2e74a1c40841d3',1,1),(27,1,116,2,2,1361217323,'Demo Site Content Screenshot',14,1361217323,'ea268ad4df9d065b67199941e99bd10e',1,1),(27,1,117,2,2,1361221935,'Bundle Contents',14,1361221935,'2815b9259eefefe03fffba61d732c32f',1,1),(27,1,118,2,2,1361223595,'Pagelayout in place',14,1361223595,'66dc9125f42a6338c9de83e2b8c9173c',1,1),(27,1,119,2,2,1361225685,'Style Basic Page',14,1361225685,'33f92174417591879c24412b02f004da',1,1),(18,5,120,2,2,1361287556,'Working With eZ Publish 5 - Content Templates',14,1361228164,'eb1edacb1509ff5d3878c560e68b34fa',1,1),(27,1,121,2,2,1361229600,'Fullview templates',14,1361229600,'1ffd949de9daf2fa3ee6d76571478f5c',1,1);
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
  KEY `ezcontentobject_attr_id` (`id`),
  KEY `ezcontentobject_attribute_co_id_ver_lang_code` (`contentobject_id`,`version`,`language_code`),
  KEY `ezcontentobject_attribute_contentobject_id` (`contentobject_id`),
  KEY `ezcontentobject_attribute_language_code` (`language_code`),
  KEY `sort_key_int` (`sort_key_int`),
  KEY `sort_key_string` (`sort_key_string`)
) ENGINE=InnoDB AUTO_INCREMENT=644 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_attribute`
--

LOCK TABLES `ezcontentobject_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentobject_attribute` VALUES (0,7,4,NULL,NULL,'Main group','ezstring',7,'eng-US',3,0,'',1),(0,6,4,NULL,NULL,'Users','ezstring',8,'eng-US',3,0,'',1),(0,8,10,0,0,'Anonymous','ezstring',19,'eng-US',3,0,'anonymous',2),(0,9,10,0,0,'User','ezstring',20,'eng-US',3,0,'user',2),(0,12,10,0,0,'','ezuser',21,'eng-US',3,0,'',2),(0,6,11,0,0,'Guest accounts','ezstring',22,'eng-US',3,0,'',1),(0,6,11,0,0,'Members','ezstring',22,'eng-US',3,0,'members',2),(0,7,11,0,0,'','ezstring',23,'eng-US',3,0,'',1),(0,7,11,0,0,'','ezstring',23,'eng-US',3,0,'',2),(0,6,12,0,0,'Administrator users','ezstring',24,'eng-US',3,0,'',1),(0,7,12,0,0,'','ezstring',25,'eng-US',3,0,'',1),(0,6,13,0,0,'Editors','ezstring',26,'eng-US',3,0,'',1),(0,7,13,0,0,'','ezstring',27,'eng-US',3,0,'',1),(0,8,14,0,0,'Administrator','ezstring',28,'eng-US',3,0,'administrator',3),(0,8,14,0,0,'Administrator','ezstring',28,'eng-US',3,0,'administrator',4),(0,9,14,0,0,'User','ezstring',29,'eng-US',3,0,'user',3),(0,9,14,0,0,'User','ezstring',29,'eng-US',3,0,'user',4),(30,12,14,0,0,'','ezuser',30,'eng-US',3,0,'',3),(30,12,14,0,0,'','ezuser',30,'eng-US',3,0,'',4),(0,4,41,0,0,'Media','ezstring',98,'eng-US',3,0,'',1),(0,119,41,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',99,'eng-US',3,0,'',1),(0,6,42,0,0,'Anonymous Users','ezstring',100,'eng-US',3,0,'anonymous users',1),(0,7,42,0,0,'User group for the anonymous user','ezstring',101,'eng-US',3,0,'user group for the anonymous user',1),(0,155,41,0,0,'','ezstring',103,'eng-US',3,0,'',1),(0,156,41,0,1045487555,'','ezxmltext',105,'eng-US',3,0,'',1),(0,158,41,0,0,'','ezboolean',109,'eng-US',3,0,'',1),(0,4,45,0,0,'Setup','ezstring',123,'eng-US',3,0,'setup',1),(0,155,45,0,0,'','ezstring',124,'eng-US',3,0,'',1),(0,119,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',125,'eng-US',3,0,'',1),(0,156,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',126,'eng-US',3,0,'',1),(0,158,45,0,0,'','ezboolean',128,'eng-US',3,0,'',1),(0,4,49,0,0,'Images','ezstring',142,'eng-US',3,0,'images',1),(0,155,49,0,0,'','ezstring',143,'eng-US',3,0,'',1),(0,119,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',144,'eng-US',3,0,'',1),(0,156,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',145,'eng-US',3,0,'',1),(0,158,49,0,1,'','ezboolean',146,'eng-US',3,1,'',1),(0,4,50,0,0,'Files','ezstring',147,'eng-US',3,0,'files',1),(0,155,50,0,0,'','ezstring',148,'eng-US',3,0,'',1),(0,119,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',149,'eng-US',3,0,'',1),(0,156,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',150,'eng-US',3,0,'',1),(0,158,50,0,1,'','ezboolean',151,'eng-US',3,1,'',1),(0,4,51,0,0,'Multimedia','ezstring',152,'eng-US',3,0,'multimedia',1),(0,155,51,0,0,'','ezstring',153,'eng-US',3,0,'',1),(0,119,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',154,'eng-US',3,0,'',1),(0,156,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',155,'eng-US',3,0,'',1),(0,158,51,0,1,'','ezboolean',156,'eng-US',3,1,'',1),(0,159,52,0,0,'Common INI settings','ezstring',157,'eng-US',2,0,'common ini settings',1),(0,160,52,0,0,'/content/view/full/2/','ezinisetting',158,'eng-US',2,0,'',1),(0,161,52,0,0,'/content/view/full/2','ezinisetting',159,'eng-US',2,0,'',1),(0,162,52,0,0,'disabled','ezinisetting',160,'eng-US',2,0,'',1),(0,163,52,0,0,'disabled','ezinisetting',161,'eng-US',2,0,'',1),(0,164,52,0,0,'','ezinisetting',162,'eng-US',2,0,'',1),(0,165,52,0,0,'enabled','ezinisetting',163,'eng-US',2,0,'',1),(0,166,52,0,0,'disabled','ezinisetting',164,'eng-US',2,0,'',1),(0,167,52,0,0,'enabled','ezinisetting',165,'eng-US',2,0,'',1),(0,168,52,0,0,'enabled','ezinisetting',166,'eng-US',2,0,'',1),(0,169,52,0,0,'=geometry/scale=100;100','ezinisetting',167,'eng-US',2,0,'',1),(0,170,52,0,0,'=geometry/scale=200;200','ezinisetting',168,'eng-US',2,0,'',1),(0,171,52,0,0,'=geometry/scale=300;300','ezinisetting',169,'eng-US',2,0,'',1),(0,174,54,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Partial-Content1.png\" suffix=\"png\" basename=\"Partial-Content1\" dirpath=\"var/storage/images/design/plain-site/172-2-eng-US\" url=\"var/storage/images/design/plain-site/172-2-eng-US/Partial-Content1.png\" original_filename=\"logo.png\" mime_type=\"image/png\" width=\"138\" height=\"46\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1360944319\"><original attribute_id=\"172\" attribute_version=\"2\" attribute_language=\"eng-US\"/><alias name=\"reference\" filename=\"Partial-Content1_reference.png\" suffix=\"png\" dirpath=\"var/storage/images/design/plain-site/172-2-eng-US\" url=\"var/storage/images/design/plain-site/172-2-eng-US/Partial-Content1_reference.png\" mime_type=\"image/png\" width=\"138\" height=\"46\" alias_key=\"2605465115\" timestamp=\"1360948970\" is_valid=\"1\"/><alias name=\"small\" filename=\"Partial-Content1_small.png\" suffix=\"png\" dirpath=\"var/storage/images/design/plain-site/172-2-eng-US\" url=\"var/storage/images/design/plain-site/172-2-eng-US/Partial-Content1_small.png\" mime_type=\"image/png\" width=\"100\" height=\"33\" alias_key=\"2343348577\" timestamp=\"1360948970\" is_valid=\"1\"/></ezimage>\n','ezimage',172,'eng-US',2,0,'',2),(0,174,54,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Partial-Content.png\" suffix=\"png\" basename=\"Partial-Content\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US/Partial-Content.png\" original_filename=\"logo.png\" mime_type=\"image/png\" width=\"138\" height=\"46\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1360944319\"><original attribute_id=\"172\" attribute_version=\"2\" attribute_language=\"eng-US\"/><alias name=\"reference\" filename=\"Partial-Content_reference.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US/Partial-Content_reference.png\" mime_type=\"image/png\" width=\"138\" height=\"46\" alias_key=\"2605465115\" timestamp=\"1361309839\" is_valid=\"1\"/><alias name=\"small\" filename=\"Partial-Content_small.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US/Partial-Content_small.png\" mime_type=\"image/png\" width=\"100\" height=\"33\" alias_key=\"2343348577\" timestamp=\"1361309839\" is_valid=\"1\"/><alias name=\"medium\" filename=\"Partial-Content_medium.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US/Partial-Content_medium.png\" mime_type=\"image/png\" width=\"138\" height=\"46\" alias_key=\"405413724\" timestamp=\"1360948975\" is_valid=\"1\"/><alias name=\"large\" filename=\"Partial-Content_large.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US/Partial-Content_large.png\" mime_type=\"image/png\" width=\"138\" height=\"46\" alias_key=\"1592566908\" timestamp=\"1361311047\" is_valid=\"1\"/></ezimage>\n','ezimage',172,'eng-US',2,0,'',3),(0,174,54,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"partial-content.jpg\" suffix=\"jpg\" basename=\"partial-content\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-4-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-4-eng-US/partial-content.jpg\" original_filename=\"IMG_2010.jpg\" mime_type=\"image/jpeg\" width=\"3264\" height=\"2448\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1361315602\"><original attribute_id=\"172\" attribute_version=\"4\" attribute_language=\"eng-US\"/><information Height=\"2448\" Width=\"3264\" IsColor=\"1\" ByteOrderMotorola=\"1\" ApertureFNumber=\"f/2.4\"><array name=\"ifd0\"><item key=\"Make\" base64=\"1\">QXBwbGU=</item><item key=\"Model\" base64=\"1\">aVBob25lIDRT</item><item key=\"Orientation\" base64=\"1\">MQ==</item><item key=\"XResolution\" base64=\"1\">NzIvMQ==</item><item key=\"YResolution\" base64=\"1\">NzIvMQ==</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Software\" base64=\"1\">aVBob3RvIDkuNC4y</item><item key=\"DateTime\" base64=\"1\">MjAxMzowMjoxOSAwOToxNTo0MA==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">MTg4</item></array><array name=\"exif\"><item key=\"ExposureTime\" base64=\"1\">MS83Njc=</item><item key=\"FNumber\" base64=\"1\">MTIvNQ==</item><item key=\"ExposureProgram\" base64=\"1\">Mg==</item><item key=\"ISOSpeedRatings\" base64=\"1\">NTA=</item><item key=\"ExifVersion\" base64=\"1\">MDIyMQ==</item><item key=\"DateTimeOriginal\" base64=\"1\">MjAxMzowMjoxOSAwOToxNTo0MA==</item><item key=\"DateTimeDigitized\" base64=\"1\">MjAxMzowMjoxOSAwOToxNTo0MA==</item><item key=\"ComponentsConfiguration\" base64=\"1\">AQIDAA==</item><item key=\"ShutterSpeedValue\" base64=\"1\">MzIzOS8zMzg=</item><item key=\"ApertureValue\" base64=\"1\">NDg0NS8xOTE4</item><item key=\"BrightnessValue\" base64=\"1\">MTAzNTEvMTI2NA==</item><item key=\"MeteringMode\" base64=\"1\">Mw==</item><item key=\"Flash\" base64=\"1\">MA==</item><item key=\"FocalLength\" base64=\"1\">MTA3LzI1</item><item key=\"FlashPixVersion\" base64=\"1\">MDEwMA==</item><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">MzI2NA==</item><item key=\"ExifImageLength\" base64=\"1\">MjQ0OA==</item><item key=\"SensingMethod\" base64=\"1\">Mg==</item><item key=\"CustomRendered\" base64=\"1\">Mw==</item><item key=\"ExposureMode\" base64=\"1\">MA==</item><item key=\"WhiteBalance\" base64=\"1\">MA==</item><item key=\"FocalLengthIn35mmFilm\" base64=\"1\">MzU=</item><item key=\"SceneCaptureType\" base64=\"1\">MA==</item></array></information><alias name=\"reference\" filename=\"partial-content_reference.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-4-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-4-eng-US/partial-content_reference.jpg\" mime_type=\"image/jpeg\" width=\"600\" height=\"450\" alias_key=\"2605465115\" timestamp=\"1361315603\" is_valid=\"1\"/><alias name=\"small\" filename=\"partial-content_small.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-4-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-4-eng-US/partial-content_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"75\" alias_key=\"2343348577\" timestamp=\"1361315603\" is_valid=\"1\"/></ezimage>\n','ezimage',172,'eng-US',2,0,'',4),(0,174,54,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"partial-content.jpg\" suffix=\"jpg\" basename=\"partial-content\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US/partial-content.jpg\" original_filename=\"IMG_2010.jpg\" mime_type=\"image/jpeg\" width=\"3261\" height=\"1430\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1361315645\"><original attribute_id=\"172\" attribute_version=\"5\" attribute_language=\"eng-US\"/><information Height=\"1430\" Width=\"3261\" IsColor=\"1\" ByteOrderMotorola=\"1\" ApertureFNumber=\"f/2.4\"><array name=\"ifd0\"><item key=\"Make\" base64=\"1\">QXBwbGU=</item><item key=\"Model\" base64=\"1\">aVBob25lIDRT</item><item key=\"Orientation\" base64=\"1\">MQ==</item><item key=\"XResolution\" base64=\"1\">NzIvMQ==</item><item key=\"YResolution\" base64=\"1\">NzIvMQ==</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Software\" base64=\"1\">aVBob3RvIDkuNC4y</item><item key=\"DateTime\" base64=\"1\">MjAxMzowMjoxOSAwOToxNTo0MA==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">MTg4</item></array><array name=\"exif\"><item key=\"ExposureTime\" base64=\"1\">MS83Njc=</item><item key=\"FNumber\" base64=\"1\">MTIvNQ==</item><item key=\"ExposureProgram\" base64=\"1\">Mg==</item><item key=\"ISOSpeedRatings\" base64=\"1\">NTA=</item><item key=\"ExifVersion\" base64=\"1\">MDIyMQ==</item><item key=\"DateTimeOriginal\" base64=\"1\">MjAxMzowMjoxOSAwOToxNTo0MA==</item><item key=\"DateTimeDigitized\" base64=\"1\">MjAxMzowMjoxOSAwOToxNTo0MA==</item><item key=\"ComponentsConfiguration\" base64=\"1\">AQIDAA==</item><item key=\"ShutterSpeedValue\" base64=\"1\">MzIzOS8zMzg=</item><item key=\"ApertureValue\" base64=\"1\">NDg0NS8xOTE4</item><item key=\"BrightnessValue\" base64=\"1\">MTAzNTEvMTI2NA==</item><item key=\"MeteringMode\" base64=\"1\">Mw==</item><item key=\"Flash\" base64=\"1\">MA==</item><item key=\"FocalLength\" base64=\"1\">MTA3LzI1</item><item key=\"FlashPixVersion\" base64=\"1\">MDEwMA==</item><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">MzI2NA==</item><item key=\"ExifImageLength\" base64=\"1\">MjQ0OA==</item><item key=\"SensingMethod\" base64=\"1\">Mg==</item><item key=\"CustomRendered\" base64=\"1\">Mw==</item><item key=\"ExposureMode\" base64=\"1\">MA==</item><item key=\"WhiteBalance\" base64=\"1\">MA==</item><item key=\"FocalLengthIn35mmFilm\" base64=\"1\">MzU=</item><item key=\"SceneCaptureType\" base64=\"1\">MA==</item></array></information><alias name=\"reference\" filename=\"partial-content_reference.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US/partial-content_reference.jpg\" mime_type=\"image/jpeg\" width=\"600\" height=\"263\" alias_key=\"2605465115\" timestamp=\"1361375013\" is_valid=\"1\"/><alias name=\"medium\" filename=\"partial-content_medium.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US/partial-content_medium.jpg\" mime_type=\"image/jpeg\" width=\"200\" height=\"88\" alias_key=\"405413724\" timestamp=\"1361315645\" is_valid=\"1\"/><alias name=\"small\" filename=\"partial-content_small.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US/partial-content_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"44\" alias_key=\"2343348577\" timestamp=\"1361375013\" is_valid=\"1\"/><alias name=\"imagefull\" filename=\"partial-content_imagefull.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US/partial-content_imagefull.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"338\" alias_key=\"2209786334\" timestamp=\"1361317333\" is_valid=\"1\"/><alias name=\"headerimage\" filename=\"partial-content_headerimage.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US/partial-content_headerimage.jpg\" mime_type=\"image/jpeg\" width=\"1920\" height=\"400\" alias_key=\"2596501134\" timestamp=\"1361361243\" is_valid=\"1\"/><alias name=\"large\" filename=\"partial-content_large.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US/partial-content_large.jpg\" mime_type=\"image/jpeg\" width=\"360\" height=\"158\" alias_key=\"3448122496\" timestamp=\"1361360881\" is_valid=\"1\"/></ezimage>\n','ezimage',172,'eng-US',2,0,'',5),(0,174,54,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"partial-content.jpg\" suffix=\"jpg\" basename=\"partial-content\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US/partial-content.jpg\" original_filename=\"IMG_2010.jpg\" mime_type=\"image/jpeg\" width=\"3261\" height=\"1430\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1361315645\"><original attribute_id=\"172\" attribute_version=\"5\" attribute_language=\"eng-US\"/><information Height=\"1430\" Width=\"3261\" IsColor=\"1\" ByteOrderMotorola=\"1\" ApertureFNumber=\"f/2.4\"><array name=\"ifd0\"><item key=\"Make\" base64=\"1\">QXBwbGU=</item><item key=\"Model\" base64=\"1\">aVBob25lIDRT</item><item key=\"Orientation\" base64=\"1\">MQ==</item><item key=\"XResolution\" base64=\"1\">NzIvMQ==</item><item key=\"YResolution\" base64=\"1\">NzIvMQ==</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Software\" base64=\"1\">aVBob3RvIDkuNC4y</item><item key=\"DateTime\" base64=\"1\">MjAxMzowMjoxOSAwOToxNTo0MA==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">MTg4</item></array><array name=\"exif\"><item key=\"ExposureTime\" base64=\"1\">MS83Njc=</item><item key=\"FNumber\" base64=\"1\">MTIvNQ==</item><item key=\"ExposureProgram\" base64=\"1\">Mg==</item><item key=\"ISOSpeedRatings\" base64=\"1\">NTA=</item><item key=\"ExifVersion\" base64=\"1\">MDIyMQ==</item><item key=\"DateTimeOriginal\" base64=\"1\">MjAxMzowMjoxOSAwOToxNTo0MA==</item><item key=\"DateTimeDigitized\" base64=\"1\">MjAxMzowMjoxOSAwOToxNTo0MA==</item><item key=\"ComponentsConfiguration\" base64=\"1\">AQIDAA==</item><item key=\"ShutterSpeedValue\" base64=\"1\">MzIzOS8zMzg=</item><item key=\"ApertureValue\" base64=\"1\">NDg0NS8xOTE4</item><item key=\"BrightnessValue\" base64=\"1\">MTAzNTEvMTI2NA==</item><item key=\"MeteringMode\" base64=\"1\">Mw==</item><item key=\"Flash\" base64=\"1\">MA==</item><item key=\"FocalLength\" base64=\"1\">MTA3LzI1</item><item key=\"FlashPixVersion\" base64=\"1\">MDEwMA==</item><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">MzI2NA==</item><item key=\"ExifImageLength\" base64=\"1\">MjQ0OA==</item><item key=\"SensingMethod\" base64=\"1\">Mg==</item><item key=\"CustomRendered\" base64=\"1\">Mw==</item><item key=\"ExposureMode\" base64=\"1\">MA==</item><item key=\"WhiteBalance\" base64=\"1\">MA==</item><item key=\"FocalLengthIn35mmFilm\" base64=\"1\">MzU=</item><item key=\"SceneCaptureType\" base64=\"1\">MA==</item></array></information><alias name=\"reference\" filename=\"partial-content_reference.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US/partial-content_reference.jpg\" mime_type=\"image/jpeg\" width=\"600\" height=\"263\" alias_key=\"2605465115\" timestamp=\"1361375013\" is_valid=\"1\"/><alias name=\"medium\" filename=\"partial-content_medium.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US/partial-content_medium.jpg\" mime_type=\"image/jpeg\" width=\"200\" height=\"88\" alias_key=\"405413724\" timestamp=\"1361375021\" is_valid=\"1\"/><alias name=\"small\" filename=\"partial-content_small.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US/partial-content_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"44\" alias_key=\"2343348577\" timestamp=\"1361375013\" is_valid=\"1\"/><alias name=\"large\" filename=\"partial-content_large.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US/partial-content_large.jpg\" mime_type=\"image/jpeg\" width=\"300\" height=\"132\" alias_key=\"1592566908\" timestamp=\"1361375066\" is_valid=\"1\"/><alias name=\"headerimage\" filename=\"partial-content_headerimage.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US\" url=\"var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US/partial-content_headerimage.jpg\" mime_type=\"image/jpeg\" width=\"1920\" height=\"400\" alias_key=\"2596501134\" timestamp=\"1361375370\" is_valid=\"1\"/></ezimage>\n','ezimage',172,'eng-US',2,0,'',6),(0,179,10,0,0,'','eztext',177,'eng-US',3,0,'',2),(0,179,14,0,0,'','eztext',178,'eng-US',3,0,'',3),(0,179,14,0,0,'','eztext',178,'eng-US',3,0,'',4),(0,180,10,0,0,'','ezimage',179,'eng-US',3,0,'',2),(0,180,14,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',180,'eng-US',3,0,'',3),(0,180,14,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',180,'eng-US',3,0,'',4),(0,4,56,0,NULL,'Design','ezstring',181,'eng-US',3,0,'design',1),(0,155,56,0,NULL,'','ezstring',182,'eng-US',3,0,'',1),(0,119,56,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',183,'eng-US',3,0,'',1),(0,156,56,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',184,'eng-US',3,0,'',1),(0,158,56,0,1,'','ezboolean',185,'eng-US',3,1,'',1),(0,6,99,0,NULL,'Partners','ezstring',506,'eng-US',3,0,'partners',1),(0,7,99,0,NULL,'','ezstring',507,'eng-US',3,0,'',1),(0,299,41,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',508,'eng-US',2,0,'',1),(0,299,45,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',509,'eng-US',2,0,'',1),(0,299,49,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',510,'eng-US',2,0,'',1),(0,299,50,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',511,'eng-US',2,0,'',1),(0,299,51,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',512,'eng-US',2,0,'',1),(0,299,56,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',513,'eng-US',2,0,'',1),(0,300,41,0,NULL,'','ezkeyword',521,'eng-US',2,0,'',1),(0,300,45,0,NULL,'','ezkeyword',522,'eng-US',2,0,'',1),(0,300,49,0,NULL,'','ezkeyword',523,'eng-US',2,0,'',1),(0,300,50,0,NULL,'','ezkeyword',524,'eng-US',2,0,'',1),(0,300,51,0,NULL,'','ezkeyword',525,'eng-US',2,0,'',1),(0,300,56,0,NULL,'','ezkeyword',526,'eng-US',2,0,'',1),(0,193,100,0,NULL,'Home','ezstring',534,'eng-US',2,0,'home',1),(0,193,100,0,NULL,'Home','ezstring',534,'eng-US',2,0,'home',2),(0,302,100,0,NULL,'','ezstring',535,'eng-US',2,0,'',1),(0,302,100,0,NULL,'','ezstring',535,'eng-US',2,0,'',2),(0,194,100,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',536,'eng-US',2,0,'',1),(0,194,100,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Welcome to Partial Content</paragraph></section>\n','ezxmltext',536,'eng-US',2,0,'',2),(0,301,100,0,NULL,'','ezstring',537,'eng-US',2,0,'',1),(0,301,100,0,NULL,'','ezstring',537,'eng-US',2,0,'',2),(0,193,101,0,NULL,'Code','ezstring',538,'eng-US',2,0,'code',1),(0,302,101,0,NULL,'','ezstring',539,'eng-US',2,0,'',1),(0,194,101,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',540,'eng-US',2,0,'',1),(0,301,101,0,NULL,'','ezstring',541,'eng-US',2,0,'',1),(0,193,102,0,NULL,'Series','ezstring',542,'eng-US',2,0,'series',1),(0,302,102,0,NULL,'','ezstring',543,'eng-US',2,0,'',1),(0,194,102,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',544,'eng-US',2,0,'',1),(0,301,102,0,NULL,'','ezstring',545,'eng-US',2,0,'',1),(0,196,103,0,NULL,'Working with eZ Publish 5 - Introduction','ezstring',546,'eng-US',2,0,'working with ez publish 5 - introduction',1),(0,196,103,0,NULL,'Working with eZ Publish 5 - Introduction','ezstring',546,'eng-US',2,0,'working with ez publish 5 - introduction',2),(0,303,103,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',547,'eng-US',2,0,'',1),(0,303,103,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Test Summary</paragraph></section>\n','ezxmltext',547,'eng-US',2,0,'',2),(0,197,103,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>In early February, I had the opportunity to spend some learning some of the ins and outs of working with eZ Publish version 5 at a training event from eZ Systems. Having developed for years in eZ Publish, I knew 5 was going to be a big change, but didn\'t really consider <emphasize>how much</emphasize> change would be involved. After digging in, I found that there\'s a lot to like about the new system. The goal of this series of blog posts will be to help current eZ Publish developers get up to speed.</paragraph><section><header>Some Things To Clear Up</header><paragraph>First things first: Before we get in to code, let\'s address some facts and set aside any preconceived notions about what we\'re getting into: </paragraph><section><section><header>eZ Publish 5 is a Totally New CMS</header><paragraph>If you\'ve read anything about eZ Publish 5, you probably know that most of eZ\'s core components are being replaced by the Symfony framework.</paragraph><paragraph>The version number hints that this new release, like the past major releases, is a continuation of the same system many of us have used for years. And while that system is still around, the \'5\' parts of eZ 5 (the Symfony parts) are all new. In essence, <emphasize>eZ Publish 5 is a ground-up rewrite of the entire</emphasize> CMS. The overall design direction is that where a component of the Symfony stack can be used instead of the counterpart from eZ Publish 4, the eZ Publish 4 component has been replaced. Some examples:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">All interaction is handled via Symfony Controllers</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ templates are replaced by Twig templates</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ini files replaced by yml files</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZjscore replaced by Assetic</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ Publish caching is replaced by Symfony\'s caching</paragraph></li></ul></paragraph><paragraph>The core of the product, the eZ kernel itself, is now accessed via a Public API, which will remain stable in future versions. For developers, this is great news, since it means you\'re no longer hooking into core classes at random and hoping they don\'t change from version to version. </paragraph><paragraph>In general, all of the architectural decisions that version 5 represents are great news. The Symfony community has a great ecosystem and a lot of mature, elegant code. By becoming a part of it, eZ developers spend less time working on the underlying platform components, and more time delivering the best CMS possible. From a business perspective, you\'re more likely to find developers with transferrable skills on Symfony, so it\'s a long-term win on that side as well.</paragraph></section></section><section><section><header>eZ Publish 5 isn\'t a New CMS</header><paragraph>Wait, what? Well, not yet anyway. While all of the pieces are here to build a site in eZ Publish 5, the administrative interface and a lot of the other system components (commenting, front-end editing, etc) have not yet been rewritten on the new stack. So for now, you\'ll be using a lot of the eZ Publish 4 code in your normal workflow. In fact, <strong>all</strong> of the previous eZ Publish code (now rechristened as eZ Publish Legacy) ships as part of eZ Publish 5, right alongside the shiny new Symfony-based kernel. This means that the CMS doesn\'t lose any features as it moves over to the new architecture, but it also means that there are some areas where you need to understand both systems or in some cases, duplicate effort.</paragraph></section></section><section><section><header>You don\'t have to switch right now</header><paragraph>The important thing to remember is that you dont <emphasize>have </emphasize>to start using the new architecture right now, or even this year. The development roadmap calls for the legacy architecture to be available for a long time, and there are a lot of clever methods built in to the Symfony architecture to allow it to fall back to using legacy components somewhat transparently. So you can choose to use as much or as little of the new architecture as you like. </paragraph></section></section></section><section><header>The Project</header><paragraph>The point of this series, though, is to work with the shiny new stuff, so we\'re going to try to use as much of eZ Publish 5\'s Symfony components as we can. And to do that, I\'ve selected a fairly basic project - this blog! Over the next few pages, we\'ll work on building out the templates for the blog, learning the components of eZ 5 as we go. Here\'s a quick overview of what we\'re trying to build:</paragraph><section><header>Data Model</header><paragraph>The model for the blog will be fairly basic. We\'ll have content types of \'blog\' and \'blog_post\'. A Blog will be a simple container for blog posts, and have a name and description. A Blog Post will have fields for title, tagline, summary, body, and tags.</paragraph></section><section><header>Features</header><paragraph>As far as features go, we\'ll keep things pretty basic - a simple display of blog post summaries in reverse chronological order, paginated. I\'d also like to have a way to edit a sidebar (for featured posts) and a footer. </paragraph></section></section><section><header>What you need to follow along</header><paragraph>I\'ve placed all the code for this site out on github. Note that I\'m linking to the \'tutorial\' branch, which I\'ll always make sure matches this tutorial. The \'master\' branch will be the code that this blog is actually running, which may be enhanced with extra features as time goes on. If you see a problem in either, please feel free to send a pull request, and I\'ll update the tutorial accordingly. There are still some things I\'m learning myself, so I\'ve called out some questions along the way. If you have the answer, drop me a note or a comment!</paragraph><paragraph>You\'ll also need a good working environment. Make sure you have all of the requirements for Symfony and eZ Publish installed.</paragraph><paragraph>Let\'s start by covering some of the basics of Symfony.</paragraph></section></section>\n','ezxmltext',548,'eng-US',2,0,'',1),(0,197,103,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>In early February, I had the opportunity to spend some learning some of the ins and outs of working with eZ Publish version 5 at a training event from eZ Systems. Having developed for years in eZ Publish, I knew 5 was going to be a big change, but didn\'t really consider <emphasize>how much</emphasize> change would be involved. After digging in, I found that there\'s a lot to like about the new system. The goal of this series of blog posts will be to help current eZ Publish developers get up to speed.</paragraph><section><header>Some Things To Clear Up</header><paragraph>First things first: Before we get in to code, let\'s address some facts and set aside any preconceived notions about what we\'re getting into: </paragraph><section><section><header>eZ Publish 5 is a Totally New CMS</header><paragraph>If you\'ve read anything about eZ Publish 5, you probably know that most of eZ\'s core components are being replaced by the Symfony framework.</paragraph><paragraph>The version number hints that this new release, like the past major releases, is a continuation of the same system many of us have used for years. And while that system is still around, the \'5\' parts of eZ 5 (the Symfony parts) are all new. In essence, <emphasize>eZ Publish 5 is a ground-up rewrite of the entire</emphasize> CMS. The overall design direction is that where a component of the Symfony stack can be used instead of the counterpart from eZ Publish 4, the eZ Publish 4 component has been replaced. Some examples:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">All interaction is handled via Symfony Controllers</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ templates are replaced by Twig templates</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ini files replaced by yml files</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZjscore replaced by Assetic</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ Publish caching is replaced by Symfony\'s caching</paragraph></li></ul></paragraph><paragraph>The core of the product, the eZ kernel itself, is now accessed via a Public API, which will remain stable in future versions. For developers, this is great news, since it means you\'re no longer hooking into core classes at random and hoping they don\'t change from version to version. </paragraph><paragraph>In general, all of the architectural decisions that version 5 represents are great news. The Symfony community has a great ecosystem and a lot of mature, elegant code. By becoming a part of it, eZ developers spend less time working on the underlying platform components, and more time delivering the best CMS possible. From a business perspective, you\'re more likely to find developers with transferrable skills on Symfony, so it\'s a long-term win on that side as well.</paragraph></section></section><section><section><header>eZ Publish 5 isn\'t a New CMS</header><paragraph>Wait, what? Well, not yet anyway. While all of the pieces are here to build a site in eZ Publish 5, the administrative interface and a lot of the other system components (commenting, front-end editing, etc) have not yet been rewritten on the new stack. So for now, you\'ll be using a lot of the eZ Publish 4 code in your normal workflow. In fact, <strong>all</strong> of the previous eZ Publish code (now rechristened as eZ Publish Legacy) ships as part of eZ Publish 5, right alongside the shiny new Symfony-based kernel. This means that the CMS doesn\'t lose any features as it moves over to the new architecture, but it also means that there are some areas where you need to understand both systems or in some cases, duplicate effort.</paragraph></section></section><section><section><header>You don\'t have to switch right now</header><paragraph>The important thing to remember is that you dont <emphasize>have </emphasize>to start using the new architecture right now, or even this year. The development roadmap calls for the legacy architecture to be available for a long time, and there are a lot of clever methods built in to the Symfony architecture to allow it to fall back to using legacy components somewhat transparently. So you can choose to use as much or as little of the new architecture as you like. </paragraph></section></section></section><section><header>The Project</header><paragraph>The point of this series, though, is to work with the shiny new stuff, so we\'re going to try to use as much of eZ Publish 5\'s Symfony components as we can. And to do that, I\'ve selected a fairly basic project - this blog! Over the next few pages, we\'ll work on building out the templates for the blog, learning the components of eZ 5 as we go. Here\'s a quick overview of what we\'re trying to build:</paragraph><section><header>Data Model</header><paragraph>The model for the blog will be fairly basic. We\'ll have content types of \'blog\' and \'blog_post\'. A Blog will be a simple container for blog posts, and have a name and description. A Blog Post will have fields for title, tagline, summary, body, and tags.</paragraph></section><section><header>Features</header><paragraph>As far as features go, we\'ll keep things pretty basic - a simple display of blog post summaries in reverse chronological order, paginated. I\'d also like to have a way to edit a sidebar (for featured posts) and a footer. </paragraph></section></section><section><header>What you need to follow along</header><paragraph>I\'ve placed all the code for this site out on github. Note that I\'m linking to the \'tutorial\' branch, which I\'ll always make sure matches this tutorial. The \'master\' branch will be the code that this blog is actually running, which may be enhanced with extra features as time goes on. If you see a problem in either, please feel free to send a pull request, and I\'ll update the tutorial accordingly. There are still some things I\'m learning myself, so I\'ve called out some questions along the way. If you have the answer, drop me a note or a comment!</paragraph><paragraph>You\'ll also need a good working environment. Make sure you have all of the requirements for Symfony and eZ Publish installed.</paragraph><paragraph>Let\'s start by covering some of the basics of Symfony.</paragraph></section></section>\n','ezxmltext',548,'eng-US',2,0,'',2),(0,198,103,0,1360947000,'','ezdatetime',549,'eng-US',2,1360947000,'',1),(0,198,103,0,1360947000,'','ezdatetime',549,'eng-US',2,1360947000,'',2),(0,200,103,1,1,'','ezcomcomments',550,'eng-US',2,0,'',1),(0,200,103,1,1,'','ezcomcomments',550,'eng-US',2,0,'',2),(0,193,104,0,NULL,'About','ezstring',551,'eng-US',2,0,'about',1),(0,302,104,0,NULL,'','ezstring',552,'eng-US',2,0,'',1),(0,194,104,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><section><header>What\'s the deal with this blog?</header><paragraph>I\'m Joe Kepley, and Partial Content is my blog. I use this as a space to write about topics related to stuff I do at work, mostly programming for the web. </paragraph><paragraph>This blog also started as a tutorial on eZ Publish 5. You can read the tutorial on this blog, and <link target=\"_blank\" url_id=\"91\">find the code on Github</link>. </paragraph></section><section><header>What\'s the deal with you?</header><paragraph>I\'m a partner at <link url_id=\"92\">Blend Interactive</link>, where I head up the development group. My job is to make sure Blend is using the best available practices wherever possible in our development process, and to make sure that Blend is the best possible place for a developer to work.</paragraph></section><section><header>What\'s up with the name?</header><paragraph>HTTP has a status code: \"<link target=\"_blank\" url_id=\"93\" anchor_name=\"sec10.2.7\">206 Partial Content</link>\". Also, this is a blog so it\'s never \"complete\" content. Also, \"Partial\" means opinionated, and some of it will be that. So it\'s in the running for the world\'s nerdiest play on words, and I\'ll be surprised if anyone ever gets it.</paragraph></section></section>\n','ezxmltext',553,'eng-US',2,0,'',1),(0,301,104,0,NULL,'','ezstring',554,'eng-US',2,0,'',1),(0,308,54,NULL,NULL,NULL,'ezstring',555,'eng-US',2,0,'',2),(0,308,54,0,NULL,'Partial Content','ezstring',555,'eng-US',2,0,'partial content',3),(0,308,54,0,NULL,'Partial Content','ezstring',555,'eng-US',2,0,'partial content',4),(0,308,54,0,NULL,'Partial Content','ezstring',555,'eng-US',2,0,'partial content',5),(0,308,54,0,NULL,'Partial Content','ezstring',555,'eng-US',2,0,'partial content',6),(0,309,54,NULL,NULL,NULL,'eztext',556,'eng-US',2,0,'',2),(0,309,54,0,NULL,'','eztext',556,'eng-US',2,0,'',3),(0,309,54,0,NULL,'','eztext',556,'eng-US',2,0,'',4),(0,309,54,0,NULL,'A blog covering coding for the web from Joe Kepley at Blend Interactive.','eztext',556,'eng-US',2,0,'',5),(0,309,54,0,NULL,'A blog covering coding for the web from Joe Kepley at Blend Interactive.','eztext',556,'eng-US',2,0,'',6),(0,311,54,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',557,'eng-US',2,0,'',2),(0,311,54,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Sidebar items should go here</paragraph></section>\n','ezxmltext',557,'eng-US',2,0,'',3),(0,311,54,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Sidebar items should go here</paragraph></section>\n','ezxmltext',557,'eng-US',2,0,'',4),(0,311,54,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Sidebar items should go here</paragraph></section>\n','ezxmltext',557,'eng-US',2,0,'',5),(0,311,54,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph><strong>Some Links for you:</strong></paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_blank\" url_id=\"92\">Blend Interactive</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_blank\" url_id=\"116\">Now What? Conference</link> - 4/18/2013</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_blank\" url_id=\"117\">eZ Publish Developers</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_blank\" url_id=\"118\">eZ Publish Community</link></paragraph></li></ul></paragraph></section>\n','ezxmltext',557,'eng-US',2,0,'',6),(0,312,54,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',558,'eng-US',2,0,'',2),(0,312,54,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>©2013 <link target=\"_blank\" url_id=\"92\">Blend Interactive</link>, Inc.</paragraph></section>\n','ezxmltext',558,'eng-US',2,0,'',3),(0,312,54,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>©2013 <link target=\"_blank\" url_id=\"92\">Blend Interactive</link>, Inc.</paragraph></section>\n','ezxmltext',558,'eng-US',2,0,'',4),(0,312,54,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>©2013 <link target=\"_blank\" url_id=\"92\">Blend Interactive</link>, Inc.</paragraph></section>\n','ezxmltext',558,'eng-US',2,0,'',5),(0,312,54,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>©2013 <link target=\"_blank\" url_id=\"92\">Blend Interactive</link>, Inc.</paragraph></section>\n','ezxmltext',558,'eng-US',2,0,'',6),(0,313,54,NULL,NULL,NULL,'ezstring',559,'eng-US',2,0,'',2),(0,313,54,0,NULL,'','ezstring',559,'eng-US',2,0,'',3),(0,313,54,0,NULL,'','ezstring',559,'eng-US',2,0,'',4),(0,313,54,0,NULL,'','ezstring',559,'eng-US',2,0,'',5),(0,313,54,0,NULL,'','ezstring',559,'eng-US',2,0,'',6),(0,196,105,0,NULL,'Working With eZ Publish 5 - Symfony','ezstring',560,'eng-US',2,0,'working with ez publish 5 - symfony',1),(0,303,105,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',561,'eng-US',2,0,'',1),(0,197,105,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Before we dig in and start building a new site, let\'s look over some of the core concepts in Symfony. If you\'ve already got a good handle on Symfony, and aren\'t interested in some of the conceptual changes from eZ Publish 4, you can skip ahead to the next post and start getting your hands dirty.</paragraph><section><header>Model-View-Controller</header><paragraph>If you\'ve worked with Rails, ASP.Net MVC (or to a lesser degree, CakePHP) then you\'re probably familiar with the Model-View-Controller pattern. It provides a standard framework for building PHP applications in a common, organized way. When a request is received, it\'s directed to Symfony, which routes the request to an <strong>action</strong>on a <strong>controller</strong>, which is really just a function defined by the app developer. This function gathers up whatever variables are needed to handle the request from a set of <strong>model</strong> objects. The model objects represent whatever systems the app stores data in (database calls, web APIs, punch cards, whatever). The controller hands back the data it\'s gathered, which is handled by the <strong>view</strong>, which is a template language that\'s used to format the response. </paragraph><paragraph>This all sounds pretty complicated, but in practice it\'s fairly straightforward. If you want your app to render some database output to a page, for example, you simply write a function on a controller class that returns an array containing the data you want to use, then write a template (in Symfony, the Twig templating language is used) that contains the HTML for your page. Using eZ Publish, it\'s even easier since for most pages, you\'ll be using a controller provided by eZ Publish. </paragraph><paragraph>The main principles that drive MVC architecture are <emphasize>separation of concerns</emphasize> and <emphasize>don\'t repeat yourself (DRY)</emphasize>. Since the job of fetching the data for the response (controller) is separate from the format of the response (view), it\'s very easy to change the appearance of the response, or even use JSON, XML, or something else instead of javascript. </paragraph><paragraph>Symfony adds another layer on top of MVC by packaging most of the app components into <emphasize>Bundles</emphasize>, which are directories that organize code around specific aspects of the application. This is sometimes referred to as HMVC (Hierarchical Model-View-Controller). This makes it easier for you to re-use code that other people have written by installing their bundles in to your project.</paragraph></section><section><header>Big Changes from eZ Publish 4</header><paragraph>If you\'re coming to eZ Publish 5 from version 4, there are some major changes that may trip you up unless you\'re looking for them.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><custom name=\"factbox\" custom:title=\"Note\" custom:align=\"right\"><paragraph>Wherever we\'re talking about \'eZ Publish 5\' here, keep in mind that we\'re only talking about the new, Symfony parts of eZ Publish 5. eZ Publish 4 is still there and uses all of the old concepts just as they\'ve always been.</paragraph></custom></paragraph><section><header>Twig</header><paragraph>The half-Smarty half-PHP template language PHP has used for years is being deprecated in favor of Twig, the template language closely associated with the Symfony framework. Twig templates will look pretty familiar, but function quite a bit differently under the hood. Twig provides some neat new features too, like template inheritance. Both the language itself and the means to extend it are well documented. </paragraph></section><section><header>No more fetch() function</header><paragraph>In eZ Publish 4, if you wanted to pull some extra content from the repository in to your template, you simply called fetch, like so: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal> {def $posts = fetch(content, list, hash(parent_node_id, 2, class_filter_type, \'include\', class_filter_array, array(\'blog_post\')))}</literal></paragraph><paragraph>This is handy, but the problem that arises is that you\'ve no longer separated your concerns. Your view template is now talking directly to the model and handling application logic. Over the years, eZ Publish 4 templates became more and more loaded with logic code, which lead to big, hairy, hard to read templates.</paragraph><paragraph>In the eZ Publish 5 approach, extra data is handled as a nested request to the CMS (a <emphasize>sub-request</emphasize>). This means that you\'ll write the query to retrieve the data as PHP in a controller action, and provide a template to render the results. This sounds like a bit more work, but it leads to better template re-use, and it also gives you a chance to keep any of the complex logic (like turning a list of events into a calendar) out of the template.</paragraph></section><section><header>Single-pass rendering</header><paragraph>Most eZ Publish 4 developers know that a page in eZ 4 is rendered in two steps: the system first renders the \'module result\' (the \'full view\' template of a content object) and then passes the result of that as HTML to a \'pagelayout\', which renders the page surround. If you want the pagelayout template to have access to variables used by the interior template, you need to either pass those variables in a specific structure, or fetch them again. </paragraph><paragraph>In Twig, only one render step occurs for each request (ignoring sub-requests for the moment). The template language provides an inheritance model similar to classes and methods in PHP that still allows you to re-use your template code.</paragraph></section><section><header>Simplified cache</header><paragraph>In eZ Publish 4, there were a lot of pieces involved in caching a page - template cache, block cache, view cache, etc. eZ Publish 5 uses Symfony\'s native caching layer, and for the most part only caches entire requests. Symfony also adheres very closely to the HTTP specification to determine how this cache is managed, so if you\'re not up to speed on HTTP Headers like <link target=\"_blank\" url_id=\"94\" anchor_name=\"sec14.9\">Cache-Control</link> and <link target=\"_blank\" url_id=\"95\">ETag</link>, you\'ll want to brush up before you begin any serious development - but we can skip that stuff for now.</paragraph><paragraph>Let\'s move on and set up an eZ Publish 5 installation.</paragraph></section></section></section>\n','ezxmltext',562,'eng-US',2,0,'',1),(0,198,105,0,1360955640,'','ezdatetime',563,'eng-US',2,1360955640,'',1),(0,200,105,1,1,'','ezcomcomments',564,'eng-US',2,0,'',1),(0,304,106,0,NULL,'Working With eZ Publish 5','ezstring',565,'eng-US',2,0,'working with ez publish 5',1),(0,304,106,0,NULL,'Working With eZ Publish 5','ezstring',565,'eng-US',2,0,'working with ez publish 5',2),(0,305,106,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This series gives you a basic tutorial for building a site (this site, actually) in eZ Publish 5.</paragraph></section>\n','ezxmltext',566,'eng-US',2,0,'',1),(0,305,106,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This series gives you a basic tutorial for building a site (this site, actually) in eZ Publish 5.</paragraph></section>\n','ezxmltext',566,'eng-US',2,0,'',2),(0,306,106,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><relation-list><relation-item priority=\"1\" in-trash=\"1\" contentobject-id=\"103\" contentobject-version=\"1\" contentclass-id=\"18\" contentclass-identifier=\"blog_post\" contentobject-remote-id=\"6272723ff5e63f5bc28226ac99d66d3b\"/><relation-item priority=\"2\" in-trash=\"1\" contentobject-id=\"105\" contentobject-version=\"1\" contentclass-id=\"18\" contentclass-identifier=\"blog_post\" contentobject-remote-id=\"ea0d067b07a18755b8a05bae6190e162\"/></relation-list></related-objects>\n','ezobjectrelationlist',567,'eng-US',2,0,'',1),(0,306,106,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><relation-list><relation-item priority=\"1\" contentobject-id=\"107\" contentobject-version=\"1\" node-id=\"109\" parent-node-id=\"103\" contentclass-id=\"18\" contentclass-identifier=\"blog_post\" contentobject-remote-id=\"f1dd8c46494ebd2efa564e1a8e3c99d6\"/><relation-item priority=\"2\" contentobject-id=\"108\" contentobject-version=\"1\" node-id=\"110\" parent-node-id=\"103\" contentclass-id=\"18\" contentclass-identifier=\"blog_post\" contentobject-remote-id=\"262a64f892474863b07bd6bf808ef580\"/><relation-item priority=\"3\" contentobject-id=\"109\" contentobject-version=\"1\" node-id=\"111\" parent-node-id=\"103\" contentclass-id=\"18\" contentclass-identifier=\"blog_post\" contentobject-remote-id=\"7d15f3bc0bd97305a9cecdd6ad02d9be\"/></relation-list></related-objects>\n','ezobjectrelationlist',567,'eng-US',2,0,'',2),(0,307,106,0,NULL,'ez5-tutorial','ezstring',568,'eng-US',2,0,'ez5-tutorial',1),(0,307,106,0,NULL,'ez5-tutorial','ezstring',568,'eng-US',2,0,'ez5-tutorial',2),(0,196,107,0,NULL,'Working with eZ Publish 5 - Introduction','ezstring',569,'eng-US',2,0,'working with ez publish 5 - introduction',1),(0,196,107,0,NULL,'Working with eZ Publish 5 - Introduction','ezstring',569,'eng-US',2,0,'working with ez publish 5 - introduction',2),(0,196,107,0,NULL,'Working with eZ Publish 5 - Introduction','ezstring',569,'eng-US',2,0,'working with ez publish 5 - introduction',3),(0,196,107,0,NULL,'Working with eZ Publish 5 - Introduction','ezstring',569,'eng-US',2,0,'working with ez publish 5 - introduction',4),(0,196,107,0,NULL,'Working with eZ Publish 5 - Introduction','ezstring',569,'eng-US',2,0,'working with ez publish 5 - introduction',5),(0,196,107,0,NULL,'Working with eZ Publish 5 - Introduction','ezstring',569,'eng-US',2,0,'working with ez publish 5 - introduction',6),(0,303,107,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Let\'s dig in to the new goodies in eZ Publish 5.</paragraph></section>','ezxmltext',570,'eng-US',2,0,'',1),(0,303,107,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Let\'s dig in to the new goodies in eZ Publish 5.</paragraph></section>\n','ezxmltext',570,'eng-US',2,0,'',2),(0,303,107,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Let\'s dig in to the new goodies in eZ Publish 5.</paragraph></section>\n','ezxmltext',570,'eng-US',2,0,'',3),(0,303,107,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Let\'s dig in to the new goodies in eZ Publish 5.</paragraph></section>\n','ezxmltext',570,'eng-US',2,0,'',4),(0,303,107,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Let\'s dig in to the new goodies in eZ Publish 5.</paragraph></section>\n','ezxmltext',570,'eng-US',2,0,'',5),(0,303,107,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Let\'s dig in to the new goodies in eZ Publish 5.</paragraph></section>\n','ezxmltext',570,'eng-US',2,0,'',6),(0,197,107,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>In early February, I had the opportunity to spend some learning some of the ins and outs of working with eZ Publish version 5 at a training event from eZ Systems. Having developed for years in eZ Publish, I knew 5 was going to be a big change, but didn\'t really consider <emphasize>how much</emphasize> change would be involved. After digging in, I found that there\'s a lot to like about the new system. The goal of this series of blog posts will be to help current eZ Publish developers get up to speed.</paragraph><section><header>Some Things To Clear Up</header><paragraph>First things first: Before we get in to code, let\'s address some facts and set aside any preconceived notions about what we\'re getting into: </paragraph><section><section><header>eZ Publish 5 is a Totally New CMS</header><paragraph>If you\'ve read anything about eZ Publish 5, you probably know that most of eZ\'s core components are being replaced by the Symfony framework.</paragraph><paragraph>The version number hints that this new release, like the past major releases, is a continuation of the same system many of us have used for years. And while that system is still around, the \'5\' parts of eZ 5 (the Symfony parts) are all new. In essence, <emphasize>eZ Publish 5 is a ground-up rewrite of the entire</emphasize> CMS. The overall design direction is that where a component of the Symfony stack can be used instead of the counterpart from eZ Publish 4, the eZ Publish 4 component has been replaced. Some examples:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">All interaction is handled via Symfony Controllers</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ templates are replaced by Twig templates</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ini files replaced by yml files</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZjscore replaced by Assetic</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ Publish caching is replaced by Symfony\'s caching</paragraph></li></ul></paragraph><paragraph>The core of the product, the eZ kernel itself, is now accessed via a Public API, which will remain stable in future versions. For developers, this is great news, since it means you\'re no longer hooking into core classes at random and hoping they don\'t change from version to version. </paragraph><paragraph>In general, all of the architectural decisions that version 5 represents are great news. The Symfony community has a great ecosystem and a lot of mature, elegant code. By becoming a part of it, eZ developers spend less time working on the underlying platform components, and more time delivering the best CMS possible. From a business perspective, you\'re more likely to find developers with transferrable skills on Symfony, so it\'s a long-term win on that side as well.</paragraph></section></section><section><section><header>eZ Publish 5 isn\'t a New CMS</header><paragraph>Wait, what? Well, not yet anyway. While all of the pieces are here to build a site in eZ Publish 5, the administrative interface and a lot of the other system components (commenting, front-end editing, etc) have not yet been rewritten on the new stack. So for now, you\'ll be using a lot of the eZ Publish 4 code in your normal workflow. In fact, <strong>all</strong> of the previous eZ Publish code (now rechristened as eZ Publish Legacy) ships as part of eZ Publish 5, right alongside the shiny new Symfony-based kernel. This means that the CMS doesn\'t lose any features as it moves over to the new architecture, but it also means that there are some areas where you need to understand both systems or in some cases, duplicate effort.</paragraph></section></section><section><section><header>You don\'t have to switch right now</header><paragraph>The important thing to remember is that you dont <emphasize>have </emphasize>to start using the new architecture right now, or even this year. The development roadmap calls for the legacy architecture to be available for a long time, and there are a lot of clever methods built in to the Symfony architecture to allow it to fall back to using legacy components somewhat transparently. So you can choose to use as much or as little of the new architecture as you like. </paragraph></section></section></section><section><header>The Project</header><paragraph>The point of this series, though, is to work with the shiny new stuff, so we\'re going to try to use as much of eZ Publish 5\'s Symfony components as we can. And to do that, I\'ve selected a fairly basic project - this blog! Over the next few pages, we\'ll work on building out the templates for the blog, learning the components of eZ 5 as we go. Here\'s a quick overview of what we\'re trying to build:</paragraph><section><header>Data Model</header><paragraph>The model for the blog will be fairly basic. We\'ll have content types of \'blog\' and \'blog_post\'. A Blog will be a simple container for blog posts, and have a name and description. A Blog Post will have fields for title, tagline, summary, body, and tags.</paragraph></section><section><header>Features</header><paragraph>As far as features go, we\'ll keep things pretty basic - a simple display of blog post summaries in reverse chronological order, paginated. I\'d also like to have a way to edit a sidebar (for featured posts) and a footer. </paragraph></section></section><section><header>What you need to follow along</header><paragraph>I\'ve placed all the code for this site out on github. Note that I\'m linking to the \'tutorial\' branch, which I\'ll always make sure matches this tutorial. The \'master\' branch will be the code that this blog is actually running, which may be enhanced with extra features as time goes on. If you see a problem in either, please feel free to send a pull request, and I\'ll update the tutorial accordingly. There are still some things I\'m learning myself, so I\'ve called out some questions along the way. If you have the answer, drop me a note or a comment!</paragraph><paragraph>You\'ll also need a good working environment. Make sure you have all of the requirements for Symfony and eZ Publish installed.</paragraph><paragraph>Let\'s start by covering some of the basics of Symfony.</paragraph></section></section>','ezxmltext',571,'eng-US',2,0,'',1),(0,197,107,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>In early February, I had the opportunity to spend some learning some of the ins and outs of working with eZ Publish version 5 at a training event from eZ Systems. Having developed for years in eZ Publish, I knew 5 was going to be a big change, but didn\'t really consider <emphasize>how much</emphasize> change would be involved. After digging in, I found that there\'s a lot to like about the new system. The goal of this series of blog posts will be to help current eZ Publish developers get up to speed.</paragraph><section><header>Some Things To Clear Up</header><paragraph>First things first: Before we get in to code, let\'s address some facts and set aside any preconceived notions about what we\'re getting into: </paragraph><section><section><header>eZ Publish 5 is a Totally New CMS</header><paragraph>If you\'ve read anything about eZ Publish 5, you probably know that most of eZ\'s core components are being replaced by the Symfony framework.</paragraph><paragraph>The version number hints that this new release, like the past major releases, is a continuation of the same system many of us have used for years. And while that system is still around, the \'5\' parts of eZ 5 (the Symfony parts) are all new. In essence, <emphasize>eZ Publish 5 is a ground-up rewrite of the entire</emphasize> CMS. The overall design direction is that where a component of the Symfony stack can be used instead of the counterpart from eZ Publish 4, the eZ Publish 4 component has been replaced. Some examples:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">All interaction is handled via Symfony Controllers</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ templates are replaced by Twig templates</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ini files replaced by yml files</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZjscore replaced by Assetic</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ Publish caching is replaced by Symfony\'s caching</paragraph></li></ul></paragraph><paragraph>The core of the product, the eZ kernel itself, is now accessed via a Public API, which will remain stable in future versions. For developers, this is great news, since it means you\'re no longer hooking into core classes at random and hoping they don\'t change from version to version. </paragraph><paragraph>In general, all of the architectural decisions that version 5 represents are great news. The Symfony community has a great ecosystem and a lot of mature, elegant code. By becoming a part of it, eZ developers spend less time working on the underlying platform components, and more time delivering the best CMS possible. From a business perspective, you\'re more likely to find developers with transferrable skills on Symfony, so it\'s a long-term win on that side as well.</paragraph></section></section><section><section><header>eZ Publish 5 isn\'t a New CMS</header><paragraph>Wait, what? Well, not yet anyway. While all of the pieces are here to build a site in eZ Publish 5, the administrative interface and a lot of the other system components (commenting, front-end editing, etc) have not yet been rewritten on the new stack. So for now, you\'ll be using a lot of the eZ Publish 4 code in your normal workflow. In fact, <strong>all</strong> of the previous eZ Publish code (now rechristened as eZ Publish Legacy) ships as part of eZ Publish 5, right alongside the shiny new Symfony-based kernel. This means that the CMS doesn\'t lose any features as it moves over to the new architecture, but it also means that there are some areas where you need to understand both systems or in some cases, duplicate effort.</paragraph></section></section><section><section><header>You don\'t have to switch right now</header><paragraph>The important thing to remember is that you dont <emphasize>have </emphasize>to start using the new architecture right now, or even this year. The development roadmap calls for the legacy architecture to be available for a long time, and there are a lot of clever methods built in to the Symfony architecture to allow it to fall back to using legacy components somewhat transparently. So you can choose to use as much or as little of the new architecture as you like. </paragraph></section></section></section><section><header>The Project</header><paragraph>The point of this series, though, is to work with the shiny new stuff, so we\'re going to try to use as much of eZ Publish 5\'s Symfony components as we can. And to do that, I\'ve selected a fairly basic project - this blog! Over the next few pages, we\'ll work on building out the templates for the blog, learning the components of eZ 5 as we go. Here\'s a quick overview of what we\'re trying to build:</paragraph><section><header>Data Model</header><paragraph>The model for the blog will be fairly basic. We\'ll have content types of \'blog\' and \'blog_post\'. A Blog will be a simple container for blog posts, and have a name and description. A Blog Post will have fields for title, tagline, summary, body, and tags.</paragraph></section><section><header>Features</header><paragraph>As far as features go, we\'ll keep things pretty basic - a simple display of blog post summaries in reverse chronological order, paginated. I\'d also like to have a way to edit a sidebar (for featured posts) and a footer. </paragraph></section></section><section><header>What you need to follow along</header><paragraph>I\'ve placed all the code for this site <link target=\"_blank\" url_id=\"91\">out on github</link>. I\'ve made a branch for each step of the tutorial. and I\'ll note as we go along which branch you can pull down in order to catch up with the tutorial progress. The \'master\' branch will be the code that this blog is actually running, which may be enhanced with extra features as time goes on. If you see a problem in either, please feel free to send a pull request, and I\'ll update the tutorial accordingly. There are still some things I\'m learning myself, so I\'ve called out some questions along the way. If you have the answer, drop me a note or a comment!</paragraph><paragraph>You\'ll also need a good working environment. Make sure you have all of the requirements for <link target=\"_blank\" url_id=\"99\">Symfony</link> and <link target=\"_blank\" url_id=\"100\">eZ Publish</link> installed.</paragraph><paragraph>Let\'s start by covering some of the <link node_id=\"110\">basics of Symfony</link>.</paragraph></section></section>\n','ezxmltext',571,'eng-US',2,0,'',2),(0,197,107,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>In early February, I had the opportunity to spend some learning some of the ins and outs of working with eZ Publish version 5 at a training event from eZ Systems. Having developed for years in eZ Publish, I knew 5 was going to be a big change, but didn\'t really consider <emphasize>how much</emphasize> change would be involved. After digging in, I found that there\'s a lot to like about the new system. The goal of this series of blog posts will be to help current eZ Publish developers get up to speed.</paragraph><section><header>Some Things To Clear Up</header><paragraph>First things first: Before we get in to code, let\'s address some facts and set aside any preconceived notions about what we\'re getting into: </paragraph><section><section><header>eZ Publish 5 is a Totally New CMS</header><paragraph>If you\'ve read anything about eZ Publish 5, you probably know that most of eZ\'s core components are being replaced by the Symfony framework.</paragraph><paragraph>The version number hints that this new release, like the past major releases, is a continuation of the same system many of us have used for years. And while that system is still around, the \'5\' parts of eZ 5 (the Symfony parts) are all new. In essence, <emphasize>eZ Publish 5 is a ground-up rewrite of the entire</emphasize> CMS. The overall design direction is that where a component of the Symfony stack can be used instead of the counterpart from eZ Publish 4, the eZ Publish 4 component has been replaced. Some examples:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">All interaction is handled via Symfony Controllers</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ templates are replaced by Twig templates</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ini files replaced by yml files</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZjscore replaced by Assetic</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ Publish caching is replaced by Symfony\'s caching</paragraph></li></ul></paragraph><paragraph>The core of the product, the eZ kernel itself, is now accessed via a Public API, which will remain stable in future versions. For developers, this is great news, since it means you\'re no longer hooking into core classes at random and hoping they don\'t change from version to version. </paragraph><paragraph>In general, all of the architectural decisions that version 5 represents are great news. The Symfony community has a great ecosystem and a lot of mature, elegant code. By becoming a part of it, eZ developers spend less time working on the underlying platform components, and more time delivering the best CMS possible. From a business perspective, you\'re more likely to find developers with transferrable skills on Symfony, so it\'s a long-term win on that side as well.</paragraph></section></section><section><section><header>eZ Publish 5 isn\'t a New CMS</header><paragraph>Wait, what? Well, not yet anyway. While all of the pieces are here to build a site in eZ Publish 5, the administrative interface and a lot of the other system components (commenting, front-end editing, etc) have not yet been rewritten on the new stack. So for now, you\'ll be using a lot of the eZ Publish 4 code in your normal workflow. In fact, <strong>all</strong> of the previous eZ Publish code (now rechristened as eZ Publish Legacy) ships as part of eZ Publish 5, right alongside the shiny new Symfony-based kernel. This means that the CMS doesn\'t lose any features as it moves over to the new architecture, but it also means that there are some areas where you need to understand both systems or in some cases, duplicate effort.</paragraph></section></section><section><section><header>You don\'t have to switch right now</header><paragraph>The important thing to remember is that you dont <emphasize>have </emphasize>to start using the new architecture right now, or even this year. The development roadmap calls for the legacy architecture to be available for a long time, and there are a lot of clever methods built in to the Symfony architecture to allow it to fall back to using legacy components somewhat transparently. So you can choose to use as much or as little of the new architecture as you like. </paragraph></section></section></section><section><header>The Project</header><paragraph>The point of this series, though, is to work with the shiny new stuff, so we\'re going to try to use as much of eZ Publish 5\'s Symfony components as we can. And to do that, I\'ve selected a fairly basic project - this blog! Over the next few pages, we\'ll work on building out the templates for the blog, learning the components of eZ 5 as we go. Here\'s a quick overview of what we\'re trying to build:</paragraph><section><header>Data Model</header><paragraph>The model for the blog will be fairly basic. We\'ll have content types of \'blog\' and \'blog_post\'. A Blog will be a simple container for blog posts, and have a name and description. A Blog Post will have fields for title, tagline, summary, body, and tags.</paragraph></section><section><header>Features</header><paragraph>As far as features go, we\'ll keep things pretty basic - a simple display of blog post summaries in reverse chronological order, paginated. I\'d also like to have a way to edit a sidebar (for featured posts) and a footer. </paragraph></section></section><section><header>What you need to follow along</header><paragraph>I\'ve placed all the code for this site <link target=\"_blank\" url_id=\"91\">out on github</link>. I\'ve made a branch for each step of the tutorial. and I\'ll note as we go along which branch you can pull down in order to catch up with the tutorial progress. The \'master\' branch will be the code that this blog is actually running, which may be enhanced with extra features as time goes on. If you see a problem in either, please feel free to send a pull request, and I\'ll update the tutorial accordingly. There are still some things I\'m learning myself, so I\'ve called out some questions along the way. If you have the answer, drop me a note or a comment!</paragraph><paragraph>You\'ll also need a good working environment. Make sure you have all of the requirements for <link target=\"_blank\" url_id=\"99\">Symfony</link> and <link target=\"_blank\" url_id=\"100\">eZ Publish</link> installed.</paragraph><paragraph>Let\'s start by covering some of the <link node_id=\"110\">basics of Symfony</link>.</paragraph></section></section>\n','ezxmltext',571,'eng-US',2,0,'',3),(0,197,107,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>In early February, I had the opportunity to spend some learning some of the ins and outs of working with eZ Publish version 5 at a training event from eZ Systems. Having developed for years in eZ Publish, I knew 5 was going to be a big change, but didn\'t really consider <emphasize>how much</emphasize> change would be involved. After digging in, I found that there\'s a lot to like about the new system. The goal of this series of blog posts will be to help current eZ Publish developers get up to speed. We\'re mostly focusing on developers already familiar with eZ Publish 4, but as long as you have a basic familiarity with the CMS, you should be able to follow along.</paragraph><paragraph>The idea here is to provide a tutorial that will allow you to get up and running quickly with eZ Publish 5, even if you\'re a bit of a neophyte with Symfony (like me). We\'ll cover some basic concepts, and build out a basic site using only eZ Publish 5 concepts wherever possible. Each step of the tutorial has been stored as a branch in github to make it easy to follow along.</paragraph><section><header>Some Things To Clear Up</header><paragraph>First things first: Before we get in to code, let\'s address some facts and set aside any preconceived notions about what we\'re getting into: </paragraph><section><section><header>eZ Publish 5 is a Totally New CMS</header><paragraph>If you\'ve read anything about eZ Publish 5, you probably know that most of eZ\'s core components are being replaced by the Symfony framework.</paragraph><paragraph>The version number hints that this new release, like the past major releases, is a continuation of the same system many of us have used for years. And while that system is still around, the \'5\' parts of eZ 5 (the Symfony parts) are all new. In essence, <emphasize>eZ Publish 5 is a ground-up rewrite of the entire</emphasize> CMS. The overall design direction is that where a component of the Symfony stack can be used instead of the counterpart from eZ Publish 4, the eZ Publish 4 component has been replaced. Some examples:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">All interaction is handled via Symfony Controllers</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ templates are replaced by Twig templates</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ini files replaced by yml files</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZjscore replaced by Assetic</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ Publish caching is replaced by Symfony\'s caching</paragraph></li></ul></paragraph><paragraph>The core of the product, the eZ kernel itself, is now accessed via a Public API, which will remain stable in future versions. For developers, this is great news, since it means you\'re no longer hooking into core classes at random and hoping they don\'t change from version to version. </paragraph><paragraph>In general, all of the architectural decisions that version 5 represents are great news. The Symfony community has a great ecosystem and a lot of mature, elegant code. By becoming a part of it, eZ developers spend less time working on the underlying platform components, and more time delivering the best CMS possible. From a business perspective, you\'re more likely to find developers with transferrable skills on Symfony, so it\'s a long-term win on that side as well.</paragraph></section></section><section><section><header>eZ Publish 5 isn\'t a New CMS</header><paragraph>Wait, what? Well, not yet anyway. While all of the pieces are here to build a site in eZ Publish 5, the administrative interface and a lot of the other system components (commenting, front-end editing, etc) have not yet been rewritten on the new stack. So for now, you\'ll be using a lot of the eZ Publish 4 code in your normal workflow. In fact, <strong>all</strong> of the previous eZ Publish code (now rechristened as eZ Publish Legacy) ships as part of eZ Publish 5, right alongside the shiny new Symfony-based kernel. This means that the CMS doesn\'t lose any features as it moves over to the new architecture, but it also means that there are some areas where you need to understand both systems or in some cases, duplicate effort.</paragraph></section></section><section><section><header>You don\'t have to switch right now</header><paragraph>The important thing to remember is that you dont <emphasize>have </emphasize>to start using the new architecture right now, or even this year. The development roadmap calls for the legacy architecture to be available for a long time, and there are a lot of clever methods built in to the Symfony architecture to allow it to fall back to using legacy components somewhat transparently. So you can choose to use as much or as little of the new architecture as you like. </paragraph></section></section></section><section><header>The Project</header><paragraph>The point of this series, though, is to work with the shiny new stuff, so we\'re going to try to use as much of eZ Publish 5\'s Symfony components as we can. And to do that, I\'ve selected a fairly basic project - this blog! Over the next few pages, we\'ll work on building out the templates for the blog, learning the components of eZ 5 as we go. Here\'s a quick overview of what we\'re trying to build:</paragraph><section><header>Data Model</header><paragraph>The model for the blog will be fairly basic. We\'ll have content types of \'blog\' and \'blog_post\'. A Blog will be a simple container for blog posts, and have a name and description. A Blog Post will have fields for title, tagline, summary, body, and tags.</paragraph></section><section><header>Features</header><paragraph>As far as features go, we\'ll keep things pretty basic - a simple display of blog post summaries in reverse chronological order, paginated. I\'d also like to have a way to edit a sidebar (for featured posts) and a footer. </paragraph></section></section><section><header>What you need to follow along</header><paragraph>I\'ve placed all the code for this site <link target=\"_blank\" url_id=\"91\">out on github</link>. I\'ve made a branch for each step of the tutorial. and I\'ll note as we go along which branch you can pull down in order to catch up with the tutorial progress. The \'master\' branch will be the code that this blog is actually running, which may be enhanced with extra features as time goes on. If you see a problem in either, please feel free to send a pull request, and I\'ll update the tutorial accordingly. There are still some things I\'m learning myself, so I\'ve called out some questions along the way. If you have the answer, drop me a note or a comment!</paragraph><paragraph>You\'ll also need a good working environment. Make sure you have all of the requirements for <link target=\"_blank\" url_id=\"99\">Symfony</link> and <link target=\"_blank\" url_id=\"100\">eZ Publish</link> installed.</paragraph><paragraph>Let\'s start by covering some of the <link url_id=\"104\">basics of Symfony</link>.</paragraph></section></section>\n','ezxmltext',571,'eng-US',2,0,'',4),(0,197,107,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>In early February, I had the opportunity to spend some learning some of the ins and outs of working with eZ Publish version 5 at a training event from eZ Systems. Having developed for years in eZ Publish, I knew 5 was going to be a big change, but didn\'t really consider <emphasize>how much</emphasize> change would be involved. After digging in, I found that there\'s a lot to like about the new system. The goal of this series of blog posts will be to help current eZ Publish developers get up to speed. We\'re mostly focusing on developers already familiar with eZ Publish 4, but as long as you have a basic familiarity with the CMS, you should be able to follow along.</paragraph><paragraph>The idea here is to provide a tutorial that will allow you to get up and running quickly with eZ Publish 5, even if you\'re a bit of a neophyte with Symfony (like me). We\'ll cover some basic concepts, and build out a basic site using only eZ Publish 5 concepts wherever possible. Each step of the tutorial has been stored as a branch in github to make it easy to follow along.</paragraph><paragraph>A lot of folks contributed in some way to the creation of this tutorial. Quick thanks to the staff at <link target=\"_blank\" url_id=\"92\">Blend Interactive</link> and <link target=\"_blank\" url_id=\"109\">eZ Systems</link> for their help clarifying and testing, and to <link target=\"_blank\" url_id=\"110\">Damien Pobel</link>, who <link target=\"_blank\" url_id=\"111\">open-sourced</link> the <link target=\"_blank\" url_id=\"112\">planet-ezpublish.fr</link> site, around which much of my own code is based. That codebase proved a good introduction to eZ Publish 5 for me, and this tutorial will show that pedigree.</paragraph><section><header>Some Things To Clear Up</header><paragraph>First things first: Before we get in to code, let\'s address some facts and set aside any preconceived notions about what we\'re getting into: </paragraph><section><section><header>eZ Publish 5 is a Totally New CMS</header><paragraph>If you\'ve read anything about eZ Publish 5, you probably know that most of eZ\'s core components are being replaced by the Symfony framework.</paragraph><paragraph>The version number hints that this new release, like the past major releases, is a continuation of the same system many of us have used for years. And while that system is still around, the \'5\' parts of eZ 5 (the Symfony parts) are all new. In essence, <emphasize>eZ Publish 5 is a ground-up rewrite of the entire</emphasize> CMS. The overall design direction is that where a component of the Symfony stack can be used instead of the counterpart from eZ Publish 4, the eZ Publish 4 component has been replaced. Some examples:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">All interaction is handled via Symfony Controllers</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ templates are replaced by Twig templates</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ini files replaced by yml files</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZjscore replaced by Assetic</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ Publish caching is replaced by Symfony\'s caching</paragraph></li></ul></paragraph><paragraph>The core of the product, the eZ kernel itself, is now accessed via a Public API, which will remain stable in future versions. For developers, this is great news, since it means you\'re no longer hooking into core classes at random and hoping they don\'t change from version to version. </paragraph><paragraph>In general, all of the architectural decisions that version 5 represents are great news. The Symfony community has a great ecosystem and a lot of mature, elegant code. By becoming a part of it, eZ developers spend less time working on the underlying platform components, and more time delivering the best CMS possible. From a business perspective, you\'re more likely to find developers with transferrable skills on Symfony, so it\'s a long-term win on that side as well.</paragraph></section></section><section><section><header>eZ Publish 5 isn\'t a New CMS</header><paragraph>Wait, what? Well, not yet anyway. While all of the pieces are here to build a site in eZ Publish 5, the administrative interface and a lot of the other system components (commenting, front-end editing, etc) have not yet been rewritten on the new stack. So for now, you\'ll be using a lot of the eZ Publish 4 code in your normal workflow. In fact, <strong>all</strong> of the previous eZ Publish code (now rechristened as eZ Publish Legacy) ships as part of eZ Publish 5, right alongside the shiny new Symfony-based kernel. This means that the CMS doesn\'t lose any features as it moves over to the new architecture, but it also means that there are some areas where you need to understand both systems or in some cases, duplicate effort.</paragraph></section></section><section><section><header>You don\'t have to switch right now</header><paragraph>The important thing to remember is that you dont <emphasize>have </emphasize>to start using the new architecture right now, or even this year. The development roadmap calls for the legacy architecture to be available for a long time, and there are a lot of clever methods built in to the Symfony architecture to allow it to fall back to using legacy components somewhat transparently. So you can choose to use as much or as little of the new architecture as you like. </paragraph></section></section></section><section><header>The Project</header><paragraph>The point of this series, though, is to work with the shiny new stuff, so we\'re going to try to use as much of eZ Publish 5\'s Symfony components as we can. And to do that, I\'ve selected a fairly basic project - this blog! Over the next few pages, we\'ll work on building out the templates for the blog, learning the components of eZ 5 as we go. Here\'s a quick overview of what we\'re trying to build:</paragraph><section><header>Data Model</header><paragraph>The model for the blog will be fairly basic. We\'ll have content types of \'blog\' and \'blog_post\'. A Blog will be a simple container for blog posts, and have a name and description. A Blog Post will have fields for title, tagline, summary, body, and tags.</paragraph></section><section><header>Features</header><paragraph>As far as features go, we\'ll keep things pretty basic - a simple display of blog post summaries in reverse chronological order, paginated. I\'d also like to have a way to edit a sidebar (for featured posts) and a footer. </paragraph></section></section><section><header>What you need to follow along</header><paragraph>I\'ve placed all the code for this site <link target=\"_blank\" url_id=\"91\">out on github</link>. I\'ve made a branch for each step of the tutorial. and I\'ll note as we go along which branch you can pull down in order to catch up with the tutorial progress. The \'master\' branch will be the code that this blog is actually running, which may be enhanced with extra features as time goes on. If you see a problem in either, please feel free to send a pull request, and I\'ll update the tutorial accordingly. There are still some things I\'m learning myself, so I\'ve called out some questions along the way. If you have the answer, drop me a note or a comment!</paragraph><paragraph>You\'ll also need a good working environment. Make sure you have all of the requirements for <link target=\"_blank\" url_id=\"99\">Symfony</link> and <link target=\"_blank\" url_id=\"100\">eZ Publish</link> installed.</paragraph><paragraph>Let\'s start by covering some of the <link url_id=\"104\">basics of Symfony</link>.</paragraph></section></section>\n','ezxmltext',571,'eng-US',2,0,'',5),(0,197,107,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>In early February, I had the opportunity to spend some learning some of the ins and outs of working with eZ Publish version 5 at a training event from eZ Systems. Having developed for years in eZ Publish, I knew 5 was going to be a big change, but didn\'t really consider <emphasize>how much</emphasize> change would be involved. After digging in, I found that there\'s a lot to like about the new system. The goal of this series of blog posts will be to help current eZ Publish developers get up to speed. We\'re mostly focusing on developers already familiar with eZ Publish 4, but as long as you have a basic familiarity with the CMS, you should be able to follow along.</paragraph><paragraph>The idea here is to provide a tutorial that will allow you to get up and running quickly with eZ Publish 5, even if you\'re a bit of a neophyte with Symfony (like me). We\'ll cover some basic concepts, and build out a basic site using only eZ Publish 5 concepts wherever possible. Each step of the tutorial has been stored as a branch in github to make it easy to follow along.</paragraph><paragraph>A lot of folks contributed in some way to the creation of this tutorial. Quick thanks to the staff at <link target=\"_blank\" url_id=\"92\">Blend Interactive</link> and <link target=\"_blank\" url_id=\"109\">eZ Systems</link> for their help clarifying and testing, and to <link target=\"_blank\" url_id=\"110\">Damien Pobel</link>, who <link target=\"_blank\" url_id=\"111\">open-sourced</link> the <link target=\"_blank\" url_id=\"112\">planet-ezpublish.fr</link> site, around which much of my own code is based. That codebase proved a good introduction to eZ Publish 5 for me, and this tutorial will show that pedigree.</paragraph><section><header>Some Things To Clear Up</header><paragraph>First things first: Before we get in to code, let\'s address some facts and set aside any preconceived notions about what we\'re getting into: </paragraph><section><section><header>eZ Publish 5 is a Totally New CMS</header><paragraph>If you\'ve read anything about eZ Publish 5, you probably know that most of eZ\'s core components are being replaced by the Symfony framework.</paragraph><paragraph>The version number hints that this new release, like the past major releases, is a continuation of the same system many of us have used for years. And while that system is still around, the \'5\' parts of eZ 5 (the Symfony parts) are all new. In essence, <emphasize>eZ Publish 5 is a ground-up rewrite of the entire</emphasize> CMS. The overall design direction is that where a component of the Symfony stack can be used instead of the counterpart from eZ Publish 4, the eZ Publish 4 component has been replaced. Some examples:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">All interaction is handled via Symfony Controllers</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ templates are replaced by Twig templates</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ini files replaced by yml files</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZjscore replaced by Assetic</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ Publish caching is replaced by Symfony\'s caching</paragraph></li></ul></paragraph><paragraph>The core of the product, the eZ kernel itself, is now accessed via a Public API, which will remain stable in future versions. For developers, this is great news, since it means you\'re no longer hooking into core classes at random and hoping they don\'t change from version to version. </paragraph><paragraph>In general, all of the architectural decisions that version 5 represents are great news. The Symfony community has a great ecosystem and a lot of mature, elegant code. By becoming a part of it, eZ developers spend less time working on the underlying platform components, and more time delivering the best CMS possible. From a business perspective, you\'re more likely to find developers with transferrable skills on Symfony, so it\'s a long-term win on that side as well.</paragraph></section></section><section><section><header>eZ Publish 5 isn\'t a New CMS</header><paragraph>Wait, what? Well, not yet anyway. While all of the pieces are here to build a site in eZ Publish 5, the administrative interface and a lot of the other system components (commenting, front-end editing, etc) have not yet been rewritten on the new stack. So for now, you\'ll be using a lot of the eZ Publish 4 code in your normal workflow. In fact, <strong>all</strong> of the previous eZ Publish code (now rechristened as eZ Publish Legacy) ships as part of eZ Publish 5, right alongside the shiny new Symfony-based kernel. This means that the CMS doesn\'t lose any features as it moves over to the new architecture, but it also means that there are some areas where you need to understand both systems or in some cases, duplicate effort.</paragraph></section></section><section><section><header>You don\'t have to switch right now</header><paragraph>The important thing to remember is that you dont <emphasize>have </emphasize>to start using the new architecture right now, or even this year. The development roadmap calls for the legacy architecture to be available for a long time, and there are a lot of clever methods built in to the Symfony architecture to allow it to fall back to using legacy components somewhat transparently. So you can choose to use as much or as little of the new architecture as you like. </paragraph></section></section></section><section><header>The Project</header><paragraph>The point of this series, though, is to work with the shiny new stuff, so we\'re going to try to use as much of eZ Publish 5\'s Symfony components as we can. And to do that, I\'ve selected a fairly basic project - this blog! Over the next few pages, we\'ll work on building out the templates for the blog, learning the components of eZ 5 as we go. </paragraph></section><section><header>What you need to follow along</header><paragraph>I\'ve placed all the code for this site <link target=\"_blank\" url_id=\"91\">out on github</link>. I\'ve made a branch for each step of the tutorial. and I\'ll note as we go along which branch you can pull down in order to catch up with the tutorial progress. The \'master\' branch will be the code that this blog is actually running, which may be enhanced with extra features as time goes on. If you see a problem in either, please feel free to send a pull request, and I\'ll update the tutorial accordingly. There are still some things I\'m learning myself, so I\'ve called out some questions along the way. If you have the answer, drop me a note or a comment!</paragraph><paragraph>You\'ll also need a good working environment. Make sure you have all of the requirements for <link target=\"_blank\" url_id=\"99\">Symfony</link> and <link target=\"_blank\" url_id=\"100\">eZ Publish</link> installed.</paragraph><paragraph>Let\'s start by covering some of the <link url_id=\"104\">basics of Symfony</link>.</paragraph></section></section>\n','ezxmltext',571,'eng-US',2,0,'',6),(0,198,107,0,1360757400,'','ezdatetime',572,'eng-US',2,1360757400,'',1),(0,198,107,0,1360757400,'','ezdatetime',572,'eng-US',2,1360757400,'',2),(0,198,107,0,1360757400,'','ezdatetime',572,'eng-US',2,1360757400,'',3),(0,198,107,0,1360757400,'','ezdatetime',572,'eng-US',2,1360757400,'',4),(0,198,107,0,1360757400,'','ezdatetime',572,'eng-US',2,1360757400,'',5),(0,198,107,0,1360757400,'','ezdatetime',572,'eng-US',2,1360757400,'',6),(0,200,107,1,1,'','ezcomcomments',573,'eng-US',2,0,'',1),(0,200,107,1,1,'','ezcomcomments',573,'eng-US',2,0,'',2),(0,200,107,1,1,'','ezcomcomments',573,'eng-US',2,0,'',3),(0,200,107,1,1,'','ezcomcomments',573,'eng-US',2,0,'',4),(0,200,107,1,1,'','ezcomcomments',573,'eng-US',2,0,'',5),(0,200,107,1,1,'','ezcomcomments',573,'eng-US',2,0,'',6),(0,196,108,0,NULL,'Working with eZ Publish 5 - Symfony','ezstring',574,'eng-US',2,0,'working with ez publish 5 - symfony',1),(0,196,108,0,NULL,'Working with eZ Publish 5 - Symfony','ezstring',574,'eng-US',2,0,'working with ez publish 5 - symfony',2),(0,196,108,0,NULL,'Working with eZ Publish 5 - Symfony','ezstring',574,'eng-US',2,0,'working with ez publish 5 - symfony',3),(0,303,108,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Part 2 of X - Just enough Symfony to be dangerous</paragraph></section>','ezxmltext',575,'eng-US',2,0,'',1),(0,303,108,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Part 2 of X - Just enough Symfony to be dangerous</paragraph></section>\n','ezxmltext',575,'eng-US',2,0,'',2),(0,303,108,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Part 2 of X - Just enough Symfony to be dangerous</paragraph></section>\n','ezxmltext',575,'eng-US',2,0,'',3),(0,197,108,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Before we dig in and start building a new site, let\'s look over some of the core concepts in Symfony. If you\'ve already got a good handle on Symfony, and aren\'t interested in some of the conceptual changes from eZ Publish 4, you can skip ahead to the next post and start getting your hands dirty.</paragraph><section><header>Model-View-Controller</header><paragraph>If you\'ve worked with Rails, ASP.Net MVC (or to a lesser degree, CakePHP) then you\'re probably familiar with the Model-View-Controller pattern. It provides a standard framework for building PHP applications in a common, organized way. When a request is received, it\'s directed to Symfony, which routes the request to an <strong>action</strong>on a <strong>controller</strong>, which is really just a function defined by the app developer. This function gathers up whatever variables are needed to handle the request from a set of <strong>model</strong> objects. The model objects represent whatever systems the app stores data in (database calls, web APIs, punch cards, whatever). The controller hands back the data it\'s gathered, which is handled by the <strong>view</strong>, which is a template language that\'s used to format the response. </paragraph><paragraph>This all sounds pretty complicated, but in practice it\'s fairly straightforward. If you want your app to render some database output to a page, for example, you simply write a function on a controller class that returns an array containing the data you want to use, then write a template (in Symfony, the Twig templating language is used) that contains the HTML for your page. Using eZ Publish, it\'s even easier since for most pages, you\'ll be using a controller provided by eZ Publish. </paragraph><paragraph>The main principles that drive MVC architecture are <emphasize>separation of concerns</emphasize> and <emphasize>don\'t repeat yourself (DRY)</emphasize>. Since the job of fetching the data for the response (controller) is separate from the format of the response (view), it\'s very easy to change the appearance of the response, or even use JSON, XML, or something else instead of javascript. </paragraph><paragraph>Symfony adds another layer on top of MVC by packaging most of the app components into <emphasize>Bundles</emphasize>, which are directories that organize code around specific aspects of the application. This is sometimes referred to as HMVC (Hierarchical Model-View-Controller). This makes it easier for you to re-use code that other people have written by installing their bundles in to your project.</paragraph></section><section><header>Big Changes from eZ Publish 4</header><paragraph>If you\'re coming to eZ Publish 5 from version 4, there are some major changes that may trip you up unless you\'re looking for them.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><custom name=\"factbox\" custom:title=\"Note\" custom:align=\"right\"><paragraph>Wherever we\'re talking about \'eZ Publish 5\' here, keep in mind that we\'re only talking about the new, Symfony parts of eZ Publish 5. eZ Publish 4 is still there and uses all of the old concepts just as they\'ve always been.</paragraph></custom></paragraph><section><header>Twig</header><paragraph>The half-Smarty half-PHP template language PHP has used for years is being deprecated in favor of Twig, the template language closely associated with the Symfony framework. Twig templates will look pretty familiar, but function quite a bit differently under the hood. Twig provides some neat new features too, like template inheritance. Both the language itself and the means to extend it are well documented. </paragraph></section><section><header>No more fetch() function</header><paragraph>In eZ Publish 4, if you wanted to pull some extra content from the repository in to your template, you simply called fetch, like so: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal> {def $posts = fetch(content, list, hash(parent_node_id, 2, class_filter_type, \'include\', class_filter_array, array(\'blog_post\')))}</literal></paragraph><paragraph>This is handy, but the problem that arises is that you\'ve no longer separated your concerns. Your view template is now talking directly to the model and handling application logic. Over the years, eZ Publish 4 templates became more and more loaded with logic code, which lead to big, hairy, hard to read templates.</paragraph><paragraph>In the eZ Publish 5 approach, extra data is handled as a nested request to the CMS (a <emphasize>sub-request</emphasize>). This means that you\'ll write the query to retrieve the data as PHP in a controller action, and provide a template to render the results. This sounds like a bit more work, but it leads to better template re-use, and it also gives you a chance to keep any of the complex logic (like turning a list of events into a calendar) out of the template.</paragraph></section><section><header>Single-pass rendering</header><paragraph>Most eZ Publish 4 developers know that a page in eZ 4 is rendered in two steps: the system first renders the \'module result\' (the \'full view\' template of a content object) and then passes the result of that as HTML to a \'pagelayout\', which renders the page surround. If you want the pagelayout template to have access to variables used by the interior template, you need to either pass those variables in a specific structure, or fetch them again. </paragraph><paragraph>In Twig, only one render step occurs for each request (ignoring sub-requests for the moment). The template language provides an inheritance model similar to classes and methods in PHP that still allows you to re-use your template code.</paragraph></section><section><header>Simplified cache</header><paragraph>In eZ Publish 4, there were a lot of pieces involved in caching a page - template cache, block cache, view cache, etc. eZ Publish 5 uses Symfony\'s native caching layer, and for the most part only caches entire requests. Symfony also adheres very closely to the HTTP specification to determine how this cache is managed, so if you\'re not up to speed on HTTP Headers like <link target=\"_blank\" anchor_name=\"sec14.9\" url_id=\"94\">Cache-Control</link> and <link target=\"_blank\" url_id=\"95\">ETag</link>, you\'ll want to brush up before you begin any serious development - but we can skip that stuff for now.</paragraph><paragraph>Let\'s move on and set up an eZ Publish 5 installation.</paragraph></section></section></section>','ezxmltext',576,'eng-US',2,0,'',1),(0,197,108,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Before we dig in and start building a new site, let\'s look over some of the core concepts in Symfony. If you\'ve already got a good handle on Symfony, and aren\'t interested in some of the conceptual changes from eZ Publish 4, you can skip ahead to the next post and start getting your hands dirty.</paragraph><section><header>Model-View-Controller</header><paragraph>If you\'ve worked with Rails, ASP.Net MVC (or to a lesser degree, CakePHP) then you\'re probably familiar with the Model-View-Controller pattern. It provides a standard framework for building PHP applications in a common, organized way. When a request is received, it\'s directed to Symfony, which routes the request to an <strong>action </strong>on a <strong>controller</strong>, which is really just a function defined by the app developer. This function gathers up whatever variables are needed to handle the request from a set of <strong>model</strong> objects. The model objects represent whatever systems the app stores data in (database calls, web APIs, punch cards, whatever). The controller hands back the data it\'s gathered, which is handled by the <strong>view</strong>, which is a template language that\'s used to format the response. </paragraph><paragraph>This all sounds pretty complicated, but in practice it\'s fairly straightforward. If you want your app to render some database output to a page, for example, you simply write a function on a controller class that returns an array containing the data you want to use, then write a template (in Symfony, the Twig templating language is used) that contains the HTML for your page. Using eZ Publish, it\'s even easier since for most pages, you\'ll be using a controller provided by eZ Publish. </paragraph><paragraph>The main principles that drive MVC architecture are <emphasize>separation of concerns</emphasize> and <emphasize>don\'t repeat yourself (DRY)</emphasize>. Since the job of fetching the data for the response (controller) is separate from the format of the response (view), it\'s very easy to change the appearance of the response, or even use JSON, XML, or something else instead of javascript. </paragraph><paragraph>Symfony adds another layer on top of MVC by packaging most of the app components into <emphasize>Bundles</emphasize>, which are directories that organize code around specific aspects of the application. This is sometimes referred to as HMVC (Hierarchical Model-View-Controller). This makes it easier for you to re-use code that other people have written by installing their bundles in to your project.</paragraph></section><section><header>Big Changes from eZ Publish 4</header><paragraph>If you\'re coming to eZ Publish 5 from version 4, there are some major changes that may trip you up unless you\'re looking for them.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><custom name=\"factbox\" custom:title=\"Note\" custom:align=\"right\"><paragraph>Wherever we\'re talking about \'eZ Publish 5\' here, keep in mind that we\'re only talking about the new, Symfony parts of eZ Publish 5. eZ Publish 4 is still there and uses all of the old concepts just as they\'ve always been.</paragraph></custom></paragraph><section><header>Twig</header><paragraph>The half-Smarty half-PHP template language PHP has used for years is being deprecated in favor of Twig, the template language closely associated with the Symfony framework. Twig templates will look pretty familiar, but function quite a bit differently under the hood. Twig provides some neat new features too, like template inheritance. Both the language itself and the means to extend it are well documented. </paragraph></section><section><header>No more fetch() function</header><paragraph>In eZ Publish 4, if you wanted to pull some extra content from the repository in to your template, you simply called fetch, like so: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal> {def $posts = fetch(content, list, hash(parent_node_id, 2, class_filter_type, \'include\', class_filter_array, array(\'blog_post\')))}</literal></paragraph><paragraph>This is handy, but the problem that arises is that you\'ve no longer separated your concerns. Your view template is now talking directly to the model and handling application logic. Over the years, eZ Publish 4 templates became more and more loaded with logic code, which lead to big, hairy, hard to read templates.</paragraph><paragraph>In the eZ Publish 5 approach, extra data is handled as a nested request to the CMS (a <emphasize>sub-request</emphasize>). This means that you\'ll write the query to retrieve the data as PHP in a controller action, and provide a template to render the results. This sounds like a bit more work, but it leads to better template re-use, and it also gives you a chance to keep any of the complex logic (like turning a list of events into a calendar) out of the template.</paragraph></section><section><header>Single-pass rendering</header><paragraph>Most eZ Publish 4 developers know that a page in eZ 4 is rendered in two steps: the system first renders the \'module result\' (the \'full view\' template of a content object) and then passes the result of that as HTML to a \'pagelayout\', which renders the page surround. If you want the pagelayout template to have access to variables used by the interior template, you need to either pass those variables in a specific structure, or fetch them again. </paragraph><paragraph>In Twig, only one render step occurs for each request (ignoring sub-requests for the moment). The template language provides an inheritance model similar to classes and methods in PHP that still allows you to re-use your template code.</paragraph></section><section><header>Simplified cache</header><paragraph>In eZ Publish 4, there were a lot of pieces involved in caching a page - template cache, block cache, view cache, etc. eZ Publish 5 uses Symfony\'s native caching layer, and for the most part only caches entire requests. Symfony also adheres very closely to the HTTP specification to determine how this cache is managed, so if you\'re not up to speed on HTTP Headers like <link target=\"_blank\" url_id=\"94\" anchor_name=\"sec14.9\">Cache-Control</link> and <link target=\"_blank\" url_id=\"95\">ETag</link>, you\'ll want to brush up before you begin any serious development - but we can skip that stuff for now.</paragraph><paragraph>Let\'s move on and <link node_id=\"111\">set up an eZ Publish 5 installation</link>.</paragraph></section></section></section>\n','ezxmltext',576,'eng-US',2,0,'',2),(0,197,108,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Before we dig in and start building a new site, let\'s look over some of the core concepts in Symfony. If you\'ve already got a good handle on Symfony, and aren\'t interested in some of the conceptual changes from eZ Publish 4, you can skip ahead to the next post and start getting your hands dirty.</paragraph><section><header>Model-View-Controller</header><paragraph>If you\'ve worked with Rails, ASP.Net MVC (or to a lesser degree, CakePHP) then you\'re probably familiar with the Model-View-Controller pattern. It provides a standard framework for building PHP applications in a common, organized way. When a request is received, it\'s directed to Symfony, which routes the request to an <strong>action </strong>on a <strong>controller</strong>, which is really just a function defined by the app developer. This function gathers up whatever variables are needed to handle the request from a set of <strong>model</strong> objects. The model objects represent whatever systems the app stores data in (database calls, web APIs, punch cards, whatever). The controller hands back the data it\'s gathered, which is handled by the <strong>view</strong>, which is a template language that\'s used to format the response. </paragraph><paragraph>This all sounds pretty complicated, but in practice it\'s fairly straightforward. If you want your app to render some database output to a page, for example, you simply write a function on a controller class that returns an array containing the data you want to use, then write a template (in Symfony, the Twig templating language is used) that contains the HTML for your page. Using eZ Publish, it\'s even easier since for most pages, you\'ll be using a controller provided by eZ Publish. </paragraph><paragraph>The main principles that drive MVC architecture are <emphasize>separation of concerns</emphasize> and <emphasize>don\'t repeat yourself (DRY)</emphasize>. Since the job of fetching the data for the response (controller) is separate from the format of the response (view), it\'s very easy to change the appearance of the response, or even use JSON, XML, or something else instead of javascript. </paragraph><paragraph>Symfony adds another layer on top of MVC by packaging most of the app components into <emphasize>Bundles</emphasize>, which are directories that organize code around specific aspects of the application. This is sometimes referred to as HMVC (Hierarchical Model-View-Controller). This makes it easier for you to re-use code that other people have written by installing their bundles in to your project.</paragraph></section><section><header>Big Changes from eZ Publish 4</header><paragraph>If you\'re coming to eZ Publish 5 from version 4, there are some major changes that may trip you up unless you\'re looking for them.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><custom name=\"factbox\" custom:title=\"Note\" custom:align=\"right\"><paragraph>Wherever we\'re talking about \'eZ Publish 5\' here, keep in mind that we\'re only talking about the new, Symfony parts of eZ Publish 5. eZ Publish 4 is still there and uses all of the old concepts just as they\'ve always been.</paragraph></custom></paragraph><section><header>Twig</header><paragraph>The half-Smarty half-PHP template language PHP has used for years is being deprecated in favor of Twig, the template language closely associated with the Symfony framework. Twig templates will look pretty familiar, but function quite a bit differently under the hood. Twig provides some neat new features too, like template inheritance. Both the language itself and the means to extend it are well documented. </paragraph></section><section><header>No more fetch() function</header><paragraph>In eZ Publish 4, if you wanted to pull some extra content from the repository in to your template, you simply called fetch, like so: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal> {def $posts = fetch(content, list, hash(parent_node_id, 2, class_filter_type, \'include\', class_filter_array, array(\'blog_post\')))}</literal></paragraph><paragraph>This is handy, but the problem that arises is that you\'ve no longer separated your concerns. Your view template is now talking directly to the model and handling application logic. Over the years, eZ Publish 4 templates became more and more loaded with logic code, which lead to big, hairy, hard to read templates.</paragraph><paragraph>In the eZ Publish 5 approach, extra data is handled as a nested request to the CMS (a <emphasize>sub-request</emphasize>). This means that you\'ll write the query to retrieve the data as PHP in a controller action, and provide a template to render the results. This sounds like a bit more work, but it leads to better template re-use, and it also gives you a chance to keep any of the complex logic (like turning a list of events into a calendar) out of the template.</paragraph></section><section><header>Single-pass rendering</header><paragraph>Most eZ Publish 4 developers know that a page in eZ 4 is rendered in two steps: the system first renders the \'module result\' (the \'full view\' template of a content object) and then passes the result of that as HTML to a \'pagelayout\', which renders the page surround. If you want the pagelayout template to have access to variables used by the interior template, you need to either pass those variables in a specific structure, or fetch them again. </paragraph><paragraph>In Twig, only one render step occurs for each request (ignoring sub-requests for the moment). The template language provides an inheritance model similar to classes and methods in PHP that still allows you to re-use your template code.</paragraph></section><section><header>Simplified cache</header><paragraph>In eZ Publish 4, there were a lot of pieces involved in caching a page - template cache, block cache, view cache, etc. eZ Publish 5 uses Symfony\'s native caching layer, and for the most part only caches entire requests. Symfony also adheres very closely to the HTTP specification to determine how this cache is managed, so if you\'re not up to speed on HTTP Headers like <link target=\"_blank\" url_id=\"94\" anchor_name=\"sec14.9\">Cache-Control</link> and <link target=\"_blank\" url_id=\"95\">ETag</link>, you\'ll want to brush up before you begin any serious development - but we can skip that stuff for now.</paragraph><paragraph>Let\'s move on and <link url_id=\"113\">set up an eZ Publish 5 installation</link>.</paragraph></section></section></section>\n','ezxmltext',576,'eng-US',2,0,'',3),(0,198,108,0,1360874400,'','ezdatetime',577,'eng-US',2,1360874400,'',1),(0,198,108,0,1360874400,'','ezdatetime',577,'eng-US',2,1360874400,'',2),(0,198,108,0,1360874400,'','ezdatetime',577,'eng-US',2,1360874400,'',3),(0,200,108,1,1,'','ezcomcomments',578,'eng-US',2,0,'',1),(0,200,108,1,1,'','ezcomcomments',578,'eng-US',2,0,'',2),(0,200,108,1,1,'','ezcomcomments',578,'eng-US',2,0,'',3),(0,196,109,0,NULL,'Working with eZ Publish 5 - Setup','ezstring',579,'eng-US',2,0,'working with ez publish 5 - setup',1),(0,196,109,0,NULL,'Working with eZ Publish 5 - Setup','ezstring',579,'eng-US',2,0,'working with ez publish 5 - setup',2),(0,196,109,0,NULL,'Working with eZ Publish 5 - Setup','ezstring',579,'eng-US',2,0,'working with ez publish 5 - setup',3),(0,303,109,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Part 3 of X - Getting Things up and running</paragraph></section>','ezxmltext',580,'eng-US',2,0,'',1),(0,303,109,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Part 3 of X - Getting Things up and running</paragraph></section>\n','ezxmltext',580,'eng-US',2,0,'',2),(0,303,109,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Part 3 of X - Getting Things up and running</paragraph></section>\n','ezxmltext',580,'eng-US',2,0,'',3),(0,197,109,0,1045487555,'<?xml version=\"1.0\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><section><header>Requirements</header><paragraph>I\'m assuming that you already have a decent Apache, Mysql, and PHP setup running and configured for setting up virtual hosts. You\'ll want to have at least PHP 5.3.8 and MySQL 5.0.51, and some version of ImageMagick. On a Mac, Homebrew is a quick way to get most of this up and running. Vagrant is also a great way to provide a performant virtual environment to use as a development sandbox.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><custom name=\"factbox\" custom:title=\"Note\" custom:align=\"right\"><paragraph>Most of these setup steps are covered in more detail and variety by the <link target=\"_blank\" url_id=\"96\">eZ Publish online documentation</link>.</paragraph></custom></paragraph></section><section><header>Downloading</header><paragraph>First off, download <link target=\"_blank\" url_id=\"97\">eZ Publish Community Edition 2012.12</link>, and unzip it into a folder. Here\'s what you get:</paragraph><paragraph><embed align=\"left\" view=\"embed\" size=\"original\" custom:offset=\"10\" custom:limit=\"5\" object_id=\"110\"/></paragraph><paragraph>So what are we looking at here? Let\'s talk about a couple of these pieces:&#xA0;</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">composer.* - These are files for using the <link url_id=\"98\">composer PHP dependency management system</link>. It\'s very handy for maintaining projects with a lot of third-party libraries, but we\'ll ignore it for this tutorial so we\'re all using the same version of everything.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish - This is where the config, cache, and some logging components of eZ Publish live (this directory is called \'app\' in most Symfony installs)</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy - Take a peek in here - Look, it\'s our old friend eZ Publish 4! This is a full eZ 4 install, slightly updated.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">src- This is where we\'ll be building out our code, in structures called&#xA0;<emphasize>bundles</emphasize>. There\'s a bundle already there, the EzSystemsDemoBundle, that implements a basic surround in symfony.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">vendor - This is where most of the supporting third-party frameworks live, including components of Symfony and eZ Publish.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">web - This is where you\'ll point Apache to as a web root. We\'ll set up Rewrite rules shortly to send most of our traffic to index.php, which is the endpoint that handles all requests to Symfony.</paragraph></li></ul></paragraph></section><section><header>Apache Config</header><paragraph>Here\'s a basic apache config to use for development - don\'t copy this one to your production environment.&#xA0;</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal>&lt;VirtualHost *:80&gt;     DocumentRoot [PATH_TO_EZPUBLISH]/web/    ServerName [SERVER_NAME]    ServerAlias [SERVER_ALIAS]    &lt;Directory [PATH_TO_EZPUBLISH]/web&gt;        Options FollowSymLinks        AllowOverride None\n        Allow From All    &lt;/Directory&gt;     # Configures some PHP settings - most of these should be your defaults anyway    &lt;IfModule mod_php5.c&gt;        php_admin_flag safe_mode Off        php_admin_value register_globals 0        php_value magic_quotes_gpc 0        php_value magic_quotes_runtime 0        php_value allow_call_time_pass_reference 0    &lt;/IfModule&gt;     DirectoryIndex index.php     RewriteEngine On    # CVE-2012-6432    RewriteRule ^/_internal - [R=403,L]    # Send requests for version 1 of eZ\'s REST API to the legacy code    RewriteRule ^/api/[^/]+/v1/ /index_rest.php [L]    # Don\'t rewrite some paths used by legacy eZ Publish    RewriteRule ^/var/([^/]+/)?storage/images(-versioned)?/.* - [L]    RewriteRule ^/var/([^/]+/)?cache/(texttoimage|public)/.* - [L]    RewriteRule ^/design/[^/]+/(stylesheets|images|javascript|fonts)/.* - [L]    RewriteRule ^/share/icons/.* - [L]    RewriteRule ^/extension/[^/]+/design/[^/]+/(stylesheets|flash|images|lib|javascripts?)/.* - [L]    RewriteRule ^/packages/styles/.+/(stylesheets|images|javascript)/[^/]+/.* - [L]    RewriteRule ^/packages/styles/.+/thumbnail/.* - [L]    RewriteRule ^/var/storage/packages/.* - [L]    # Don\'t rewrite for some web-standard files    RewriteRule ^/favicon\\.ico - [L]    RewriteRule ^/robots\\.txt - [L]    RewriteRule ^/w3c/p3p\\.xml - [L]    # Don\'t rewrite for some assets in bundles    RewriteRule ^/bundles/ - [L]    # Send everything else to the development version of the router    RewriteRule .* /index_dev.php &lt;/VirtualHost&gt;\n&#xA0;\n\n</literal></paragraph><paragraph>Note that you need to replace [PATH_TO_EZPUBLISH], [SERVER_NAME], and [SERVER_ALIAS] with your own values.&#xA0;</paragraph><section><header>MySQL</header><paragraph>You don\'t have to do much configuration for MySQL, but you should create a new database to work with, and set up a user name and password.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal>CREATE DATABASE partialcontent CHARSET utf8;\nGRANT ALL ON partialcontent.* TO &lt;a href=\"mailto:pcdb_user@localhost\"&gt;pcdb_user@localhost&lt;/a&gt; identified by \'YOUR_PASSWORD_HERE\';\nFLUSH PRIVILEGES;</literal></paragraph></section><section><header>Symfony</header><paragraph>First, make sure that the following folders and all their contents are writable by the web server:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish/cache</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish/logs</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish/config</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy/design</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy/extension</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy/settings</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy/var</paragraph></li></ul></paragraph><paragraph>Next, we need to make sure all of the static assets needed by the system (javascript, css, images, etc) are available under the \'web\' folder. Fortunately, eZ provides Symfony console commands to take care of this for us. Go to the root of your project in your console (the directory that contains \'ezpublish\', \'ezpublish_legacy\', \'web\', etc) and run this command:&#xA0;</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal>php ezpublish/console&#xA0;</literal></paragraph><paragraph>What you\'ll see is a help text and a list of available commands. The ones we\'re looking for are the ones to install assets. Go ahead and run these two:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal>php ezpublish/console&#xA0;assets:install --symlink\nphp ezpublish/console ezpublish:legacy:assets_install --symlink</literal></paragraph><paragraph>There are a lot more things that the console can do for us, but we\'ll come back to it later. For now, go ahead and access the site in your web browser.</paragraph><paragraph>If you played your cards right, you should have something:&#xA0;</paragraph><paragraph><embed view=\"embed\" size=\"reference\" custom:offset=\"0\" custom:limit=\"5\" object_id=\"111\"/></paragraph><paragraph>If you\'ve worked with eZ Publish before, this will look pretty familiar: It\'s the eZ Publish setup wizard. Follow the steps of the wizard to set up your site. I\'d recommend making a couple of choices so that you can follow along with the tutorial:&#xA0;</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Enter your DB credentials that you defined earlier in the \'database initialization\' step.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Under \'Site Package\', select \'eZ Publish Demo Site\' (this step takes a while and requires an internet connection as additional features are downloaded)</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">For \'Site Access Configuration\', select \'URL\'</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Under \'Site Details\', leave the \'user path\' and \'admin path\' as-is, but make sure to select the database you created earlier.</paragraph></li></ul></paragraph><paragraph>Once you\'ve completed the wizard, you should have a running site!</paragraph><paragraph><embed view=\"embed\" size=\"reference\" custom:offset=\"0\" custom:limit=\"5\" object_remote_id=\"822808b65df9f4d3bd6ed116fb834516\"/></paragraph></section></section></section>\n','ezxmltext',581,'eng-US',2,0,'',1),(0,197,109,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><section><header>About The Project</header><paragraph>This tutorial started because I wanted to start a blog - and one of the first things I wanted to blog about was building a site with eZ Publish 5. So it seemed natural to use building a blog as an example in the tutorial. So throughout this code we\'ll be building the very blog you\'re reading. While I wrote the tutorial and the blog, I saved branches in the code to make it easier to follow along.</paragraph></section><section><header>Requirements</header><paragraph>I\'m assuming that you already have a decent Apache, Mysql, and PHP setup running and configured for setting up virtual hosts. You\'ll want to have at least PHP 5.3.8 and MySQL 5.0.51, and some version of ImageMagick. On a Mac, Homebrew is a quick way to get most of this up and running. Vagrant is also a great way to provide a performant virtual environment to use as a development sandbox. You\'ll also need to have git installed to retrieve the tutorial code.</paragraph><paragraph>The tutorial assumes that you\'re running Mysql locally, and that the site is in a directory called /Sites/partialcontent. If you\'re placing it somewhere else, you\'ll need to make some adjustments, and I\'ll try to point those out.</paragraph></section><section><header>Installing the site</header><paragraph>To retrieve the code for the tutorial, create a \'/Sites\' directory, \'cd\' to it in your terminal, and pull a copy of the repository from github:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_php\">git clone git@github.com:blendinteractive/partialcontent.git</literal></paragraph><paragraph>Then, \'cd\' to \'partialcontent\' and check out the initial tutorial branch:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">git checkout-b tutorial-start tutorial-start </literal></paragraph><paragraph>In the /Sites/partialcontent directory, you\'ll now have a few new subdirectories. The notable ones: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">conf - Apache configuration</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">htdocs - Here\'s where eZ Publish is set up</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">sql - A set of sql files for working with the tutorial</paragraph></li></ul></paragraph><section><header>Hosts File</header><paragraph>Modify your computer\'s hosts file (\'/etc/hosts\' on most machines) and add lines for \'partialcontent.local\' and \'admin.partialcontent.local\' to point at your localhost: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">127.0.0.1 partialcontent.local admin.partialcontent.local </literal></paragraph></section><section><header>Apache Config</header><paragraph>Include the Apache virtual host config stored in conf/local.conf in your Apache configuration. Edit the paths if your site isn\'t at /Sites/partialcontent. Make sure you restart Apache.</paragraph><paragraph><strong>MySQL</strong></paragraph><paragraph>Create a new database and user in your MySQL server:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal>CREATE DATABASE partialcontent CHARSET utf8;\nGRANT ALL ON partialcontent.* TO &lt;a href=\"mailto:pcdb_user@localhost\"&gt;pcdb_user@localhost&lt;/a&gt; identified by \'insertrealpasswordhere\';\nFLUSH PRIVILEGES;</literal></paragraph><paragraph>Load the provided sample data in the SQL folder. We\'ll start with \'initial.sql\', which is a clean install containing demo content. </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">cat sql/initial.sql | mysql -u partialcontent -p partialcontent </literal></paragraph><paragraph>Make sure to enter the password for your partialcontent user (\'insertrealpasswordhere\') at the prompt.</paragraph></section></section><section><header><strong>Symfony</strong></header><paragraph>First, make sure that the following folders and all their contents are writable by the web server:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish/cache</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish/logs</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish/config</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy/design</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy/extension</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy/settings</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy/var</paragraph></li></ul></paragraph><paragraph>Next, we need to make sure all of the static assets needed by the system (javascript, css, images, etc) are available under the \'web\' folder. Fortunately, eZ provides Symfony console commands to take care of this for us. Go to the root of your project in your console (the directory that contains \'ezpublish\', \'ezpublish_legacy\', \'web\', etc) and run this command: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal>php ezpublish/console </literal></paragraph><paragraph>What you\'ll see is a help text and a list of available commands. The ones we\'re looking for are the ones to install assets. Go ahead and run these two:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal>php ezpublish/console assets:install --symlink\nphp ezpublish/console ezpublish:legacy:assets_install --symlink</literal></paragraph><paragraph>There are a lot more things that the console can do for us, but we\'ll come back to it later. For now, go ahead and access the site in your web browser.</paragraph><paragraph>If you played your cards right, you should have something like this:</paragraph><paragraph><embed view=\"embed\" size=\"reference\" object_id=\"116\" custom:offset=\"0\" custom:limit=\"5\"/> </paragraph></section><section><header>Organization</header><paragraph><embed align=\"left\" view=\"embed\" size=\"original\" object_id=\"110\" custom:offset=\"10\" custom:limit=\"5\"/></paragraph><paragraph>Go ahead and go in to the \'htdocs\' folder. There are a lot of directories there. So what are we looking at? Let\'s talk about a couple of these pieces: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">composer.* - These are files for using the <link url_id=\"98\">composer PHP dependency management system</link>. It\'s very handy for maintaining projects with a lot of third-party libraries, but we\'ll ignore it for this tutorial so we\'re all using the same version of everything.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish - This is where the config, cache, and some logging components of eZ Publish live (this directory is called \'app\' in most Symfony installs)</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy - Take a peek in here - Look, it\'s our old friend eZ Publish 4! This is a full eZ 4 install, slightly updated.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">src- This is where we\'ll be building out our code, in structures called <emphasize>bundles</emphasize>. There\'s a bundle already there, the EzSystemsDemoBundle, that implements a basic surround in symfony.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">vendor - This is where most of the supporting third-party frameworks live, including components of Symfony and eZ Publish.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">web - This is where you\'ll point Apache to as a web root. We\'ll set up Rewrite rules shortly to send most of our traffic to index.php, which is the endpoint that handles all requests to Symfony.</paragraph></li></ul></paragraph></section></section>\n','ezxmltext',581,'eng-US',2,0,'',2),(0,197,109,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><section><header>About The Project</header><paragraph>This tutorial started because I wanted to start a blog - and one of the first things I wanted to blog about was building a site with eZ Publish 5. So it seemed natural to use building a blog as an example in the tutorial. So throughout this code we\'ll be building the very blog you\'re reading. While I wrote the tutorial and the blog, I saved branches in the code to make it easier to follow along.</paragraph></section><section><header>Requirements</header><paragraph>I\'m assuming that you already have a decent Apache, Mysql, and PHP setup running and configured for setting up virtual hosts. You\'ll want to have at least PHP 5.3.8 and MySQL 5.0.51, and some version of ImageMagick. On a Mac, Homebrew is a quick way to get most of this up and running. Vagrant is also a great way to provide a performant virtual environment to use as a development sandbox. You\'ll also need to have git installed to retrieve the tutorial code.</paragraph><paragraph>The tutorial assumes that you\'re running Mysql locally, and that the site is in a directory called /Sites/partialcontent. If you\'re placing it somewhere else, you\'ll need to make some adjustments, and I\'ll try to point those out.</paragraph></section><section><header>Installing the site</header><paragraph>To retrieve the code for the tutorial, create a \'/Sites\' directory, \'cd\' to it in your terminal, and pull a copy of the repository from github:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_php\">git clone git@github.com:blendinteractive/partialcontent.git</literal></paragraph><paragraph>Then, \'cd\' to \'partialcontent\' and check out the initial tutorial branch:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">git checkout-b tutorial-start tutorial-start </literal></paragraph><paragraph>In the /Sites/partialcontent directory, you\'ll now have a few new subdirectories. The notable ones: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">conf - Apache configuration</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">htdocs - Here\'s where eZ Publish is set up</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">sql - A set of sql files for working with the tutorial</paragraph></li></ul></paragraph><section><header>Hosts File</header><paragraph>Modify your computer\'s hosts file (\'/etc/hosts\' on most machines) and add lines for \'partialcontent.local\' and \'admin.partialcontent.local\' to point at your localhost: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">127.0.0.1 partialcontent.local admin.partialcontent.local </literal></paragraph></section><section><header>Apache Config</header><paragraph>Include the Apache virtual host config stored in conf/local.conf in your Apache configuration. Edit the paths if your site isn\'t at /Sites/partialcontent. Make sure you restart Apache.</paragraph><paragraph><strong>MySQL</strong></paragraph><paragraph>Create a new database and user in your MySQL server:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal>CREATE DATABASE partialcontent CHARSET utf8;\nGRANT ALL ON partialcontent.* TO &lt;a href=\"mailto:pcdb_user@localhost\"&gt;pcdb_user@localhost&lt;/a&gt; identified by \'insertrealpasswordhere\';\nFLUSH PRIVILEGES;</literal></paragraph><paragraph>Load the provided sample data in the SQL folder. We\'ll start with \'initial.sql\', which is a clean install containing demo content. </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">cat sql/initial.sql | mysql -u partialcontent -p partialcontent </literal></paragraph><paragraph>Make sure to enter the password for your partialcontent user (\'insertrealpasswordhere\') at the prompt.</paragraph></section></section><section><header><strong>Symfony</strong></header><paragraph>First, make sure that the following folders and all their contents are writable by the web server:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish/cache</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish/logs</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish/config</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy/design</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy/extension</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy/settings</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy/var</paragraph></li></ul></paragraph><paragraph>Next, we need to make sure all of the static assets needed by the system (javascript, css, images, etc) are available under the \'web\' folder. Fortunately, eZ provides Symfony console commands to take care of this for us. Go to the root of your project in your console (the directory that contains \'ezpublish\', \'ezpublish_legacy\', \'web\', etc) and run this command: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal>php ezpublish/console </literal></paragraph><paragraph>What you\'ll see is a help text and a list of available commands. The ones we\'re looking for are the ones to install assets. Go ahead and run these two:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal>php ezpublish/console assets:install --symlink\nphp ezpublish/console ezpublish:legacy:assets_install --symlink</literal></paragraph><paragraph>There are a lot more things that the console can do for us, but we\'ll come back to it later. For now, go ahead and access the site in your web browser.</paragraph><paragraph>If you played your cards right, you should have something like this running at <link url_id=\"105\">http://partialcontent.local</link> :</paragraph><paragraph><embed view=\"embed\" size=\"reference\" object_id=\"116\" custom:offset=\"0\" custom:limit=\"5\"/> </paragraph></section><section><header>Organization</header><paragraph><embed align=\"left\" view=\"embed\" size=\"original\" object_id=\"110\" custom:offset=\"10\" custom:limit=\"5\"/></paragraph><paragraph>Go ahead and go in to the \'htdocs\' folder. There are a lot of directories there. So what are we looking at? Let\'s talk about a couple of these pieces: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">composer.* - These are files for using the <link url_id=\"98\">composer PHP dependency management system</link>. It\'s very handy for maintaining projects with a lot of third-party libraries, but we\'ll ignore it for this tutorial so we\'re all using the same version of everything.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish - This is where the config, cache, and some logging components of eZ Publish live (this directory is called \'app\' in most Symfony installs)</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy - Take a peek in here - Look, it\'s our old friend eZ Publish 4! This is a full eZ 4 install, slightly updated.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">src- This is where we\'ll be building out our code, in structures called <emphasize>bundles</emphasize>. There\'s a bundle already there, the EzSystemsDemoBundle, that implements a basic surround in symfony.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">vendor - This is where most of the supporting third-party frameworks live, including components of Symfony and eZ Publish.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">web - This is where you\'ll point Apache to as a web root. We\'ll set up Rewrite rules shortly to send most of our traffic to index.php, which is the endpoint that handles all requests to Symfony.</paragraph></li></ul></paragraph><paragraph>In your browser, you have two URLs available:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">partialcontent.local, the public-facing web site</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">admin.partialcontent.local, the administrative site (user: admin, password: partial1234)</paragraph></li></ul></paragraph></section><section><header>Our Plan</header><paragraph>The goal of this project is to create a blog. This of course means that we have a series of posts displayed in reverse chronological order. The blog will be able to be divided into categories, so multiple topics can be covered. And there needs to be some way to combine multiple posts into a series of related posts. </paragraph><paragraph>To accomplish all this, we\'ll be working with three content types: Blog, Blog Post, and Series. A Blog will contain either Blog Posts or Series, and will display all of the posts beneath it, even if those posts are themselves contained by Blog or Series objects. In this way, we can bring posts from more and more topic categories into a single stream by nesting the Blog objects. </paragraph><paragraph>So our data model looks like this: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><line>Blog</line><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Name</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Tagline</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Description (WYSIWYG)</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">URL Slug (for customizing the URL)</paragraph></li></ul></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><line>Blog Post</line><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Title</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Summary (WYSIWYG)</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Body</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Publication Date (Date/Time Field)</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Comments (Comments Field)</paragraph></li></ul></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><line>Series</line><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Title</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Description (WYSIWYG)</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Posts (Object Relation List)</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">URL Slug (for customizing the URL)</paragraph></li></ul></paragraph></li></ul></paragraph><paragraph>You can build this structure out manually, and enter some sample content, but to get things started I\'ve included a SQL file with the content already configured. Note that this will break the front end view of your eZ Publish installation. That\'s OK! We\'re going to bring things in line with our new content in a moment.</paragraph><paragraph>You can load your installation with it by running the following command in a terminal: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">cat sql/partialcontent.sql | mysql -u partialcontent -p partialcontent </literal></paragraph><paragraph>(Enter the password for your \'partialcontent\' user when prompted)</paragraph><paragraph>You\'ll need to log back in to your admin. Have a look at the \'Content Structure\' to see what\'s there. The sample posts are the contents of this tutorial.</paragraph><paragraph>Now that we\'ve got our site set up and sample content loaded, we can start developing by <link url_id=\"106\">creating a bundle and building our layout templates</link>.</paragraph></section></section>\n','ezxmltext',581,'eng-US',2,0,'',3),(0,198,109,0,1360877580,'','ezdatetime',582,'eng-US',2,1360877580,'',1),(0,198,109,0,1360877580,'','ezdatetime',582,'eng-US',2,1360877580,'',2),(0,198,109,0,1360877580,'','ezdatetime',582,'eng-US',2,1360877580,'',3),(0,200,109,1,1,'','ezcomcomments',583,'eng-US',2,0,'',1),(0,200,109,1,1,'','ezcomcomments',583,'eng-US',2,0,'',2),(0,200,109,1,1,'','ezcomcomments',583,'eng-US',2,0,'',3),(0,244,110,0,NULL,'Default eZ 5 File Structure','ezstring',584,'eng-US',2,0,'default ez 5 file structure',1),(0,245,110,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',585,'eng-US',2,0,'',1),(0,246,110,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Default-eZ-5-File-Structure.jpg\" suffix=\"jpg\" basename=\"Default-eZ-5-File-Structure\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/default-ez-5-file-structure/586-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/default-ez-5-file-structure/586-1-eng-US/Default-eZ-5-File-Structure.jpg\" original_filename=\"57588fb9.jpg\" mime_type=\"image/jpeg\" width=\"355\" height=\"505\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1361204167\"><original attribute_id=\"586\" attribute_version=\"1\" attribute_language=\"eng-US\"/><information Height=\"505\" Width=\"355\" IsColor=\"1\" ByteOrderMotorola=\"1\"><array name=\"ifd0\"><item key=\"XResolution\" base64=\"1\">NzIvMQ==</item><item key=\"YResolution\" base64=\"1\">NzIvMQ==</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">Nzg=</item></array><array name=\"exif\"><item key=\"ExifImageWidth\" base64=\"1\">MzU1</item><item key=\"ExifImageLength\" base64=\"1\">NTA1</item></array></information><alias name=\"large\" filename=\"Default-eZ-5-File-Structure_large.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/default-ez-5-file-structure/586-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/default-ez-5-file-structure/586-1-eng-US/Default-eZ-5-File-Structure_large.jpg\" mime_type=\"image/jpeg\" width=\"309\" height=\"440\" alias_key=\"3448122496\" timestamp=\"1361331518\" is_valid=\"1\"/><alias name=\"reference\" filename=\"Default-eZ-5-File-Structure_reference.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/default-ez-5-file-structure/586-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/default-ez-5-file-structure/586-1-eng-US/Default-eZ-5-File-Structure_reference.jpg\" mime_type=\"image/jpeg\" width=\"355\" height=\"505\" alias_key=\"2605465115\" timestamp=\"1361215060\" is_valid=\"1\"/><alias name=\"small\" filename=\"Default-eZ-5-File-Structure_small.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/default-ez-5-file-structure/586-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/default-ez-5-file-structure/586-1-eng-US/Default-eZ-5-File-Structure_small.jpg\" mime_type=\"image/jpeg\" width=\"70\" height=\"100\" alias_key=\"2343348577\" timestamp=\"1361215060\" is_valid=\"1\"/></ezimage>\n','ezimage',586,'eng-US',2,0,'',1),(0,247,110,0,0,'','ezsrrating',587,'eng-US',2,0,'',1),(0,248,110,0,NULL,'','ezkeyword',588,'eng-US',2,0,'',1),(0,244,111,0,NULL,'Setup Wizard Screenshot','ezstring',589,'eng-US',2,0,'setup wizard screenshot',1),(0,245,111,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',590,'eng-US',2,0,'',1),(0,246,111,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Setup-Wizard-Screenshot.jpg\" suffix=\"jpg\" basename=\"Setup-Wizard-Screenshot\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/setup-wizard-screenshot/591-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/setup-wizard-screenshot/591-1-eng-US/Setup-Wizard-Screenshot.jpg\" original_filename=\"851fd1f6.jpg\" mime_type=\"image/jpeg\" width=\"991\" height=\"685\" alternative_text=\"Screenshot of eZ Publish setup wizard\" alias_key=\"1293033771\" timestamp=\"1361204167\"><original attribute_id=\"591\" attribute_version=\"1\" attribute_language=\"eng-US\"/><information Height=\"685\" Width=\"991\" IsColor=\"1\" ByteOrderMotorola=\"1\"><array name=\"ifd0\"><item key=\"XResolution\" base64=\"1\">NzIvMQ==</item><item key=\"YResolution\" base64=\"1\">NzIvMQ==</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">Nzg=</item></array><array name=\"exif\"><item key=\"ExifImageWidth\" base64=\"1\">OTkx</item><item key=\"ExifImageLength\" base64=\"1\">Njg1</item></array></information><alias name=\"large\" filename=\"Setup-Wizard-Screenshot_large.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/setup-wizard-screenshot/591-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/setup-wizard-screenshot/591-1-eng-US/Setup-Wizard-Screenshot_large.jpg\" mime_type=\"image/jpeg\" width=\"360\" height=\"249\" alias_key=\"3448122496\" timestamp=\"1361204208\" is_valid=\"1\"/><alias name=\"reference\" filename=\"Setup-Wizard-Screenshot_reference.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/setup-wizard-screenshot/591-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/setup-wizard-screenshot/591-1-eng-US/Setup-Wizard-Screenshot_reference.jpg\" mime_type=\"image/jpeg\" width=\"600\" height=\"415\" alias_key=\"2605465115\" timestamp=\"1361208163\" is_valid=\"1\"/><alias name=\"small\" filename=\"Setup-Wizard-Screenshot_small.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/setup-wizard-screenshot/591-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/setup-wizard-screenshot/591-1-eng-US/Setup-Wizard-Screenshot_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"69\" alias_key=\"2343348577\" timestamp=\"1361215060\" is_valid=\"1\"/></ezimage>\n','ezimage',591,'eng-US',2,0,'',1),(0,247,111,0,0,'','ezsrrating',592,'eng-US',2,0,'',1),(0,248,111,0,NULL,'','ezkeyword',593,'eng-US',2,0,'',1),(0,196,112,0,NULL,'Working with eZ Publish 5 - Templates','ezstring',594,'eng-US',2,0,'working with ez publish 5 - templates',1),(0,196,112,0,NULL,'Working with eZ Publish 5 - Templates','ezstring',594,'eng-US',2,0,'working with ez publish 5 - templates',2),(0,196,112,0,NULL,'Working with eZ Publish 5 - Templates','ezstring',594,'eng-US',2,0,'working with ez publish 5 - templates',3),(0,196,112,0,NULL,'Working with eZ Publish 5 - Templates','ezstring',594,'eng-US',2,0,'working with ez publish 5 - templates',4),(0,196,112,0,NULL,'Working with eZ Publish 5 - Templates','ezstring',594,'eng-US',2,0,'working with ez publish 5 - templates',5),(0,196,112,0,NULL,'Working with eZ Publish 5 - Templates','ezstring',594,'eng-US',2,0,'working with ez publish 5 - templates',6),(0,303,112,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',595,'eng-US',2,0,'',1),(0,303,112,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',595,'eng-US',2,0,'',2),(0,303,112,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',595,'eng-US',2,0,'',3),(0,303,112,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',595,'eng-US',2,0,'',4),(0,303,112,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',595,'eng-US',2,0,'',5),(0,303,112,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',595,'eng-US',2,0,'',6),(0,197,112,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',596,'eng-US',2,0,'',1),(0,197,112,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Starting Development</paragraph><paragraph>In Symfony, your development happens in <link target=\"_blank\" url_id=\"101\" anchor_name=\"page-creation-bundles\">Bundles</link>. Bundles provide containers for your code, and can even allow you to override files from third parties or the core software itself. So we\'ll start off by generating a bundle to hold our work. </paragraph><paragraph>Symfony provides a command line tool to help generate a new bundle. All you need to do is provide a <link target=\"_blank\" url_id=\"102\">namespace</link> for your bundle. The namespace should be unique to your project, and the first element is usually your company or site name. Per <link target=\"_blank\" url_id=\"103\" anchor_name=\"bundle-name\">Symfony standards</link>, the final element in the namespace must end with the word \'Bundle\'. On the command line, run the following from the ez publish root (htdocs in the sample code): </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">php ezpublish/console generate:bundle --namespace=\"Blend/PartialContentBundle\" </literal></paragraph><paragraph>This will kick off a wizard that will ask you a series of questions about your bundle. Just hit \'enter\' for most of these, but use \'yml\' for your configuration format, and let Symfony generate the whole directory structure and take all the automated steps to register your bundle. Your wizard session will look something like this: </paragraph><paragraph><embed view=\"embed\" size=\"original\" object_id=\"114\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph></section>\n','ezxmltext',596,'eng-US',2,0,'',2),(0,197,112,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><section><header>Starting Development</header><paragraph>In Symfony, your development happens in <link target=\"_blank\" url_id=\"101\" anchor_name=\"page-creation-bundles\">Bundles</link>. Bundles provide containers for your code, and can even allow you to override files from third parties or the core software itself. So we\'ll start off by generating a bundle to hold our work. </paragraph><paragraph>Symfony provides a command line tool to help generate a new bundle. All you need to do is provide a <link target=\"_blank\" url_id=\"102\">namespace</link> for your bundle. The namespace should be unique to your project, and the first element is usually your company or site name. Per <link target=\"_blank\" url_id=\"103\" anchor_name=\"bundle-name\">Symfony standards</link>, the final element in the namespace must end with the word \'Bundle\'. On the command line, run the following from the ez publish root (htdocs in the sample code): </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">php ezpublish/console generate:bundle --namespace=\"Blend/PartialContentBundle\" </literal></paragraph><paragraph>This will kick off a wizard that will ask you a series of questions about your bundle. Just hit \'enter\' for most of these, but use \'yml\' for your configuration format, and let Symfony generate the whole directory structure and take all the automated steps to register your bundle. Your wizard session will look something like this: </paragraph><paragraph><embed view=\"embed\" size=\"original\" object_id=\"114\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph><paragraph>Once the wizard is done, we\'ll have an extra directory structure under the \'src\' directory. </paragraph><paragraph><embed align=\"right\" view=\"embed\" size=\"reference\" object_id=\"117\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph><paragraph>What\'s in here? Well, we\'ll come back to most of it, but a couple of things to note for now: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Resources - this is where all of the non-PHP items for your bundle are stored, including config files, Twig templates, and javascript, CSS, and image assets.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Controller - any controllers you write will go here; we\'ll create one later</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Tests - Symfony provides a testing framework for all code and encourages the creation of unit tests. This is beyond the scope of this tutorial, but I\'ll cover it in a future post.</paragraph></li></ul></paragraph><paragraph>Now that we have our bundle in place, let\'s start off by creating a Twig template that will define the structure of our site, the page layout template. This template will serve as the basis for all of our HTML pages. Twig uses a system of <link target=\"_blank\" url_id=\"107\" anchor_name=\"template-inheritance\">template inheritance</link>, so other pages will replace specific pieces of our page layout with specific content later on. If we don\'t have a piece of a template available as a Twig template, eZ Publish will try to fill the content in from the legacy template system.</paragraph><paragraph>Create a file called \'pagelayout.html.twig\' in src/Blend/PartialContentBundle/Resources/views, and add a basic template: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_twig\"> insert template code here</literal></paragraph><paragraph>With our pagelayout template in place, we need to tell eZ Publish to start using it. Edit the ezpublish/config/parameters.yml file and modify the \'ezpublish_legacy.view.default_layout\' setting like so: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\"> ezpublish_legacy.view.default_layout: BlendPartialContentBundle::pagelayout.html.twig</literal></paragraph><paragraph>If you refresh <link url_id=\"105\">http://partialcontent.local</link>, you should now have a very ugly-looking site: </paragraph><paragraph><embed view=\"embed\" size=\"medium\" object_id=\"118\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph><paragraph>Where\'s all that stuff coming from? Well, since there are no Twig templates to render the content area, the legacy eZ Publish site is trying to render a basic blog. But if you examine the HTML, you should find that it\'s using our page layout. You\'ll also notice that the page doesn\'t have any styles, because we haven\'t provided any. We\'ll do that next. </paragraph></section><section><header>Asset Management</header><paragraph>eZ Publish 4 provided a handy system for managing stylesheets and javascript called eZJSCore. Symfony provides an even handier system called <link target=\"_blank\" url_id=\"108\">Assetic</link>, so we\'ll use that to add some styles to our site. </paragraph><paragraph>For this project, I\'ve used HTML5 Boilerplate and Twitter Bootstrap. The assets for these should go in the js, css, and images directories in our bundle\'s Resources/public folder. To save time and frustration, I\'ve downloaded these for you in our next tutorial step on github, and also set a few settings in the legacy eZ Publish environment to help with some of the content formatting in the admin. Let\'s clear out our work and switch to that branch now. Note that this will erase any work you\'ve done so far and replace it with the tutorial version, so <emphasize>if you\'ve made customizations you want to save, create a new branch for them in git before proceeding.</emphasize></paragraph><paragraph>To switch branches, first clean up the working area by typing: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">git checkout -- *</literal><literal class=\"code_text\">git clean -f -d </literal></paragraph><paragraph>Then switch to the next step in the tutorial: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">git checkout -b tutorial-1 origin/tutorial-1 </literal></paragraph><paragraph>Note: if you have already looked at this branch, you\'ll get an error saying the branch already exists. In that case, simply type \'git checkout tutorial-1\'</paragraph><paragraph>In this new branch, we\'ve pulled down some new javascript, css, and image files into the Resources/public folder. To use them in the template, we\'ll use assetic to reference them. Add this to the header of your pagelayout.html.twig just below the meta tags: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_twig\"> insert assetic code here</literal></paragraph><paragraph>The {% stylesheets %} block will iterate over all files in \"bundles/blendpartialcontent/css/*\" and create the included &lt;link&gt; tag for each file it finds, loaded alphabetically. The {% javascripts %} block will load each of the named javascript files in turn and create the script tag. In a production environment, Assetic will also condense these into a single file. </paragraph><paragraph>The paths used here are relative to the \'web\' folder, since that\'s the Apache root. But if you look, you\'ll notie that there isn\'t a bundles/blendpartialcontent folder in the \'web\' directory. You\'ll need to run a console command to symlink the assets there, which we haven\'t done. In the htdocs directory, run this from the terminal: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">php ezpublish/console assets:install --symlink </literal></paragraph><paragraph>Now the symlink for your bundle should appear, and refreshing <link url_id=\"105\">http://partialcontent.local</link> should grace us with a styled page.</paragraph><paragraph><embed view=\"embed\" size=\"reference\" object_id=\"119\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph><paragraph>With that out of the way, let\'s get some blog posts showing up by creating content templates.</paragraph></section></section>\n','ezxmltext',596,'eng-US',2,0,'',3),(0,197,112,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><section><header>Starting Development</header><paragraph>In Symfony, your development happens in <link target=\"_blank\" url_id=\"101\" anchor_name=\"page-creation-bundles\">Bundles</link>. Bundles provide containers for your code, and can even allow you to override files from third parties or the core software itself. So we\'ll start off by generating a bundle to hold our work. </paragraph><paragraph>Symfony provides a command line tool to help generate a new bundle. All you need to do is provide a <link target=\"_blank\" url_id=\"102\">namespace</link> for your bundle. The namespace should be unique to your project, and the first element is usually your company or site name. Per <link target=\"_blank\" url_id=\"103\" anchor_name=\"bundle-name\">Symfony standards</link>, the final element in the namespace must end with the word \'Bundle\'. On the command line, run the following from the ez publish root (htdocs in the sample code): </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">php ezpublish/console generate:bundle --namespace=\"Blend/PartialContentBundle\" </literal></paragraph><paragraph>This will kick off a wizard that will ask you a series of questions about your bundle. Just hit \'enter\' for most of these, but use \'yml\' for your configuration format, and let Symfony generate the whole directory structure and take all the automated steps to register your bundle. Your wizard session will look something like this: </paragraph><paragraph><embed view=\"embed\" size=\"original\" object_id=\"114\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph><paragraph>Once the wizard is done, we\'ll have an extra directory structure under the \'src\' directory. </paragraph><paragraph><embed align=\"right\" view=\"embed\" size=\"reference\" object_id=\"117\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph><paragraph>What\'s in here? Well, we\'ll come back to most of it, but a couple of things to note for now: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Resources - this is where all of the non-PHP items for your bundle are stored, including config files, Twig templates, and javascript, CSS, and image assets.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Controller - any controllers you write will go here; we\'ll create one later</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Tests - Symfony provides a testing framework for all code and encourages the creation of unit tests. This is beyond the scope of this tutorial, but I\'ll cover it in a future post.</paragraph></li></ul></paragraph><paragraph>Now that we have our bundle in place, let\'s start off by creating a Twig template that will define the structure of our site, the page layout template. This template will serve as the basis for all of our HTML pages. Twig uses a system of <link target=\"_blank\" url_id=\"107\" anchor_name=\"template-inheritance\">template inheritance</link>, so other pages will replace specific pieces of our page layout with specific content later on. If we don\'t have a piece of a template available as a Twig template, eZ Publish will try to fill the content in from the legacy template system.</paragraph><paragraph>Create a file called \'pagelayout.html.twig\' in src/Blend/PartialContentBundle/Resources/views, and add a basic template: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_twig\">\n&lt;!DOCTYPE html&gt;\n&lt;!--[if lt IE 7]&gt;      &lt;html class=\"no-js lt-ie9 lt-ie8 lt-ie7\"&gt; &lt;![endif]--&gt;\n&lt;!--[if IE 7]&gt;         &lt;html class=\"no-js lt-ie9 lt-ie8\"&gt; &lt;![endif]--&gt;\n&lt;!--[if IE 8]&gt;         &lt;html class=\"no-js lt-ie9\"&gt; &lt;![endif]--&gt;\n&lt;!--[if gt IE 8]&gt;&lt;!--&gt; &lt;html class=\"no-js\"&gt; &lt;!--&lt;![endif]--&gt;\n&lt;head&gt;\n    &lt;meta charset=\"utf-8\"&gt;\n    &lt;meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\"&gt;\n    &lt;title&gt;Title Here&lt;/title&gt;\n    &lt;meta name=\"description\" content=\"\"&gt;\n    &lt;meta name=\"viewport\" content=\"width=device-width\"&gt;\n\n&lt;/head&gt;\n&lt;body&gt;\n&lt;header class=\"main-header\"&gt;\n    {% block header %}\n        &lt;div class=\"branding jumbotron subhead\"&gt;\n            &lt;div class=\"container\"&gt;\n                &lt;h1&gt;This Site\'s Name&lt;/h1&gt;\n            &lt;/div&gt;\n        &lt;/div&gt;\n        &lt;nav class=\"navbar navbar-inverse\"&gt;\n            &lt;div class=\"navbar-inner\"&gt;\n                &lt;div class=\"container\"&gt;\n                    {% block topnav %}\n                        Top Menu will go here\n                    {% endblock %}\n                &lt;/div&gt;\n            &lt;/div&gt;\n        &lt;/nav&gt;\n    {% endblock %}\n&lt;/header&gt;\n\n&lt;div class=\"container\"&gt;\n    &lt;div class=\"body\"&gt;\n        &lt;div class=\"row\"&gt;\n            &lt;div class=\"main span9\"&gt;\n                {% block content %}{% endblock %}\n            &lt;/div&gt;\n            &lt;aside class=\"sidebar span3\"&gt;\n                {% block sidebar %}\n                    Sidebar stuff goes here\n                {% endblock %}\n            &lt;/aside&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n\n&lt;footer class=\"footer\"&gt;\n    {% block footer %}\n        Footer stuff goes here\n    {% endblock %}\n&lt;/footer&gt;\n&lt;script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js\"&gt;&lt;/script&gt;\n\n&lt;/body&gt;\n&lt;/html&gt;</literal></paragraph><paragraph>With our pagelayout template in place, we need to tell eZ Publish to start using it. Edit the ezpublish/config/parameters.yml file and modify the \'ezpublish_legacy.view.default_layout\' setting like so: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">ezpublish_legacy.view.default_layout: BlendPartialContentBundle::pagelayout.html.twig</literal></paragraph><paragraph>If you refresh <link url_id=\"105\">http://partialcontent.local</link>, you should now have a very ugly-looking site: </paragraph><paragraph><embed view=\"embed\" size=\"medium\" object_id=\"118\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph><paragraph>Where\'s all that stuff coming from? Well, since there are no Twig templates to render the content area, the legacy eZ Publish site is trying to render a basic blog. But if you examine the HTML, you should find that it\'s using our page layout. You\'ll also notice that the page doesn\'t have any styles, because we haven\'t provided any. We\'ll do that next. </paragraph></section><section><header>Asset Management</header><paragraph>eZ Publish 4 provided a handy system for managing stylesheets and javascript called eZJSCore. Symfony provides an even handier system called <link target=\"_blank\" url_id=\"108\">Assetic</link>, so we\'ll use that to add some styles to our site. </paragraph><paragraph>For this project, I\'ve used HTML5 Boilerplate and Twitter Bootstrap. The assets for these should go in the js, css, and images directories in our bundle\'s Resources/public folder. To save time and frustration, I\'ve downloaded these for you in our next tutorial step on github, and also set a few settings in the legacy eZ Publish environment to help with some of the content formatting in the admin. Let\'s clear out our work and switch to that branch now. Note that this will erase any work you\'ve done so far and replace it with the tutorial version, so <emphasize>if you\'ve made customizations you want to save, create a new branch for them in git before proceeding.</emphasize></paragraph><paragraph>To switch branches, first clean up the working area by typing: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">git checkout -- *</literal><literal class=\"code_text\">git clean -f -d </literal></paragraph><paragraph>Then switch to the next step in the tutorial: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">git checkout -b tutorial-1 origin/tutorial-1 </literal></paragraph><paragraph>Note: if you have already looked at this branch, you\'ll get an error saying the branch already exists. In that case, simply type \'git checkout tutorial-1\'</paragraph><paragraph>In this new branch, we\'ve pulled down some new javascript, css, and image files into the Resources/public folder. To use them in the template, we\'ll use assetic to reference them. Add this to the header of your pagelayout.html.twig just below the meta tags: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_twig\">\n    {% stylesheets \"bundles/blendpartialcontent/css/*\" %}\n        &lt;link rel=\"stylesheet\" href=\"{{ asset_url }}\" /&gt;\n    {% endstylesheets %}\n \n    {% javascripts\n        \"bundles/blendpartialcontent/js/modernizr.js\"\n        \"bundles/blendpartialcontent/js/bootstrap.js\"\n    %}\n        &lt;script type=\"text/javascript\" src=\"{{ asset_url }}\"&gt;&lt;/script&gt;\n    {% endjavascripts %}</literal></paragraph><paragraph>The {% stylesheets %} block will iterate over all files in \"bundles/blendpartialcontent/css/*\" and create the included &lt;link&gt; tag for each file it finds, loaded alphabetically. The {% javascripts %} block will load each of the named javascript files in turn and create the script tag. In a production environment, Assetic will also condense these into a single file. </paragraph><paragraph>The paths used here are relative to the \'web\' folder, since that\'s the Apache root. But if you look, you\'ll notie that there isn\'t a bundles/blendpartialcontent folder in the \'web\' directory. You\'ll need to run a console command to symlink the assets there, which we haven\'t done. In the htdocs directory, run this from the terminal: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">php ezpublish/console assets:install --symlink </literal></paragraph><paragraph>Now the symlink for your bundle should appear, and refreshing <link url_id=\"105\">http://partialcontent.local</link> should grace us with a styled page.</paragraph><paragraph><embed view=\"embed\" size=\"reference\" object_id=\"119\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph><paragraph>With that out of the way, let\'s get some blog posts showing up by creating content templates.</paragraph></section></section>\n','ezxmltext',596,'eng-US',2,0,'',4),(0,197,112,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><section><header>Starting Development</header><paragraph>In Symfony, your development happens in <link target=\"_blank\" url_id=\"101\" anchor_name=\"page-creation-bundles\">Bundles</link>. Bundles provide containers for your code, and can even allow you to override files from third parties or the core software itself. So we\'ll start off by generating a bundle to hold our work. </paragraph><paragraph>Symfony provides a command line tool to help generate a new bundle. All you need to do is provide a <link target=\"_blank\" url_id=\"102\">namespace</link> for your bundle. The namespace should be unique to your project, and the first element is usually your company or site name. Per <link target=\"_blank\" url_id=\"103\" anchor_name=\"bundle-name\">Symfony standards</link>, the final element in the namespace must end with the word \'Bundle\'. On the command line, run the following from the ez publish root (htdocs in the sample code): </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_shell\">php ezpublish/console generate:bundle --namespace=\"Blend/PartialContentBundle\" </literal></paragraph><paragraph>This will kick off a wizard that will ask you a series of questions about your bundle. Just hit \'enter\' for most of these, but use \'yml\' for your configuration format, and let Symfony generate the whole directory structure and take all the automated steps to register your bundle. Your wizard session will look something like this: </paragraph><paragraph><embed view=\"embed\" size=\"original\" object_id=\"114\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph><paragraph>Once the wizard is done, we\'ll have an extra directory structure under the \'src\' directory. </paragraph><paragraph><embed align=\"right\" view=\"embed\" size=\"reference\" object_id=\"117\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph><paragraph>What\'s in here? Well, we\'ll come back to most of it, but a couple of things to note for now: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Resources - this is where all of the non-PHP items for your bundle are stored, including config files, Twig templates, and javascript, CSS, and image assets.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Controller - any controllers you write will go here; we\'ll create one later</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Tests - Symfony provides a testing framework for all code and encourages the creation of unit tests. This is beyond the scope of this tutorial, but I\'ll cover it in a future post.</paragraph></li></ul></paragraph><paragraph>Now that we have our bundle in place, let\'s start off by creating a Twig template that will define the structure of our site, the page layout template. This template will serve as the basis for all of our HTML pages. Twig uses a system of <link target=\"_blank\" url_id=\"107\" anchor_name=\"template-inheritance\">template inheritance</link>, so other pages will replace specific pieces of our page layout with specific content later on. If we don\'t have a piece of a template available as a Twig template, eZ Publish will try to fill the content in from the legacy template system.</paragraph><paragraph>Create a file called \'pagelayout.html.twig\' in src/Blend/PartialContentBundle/Resources/views, and add a basic template: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_twig\">\n&lt;!DOCTYPE html&gt;\n&lt;!--[if lt IE 7]&gt;      &lt;html class=\"no-js lt-ie9 lt-ie8 lt-ie7\"&gt; &lt;![endif]--&gt;\n&lt;!--[if IE 7]&gt;         &lt;html class=\"no-js lt-ie9 lt-ie8\"&gt; &lt;![endif]--&gt;\n&lt;!--[if IE 8]&gt;         &lt;html class=\"no-js lt-ie9\"&gt; &lt;![endif]--&gt;\n&lt;!--[if gt IE 8]&gt;&lt;!--&gt; &lt;html class=\"no-js\"&gt; &lt;!--&lt;![endif]--&gt;\n&lt;head&gt;\n    &lt;meta charset=\"utf-8\"&gt;\n    &lt;meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\"&gt;\n    &lt;title&gt;Title Here&lt;/title&gt;\n    &lt;meta name=\"description\" content=\"\"&gt;\n    &lt;meta name=\"viewport\" content=\"width=device-width\"&gt;\n\n&lt;/head&gt;\n&lt;body&gt;\n&lt;header class=\"main-header\"&gt;\n    {% block header %}\n        &lt;div class=\"branding jumbotron subhead\"&gt;\n            &lt;div class=\"container\"&gt;\n                &lt;h1&gt;This Site\'s Name&lt;/h1&gt;\n            &lt;/div&gt;\n        &lt;/div&gt;\n        &lt;nav class=\"navbar navbar-inverse\"&gt;\n            &lt;div class=\"navbar-inner\"&gt;\n                &lt;div class=\"container\"&gt;\n                    {% block topnav %}\n                        Top Menu will go here\n                    {% endblock %}\n                &lt;/div&gt;\n            &lt;/div&gt;\n        &lt;/nav&gt;\n    {% endblock %}\n&lt;/header&gt;\n\n&lt;div class=\"container\"&gt;\n    &lt;div class=\"body\"&gt;\n        &lt;div class=\"row\"&gt;\n            &lt;div class=\"main span9\"&gt;\n                {% block content %}{% endblock %}\n            &lt;/div&gt;\n            &lt;aside class=\"sidebar span3\"&gt;\n                {% block sidebar %}\n                    Sidebar stuff goes here\n                {% endblock %}\n            &lt;/aside&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n\n&lt;footer class=\"footer\"&gt;\n    {% block footer %}\n        Footer stuff goes here\n    {% endblock %}\n&lt;/footer&gt;\n&lt;script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js\"&gt;&lt;/script&gt;\n\n&lt;/body&gt;\n&lt;/html&gt;</literal></paragraph><paragraph>With our pagelayout template in place, we need to tell eZ Publish to start using it. Edit the ezpublish/config/parameters.yml file and modify the \'ezpublish_legacy.view.default_layout\' setting like so: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_yml\">ezpublish_legacy.view.default_layout: BlendPartialContentBundle::pagelayout.html.twig</literal></paragraph><paragraph>If you refresh <link url_id=\"105\">http://partialcontent.local</link>, you should now have a very ugly-looking site: </paragraph><paragraph><embed view=\"embed\" size=\"large\" object_id=\"118\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph><paragraph>Where\'s all that stuff coming from? Well, since there are no Twig templates to render the content area, the legacy eZ Publish site is trying to render a basic blog. But if you examine the HTML, you should find that it\'s using our page layout. You\'ll also notice that the page doesn\'t have any styles, because we haven\'t provided any. We\'ll do that next. </paragraph></section><section><header>Asset Management</header><paragraph>eZ Publish 4 provided a handy system for managing stylesheets and javascript called eZJSCore. Symfony provides an even handier system called <link target=\"_blank\" url_id=\"108\">Assetic</link>, so we\'ll use that to add some styles to our site. </paragraph><paragraph>For this project, I\'ve used HTML5 Boilerplate and Twitter Bootstrap. The assets for these should go in the js, css, and images directories in our bundle\'s Resources/public folder. To save time and frustration, I\'ve downloaded these for you in our next tutorial step on github, and also set a few settings in the legacy eZ Publish environment to help with some of the content formatting in the admin. Let\'s clear out our work and switch to that branch now. Note that this will erase any work you\'ve done so far and replace it with the tutorial version, so <emphasize>if you\'ve made customizations you want to save, create a new branch for them in git before proceeding.</emphasize></paragraph><paragraph>To switch branches, first clean up the working area by typing: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_shell\">git checkout -- *\ngit clean -f -d </literal></paragraph><paragraph>Then switch to the next step in the tutorial: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_shell\">git checkout -b tutorial-1 origin/tutorial-1 </literal></paragraph><paragraph>Note: if you have already looked at this branch, you\'ll get an error saying the branch already exists. In that case, simply type \'git checkout tutorial-1\'</paragraph><paragraph>In this new branch, we\'ve pulled down some new javascript, css, and image files into the Resources/public folder. To use them in the template, we\'ll use assetic to reference them. Add this to the header of your pagelayout.html.twig just below the meta tags: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_twig\">\n    {% stylesheets \"bundles/blendpartialcontent/css/*\" %}\n        &lt;link rel=\"stylesheet\" href=\"{{ asset_url }}\" /&gt;\n    {% endstylesheets %}\n \n    {% javascripts\n        \"bundles/blendpartialcontent/js/modernizr.js\"\n        \"bundles/blendpartialcontent/js/bootstrap.js\"\n    %}\n        &lt;script type=\"text/javascript\" src=\"{{ asset_url }}\"&gt;&lt;/script&gt;\n    {% endjavascripts %}</literal></paragraph><paragraph>The {% stylesheets %} block will iterate over all files in \"bundles/blendpartialcontent/css/*\" and create the included &lt;link&gt; tag for each file it finds, loaded alphabetically. The {% javascripts %} block will load each of the named javascript files in turn and create the script tag. In a production environment, Assetic will also condense these into a single file. </paragraph><paragraph>The paths used here are relative to the \'web\' folder, since that\'s the Apache root. But if you look, you\'ll notie that there isn\'t a bundles/blendpartialcontent folder in the \'web\' directory. You\'ll need to run a console command to symlink the assets there, which we haven\'t done. In the htdocs directory, run this from the terminal: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_shell\">php ezpublish/console assets:install --symlink </literal></paragraph><paragraph>Now the symlink for your bundle should appear, and refreshing <link url_id=\"105\">http://partialcontent.local</link> should grace us with a styled page.</paragraph><paragraph><embed view=\"embed\" size=\"reference\" object_id=\"119\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph><paragraph>With that out of the way, let\'s get some blog posts showing up by creating content templates.</paragraph></section></section>\n','ezxmltext',596,'eng-US',2,0,'',5),(0,197,112,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><section><header>Starting Development</header><paragraph>In Symfony, your development happens in <link target=\"_blank\" url_id=\"101\" anchor_name=\"page-creation-bundles\">Bundles</link>. Bundles provide containers for your code, and can even allow you to override files from third parties or the core software itself. So we\'ll start off by generating a bundle to hold our work. </paragraph><paragraph>Symfony provides a command line tool to help generate a new bundle. All you need to do is provide a <link target=\"_blank\" url_id=\"102\">namespace</link> for your bundle. The namespace should be unique to your project, and the first element is usually your company or site name. Per <link target=\"_blank\" url_id=\"103\" anchor_name=\"bundle-name\">Symfony standards</link>, the final element in the namespace must end with the word \'Bundle\'. On the command line, run the following from the ez publish root (htdocs in the sample code): </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_shell\">php ezpublish/console generate:bundle --namespace=\"Blend/PartialContentBundle\" </literal></paragraph><paragraph>This will kick off a wizard that will ask you a series of questions about your bundle. Just hit \'enter\' for most of these, but use \'yml\' for your configuration format, and let Symfony generate the whole directory structure and take all the automated steps to register your bundle. Your wizard session will look something like this: </paragraph><paragraph><embed view=\"embed\" size=\"original\" object_id=\"114\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph><paragraph>Once the wizard is done, we\'ll have an extra directory structure under the \'src\' directory. </paragraph><paragraph><embed align=\"right\" view=\"embed\" size=\"reference\" object_id=\"117\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph><paragraph>What\'s in here? Well, we\'ll come back to most of it, but a couple of things to note for now: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Resources - this is where all of the non-PHP items for your bundle are stored, including config files, Twig templates, and javascript, CSS, and image assets.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Controller - any controllers you write will go here; we\'ll create one later</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Tests - Symfony provides a testing framework for all code and encourages the creation of unit tests. This is beyond the scope of this tutorial, but I\'ll cover it in a future post.</paragraph></li></ul></paragraph><paragraph>Now that we have our bundle in place, let\'s start off by creating a Twig template that will define the structure of our site, the page layout template. This template will serve as the basis for all of our HTML pages. Twig uses a system of <link target=\"_blank\" url_id=\"107\" anchor_name=\"template-inheritance\">template inheritance</link>, so other pages will replace specific pieces of our page layout with specific content later on. If we don\'t have a piece of a template available as a Twig template, eZ Publish will try to fill the content in from the legacy template system.</paragraph><paragraph>Create a file called \'pagelayout.html.twig\' in src/Blend/PartialContentBundle/Resources/views, and add a basic template: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_twig\">\n&lt;!DOCTYPE html&gt;\n&lt;!--[if lt IE 7]&gt;      &lt;html class=\"no-js lt-ie9 lt-ie8 lt-ie7\"&gt; &lt;![endif]--&gt;\n&lt;!--[if IE 7]&gt;         &lt;html class=\"no-js lt-ie9 lt-ie8\"&gt; &lt;![endif]--&gt;\n&lt;!--[if IE 8]&gt;         &lt;html class=\"no-js lt-ie9\"&gt; &lt;![endif]--&gt;\n&lt;!--[if gt IE 8]&gt;&lt;!--&gt; &lt;html class=\"no-js\"&gt; &lt;!--&lt;![endif]--&gt;\n&lt;head&gt;\n    &lt;meta charset=\"utf-8\"&gt;\n    &lt;meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\"&gt;\n    &lt;title&gt;Title Here&lt;/title&gt;\n    &lt;meta name=\"description\" content=\"\"&gt;\n    &lt;meta name=\"viewport\" content=\"width=device-width\"&gt;\n\n&lt;/head&gt;\n&lt;body&gt;\n&lt;header class=\"main-header\"&gt;\n    {% block header %}\n        &lt;div class=\"branding jumbotron subhead\"&gt;\n            &lt;div class=\"container\"&gt;\n                &lt;h1&gt;This Site\'s Name&lt;/h1&gt;\n            &lt;/div&gt;\n        &lt;/div&gt;\n        &lt;nav class=\"navbar navbar-inverse\"&gt;\n            &lt;div class=\"navbar-inner\"&gt;\n                &lt;div class=\"container\"&gt;\n                    {% block topnav %}\n                        Top Menu will go here\n                    {% endblock %}\n                &lt;/div&gt;\n            &lt;/div&gt;\n        &lt;/nav&gt;\n    {% endblock %}\n&lt;/header&gt;\n\n&lt;div class=\"container\"&gt;\n    &lt;div class=\"body\"&gt;\n        &lt;div class=\"row\"&gt;\n            &lt;div class=\"main span9\"&gt;\n                {% block content %}{% endblock %}\n            &lt;/div&gt;\n            &lt;aside class=\"sidebar span3\"&gt;\n                {% block sidebar %}\n                    Sidebar stuff goes here\n                {% endblock %}\n            &lt;/aside&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n\n&lt;footer class=\"footer\"&gt;\n    {% block footer %}\n        Footer stuff goes here\n    {% endblock %}\n&lt;/footer&gt;\n&lt;script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js\"&gt;&lt;/script&gt;\n\n&lt;/body&gt;\n&lt;/html&gt;</literal></paragraph><paragraph>With our pagelayout template in place, we need to tell eZ Publish to start using it. Edit the ezpublish/config/parameters.yml file and modify the \'ezpublish_legacy.view.default_layout\' setting like so: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_yml\">ezpublish_legacy.view.default_layout: BlendPartialContentBundle::pagelayout.html.twig</literal></paragraph><paragraph>If you refresh <link url_id=\"105\">http://partialcontent.local</link>, you should now have a very ugly-looking site: </paragraph><paragraph><embed view=\"embed\" size=\"large\" object_id=\"118\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph><paragraph>Where\'s all that stuff coming from? Well, since there are no Twig templates to render the content area, the legacy eZ Publish site is trying to render a basic blog. But if you examine the HTML, you should find that it\'s using our page layout. You\'ll also notice that the page doesn\'t have any styles, because we haven\'t provided any. We\'ll do that next. </paragraph></section><section><header>Asset Management</header><paragraph>eZ Publish 4 provided a handy system for managing stylesheets and javascript called eZJSCore. Symfony provides an even handier system called <link target=\"_blank\" url_id=\"108\">Assetic</link>, so we\'ll use that to add some styles to our site. </paragraph><paragraph>For this project, I\'ve used HTML5 Boilerplate and Twitter Bootstrap. The assets for these should go in the js, css, and images directories in our bundle\'s Resources/public folder. To save time and frustration, I\'ve downloaded these for you in our next tutorial step on github, and also set a few settings in the legacy eZ Publish environment to help with some of the content formatting in the admin. Let\'s clear out our work and switch to that branch now. Note that this will erase any work you\'ve done so far and replace it with the tutorial version, so <emphasize>if you\'ve made customizations you want to save, create a new branch for them in git before proceeding.</emphasize></paragraph><paragraph>To switch branches, first clean up the working area by typing: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_shell\">git checkout -- *\ngit clean -f -d </literal></paragraph><paragraph>Then switch to the next step in the tutorial: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_shell\">git checkout -b tutorial-1 origin/tutorial-1 </literal></paragraph><paragraph>Note: if you have already looked at this branch, you\'ll get an error saying the branch already exists. In that case, simply type \'git checkout tutorial-1\'</paragraph><paragraph>In this new branch, we\'ve pulled down some new javascript, css, and image files into the Resources/public folder. To use them in the template, we\'ll use assetic to reference them. Add this to the header of your pagelayout.html.twig just below the meta tags: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_twig\">\n    {% stylesheets \"bundles/blendpartialcontent/css/*\" %}\n        &lt;link rel=\"stylesheet\" href=\"{{ asset_url }}\" /&gt;\n    {% endstylesheets %}\n \n    {% javascripts\n        \"bundles/blendpartialcontent/js/modernizr.js\"\n        \"bundles/blendpartialcontent/js/bootstrap.js\"\n    %}\n        &lt;script type=\"text/javascript\" src=\"{{ asset_url }}\"&gt;&lt;/script&gt;\n    {% endjavascripts %}</literal></paragraph><paragraph>The {% stylesheets %} block will iterate over all files in \"bundles/blendpartialcontent/css/*\" and create the included &lt;link&gt; tag for each file it finds, loaded alphabetically. The {% javascripts %} block will load each of the named javascript files in turn and create the script tag. In a production environment, Assetic will also condense these into a single file. </paragraph><paragraph>The paths used here are relative to the \'web\' folder, since that\'s the Apache root. But if you look, you\'ll notie that there isn\'t a bundles/blendpartialcontent folder in the \'web\' directory. You\'ll need to run a console command to symlink the assets there, which we haven\'t done. In the htdocs directory, run this from the terminal: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_shell\">php ezpublish/console assets:install --symlink </literal></paragraph><paragraph>Now the symlink for your bundle should appear, and refreshing <link url_id=\"105\">http://partialcontent.local</link> should grace us with a styled page.</paragraph><paragraph><embed view=\"embed\" size=\"reference\" object_id=\"119\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph><paragraph>With that out of the way, let\'s add some missing pieces by <link url_id=\"115\">creating content templates</link>.</paragraph></section></section>\n','ezxmltext',596,'eng-US',2,0,'',6),(0,198,112,0,1361206260,'','ezdatetime',597,'eng-US',2,1361206260,'',1),(0,198,112,0,1361206260,'','ezdatetime',597,'eng-US',2,1361206260,'',2),(0,198,112,0,1361206260,'','ezdatetime',597,'eng-US',2,1361206260,'',3),(0,198,112,0,1361206260,'','ezdatetime',597,'eng-US',2,1361206260,'',4),(0,198,112,0,1361206260,'','ezdatetime',597,'eng-US',2,1361206260,'',5),(0,198,112,0,1361206260,'','ezdatetime',597,'eng-US',2,1361206260,'',6),(0,200,112,1,1,'','ezcomcomments',598,'eng-US',2,0,'',1),(0,200,112,1,1,'','ezcomcomments',598,'eng-US',2,0,'',2),(0,200,112,1,1,'','ezcomcomments',598,'eng-US',2,0,'',3),(0,200,112,1,1,'','ezcomcomments',598,'eng-US',2,0,'',4),(0,200,112,1,1,'','ezcomcomments',598,'eng-US',2,0,'',5),(0,200,112,1,1,'','ezcomcomments',598,'eng-US',2,0,'',6),(0,244,113,0,NULL,'Demo Site Content Screenshot','ezstring',599,'eng-US',2,0,'demo site content screenshot',1),(0,245,113,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',600,'eng-US',2,0,'',1),(0,246,113,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Demo-Site-Content-Screenshot.jpg\" suffix=\"jpg\" basename=\"Demo-Site-Content-Screenshot\" dirpath=\"var/ezdemo_site/storage/images/media/images/demo-site-content-screenshot/601-1-eng-US\" url=\"var/ezdemo_site/storage/images/media/images/demo-site-content-screenshot/601-1-eng-US/Demo-Site-Content-Screenshot.jpg\" original_filename=\"Screenshot_2_14_13_5_32_PM.jpg\" mime_type=\"image/jpeg\" width=\"1054\" height=\"865\" alternative_text=\"Screenshot of the eZ Publish Demo Site\" alias_key=\"1293033771\" timestamp=\"1361206584\"><original attribute_id=\"601\" attribute_version=\"1\" attribute_language=\"eng-US\"/><information Height=\"865\" Width=\"1054\" IsColor=\"1\" ByteOrderMotorola=\"1\"><array name=\"ifd0\"><item key=\"XResolution\" base64=\"1\">NzIvMQ==</item><item key=\"YResolution\" base64=\"1\">NzIvMQ==</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">Nzg=</item></array><array name=\"exif\"><item key=\"ExifImageWidth\" base64=\"1\">MTA1NA==</item><item key=\"ExifImageLength\" base64=\"1\">ODY1</item></array></information><alias name=\"reference\" filename=\"Demo-Site-Content-Screenshot_reference.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/media/images/demo-site-content-screenshot/601-1-eng-US\" url=\"var/ezdemo_site/storage/images/media/images/demo-site-content-screenshot/601-1-eng-US/Demo-Site-Content-Screenshot_reference.jpg\" mime_type=\"image/jpeg\" width=\"600\" height=\"492\" alias_key=\"2605465115\" timestamp=\"1361206584\" is_valid=\"1\"/><alias name=\"small\" filename=\"Demo-Site-Content-Screenshot_small.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/media/images/demo-site-content-screenshot/601-1-eng-US\" url=\"var/ezdemo_site/storage/images/media/images/demo-site-content-screenshot/601-1-eng-US/Demo-Site-Content-Screenshot_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"82\" alias_key=\"2343348577\" timestamp=\"1361206584\" is_valid=\"1\"/><alias name=\"medium\" filename=\"Demo-Site-Content-Screenshot_medium.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/media/images/demo-site-content-screenshot/601-1-eng-US\" url=\"var/ezdemo_site/storage/images/media/images/demo-site-content-screenshot/601-1-eng-US/Demo-Site-Content-Screenshot_medium.jpg\" mime_type=\"image/jpeg\" width=\"200\" height=\"164\" alias_key=\"405413724\" timestamp=\"1361206585\" is_valid=\"1\"/></ezimage>\n','ezimage',601,'eng-US',2,0,'',1),(0,247,113,0,NULL,'','ezsrrating',602,'eng-US',2,0,'',1),(0,248,113,0,NULL,'','ezkeyword',603,'eng-US',2,0,'',1),(0,244,114,0,NULL,'Bundle Generation Screenshot','ezstring',604,'eng-US',2,0,'bundle generation screenshot',1),(0,245,114,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',605,'eng-US',2,0,'',1),(0,246,114,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Bundle-Generation-Screenshot.jpg\" suffix=\"jpg\" basename=\"Bundle-Generation-Screenshot\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-generation-screenshot/606-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-generation-screenshot/606-1-eng-US/Bundle-Generation-Screenshot.jpg\" original_filename=\"Screenshot_2_14_13_5_39_PM.jpg\" mime_type=\"image/jpeg\" width=\"842\" height=\"1162\" alternative_text=\"Bundle Generation Screenshot\" alias_key=\"1293033771\" timestamp=\"1361209032\"><original attribute_id=\"606\" attribute_version=\"1\" attribute_language=\"eng-US\"/><information Height=\"1162\" Width=\"842\" IsColor=\"1\" ByteOrderMotorola=\"1\"><array name=\"ifd0\"><item key=\"XResolution\" base64=\"1\">NzIvMQ==</item><item key=\"YResolution\" base64=\"1\">NzIvMQ==</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">Nzg=</item></array><array name=\"exif\"><item key=\"ExifImageWidth\" base64=\"1\">ODQy</item><item key=\"ExifImageLength\" base64=\"1\">MTE2Mg==</item></array></information><alias name=\"reference\" filename=\"Bundle-Generation-Screenshot_reference.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-generation-screenshot/606-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-generation-screenshot/606-1-eng-US/Bundle-Generation-Screenshot_reference.jpg\" mime_type=\"image/jpeg\" width=\"435\" height=\"600\" alias_key=\"2605465115\" timestamp=\"1361209032\" is_valid=\"1\"/><alias name=\"small\" filename=\"Bundle-Generation-Screenshot_small.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-generation-screenshot/606-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-generation-screenshot/606-1-eng-US/Bundle-Generation-Screenshot_small.jpg\" mime_type=\"image/jpeg\" width=\"73\" height=\"100\" alias_key=\"2343348577\" timestamp=\"1361209032\" is_valid=\"1\"/><alias name=\"medium\" filename=\"Bundle-Generation-Screenshot_medium.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-generation-screenshot/606-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-generation-screenshot/606-1-eng-US/Bundle-Generation-Screenshot_medium.jpg\" mime_type=\"image/jpeg\" width=\"145\" height=\"200\" alias_key=\"405413724\" timestamp=\"1361209032\" is_valid=\"1\"/><alias name=\"imagelarge\" filename=\"Bundle-Generation-Screenshot_imagelarge.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-generation-screenshot/606-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-generation-screenshot/606-1-eng-US/Bundle-Generation-Screenshot_imagelarge.jpg\" mime_type=\"image/jpeg\" width=\"448\" height=\"618\" alias_key=\"2602985738\" timestamp=\"1361209050\" is_valid=\"1\"/><alias name=\"large\" filename=\"Bundle-Generation-Screenshot_large.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-generation-screenshot/606-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-generation-screenshot/606-1-eng-US/Bundle-Generation-Screenshot_large.jpg\" mime_type=\"image/jpeg\" width=\"319\" height=\"440\" alias_key=\"3448122496\" timestamp=\"1361324034\" is_valid=\"1\"/></ezimage>\n','ezimage',606,'eng-US',2,0,'',1),(0,247,114,0,NULL,'','ezsrrating',607,'eng-US',2,0,'',1),(0,248,114,0,NULL,'','ezkeyword',608,'eng-US',2,0,'',1),(0,196,115,0,NULL,'Working with eZ Publish 5 - Setup','ezstring',609,'eng-US',2,0,'working with ez publish 5 - setup',1),(0,196,115,0,NULL,'Working with eZ Publish 5 - Installation','ezstring',609,'eng-US',2,0,'working with ez publish 5 - installation',2),(0,303,115,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Part 3 of X - Getting Things up and running</paragraph></section>','ezxmltext',610,'eng-US',2,0,'',1),(0,303,115,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Part 3 of X - Getting Things up and running</paragraph></section>\n','ezxmltext',610,'eng-US',2,0,'',2),(0,197,115,0,1045487555,'<?xml version=\"1.0\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><section><header>Requirements</header><paragraph>I\'m assuming that you already have a decent Apache, Mysql, and PHP setup running and configured for setting up virtual hosts. You\'ll want to have at least PHP 5.3.8 and MySQL 5.0.51, and some version of ImageMagick. On a Mac, Homebrew is a quick way to get most of this up and running. Vagrant is also a great way to provide a performant virtual environment to use as a development sandbox.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><custom name=\"factbox\" custom:title=\"Note\" custom:align=\"right\"><paragraph>Most of these setup steps are covered in more detail and variety by the <link target=\"_blank\" url_id=\"96\">eZ Publish online documentation</link>.</paragraph></custom></paragraph></section><section><header>Downloading</header><paragraph>First off, download <link target=\"_blank\" url_id=\"97\">eZ Publish Community Edition 2012.12</link>, and unzip it into a folder. Here\'s what you get:</paragraph><paragraph><embed align=\"left\" view=\"embed\" size=\"original\" custom:offset=\"10\" custom:limit=\"5\" object_id=\"110\"/></paragraph><paragraph>So what are we looking at here? Let\'s talk about a couple of these pieces:&#xA0;</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">composer.* - These are files for using the <link url_id=\"98\">composer PHP dependency management system</link>. It\'s very handy for maintaining projects with a lot of third-party libraries, but we\'ll ignore it for this tutorial so we\'re all using the same version of everything.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish - This is where the config, cache, and some logging components of eZ Publish live (this directory is called \'app\' in most Symfony installs)</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy - Take a peek in here - Look, it\'s our old friend eZ Publish 4! This is a full eZ 4 install, slightly updated.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">src- This is where we\'ll be building out our code, in structures called&#xA0;<emphasize>bundles</emphasize>. There\'s a bundle already there, the EzSystemsDemoBundle, that implements a basic surround in symfony.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">vendor - This is where most of the supporting third-party frameworks live, including components of Symfony and eZ Publish.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">web - This is where you\'ll point Apache to as a web root. We\'ll set up Rewrite rules shortly to send most of our traffic to index.php, which is the endpoint that handles all requests to Symfony.</paragraph></li></ul></paragraph></section><section><header>Apache Config</header><paragraph>Here\'s a basic apache config to use for development - don\'t copy this one to your production environment.&#xA0;</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal>&lt;VirtualHost *:80&gt;     DocumentRoot [PATH_TO_EZPUBLISH]/web/    ServerName [SERVER_NAME]    ServerAlias [SERVER_ALIAS]    &lt;Directory [PATH_TO_EZPUBLISH]/web&gt;        Options FollowSymLinks        AllowOverride None\n        Allow From All    &lt;/Directory&gt;     # Configures some PHP settings - most of these should be your defaults anyway    &lt;IfModule mod_php5.c&gt;        php_admin_flag safe_mode Off        php_admin_value register_globals 0        php_value magic_quotes_gpc 0        php_value magic_quotes_runtime 0        php_value allow_call_time_pass_reference 0    &lt;/IfModule&gt;     DirectoryIndex index.php     RewriteEngine On    # CVE-2012-6432    RewriteRule ^/_internal - [R=403,L]    # Send requests for version 1 of eZ\'s REST API to the legacy code    RewriteRule ^/api/[^/]+/v1/ /index_rest.php [L]    # Don\'t rewrite some paths used by legacy eZ Publish    RewriteRule ^/var/([^/]+/)?storage/images(-versioned)?/.* - [L]    RewriteRule ^/var/([^/]+/)?cache/(texttoimage|public)/.* - [L]    RewriteRule ^/design/[^/]+/(stylesheets|images|javascript|fonts)/.* - [L]    RewriteRule ^/share/icons/.* - [L]    RewriteRule ^/extension/[^/]+/design/[^/]+/(stylesheets|flash|images|lib|javascripts?)/.* - [L]    RewriteRule ^/packages/styles/.+/(stylesheets|images|javascript)/[^/]+/.* - [L]    RewriteRule ^/packages/styles/.+/thumbnail/.* - [L]    RewriteRule ^/var/storage/packages/.* - [L]    # Don\'t rewrite for some web-standard files    RewriteRule ^/favicon\\.ico - [L]    RewriteRule ^/robots\\.txt - [L]    RewriteRule ^/w3c/p3p\\.xml - [L]    # Don\'t rewrite for some assets in bundles    RewriteRule ^/bundles/ - [L]    # Send everything else to the development version of the router    RewriteRule .* /index_dev.php &lt;/VirtualHost&gt;\n&#xA0;\n\n</literal></paragraph><paragraph>Note that you need to replace [PATH_TO_EZPUBLISH], [SERVER_NAME], and [SERVER_ALIAS] with your own values.&#xA0;</paragraph><section><header>MySQL</header><paragraph>You don\'t have to do much configuration for MySQL, but you should create a new database to work with, and set up a user name and password.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal>CREATE DATABASE partialcontent CHARSET utf8;\nGRANT ALL ON partialcontent.* TO &lt;a href=\"mailto:pcdb_user@localhost\"&gt;pcdb_user@localhost&lt;/a&gt; identified by \'YOUR_PASSWORD_HERE\';\nFLUSH PRIVILEGES;</literal></paragraph></section><section><header>Symfony</header><paragraph>First, make sure that the following folders and all their contents are writable by the web server:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish/cache</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish/logs</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish/config</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy/design</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy/extension</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy/settings</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy/var</paragraph></li></ul></paragraph><paragraph>Next, we need to make sure all of the static assets needed by the system (javascript, css, images, etc) are available under the \'web\' folder. Fortunately, eZ provides Symfony console commands to take care of this for us. Go to the root of your project in your console (the directory that contains \'ezpublish\', \'ezpublish_legacy\', \'web\', etc) and run this command:&#xA0;</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal>php ezpublish/console&#xA0;</literal></paragraph><paragraph>What you\'ll see is a help text and a list of available commands. The ones we\'re looking for are the ones to install assets. Go ahead and run these two:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal>php ezpublish/console&#xA0;assets:install --symlink\nphp ezpublish/console ezpublish:legacy:assets_install --symlink</literal></paragraph><paragraph>There are a lot more things that the console can do for us, but we\'ll come back to it later. For now, go ahead and access the site in your web browser.</paragraph><paragraph>If you played your cards right, you should have something:&#xA0;</paragraph><paragraph><embed view=\"embed\" size=\"reference\" custom:offset=\"0\" custom:limit=\"5\" object_id=\"111\"/></paragraph><paragraph>If you\'ve worked with eZ Publish before, this will look pretty familiar: It\'s the eZ Publish setup wizard. Follow the steps of the wizard to set up your site. I\'d recommend making a couple of choices so that you can follow along with the tutorial:&#xA0;</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Enter your DB credentials that you defined earlier in the \'database initialization\' step.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Under \'Site Package\', select \'eZ Publish Demo Site\' (this step takes a while and requires an internet connection as additional features are downloaded)</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">For \'Site Access Configuration\', select \'URL\'</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Under \'Site Details\', leave the \'user path\' and \'admin path\' as-is, but make sure to select the database you created earlier.</paragraph></li></ul></paragraph><paragraph>Once you\'ve completed the wizard, you should have a running site!</paragraph><paragraph><embed view=\"embed\" size=\"reference\" custom:offset=\"0\" custom:limit=\"5\" object_remote_id=\"822808b65df9f4d3bd6ed116fb834516\"/></paragraph></section></section></section>\n','ezxmltext',611,'eng-US',2,0,'',1),(0,197,115,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><section><header>Requirements</header><paragraph>I\'m assuming that you already have a decent Apache, Mysql, and PHP setup running and configured for setting up virtual hosts. You\'ll want to have at least PHP 5.3.8 and MySQL 5.0.51, and some version of ImageMagick. On a Mac, Homebrew is a quick way to get most of this up and running. Vagrant is also a great way to provide a performant virtual environment to use as a development sandbox.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><custom name=\"factbox\" custom:title=\"Note\" custom:align=\"right\"><paragraph>Most of these setup steps are covered in more detail and variety by the <link target=\"_blank\" url_id=\"96\">eZ Publish online documentation</link>.</paragraph></custom></paragraph></section><section><header>Downloading</header><paragraph>First off, download <link target=\"_blank\" url_id=\"97\">eZ Publish Community Edition 2012.12</link>, and unzip it into a folder. Here\'s what you get:</paragraph><paragraph><embed align=\"left\" view=\"embed\" size=\"original\" object_id=\"110\" custom:offset=\"10\" custom:limit=\"5\"/></paragraph><paragraph>So what are we looking at here? Let\'s talk about a couple of these pieces: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">composer.* - These are files for using the <link url_id=\"98\">composer PHP dependency management system</link>. It\'s very handy for maintaining projects with a lot of third-party libraries, but we\'ll ignore it for this tutorial so we\'re all using the same version of everything.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish - This is where the config, cache, and some logging components of eZ Publish live (this directory is called \'app\' in most Symfony installs)</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy - Take a peek in here - Look, it\'s our old friend eZ Publish 4! This is a full eZ 4 install, slightly updated.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">src- This is where we\'ll be building out our code, in structures called <emphasize>bundles</emphasize>. There\'s a bundle already there, the EzSystemsDemoBundle, that implements a basic surround in symfony.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">vendor - This is where most of the supporting third-party frameworks live, including components of Symfony and eZ Publish.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">web - This is where you\'ll point Apache to as a web root. We\'ll set up Rewrite rules shortly to send most of our traffic to index.php, which is the endpoint that handles all requests to Symfony.</paragraph></li></ul></paragraph></section><section><header>Apache Config</header><paragraph>Here\'s a basic apache config to use for development - don\'t copy this one to your production environment. </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal>&lt;VirtualHost *:80&gt;     DocumentRoot [PATH_TO_EZPUBLISH]/web/    ServerName [SERVER_NAME]    ServerAlias [SERVER_ALIAS]    &lt;Directory [PATH_TO_EZPUBLISH]/web&gt;        Options FollowSymLinks        AllowOverride None\n        Allow From All    &lt;/Directory&gt;     # Configures some PHP settings - most of these should be your defaults anyway    &lt;IfModule mod_php5.c&gt;        php_admin_flag safe_mode Off        php_admin_value register_globals 0        php_value magic_quotes_gpc 0        php_value magic_quotes_runtime 0        php_value allow_call_time_pass_reference 0    &lt;/IfModule&gt;     DirectoryIndex index.php     RewriteEngine On    # CVE-2012-6432    RewriteRule ^/_internal - [R=403,L]    # Send requests for version 1 of eZ\'s REST API to the legacy code    RewriteRule ^/api/[^/]+/v1/ /index_rest.php [L]    # Don\'t rewrite some paths used by legacy eZ Publish    RewriteRule ^/var/([^/]+/)?storage/images(-versioned)?/.* - [L]    RewriteRule ^/var/([^/]+/)?cache/(texttoimage|public)/.* - [L]    RewriteRule ^/design/[^/]+/(stylesheets|images|javascript|fonts)/.* - [L]    RewriteRule ^/share/icons/.* - [L]    RewriteRule ^/extension/[^/]+/design/[^/]+/(stylesheets|flash|images|lib|javascripts?)/.* - [L]    RewriteRule ^/packages/styles/.+/(stylesheets|images|javascript)/[^/]+/.* - [L]    RewriteRule ^/packages/styles/.+/thumbnail/.* - [L]    RewriteRule ^/var/storage/packages/.* - [L]    # Don\'t rewrite for some web-standard files    RewriteRule ^/favicon\\.ico - [L]    RewriteRule ^/robots\\.txt - [L]    RewriteRule ^/w3c/p3p\\.xml - [L]    # Don\'t rewrite for some assets in bundles    RewriteRule ^/bundles/ - [L]    # Send everything else to the development version of the router    RewriteRule .* /index_dev.php &lt;/VirtualHost&gt;\n \n\n</literal></paragraph><paragraph>Note that you need to replace [PATH_TO_EZPUBLISH], [SERVER_NAME], and [SERVER_ALIAS] with your own values. </paragraph><section><header>MySQL</header><paragraph>You don\'t have to do much configuration for MySQL, but you should create a new database to work with, and set up a user name and password.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal>CREATE DATABASE partialcontent CHARSET utf8;\nGRANT ALL ON partialcontent.* TO &lt;a href=\"mailto:pcdb_user@localhost\"&gt;pcdb_user@localhost&lt;/a&gt; identified by \'YOUR_PASSWORD_HERE\';\nFLUSH PRIVILEGES;</literal></paragraph></section><section><header>Symfony</header><paragraph>First, make sure that the following folders and all their contents are writable by the web server:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish/cache</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish/logs</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish/config</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy/design</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy/extension</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy/settings</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezpublish_legacy/var</paragraph></li></ul></paragraph><paragraph>Next, we need to make sure all of the static assets needed by the system (javascript, css, images, etc) are available under the \'web\' folder. Fortunately, eZ provides Symfony console commands to take care of this for us. Go to the root of your project in your console (the directory that contains \'ezpublish\', \'ezpublish_legacy\', \'web\', etc) and run this command: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal>php ezpublish/console </literal></paragraph><paragraph>What you\'ll see is a help text and a list of available commands. The ones we\'re looking for are the ones to install assets. Go ahead and run these two:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal>php ezpublish/console assets:install --symlink\nphp ezpublish/console ezpublish:legacy:assets_install --symlink</literal></paragraph><paragraph>There are a lot more things that the console can do for us, but we\'ll come back to it later. For now, go ahead and access the site in your web browser.</paragraph><paragraph>If you played your cards right, you should have something: </paragraph><paragraph><embed view=\"embed\" size=\"reference\" object_id=\"111\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph><paragraph>If you\'ve worked with eZ Publish before, this will look pretty familiar: It\'s the eZ Publish setup wizard. Follow the steps of the wizard to set up your site. I\'d recommend making a couple of choices so that you can follow along with the tutorial: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Enter your DB credentials that you defined earlier in the \'database initialization\' step.</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Under \'Site Package\', select \'eZ Publish Demo Site\' (this step takes a while and requires an internet connection as additional features are downloaded)</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">For \'Site Access Configuration\', select \'URL\'</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Under \'Site Details\', leave the \'user path\' and \'admin path\' as-is, but make sure to select the database you created earlier.</paragraph></li></ul></paragraph><paragraph>Once you\'ve completed the wizard, you should have a running site!</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">ezembed</paragraph></section></section></section>\n','ezxmltext',611,'eng-US',2,0,'',2),(0,198,115,0,1360877580,'','ezdatetime',612,'eng-US',2,1360877580,'',1),(0,198,115,0,1360877580,'','ezdatetime',612,'eng-US',2,1360877580,'',2),(0,200,115,1,1,'','ezcomcomments',613,'eng-US',2,0,'',1),(0,200,115,1,1,'','ezcomcomments',613,'eng-US',2,0,'',2),(0,244,116,0,NULL,'Demo Site Content Screenshot','ezstring',614,'eng-US',2,0,'demo site content screenshot',1),(0,245,116,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',615,'eng-US',2,0,'',1),(0,246,116,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Demo-Site-Content-Screenshot.jpg\" suffix=\"jpg\" basename=\"Demo-Site-Content-Screenshot\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/demo-site-content-screenshot/616-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/demo-site-content-screenshot/616-1-eng-US/Demo-Site-Content-Screenshot.jpg\" original_filename=\"Screenshot_2_14_13_5_32_PM.jpg\" mime_type=\"image/jpeg\" width=\"1054\" height=\"865\" alternative_text=\"Screenshot of the eZ Publish Demo Site\" alias_key=\"1293033771\" timestamp=\"1361217323\"><original attribute_id=\"616\" attribute_version=\"1\" attribute_language=\"eng-US\"/><information Height=\"865\" Width=\"1054\" IsColor=\"1\" ByteOrderMotorola=\"1\"><array name=\"ifd0\"><item key=\"XResolution\" base64=\"1\">NzIvMQ==</item><item key=\"YResolution\" base64=\"1\">NzIvMQ==</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">Nzg=</item></array><array name=\"exif\"><item key=\"ExifImageWidth\" base64=\"1\">MTA1NA==</item><item key=\"ExifImageLength\" base64=\"1\">ODY1</item></array></information><alias name=\"reference\" filename=\"Demo-Site-Content-Screenshot_reference.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/demo-site-content-screenshot/616-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/demo-site-content-screenshot/616-1-eng-US/Demo-Site-Content-Screenshot_reference.jpg\" mime_type=\"image/jpeg\" width=\"600\" height=\"492\" alias_key=\"2605465115\" timestamp=\"1361217323\" is_valid=\"1\"/><alias name=\"small\" filename=\"Demo-Site-Content-Screenshot_small.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/demo-site-content-screenshot/616-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/demo-site-content-screenshot/616-1-eng-US/Demo-Site-Content-Screenshot_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"82\" alias_key=\"2343348577\" timestamp=\"1361217323\" is_valid=\"1\"/><alias name=\"medium\" filename=\"Demo-Site-Content-Screenshot_medium.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/demo-site-content-screenshot/616-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/demo-site-content-screenshot/616-1-eng-US/Demo-Site-Content-Screenshot_medium.jpg\" mime_type=\"image/jpeg\" width=\"200\" height=\"164\" alias_key=\"405413724\" timestamp=\"1361217324\" is_valid=\"1\"/><alias name=\"large\" filename=\"Demo-Site-Content-Screenshot_large.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/demo-site-content-screenshot/616-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/demo-site-content-screenshot/616-1-eng-US/Demo-Site-Content-Screenshot_large.jpg\" mime_type=\"image/jpeg\" width=\"360\" height=\"295\" alias_key=\"3448122496\" timestamp=\"1361331518\" is_valid=\"1\"/></ezimage>\n','ezimage',616,'eng-US',2,0,'',1),(0,247,116,0,NULL,'','ezsrrating',617,'eng-US',2,0,'',1),(0,248,116,0,NULL,'','ezkeyword',618,'eng-US',2,0,'',1),(0,244,117,0,NULL,'Bundle Contents','ezstring',619,'eng-US',2,0,'bundle contents',1),(0,245,117,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',620,'eng-US',2,0,'',1),(0,246,117,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Bundle-Contents.jpg\" suffix=\"jpg\" basename=\"Bundle-Contents\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-contents/621-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-contents/621-1-eng-US/Bundle-Contents.jpg\" original_filename=\"Screenshot_2_18_13_3_09_PM.jpg\" mime_type=\"image/jpeg\" width=\"383\" height=\"359\" alternative_text=\"Contents of bundle directory - Finder screenshot\" alias_key=\"1293033771\" timestamp=\"1361221935\"><original attribute_id=\"621\" attribute_version=\"1\" attribute_language=\"eng-US\"/><information Height=\"359\" Width=\"383\" IsColor=\"1\" ByteOrderMotorola=\"1\"><array name=\"ifd0\"><item key=\"XResolution\" base64=\"1\">NzIvMQ==</item><item key=\"YResolution\" base64=\"1\">NzIvMQ==</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">Nzg=</item></array><array name=\"exif\"><item key=\"ExifImageWidth\" base64=\"1\">Mzgz</item><item key=\"ExifImageLength\" base64=\"1\">MzU5</item></array></information><alias name=\"reference\" filename=\"Bundle-Contents_reference.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-contents/621-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-contents/621-1-eng-US/Bundle-Contents_reference.jpg\" mime_type=\"image/jpeg\" width=\"383\" height=\"359\" alias_key=\"2605465115\" timestamp=\"1361221935\" is_valid=\"1\"/><alias name=\"small\" filename=\"Bundle-Contents_small.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-contents/621-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-contents/621-1-eng-US/Bundle-Contents_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"94\" alias_key=\"2343348577\" timestamp=\"1361221935\" is_valid=\"1\"/><alias name=\"medium\" filename=\"Bundle-Contents_medium.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-contents/621-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-contents/621-1-eng-US/Bundle-Contents_medium.jpg\" mime_type=\"image/jpeg\" width=\"200\" height=\"187\" alias_key=\"405413724\" timestamp=\"1361221935\" is_valid=\"1\"/><alias name=\"large\" filename=\"Bundle-Contents_large.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-contents/621-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-contents/621-1-eng-US/Bundle-Contents_large.jpg\" mime_type=\"image/jpeg\" width=\"360\" height=\"337\" alias_key=\"3448122496\" timestamp=\"1361324034\" is_valid=\"1\"/></ezimage>\n','ezimage',621,'eng-US',2,0,'',1),(0,247,117,0,NULL,'','ezsrrating',622,'eng-US',2,0,'',1),(0,248,117,0,NULL,'','ezkeyword',623,'eng-US',2,0,'',1),(0,244,118,0,NULL,'Pagelayout in place','ezstring',624,'eng-US',2,0,'pagelayout in place',1),(0,245,118,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',625,'eng-US',2,0,'',1),(0,246,118,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Pagelayout-in-place.jpg\" suffix=\"jpg\" basename=\"Pagelayout-in-place\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/pagelayout-in-place/626-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/pagelayout-in-place/626-1-eng-US/Pagelayout-in-place.jpg\" original_filename=\"Screenshot_2_15_13_2_59_PM 2.jpg\" mime_type=\"image/jpeg\" width=\"445\" height=\"660\" alternative_text=\"Screenshot of basic site with no styling\" alias_key=\"1293033771\" timestamp=\"1361223595\"><original attribute_id=\"626\" attribute_version=\"1\" attribute_language=\"eng-US\"/><information Height=\"660\" Width=\"445\" IsColor=\"1\" ByteOrderMotorola=\"1\"><array name=\"ifd0\"><item key=\"XResolution\" base64=\"1\">NzIvMQ==</item><item key=\"YResolution\" base64=\"1\">NzIvMQ==</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">Nzg=</item></array><array name=\"exif\"><item key=\"ExifImageWidth\" base64=\"1\">NDQ1</item><item key=\"ExifImageLength\" base64=\"1\">NjYw</item></array></information><alias name=\"reference\" filename=\"Pagelayout-in-place_reference.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/pagelayout-in-place/626-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/pagelayout-in-place/626-1-eng-US/Pagelayout-in-place_reference.jpg\" mime_type=\"image/jpeg\" width=\"405\" height=\"600\" alias_key=\"2605465115\" timestamp=\"1361223595\" is_valid=\"1\"/><alias name=\"small\" filename=\"Pagelayout-in-place_small.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/pagelayout-in-place/626-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/pagelayout-in-place/626-1-eng-US/Pagelayout-in-place_small.jpg\" mime_type=\"image/jpeg\" width=\"68\" height=\"100\" alias_key=\"2343348577\" timestamp=\"1361223595\" is_valid=\"1\"/><alias name=\"medium\" filename=\"Pagelayout-in-place_medium.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/pagelayout-in-place/626-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/pagelayout-in-place/626-1-eng-US/Pagelayout-in-place_medium.jpg\" mime_type=\"image/jpeg\" width=\"135\" height=\"200\" alias_key=\"405413724\" timestamp=\"1361295300\" is_valid=\"1\"/><alias name=\"large\" filename=\"Pagelayout-in-place_large.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/pagelayout-in-place/626-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/pagelayout-in-place/626-1-eng-US/Pagelayout-in-place_large.jpg\" mime_type=\"image/jpeg\" width=\"297\" height=\"440\" alias_key=\"3448122496\" timestamp=\"1361324035\" is_valid=\"1\"/></ezimage>\n','ezimage',626,'eng-US',2,0,'',1),(0,247,118,0,NULL,'','ezsrrating',627,'eng-US',2,0,'',1),(0,248,118,0,NULL,'','ezkeyword',628,'eng-US',2,0,'',1),(0,244,119,0,NULL,'Style Basic Page','ezstring',629,'eng-US',2,0,'style basic page',1),(0,245,119,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',630,'eng-US',2,0,'',1),(0,246,119,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Style-Basic-Page.jpg\" suffix=\"jpg\" basename=\"Style-Basic-Page\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/style-basic-page/631-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/style-basic-page/631-1-eng-US/Style-Basic-Page.jpg\" original_filename=\"Screenshot_2_18_13_4_12_PM.jpg\" mime_type=\"image/jpeg\" width=\"1081\" height=\"741\" alternative_text=\"Screenshot of styled page\" alias_key=\"1293033771\" timestamp=\"1361225685\"><original attribute_id=\"631\" attribute_version=\"1\" attribute_language=\"eng-US\"/><information Height=\"741\" Width=\"1081\" IsColor=\"1\" ByteOrderMotorola=\"1\"><array name=\"ifd0\"><item key=\"XResolution\" base64=\"1\">NzIvMQ==</item><item key=\"YResolution\" base64=\"1\">NzIvMQ==</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">Nzg=</item></array><array name=\"exif\"><item key=\"ExifImageWidth\" base64=\"1\">MTA4MQ==</item><item key=\"ExifImageLength\" base64=\"1\">NzQx</item></array></information><alias name=\"reference\" filename=\"Style-Basic-Page_reference.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/style-basic-page/631-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/style-basic-page/631-1-eng-US/Style-Basic-Page_reference.jpg\" mime_type=\"image/jpeg\" width=\"600\" height=\"411\" alias_key=\"2605465115\" timestamp=\"1361225685\" is_valid=\"1\"/><alias name=\"small\" filename=\"Style-Basic-Page_small.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/style-basic-page/631-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/style-basic-page/631-1-eng-US/Style-Basic-Page_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"69\" alias_key=\"2343348577\" timestamp=\"1361225685\" is_valid=\"1\"/><alias name=\"medium\" filename=\"Style-Basic-Page_medium.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/style-basic-page/631-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/style-basic-page/631-1-eng-US/Style-Basic-Page_medium.jpg\" mime_type=\"image/jpeg\" width=\"200\" height=\"137\" alias_key=\"405413724\" timestamp=\"1361225686\" is_valid=\"1\"/><alias name=\"large\" filename=\"Style-Basic-Page_large.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/style-basic-page/631-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/style-basic-page/631-1-eng-US/Style-Basic-Page_large.jpg\" mime_type=\"image/jpeg\" width=\"360\" height=\"247\" alias_key=\"3448122496\" timestamp=\"1361324035\" is_valid=\"1\"/></ezimage>\n','ezimage',631,'eng-US',2,0,'',1),(0,247,119,0,NULL,'','ezsrrating',632,'eng-US',2,0,'',1),(0,248,119,0,NULL,'','ezkeyword',633,'eng-US',2,0,'',1),(0,196,120,0,NULL,'Working With eZ Publish 5 - Content Templates','ezstring',634,'eng-US',2,0,'working with ez publish 5 - content templates',1),(0,196,120,0,NULL,'Working With eZ Publish 5 - Content Templates','ezstring',634,'eng-US',2,0,'working with ez publish 5 - content templates',2),(0,196,120,0,NULL,'Working With eZ Publish 5 - Content Templates','ezstring',634,'eng-US',2,0,'working with ez publish 5 - content templates',3),(0,196,120,0,NULL,'Working With eZ Publish 5 - Content Templates','ezstring',634,'eng-US',2,0,'working with ez publish 5 - content templates',4),(0,196,120,0,NULL,'Working With eZ Publish 5 - Content Templates','ezstring',634,'eng-US',2,0,'working with ez publish 5 - content templates',5),(0,303,120,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',635,'eng-US',2,0,'',1),(0,303,120,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',635,'eng-US',2,0,'',2),(0,303,120,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',635,'eng-US',2,0,'',3),(0,303,120,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',635,'eng-US',2,0,'',4),(0,303,120,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',635,'eng-US',2,0,'',5),(0,197,120,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Now that you have the surround running in Twig templates, it\'s time to take over those content templates from the legacy template system and create Twig templates for those too. </paragraph><paragraph>First, let\'s catch up your tutorial code for this step by updating your branch to <strong>tutorial-2</strong>. As with last time, note that this will erase your local changes for the sake of consistency, so if you have things you want to keep, commit them as a new branch. </paragraph><paragraph>Clean up your working directory:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">git checkout -- *</literal><literal class=\"code_text\">git clean -f -d </literal></paragraph><paragraph>and pull down the next step of the tutorial:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">git checkout -b tutorial-2 origin/tutorial-2 </literal></paragraph><paragraph>This includes our template and asset additions from the last step.</paragraph><paragraph>In the legacy eZ Publish template system, there was a rules-based system that the CMS used to decide which template would be used for a given content object based on its type, location, the type of appearance requested (view) and other rules. An analogous system is in place for eZ Publish 5, but it\'s a bit cleaner and more extensible. </paragraph></section>\n','ezxmltext',636,'eng-US',2,0,'',1),(0,197,120,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Now that you have the surround running in Twig templates, it\'s time to take over those content templates from the legacy template system and create Twig templates for those too. </paragraph><paragraph>First, let\'s catch up your tutorial code for this step by updating your branch to <strong>tutorial-2</strong>. As with last time, note that this will erase your local changes for the sake of consistency, so if you have things you want to keep, commit them as a new branch. </paragraph><paragraph>Clean up your working directory:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">git checkout -- *</literal><literal class=\"code_text\">git clean -f -d </literal></paragraph><paragraph>and pull down the next step of the tutorial:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">git checkout -b tutorial-2 origin/tutorial-2 </literal></paragraph><paragraph>This includes our template and asset additions from the last step.</paragraph><paragraph>In the legacy eZ Publish template system, there was a rules-based system that the CMS used to decide which template would be used for a given content object based on its type, location, the type of appearance requested (view) and other rules. An analogous system is in place for eZ Publish 5, but it\'s a bit cleaner and more extensible. </paragraph><paragraph>First, let\'s create a template for our \'Blog\' content type, which is the kind of page we\'ve been looking at when we load the root of the site. In our bundle, create the directory Resources/views/full, and add a \'blog.html.twig\' file in it. Add this content to the file: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_twig\">{# This template extends pagelayout.html.twig and just replaces the \'content\' block #}\n{% extends noLayout ? viewbaseLayout : \"BlendPartialContentBundle::pagelayout.html.twig\" %}\n{% block content %}\n    {# The \'location\' variable contains info about the current position in the site and some metadata #}\n    &lt;h1 class=\"page-title\"&gt;{{ location.contentInfo.name }}&lt;/h1&gt;\n    &lt;article class=\"extra description\"&gt;\n        {# The \'content\' variable contains the content object we\'re viewing #}\n        {# ez_render_field is a twig helper function that uses either twig or legacy templates to render the\n           data from the field\n        #}\n        {{ ez_render_field( content, \"description\" ) }}\n    &lt;/article&gt;\n    Blog posts will go here\n{% endblock %}</literal></paragraph><paragraph>The \'extends\' keyword declares that this template inherits from the pagelayout.html.twig, which means that our page will look just like that template, except our new template markup will be plugged in to the \'content\' block. This seems similar on the surface to eZ\'s former templating system, but keep in mind that the template will be rendered in a single step - both the inner and outer template will have access to the same variables.</paragraph><paragraph>Go ahead and createa \'blog_post.html.twig\' in that same \'full\' folder: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_twig\">{% extends noLayout ? viewbaseLayout : \"BlendPartialContentBundle::pagelayout.html.twig\" %}\n{% block content %}\n    &lt;article class=\"body\"&gt;\n        &lt;h1 class=\"page-title\"&gt;{{ location.contentInfo.name }}&lt;/h1&gt;\n        &lt;div&gt;\n            {{ ez_render_field( content, \"body\" ) }}\n        &lt;/div&gt;\n    &lt;/article&gt;\n{% endblock %}</literal></paragraph><paragraph>Nothing new there, just more of the same.</paragraph><paragraph>The next step is to tell eZ Publish about our new templates. This means configuring the template system in the yml files. To keep things familiar, we\'ll create an override.yml and include it, sort of like the override.ini files you might be familiar with from the legacy system.</paragraph><paragraph>Up in the htdocs/ezpublish/config folder, create a new file, override.yml, and add these rules to it:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">#This ezpublish.system preamble states the context these rules apply in\nezpublish:\n    system:\n        # The siteaccess\n        ezdemo_site_user:\n            location_view:\n                # Type of the view. \'full\' is when an object represents the whole page\n                full:\n                    # name for our rule\n                    blog:\n                        # template to use\n                        template: BlendPartialContentBundle:full:blog.html.twig\n                        # when to use this template (when the ContentType is \'blog\') \n                        match:\n                            Identifier\\ContentType: blog\n                    blog_post:\n                        template: BlendPartialContentBundle:full:blog_post.html.twig\n                        match:\n                            Identifier\\ContentType: blog_post</literal></paragraph><paragraph>Next, we need to tell eZ Publish to include our new ini file in its configuration. Add this to the top of htdocs/ezpublish/config/ezpublish.yml</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">imports:\n    - { resource: override.yml }</literal></paragraph><paragraph>That\'s it. Refresh your page and you should see your new templates in use.</paragraph><paragraph><embed view=\"embed\" size=\"reference\" object_id=\"121\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph><paragraph>The rules for selecting templates in eZ Publish 5 are similar to those in eZ Publish 4, just with a new template language and configuration syntax. You can <link target=\"_blank\" url_id=\"114\">read more about it in the eZ Publish 5 documentation</link>. </paragraph><paragraph>Next we\'ll get some blog posts showing up by retrieving content from the repository.</paragraph></section>\n','ezxmltext',636,'eng-US',2,0,'',2),(0,197,120,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Now that you have the surround running in Twig templates, it\'s time to take over those content templates from the legacy template system and create Twig templates for those too. </paragraph><paragraph>First, let\'s catch up your tutorial code for this step by updating your branch to <strong>tutorial-2</strong>. As with last time, note that this will erase your local changes for the sake of consistency, so if you have things you want to keep, commit them as a new branch. </paragraph><paragraph>Clean up your working directory:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">git checkout -- *</literal><literal class=\"code_text\">git clean -f -d </literal></paragraph><paragraph>and pull down the next step of the tutorial:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">git checkout -b tutorial-2 origin/tutorial-2 </literal></paragraph><paragraph>This includes our template and asset additions from the last step.</paragraph><paragraph>In the legacy eZ Publish template system, there was a rules-based system that the CMS used to decide which template would be used for a given content object based on its type, location, the type of appearance requested (view) and other rules. An analogous system is in place for eZ Publish 5, but it\'s a bit cleaner and more extensible. </paragraph><paragraph>First, let\'s create a template for our \'Blog\' content type, which is the kind of page we\'ve been looking at when we load the root of the site. In our bundle, create the directory Resources/views/full, and add a \'blog.html.twig\' file in it. Add this content to the file: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_twig\">{# This template extends pagelayout.html.twig and just replaces the \'content\' block #}\n{% extends noLayout ? viewbaseLayout : \"BlendPartialContentBundle::pagelayout.html.twig\" %}\n{% block content %}\n    {# The \'location\' variable contains info about the current position in the site and some metadata #}\n    &lt;h1 class=\"page-title\"&gt;{{ location.contentInfo.name }}&lt;/h1&gt;\n    &lt;article class=\"extra description\"&gt;\n        {# The \'content\' variable contains the content object we\'re viewing #}\n        {# ez_render_field is a twig helper function that uses either twig or legacy templates to render the\n           data from the field\n        #}\n        {{ ez_render_field( content, \"description\" ) }}\n    &lt;/article&gt;\n    Blog posts will go here\n{% endblock %}</literal></paragraph><paragraph>The \'extends\' keyword declares that this template inherits from the pagelayout.html.twig, which means that our page will look just like that template, except our new template markup will be plugged in to the \'content\' block. This seems similar on the surface to eZ\'s former templating system, but keep in mind that the template will be rendered in a single step - both the inner and outer template will have access to the same variables.</paragraph><paragraph>Go ahead and createa \'blog_post.html.twig\' in that same \'full\' folder: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_twig\">{% extends noLayout ? viewbaseLayout : \"BlendPartialContentBundle::pagelayout.html.twig\" %}\n{% block content %}\n    &lt;article class=\"body\"&gt;\n        &lt;h1 class=\"page-title\"&gt;{{ location.contentInfo.name }}&lt;/h1&gt;\n        &lt;div&gt;\n            {{ ez_render_field( content, \"body\" ) }}\n        &lt;/div&gt;\n    &lt;/article&gt;\n{% endblock %}</literal></paragraph><paragraph>Nothing new there, just more of the same.</paragraph><paragraph>The next step is to tell eZ Publish about our new templates. This means configuring the template system in the yml files. To keep things familiar, we\'ll create an override.yml and include it, sort of like the override.ini files you might be familiar with from the legacy system.</paragraph><paragraph>Up in the htdocs/ezpublish/config folder, create a new file, override.yml, and add these rules to it:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">#This ezpublish.system preamble states the context these rules apply in\nezpublish:\n    system:\n        # The siteaccess\n        ezdemo_site_user:\n            location_view:\n                # Type of the view. \'full\' is when an object represents the whole page\n                full:\n                    # name for our rule\n                    blog:\n                        # template to use\n                        template: BlendPartialContentBundle:full:blog.html.twig\n                        # when to use this template (when the ContentType is \'blog\') \n                        match:\n                            Identifier\\ContentType: blog\n                    blog_post:\n                        template: BlendPartialContentBundle:full:blog_post.html.twig\n                        match:\n                            Identifier\\ContentType: blog_post</literal></paragraph><paragraph>As you can see, you create a rule for each template to tell eZ Publish when you want to use it. Next, we need to tell eZ Publish to include our new ini file in its configuration. Add this to the top of htdocs/ezpublish/config/ezpublish.yml</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">imports:\n    - { resource: override.yml }</literal></paragraph><paragraph>This will include your new override.yml file in to the ezpublish.yml as though it were part of the file.</paragraph><paragraph>That\'s it. Refresh your page and you should see your new templates in use.</paragraph><paragraph><embed view=\"embed\" size=\"reference\" object_id=\"121\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph><paragraph>The rules for selecting templates in eZ Publish 5 are similar to those in eZ Publish 4, just with a new template language and configuration syntax. You can <link target=\"_blank\" url_id=\"114\">read more about it in the eZ Publish 5 documentation</link>. </paragraph><paragraph>Next we\'ll get some blog posts showing up by retrieving content from the repository.</paragraph></section>\n','ezxmltext',636,'eng-US',2,0,'',3),(0,197,120,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Now that you have the surround running in Twig templates, it\'s time to take over those content templates from the legacy template system and create Twig templates for those too. </paragraph><paragraph>First, let\'s catch up your tutorial code for this step by updating your branch to <strong>tutorial-2</strong>. As with last time, note that this will erase your local changes for the sake of consistency, so if you have things you want to keep, commit them as a new branch. </paragraph><paragraph>Clean up your working directory:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_shell\">git checkout -- *\ngit clean -f -d </literal></paragraph><paragraph>and pull down the next step of the tutorial:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_shell\">git checkout -b tutorial-2 origin/tutorial-2 </literal></paragraph><paragraph>This includes our template and asset additions from the last step.</paragraph><paragraph>In the legacy eZ Publish template system, there was a rules-based system that the CMS used to decide which template would be used for a given content object based on its type, location, the type of appearance requested (view) and other rules. An analogous system is in place for eZ Publish 5, but it\'s a bit cleaner and more extensible. </paragraph><paragraph>First, let\'s create a template for our \'Blog\' content type, which is the kind of page we\'ve been looking at when we load the root of the site. In our bundle, create the directory Resources/views/full, and add a \'blog.html.twig\' file in it. Add this content to the file: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_twig\">{# This template extends pagelayout.html.twig and just replaces the \'content\' block #}\n{% extends noLayout ? viewbaseLayout : \"BlendPartialContentBundle::pagelayout.html.twig\" %}\n{% block content %}\n    {# The \'location\' variable contains info about the current position in the site and some metadata #}\n    &lt;h1 class=\"page-title\"&gt;{{ location.contentInfo.name }}&lt;/h1&gt;\n    &lt;article class=\"extra description\"&gt;\n        {# The \'content\' variable contains the content object we\'re viewing #}\n        {# ez_render_field is a twig helper function that uses either twig or legacy templates to render the\n           data from the field\n        #}\n        {{ ez_render_field( content, \"description\" ) }}\n    &lt;/article&gt;\n    Blog posts will go here\n{% endblock %}</literal></paragraph><paragraph>The \'extends\' keyword declares that this template inherits from the pagelayout.html.twig, which means that our page will look just like that template, except our new template markup will be plugged in to the \'content\' block. This seems similar on the surface to eZ\'s former templating system, but keep in mind that the template will be rendered in a single step - both the inner and outer template will have access to the same variables.</paragraph><paragraph>Go ahead and createa \'blog_post.html.twig\' in that same \'full\' folder: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_twig\">{% extends noLayout ? viewbaseLayout : \"BlendPartialContentBundle::pagelayout.html.twig\" %}\n{% block content %}\n    &lt;article class=\"body\"&gt;\n        &lt;h1 class=\"page-title\"&gt;{{ location.contentInfo.name }}&lt;/h1&gt;\n        &lt;div&gt;\n            {{ ez_render_field( content, \"body\" ) }}\n        &lt;/div&gt;\n    &lt;/article&gt;\n{% endblock %}</literal></paragraph><paragraph>Nothing new there, just more of the same.</paragraph><paragraph>The next step is to tell eZ Publish about our new templates. This means configuring the template system in the yml files. To keep things familiar, we\'ll create an override.yml and include it, sort of like the override.ini files you might be familiar with from the legacy system.</paragraph><paragraph>Up in the htdocs/ezpublish/config folder, create a new file, override.yml, and add these rules to it:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">#This ezpublish.system preamble states the context these rules apply in\nezpublish:\n    system:\n        # The siteaccess\n        ezdemo_site_user:\n            location_view:\n                # Type of the view. \'full\' is when an object represents the whole page\n                full:\n                    # name for our rule\n                    blog:\n                        # template to use\n                        template: BlendPartialContentBundle:full:blog.html.twig\n                        # when to use this template (when the ContentType is \'blog\') \n                        match:\n                            Identifier\\ContentType: blog\n                    blog_post:\n                        template: BlendPartialContentBundle:full:blog_post.html.twig\n                        match:\n                            Identifier\\ContentType: blog_post</literal></paragraph><paragraph>As you can see, you create a rule for each template to tell eZ Publish when you want to use it. Next, we need to tell eZ Publish to include our new ini file in its configuration. Add this to the top of htdocs/ezpublish/config/ezpublish.yml</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_text\">imports:\n    - { resource: override.yml }</literal></paragraph><paragraph>This will include your new override.yml file in to the ezpublish.yml as though it were part of the file.</paragraph><paragraph>That\'s it. Refresh your page and you should see your new templates in use.</paragraph><paragraph><embed view=\"embed\" size=\"reference\" object_id=\"121\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph><paragraph>The rules for selecting templates in eZ Publish 5 are similar to those in eZ Publish 4, just with a new template language and configuration syntax. You can <link target=\"_blank\" url_id=\"114\">read more about it in the eZ Publish 5 documentation</link>. </paragraph><paragraph>Next we\'ll get some blog posts showing up by retrieving content from the repository.</paragraph></section>\n','ezxmltext',636,'eng-US',2,0,'',4),(0,197,120,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Now that you have the surround running in Twig templates, it\'s time to take over those content templates from the legacy template system and create Twig templates for those too. </paragraph><paragraph>First, let\'s catch up your tutorial code for this step by updating your branch to <strong>tutorial-2</strong>. As with last time, note that this will erase your local changes for the sake of consistency, so if you have things you want to keep, commit them as a new branch. </paragraph><paragraph>Clean up your working directory:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_shell\">git checkout -- *\ngit clean -f -d </literal></paragraph><paragraph>and pull down the next step of the tutorial:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_shell\">git checkout -b tutorial-2 origin/tutorial-2 </literal></paragraph><paragraph>This includes our template and asset additions from the last step.</paragraph><paragraph>In the legacy eZ Publish template system, there was a rules-based system that the CMS used to decide which template would be used for a given content object based on its type, location, the type of appearance requested (view) and other rules. An analogous system is in place for eZ Publish 5, but it\'s a bit cleaner and more extensible. </paragraph><paragraph>First, let\'s create a template for our \'Blog\' content type, which is the kind of page we\'ve been looking at when we load the root of the site. In our bundle, create the directory Resources/views/full, and add a \'blog.html.twig\' file in it. Add this content to the file: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_twig\">{# This template extends pagelayout.html.twig and just replaces the \'content\' block #}\n{% extends noLayout ? viewbaseLayout : \"BlendPartialContentBundle::pagelayout.html.twig\" %}\n{% block content %}\n    {# The \'location\' variable contains info about the current position in the site and some metadata #}\n    &lt;h1 class=\"page-title\"&gt;{{ location.contentInfo.name }}&lt;/h1&gt;\n    &lt;article class=\"extra description\"&gt;\n        {# The \'content\' variable contains the content object we\'re viewing #}\n        {# ez_render_field is a twig helper function that uses either twig or legacy templates to render the\n           data from the field\n        #}\n        {{ ez_render_field( content, \"description\" ) }}\n    &lt;/article&gt;\n    Blog posts will go here\n{% endblock %}</literal></paragraph><paragraph>The \'extends\' keyword declares that this template inherits from the pagelayout.html.twig, which means that our page will look just like that template, except our new template markup will be plugged in to the \'content\' block. This seems similar on the surface to eZ\'s former templating system, but keep in mind that the template will be rendered in a single step - both the inner and outer template will have access to the same variables.</paragraph><paragraph>Go ahead and createa \'blog_post.html.twig\' in that same \'full\' folder: </paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_twig\">{% extends noLayout ? viewbaseLayout : \"BlendPartialContentBundle::pagelayout.html.twig\" %}\n{% block content %}\n    &lt;article class=\"body\"&gt;\n        &lt;h1 class=\"page-title\"&gt;{{ location.contentInfo.name }}&lt;/h1&gt;\n        &lt;div&gt;\n            {{ ez_render_field( content, \"body\" ) }}\n        &lt;/div&gt;\n    &lt;/article&gt;\n{% endblock %}</literal></paragraph><paragraph>Nothing new there, just more of the same.</paragraph><paragraph>The next step is to tell eZ Publish about our new templates. This means configuring the template system in the yml files. To keep things familiar, we\'ll create an override.yml and include it, sort of like the override.ini files you might be familiar with from the legacy system.</paragraph><paragraph>Up in the htdocs/ezpublish/config folder, create a new file, override.yml, and add these rules to it:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_yml\">#This ezpublish.system preamble states the context these rules apply in\nezpublish:\n    system:\n        # The siteaccess\n        ezdemo_site_user:\n            location_view:\n                # Type of the view. \'full\' is when an object represents the whole page\n                full:\n                    # name for our rule\n                    blog:\n                        # template to use\n                        template: BlendPartialContentBundle:full:blog.html.twig\n                        # when to use this template (when the ContentType is \'blog\') \n                        match:\n                            Identifier\\ContentType: blog\n                    blog_post:\n                        template: BlendPartialContentBundle:full:blog_post.html.twig\n                        match:\n                            Identifier\\ContentType: blog_post</literal></paragraph><paragraph>As you can see, you create a rule for each template to tell eZ Publish when you want to use it. Next, we need to tell eZ Publish to include our new ini file in its configuration. Add this to the top of htdocs/ezpublish/config/ezpublish.yml</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><literal class=\"code_yml\">imports:\n    - { resource: override.yml }</literal></paragraph><paragraph>This will include your new override.yml file in to the ezpublish.yml as though it were part of the file.</paragraph><paragraph>That\'s it. Refresh your page and you should see your new templates in use.</paragraph><paragraph><embed view=\"embed\" size=\"reference\" object_id=\"121\" custom:offset=\"0\" custom:limit=\"5\"/></paragraph><paragraph>The rules for selecting templates in eZ Publish 5 are similar to those in eZ Publish 4, just with a new template language and configuration syntax. You can <link target=\"_blank\" url_id=\"114\">read more about it in the eZ Publish 5 documentation</link>. </paragraph><paragraph>Next we\'ll get some blog posts showing up by retrieving content from the repository.</paragraph></section>\n','ezxmltext',636,'eng-US',2,0,'',5),(0,198,120,0,1361226660,'','ezdatetime',637,'eng-US',2,1361226660,'',1),(0,198,120,0,1361226660,'','ezdatetime',637,'eng-US',2,1361226660,'',2),(0,198,120,0,1361226660,'','ezdatetime',637,'eng-US',2,1361226660,'',3),(0,198,120,0,1361226660,'','ezdatetime',637,'eng-US',2,1361226660,'',4),(0,198,120,0,1361226660,'','ezdatetime',637,'eng-US',2,1361226660,'',5),(0,200,120,1,1,'','ezcomcomments',638,'eng-US',2,0,'',1),(0,200,120,1,1,'','ezcomcomments',638,'eng-US',2,0,'',2),(0,200,120,1,1,'','ezcomcomments',638,'eng-US',2,0,'',3),(0,200,120,1,1,'','ezcomcomments',638,'eng-US',2,0,'',4),(0,200,120,1,1,'','ezcomcomments',638,'eng-US',2,0,'',5),(0,244,121,0,NULL,'Fullview templates','ezstring',639,'eng-US',2,0,'fullview templates',1),(0,245,121,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',640,'eng-US',2,0,'',1),(0,246,121,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Fullview-templates.jpg\" suffix=\"jpg\" basename=\"Fullview-templates\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-content-templates/fullview-templates/641-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-content-templates/fullview-templates/641-1-eng-US/Fullview-templates.jpg\" original_filename=\"Screenshot_2_18_13_5_18_PM.jpg\" mime_type=\"image/jpeg\" width=\"894\" height=\"513\" alternative_text=\"Screenshot of full view template in use\" alias_key=\"1293033771\" timestamp=\"1361229600\"><original attribute_id=\"641\" attribute_version=\"1\" attribute_language=\"eng-US\"/><information Height=\"513\" Width=\"894\" IsColor=\"1\" ByteOrderMotorola=\"1\"><array name=\"ifd0\"><item key=\"XResolution\" base64=\"1\">NzIvMQ==</item><item key=\"YResolution\" base64=\"1\">NzIvMQ==</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">Nzg=</item></array><array name=\"exif\"><item key=\"ExifImageWidth\" base64=\"1\">ODk0</item><item key=\"ExifImageLength\" base64=\"1\">NTEz</item></array></information><alias name=\"reference\" filename=\"Fullview-templates_reference.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-content-templates/fullview-templates/641-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-content-templates/fullview-templates/641-1-eng-US/Fullview-templates_reference.jpg\" mime_type=\"image/jpeg\" width=\"600\" height=\"344\" alias_key=\"2605465115\" timestamp=\"1361229600\" is_valid=\"1\"/><alias name=\"small\" filename=\"Fullview-templates_small.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-content-templates/fullview-templates/641-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-content-templates/fullview-templates/641-1-eng-US/Fullview-templates_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"57\" alias_key=\"2343348577\" timestamp=\"1361229600\" is_valid=\"1\"/><alias name=\"medium\" filename=\"Fullview-templates_medium.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-content-templates/fullview-templates/641-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-content-templates/fullview-templates/641-1-eng-US/Fullview-templates_medium.jpg\" mime_type=\"image/jpeg\" width=\"200\" height=\"115\" alias_key=\"405413724\" timestamp=\"1361229600\" is_valid=\"1\"/><alias name=\"large\" filename=\"Fullview-templates_large.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-content-templates/fullview-templates/641-1-eng-US\" url=\"var/ezdemo_site/storage/images/code/working-with-ez-publish-5-content-templates/fullview-templates/641-1-eng-US/Fullview-templates_large.jpg\" mime_type=\"image/jpeg\" width=\"360\" height=\"207\" alias_key=\"3448122496\" timestamp=\"1361324034\" is_valid=\"1\"/></ezimage>\n','ezimage',641,'eng-US',2,0,'',1),(0,247,121,0,NULL,'','ezsrrating',642,'eng-US',2,0,'',1),(0,248,121,0,NULL,'','ezkeyword',643,'eng-US',2,0,'',1);
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
  `op_code` int(11) NOT NULL DEFAULT '0',
  `relation_type` int(11) NOT NULL DEFAULT '1',
  `to_contentobject_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezco_link_from` (`from_contentobject_id`,`from_contentobject_version`,`contentclassattribute_id`),
  KEY `ezco_link_to_co_id` (`to_contentobject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_link`
--

LOCK TABLES `ezcontentobject_link` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_link` DISABLE KEYS */;
INSERT INTO `ezcontentobject_link` VALUES (306,106,1,11,0,8,103),(306,106,1,12,0,8,105),(0,109,1,13,0,2,110),(0,109,1,14,0,2,111),(306,106,2,29,0,8,107),(306,106,2,30,0,8,108),(306,106,2,31,0,8,109),(0,107,2,34,0,4,108),(0,108,2,37,0,4,109),(0,107,3,39,0,4,108),(0,115,1,50,0,2,110),(0,115,1,51,0,2,111),(0,115,2,54,0,2,110),(0,115,2,55,0,2,111),(0,109,2,61,0,2,110),(0,109,2,62,0,2,116),(0,112,2,64,0,2,114),(0,109,3,67,0,2,110),(0,109,3,68,0,2,116),(0,112,3,82,0,2,114),(0,112,3,83,0,2,119),(0,112,3,84,0,2,117),(0,112,3,85,0,2,118),(0,112,4,92,0,2,114),(0,112,4,93,0,2,119),(0,112,4,94,0,2,117),(0,112,4,95,0,2,118),(0,120,2,98,0,2,121),(0,120,3,100,0,2,121),(0,120,4,102,0,2,121),(0,120,5,104,0,2,121),(0,112,5,133,0,2,114),(0,112,5,134,0,2,117),(0,112,5,135,0,2,118),(0,112,5,136,0,2,119),(0,112,6,141,0,2,114),(0,112,6,142,0,2,117),(0,112,6,143,0,2,118),(0,112,6,144,0,2,119);
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
  KEY `ezcontentobject_name_co_id` (`contentobject_id`),
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
INSERT INTO `ezcontentobject_name` VALUES ('eng-US',1,4,3,'Users','eng-US'),('eng-US',2,10,3,'Anonymous User','eng-US'),('eng-US',1,11,3,'Guest accounts','eng-US'),('eng-US',2,11,3,'Members','eng-US'),('eng-US',1,12,3,'Administrator users','eng-US'),('eng-US',1,13,3,'Editors','eng-US'),('eng-US',3,14,3,'Administrator User','eng-US'),('eng-US',4,14,3,'Administrator User','eng-US'),('eng-US',1,41,3,'Media','eng-US'),('eng-US',1,42,3,'Anonymous Users','eng-US'),('eng-US',1,45,3,'Setup','eng-US'),('eng-US',1,49,3,'Images','eng-US'),('eng-US',1,50,3,'Files','eng-US'),('eng-US',1,51,3,'Multimedia','eng-US'),('eng-US',1,52,2,'Common INI settings','eng-US'),('eng-US',2,54,2,'Partial Content','eng-US'),('eng-US',3,54,2,'Partial Content','eng-US'),('eng-US',4,54,2,'Partial Content','eng-US'),('eng-US',5,54,2,'Partial Content','eng-US'),('eng-US',6,54,2,'Partial Content','eng-US'),('eng-US',1,56,3,'Design','eng-US'),('eng-US',1,99,3,'Partners','eng-US'),('eng-US',1,100,2,'Home','eng-US'),('eng-US',2,100,2,'Home','eng-US'),('eng-US',1,101,2,'Code','eng-US'),('eng-US',1,102,2,'Series','eng-US'),('eng-US',1,103,2,'Working with eZ Publish 5 - Introduction','eng-US'),('eng-US',2,103,2,'Working with eZ Publish 5 - Introduction','eng-US'),('eng-US',1,104,2,'About','eng-US'),('eng-US',1,105,2,'Working With eZ Publish 5 - Symfony','eng-US'),('eng-US',1,106,2,'Working With eZ Publish 5','eng-US'),('eng-US',2,106,2,'Working With eZ Publish 5','eng-US'),('eng-US',1,107,2,'Working with eZ Publish 5 - Introduction','eng-US'),('eng-US',2,107,2,'Working with eZ Publish 5 - Introduction','eng-US'),('eng-US',3,107,2,'Working with eZ Publish 5 - Introduction','eng-US'),('eng-US',4,107,2,'Working with eZ Publish 5 - Introduction','eng-US'),('eng-US',5,107,2,'Working with eZ Publish 5 - Introduction','eng-US'),('eng-US',6,107,2,'Working with eZ Publish 5 - Introduction','eng-US'),('eng-US',1,108,2,'Working with eZ Publish 5 - Symfony','eng-US'),('eng-US',2,108,2,'Working with eZ Publish 5 - Symfony','eng-US'),('eng-US',3,108,2,'Working with eZ Publish 5 - Symfony','eng-US'),('eng-US',1,109,2,'Working with eZ Publish 5 - Setup','eng-US'),('eng-US',2,109,2,'Working with eZ Publish 5 - Setup','eng-US'),('eng-US',3,109,2,'Working with eZ Publish 5 - Setup','eng-US'),('eng-US',1,110,2,'Default eZ 5 File Structure','eng-US'),('eng-US',1,111,2,'Setup Wizard Screenshot','eng-US'),('eng-US',1,112,2,'Working with eZ Publish 5 - Templates','eng-US'),('eng-US',2,112,2,'Working with eZ Publish 5 - Templates','eng-US'),('eng-US',3,112,2,'Working with eZ Publish 5 - Templates','eng-US'),('eng-US',4,112,2,'Working with eZ Publish 5 - Templates','eng-US'),('eng-US',5,112,2,'Working with eZ Publish 5 - Templates','eng-US'),('eng-US',6,112,2,'Working with eZ Publish 5 - Templates','eng-US'),('eng-US',1,113,2,'Demo Site Content Screenshot','eng-US'),('eng-US',1,114,2,'Bundle Generation Screenshot','eng-US'),('eng-US',1,115,2,'Working with eZ Publish 5 - Setup','eng-US'),('eng-US',2,115,2,'Working with eZ Publish 5 - Installation','eng-US'),('eng-US',1,116,2,'Demo Site Content Screenshot','eng-US'),('eng-US',1,117,2,'Bundle Contents','eng-US'),('eng-US',1,118,2,'Pagelayout in place','eng-US'),('eng-US',1,119,2,'Style Basic Page','eng-US'),('eng-US',1,120,2,'Working With eZ Publish 5 - Content Templates','eng-US'),('eng-US',2,120,2,'Working With eZ Publish 5 - Content Templates','eng-US'),('eng-US',3,120,2,'Working With eZ Publish 5 - Content Templates','eng-US'),('eng-US',4,120,2,'Working With eZ Publish 5 - Content Templates','eng-US'),('eng-US',5,120,2,'Working With eZ Publish 5 - Content Templates','eng-US'),('eng-US',1,121,2,'Fullview templates','eng-US');
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
INSERT INTO `ezcontentobject_trash` VALUES (103,2,3,0,0,105,1360965640,105,103,'code/working_with_ez_publish_5_introduction','/1/2/103/105/',0,'2936874169c076068b118769dcbf82e9',1,1),(105,1,3,0,0,107,1360955738,107,103,'code/working_with_ez_publish_5_symfony','/1/2/103/107/',0,'572b53619cd42e669f5f1ee786896276',1,1);
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
  KEY `ezcontentobject_tree_co_id` (`contentobject_id`),
  KEY `ezcontentobject_tree_depth` (`depth`),
  KEY `ezcontentobject_tree_p_node_id` (`parent_node_id`),
  KEY `ezcontentobject_tree_path` (`path_string`),
  KEY `ezcontentobject_tree_path_ident` (`path_identification_string`(50)),
  KEY `modified_subnode` (`modified_subnode`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_tree`
--

LOCK TABLES `ezcontentobject_tree` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_tree` DISABLE KEYS */;
INSERT INTO `ezcontentobject_tree` VALUES (0,1,1,0,0,0,1,1361375269,1,1,'','/1/',0,'629709ba256fe317c3ddcee35453a96a',1,1),(100,1,2,1,0,0,2,1361295713,2,1,'','/1/2/',0,'f3e90596361e31d496d4026eb624c983',8,1),(4,1,1,1,0,0,5,1360944319,5,1,'users','/1/5/',0,'3f6d92f8044aed134f32153517850f5a',1,1),(11,1,2,2,0,0,12,1360944319,12,5,'users/members','/1/5/12/',0,'602dcf84765e56b7f999eaafd3821dd3',1,1),(12,1,1,2,0,0,13,1360944318,13,5,'users/administrator_users','/1/5/13/',0,'769380b7aa94541679167eab817ca893',1,1),(13,1,1,2,0,0,14,1081860719,14,5,'users/editors','/1/5/14/',0,'f7dda2854fc68f7c8455d9cb14bd04a9',1,1),(14,1,4,3,0,0,15,1360944318,15,13,'users/administrator_users/administrator_user','/1/5/13/15/',0,'e5161a99f733200b9ed4e80f9c16187b',1,1),(41,1,1,1,0,0,43,1361206584,43,1,'media','/1/43/',0,'75c715a51699d2d309a924eca6a95145',9,1),(42,1,1,2,0,0,44,1081860719,44,5,'users/anonymous_users','/1/5/44/',0,'4fdf0072da953bb276c0c7e0141c5c9b',9,1),(10,1,2,3,0,0,45,1081860719,45,44,'users/anonymous_users/anonymous_user','/1/5/44/45/',0,'2cf8343bee7b482bab82b269d8fecd76',9,1),(45,1,1,1,0,0,48,1184592117,48,1,'setup2','/1/48/',0,'182ce1b5af0c09fa378557c462ba2617',9,1),(49,1,1,2,0,0,51,1361206584,51,43,'media/images','/1/43/51/',0,'1b26c0454b09bb49dfb1b9190ffd67cb',9,1),(50,1,1,2,0,0,52,1081860720,52,43,'media/files','/1/43/52/',0,'0b113a208f7890f9ad3c24444ff5988c',9,1),(51,1,1,2,0,0,53,1081860720,53,43,'media/multimedia','/1/43/53/',0,'4f18b82c75f10aad476cae5adf98c11f',9,1),(52,1,1,2,0,0,54,1184592117,54,48,'setup2/common_ini_settings','/1/48/54/',0,'fa9f3cff9cf90ecfae335718dcbddfe2',1,1),(54,1,6,2,0,0,56,1361375269,56,58,'design/partial_content','/1/58/56/',0,'772da20ecf88b3035d73cbdfcea0f119',1,1),(56,1,1,1,0,0,58,1361375269,58,1,'design','/1/58/',0,'79f2d67372ab56f59b5d65bb9e0ca3b9',2,0),(99,1,1,2,0,0,101,1360944319,101,5,'users/partners','/1/5/101/',0,'37eb2367ef94a41e100cf2a4f69e4825',1,1),(101,1,1,2,0,0,103,1361295713,103,2,'code','/1/2/103/',0,'24c440382b56bee148ef1964271d4118',2,0),(102,1,1,2,0,0,104,1361204343,104,2,'series','/1/2/104/',0,'4f72d530b2b9d7f0eddd83e31349a308',2,0),(104,1,1,2,0,0,106,1360948164,106,2,'about','/1/2/106/',0,'cd2134427da74646fe8d33dec3d2b0ae',2,0),(106,1,2,3,0,0,108,1361204343,108,104,'series/ez5_tutorial','/1/2/104/108/',0,'22398ed8c53974367caa69c354098ab3',1,1),(107,1,6,3,0,0,109,1361226643,109,103,'code/working_with_ez_publish_5_introduction','/1/2/103/109/',0,'759900c4a6ada6a669cf663e1a636186',1,1),(108,1,3,3,0,0,110,1361226267,110,103,'code/working_with_ez_publish_5_symfony','/1/2/103/110/',0,'6cab491e02ae20219f2d5fb2ba33cca6',1,1),(109,1,3,3,0,0,111,1361221530,111,103,'code/working_with_ez_publish_5_setup','/1/2/103/111/',0,'a97bed7d65acba08f8b55e002d26649c',1,1),(110,1,1,4,0,0,112,1361204167,112,111,'code/working_with_ez_publish_5_setup/default_ez_5_file_structure','/1/2/103/111/112/',0,'dcaa5d9473b84a04d840bced077379e0',2,0),(111,1,1,4,0,0,113,1361204167,113,111,'code/working_with_ez_publish_5_setup/setup_wizard_screenshot','/1/2/103/111/113/',0,'ac0573a28d6e3569b05a4aead27c26a0',2,0),(112,1,6,3,0,0,114,1361295713,114,103,'code/working_with_ez_publish_5_templates','/1/2/103/114/',0,'77b01da7ba78105be2f6f84a66576d3a',1,1),(113,1,1,3,0,0,115,1361206584,115,51,'media/images/demo_site_content_screenshot','/1/43/51/115/',0,'cf3b049be266e8ca64c8a28e429c413a',2,0),(114,1,1,4,0,0,116,1361209032,116,114,'code/working_with_ez_publish_5_templates/bundle_generation_screenshot','/1/2/103/114/116/',0,'53355631089486b4ac4e61020e93dd36',2,0),(115,1,2,3,0,0,117,1361215128,117,103,'code/working_with_ez_publish_5_installation','/1/2/103/117/',0,'3038bf22c16de9bbca48d0b519ec683e',2,0),(116,1,1,4,0,0,118,1361217323,118,111,'code/working_with_ez_publish_5_setup/demo_site_content_screenshot','/1/2/103/111/118/',0,'beb9872cae88bc4c1cb250cc327f58b1',2,0),(117,1,1,4,0,0,119,1361221935,119,114,'code/working_with_ez_publish_5_templates/bundle_contents','/1/2/103/114/119/',0,'d2411526ae5d67ccf607c5e1adee8a79',2,0),(118,1,1,4,0,0,120,1361223595,120,114,'code/working_with_ez_publish_5_templates/pagelayout_in_place','/1/2/103/114/120/',0,'13e89e5f2962e9511619227f0091199c',2,0),(119,1,1,4,0,0,121,1361225685,121,114,'code/working_with_ez_publish_5_templates/style_basic_page','/1/2/103/114/121/',0,'53751ab83bb7ab1db9ab12e4b5d92b0f',2,0),(120,1,5,3,0,0,122,1361287556,122,103,'code/working_with_ez_publish_5_content_templates','/1/2/103/122/',0,'b55bbe8e6afbbcb3df3dbc831259001b',1,1),(121,1,1,4,0,0,123,1361229600,123,122,'code/working_with_ez_publish_5_content_templates/fullview_templates','/1/2/103/122/123/',0,'f301cb880a861660d93f52a7216e00d2',2,0);
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
  KEY `idx_object_version_objver` (`contentobject_id`,`version`)
) ENGINE=InnoDB AUTO_INCREMENT=600 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_version`
--

LOCK TABLES `ezcontentobject_version` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_version` DISABLE KEYS */;
INSERT INTO `ezcontentobject_version` VALUES (4,0,14,4,2,3,0,1,0,1,1),(11,1033920737,14,439,2,3,1033920746,3,0,1,0),(12,1033920760,14,440,2,3,1033920775,1,0,1,0),(13,1033920786,14,441,2,3,1033920794,1,0,1,0),(41,1060695450,14,472,2,3,1060695457,1,0,1,0),(42,1072180278,14,473,2,3,1072180330,1,0,1,0),(10,1072180337,14,474,2,3,1072180405,1,0,2,0),(45,1079684084,14,477,2,3,1079684190,1,0,1,0),(49,1080220181,14,488,2,3,1080220197,1,0,1,0),(50,1080220211,14,489,2,3,1080220220,1,0,1,0),(51,1080220225,14,490,2,3,1080220233,1,0,1,0),(52,1082016497,14,491,2,2,1082016591,1,0,1,0),(56,1103023120,14,495,2,3,1103023120,1,0,1,0),(14,1301061783,14,499,2,3,1301062024,3,0,3,0),(54,1301062300,14,500,2,2,1301062375,3,0,2,0),(14,1360944318,14,546,2,3,1360944318,1,0,4,0),(99,1360944319,14,547,2,3,1360944319,1,0,1,0),(11,1360944319,14,548,2,3,1360944319,1,0,2,0),(100,1360946838,14,549,2,3,1360946849,3,0,1,0),(101,1360946936,14,550,2,3,1360946942,1,0,1,0),(102,1360946962,14,551,2,3,1360946971,1,0,1,0),(103,1360947016,14,552,2,3,1360947071,3,0,1,0),(104,1360947359,14,553,2,3,1360948164,1,0,1,0),(54,1360948975,14,554,2,3,1360949045,3,0,3,0),(105,1360955693,14,555,2,3,1360955738,1,0,1,0),(106,1360955749,14,556,2,3,1360955829,3,0,1,0),(100,1360962498,14,557,2,3,1360962515,1,0,2,0),(103,1360965629,14,558,2,3,1360965640,1,0,2,0),(107,1360760717,14,559,2,3,1360760735,3,0,1,0),(108,1360874415,14,560,2,3,1360877457,3,0,1,0),(109,1360878109,14,561,2,3,1360884802,3,0,1,0),(110,1360878852,14,562,2,3,1360878852,1,0,1,0),(111,1360882936,14,563,2,3,1360882936,1,0,1,0),(106,1361204314,14,564,2,3,1361204343,1,0,2,0),(107,1361205787,14,565,2,3,1361206138,3,0,2,0),(108,1361206145,14,566,2,3,1361206191,3,0,2,0),(107,1361206213,14,567,2,3,1361206227,3,0,3,0),(112,1361206319,14,568,2,3,1361206344,3,0,1,0),(112,1361206354,14,569,2,3,1361221111,3,0,2,0),(113,1361206584,14,570,2,3,1361206584,1,0,1,0),(114,1361209032,14,571,2,3,1361209032,1,0,1,0),(107,1361214582,14,572,2,3,1361215052,3,0,4,0),(115,1361215102,14,574,2,3,1361215102,3,0,1,0),(115,1361215111,14,575,2,3,1361215128,1,0,2,0),(109,1361215158,14,576,2,3,1361221051,3,0,2,0),(116,1361217323,14,577,2,3,1361217323,1,0,1,0),(109,1361221117,14,578,2,3,1361221530,1,0,3,0),(112,1361221556,14,579,2,3,1361225744,3,0,3,0),(117,1361221935,14,580,2,3,1361221935,1,0,1,0),(118,1361223595,14,581,2,3,1361223595,1,0,1,0),(119,1361225685,14,582,2,3,1361225685,1,0,1,0),(107,1361225875,14,583,2,3,1361226219,3,0,5,0),(108,1361226225,14,584,2,3,1361226267,1,0,3,0),(112,1361226308,14,585,2,3,1361226430,3,0,4,0),(107,1361226606,14,586,2,3,1361226642,1,0,6,0),(120,1361226702,14,587,2,3,1361228164,3,0,1,0),(120,1361228302,14,588,2,3,1361229845,3,0,2,0),(121,1361229600,14,589,2,3,1361229600,1,0,1,0),(120,1361274171,14,590,2,3,1361275012,3,0,3,0),(120,1361287227,14,591,2,3,1361287321,3,0,4,0),(120,1361287468,14,592,2,3,1361287556,1,0,5,0),(112,1361295299,14,593,2,3,1361295498,3,0,5,0),(112,1361295635,14,594,2,3,1361295713,1,0,6,0),(54,1361315582,14,595,2,3,1361315602,3,0,4,0),(54,1361315607,14,596,2,3,1361315675,3,0,5,0),(54,1361375020,14,598,2,3,1361375269,1,0,6,0);
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
  PRIMARY KEY (`contentobject_attribute_id`,`contentobject_attribute_version`,`enumid`),
  KEY `ezenumobjectvalue_co_attr_id_co_attr_ver` (`contentobject_attribute_id`,`contentobject_attribute_version`)
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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezimagefile`
--

LOCK TABLES `ezimagefile` WRITE;
/*!40000 ALTER TABLE `ezimagefile` DISABLE KEYS */;
INSERT INTO `ezimagefile` VALUES (172,'var/storage/images/design/plain-site/172-2-eng-US/Partial-Content1.png',39),(172,'var/storage/images/design/plain-site/172-2-eng-US/Partial-Content1_reference.png',64),(172,'var/storage/images/design/plain-site/172-2-eng-US/Partial-Content1_small.png',65),(172,'var/storage/images/design/plain-site/172-2-eng-US/Partial-Content1_medium.png',66),(172,'var/storage/images/design/plain-site/172-2-eng-US/Partial-Content1_large.png',67),(172,'var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US/Partial-Content.png',68),(172,'var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US/Partial-Content_reference.png',69),(172,'var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US/Partial-Content_small.png',70),(172,'var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US/Partial-Content_medium.png',71),(172,'var/ezdemo_site/storage/images/design/partial-content/172-2-eng-US/Partial-Content_large.png',72),(586,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/default-ez-5-file-structure/586-1-eng-US/Default-eZ-5-File-Structure.jpg',74),(591,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/setup-wizard-screenshot/591-1-eng-US/Setup-Wizard-Screenshot.jpg',76),(586,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/default-ez-5-file-structure/586-1-eng-US/Default-eZ-5-File-Structure_large.jpg',77),(591,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/setup-wizard-screenshot/591-1-eng-US/Setup-Wizard-Screenshot_large.jpg',78),(601,'var/ezdemo_site/storage/images/media/images/demo-site-content-screenshot/601-1-eng-US/Demo-Site-Content-Screenshot.jpg',80),(601,'var/ezdemo_site/storage/images/media/images/demo-site-content-screenshot/601-1-eng-US/Demo-Site-Content-Screenshot_reference.jpg',81),(601,'var/ezdemo_site/storage/images/media/images/demo-site-content-screenshot/601-1-eng-US/Demo-Site-Content-Screenshot_small.jpg',82),(601,'var/ezdemo_site/storage/images/media/images/demo-site-content-screenshot/601-1-eng-US/Demo-Site-Content-Screenshot_medium.jpg',83),(591,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/setup-wizard-screenshot/591-1-eng-US/Setup-Wizard-Screenshot_reference.jpg',84),(606,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-generation-screenshot/606-1-eng-US/Bundle-Generation-Screenshot.jpg',86),(606,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-generation-screenshot/606-1-eng-US/Bundle-Generation-Screenshot_reference.jpg',87),(606,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-generation-screenshot/606-1-eng-US/Bundle-Generation-Screenshot_small.jpg',88),(606,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-generation-screenshot/606-1-eng-US/Bundle-Generation-Screenshot_medium.jpg',89),(606,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-generation-screenshot/606-1-eng-US/Bundle-Generation-Screenshot_imagelarge.jpg',90),(586,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/default-ez-5-file-structure/586-1-eng-US/Default-eZ-5-File-Structure_reference.jpg',91),(586,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/default-ez-5-file-structure/586-1-eng-US/Default-eZ-5-File-Structure_small.jpg',92),(591,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/setup-wizard-screenshot/591-1-eng-US/Setup-Wizard-Screenshot_small.jpg',93),(616,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/demo-site-content-screenshot/616-1-eng-US/Demo-Site-Content-Screenshot.jpg',95),(616,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/demo-site-content-screenshot/616-1-eng-US/Demo-Site-Content-Screenshot_reference.jpg',96),(616,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/demo-site-content-screenshot/616-1-eng-US/Demo-Site-Content-Screenshot_small.jpg',97),(616,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/demo-site-content-screenshot/616-1-eng-US/Demo-Site-Content-Screenshot_medium.jpg',98),(621,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-contents/621-1-eng-US/Bundle-Contents.jpg',100),(621,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-contents/621-1-eng-US/Bundle-Contents_reference.jpg',101),(621,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-contents/621-1-eng-US/Bundle-Contents_small.jpg',102),(621,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-contents/621-1-eng-US/Bundle-Contents_medium.jpg',103),(626,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/pagelayout-in-place/626-1-eng-US/Pagelayout-in-place.jpg',105),(626,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/pagelayout-in-place/626-1-eng-US/Pagelayout-in-place_reference.jpg',106),(626,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/pagelayout-in-place/626-1-eng-US/Pagelayout-in-place_small.jpg',107),(626,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/pagelayout-in-place/626-1-eng-US/Pagelayout-in-place_medium.jpg',108),(631,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/style-basic-page/631-1-eng-US/Style-Basic-Page.jpg',110),(631,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/style-basic-page/631-1-eng-US/Style-Basic-Page_reference.jpg',111),(631,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/style-basic-page/631-1-eng-US/Style-Basic-Page_small.jpg',112),(631,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/style-basic-page/631-1-eng-US/Style-Basic-Page_medium.jpg',113),(606,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-generation-screenshot/606-1-eng-US/Bundle-Generation-Screenshot_large.jpg',114),(621,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/bundle-contents/621-1-eng-US/Bundle-Contents_large.jpg',115),(626,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/pagelayout-in-place/626-1-eng-US/Pagelayout-in-place_large.jpg',116),(631,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-templates/style-basic-page/631-1-eng-US/Style-Basic-Page_large.jpg',117),(616,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-setup/demo-site-content-screenshot/616-1-eng-US/Demo-Site-Content-Screenshot_large.jpg',118),(641,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-content-templates/fullview-templates/641-1-eng-US/Fullview-templates.jpg',120),(641,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-content-templates/fullview-templates/641-1-eng-US/Fullview-templates_reference.jpg',121),(641,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-content-templates/fullview-templates/641-1-eng-US/Fullview-templates_small.jpg',122),(641,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-content-templates/fullview-templates/641-1-eng-US/Fullview-templates_medium.jpg',123),(641,'var/ezdemo_site/storage/images/code/working-with-ez-publish-5-content-templates/fullview-templates/641-1-eng-US/Fullview-templates_large.jpg',124),(172,'var/ezdemo_site/storage/images/design/partial-content/172-4-eng-US/partial-content.jpg',126),(172,'var/ezdemo_site/storage/images/design/partial-content/172-4-eng-US/partial-content_reference.jpg',127),(172,'var/ezdemo_site/storage/images/design/partial-content/172-4-eng-US/partial-content_small.jpg',128),(172,'var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US/partial-content.jpg',133),(172,'var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US/partial-content_reference.jpg',134),(172,'var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US/partial-content_medium.jpg',135),(172,'var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US/partial-content_small.jpg',136),(172,'var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US/partial-content_imagefull.jpg',137),(172,'var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US/partial-content_headerimage.jpg',138),(172,'var/ezdemo_site/storage/images/design/partial-content/172-5-eng-US/partial-content_large.jpg',139);
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
  KEY `ezkeyword_keyword` (`keyword`),
  KEY `ezkeyword_keyword_id` (`keyword`,`id`)
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
  KEY `ezkeyword_attr_link_keyword_id` (`keyword_id`),
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
INSERT INTO `ezm_block` VALUES ('1e1e355c8da3c92e80354f243c6dd37b','6c7f907b831a819ed8562e3ddce5b264','Campaign',72,'',0,'Campaign','',0,0,0),('250bcab3ea2929edbf72ece096dcdb7a','6c7f907b831a819ed8562e3ddce5b264','Amazon Gallery',72,'',0,'Gallery','',0,0,0),('27d176fb3baf2ab9dea2b1f98270e701','f742abffba08fc849b6e80dec769a74c','Tags',2,'',0,'TagCloud','',0,0,0),('4d2f5e57d2a2528b276cd9e776a62e42','656b2182b4be70f18ca7b44b3fbb6dbe','Featured Video',72,'',0,'Video','',0,0,0),('4efd68496edd8184aade729b4d2ee17b','865346aabbcc48a9839274cc554868be','Main Story',2,'',0,'Campaign','',0,0,0),('4f1c2e8abfb4f163fbf256a29af0a24e','6669bce3079221f326d4eb4121447fd9','Products',87,'',0,'ContentGrid','',0,0,0),('530f34a56860389349bd37e74bc095a7','f742abffba08fc849b6e80dec769a74c','Selected Video',2,'',0,'Video','',0,0,0),('594491ab539125dc271807a83724e608','fe8088a104581ea7faa6c00fe743f072','',60,'',0,'ContentGrid','',0,0,0),('70150fb6cf7608e841868b3fe925b58c','1b6149311bf4ece4717e6fff905e148c','',87,'',0,'Campaign','',0,0,0),('74f7a63a2c079e279c8669f660ded478','c5ce576877ab71afb7c143ea3276db4f','Highlighted Feature',60,'',0,'HighlightedItem','',0,0,0),('9481d2b1810c928ded55e94b0ae13647','f742abffba08fc849b6e80dec769a74c','Main Items',2,'',0,'ContentGrid','',0,0,0),('a577b33f9a9ec054e0c2171288056be9','c5ce576877ab71afb7c143ea3276db4f','Main Features',60,'',0,'ContentGrid','',0,0,0),('b0d7b1fae15381576e13e5bd1480f555','f742abffba08fc849b6e80dec769a74c','News',2,'',0,'FeedReader','',0,0,0),('bffec84af43985679e30e6ff6d79c19b','865346aabbcc48a9839274cc554868be','Mixed Content',2,'',0,'ContentGrid','',0,0,0),('c0ef745972ce2d55057c70d157eb7b96','fe8088a104581ea7faa6c00fe743f072','',60,'',0,'Campaign','',0,0,0),('cd58c813f7463484f22a2168a44cdcc4','f742abffba08fc849b6e80dec769a74c','Highlighted Feature',2,'',0,'HighlightedItem','',0,0,0),('d769ae69f693b76429a731a8ce475e23','865346aabbcc48a9839274cc554868be','Gallery',2,'',0,'Gallery','',0,0,0),('f36743396b8c36f10b467aa52f133e58','656b2182b4be70f18ca7b44b3fbb6dbe','Travel Information',72,'',0,'ContentGrid','',0,0,0);
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
INSERT INTO `ezm_pool` VALUES ('1e1e355c8da3c92e80354f243c6dd37b',82,84,1,1352981640,1352981985,0,0,NULL),('1e1e355c8da3c92e80354f243c6dd37b',83,85,2,1352981700,1352981985,0,0,NULL),('1e1e355c8da3c92e80354f243c6dd37b',84,86,0,1353413112,1353413126,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',72,74,7,1332972538,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',73,75,6,1332972538,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',74,76,5,1332972538,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',75,77,4,1332972538,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',76,78,3,1332972538,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',77,79,2,1332972538,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',78,80,1,1332972538,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',79,81,0,1332972538,1332972652,0,0,NULL),('4d2f5e57d2a2528b276cd9e776a62e42',80,82,1,1353412523,1353413055,0,0,NULL),('4efd68496edd8184aade729b4d2ee17b',69,71,1,1353411853,1353411957,0,0,NULL),('4f1c2e8abfb4f163fbf256a29af0a24e',88,90,1,1353413236,1353413245,0,0,NULL),('4f1c2e8abfb4f163fbf256a29af0a24e',89,91,2,1353413236,1353413245,0,0,NULL),('530f34a56860389349bd37e74bc095a7',80,82,1,1353412117,1353412156,0,0,NULL),('594491ab539125dc271807a83724e608',61,63,1,1332971673,1332971695,0,0,NULL),('594491ab539125dc271807a83724e608',62,64,2,1332971652,1332971695,0,0,NULL),('594491ab539125dc271807a83724e608',63,65,3,1332971627,1332971695,0,0,NULL),('594491ab539125dc271807a83724e608',64,66,4,1353412434,1353412440,0,0,NULL),('70150fb6cf7608e841868b3fe925b58c',91,93,1,1353413207,1353413235,0,0,NULL),('74f7a63a2c079e279c8669f660ded478',67,69,1,1353412302,1353412348,0,0,NULL),('9481d2b1810c928ded55e94b0ae13647',88,90,0,1353412146,1353412156,0,0,NULL),('9481d2b1810c928ded55e94b0ae13647',89,91,1,1353412146,1353412156,0,0,NULL),('a577b33f9a9ec054e0c2171288056be9',66,68,1,1353412337,1353412348,0,0,NULL),('a577b33f9a9ec054e0c2171288056be9',68,70,2,1353412337,1353412348,0,0,NULL),('bffec84af43985679e30e6ff6d79c19b',66,68,2,1353411920,1353411957,0,0,NULL),('bffec84af43985679e30e6ff6d79c19b',67,69,3,1353411920,1353411957,0,0,NULL),('bffec84af43985679e30e6ff6d79c19b',83,85,0,1353411955,1353411957,0,0,NULL),('bffec84af43985679e30e6ff6d79c19b',91,93,1,1353411943,1353411957,0,0,NULL),('c0ef745972ce2d55057c70d157eb7b96',69,71,1,1353412261,1353412348,0,0,NULL),('cd58c813f7463484f22a2168a44cdcc4',68,70,1,1353412091,1353412156,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',72,74,6,1332970925,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',73,75,7,1332970925,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',74,76,0,1332970925,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',75,77,1,1332970925,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',76,78,2,1332970925,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',77,79,3,1332970925,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',78,80,4,1332970925,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',79,81,5,1332970925,1332971128,0,0,NULL),('f36743396b8c36f10b467aa52f133e58',82,84,2,1353413054,1353413055,0,0,NULL),('f36743396b8c36f10b467aa52f133e58',84,86,1,1353413054,1353413055,0,0,NULL);
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
  KEY `eznode_assignment_co_id` (`contentobject_id`),
  KEY `eznode_assignment_co_version` (`contentobject_version`),
  KEY `eznode_assignment_coid_cov` (`contentobject_id`,`contentobject_version`),
  KEY `eznode_assignment_is_main` (`is_main`),
  KEY `eznode_assignment_parent_node` (`parent_node`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznode_assignment`
--

LOCK TABLES `eznode_assignment` WRITE;
/*!40000 ALTER TABLE `eznode_assignment` DISABLE KEYS */;
INSERT INTO `eznode_assignment` VALUES (8,2,0,4,1,2,5,'','0',1,1),(42,1,0,5,1,2,5,'','0',9,1),(10,2,-1,6,1,2,44,'','0',9,1),(4,1,0,7,1,2,1,'','0',1,1),(12,1,0,8,1,2,5,'','0',1,1),(13,1,0,9,1,2,5,'','0',1,1),(41,1,0,11,1,2,1,'','0',1,1),(11,1,0,12,1,2,5,'','0',1,1),(45,1,-1,16,1,2,1,'','0',9,1),(49,1,0,27,1,2,43,'','0',9,1),(50,1,0,28,1,2,43,'','0',9,1),(51,1,0,29,1,2,43,'','0',9,1),(52,1,0,30,1,2,48,'','0',1,1),(56,1,0,34,1,2,1,'','0',2,0),(14,3,-1,38,1,2,13,'','0',1,1),(54,2,-1,39,1,2,58,'','0',1,1),(14,4,-1,85,1,2,13,'','0',1,1),(99,1,0,86,1,2,5,'','0',1,1),(11,2,-1,87,1,2,5,'','0',1,1),(100,1,0,88,1,2,2,'','0',2,0),(101,1,0,89,1,2,2,'','0',2,0),(102,1,0,90,1,2,2,'','0',2,0),(103,1,0,91,1,2,103,'','0',1,1),(104,1,0,92,1,2,2,'','0',2,0),(54,3,-1,93,1,2,58,'','0',1,1),(105,1,0,94,1,2,103,'','0',1,1),(106,1,0,95,1,2,104,'','0',1,1),(100,2,-1,96,1,2,1,'','0',8,1),(103,2,-1,97,1,2,103,'','0',1,1),(107,1,0,98,1,2,103,'759900c4a6ada6a669cf663e1a636186','0',1,1),(108,1,0,99,1,2,103,'6cab491e02ae20219f2d5fb2ba33cca6','0',1,1),(109,1,0,100,1,2,103,'a97bed7d65acba08f8b55e002d26649c','0',1,1),(110,1,0,101,1,2,111,'dcaa5d9473b84a04d840bced077379e0','0',2,0),(111,1,0,102,1,2,111,'ac0573a28d6e3569b05a4aead27c26a0','0',2,0),(106,2,-1,103,1,2,104,'','0',1,1),(107,2,-1,104,1,2,103,'','0',1,1),(108,2,-1,105,1,2,103,'','0',1,1),(107,3,-1,106,1,2,103,'','0',1,1),(112,1,0,107,1,2,103,'','0',1,1),(112,2,-1,108,1,2,103,'','0',1,1),(113,1,0,109,1,2,51,'','0',2,0),(114,1,0,110,1,2,114,'','0',2,0),(107,4,-1,111,1,2,103,'','0',1,1),(115,1,0,114,1,2,103,'','0',2,0),(115,2,-1,115,1,2,103,'','0',2,0),(109,2,-1,116,1,2,103,'','0',1,1),(116,1,0,117,1,2,111,'','0',2,0),(109,3,-1,118,1,2,103,'','0',1,1),(112,3,-1,119,1,2,103,'','0',1,1),(117,1,0,120,1,2,114,'','0',2,0),(118,1,0,121,1,2,114,'','0',2,0),(119,1,0,122,1,2,114,'','0',2,0),(107,5,-1,123,1,2,103,'','0',1,1),(108,3,-1,124,1,2,103,'','0',1,1),(112,4,-1,125,1,2,103,'','0',1,1),(107,6,-1,126,1,2,103,'','0',1,1),(120,1,0,127,1,2,103,'','0',1,1),(120,2,-1,128,1,2,103,'','0',1,1),(121,1,0,129,1,2,122,'','0',2,0),(120,3,-1,130,1,2,103,'','0',1,1),(120,4,-1,131,1,2,103,'','0',1,1),(120,5,-1,132,1,2,103,'','0',1,1),(112,5,-1,133,1,2,103,'','0',1,1),(112,6,-1,134,1,2,103,'','0',1,1),(54,4,-1,135,1,2,58,'','0',1,1),(54,5,-1,136,1,2,58,'','0',1,1),(54,6,-1,138,1,2,58,'','0',1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationevent`
--

LOCK TABLES `eznotificationevent` WRITE;
/*!40000 ALTER TABLE `eznotificationevent` DISABLE KEYS */;
INSERT INTO `eznotificationevent` VALUES (57,1,0,0,'','','','','ezpublish',1,0),(58,1,0,0,'','','','','ezpublish',2,0),(59,1,0,0,'','','','','ezpublish',3,0),(60,1,0,0,'','','','','ezpublish',4,0),(61,1,0,0,'','','','','ezpublish',5,0),(62,1,0,0,'','','','','ezpublish',6,0),(63,1,0,0,'','','','','ezpublish',7,0),(64,1,0,0,'','','','','ezpublish',8,0),(65,1,0,0,'','','','','ezpublish',9,0),(66,1,0,0,'','','','','ezpublish',10,0),(67,1,0,0,'','','','','ezpublish',11,0),(68,1,0,0,'','','','','ezpublish',12,0),(69,1,0,0,'','','','','ezpublish',13,0),(70,1,0,0,'','','','','ezpublish',14,0),(71,1,0,0,'','','','','ezpublish',15,0),(72,1,0,0,'','','','','ezpublish',16,0),(73,1,0,0,'','','','','ezpublish',17,0),(74,1,0,0,'','','','','ezpublish',18,0),(75,1,0,0,'','','','','ezpublish',19,0),(76,1,0,0,'','','','','ezpublish',20,0),(77,1,0,0,'','','','','ezpublish',21,0),(78,1,0,0,'','','','','ezpublish',22,0),(79,1,0,0,'','','','','ezpublish',23,0),(80,1,0,0,'','','','','ezpublish',24,0),(81,1,0,0,'','','','','ezpublish',25,0),(82,1,0,0,'','','','','ezpublish',26,0),(83,1,0,0,'','','','','ezpublish',27,0),(84,1,0,0,'','','','','ezpublish',28,0),(85,1,0,0,'','','','','ezpublish',29,0),(86,1,0,0,'','','','','ezpublish',30,0),(87,1,0,0,'','','','','ezpublish',31,0),(88,1,0,0,'','','','','ezpublish',32,0),(89,1,0,0,'','','','','ezpublish',33,0),(90,1,0,0,'','','','','ezpublish',34,0),(91,1,0,0,'','','','','ezpublish',35,0),(92,1,0,0,'','','','','ezpublish',36,0),(93,1,0,0,'','','','','ezpublish',37,0),(94,1,0,0,'','','','','ezpublish',38,0),(95,1,0,0,'','','','','ezpublish',39,0),(96,1,0,0,'','','','','ezpublish',40,0),(97,1,0,0,'','','','','ezpublish',41,0),(98,1,0,0,'','','','','ezpublish',42,0),(14,4,0,0,'','','','','ezpublish',43,0),(99,1,0,0,'','','','','ezpublish',44,0),(11,2,0,0,'','','','','ezpublish',45,0),(100,1,0,0,'','','','','ezpublish',46,0),(101,1,0,0,'','','','','ezpublish',47,0),(102,1,0,0,'','','','','ezpublish',48,0),(103,1,0,0,'','','','','ezpublish',49,0),(104,1,0,0,'','','','','ezpublish',50,0),(54,3,0,0,'','','','','ezpublish',51,0),(105,1,0,0,'','','','','ezpublish',52,0),(106,1,0,0,'','','','','ezpublish',53,0),(100,2,0,0,'','','','','ezpublish',54,0),(103,2,0,0,'','','','','ezpublish',55,0),(107,1,0,0,'','','','','ezpublish',56,0),(108,1,0,0,'','','','','ezpublish',57,0),(109,1,0,0,'','','','','ezpublish',58,0),(110,1,0,0,'','','','','ezpublish',59,0),(111,1,0,0,'','','','','ezpublish',60,0),(106,2,0,0,'','','','','ezpublish',61,0),(107,2,0,0,'','','','','ezpublish',62,0),(108,2,0,0,'','','','','ezpublish',63,0),(107,3,0,0,'','','','','ezpublish',64,0),(112,1,0,0,'','','','','ezpublish',65,0),(113,1,0,0,'','','','','ezpublish',66,0),(114,1,0,0,'','','','','ezpublish',67,0),(107,4,0,0,'','','','','ezpublish',68,0),(115,1,0,0,'','','','','ezpublish',69,0),(115,2,0,0,'','','','','ezpublish',70,0),(116,1,0,0,'','','','','ezpublish',71,0),(109,2,0,0,'','','','','ezpublish',72,0),(112,2,0,0,'','','','','ezpublish',73,0),(109,3,0,0,'','','','','ezpublish',74,0),(117,1,0,0,'','','','','ezpublish',75,0),(118,1,0,0,'','','','','ezpublish',76,0),(119,1,0,0,'','','','','ezpublish',77,0),(112,3,0,0,'','','','','ezpublish',78,0),(107,5,0,0,'','','','','ezpublish',79,0),(108,3,0,0,'','','','','ezpublish',80,0),(112,4,0,0,'','','','','ezpublish',81,0),(107,6,0,0,'','','','','ezpublish',82,0),(120,1,0,0,'','','','','ezpublish',83,0),(121,1,0,0,'','','','','ezpublish',84,0),(120,2,0,0,'','','','','ezpublish',85,0),(120,3,0,0,'','','','','ezpublish',86,0),(120,4,0,0,'','','','','ezpublish',87,0),(120,5,0,0,'','','','','ezpublish',88,0),(112,5,0,0,'','','','','ezpublish',89,0),(112,6,0,0,'','','','','ezpublish',90,0),(54,4,0,0,'','','','','ezpublish',91,0),(54,5,0,0,'','','','','ezpublish',92,0),(54,6,0,0,'','','','','ezpublish',93,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpackage`
--

LOCK TABLES `ezpackage` WRITE;
/*!40000 ALTER TABLE `ezpackage` DISABLE KEYS */;
INSERT INTO `ezpackage` VALUES (1,1301057838,'plain_site_data','1.0-1'),(2,1360944305,'ezwt_extension','5.0-0'),(3,1360944305,'ezstarrating_extension','5.0-0'),(4,1360944306,'ezgmaplocation_extension','5.0-0'),(5,1360944307,'ezdemo_extension','5.0-0'),(6,1360944308,'ezflow_extension','5.0-0'),(7,1360944309,'ezcomments_extension','5.0-0'),(8,1360944310,'ezdemo_classes','5.0-0'),(9,1360944318,'ezdemo_democontent','5.0-0'),(10,1361204167,'working_with_ez_publish_5_introduction_working_with_ez_publish_5_symfony_working_with_ez_publish_5_s','1.0-1');
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
  KEY `ezpolicy_original_id` (`original_id`)
) ENGINE=InnoDB AUTO_INCREMENT=383 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy`
--

LOCK TABLES `ezpolicy` WRITE;
/*!40000 ALTER TABLE `ezpolicy` DISABLE KEYS */;
INSERT INTO `ezpolicy` VALUES ('*',308,'*',0,2),('login',319,'user',0,3),('*',330,'ezoe',0,3),('*',332,'ezoe',0,3),('create',337,'content',0,3),('create',338,'content',0,3),('create',339,'content',0,3),('create',340,'content',0,3),('create',341,'content',0,3),('create',342,'content',0,3),('use',343,'websitetoolbar',0,3),('edit',344,'content',0,3),('read',345,'content',0,3),('use',346,'notification',0,3),('manage_locations',347,'content',0,3),('*',348,'ezodf',0,3),('*',349,'ezflow',0,3),('*',350,'ezajax',0,3),('diff',351,'content',0,3),('versionread',352,'content',0,3),('versionremove',353,'content',0,3),('remove',354,'content',0,3),('translate',355,'content',0,3),('feed',356,'rss',0,3),('bookmark',357,'content',0,3),('pendinglist',358,'content',0,3),('dashboard',359,'content',0,3),('view_embed',360,'content',0,3),('read',361,'content',0,4),('create',362,'content',0,4),('create',363,'content',0,4),('create',364,'content',0,4),('edit',365,'content',0,4),('selfedit',366,'user',0,4),('use',367,'notification',0,4),('create',368,'content',0,5),('create',369,'content',0,5),('create',370,'content',0,5),('edit',371,'content',0,5),('selfedit',372,'user',0,5),('use',373,'notification',0,5),('password',374,'user',0,5),('call',375,'ezjscore',0,5),('pdf',376,'content',0,1),('read',378,'content',0,1),('feed',379,'rss',0,1),('login',380,'user',0,1),('login',381,'user',0,1),('read',382,'content',0,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation`
--

LOCK TABLES `ezpolicy_limitation` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation` VALUES (258,'Class',337),(259,'ParentClass',337),(260,'Class',338),(261,'ParentClass',338),(262,'Class',339),(263,'ParentClass',339),(264,'Class',340),(265,'ParentClass',340),(266,'Class',341),(267,'ParentClass',341),(268,'Class',342),(269,'ParentClass',342),(270,'Class',343),(271,'Section',345),(272,'Section',361),(273,'Class',362),(274,'Section',362),(275,'ParentClass',362),(276,'Class',363),(277,'Section',363),(278,'ParentClass',363),(279,'Class',364),(280,'Section',364),(281,'ParentClass',364),(282,'Class',365),(283,'Section',365),(284,'Owner',365),(285,'Class',368),(286,'Section',368),(287,'ParentClass',368),(288,'Class',369),(289,'Section',369),(290,'ParentClass',369),(291,'Class',370),(292,'Section',370),(293,'ParentClass',370),(294,'Class',371),(295,'Section',371),(296,'Owner',371),(297,'Section',376),(299,'Class',378),(300,'Section',378),(301,'SiteAccess',380),(302,'SiteAccess',381),(304,'Section',382);
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
  KEY `ezpolicy_limitation_value_val` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=578 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation_value`
--

LOCK TABLES `ezpolicy_limitation_value` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation_value` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation_value` VALUES (485,258,'1'),(486,258,'28'),(487,258,'26'),(488,258,'21'),(489,258,'22'),(490,258,'23'),(491,258,'16'),(492,258,'17'),(493,258,'25'),(494,258,'24'),(495,258,'29'),(496,258,'30'),(497,258,'36'),(498,258,'34'),(499,258,'35'),(500,258,'27'),(501,259,'1'),(502,260,'18'),(503,261,'17'),(504,262,'31'),(505,263,'30'),(506,264,'33'),(507,265,'34'),(508,266,'27'),(509,267,'29'),(510,268,'1'),(511,268,'28'),(512,268,'22'),(513,268,'23'),(514,268,'24'),(515,268,'29'),(516,268,'34'),(517,268,'36'),(518,269,'23'),(519,270,'1'),(520,270,'28'),(521,270,'16'),(522,270,'17'),(523,270,'18'),(524,270,'21'),(525,270,'22'),(526,270,'23'),(527,270,'24'),(528,270,'25'),(529,270,'27'),(530,270,'29'),(531,270,'30'),(532,270,'33'),(533,270,'34'),(534,270,'36'),(535,271,'1'),(536,271,'6'),(537,271,'3'),(538,272,'6'),(539,273,'31'),(540,274,'6'),(541,275,'30'),(542,276,'32'),(543,277,'6'),(544,278,'31'),(545,279,'13'),(546,280,'6'),(547,281,'16'),(548,282,'13'),(549,282,'31'),(550,282,'32'),(551,283,'6'),(552,284,'1'),(553,285,'31'),(554,286,'1'),(555,287,'30'),(556,288,'32'),(557,289,'1'),(558,290,'31'),(559,291,'13'),(560,292,'1'),(561,293,'16'),(562,293,'18'),(563,294,'13'),(564,294,'31'),(565,294,'32'),(566,295,'1'),(567,296,'1'),(568,297,'1'),(570,299,'27'),(571,299,'35'),(572,300,'3'),(573,301,'630421698'),(574,302,'2582995467'),(576,304,'5'),(577,304,'1');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpreferences`
--

LOCK TABLES `ezpreferences` WRITE;
/*!40000 ALTER TABLE `ezpreferences` DISABLE KEYS */;
INSERT INTO `ezpreferences` VALUES (1,'admin_navigation_content',14,'0'),(2,'admin_navigation_roles',14,'1'),(3,'admin_navigation_policies',14,'1'),(4,'admin_list_limit',14,'2'),(5,'admin_treemenu',14,'1'),(6,'admin_bookmark_menu',14,'1'),(7,'admin_navigation_class_translations',14,'1'),(8,'admin_left_menu_size',14,'14.76923077em'),(9,'admin_right_menu_show',14,'1'),(10,'admin_clearcache_type',14,'All');
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
  UNIQUE KEY `client_id_unique` (`client_id`,`version`),
  KEY `client_id` (`client_id`)
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
INSERT INTO `ezrss_export` VALUES ('my_feed',1,1360944319,14,'',1,0,1,1360944319,14,0,10,'2.0','',1,'My RSS Feed','http://example.com');
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
) ENGINE=InnoDB AUTO_INCREMENT=36899 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_object_word_link`
--

LOCK TABLES `ezsearch_object_word_link` WRITE;
/*!40000 ALTER TABLE `ezsearch_object_word_link` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3511 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_word`
--

LOCK TABLES `ezsearch_word` WRITE;
/*!40000 ALTER TABLE `ezsearch_word` DISABLE KEYS */;
INSERT INTO `ezsearch_word` VALUES (812,5,'setup'),(814,11,'the'),(816,11,'for'),(877,5,'common'),(927,1,'ez.no'),(930,3,'users'),(951,6,'main'),(952,3,'group'),(953,2,'anonymous'),(954,6,'user'),(955,1,'nospam'),(958,2,'administrator'),(959,1,'editors'),(961,1,'media'),(962,5,'images'),(963,9,'files'),(964,1,'multimedia'),(965,6,'ini'),(966,5,'settings'),(968,7,'design'),(1615,2,'info'),(1623,5,'admin'),(1624,1,'example.com'),(1625,1,'partners'),(1626,1,'members'),(1627,11,'code'),(1628,7,'series'),(1629,9,'working'),(1630,10,'with'),(1631,11,'ez'),(1632,10,'publish'),(1633,11,'5'),(1634,4,'introduction'),(1635,11,'in'),(1636,4,'early'),(1637,4,'february'),(1638,8,'i'),(1639,4,'had'),(1640,4,'opportunity'),(1641,11,'to'),(1642,4,'spend'),(1643,10,'some'),(1644,4,'learning'),(1645,10,'of'),(1646,4,'ins'),(1647,10,'and'),(1648,4,'outs'),(1649,8,'version'),(1650,9,'at'),(1651,10,'a'),(1652,4,'training'),(1653,4,'event'),(1654,9,'from'),(1655,5,'systems'),(1656,4,'having'),(1657,4,'developed'),(1658,5,'years'),(1659,4,'knew'),(1660,6,'was'),(1661,5,'going'),(1662,10,'be'),(1663,5,'big'),(1664,5,'change'),(1665,9,'but'),(1666,4,'didn'),(1667,8,'t'),(1668,5,'really'),(1669,4,'consider'),(1670,5,'how'),(1671,5,'much'),(1672,5,'would'),(1673,5,'involved'),(1674,4,'after'),(1675,4,'digging'),(1676,4,'found'),(1677,10,'that'),(1678,9,'there'),(1679,10,'s'),(1680,7,'lot'),(1681,8,'like'),(1682,10,'about'),(1683,9,'new'),(1684,9,'system'),(1685,5,'goal'),(1686,10,'this'),(1687,8,'blog'),(1688,7,'posts'),(1689,10,'will'),(1690,7,'help'),(1691,5,'current'),(1692,5,'developers'),(1693,8,'get'),(1694,10,'up'),(1695,5,'speed'),(1696,8,'things'),(1697,5,'clear'),(1698,9,'first'),(1699,7,'before'),(1700,9,'we'),(1701,9,'let'),(1702,4,'address'),(1703,4,'facts'),(1704,8,'set'),(1705,5,'aside'),(1706,6,'any'),(1707,4,'preconceived'),(1708,4,'notions'),(1709,8,'what'),(1710,8,'re'),(1711,7,'getting'),(1712,8,'into'),(1713,10,'is'),(1714,4,'totally'),(1715,6,'cms'),(1716,10,'if'),(1717,10,'you'),(1718,9,'ve'),(1719,7,'read'),(1720,4,'anything'),(1721,5,'probably'),(1722,5,'know'),(1723,8,'most'),(1724,6,'core'),(1725,7,'components'),(1726,9,'are'),(1727,5,'being'),(1728,4,'replaced'),(1729,9,'by'),(1730,8,'symfony'),(1731,6,'framework'),(1732,4,'number'),(1733,4,'hints'),(1734,4,'release'),(1735,4,'past'),(1736,5,'major'),(1737,4,'releases'),(1738,4,'continuation'),(1739,7,'same'),(1740,4,'many'),(1741,7,'us'),(1742,9,'have'),(1743,8,'used'),(1744,6,'while'),(1745,5,'still'),(1746,5,'around'),(1747,5,'parts'),(1748,8,'all'),(1749,4,'essence'),(1750,4,'ground'),(1751,6,'rewrite'),(1752,5,'entire'),(1753,4,'overall'),(1754,4,'direction'),(1755,8,'where'),(1756,4,'component'),(1757,4,'stack'),(1758,10,'can'),(1759,5,'instead'),(1760,4,'counterpart'),(1761,9,'4'),(1762,6,'has'),(1763,6,'been'),(1764,4,'examples'),(1765,4,'interaction'),(1766,5,'handled'),(1767,4,'via'),(1768,5,'controllers'),(1769,9,'templates'),(1770,7,'twig'),(1771,6,'yml'),(1772,5,'ezjscore'),(1773,5,'assetic'),(1774,5,'caching'),(1775,4,'product'),(1776,4,'kernel'),(1777,6,'itself'),(1778,9,'now'),(1779,4,'accessed'),(1780,7,'public'),(1781,5,'api'),(1782,9,'which'),(1783,4,'remain'),(1784,4,'stable'),(1785,5,'future'),(1786,4,'versions'),(1787,6,'great'),(1788,4,'news'),(1789,6,'since'),(1790,10,'it'),(1791,8,'means'),(1792,6,'no'),(1793,5,'longer'),(1794,4,'hooking'),(1795,5,'classes'),(1796,4,'random'),(1797,4,'hoping'),(1798,5,'they'),(1799,7,'don'),(1800,4,'general'),(1801,4,'architectural'),(1802,4,'decisions'),(1803,5,'represents'),(1804,5,'community'),(1805,4,'ecosystem'),(1806,4,'mature'),(1807,4,'elegant'),(1808,4,'becoming'),(1809,8,'part'),(1810,4,'less'),(1811,7,'time'),(1812,10,'on'),(1813,4,'underlying'),(1814,4,'platform'),(1815,8,'more'),(1816,4,'delivering'),(1817,5,'best'),(1818,5,'possible'),(1819,4,'business'),(1820,4,'perspective'),(1821,4,'likely'),(1822,6,'find'),(1823,4,'transferrable'),(1824,4,'skills'),(1825,10,'so'),(1826,4,'long'),(1827,4,'term'),(1828,4,'win'),(1829,4,'side'),(1830,10,'as'),(1831,6,'well'),(1832,6,'isn'),(1833,4,'wait'),(1834,5,'not'),(1835,4,'yet'),(1836,5,'anyway'),(1837,8,'pieces'),(1838,9,'here'),(1839,5,'build'),(1840,11,'site'),(1841,5,'administrative'),(1842,4,'interface'),(1843,7,'other'),(1844,4,'commenting'),(1845,5,'front'),(1846,6,'end'),(1847,4,'editing'),(1848,7,'etc'),(1849,4,'rewritten'),(1850,10,'ll'),(1851,9,'using'),(1852,9,'your'),(1853,4,'normal'),(1854,4,'workflow'),(1855,4,'fact'),(1856,4,'previous'),(1857,4,'rechristened'),(1858,8,'legacy'),(1859,4,'ships'),(1860,6,'right'),(1861,4,'alongside'),(1862,4,'shiny'),(1863,5,'based'),(1864,5,'doesn'),(1865,4,'lose'),(1866,6,'features'),(1867,4,'moves'),(1868,7,'over'),(1869,5,'architecture'),(1870,9,'also'),(1871,4,'areas'),(1872,9,'need'),(1873,4,'understand'),(1874,6,'both'),(1875,8,'or'),(1876,4,'cases'),(1877,4,'duplicate'),(1878,4,'effort'),(1879,5,'switch'),(1880,4,'important'),(1881,4,'thing'),(1882,4,'remember'),(1883,4,'dont'),(1884,7,'start'),(1885,7,'even'),(1886,4,'year'),(1887,9,'development'),(1888,4,'roadmap'),(1889,5,'calls'),(1890,8,'available'),(1891,4,'clever'),(1892,5,'methods'),(1893,4,'built'),(1894,6,'allow'),(1895,4,'fall'),(1896,8,'back'),(1897,4,'somewhat'),(1898,4,'transparently'),(1899,4,'choose'),(1900,10,'use'),(1901,4,'little'),(1902,8,'project'),(1903,6,'point'),(1904,5,'though'),(1905,8,'work'),(1906,7,'stuff'),(1907,6,'try'),(1908,8,'do'),(1909,4,'selected'),(1910,5,'fairly'),(1911,8,'basic'),(1912,9,'next'),(1913,6,'few'),(1914,6,'pages'),(1915,7,'building'),(1916,8,'out'),(1917,8,'go'),(1918,6,'quick'),(1919,3,'overview'),(1920,4,'trying'),(1921,6,'data'),(1922,5,'model'),(1923,11,'content'),(1924,4,'types'),(1925,5,'blog_post'),(1926,3,'simple'),(1927,4,'container'),(1928,8,'name'),(1929,6,'description'),(1930,6,'post'),(1931,3,'fields'),(1932,6,'title'),(1933,4,'tagline'),(1934,4,'summary'),(1935,6,'body'),(1936,4,'tags'),(1937,4,'far'),(1938,5,'keep'),(1939,5,'pretty'),(1940,4,'display'),(1941,3,'summaries'),(1942,4,'reverse'),(1943,4,'chronological'),(1944,5,'order'),(1945,3,'paginated'),(1946,6,'d'),(1947,8,'way'),(1948,5,'edit'),(1949,4,'sidebar'),(1950,3,'featured'),(1951,4,'footer'),(1952,6,'follow'),(1953,6,'along'),(1954,4,'placed'),(1955,7,'github'),(1956,8,'note'),(1957,7,'m'),(1958,3,'linking'),(1959,9,'tutorial'),(1960,7,'branch'),(1961,4,'always'),(1962,7,'make'),(1963,7,'sure'),(1964,3,'matches'),(1965,4,'master'),(1966,4,'actually'),(1967,8,'running'),(1968,5,'may'),(1969,4,'enhanced'),(1970,7,'extra'),(1971,5,'goes'),(1972,7,'see'),(1973,5,'problem'),(1974,7,'either'),(1975,4,'please'),(1976,4,'feel'),(1977,4,'free'),(1978,6,'send'),(1979,7,'pull'),(1980,5,'request'),(1981,4,'update'),(1982,4,'accordingly'),(1983,4,'myself'),(1984,8,'called'),(1985,5,'questions'),(1986,4,'answer'),(1987,4,'drop'),(1988,4,'me'),(1989,4,'comment'),(1990,5,'good'),(1991,7,'environment'),(1992,6,'requirements'),(1993,5,'installed'),(1994,4,'covering'),(1995,4,'basics'),(1996,1,'1360947000'),(1997,1,'deal'),(1998,1,'joe'),(1999,1,'kepley'),(2000,2,'partial'),(2001,2,'my'),(2002,1,'space'),(2003,6,'write'),(2004,2,'topics'),(2005,2,'related'),(2006,2,'mostly'),(2007,1,'programming'),(2008,8,'web'),(2009,2,'started'),(2010,1,'partner'),(2011,3,'blend'),(2012,2,'interactive'),(2013,2,'head'),(2014,5,'job'),(2015,1,'practices'),(2016,4,'wherever'),(2017,6,'our'),(2018,1,'process'),(2019,4,'place'),(2020,5,'developer'),(2021,5,'http'),(2022,1,'status'),(2023,1,'206'),(2024,1,'never'),(2025,1,'complete'),(2026,1,'opinionated'),(2027,1,'world'),(2028,1,'nerdiest'),(2029,1,'play'),(2030,1,'words'),(2031,1,'surprised'),(2032,1,'anyone'),(2033,1,'ever'),(2034,1,'gets'),(2035,5,'dig'),(2036,8,'look'),(2037,5,'concepts'),(2038,8,'already'),(2039,5,'got'),(2040,4,'handle'),(2041,4,'aren'),(2042,4,'interested'),(2043,4,'conceptual'),(2044,5,'changes'),(2045,4,'skip'),(2046,7,'ahead'),(2047,4,'hands'),(2048,4,'dirty'),(2049,6,'view'),(2050,5,'controller'),(2051,5,'worked'),(2052,4,'rails'),(2053,4,'asp.net'),(2054,4,'mvc'),(2055,4,'lesser'),(2056,4,'degree'),(2057,4,'cakephp'),(2058,6,'then'),(2059,7,'familiar'),(2060,4,'pattern'),(2061,7,'provides'),(2062,5,'standard'),(2063,7,'php'),(2064,4,'applications'),(2065,4,'organized'),(2066,6,'when'),(2067,4,'received'),(2068,4,'directed'),(2069,4,'routes'),(2070,8,'an'),(2071,4,'action'),(2072,6,'just'),(2073,5,'function'),(2074,5,'defined'),(2075,6,'app'),(2076,4,'gathers'),(2077,4,'whatever'),(2078,5,'variables'),(2079,6,'needed'),(2080,5,'objects'),(2081,4,'represent'),(2082,4,'stores'),(2083,6,'database'),(2084,4,'apis'),(2085,4,'punch'),(2086,6,'cards'),(2087,4,'gathered'),(2088,6,'template'),(2089,5,'language'),(2090,5,'format'),(2091,4,'response'),(2092,4,'sounds'),(2093,4,'complicated'),(2094,4,'practice'),(2095,4,'straightforward'),(2096,8,'want'),(2097,6,'render'),(2098,4,'output'),(2099,7,'page'),(2100,5,'example'),(2101,5,'simply'),(2102,6,'class'),(2103,4,'returns'),(2104,4,'array'),(2105,5,'containing'),(2106,5,'templating'),(2107,7,'contains'),(2108,5,'html'),(2109,5,'easier'),(2110,6,'provided'),(2111,4,'principles'),(2112,4,'drive'),(2113,4,'separation'),(2114,4,'concerns'),(2115,4,'repeat'),(2116,4,'yourself'),(2117,4,'dry'),(2118,4,'fetching'),(2119,4,'separate'),(2120,7,'very'),(2121,5,'easy'),(2122,5,'appearance'),(2123,4,'json'),(2124,5,'xml'),(2125,7,'something'),(2126,6,'else'),(2127,7,'javascript'),(2128,4,'adds'),(2129,4,'another'),(2130,4,'layer'),(2131,6,'top'),(2132,4,'packaging'),(2133,7,'bundles'),(2134,6,'directories'),(2135,4,'organize'),(2136,5,'specific'),(2137,4,'aspects'),(2138,4,'application'),(2139,4,'sometimes'),(2140,4,'referred'),(2141,4,'hmvc'),(2142,4,'hierarchical'),(2143,4,'makes'),(2144,4,'people'),(2145,4,'written'),(2146,5,'installing'),(2147,7,'their'),(2148,4,'coming'),(2149,3,'trip'),(2150,3,'unless'),(2151,7,'looking'),(2152,5,'them'),(2153,2,'talking'),(2154,3,'mind'),(2155,3,'only'),(2156,4,'uses'),(2157,4,'old'),(2158,2,'half'),(2159,2,'smarty'),(2160,2,'deprecated'),(2161,2,'favor'),(2162,2,'closely'),(2163,2,'associated'),(2164,2,'quite'),(2165,4,'bit'),(2166,2,'differently'),(2167,5,'under'),(2168,2,'hood'),(2169,2,'neat'),(2170,3,'too'),(2171,3,'inheritance'),(2172,2,'extend'),(2173,2,'documented'),(2174,2,'fetch'),(2175,3,'wanted'),(2176,4,'repository'),(2177,2,'def'),(2178,4,'list'),(2179,2,'hash'),(2180,2,'parent_node_id'),(2181,4,'2'),(2182,2,'class_filter_type'),(2183,4,'include'),(2184,2,'class_filter_array'),(2185,5,'handy'),(2186,2,'arises'),(2187,2,'separated'),(2188,2,'directly'),(2189,2,'handling'),(2190,2,'logic'),(2191,2,'became'),(2192,4,'loaded'),(2193,2,'lead'),(2194,2,'hairy'),(2195,2,'hard'),(2196,2,'approach'),(2197,2,'nested'),(2198,2,'sub'),(2199,2,'query'),(2200,3,'retrieve'),(2201,6,'provide'),(2202,2,'results'),(2203,2,'leads'),(2204,2,'better'),(2205,4,'gives'),(2206,2,'chance'),(2207,2,'complex'),(2208,2,'turning'),(2209,2,'events'),(2210,2,'calendar'),(2211,5,'single'),(2212,2,'pass'),(2213,2,'rendering'),(2214,3,'rendered'),(2215,4,'two'),(2216,4,'steps'),(2217,2,'renders'),(2218,2,'module'),(2219,2,'result'),(2220,5,'full'),(2221,4,'object'),(2222,2,'passes'),(2223,4,'pagelayout'),(2224,5,'surround'),(2225,5,'access'),(2226,2,'interior'),(2227,4,'those'),(2228,5,'structure'),(2229,2,'again'),(2230,5,'one'),(2231,6,'step'),(2232,2,'occurs'),(2233,5,'each'),(2234,2,'ignoring'),(2235,4,'requests'),(2236,3,'moment'),(2237,3,'similar'),(2238,2,'allows'),(2239,2,'simplified'),(2240,4,'cache'),(2241,3,'were'),(2242,4,'block'),(2243,2,'native'),(2244,2,'caches'),(2245,2,'adheres'),(2246,2,'specification'),(2247,2,'determine'),(2248,2,'managed'),(2249,2,'headers'),(2250,2,'control'),(2251,2,'etag'),(2252,2,'brush'),(2253,2,'begin'),(2254,2,'serious'),(2255,2,'move'),(2256,4,'installation'),(2258,1,'home'),(2259,1,'welcome'),(2261,3,'goodies'),(2262,3,'1360757400'),(2263,6,'x'),(2264,3,'enough'),(2265,3,'dangerous'),(2266,2,'1360874400'),(2267,3,'3'),(2268,3,'assuming'),(2269,3,'decent'),(2270,4,'apache'),(2271,3,'mysql'),(2272,3,'configured'),(2273,4,'setting'),(2274,3,'virtual'),(2275,3,'hosts'),(2276,3,'least'),(2277,3,'5.3.8'),(2278,3,'5.0.51'),(2279,3,'imagemagick'),(2280,3,'mac'),(2281,3,'homebrew'),(2282,3,'vagrant'),(2283,3,'performant'),(2284,3,'sandbox'),(2285,5,'these'),(2286,3,'covered'),(2287,2,'detail'),(2288,2,'variety'),(2289,2,'online'),(2290,3,'documentation'),(2291,2,'downloading'),(2292,3,'off'),(2293,2,'download'),(2294,2,'edition'),(2295,2,'2012.12'),(2296,2,'unzip'),(2297,5,'folder'),(2298,3,'talk'),(2299,4,'couple'),(2300,3,'composer.'),(2301,3,'composer'),(2302,3,'dependency'),(2303,4,'management'),(2304,3,'maintaining'),(2305,3,'projects'),(2306,4,'third'),(2307,3,'party'),(2308,3,'libraries'),(2309,3,'ignore'),(2310,3,'everything'),(2311,5,'ezpublish'),(2312,5,'config'),(2313,3,'logging'),(2314,3,'live'),(2315,5,'directory'),(2316,3,'installs'),(2317,3,'ezpublish_legacy'),(2318,5,'take'),(2319,3,'peek'),(2320,3,'friend'),(2321,4,'install'),(2322,3,'slightly'),(2323,3,'updated'),(2324,4,'src'),(2325,3,'structures'),(2326,7,'bundle'),(2327,3,'ezsystemsdemobundle'),(2328,3,'implements'),(2329,3,'vendor'),(2330,3,'supporting'),(2331,3,'frameworks'),(2332,4,'including'),(2333,5,'root'),(2334,4,'rules'),(2335,3,'shortly'),(2336,3,'traffic'),(2337,3,'index.php'),(2338,3,'endpoint'),(2339,3,'handles'),(2340,3,'copy'),(2341,3,'production'),(2342,5,'lt'),(2343,2,'virtualhost'),(2344,2,'80'),(2345,5,'gt'),(2346,2,'documentroot'),(2347,2,'path_to_ezpublish'),(2348,2,'servername'),(2349,2,'server_name'),(2350,2,'serveralias'),(2351,2,'server_alias'),(2352,2,'options'),(2353,2,'followsymlinks'),(2354,2,'allowoverride'),(2355,2,'none'),(2356,2,'configures'),(2357,6,'should'),(2358,2,'defaults'),(2359,2,'ifmodule'),(2360,2,'mod_php5.c'),(2361,2,'php_admin_flag'),(2362,2,'safe_mode'),(2363,2,'php_admin_value'),(2364,2,'register_globals'),(2365,2,'0'),(2366,2,'php_value'),(2367,2,'magic_quotes_gpc'),(2368,2,'magic_quotes_runtime'),(2369,2,'allow_call_time_pass_reference'),(2370,2,'directoryindex'),(2371,2,'rewriteengine'),(2372,2,'cve'),(2373,2,'2012'),(2374,2,'6432'),(2375,2,'rewriterule'),(2376,2,'_internal'),(2377,2,'r'),(2378,2,'403.l'),(2379,3,'1'),(2380,2,'rest'),(2381,2,'v1'),(2382,2,'index_rest.php'),(2383,2,'l'),(2384,4,'paths'),(2385,3,'var'),(2386,2,'storage'),(2387,2,'versioned'),(2388,2,'texttoimage'),(2389,3,'stylesheets'),(2390,2,'fonts'),(2391,2,'share'),(2392,2,'icons'),(2393,3,'extension'),(2394,2,'flash'),(2395,2,'lib'),(2396,3,'javascripts'),(2397,2,'packages'),(2398,3,'styles'),(2399,2,'thumbnail'),(2400,2,'favicon'),(2401,2,'ico'),(2402,2,'robots'),(2403,2,'txt'),(2404,2,'w3c'),(2405,2,'p3p'),(2406,4,'assets'),(2407,2,'router'),(2408,2,'index_dev.php'),(2409,3,'replace'),(2410,3,'own'),(2411,2,'values'),(2412,5,'configuration'),(2413,5,'create'),(2414,3,'password'),(2415,3,'partialcontent'),(2416,4,'charset'),(2417,3,'utf8'),(2418,3,'grant'),(2419,3,'partialcontent.'),(2420,4,'href'),(2421,3,'mailto'),(2422,3,'pcdb_user'),(2423,3,'localhost'),(2424,3,'identified'),(2425,2,'your_password_here'),(2426,3,'flush'),(2427,3,'privileges'),(2428,4,'following'),(2429,3,'folders'),(2430,4,'contents'),(2431,3,'writable'),(2432,3,'server'),(2433,3,'logs'),(2434,3,'static'),(2435,4,'css'),(2436,3,'fortunately'),(2437,4,'console'),(2438,3,'commands'),(2439,3,'care'),(2440,4,'run'),(2441,4,'command'),(2442,4,'text'),(2443,3,'ones'),(2444,4,'symlink'),(2445,3,'assets_install'),(2446,4,'come'),(2447,4,'later'),(2448,3,'browser'),(2449,3,'played'),(2450,4,'wizard'),(2451,2,'recommend'),(2452,2,'making'),(2453,2,'choices'),(2454,4,'enter'),(2455,2,'db'),(2456,2,'credentials'),(2457,2,'earlier'),(2458,2,'initialization'),(2459,2,'package'),(2460,2,'select'),(2461,5,'demo'),(2462,2,'takes'),(2463,2,'requires'),(2464,2,'internet'),(2465,2,'connection'),(2466,2,'additional'),(2467,3,'downloaded'),(2468,3,'url'),(2469,2,'details'),(2470,2,'leave'),(2471,2,'path'),(2472,2,'created'),(2473,3,'once'),(2474,2,'completed'),(2475,3,'1360877580'),(2476,1,'default'),(2477,4,'file'),(2478,4,'screenshot'),(2488,1,'generation'),(2491,2,'able'),(2495,2,'cover'),(2496,3,'stored'),(2497,2,'made'),(2498,3,'down'),(2501,1,'ezembed'),(2530,3,'htdocs'),(2545,2,'sample'),(2561,2,'line'),(2583,2,'because'),(2584,1,'seemed'),(2585,1,'natural'),(2586,1,'throughout'),(2587,1,'reading'),(2588,1,'wrote'),(2589,1,'saved'),(2590,2,'branches'),(2591,3,'git'),(2592,1,'assumes'),(2593,1,'locally'),(2594,1,'sites'),(2595,1,'placing'),(2596,1,'somewhere'),(2597,1,'adjustments'),(2598,1,'cd'),(2599,2,'terminal'),(2600,1,'clone'),(2601,1,'github.com'),(2602,1,'blendinteractive'),(2603,1,'partialcontent.git'),(2604,1,'check'),(2605,1,'initial'),(2606,3,'checkout'),(2607,3,'b'),(2608,1,'subdirectories'),(2609,1,'notable'),(2610,1,'conf'),(2611,1,'sql'),(2612,2,'modify'),(2613,1,'computer'),(2614,1,'machines'),(2615,3,'add'),(2616,1,'lines'),(2617,2,'partialcontent.local'),(2618,1,'admin.partialcontent.local'),(2619,1,'127.0.0.1'),(2620,1,'host'),(2621,1,'local.conf'),(2622,1,'restart'),(2623,1,'insertrealpasswordhere'),(2624,3,'load'),(2625,1,'initial.sql'),(2626,3,'clean'),(2627,1,'cat'),(2628,1,'u'),(2629,1,'p'),(2630,1,'prompt'),(2631,1,'organization'),(2632,1,'urls'),(2633,1,'facing'),(2634,1,'partial1234'),(2635,1,'plan'),(2636,1,'course'),(2637,1,'displayed'),(2638,1,'divided'),(2639,1,'categories'),(2640,1,'multiple'),(2641,1,'needs'),(2642,1,'combine'),(2643,1,'accomplish'),(2644,1,'three'),(2645,1,'contain'),(2646,1,'beneath'),(2647,1,'themselves'),(2648,1,'contained'),(2649,1,'bring'),(2650,1,'topic'),(2651,1,'stream'),(2652,1,'nesting'),(2653,1,'looks'),(2654,1,'wysiwyg'),(2655,1,'slug'),(2656,1,'customizing'),(2657,1,'publication'),(2658,1,'date'),(2659,2,'field'),(2660,1,'comments'),(2661,1,'relation'),(2662,1,'manually'),(2663,2,'included'),(2664,1,'break'),(2665,1,'ok'),(2666,1,'partialcontent.sql'),(2667,1,'prompted'),(2668,1,'log'),(2669,1,'developing'),(2670,2,'creating'),(2671,2,'layout'),(2672,1,'style'),(2707,2,'testing'),(2709,2,'creation'),(2824,2,'whole'),(2829,2,'resources'),(2843,2,'pagelayout.html.twig'),(2844,2,'views'),(2864,2,'div'),(2868,2,'h1'),(2872,2,'inner'),(2875,2,'endblock'),(2886,2,'tell'),(2889,2,'blendpartialcontentbundle'),(2890,2,'refresh'),(2896,2,'asset'),(2906,2,'erase'),(2910,2,'f'),(2911,2,'origin'),(2917,2,'type'),(2943,1,'showing'),(2945,1,'focusing'),(2946,1,'familiarity'),(2947,1,'idea'),(2948,1,'quickly'),(2949,1,'neophyte'),(2950,1,'folks'),(2951,1,'contributed'),(2952,1,'thanks'),(2953,1,'staff'),(2954,1,'clarifying'),(2955,1,'damien'),(2956,1,'pobel'),(2957,1,'who'),(2958,1,'open'),(2959,1,'sourced'),(2960,1,'planet'),(2961,1,'ezpublish.fr'),(2962,1,'codebase'),(2963,1,'proved'),(2964,1,'show'),(2965,1,'pedigree'),(2966,2,'catch'),(2967,1,'progress'),(2985,1,'fullview'),(3187,1,'updating'),(3188,1,'last'),(3189,1,'local'),(3190,1,'sake'),(3191,1,'consistency'),(3192,1,'commit'),(3193,1,'includes'),(3194,1,'additions'),(3195,1,'decide'),(3196,1,'given'),(3197,1,'its'),(3198,1,'location'),(3199,1,'requested'),(3200,1,'analogous'),(3201,1,'cleaner'),(3202,1,'extensible'),(3203,1,'kind'),(3204,1,'blog.html.twig'),(3205,1,'extends'),(3206,1,'replaces'),(3207,1,'nolayout'),(3208,1,'viewbaselayout'),(3209,1,'variable'),(3210,1,'position'),(3211,1,'metadata'),(3212,1,'location.contentinfo.name'),(3213,1,'article'),(3214,1,'viewing'),(3215,1,'ez_render_field'),(3216,1,'helper'),(3217,1,'keyword'),(3218,1,'declares'),(3219,1,'inherits'),(3220,1,'except'),(3221,1,'markup'),(3222,1,'plugged'),(3223,1,'seems'),(3224,1,'surface'),(3225,1,'former'),(3226,1,'outer'),(3227,1,'createa'),(3228,1,'blog_post.html.twig'),(3229,1,'nothing'),(3230,1,'configuring'),(3231,1,'override.yml'),(3232,1,'sort'),(3233,1,'override.ini'),(3234,1,'might'),(3235,1,'ezpublish.system'),(3236,1,'preamble'),(3237,1,'states'),(3238,1,'context'),(3239,1,'apply'),(3240,1,'siteaccess'),(3241,1,'ezdemo_site_user'),(3242,1,'location_view'),(3243,1,'rule'),(3244,1,'contenttype'),(3245,1,'match'),(3246,1,'identifier'),(3247,1,'ezpublish.yml'),(3248,1,'imports'),(3249,1,'resource'),(3250,1,'selecting'),(3251,1,'syntax'),(3252,1,'retrieving'),(3253,1,'1361226660'),(3382,1,'starting'),(3383,1,'happens'),(3384,1,'containers'),(3385,1,'override'),(3386,1,'parties'),(3387,1,'software'),(3388,1,'generating'),(3389,1,'hold'),(3390,1,'tool'),(3391,1,'generate'),(3392,1,'namespace'),(3393,1,'unique'),(3394,1,'element'),(3395,1,'usually'),(3396,1,'company'),(3397,1,'per'),(3398,1,'standards'),(3399,1,'final'),(3400,1,'must'),(3401,1,'word'),(3402,1,'partialcontentbundle'),(3403,1,'kick'),(3404,1,'ask'),(3405,1,'hit'),(3406,1,'automated'),(3407,1,'register'),(3408,1,'session'),(3409,1,'done'),(3410,1,'non'),(3411,1,'items'),(3412,1,'image'),(3413,1,'tests'),(3414,1,'encourages'),(3415,1,'unit'),(3416,1,'beyond'),(3417,1,'scope'),(3418,1,'define'),(3419,1,'serve'),(3420,1,'basis'),(3421,1,'piece'),(3422,1,'fill'),(3423,1,'doctype'),(3424,1,'ie'),(3425,1,'7'),(3426,1,'js'),(3427,1,'ie9'),(3428,1,'ie8'),(3429,1,'ie7'),(3430,1,'endif'),(3431,1,'8'),(3432,1,'meta'),(3433,1,'utf'),(3434,1,'equiv'),(3435,1,'ua'),(3436,1,'compatible'),(3437,1,'edge.chrome'),(3438,1,'viewport'),(3439,1,'width'),(3440,1,'device'),(3441,1,'header'),(3442,1,'branding'),(3443,1,'jumbotron'),(3444,1,'subhead'),(3445,1,'nav'),(3446,1,'navbar'),(3447,1,'inverse'),(3448,1,'topnav'),(3449,1,'menu'),(3450,1,'row'),(3451,1,'span9'),(3452,1,'span3'),(3453,1,'script'),(3454,1,'ajax.googleapis.com'),(3455,1,'ajax'),(3456,1,'libs'),(3457,1,'jquery'),(3458,1,'1.9.0'),(3459,1,'jquery.min.js'),(3460,1,'parameters.yml'),(3461,1,'ezpublish_legacy.view.default_layout'),(3462,1,'ugly'),(3463,1,'area'),(3464,1,'examine'),(3465,1,'notice'),(3466,1,'haven'),(3467,1,'managing'),(3468,1,'handier'),(3469,1,'html5'),(3470,1,'boilerplate'),(3471,1,'twitter'),(3472,1,'bootstrap'),(3473,1,'save'),(3474,1,'frustration'),(3475,1,'formatting'),(3476,1,'customizations'),(3477,1,'proceeding'),(3478,1,'typing'),(3479,1,'looked'),(3480,1,'error'),(3481,1,'saying'),(3482,1,'exists'),(3483,1,'case'),(3484,1,'pulled'),(3485,1,'reference'),(3486,1,'below'),(3487,1,'blendpartialcontent'),(3488,1,'link'),(3489,1,'rel'),(3490,1,'stylesheet'),(3491,1,'asset_url'),(3492,1,'endstylesheets'),(3493,1,'modernizr.js'),(3494,1,'bootstrap.js'),(3495,1,'endjavascripts'),(3496,1,'iterate'),(3497,1,'tag'),(3498,1,'finds'),(3499,1,'alphabetically'),(3500,1,'named'),(3501,1,'turn'),(3502,1,'condense'),(3503,1,'relative'),(3504,1,'notie'),(3505,1,'appear'),(3506,1,'refreshing'),(3507,1,'grace'),(3508,1,'styled'),(3509,1,'missing'),(3510,1,'1361206260');
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl`
--

LOCK TABLES `ezurl` WRITE;
/*!40000 ALTER TABLE `ezurl` DISABLE KEYS */;
INSERT INTO `ezurl` VALUES (1360948164,91,1,0,1360948164,'057529bfc8ed90e92c11894908d64b79','https://github.com/blendinteractive/partialcontent'),(1360948164,92,1,0,1360948164,'e4a4d4a2f25b3e9cedf819192a5d59ba','http://blendinteractive.com'),(1360948164,93,1,0,1360948164,'154f39a3d6cdbb10f553c332253d0e0c','http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html'),(1360955712,94,1,0,1360955712,'8c7ed89829690111d836743b563b1ad1','http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html'),(1360955712,95,1,0,1360955712,'46d38db583fde27f10ce204142dc2881','http://en.wikipedia.org/wiki/HTTP_ETag'),(1361204167,96,1,0,1361204167,'7d6d197718f7671c107edc0f4c8902ce','https://confluence.ez.no/pages/viewpage.action?pageId=7438581'),(1361204167,97,1,0,1361204167,'aa9d2657060f595e903099c3378ae9d2','http://share.ez.no/downloads/downloads/ez-publish-community-project-2012.12'),(1361204167,98,1,0,1361204167,'1aa561408697ac170605880e834282b8','http://getcomposer.org/'),(1361206138,99,1,0,1361206138,'874a421888df2f2b8aaebed7c1ee2427','http://symfony.com/doc/current/reference/requirements.html'),(1361206138,100,1,0,1361206138,'39aa67d414f1f4d15dadc5a211025624','https://confluence.ez.no/display/EZP/Requirements+for+doing+a+normal+installation'),(1361209178,101,1,0,1361209178,'a340a623899732e3084db292a259e880','http://symfony.com/doc/current/book/page_creation.html'),(1361209178,102,1,0,1361209178,'2e63aa20647e484786150591a3befe2a','http://www.php.net/manual/en/language.namespaces.rationale.php'),(1361209178,103,1,0,1361209178,'ccf7d1e6906068b064506b695d67786f','http://symfony.com/doc/master/cookbook/bundles/best_practices.html'),(1361215052,104,1,0,1361215052,'2ab151910c62ee8ed98a95f9b9b373e3','/Code/Working-with-eZ-Publish-5-Symfony'),(1361221530,105,1,0,1361221530,'787e764fea24941f4f9fe25de527d1ce','http://partialcontent.local'),(1361221530,106,1,0,1361221530,'bdf7eb018b9d7813618b366a04938c65','/Code/Working-with-eZ-Publish-5-Templates'),(1361225744,107,1,0,1361225744,'752a1becac087241c0ac4450d5faaf54','http://twig.sensiolabs.org/doc/templates.html'),(1361225744,108,1,0,1361225744,'2921dc27bd1fa50b7880d0fba2588d93','http://symfony.com/doc/master/cookbook/assetic/asset_management.html'),(1361226219,109,1,0,1361226219,'dfcdb471b240d964dc3f57b998eb0533','http://ez.no'),(1361226219,110,1,0,1361226219,'2c535275947538e25d30952979814f88','http://pwet.fr/blog'),(1361226219,111,1,0,1361226219,'35350529c9433f02d0940210a8656ddb','https://github.com/dpobel/planet-ezpublish.fr'),(1361226219,112,1,0,1361226219,'250539f8ead8841ed0f91f39c0744732','http://www.planet-ezpublish.fr/'),(1361226267,113,1,0,1361226267,'e31c68b9e170b5a5783ace0bf42b45c8','/Code/Working-with-eZ-Publish-5-Setup'),(1361229845,114,1,0,1361229845,'68ba23a52e9602b37d62f04211d4ca95','https://confluence.ez.no/display/EZP/View+provider+configuration'),(1361295713,115,1,0,1361295713,'1df0a24ab3a0b1afa1d9a0c18ff7cc4c','/Code/Working-with-eZ-Publish-5-Content-Templates'),(1361375223,116,1,0,1361375223,'2aad7b8d22653aefc0c1490719d2b31d','http://nowwhatconference.com'),(1361375239,117,1,0,1361375239,'01565060cead8c25dd9381522852cb50','http://www.meetup.com/eZ-Publish-Users-Developers/'),(1361375254,118,1,0,1361375254,'265d537bfba0e5ed4e85fbcd7f30ea84','http://share.ez.no');
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
INSERT INTO `ezurl_object_link` VALUES (553,1,91),(553,1,92),(553,1,93),(558,3,92),(562,1,94),(562,1,95),(576,1,94),(576,1,95),(581,1,96),(581,1,97),(581,1,98),(571,2,91),(571,2,99),(571,2,100),(576,2,94),(576,2,95),(571,3,91),(571,3,99),(571,3,100),(596,2,101),(596,2,102),(596,2,103),(571,4,91),(571,4,99),(571,4,100),(571,4,104),(611,1,96),(611,1,97),(611,1,98),(611,2,96),(611,2,97),(611,2,98),(581,2,98),(581,3,98),(581,3,105),(581,3,106),(596,3,101),(596,3,102),(596,3,103),(596,3,107),(596,3,105),(596,3,108),(571,5,91),(571,5,99),(571,5,100),(571,5,104),(571,5,92),(571,5,109),(571,5,110),(571,5,111),(571,5,112),(576,3,94),(576,3,95),(576,3,113),(596,4,101),(596,4,102),(596,4,103),(596,4,107),(596,4,105),(596,4,108),(571,6,92),(571,6,109),(571,6,110),(571,6,111),(571,6,112),(571,6,91),(571,6,99),(571,6,100),(571,6,104),(636,2,114),(636,3,114),(636,4,114),(636,5,114),(596,5,101),(596,5,102),(596,5,103),(596,5,107),(596,5,105),(596,5,108),(596,6,101),(596,6,102),(596,6,103),(596,6,107),(596,6,105),(596,6,108),(596,6,115),(558,4,92),(558,5,92),(558,6,92),(557,6,92),(557,6,116),(557,6,117),(557,6,118);
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
  KEY `ezurlalias_ml_action` (`action`(32),`id`,`link`),
  KEY `ezurlalias_ml_actt` (`action_type`),
  KEY `ezurlalias_ml_actt_org_al` (`action_type`,`is_original`,`is_alias`),
  KEY `ezurlalias_ml_id` (`id`),
  KEY `ezurlalias_ml_par_act_id_lnk` (`parent`,`action`(32),`id`,`link`),
  KEY `ezurlalias_ml_par_lnk_txt` (`parent`,`link`,`text`(32)),
  KEY `ezurlalias_ml_par_txt` (`parent`,`text`(32)),
  KEY `ezurlalias_ml_text` (`text`(32),`id`,`link`),
  KEY `ezurlalias_ml_text_lang` (`text`(32),`lang_mask`,`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml`
--

LOCK TABLES `ezurlalias_ml` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml` VALUES ('nop:','nop',1,14,0,0,1,14,0,'foo_bar_folder','0288b6883046492fa92e4a84eb67acc9'),('eznode:59','eznode',1,38,0,1,3,38,0,'eZ-Publish','10e4c3cb527fb9963258469986c16240'),('eznode:58','eznode',1,25,0,1,3,25,0,'Design','31c13f47ad87dd7baa2d558a91e0fbb9'),('eznode:106','eznode',1,86,0,1,2,86,0,'About','46b3931b9959c927df4fc65fdee94b07'),('eznode:48','eznode',1,13,0,1,3,13,0,'Setup2','475e97c0146bfb1c490339546d9e72ee'),('nop:','nop',1,17,0,0,1,17,0,'media2','50e2736330de124f6edea9b008556fe6'),('eznode:43','eznode',1,9,0,1,3,9,0,'Media','62933a2951ef01f4eafd9bdf4d3cd2f0'),('nop:','nop',1,21,0,0,1,21,0,'setup3','732cefcf28bf4547540609fb1a786a30'),('nop:','nop',1,3,0,0,1,3,0,'users2','86425c35a33507d479f71ade53a669aa'),('eznode:5','eznode',1,2,0,1,3,2,0,'Users','9bc65c2abec141778ffaa729489f3e87'),('eznode:104','eznode',1,84,0,1,2,84,0,'Series','bef99584217af744e404ed44a33af589'),('eznode:103','eznode',1,83,0,1,2,83,0,'Code','c13367945d5d4c91047b3b50234aa7ab'),('eznode:2','eznode',1,1,0,1,2,1,0,'','d41d8cd98f00b204e9800998ecf8427e'),('eznode:101','eznode',1,81,0,1,3,81,2,'Partners','7896f8fa69398c56d86a65357615c41f'),('eznode:14','eznode',1,6,0,1,3,6,2,'Editors','a147e136bfa717592f2bd70bd4b53b17'),('eznode:44','eznode',1,10,0,1,3,10,2,'Anonymous-Users','c2803c3fa1b0b5423237b4e018cae755'),('eznode:12','eznode',1,4,0,1,3,4,2,'Members','d2e3083420929d8bfae81f58fa4594cb'),('eznode:12','eznode',1,82,0,0,3,4,2,'Guest-accounts','e57843d836e3af8ab611fde9e2139b3a'),('eznode:13','eznode',1,5,0,1,3,5,2,'Administrator-users','f89fad7f8a3abc8c09e1deb46a420007'),('nop:','nop',1,11,0,0,1,11,3,'anonymous_users2','505e93077a6dde9034ad97a14ab022b1'),('eznode:12','eznode',1,26,0,0,0,4,3,'guest_accounts','70bb992820e73638731aa8de79b3329e'),('eznode:14','eznode',1,29,0,0,1,6,3,'editors','a147e136bfa717592f2bd70bd4b53b17'),('nop:','nop',1,7,0,0,1,7,3,'administrator_users2','a7da338c20bf65f9f789c87296379c2a'),('eznode:13','eznode',1,27,0,0,1,5,3,'administrator_users','aeb8609aa933b0899aa012c71139c58c'),('eznode:44','eznode',1,30,0,0,1,10,3,'anonymous_users','e9e5ad0c05ee1a43715572e5cc545926'),('eznode:15','eznode',1,8,0,1,3,8,5,'Administrator-User','5a9d7b0ec93173ef4fedee023209cb61'),('eznode:15','eznode',1,28,0,0,0,8,7,'administrator_user','a3cca2de936df1e2f805710399989971'),('eznode:53','eznode',1,20,0,1,3,20,9,'Multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c'),('eznode:52','eznode',1,19,0,1,3,19,9,'Files','45b963397aa40d4a0063e0d85e4fe7a1'),('eznode:51','eznode',1,18,0,1,3,18,9,'Images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:45','eznode',1,12,0,1,3,12,10,'Anonymous-User','ccb62ebca03a31272430bc414bd5cd5b'),('eznode:45','eznode',1,31,0,0,1,12,11,'anonymous_user','c593ec85293ecb0e02d50d4c5c6c20eb'),('eznode:54','eznode',1,22,0,1,2,22,13,'Common-INI-settings','4434993ac013ae4d54bb1f51034d6401'),('nop:','nop',1,15,0,0,1,15,14,'images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:50','eznode',1,16,0,1,2,16,15,'vbanner','c54e2d1b93642e280bdc5d99eab2827d'),('eznode:53','eznode',1,34,0,0,1,20,17,'multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c'),('eznode:52','eznode',1,33,0,0,1,19,17,'files','45b963397aa40d4a0063e0d85e4fe7a1'),('eznode:51','eznode',1,32,0,0,1,18,17,'images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:115','eznode',1,98,0,1,2,98,18,'Demo-Site-Content-Screenshot','9844642b65dc06bce469e1f08d4ca7d0'),('eznode:54','eznode',1,35,0,0,1,22,21,'common_ini_settings','e59d6834e86cee752ed841f9cd8d5baf'),('eznode:56','eznode',1,37,0,0,2,24,25,'eZ-publish','10e4c3cb527fb9963258469986c16240'),('eznode:56','eznode',1,87,0,0,2,24,25,'Plain-site','49a39d99a955d95aa5d636275656a07a'),('eznode:56','eznode',1,24,0,1,2,24,25,'partial-content','ec043d8337ad762da440e62d91f74283'),('eznode:122','eznode',1,106,0,1,2,106,83,'working-with-ez-publish-5-content-templates','4a083028f56abb38e4fba4f95bd42158'),('eznode:110','eznode',1,91,0,1,2,91,83,'Working-with-eZ-Publish-5-Symfony','4dffbd24422a05d320d881f07fef634f'),('eznode:117','eznode',1,100,0,1,2,100,83,'Working-with-eZ-Publish-5-Installation','550dd423ad985a02b47d88b9640b588c'),('eznode:109','eznode',1,90,0,1,2,90,83,'Working-with-eZ-Publish-5-Introduction','86c71582f9a8b0b73a28b8561e1bedf2'),('eznode:117','eznode',1,101,0,0,2,100,83,'Working-with-eZ-Publish-5-Setup2','8b61a2080b074b02aba887e0816d0c7a'),('eznode:114','eznode',1,97,0,1,2,97,83,'working-with-ez-publish-5-templates','8ca9d0aa986d0351f0a4ecd545a4d9ac'),('eznode:111','eznode',1,92,0,1,2,92,83,'Working-with-eZ-Publish-5-Setup','b488ca1f31b0ad5ea952952c584deba5'),('eznode:109','eznode',1,95,0,0,2,90,83,'Working-with-eZ-Publish-5-Introduction2','d65e459c0f5cf7fc43a5df5f386d4014'),('eznode:110','eznode',1,96,0,0,2,91,83,'Working-with-eZ-Publish-5-Symfony2','e0ae50fdbf82423ec7787299f399a935'),('eznode:108','eznode',1,89,0,1,2,89,84,'ez5-tutorial','adbd8cfb0e2ef0e5e69ce04bfa666499'),('eznode:113','eznode',1,94,0,1,2,94,92,'Setup-Wizard-Screenshot','0f8219967499b236cdf05407a362d43c'),('eznode:118','eznode',1,102,0,1,2,102,92,'Demo-Site-Content-Screenshot','9844642b65dc06bce469e1f08d4ca7d0'),('eznode:112','eznode',1,93,0,1,2,93,92,'Default-eZ-5-File-Structure','e06198afaf344e704e5811042459ccd0'),('eznode:119','eznode',1,103,0,1,2,103,97,'Bundle-Contents','0e22a56fbad7e47f93b96cbab57bfa6a'),('eznode:116','eznode',1,99,0,1,2,99,97,'Bundle-Generation-Screenshot','24e6f44aaa659186ada65b8c7d0943f0'),('eznode:120','eznode',1,104,0,1,2,104,97,'Pagelayout-in-place','843b49f3cc54d14b126c4b0ebe11d29f'),('eznode:121','eznode',1,105,0,1,2,105,97,'Style-Basic-Page','ded9cbae44e55bcc22be4e4bcb2dbbf7'),('eznode:123','eznode',1,107,0,1,2,107,106,'Fullview-templates','aa9e357f0cb0c9d879a1cd48944cc1b4');
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml_incr`
--

LOCK TABLES `ezurlalias_ml_incr` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml_incr` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml_incr` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101),(102),(103),(104),(105),(106),(107);
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
INSERT INTO `ezuser` VALUES (10,'nospam@ez.no','anonymous','4e6f6184135228ccd45f8233d72a0363',2),(14,'info@example.com','admin','5cd11af011537e62d63b926012d24f6e',2);
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
INSERT INTO `ezuser_role` VALUES (12,25,'','',2),(11,28,'','',1),(42,31,'','',1),(13,32,'Subtree','/1/2/',3),(13,33,'Subtree','/1/43/',3),(11,34,'','',5),(99,35,'','',4),(99,36,'','',5),(99,37,'','',1),(13,38,'','',5);
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
INSERT INTO `ezuservisit` VALUES (1361545427,0,1361474763,11,14);
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

-- Dump completed on 2013-02-22  9:15:45