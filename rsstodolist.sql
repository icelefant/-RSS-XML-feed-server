-- Host: localhost    Database: rsstodolist
-- ------------------------------------------------------

CREATE DATABASE IF NOT EXISTS rsstodolist;
use rsstodolist;

DROP TABLE IF EXISTS `feeds_feedentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feeds_feedentry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `url` varchar(512) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `creation_date` datetime NOT NULL,
  `description` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11333 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


/* Migration from rsstodoliset-server */
ALTER TABLE feeds_feedentry
CHANGE COLUMN `creation_date` createdAt DATETIME;

ALTER TABLE feeds_feedentry
ADD COLUMN updatedAt DATETIME;

ALTER TABLE feeds_feedentry
MODIFY url varchar(512) NOT NULL;
