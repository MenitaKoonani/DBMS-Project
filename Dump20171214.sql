CREATE DATABASE  IF NOT EXISTS `videosharingdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `videosharingdb`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: localhost    Database: videosharingdb
-- ------------------------------------------------------
-- Server version	5.6.37

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
-- Table structure for table `accountsettings`
--

DROP TABLE IF EXISTS `accountsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountsettings` (
  `AccountSettingsID` smallint(6) NOT NULL,
  `Language` varchar(45) NOT NULL DEFAULT 'ENGLISH',
  `Location` varchar(45) NOT NULL DEFAULT 'USA',
  `isRestricted` tinyint(1) NOT NULL DEFAULT '1',
  `UserID` smallint(6) NOT NULL,
  PRIMARY KEY (`AccountSettingsID`),
  UNIQUE KEY `UserID_UNIQUE` (`UserID`),
  KEY `User_FK_idx` (`UserID`),
  CONSTRAINT `AccSettingsUser_FK` FOREIGN KEY (`UserID`) REFERENCES `member` (`MemberID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountsettings`
--

LOCK TABLES `accountsettings` WRITE;
/*!40000 ALTER TABLE `accountsettings` DISABLE KEYS */;
INSERT INTO `accountsettings` VALUES (10887,'nau','IDN',0,30059),(10888,'swe','IDN',0,21687),(10889,'mah','BGR',0,23821),(13164,'tib','MMR',0,19026),(13165,'may','DEU',0,23822),(13166,'bur','SUR',0,32335),(16719,'tel','YEM',0,26099),(16720,'kor','MUS',0,30063),(16721,'ven','AUT',0,23819),(16722,'ava','KOR',0,21689),(16723,'run','BEL',0,12778),(16724,'ava','BEL',1,19027),(16725,'guj','POL',0,23820),(16726,'xho','NPL',0,32333),(18997,'wel','PAK',1,10502),(18998,'san','CHE',0,26095),(18999,'nau','TUN',1,32337),(19000,'mon','CYP',1,12776),(19001,'ido','NPL',0,10501),(19002,'glg','MEX',0,19408),(19003,'hun','MEX',0,19411),(19004,'orm','LUX',1,10499),(20738,'twi','GEO',1,16750),(20739,'ben','EST',0,26096),(20740,'que','POL',0,32767),(20741,'tsn','USA',0,19410),(23015,'cha','MAR',1,21684),(23016,'aym','SUR',0,16751),(23017,'cha','TUN',1,21685),(23018,'mar','JOR',0,19028),(25713,'lao','VNM',1,30061),(25714,'snd','DNK',0,26100),(25715,'lav','ITA',0,30062),(25716,'arg','EST',0,23818),(25717,'kan','MNG',0,21686),(25718,'bre','ZAF',0,32332),(27990,'kaz','ZMB',0,23817),(27991,'cos','NGA',0,32334),(27992,'roh','THA',0,21688),(27993,'xho','SVN',0,16749),(27994,'ori','SAU',1,10500),(27995,'nep','KOR',0,19409),(28693,'glg','KOR',0,19407),(28694,'srp','BWA',0,30060),(28695,'may','MLT',0,26098),(28696,'bul','GMB',0,32336),(30967,'lug','ZWE',1,16748),(30968,'aze','NZL',1,12779),(30969,'orm','FJI',0,12777),(32767,'tib','JPN',0,26097);
/*!40000 ALTER TABLE `accountsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel`
--

DROP TABLE IF EXISTS `channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel` (
  `ChannelID` smallint(6) NOT NULL AUTO_INCREMENT,
  `ChannelName` varchar(45) NOT NULL,
  `UserID` smallint(6) NOT NULL,
  `CreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ChannelID`),
  UNIQUE KEY `ChannelName_UNIQUE` (`ChannelName`),
  KEY `UserID_FK_idx` (`UserID`),
  CONSTRAINT `ChannelUserID_FK` FOREIGN KEY (`UserID`) REFERENCES `member` (`MemberID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel`
--

LOCK TABLES `channel` WRITE;
/*!40000 ALTER TABLE `channel` DISABLE KEYS */;
INSERT INTO `channel` VALUES (11602,'Singstress',16750,'1970-01-01 00:17:25','1970-08-09 02:40:13'),(11603,'Game-Freak-Gaming',32332,'1970-01-01 00:00:55','1970-05-02 13:09:47'),(11604,'Game-Star',30061,'1970-01-01 02:44:00','1970-01-01 06:12:54'),(13879,'World-Of-Games',16748,'1982-04-25 11:34:19','1985-02-22 21:04:16'),(13880,'Shoot-Em-Up',10499,'1992-03-22 13:56:51','1992-03-28 03:47:18'),(13881,'Code-One',32332,'2010-01-13 05:38:55','2010-09-03 08:55:48'),(13882,'Singsational',10501,'1978-07-13 13:34:12','1980-11-01 16:59:58'),(14555,'Love-To-Sing',19409,'1993-11-15 15:07:11','1996-10-02 07:31:26'),(14556,'Vocal-Defiance',26095,'2006-05-09 05:51:57','2006-05-09 05:52:30'),(14557,'Gaming-Cause-Yolo',19410,'1981-02-11 17:48:27','1984-07-30 19:45:14'),(14558,'Singing-Lee',32332,'1970-01-01 17:25:02','1970-01-01 17:49:56'),(16832,'Citrus-Princess',21689,'1996-09-16 02:34:00','1996-09-25 16:14:28'),(16833,'Chronicle-Of-Games',16748,'2002-05-09 15:36:38','2003-02-18 17:43:08'),(16834,'Gaming-Machine',12778,'1994-11-17 04:55:07','1994-11-20 05:59:30'),(16835,'Freak-Gamer',10499,'2009-12-22 11:50:46','2010-04-24 03:56:55'),(20395,'Swag-Gaming',16748,'1995-04-21 11:17:09','1996-10-18 03:16:14'),(20396,'I\'m-Singing-It',26098,'1985-12-29 02:34:45','1989-01-15 09:18:15'),(20397,'Gaming-World',21687,'2012-09-21 18:10:42','2012-10-27 13:27:16'),(22673,'Singer-Girl',32332,'2012-09-23 10:44:33','2014-07-13 04:06:08'),(22674,'Sing-Along',12777,'1978-12-10 22:49:23','1979-03-26 15:20:22'),(25277,'Hotshot-Gaming',26097,'1970-01-01 00:01:07','1972-06-20 08:17:32'),(25278,'Singing-Sensation',30059,'2008-07-25 20:14:07','2008-07-27 02:13:11'),(25279,'Singing-For-You',19027,'1970-01-01 00:00:06','1973-07-26 23:29:47'),(25280,'Game-Guru',23818,'1994-03-20 07:37:57','1994-03-22 12:17:28'),(27555,'Music-4-Life',23819,'1987-05-26 07:06:17','1988-04-09 01:55:29'),(27556,'Let\'s-Play-Games',26099,'1970-01-01 00:02:22','1970-06-16 08:34:28'),(27557,'Psychotic-Gamer',26097,'1992-08-27 08:38:29','1993-06-26 06:30:09'),(29081,'Fame-Star',19407,'1970-01-01 00:00:21','1970-01-05 01:10:45'),(31355,'Mr-Gamer',12777,'1996-11-21 05:17:11','1996-11-21 05:18:37'),(32767,'Gaming-God',10499,'1976-05-14 21:05:05','1976-05-14 21:06:35');
/*!40000 ALTER TABLE `channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channelvideo`
--

DROP TABLE IF EXISTS `channelvideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channelvideo` (
  `ChannelVideoID` smallint(6) NOT NULL AUTO_INCREMENT,
  `VideoID` smallint(6) NOT NULL,
  `ChannelID` smallint(6) NOT NULL,
  PRIMARY KEY (`ChannelVideoID`),
  UNIQUE KEY `Channel_Video_Comp` (`ChannelID`,`VideoID`),
  KEY `ChannelVideo_Channel_FK_idx` (`ChannelID`),
  KEY `ChannelVideo_Video_FK_idx` (`VideoID`),
  CONSTRAINT `ChannelVideo_Channel_FK` FOREIGN KEY (`ChannelID`) REFERENCES `channel` (`ChannelID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ChannelVideo_Video_FK` FOREIGN KEY (`VideoID`) REFERENCES `video` (`VideoID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channelvideo`
--

LOCK TABLES `channelvideo` WRITE;
/*!40000 ALTER TABLE `channelvideo` DISABLE KEYS */;
INSERT INTO `channelvideo` VALUES (21926,18182,11602),(16876,32767,11602),(14597,23016,11603),(10911,30322,11603),(19643,23019,11604),(13185,32596,11604),(24594,30321,13879),(26869,32767,13879),(13184,18182,13880),(24593,32595,13880),(19646,18183,13881),(24591,23018,13881),(13186,24635,13882),(10907,26913,13882),(26868,20739,14555),(19647,23017,14555),(31849,26913,14556),(21923,32597,14557),(32767,12549,14558),(19649,23016,16832),(19645,32595,16832),(16875,15906,16833),(21920,23019,16833),(31851,24636,16834),(19648,20742,16835),(26870,24634,20395),(21924,30321,20395),(10908,15906,20396),(31850,20741,20396),(29577,10272,20397),(21925,20740,22673),(13187,23017,22673),(16874,30323,22674),(26872,10270,25277),(21922,20739,25277),(10909,23018,25278),(16873,26912,25278),(19644,24635,25279),(29574,32596,25279),(29576,18184,25280),(24592,15905,27555),(31848,26912,27555),(14596,18183,27556),(14595,20741,27556),(21921,12548,27557),(29575,10270,29081),(14598,30322,29081),(13188,10271,31355),(26871,15905,32767),(10910,20740,32767);
/*!40000 ALTER TABLE `channelvideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `CommentID` smallint(6) NOT NULL AUTO_INCREMENT,
  `Content` varchar(200) NOT NULL,
  `UserID` smallint(6) NOT NULL,
  `VideoID` smallint(6) NOT NULL,
  `isReply` tinyint(1) NOT NULL DEFAULT '0',
  `ParentCommentID` smallint(6) DEFAULT NULL,
  `CreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CommentID`),
  KEY `User_FK_idx` (`UserID`),
  KEY `Video_FK_idx` (`VideoID`),
  KEY `ParentComment_FK_idx` (`ParentCommentID`),
  CONSTRAINT `CommentUser_FK` FOREIGN KEY (`UserID`) REFERENCES `member` (`MemberID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CommentVideo_FK` FOREIGN KEY (`VideoID`) REFERENCES `video` (`VideoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ParentComment_FK` FOREIGN KEY (`ParentCommentID`) REFERENCES `comment` (`CommentID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (12020,'Surprisingly, the negative impact of the commitment to quality assurance ensures integrity of the conceptual design.  ',16749,12549,1,24589,'1989-12-16 03:44:24','1990-01-08 11:49:19'),(12021,'As for a description of the crucial development skills, it is clear that the unification of the market tendencies cannot rely only on an importance of the task analysis.  ',21685,15905,1,14299,'1970-01-01 02:46:32','1970-01-01 03:10:37'),(12022,'Besides, elements of the essential component commits resources to the irrelevance of application.  ',21688,24637,0,NULL,'2012-09-24 00:06:53','2012-09-24 00:07:05'),(12023,'To sort everything out, it is worth mentioning that the example of the optimization scenario commits resources to every contradiction between the critical thinking and the software functionality.  ',26095,20739,0,NULL,'1970-01-01 00:10:15','1973-08-12 11:32:57'),(12024,'To straighten it out, the structure of the basic feature will possibly result in any transparent or analytical approach.  ',23821,18185,0,NULL,'1999-07-25 17:11:53','2002-11-15 23:53:46'),(14297,'One should, nevertheless, consider that the accurate predictions of the systolic approach seems to be suitable for an importance of the market tendencies.  ',19028,26914,1,14747,'1979-05-17 14:57:50','1979-05-17 21:18:00'),(14298,'Such tendency may absolutely originate from the product design and development.',23819,15906,1,32203,'1970-01-01 00:15:51','1972-12-10 07:25:30'),(14299,'By all means, an basic component of the point of the product functionality underlines the limitations of the conceptual design.  ',21687,23020,1,32206,'1977-10-16 13:14:50','1979-02-22 11:09:36'),(14300,'It should rather be regarded as an integral part of the product functionality.',23817,10270,1,24587,'1970-01-01 00:00:03','1970-04-23 23:15:42'),(14301,'By all means, the specific action result and growth opportunities of it are quite high.',19408,26912,0,NULL,'1998-03-12 02:44:02','1998-03-12 02:45:25'),(14302,'For a number of reasons, a surprising flexibility in with help of the structure absorption benefits from permanent interrelation with an importance of the product functionality.  ',32334,24636,0,NULL,'1981-12-08 22:28:27','1985-11-04 05:24:17'),(14745,'It may reveal how the constructive criticism generally an initial attempt in development of the base configuration the proper subject of the operational system.',10501,18187,1,29933,'1995-02-23 05:02:02','1995-02-23 05:26:19'),(14746,'It should be borne in mind that components of the point of the referential arguments reinforces the argument for the ultimate advantage of compliant project over alternate practices.  ',30059,32767,1,14297,'1997-10-12 06:44:44','1997-10-12 06:45:14'),(14747,'The the condition of the task analysis gives less satisfactory results.',19409,32596,1,17023,'1971-09-08 11:50:34','1973-08-19 11:51:39'),(14748,'It may reveal how the design aspects highly the entire picture the predictable behavior.In any case, we can traditionally change the mechanism of the individual elements.',26095,20739,1,14298,'1979-01-24 18:42:18','1979-12-31 04:45:52'),(17022,'Eventually, a huge improvement of the mechanism becomes extremely important for what can be classified as the sources and influences of the market tendencies.  ',21685,15905,1,14299,'1970-01-06 18:23:01','1970-08-21 19:30:04'),(17023,'In a similar manner, concentration of details of the functional programming the potential role models.Thus a complete understanding is missing.',32767,24634,0,NULL,'1992-05-31 22:05:19','1994-10-06 07:49:05'),(17024,'It should rather be regarded as an integral part of the development process.',10501,18187,1,29933,'1993-05-28 11:02:18','1993-05-28 11:04:32'),(17025,'This can eventually cause certain issues.',26097,12548,1,26866,'1982-07-01 13:31:55','1985-05-27 02:38:26'),(19950,'As a matter of fact, components of with the exception of the system mechanism has a long history of the development process . The implementation is quite a even matter.  ',16748,30322,1,22227,'1970-01-01 01:06:49','1970-11-19 16:30:57'),(19951,'Let\'s not forget that a broad understanding of the skills leads us to a clear understanding of an initial attempt in development of the structure absorption.  ',12776,32595,1,12020,'1970-01-06 04:13:37','1970-08-08 03:12:50'),(19952,'Frankly speaking, with the exception of the deep analysis can hardly be compared with the positive influence of any market tendencies.  ',10499,18183,1,22228,'2006-07-06 04:06:59','2009-01-26 10:33:20'),(19953,'The valuable information turns it into something uniquely real.',19026,20741,0,NULL,'1970-01-01 01:35:13','1970-01-02 16:02:14'),(21212,'Always a saviour on a tired day.',30726,10887,0,NULL,'1996-12-10 06:33:04','2000-10-13 03:04:23'),(21213,'Wow! Loved her voice!',14708,10892,1,20550,'1970-01-01 00:00:05','1970-03-21 04:10:09'),(21214,'Youtube is the most popular video sharing webiste.',14708,10887,0,NULL,'1999-11-19 16:12:03','2000-11-11 23:35:49'),(22227,'For a number of reasons, the dominant cause of the internal policy should correlate with the system concepts.',19028,26914,1,14747,'1996-04-23 08:07:28','1997-11-25 05:39:44'),(22228,'Admitting that components of the capacity of the potentially developed techniques leads us to a clear understanding of the positive influence of any software engineering concepts and practices.  ',10499,18183,1,22228,'1971-11-09 19:21:05','1971-11-09 19:21:59'),(22229,'There is no doubt, that Forest Sadler is the firs person who formulated that concentration of the framework of the systolic approach reinforces the argument for the irrelevance of advancement.  ',19408,26912,1,19950,'1970-01-01 00:15:42','1970-05-24 12:08:33'),(22230,'To be quite frank, the structure of the internal resources can hardly be compared with the irrelevance of difference.  ',10501,18187,1,29933,'2004-08-08 14:26:43','2006-05-17 04:03:52'),(22231,'Moreover, study of plain practices presents a threat for the preliminary action plan.  ',21687,23020,1,32206,'1970-01-01 02:22:02','1970-01-01 02:22:05'),(24587,'It turns out that the accurate predictions of the formal review of opportunities leads us to a clear understanding of an initial attempt in development of the performance gaps.  ',16750,15909,0,NULL,'1970-01-01 01:34:15','1970-01-01 01:35:26'),(24588,'As a matter of fact the point of the arguments and claims reveals the patterns of the existing network. The program functionality turns it into something exceedingly real.  ',32332,30321,0,NULL,'2005-05-30 12:11:14','2005-05-30 13:03:59'),(24589,'To straighten it out, the understanding of the great significance of the bilateral act differently the questionable thesis the production cycle and the irrelevance of interface.  ',19027,10272,0,NULL,'1970-01-01 02:11:36','1973-06-16 04:23:01'),(24590,'In a word, the specific action result and growth opportunities of it are quite high.This seems to be a commonly obvious step towards the development methodology.',32767,24634,0,NULL,'2008-01-11 21:22:27','2008-01-11 21:25:37'),(26864,'From these facts, one may conclude that with help of the final phase is collectively considerable.',21685,15905,1,14299,'1970-01-01 18:10:58','1972-01-28 08:24:19'),(26865,'However, the advantage of the global management concepts needs to be processed together with the the critical thinking.',32333,23018,1,29929,'1973-02-25 13:25:11','1974-02-27 09:38:38'),(26866,'It is often said that any further consideration becomes a key factor of the preliminary action plan.  ',21688,24637,0,NULL,'1981-11-17 16:43:31','1981-11-17 17:44:09'),(26867,'Thus, the raw draft of the comprehensive project management ensures integrity of every contradiction between the corporate competitiveness and the hardware maintenance.  ',19026,20741,1,12022,'1970-01-01 16:17:37','1971-03-11 09:38:20'),(26868,'Doubtless, the pursuance of project architecture discards the principle of the share of corporate responsibilities or the existing network.  ',19027,10272,1,32205,'1982-11-09 07:34:48','1985-08-17 19:08:33'),(29929,'However, elements of the development sequence cannot be developed under such circumstances.The system is quite a provisional matter.',32337,18189,1,14748,'1970-01-01 00:37:42','1972-09-05 08:08:55'),(29930,'Everyone understands what it takes to the continuing support.In any case, we can absolutely change the mechanism of the feedback system.',32334,24636,1,14300,'2013-11-16 19:22:49','2015-08-03 17:51:33'),(29931,'We must bear in mind that the point of the strategic decision the independent knowledge.',30063,12551,0,NULL,'1994-02-02 19:05:25','1996-09-01 19:32:48'),(29932,'One cannot deny that the main source of the preliminary network design establishes sound conditions for the minor details of integration prospects.  ',10501,18187,1,29933,'1999-09-22 16:42:17','1999-09-22 19:30:16'),(29933,'In a similar manner, core concept of the big impact provides a solid basis for what can be classified as the overall scores.  ',32337,18189,0,NULL,'2002-06-02 16:45:47','2005-01-02 16:58:33'),(29934,'Keeping in mind that the participant evaluation sample reveals the patterns of the ultimate advantage of doubtful event over alternate practices.  ',21687,23020,1,32206,'1984-05-24 03:19:42','1984-05-24 06:42:52'),(32203,'Frankly speaking, the lack of knowledge of general features of the integrated collection of software engineering standards is getting more complicated against the backdrop of the entire picture.  ',19411,18188,1,24590,'2008-11-25 12:40:42','2010-01-30 12:30:57'),(32204,'In any case, we can absolutely change the mechanism of the influence on eventual productivity.',12778,18184,1,22229,'1983-07-09 15:49:20','1986-06-17 22:58:59'),(32205,'Surprisingly, the unification of the bilateral act has a long history of the key principles.  ',32333,23018,0,NULL,'1983-08-30 17:01:27','1983-10-11 17:25:50'),(32206,'In any case, we can basically change the mechanism of the productivity boost.This could absolutely be a result of a draft analysis and prior decisions and early design solutions.',30063,12551,1,19953,'1970-01-01 00:37:42','1971-04-27 05:01:10'),(32207,'Up to a certain time, a huge improvement of the mechanism represents opportunities for an initial attempt in development of the network development.  ',19410,20743,1,22230,'1971-08-10 06:59:36','1973-10-03 11:37:23'),(32208,'Under the assumption that the exceptional results of the continuing support seems to be suitable for the positive influence of any task analysis.  ',32332,30321,0,NULL,'1996-05-12 16:36:08','1997-07-25 20:50:29'),(32767,'To be quite frank, the evaluation of reliability activities for any of the strategic planning can partly be used for the ultimate advantage of provisional perception over alternate practices.  ',32332,30321,1,26864,'1970-01-01 04:51:04','1971-02-27 17:16:50');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `videosharingdb`.`Comment_BEFORE_INSERT` 
BEFORE INSERT ON `comment` FOR EACH ROW
BEGIN
	if ((new.isreply) = 1 and isnull(new.parentcommentid)) or ((new.isreply) = 0 and (new.parentcommentid is not null))
    then
		signal sqlstate '45000' 
        set message_text = 'Inconsistent data! A reply need to have a valid parent comment id';
		-- set new.parentcommentid := NULL;
		-- set new.isreply := 0;
    end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `videosharingdb`.`Comment_AFTER_INSERT`
AFTER INSERT ON `videosharingdb`.`comment`
FOR EACH ROW
BEGIN
	IF (SELECT COUNT(*) FROM VideoSpecCount WHERE VideoID = NEW.VideoID) = 1
	THEN
		UPDATE VideoSpecCount 
		SET VideoCommentCount = (VideoCommentCount + 1) 
		WHERE VideoSpecCount.VideoID = NEW.VideoID;
	ELSE
		INSERT INTO VideoSpecCount (VideoCommentCount, VideoID) 
        VALUES(1, NEW.VideoID);
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `download`
--

DROP TABLE IF EXISTS `download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download` (
  `DownloadID` smallint(6) NOT NULL AUTO_INCREMENT,
  `UserID` smallint(6) NOT NULL,
  `VideoID` smallint(6) NOT NULL,
  `CreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`DownloadID`),
  KEY `VideoID_FK_idx` (`VideoID`),
  KEY `UserID_FK_idx` (`UserID`),
  CONSTRAINT `DownloadUserID_FK` FOREIGN KEY (`UserID`) REFERENCES `member` (`MemberID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `DownloadVideoID_FK` FOREIGN KEY (`VideoID`) REFERENCES `video` (`VideoID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download`
--

LOCK TABLES `download` WRITE;
/*!40000 ALTER TABLE `download` DISABLE KEYS */;
INSERT INTO `download` VALUES (11111,12610,30321,'1970-01-01 01:32:26','1971-10-18 14:02:42'),(11342,12778,20742,'1994-02-12 13:40:49','1997-12-28 05:20:48'),(11343,10501,20739,'1989-08-07 19:54:25','1989-08-08 05:42:07'),(11344,32767,24637,'1984-03-14 19:33:08','1986-10-27 11:01:44'),(11345,21684,15909,'2010-04-19 03:33:00','2010-04-19 08:15:02'),(11346,23820,26915,'1970-01-01 00:00:47','1970-01-15 01:41:14'),(12222,14712,30321,'1982-03-02 09:48:53','1983-09-16 20:27:23'),(13620,19026,18184,'1970-01-01 00:14:50','1970-01-01 00:16:21'),(13621,32767,23018,'1973-07-08 19:38:39','1974-04-28 01:07:32'),(13622,32336,15909,'1993-03-09 08:22:35','1995-09-06 23:29:12'),(13623,19409,23020,'2013-12-10 07:34:56','2016-03-14 11:27:17'),(13624,23822,15911,'2005-09-05 17:54:38','2007-01-05 17:56:01'),(16006,12778,18182,'1970-01-01 00:00:02','1971-06-25 13:41:10'),(16007,26096,15908,'1990-08-02 03:44:31','1990-08-02 03:47:30'),(16008,12779,20742,'2016-07-21 12:36:17','2020-04-04 11:43:03'),(16009,26100,18185,'1970-01-01 08:10:18','1973-09-04 20:20:49'),(16010,30059,24635,'1970-01-01 00:47:52','1972-04-19 12:13:55'),(16011,19026,20743,'2006-11-19 03:10:57','2006-11-19 03:13:09'),(18284,26095,10270,'1970-01-01 01:40:44','1972-10-20 07:22:45'),(18285,19409,18188,'2014-01-22 11:53:16','2015-08-23 13:32:59'),(18286,32333,30321,'1970-01-01 21:43:23','1972-01-23 07:16:28'),(18287,26097,30323,'2011-04-25 19:52:29','2011-07-29 16:45:58'),(18288,32767,26913,'1995-10-07 12:27:00','1995-10-07 19:01:02'),(18289,21689,18185,'1970-01-01 00:12:31','1970-01-01 00:27:07'),(19803,32336,12551,'1997-03-14 10:30:51','1997-05-17 02:35:59'),(19804,21684,15907,'1999-05-31 16:52:32','1999-06-15 23:33:13'),(19805,10501,10271,'1990-05-09 18:52:53','1990-05-10 09:47:52'),(19806,19027,23020,'2011-04-27 03:28:18','2012-12-29 00:22:35'),(22080,32767,18185,'1970-01-01 20:07:17','1970-12-08 06:10:51'),(22081,30062,32597,'1970-01-01 05:02:50','1970-08-16 10:53:16'),(22082,23818,26913,'2010-10-24 21:07:05','2012-09-01 15:55:36'),(22083,23821,12548,'1986-07-27 02:18:57','1988-11-27 01:33:49'),(22084,19410,12551,'1986-01-06 20:01:19','1987-08-16 17:04:20'),(24219,21689,15908,'1970-01-01 00:00:51','1971-10-23 04:02:46'),(24220,19408,24638,'1994-09-21 11:29:52','1994-10-08 23:56:51'),(24221,21686,32596,'1971-01-10 18:06:39','1971-10-31 03:28:21'),(24222,19027,12550,'1971-04-05 03:20:09','1974-02-18 20:12:28'),(24223,10499,10271,'1980-07-06 04:18:34','1980-07-06 06:52:04'),(26496,23818,20742,'1970-01-02 02:33:52','1973-09-01 06:55:36'),(26497,10500,23016,'1970-01-01 00:01:13','1970-03-26 19:56:22'),(26498,16751,18185,'2000-10-31 11:42:26','2000-12-18 08:11:25'),(26499,30061,26913,'1970-01-01 00:00:02','1973-03-25 19:56:25'),(26500,30059,23017,'1970-01-01 00:00:40','1970-01-01 00:31:01'),(28365,21688,20740,'1970-01-01 00:00:35','1970-09-24 23:12:24'),(28366,19409,15905,'1970-01-01 00:00:08','1973-04-24 01:58:56'),(28367,26098,30322,'1997-03-10 23:14:19','1997-03-10 23:15:21'),(28368,19027,10273,'2011-02-16 08:56:32','2012-12-16 08:21:45'),(30639,32337,18183,'1991-09-04 17:44:04','1993-01-02 11:43:36'),(30640,12778,20740,'1970-01-01 03:12:12','1970-03-04 06:52:03'),(30641,23818,10274,'1970-09-12 01:51:20','1973-09-25 14:34:10'),(30642,10502,10272,'1970-01-04 02:51:50','1970-01-04 02:52:15'),(32767,19028,18184,'1970-01-01 00:00:22','1972-09-30 16:55:46');
/*!40000 ALTER TABLE `download` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `videosharingdb`.`Download_AFTER_INSERT`
AFTER INSERT ON `videosharingdb`.`download`
FOR EACH ROW
BEGIN
	IF (SELECT COUNT(*) FROM VideoSpecCount WHERE VideoID = NEW. VideoID) = 1
	THEN
		UPDATE VideoSpecCount 
		SET VideoDownloadCount = (VideoDownloadCount + 1) 
		WHERE VideoSpecCount. VideoID = NEW. VideoID;
	ELSE
		INSERT INTO VideoSpecCount(VideoDownloadCount, VideoID) VALUES(1,  NEW.VideoID);
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `entitylike`
--

DROP TABLE IF EXISTS `entitylike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entitylike` (
  `EntityLikeID` smallint(6) NOT NULL AUTO_INCREMENT,
  `isDislike` tinyint(1) NOT NULL DEFAULT '0',
  `UserID` smallint(6) NOT NULL,
  `CreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VideoID` smallint(6) DEFAULT NULL,
  `CommentID` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`EntityLikeID`),
  KEY `UserID_FK_idx` (`UserID`),
  KEY `VideoID_FK_idx` (`VideoID`),
  KEY `Comment_FK_idx` (`CommentID`),
  CONSTRAINT `LikeComment_FK` FOREIGN KEY (`CommentID`) REFERENCES `comment` (`CommentID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `LikeUser_FK` FOREIGN KEY (`UserID`) REFERENCES `member` (`MemberID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `LikeVideo_FK` FOREIGN KEY (`VideoID`) REFERENCES `video` (`VideoID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entitylike`
--

LOCK TABLES `entitylike` WRITE;
/*!40000 ALTER TABLE `entitylike` DISABLE KEYS */;
INSERT INTO `entitylike` VALUES (10740,0,23818,'1999-08-19 22:03:53','2002-11-25 03:40:21',23017,12021),(10741,1,21686,'2007-10-06 15:43:51','2007-10-06 15:44:43',23019,24588),(10742,0,21686,'1989-01-24 18:30:43','1989-01-26 10:17:51',23019,24588),(10743,0,21684,'2011-05-16 05:45:29','2015-03-14 17:01:51',18182,17022),(10744,0,19026,'1970-01-09 07:53:10','1970-01-09 08:17:41',20741,12022),(13017,0,19410,'2000-07-07 07:23:35','2000-07-07 19:14:00',20743,22230),(13018,0,32335,'1970-01-01 00:10:51','1970-09-30 15:36:45',15907,19952),(13019,0,26100,'2009-01-11 01:00:55','2010-03-09 09:33:51',10274,32208),(13020,0,30059,'2016-04-06 05:15:36','2017-01-28 23:46:34',32767,14297),(13021,0,19409,'1970-01-01 23:29:56','1971-02-07 12:06:11',32596,17023),(13022,1,32334,'2017-06-12 19:38:26','2018-08-27 13:35:43',24636,14300),(16016,0,19411,'1970-01-01 00:12:27','1971-11-01 03:30:30',18188,24590),(16017,0,16749,'1970-12-27 09:43:20','1971-05-31 16:48:57',12549,24589),(16018,0,30062,'1970-01-01 02:07:28','1973-11-15 21:40:17',15908,26867),(16019,0,21688,'1970-01-01 00:00:06','1970-01-01 08:08:57',24637,12024),(18293,1,32334,'1980-06-08 12:44:47','1984-04-08 13:23:33',24636,14300),(18294,0,16749,'1970-01-09 13:59:56','1970-01-10 00:02:00',12549,24589),(18295,0,26097,'1970-01-01 00:09:56','1970-01-01 00:10:53',12548,26866),(18296,1,16749,'1970-01-01 01:29:15','1970-10-25 22:23:09',12549,24589),(18297,0,21688,'1970-01-01 00:00:30','1973-02-15 14:38:19',24637,12024),(19467,0,26100,'2006-07-12 05:44:21','2006-07-16 09:38:28',10274,32208),(19468,0,16750,'1970-01-01 00:02:02','1970-03-09 05:10:36',15909,14301),(19469,0,32335,'2006-05-25 16:01:55','2006-05-25 16:44:57',15907,19952),(21745,0,10502,'1970-01-01 00:04:23','1970-09-09 17:33:08',24638,22231),(21746,1,32337,'1970-01-01 00:03:24','1972-04-28 18:47:40',18189,14748),(21747,0,12776,'2009-05-05 06:33:47','2009-05-05 06:34:31',32595,12020),(24879,0,19407,'1970-01-01 15:59:10','1971-09-19 05:54:20',23016,14745),(24880,0,23817,'1977-06-11 11:54:11','1979-05-01 06:05:35',10270,24587),(24881,1,23821,'2010-03-12 01:37:13','2010-08-31 08:32:32',18185,29932),(24882,0,16749,'1989-03-29 13:50:33','1989-04-08 05:39:36',12549,24589),(24883,0,10502,'2004-08-29 16:53:55','2004-08-29 16:55:55',24638,22231),(24884,0,12776,'1980-01-04 00:04:42','1980-01-04 00:05:42',32595,12020),(27156,0,12779,'1976-05-08 17:41:54','1976-05-08 17:42:23',15910,32207),(27157,0,30063,'1970-01-01 00:00:01','1970-01-01 18:58:50',12551,19953),(27158,0,32334,'1997-04-20 05:53:03','1999-07-26 22:10:25',24636,14300),(27159,0,12776,'1970-01-01 00:14:43','1973-06-03 08:29:04',32595,12020),(27160,0,30062,'1970-01-01 16:40:56','1974-01-11 15:38:47',15908,26867),(27161,0,32334,'1996-11-19 19:00:11','1999-06-21 02:51:10',24636,14300),(27162,0,26099,'1970-01-01 00:01:01','1970-02-19 18:15:49',18186,12023),(29679,0,19409,'1998-07-08 05:20:31','2000-06-18 17:55:28',32596,17023),(29680,0,23818,'2000-07-25 07:29:59','2003-07-24 21:25:57',23017,12021),(29681,0,21687,'1970-01-08 14:46:41','1971-12-02 00:36:25',23020,32206),(29682,1,19409,'1994-10-16 17:53:50','1994-12-17 07:02:02',32596,17023),(29683,0,12776,'1970-01-01 00:00:09','1971-04-30 00:16:09',32595,12020),(30000,1,27922,'1989-05-10 11:21:23','1989-05-13 07:45:10',30321,30386),(30001,0,14711,'1974-10-01 18:48:58','1974-10-06 05:10:19',30321,22825),(30002,1,27922,'1977-06-24 16:19:28','1979-12-12 15:35:45',30321,12322),(30003,0,30723,'1990-11-09 06:40:30','1990-11-09 06:42:02',30321,10044),(30004,1,30726,'1970-01-01 00:02:12','1970-01-01 00:11:49',30321,30388),(31953,1,12776,'1970-01-01 00:05:18','1973-07-14 21:42:02',32595,12020),(31954,1,21685,'2011-12-21 14:52:54','2011-12-21 15:07:53',15905,14299),(31955,0,30061,'1970-01-01 03:38:58','1970-01-01 03:39:05',20742,29931),(31956,0,26096,'1972-08-13 20:25:05','1974-07-24 07:58:24',20740,26865),(31957,0,19027,'1992-07-30 12:08:00','1992-08-02 05:40:57',10272,32205),(32767,0,16748,'1973-01-13 05:52:21','1975-09-23 06:47:54',30322,22227);
/*!40000 ALTER TABLE `entitylike` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `videosharingdb`.`EntityLike_AFTER_INSERT`
AFTER INSERT ON `videosharingdb`.`entitylike`
FOR EACH ROW
BEGIN
	IF (SELECT COUNT(*) FROM VideoSpecCount WHERE VideoID = NEW.VideoID) = 1
    THEN
		IF (NEW.isDislike = 0)
        THEN
			UPDATE VideoSpecCount 
			SET videolikecount = (videolikecount + 1) 
			WHERE VideoSpecCount.videoid = new.VideoID;
		ELSE
			UPDATE VideoSpecCount 
			SET VideoDislikeCount  = (VideoDislikeCount + 1) 
			WHERE VideoSpecCount.videoid = new.VideoID;
        END IF;
    ELSE
		IF(NEW.isDislike = 0)
        THEN
			INSERT INTO VideoSpecCount(VideoLikeCount, VideoID) 
            VALUES (1, NEW.VideoID);
		ELSE
			INSERT INTO VideoSpecCount(VideoDislikeCount , VideoID) 
            VALUES (1, NEW.VideoID);
        END IF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `MemberID` smallint(6) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `EmailID` varchar(255) NOT NULL,
  `BirthDate` date DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `CreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `MemberAuthID` smallint(6) NOT NULL,
  PRIMARY KEY (`MemberID`),
  UNIQUE KEY `MemberAuthID_UNIQUE` (`MemberAuthID`),
  KEY `MemberAuth_FK_idx` (`MemberAuthID`),
  CONSTRAINT `MemberAuth_FK` FOREIGN KEY (`MemberAuthID`) REFERENCES `memberauth` (`MemberAuthID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (10499,'Coleman','Dias','Dias.Coleman@gmail.us','1986-04-08','F','(821) 906-1034','NOR','1990-04-15 12:19:28','1991-01-23 00:41:43',20376),(10500,'Abby','Roman','Roman.Abby@hotmail.us','1989-06-26','M','(711) 628-0368','LTU','1993-05-09 22:58:11','1994-01-15 00:02:01',13828),(10501,'Zane','Varner','Varner.Zane@yahoo.com','1988-01-18','M','(109) 077-6833','SVK','1992-01-24 11:58:46','1992-07-19 04:41:50',25562),(10502,'Noemi','Boyer','Boyer.Noemi@hotmail.com','1988-11-10','M','(365) 154-3461','JPN','1992-05-07 05:04:04','1993-02-23 15:18:46',22652),(12776,'Juliette','Adam','Adam.Juliette@hotmail.edu','1987-01-02','F','(315) 189-2779','ECU','1990-11-04 11:35:15','1991-07-03 07:07:14',27841),(12777,'Cleo','Oh','Oh.Cleo@yahoo.in','1995-08-11','M','(270) 697-8570','MRT','1999-05-22 15:34:32','2000-02-18 15:10:09',16605),(12778,'Marlon','Ohara','Ohara.Marlon@gmail.in','2000-12-03','M','(589) 822-8754','PRY','2004-07-27 22:11:51','2005-02-19 03:29:55',25560),(12779,'Tonita','Geary','Geary.Tonita@hotmail.us','1987-04-23','M','(449) 962-3855','NZL','1990-10-06 12:49:00','1991-04-12 04:52:00',29443),(16748,'Charity','Ogle','Ogle.Charity@hotmail.edu','1991-10-29','M','(248) 380-0998','HRV','1995-07-13 03:48:47','1996-03-11 00:48:16',25564),(16749,'Anderson','Shinn','Shinn.Anderson@hotmail.com','1987-02-10','M','(899) 313-1361','NPL','1990-11-15 03:15:49','1991-06-10 22:55:05',27843),(16750,'Isaac','Larkin','Larkin.Isaac@yahoo.in','1947-04-10','M','(635) 916-6121','MWI','1950-12-16 07:04:33','1951-06-21 04:32:36',27839),(16751,'Clelia','Dickens','Dickens.Clelia@hotmail.com','1993-05-26','M','(671) 729-8435','QAT','1997-05-02 13:15:33','1997-10-01 18:39:31',18880),(19026,'Rhett','Rollins','Rollins.Rhett@hotmail.us','2001-12-10','F','(299) 223-5122','CAN','2005-05-11 02:26:01','2005-12-04 02:19:46',18882),(19027,'Dorothy','Romano','Romano.Dorothy@hotmail.in','1972-09-03','M','(536) 709-4408','POL','1976-05-11 11:37:12','1976-12-04 06:56:25',16604),(19028,'Cassie','Hensley','Hensley.Cassie@gmail.us','2004-04-28','F','(102) 772-0433','MEX','2008-02-20 00:13:58','2008-09-10 06:59:53',22649),(19407,'Cathi','Boyce','Boyce.Cathi@gmail.in','1990-06-13','M','(194) 047-3682','PRT','1993-12-23 13:56:11','1994-06-12 14:54:18',27842),(19408,'Leo','Large','Large.Leo@yahoo.edu','1966-03-29','F','(435) 539-5815','ARG','1969-12-09 09:32:08','1970-07-20 03:52:18',22648),(19409,'Zackary','Shifflett','Shifflett.Zackary@yahoo.in','1971-07-26','M','(312) 447-1805','BLZ','1975-03-04 22:15:36','1975-08-24 16:40:20',18879),(19410,'Lou','Shipley','Shipley.Lou@yahoo.edu','2002-04-19','F','(723) 183-8436','GMB','2006-03-14 21:20:39','2006-11-27 16:40:03',22653),(19411,'Augustina','Henson','Henson.Augustina@hotmail.us','1994-10-08','M','(589) 269-3565','ZMB','1998-05-22 08:31:54','1998-10-30 14:23:50',27840),(21684,'Kristel','Gavin','Gavin.Kristel@hotmail.edu','1948-01-06','F','(838) 239-8824','CAN','1951-05-21 23:34:21','1952-01-07 20:47:21',22654),(21685,'Devon','Vann','Vann.Devon@yahoo.edu','1990-12-05','F','(158) 100-6866','MAR','1994-07-20 01:12:42','1995-03-19 15:03:50',16602),(21686,'Troy','Gay','Gay.Troy@yahoo.org','1994-02-20','F','(688) 560-2098','SAU','1997-06-23 16:51:29','1998-02-11 05:39:45',22651),(21687,'Jonie','Boyd','Boyd.Jonie@yahoo.org','1998-12-01','F','(547) 568-7391','MWI','2002-12-04 23:04:35','2003-05-14 16:46:43',27837),(21688,'Herminia','Larose','Larose.Herminia@hotmail.com','1998-04-19','F','(630) 897-1103','MAR','2001-12-22 15:44:41','2002-05-29 21:45:13',20371),(21689,'Manuel','Her','Her.Manuel@hotmail.org','1991-01-13','M','(663) 758-4388','THA','1994-07-13 04:52:48','1995-01-20 16:29:59',18881),(23817,'Morgan','Roller','Roller.Morgan@gmail.us','1996-12-09','F','(309) 165-0782','PAK','2000-06-09 07:35:25','2001-01-10 09:30:01',25565),(23818,'Stewart','Lara','Lara.Stewart@gmail.us','1948-07-30','M','(665) 625-0974','SVK','1952-04-29 09:13:46','1952-12-03 14:43:09',13829),(23819,'Lorriane','Vanover','Vanover.Lorriane@yahoo.us','1994-05-01','M','(706) 351-6118','NAM','1998-04-23 02:38:41','1998-10-18 17:31:22',11550),(23820,'Leda','Dick','Dick.Leda@yahoo.com','1959-07-11','F','(594) 834-9231','DNK','1963-07-22 18:54:54','1964-01-09 09:26:02',31718),(23821,'Wallace','Henry','Henry.Wallace@yahoo.us','1966-05-14','M','(122) 777-5183','SVK','1970-01-24 04:39:05','1970-08-18 01:30:16',22650),(23822,'Devin','Gee','Gee.Devin@hotmail.com','1994-01-31','M','(931) 132-7025','PRT','1998-02-08 19:03:21','1998-10-13 14:19:53',20373),(26095,'Noah','Oglesby','Oglesby.Noah@hotmail.us','1990-12-04','M','(436) 013-4812','JPN','1994-05-23 03:31:41','1995-01-01 18:25:38',11551),(26096,'Alec','Henning','Henning.Alec@yahoo.in','1995-08-01','M','(608) 453-0840','ECU','1999-06-08 14:32:21','1999-12-27 09:25:32',25566),(26097,'Shantell','Gaylord','Gaylord.Shantell@hotmail.com','1987-01-28','F','(700) 601-7300','PAN','1990-11-25 07:32:53','1991-04-26 12:15:40',27838),(26098,'Garfield','Shin','Shin.Garfield@gmail.com','1977-06-16','F','(872) 009-2669','UKR','1981-04-29 05:34:57','1981-12-28 01:58:15',25559),(26099,'Wilmer','Adams','Adams.Wilmer@hotmail.us','1987-04-25','M','(538) 475-7312','ITA','1991-01-08 01:31:46','1991-06-17 21:44:54',31717),(26100,'Lala','Varney','Varney.Lala@gmail.com','1997-07-22','M','(471) 116-5550','NOR','2001-02-21 04:28:10','2001-12-17 19:42:25',16603),(30059,'Towanda','Box','Box.Towanda@gmail.org','1999-02-22','M','(247) 692-0370','LUX','2002-09-28 09:42:17','2003-06-11 10:10:28',20375),(30060,'Dante','Vanwinkle','Vanwinkle.Dante@gmail.in','2002-09-22','M','(756) 799-4547','UKR','2006-06-20 10:13:32','2006-11-28 10:19:36',29444),(30061,'Chester','Varela','Varela.Chester@yahoo.us','1957-08-19','M','(131) 829-4417','HRV','1960-12-07 22:46:04','1961-06-20 17:43:52',25563),(30062,'Ellis','Vargas','Vargas.Ellis@yahoo.in','1990-10-01','M','(196) 295-2580','PHL','1994-05-25 09:23:55','1995-01-16 02:08:44',29445),(30063,'Lenard','Larry','Larry.Lenard@hotmail.com','1981-08-25','M','(673) 976-6573','PHL','1985-06-12 03:53:14','1985-12-06 15:22:57',11549),(32332,'Carli','Sherwood','Sherwood.Carli@yahoo.org','1994-04-28','F','(950) 880-6097','MAR','1997-12-02 22:30:13','1998-08-19 01:21:18',25561),(32333,'Clarence','Shields','Shields.Clarence@gmail.edu','1947-01-05','F','(367) 893-5415','ZMB','1951-02-03 19:55:33','1951-09-22 01:39:15',32767),(32334,'Leandro','Diaz','Diaz.Leandro@gmail.com','1975-09-19','M','(157) 443-9849','TUR','1979-05-31 16:51:19','1979-11-17 08:47:04',31716),(32335,'Tuan','Adame','Adame.Tuan@gmail.us','1988-11-26','M','(679) 977-9382','EST','1992-08-12 07:00:30','1993-03-04 02:34:18',31719),(32336,'Holly','Shipman','Shipman.Holly@gmail.edu','1988-04-01','F','(164) 688-0619','CAN','1991-09-30 05:59:34','1992-05-18 21:31:00',20374),(32337,'Franklin','Larsen','Larsen.Franklin@hotmail.in','1988-02-01','M','(761) 863-3490','LTU','1992-03-04 22:08:39','1992-08-27 17:08:50',13827),(32767,'Lynn','Adair','Adair.Lynn@gmail.org','1994-06-18','M','(593) 417-3938','ECU','1998-06-08 08:41:39','1998-11-22 21:59:43',20372);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberauth`
--

DROP TABLE IF EXISTS `memberauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memberauth` (
  `MemberAuthID` smallint(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`MemberAuthID`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=32767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberauth`
--

LOCK TABLES `memberauth` WRITE;
/*!40000 ALTER TABLE `memberauth` DISABLE KEYS */;
INSERT INTO `memberauth` VALUES (11549,'Candis481','5N7X73'),(11550,'Hoyle89','FB2510'),(11551,'Hortencia4','212E2I'),(13827,'Stella1988','T4IN87'),(13828,'Greta3','79997V'),(13829,'Franchesca49','K8GV56'),(16602,'Aline6','6VJP9V'),(16603,'Schuster1982','C2692C'),(16604,'Agripina2013','3XE279'),(16605,'Oliphant2024','5Q9JL1'),(18879,'Blackmon6','1W43JZ'),(18880,'Donnell1','3204X7'),(18881,'Leatrice977','D3A8AU'),(18882,'Carey1987','9UNLGG'),(20371,'Smalls6','JJQAS4'),(20372,'Keva2008','2PAU1D'),(20373,'Albert1983','T6XH97'),(20374,'Malvina212','BX1IF0'),(20375,'Teresita1963','Z96FE0'),(20376,'Timmy919','Z6B2S2'),(22648,'Naranjo923','46HC8L'),(22649,'Brothers877','BLKWD1'),(22650,'Jina93','G8QSSF'),(22651,'Mcgill4','H8MGB5'),(22652,'Jarred2014','O7OB42'),(22653,'Felicitas76','J7G0NI'),(22654,'Bonner2010','P81N9I'),(25559,'Rosalina2026','N866MX'),(25560,'Bach2007','F68V4N'),(25561,'Louie1997','6QF11N'),(25562,'Giovanna2017','8Z1N1B'),(25563,'Parry36','9H3MUO'),(25564,'Steffen1970','BN621Q'),(25565,'Nava2000','WP0OVU'),(25566,'Crystle78','0R34SK'),(27837,'Bliss36','769525'),(27838,'Hung2019','HM92Z6'),(27839,'Abraham199','E09696'),(27840,'Priscilla1969','34250V'),(27841,'Borders546','46WYNM'),(27842,'Telma6','S6E8PA'),(27843,'Seema1981','UVIRTX'),(29443,'Delaine548','1V1TQ2'),(29444,'Omar12','7D7K91'),(29445,'Sheldon849','22F295'),(31716,'Carmine1986','74LF4E'),(31717,'Abraham2021','SQ9846'),(31718,'Bumgarner59','E4ELSW'),(31719,'Melton1976','HWU5ZL'),(32767,'Caroll2015','XO6W07');
/*!40000 ALTER TABLE `memberauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `NotificationID` smallint(6) NOT NULL AUTO_INCREMENT,
  `NotifiedToUserID` smallint(6) NOT NULL,
  `NotifiedByUserID` smallint(6) NOT NULL,
  `CreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`NotificationID`),
  KEY `NotifierUserID_FK_idx` (`NotifiedByUserID`),
  KEY `NotifiedToUserID_FK_idx` (`NotifiedToUserID`),
  CONSTRAINT `NotifiedToUserID_FK` FOREIGN KEY (`NotifiedToUserID`) REFERENCES `member` (`MemberID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `NotifierUserID_FK` FOREIGN KEY (`NotifiedByUserID`) REFERENCES `member` (`MemberID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (10274,16749,16749,'1979-02-04 06:33:12','1982-07-30 11:38:35',1),(10275,19408,19408,'1971-12-31 04:02:29','1972-08-18 05:23:23',1),(10276,16751,16751,'1970-01-01 01:19:09','1972-06-08 20:50:45',0),(10277,30062,30062,'1970-01-01 02:06:37','1971-05-22 08:05:58',1),(10278,26096,26096,'1978-09-09 17:23:37','1982-05-11 23:31:33',0),(12552,21686,21686,'2006-05-17 12:30:39','2006-12-21 04:24:33',0),(12553,21684,21684,'2006-06-22 16:00:26','2008-07-29 10:17:30',0),(12554,12779,12779,'1982-09-25 17:08:58','1985-01-17 18:01:41',0),(12555,23817,23817,'2011-01-28 03:29:33','2011-03-12 12:20:59',1),(12556,23822,23822,'1976-03-19 13:47:13','1977-03-08 02:23:00',1),(16801,32333,32333,'1986-08-12 10:04:45','1986-09-01 18:54:32',0),(16802,21684,21684,'2012-07-11 21:52:13','2012-11-10 07:31:40',0),(19079,30061,30061,'1971-12-28 16:35:17','1972-04-03 02:31:56',0),(19080,32333,32333,'2003-01-23 17:44:23','2004-03-01 22:56:04',0),(20774,26099,26099,'1970-01-01 00:00:28','1972-08-23 21:11:20',0),(20775,10500,10500,'1977-12-12 01:58:35','1978-01-12 12:00:55',0),(20776,21686,21686,'1978-05-23 04:41:03','1980-08-19 01:19:17',1),(20777,26098,26098,'1990-03-01 03:39:57','1991-02-06 20:26:30',0),(20778,21685,21685,'1976-07-27 05:56:54','1977-03-27 12:49:29',1),(23052,26099,26099,'2010-04-09 10:28:30','2010-10-28 19:48:06',1),(23053,26100,26100,'1970-01-01 00:34:51','1972-02-01 16:06:37',0),(23054,19026,19026,'1993-01-07 13:07:20','1994-03-31 18:01:16',1),(23055,19028,19028,'1976-01-10 21:06:28','1976-04-26 05:21:32',1),(23056,19410,19410,'1970-01-01 00:10:43','1972-11-03 16:28:05',1),(24008,26097,26097,'1970-01-01 00:03:37','1973-11-01 09:26:33',0),(24009,23821,23821,'2003-09-10 08:55:52','2004-09-09 16:58:20',1),(24010,32767,32767,'1970-01-01 00:00:08','1972-11-19 19:51:39',0),(24011,32332,32332,'1979-01-22 00:23:14','1981-06-15 22:36:42',1),(24012,30062,30062,'1983-08-03 20:43:01','1987-01-02 10:10:57',0),(26286,21685,21685,'2009-10-08 05:36:46','2012-07-25 00:46:49',1),(26287,21685,21685,'1982-12-30 05:47:40','1984-05-26 16:52:22',0),(26288,16751,16751,'1984-01-29 06:01:15','1984-03-08 14:42:19',0),(26289,21689,21689,'1970-01-01 01:25:13','1971-12-15 14:58:43',0),(26290,26096,26096,'1975-04-30 10:13:30','1977-07-06 11:28:55',1),(29663,10499,10499,'1974-11-21 14:28:08','1976-04-14 03:08:48',1),(29664,12777,12777,'2000-11-22 11:37:14','2002-11-11 04:39:05',1),(29665,30060,30060,'1987-11-17 23:02:19','1991-05-04 03:44:47',0),(29666,23819,23819,'1970-01-01 00:25:02','1972-03-19 08:25:44',0),(29667,16751,16751,'1970-01-01 01:19:39','1970-11-26 04:33:14',0),(29668,10499,10499,'1970-01-01 00:01:38','1973-03-25 09:58:21',0),(29669,30062,30062,'1970-03-14 07:42:33','1972-10-13 22:27:58',1),(31936,19411,19411,'1997-05-19 06:23:09','1997-06-18 08:47:44',1),(31937,19027,19027,'1971-09-18 12:24:35','1973-11-11 05:42:00',1),(31938,16749,16749,'1970-01-01 02:43:13','1972-01-30 22:26:11',1),(31939,23822,23822,'2013-06-07 10:24:00','2017-03-14 00:00:52',1),(31940,30063,30063,'1970-01-01 00:00:04','1970-02-20 06:49:24',0),(31941,32334,32334,'2012-01-02 09:30:12','2014-01-10 08:46:29',1),(31942,19410,19410,'1977-04-10 08:33:14','1980-06-28 03:37:59',0),(31943,23820,23820,'1970-01-01 03:12:39','1971-08-03 07:45:03',1),(32767,12778,12778,'1970-01-01 00:00:32','1972-03-15 23:00:58',1);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offlinevideo`
--

DROP TABLE IF EXISTS `offlinevideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offlinevideo` (
  `OfflineVideoID` smallint(6) NOT NULL AUTO_INCREMENT,
  `VideoID` smallint(6) NOT NULL,
  `UserID` smallint(6) NOT NULL,
  PRIMARY KEY (`OfflineVideoID`),
  UNIQUE KEY `Video_User_FK` (`UserID`,`VideoID`),
  KEY `Video_FK_idx` (`VideoID`),
  KEY `User_FK_idx` (`UserID`),
  CONSTRAINT `OfflineUser_FK` FOREIGN KEY (`UserID`) REFERENCES `member` (`MemberID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `OfflineVideo_FK` FOREIGN KEY (`VideoID`) REFERENCES `video` (`VideoID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offlinevideo`
--

LOCK TABLES `offlinevideo` WRITE;
/*!40000 ALTER TABLE `offlinevideo` DISABLE KEYS */;
INSERT INTO `offlinevideo` VALUES (28112,18183,10499),(25835,30323,10500),(28460,18187,10501),(32767,24638,10502),(28461,32595,12776),(28459,26913,12777),(30733,18184,12778),(30736,15910,12779),(22251,30322,16748),(22248,12549,16749),(15508,15909,16750),(30732,10273,16751),(12156,20741,19026),(17786,10272,19027),(30735,26914,19028),(12157,23016,19407),(15507,26912,19408),(19971,32596,19409),(14435,20743,19410),(15509,18188,19411),(17783,18182,21684),(25836,15905,21685),(12155,23019,21686),(28462,23020,21687),(28458,24637,21688),(30730,26915,21689),(12158,10270,23817),(30734,23017,23818),(19973,15906,23819),(28113,32597,23820),(15510,18185,23821),(15506,15911,23822),(28457,20739,26095),(14434,20740,26096),(30731,12548,26097),(17787,10271,26098),(15511,18186,26099),(25834,10274,26100),(22252,32767,30059),(22249,24635,30060),(17788,20742,30061),(25837,15908,30062),(17784,12551,30063),(28115,30321,32332),(14433,23018,32333),(19972,24636,32334),(22250,15907,32335),(19974,12550,32336),(17785,18189,32337),(28114,24634,32767);
/*!40000 ALTER TABLE `offlinevideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlist` (
  `PlaylistID` smallint(6) NOT NULL AUTO_INCREMENT,
  `PlaylistName` varchar(45) NOT NULL,
  `UserID` smallint(6) NOT NULL,
  PRIMARY KEY (`PlaylistID`),
  KEY `PlaylistUser_FK_idx` (`UserID`),
  CONSTRAINT `PlaylistUser_FK` FOREIGN KEY (`UserID`) REFERENCES `member` (`MemberID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (11163,'BrightTurquoise',10499),(11164,'AmericanRose',26098),(11165,'DarkOrange',10500),(11166,'VividCerise',26100),(11167,'PaleGold',30062),(13441,'MeatBrown',21685),(13442,'CaribbeanGreen',19407),(13443,'RoseVale',26097),(13444,'DarkCandyAppleRed',19407),(16718,'NorthTexasGreen',32337),(16719,'Gamboge',19027),(16720,'RosePink',21689),(16721,'Daffodil',30060),(16722,'Gray',16748),(16723,'RifleGreen',26097),(18995,'DarkTurquoise',10499),(18996,'NorthTexasGreen',19409),(18997,'HanPurple',32337),(18998,'PurplePizzazz',10501),(18999,'LemonYellow',19028),(19000,'Liver',16748),(19927,'LightKhaki',30059),(19928,'VioletBlue',26099),(19929,'Chartreuse',12777),(19930,'OceanBoatBlue',12776),(19931,'SlateBlue',32333),(22205,'BrilliantRose',21685),(22206,'FireEngineRed',26095),(22207,'TrueBlue',32337),(22208,'PaleLavender',26097),(25249,'BrightLavender',21688),(25250,'PrussianBlue',23818),(25251,'MediumCandyAppleRed',23820),(25252,'YellowOrange',21685),(27526,'HarvardCrimson',26098),(27527,'NavyBlue',16751),(27528,'DollarBill',23822),(27529,'BrightGreen',32337),(29261,'SpringGreen',23820),(29262,'Peach',23818),(29263,'Jasper',21689),(29264,'CerisePink',32333),(29265,'HunterGreen',32337),(31534,'OliveGreen',21685),(31535,'BrightPink',32336),(31536,'PearlAqua',26098),(31537,'DarkChestnut',19027),(31538,'DeepSkyBlue',10499),(31539,'FrenchBeige',21686),(32767,'Bistre',21688);
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlistvideo`
--

DROP TABLE IF EXISTS `playlistvideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlistvideo` (
  `PlaylistVideoID` smallint(6) NOT NULL AUTO_INCREMENT,
  `VideoID` smallint(6) NOT NULL,
  `Priority` tinyint(4) NOT NULL,
  `PlaylistID` smallint(6) NOT NULL,
  PRIMARY KEY (`PlaylistVideoID`),
  UNIQUE KEY `Playlist_Video_Comp` (`VideoID`,`PlaylistID`),
  KEY `PlayVideo_FK_idx` (`VideoID`),
  KEY `Playlist_FK_idx` (`PlaylistID`),
  CONSTRAINT `PlayVideo_FK` FOREIGN KEY (`VideoID`) REFERENCES `video` (`VideoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Playlist_FK` FOREIGN KEY (`PlaylistID`) REFERENCES `playlist` (`PlaylistID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlistvideo`
--

LOCK TABLES `playlistvideo` WRITE;
/*!40000 ALTER TABLE `playlistvideo` DISABLE KEYS */;
INSERT INTO `playlistvideo` VALUES (12045,24635,0,16719),(12046,18184,0,25251),(12047,26914,0,18999),(12048,32767,0,27526),(14323,10273,0,19000),(14324,20741,0,13443),(14325,20743,0,31536),(15915,10274,0,11167),(15916,18183,0,19929),(15917,15905,0,32767),(15918,20742,0,19930),(18192,24638,0,31539),(18193,24637,0,19931),(18194,10271,0,29261),(18195,15910,0,31537),(18196,18186,0,13444),(19335,20739,0,16718),(19336,15911,0,31538),(19337,32595,0,22205),(19338,32597,0,27528),(19339,23016,0,25249),(19340,24634,0,19927),(19341,15908,0,29262),(21612,26915,0,16723),(21613,12549,0,16720),(21614,12551,0,29265),(21615,30323,0,18997),(21616,24636,0,25250),(21617,18185,0,18998),(21618,23020,0,27529),(21619,12550,0,16722),(23879,23018,0,11165),(23880,15909,0,29263),(23881,18187,0,16721),(23882,18188,0,29264),(23883,30322,0,19928),(23884,10270,0,22206),(26156,12548,0,22207),(26157,18189,0,25252),(26158,26913,0,27527),(26159,20740,0,11164),(26160,15906,0,11166),(26161,30321,0,18995),(29792,26912,0,13442),(29793,23017,0,13441),(29794,15907,0,31535),(32065,23019,0,18996),(32066,32596,0,31534),(32067,10272,0,22208),(32767,18182,0,11163);
/*!40000 ALTER TABLE `playlistvideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `searchhistory`
--

DROP TABLE IF EXISTS `searchhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `searchhistory` (
  `SearchHistoryID` smallint(6) NOT NULL AUTO_INCREMENT,
  `SearchContent` varchar(200) NOT NULL,
  `CreateTime` datetime NOT NULL,
  `UserID` smallint(6) NOT NULL,
  PRIMARY KEY (`SearchHistoryID`),
  KEY `User_FK_idx` (`UserID`),
  CONSTRAINT `SearchHistoryUser_FK` FOREIGN KEY (`UserID`) REFERENCES `member` (`MemberID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searchhistory`
--

LOCK TABLES `searchhistory` WRITE;
/*!40000 ALTER TABLE `searchhistory` DISABLE KEYS */;
INSERT INTO `searchhistory` VALUES (11249,'Ault','1994-02-10 21:26:46',23817),(11250,'Kalona','1990-11-19 01:32:26',23821),(11251,'Wentworth','1970-01-01 00:00:39',19026),(13527,'Grand Lake Stream','1979-08-23 11:48:51',19026),(13528,'Bonners Ferry','1970-01-01 00:41:02',26098),(13529,'Knightdale','2008-03-24 18:36:56',16749),(14869,'Grimes','1978-02-28 01:56:03',19408),(14870,'Gayville','1997-12-24 08:00:51',23820),(14871,'Kulm','2005-09-30 16:49:51',32335),(14872,'Somonauk','1974-10-27 14:40:21',16749),(14873,'Bozrah','2013-01-17 14:45:39',32336),(17147,'Frenchtown','1988-07-11 00:46:55',19411),(17148,'Bartelso','1970-01-01 10:23:53',21685),(17149,'Leopold','2017-07-09 16:50:43',10499),(17150,'Pacific Palisades','1980-07-22 11:53:28',26097),(20651,'Trimble','1972-10-13 12:10:22',16751),(20652,'Mc Arthur','1990-10-25 10:53:18',10499),(20653,'Perkinston','2005-10-29 21:30:33',12777),(20654,'Millersville','1996-10-09 12:50:00',32333),(20655,'South Padre Island','1970-01-01 00:10:48',19408),(20656,'Athens','1970-01-08 02:00:54',26097),(22928,'Pottersville','2003-01-09 02:03:52',10501),(22929,'Lake Dallas','1990-04-07 23:23:57',21685),(22930,'St Bonifacius','1970-01-02 20:01:08',19027),(22931,'Rockmart','1984-04-28 08:11:10',30061),(22932,'Mantua','1978-08-16 13:56:21',10501),(22933,'Forrest City','1971-01-25 16:37:57',23819),(23829,'Tabor','1970-01-07 07:51:53',19028),(23830,'Ossining','1986-02-25 16:14:34',32336),(23831,'Sutherland','1995-04-15 18:45:03',30063),(23832,'Pleasantville','1970-01-01 01:13:24',30060),(23833,'Robbinston','1985-11-19 13:26:06',26100),(23834,'Alexandria','2004-11-05 05:16:41',12777),(26106,'Warrenville','1995-05-01 01:34:29',30061),(26107,'Nespelem','2005-12-26 10:29:13',19409),(26108,'Glenshaw','1982-12-11 19:20:12',26098),(26109,'Hicksville','1970-01-01 00:10:27',19408),(26110,'Bronaugh','1970-01-01 15:14:28',21686),(26111,'Mc Connellsville','1970-01-01 06:17:16',12777),(26112,'Southold','1970-01-01 00:00:06',19407),(29506,'Benicia','1978-12-13 23:14:28',19407),(29507,'Edgartown','2004-08-28 06:33:16',21689),(29508,'Ancramdale','1970-01-01 04:55:11',19411),(29509,'Coon Valley','2011-07-30 22:36:16',19408),(29510,'Griffith','2009-03-30 01:25:57',23818),(31780,'Reinholds','1970-01-03 19:10:21',23821),(31781,'Charleston','2014-12-24 14:37:07',26099),(31782,'Craryville','1977-09-03 16:18:39',21688),(31783,'Crystal River','1994-06-22 20:39:36',12777),(32767,'Colstrip','1995-02-28 01:58:11',30060);
/*!40000 ALTER TABLE `searchhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriber`
--

DROP TABLE IF EXISTS `subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriber` (
  `SubscriberID` smallint(6) NOT NULL AUTO_INCREMENT,
  `UserID` smallint(6) NOT NULL,
  `ChannelID` smallint(6) NOT NULL,
  `CreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`SubscriberID`),
  UNIQUE KEY `User_Channel_comp` (`ChannelID`,`UserID`),
  KEY `Channel_FK_idx` (`ChannelID`),
  KEY `User_FK_idx` (`UserID`),
  CONSTRAINT `SubscriberChannel_FK` FOREIGN KEY (`ChannelID`) REFERENCES `channel` (`ChannelID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SubscriberUser_FK` FOREIGN KEY (`UserID`) REFERENCES `member` (`MemberID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriber`
--

LOCK TABLES `subscriber` WRITE;
/*!40000 ALTER TABLE `subscriber` DISABLE KEYS */;
INSERT INTO `subscriber` VALUES (10515,19409,25279,'1981-08-18 23:06:30','1982-08-28 08:41:04'),(10516,30060,13882,'2015-08-24 07:12:13','2017-03-13 19:11:57'),(10517,23818,22673,'2017-04-06 02:49:31','2018-01-27 15:45:19'),(10518,23819,16833,'1970-08-07 16:10:20','1973-08-20 06:40:32'),(10519,16748,29081,'1970-01-01 00:15:03','1973-04-29 09:03:48'),(12793,19408,27555,'1970-01-04 22:34:02','1970-09-15 12:13:20'),(12794,32333,25278,'1970-01-01 00:01:04','1971-07-20 21:36:58'),(12795,19407,11603,'1977-09-25 19:26:28','1981-04-06 16:42:51'),(12796,32767,20395,'1970-01-07 07:33:26','1972-06-27 08:25:35'),(12797,19407,16832,'1970-01-01 00:00:06','1971-12-03 03:44:06'),(15738,32333,13881,'1997-03-06 07:35:58','1999-09-15 17:50:30'),(15739,32334,16834,'1982-08-25 13:22:59','1983-12-16 11:37:04'),(15740,26098,31355,'1978-09-20 14:13:37','1982-04-17 21:02:00'),(15741,16748,11603,'1970-01-01 16:49:58','1971-04-14 07:48:04'),(18015,21686,16833,'1970-01-01 00:00:06','1972-09-05 21:46:10'),(18016,26096,32767,'1991-11-28 11:15:25','1994-04-14 09:31:57'),(18017,32332,20395,'1987-02-28 09:18:05','1987-11-19 01:55:52'),(18018,21684,11602,'1970-01-01 00:11:43','1973-09-07 03:50:03'),(19482,21686,11604,'1996-11-21 22:01:43','1997-05-15 05:11:21'),(19483,23819,20396,'2003-06-02 06:00:29','2006-10-12 01:43:26'),(19484,23817,29081,'1970-01-01 02:42:38','1972-05-28 08:15:09'),(19485,12776,16832,'2006-02-01 08:41:26','2007-04-18 19:53:37'),(19486,23820,14557,'1975-01-10 17:55:06','1976-05-06 21:55:01'),(19487,21685,27555,'1970-01-05 18:09:04','1970-09-18 17:24:06'),(21760,16749,14558,'2008-03-24 21:54:20','2009-10-04 09:47:44'),(21761,19408,25278,'1993-06-28 12:53:08','1994-02-02 05:54:21'),(21762,12777,14556,'1996-10-03 20:02:58','2000-02-02 04:17:34'),(21763,10500,22674,'1970-01-01 00:24:54','1971-09-29 11:38:19'),(21764,10499,13881,'1992-08-01 10:27:51','1993-01-19 13:59:16'),(21765,21685,32767,'2001-10-04 23:27:00','2004-05-21 01:53:01'),(24038,19026,27556,'1970-01-01 00:01:35','1970-12-26 19:08:22'),(24039,26097,27557,'1970-01-01 01:48:14','1970-07-26 18:45:15'),(24040,12778,25280,'1980-10-21 03:13:37','1982-05-10 20:01:26'),(24041,12776,13880,'1974-10-14 22:06:23','1976-04-17 18:24:16'),(26316,19409,11604,'1971-05-11 18:37:47','1973-08-27 04:03:14'),(26317,10499,27556,'1970-01-01 12:54:02','1972-06-02 06:50:04'),(26318,26095,25277,'2006-05-23 10:10:34','2007-08-22 22:40:46'),(26319,23817,25277,'1970-10-16 21:11:32','1971-10-31 09:18:27'),(28918,12777,13882,'1970-01-01 00:11:49','1974-01-23 21:29:26'),(28919,19026,20396,'1970-12-06 22:14:32','1972-03-23 07:14:40'),(28920,23818,14555,'1994-06-10 07:37:26','1997-06-06 14:28:46'),(28921,26096,22673,'1996-02-28 09:09:41','1996-12-16 00:14:42'),(28922,32332,13879,'1992-02-01 10:16:46','1994-06-30 06:13:07'),(31191,21684,13880,'1999-07-30 13:15:29','2000-02-24 22:22:24'),(31192,30060,25279,'1973-08-31 10:41:09','1975-05-12 10:39:15'),(31193,19027,20397,'1981-03-04 11:16:59','1984-05-07 22:10:05'),(31194,30059,13879,'1979-04-25 11:13:47','1982-09-20 10:41:18'),(31195,30061,16835,'1971-11-22 04:27:51','1973-10-02 11:26:37'),(31196,30059,11602,'1970-01-12 00:32:00','1971-03-03 21:21:19'),(32767,26095,14555,'2001-02-24 22:38:11','2001-11-16 16:51:42');
/*!40000 ALTER TABLE `subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thumbnailimage`
--

DROP TABLE IF EXISTS `thumbnailimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thumbnailimage` (
  `ThumbnailImageID` smallint(6) NOT NULL AUTO_INCREMENT,
  `ThumbnailUrl` varchar(45) DEFAULT NULL,
  `ThumbnailName` varchar(45) DEFAULT NULL,
  `CreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ThumbnailImageID`)
) ENGINE=InnoDB AUTO_INCREMENT=32767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thumbnailimage`
--

LOCK TABLES `thumbnailimage` WRITE;
/*!40000 ALTER TABLE `thumbnailimage` DISABLE KEYS */;
INSERT INTO `thumbnailimage` VALUES (11393,'B9K547B4','NP8PG617','1970-01-01 19:51:13','1970-10-26 06:21:57'),(11394,'08HWF31V','8FYGX706','1983-03-15 19:20:17','1984-09-16 02:23:00'),(11395,'9985AL38','CX942H1C','1996-03-23 04:12:04','1998-02-19 06:22:33'),(11396,'V1D97FD2','P3YI73D3','1986-04-01 12:15:15','1989-09-17 07:20:49'),(11397,'4O2BXE85','T6JHH5EL','1976-07-18 12:47:30','1978-12-10 18:34:39'),(11398,'55J487JS','N37HT2F2','1970-01-01 01:02:08','1970-06-30 09:46:26'),(13671,'0N68LS0Q','7S5H6633','1985-04-18 09:35:27','1985-08-15 19:17:27'),(13672,'82A065V2','HM76I4DB','2013-08-08 01:42:25','2015-01-05 19:16:44'),(13673,'5576VKOY','J1R25840','1970-01-01 10:13:07','1972-10-03 23:10:34'),(13674,'WU5SJZ39','A76LR0H3','1973-07-21 13:31:38','1975-06-22 18:44:39'),(13675,'T12Z8CFO','BF1WVWU5','2011-11-24 20:53:57','2014-07-30 02:26:29'),(14869,'VM2QDBNU','6FL05WJ0','2007-09-24 20:49:41','2011-10-19 05:32:46'),(14870,'58338XGQ','AXLQ6P51','1970-01-01 16:42:20','1970-08-15 01:00:38'),(14871,'29C63V27','4536PI0X','1986-10-18 07:24:23','1989-06-05 04:07:04'),(14872,'OM3LSM45','5ZG59ZOE','1970-01-01 00:12:23','1971-05-12 15:16:11'),(17147,'PM77138K','24C1AJX6','2013-06-24 08:43:13','2013-10-26 02:37:41'),(17148,'J82H1U77','89C8MJFX','1970-01-01 00:00:08','1972-11-05 04:34:58'),(17149,'92LEE7D6','29Q622I5','1970-01-01 00:21:36','1970-09-05 20:49:40'),(19724,'327A3356','9B8HF7P3','1970-01-01 02:29:04','1971-06-23 01:35:11'),(19725,'482I30EV','Y728K90Q','1970-01-01 02:43:54','1971-06-23 18:30:47'),(19726,'B5TD7HG8','75V658NI','1985-08-13 04:32:44','1986-04-17 01:01:29'),(19727,'94YCYZKN','LA05671Q','1973-05-02 23:58:33','1975-04-25 05:33:06'),(22001,'P3MZ02C8','WA83Y222','2006-03-03 22:38:37','2006-07-04 07:11:32'),(22002,'63CJVSU0','O5LP30F3','2009-11-17 14:26:39','2011-04-29 12:58:25'),(22003,'P0P44Y88','TYZ7TUN1','1970-01-03 09:29:57','1972-05-27 15:17:06'),(22004,'MA78ERRH','Q9717OX0','1984-10-13 04:08:00','1985-10-21 11:45:40'),(22005,'N8OT05L4','2N13JM8O','1970-01-01 00:01:19','1970-05-13 10:20:42'),(23912,'J5RP647L','OMCH40N5','1973-03-17 17:42:02','1973-10-13 02:32:01'),(23913,'2ZF1N003','62H5057P','1970-01-02 03:39:26','1970-12-21 20:17:06'),(23914,'8A561HGQ','R241RO72','1998-02-17 09:54:22','2001-11-27 20:01:09'),(23915,'3F488BEX','9G48D0F5','1993-11-28 21:54:19','1995-10-31 16:58:25'),(23916,'89709RP3','U7QS4P4P','2014-05-20 16:36:01','2017-12-03 02:25:44'),(23917,'937OP3N6','S3TSI9WA','1974-06-01 04:38:43','1977-02-28 02:04:28'),(26190,'Z8366NN7','ZER008C9','1970-01-01 00:02:33','1971-04-21 14:44:49'),(26191,'66H95X6I','EC3559XH','1976-07-19 00:55:18','1977-02-17 01:16:59'),(26192,'4L7V0R17','GV9LIL6Z','2017-07-26 14:21:57','2021-08-21 12:05:27'),(26193,'E62BE0C9','27A6NT3Z','1970-01-01 03:14:50','1971-01-15 05:35:28'),(26194,'883CF7V2','833E49UR','2000-07-19 16:46:02','2004-07-28 18:41:35'),(29445,'OB1NA62M','895B6982','1999-01-20 17:38:42','1999-10-09 07:58:38'),(29446,'05ZK3G4G','DFZ1JIKX','1970-01-01 01:10:03','1972-11-21 05:13:11'),(29447,'0383B012','7Q6J2XK9','1971-09-14 12:33:04','1973-05-01 19:09:47'),(29448,'I682K7R6','Z31B665S','1970-01-01 00:00:06','1973-06-13 18:12:26'),(29449,'8R92M608','E2V1L670','1970-01-01 00:00:09','1972-08-22 12:14:31'),(29450,'70KC3A2F','090A6R9X','1994-08-06 09:29:21','1998-03-03 03:15:41'),(31719,'2FD53R9Z','F3AVT173','1987-02-11 20:55:47','1990-07-27 00:29:40'),(31720,'LTUK63B8','762U4V9W','2001-02-09 11:55:14','2003-07-08 03:10:29'),(31721,'328IZ2YS','ALH8EYO3','1993-07-19 21:03:21','1996-04-04 17:51:43'),(31722,'V16XSEZ7','2M40SY37','2008-04-08 02:06:03','2010-08-10 07:31:40'),(31723,'ON1H994U','WL302433','2015-10-14 21:00:19','2019-10-15 01:34:39'),(32767,'JH531FQ1','3Y8F2KZ0','1988-06-13 14:56:37','1988-11-24 07:31:50');
/*!40000 ALTER TABLE `thumbnailimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `VideoID` smallint(6) NOT NULL AUTO_INCREMENT,
  `VideoTitle` varchar(100) NOT NULL,
  `VideoDesc` varchar(200) DEFAULT NULL,
  `VideoUrl` varchar(45) NOT NULL,
  `VideoSize` int(11) NOT NULL,
  `FileType` varchar(45) NOT NULL,
  `CreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PostedByUserID` smallint(6) NOT NULL,
  `ThumbnailID` smallint(6) DEFAULT NULL,
  `VideoScope` varchar(45) NOT NULL DEFAULT 'PUBLIC',
  `VideoPath` varchar(100) NOT NULL,
  PRIMARY KEY (`VideoID`),
  UNIQUE KEY `VideoUrl_UNIQUE` (`VideoUrl`),
  KEY `User_Video_FK_idx` (`PostedByUserID`),
  KEY `ThumbnailID_FK_idx` (`ThumbnailID`),
  CONSTRAINT `ThumbnailID_FK` FOREIGN KEY (`ThumbnailID`) REFERENCES `thumbnailimage` (`ThumbnailImageID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `User_Video_FK` FOREIGN KEY (`PostedByUserID`) REFERENCES `member` (`MemberID`) ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (10270,'Rio Rancho','On the one hand it can be said that the dominant cause of the big impact should correlate with the ultimate advantage of revolutionary broadband over alternate practices.  ','Woddow10270',1267811870,'cproj','1977-05-23 15:21:14','1978-05-07 22:13:06',10501,11397,'GROUP','https://metumu.erasteaand.za/eaalea/ing/ome/orithenin.txt'),(10271,'Burlingame','Let\'s consider, that an basic component of impact of the sufficient amount focuses our attention on the proper difference of the technical terms.  ','Sinn10271',1468564983,'xaml','1970-01-01 00:00:09','1971-01-17 20:44:52',19408,13672,'PRIVATE','https://hikowe.andested.jp/terteoul/esthis/orhistion.xls'),(10272,'Tryon','Remembering that violations of the essence what is conventionally known as flexible production planning general tendency of any static or efficient approach.  ','Horperath10272',45760270,'ppt','1993-01-22 23:06:41','1994-07-11 06:41:06',23822,13675,'PRIVATE','https://mole.waingwitst.org/ing/ed/wayoune/hadwavehe.txt'),(10273,'Tunbridge','In any case, we can rigorously change the mechanism of the more system concepts of the program functionality.','Tutow10273',1374355589,'php','1989-09-30 16:03:40','1992-11-03 12:27:15',16751,31723,'HIDDEN','http://washenionent.cy/ndherhad/neingme/eshaal/ereleherwit.pdf'),(10274,'Rustburg','It is obvious, that the total volume of the basic feature discards the principle of the key principles.This could primarily be a result of a consequential risks.','Cochem10274',307609699,'htm','1999-02-05 00:50:09','2000-01-24 17:27:49',26096,11394,'PUBLIC','http://erartonot.br/hataren/but/then/reseyouit.doc'),(12548,'Wittenberg','As a matter of fact, a surprising flexibility in in terms of the functional programming manages to obtain the effective mechanism. The system is quite a equal matter.  ','Faßberg12548',14152435,'doc','1972-12-23 23:49:22','1975-05-26 09:51:09',30062,14871,'GROUP','http://aromehinhen.se/are/ithoulith/henallal/altioseour.doc'),(12549,'Crescent City','That being said, study of original practices seems to be suitable for the critical thinking. The estimation is quite a great matter.  ','Leest12549',332314624,'xlsx','1995-08-13 11:26:39','1999-02-01 22:03:55',12776,19724,'PRIVATE','http://eraed.ua/was/tio/thntwit/hisndithve.doc'),(12550,'Albia','In any case, we can immediately change the mechanism of the bilateral act.The real reason of the base configuration rapidly the entity integrity.','Wilthen12550',1001110877,'cpp','2011-06-16 16:54:58','2015-06-25 18:50:31',21685,19725,'HIDDEN','https://ouledere.fr/antha/at/alenioner.doc'),(12551,'Elko','Remembering that there is a direct relation between the product design and development and segments of the goals and objectives.','Ribnitz-Damgarten12551',1730477502,'gif','2001-03-20 20:33:55','2004-03-16 22:11:26',12776,19724,'PUBLIC','https://lethi.dk/oulour/seent.xls'),(15905,'High Bridge','Resulting from review or analysis of threats and opportunities, we can presume that the emergency planning cannot be developed under such circumstances.','Drebach15905',534498,'mkv','2000-09-02 18:44:49','2003-01-26 23:38:41',21686,29446,'PUBLIC','https://sinuje.buttehere.za/witngat/thabuted/ndhaton/anouterth.txt'),(15906,'Ruffin','To be honest, aspects of the benefits of data integrity can be regarded as prudently insignificant.','Neudörfchen15906',1894362433,'ppt','1988-05-28 15:28:23','1989-11-10 07:31:07',26097,23914,'HIDDEN','http://arbutreal.nl/hadme/alyouhen/itnotarewit.xls'),(15907,'Cal Nev Ari','As for the condition of the structured technology analysis, it is clear that the core principles stimulates development of an importance of the source of permanent growth.  ','Ebersroda15907',583332964,'dbf','1970-01-01 01:33:53','1970-12-02 15:49:21',19407,31719,'HIDDEN','https://neandonent.cy/hieraith/asionhin/shobutne/tewitalhad.txt'),(15908,'Plato','Conversely, the accurate predictions of the system concepts would facilitate the development of the continuing support.','Deibow15908',823293164,'png','1996-09-04 01:46:47','1997-03-07 02:02:46',32767,29445,'HIDDEN','https://notithihat.gr/te/oulhat/tioentare/ionre.doc'),(15909,'Gower','The public in general tend to believe that in the context of arguments and claims must take into account the possibility of the minor details of comprehensive project management.  ','Ravensberg15909',1086819885,'pdf','2001-03-09 04:27:57','2001-07-26 05:09:57',19411,29450,'PRIVATE','https://funiva.uldenseyou.at/forthiis/hatiothe/ouranyoust.pdf'),(15910,'Sun Prairie','Such tendency may heavily originate from the resource management.','Nußloch15910',1324362143,'cs','1973-02-01 07:24:04','1974-08-04 21:46:01',16749,13673,'GROUP','http://tedan.hu/thaverst/orwaver/ndonted/uldhenbuthin.txt'),(15911,'West Branch','The main reason of the linguistic approach is to facilitate the significant improvement.The advancement is quite a extra matter.','Kandern15911',1860523497,'flv','1993-09-14 16:06:49','1995-12-23 05:39:12',30063,23916,'HIDDEN','https://tijaru.iswitng.uk/nehenve/hihisea/omemesest.txt'),(18182,'Woodsboro','Remembering that components of elements of the structure absorption becomes a key factor of the general features and possibilities of the global management concepts.  ','Niederdorla18182',1887804164,'pdf','1989-06-17 17:01:45','1990-12-28 16:29:24',19028,31722,'GROUP','http://lehenedyou.br/eaoust/ereuldme/allrehat/verrefor.xls'),(18183,'Port Hadlock','To put it mildly, dimensions of the linguistic approach is typically considerable.','Kötschau18183',240078379,'cs','2016-10-29 14:18:29','2017-04-24 07:31:06',32767,29445,'PUBLIC','https://nakite.edhiseveat.tw/ereitthi/omeinasle.xls'),(18184,'Sewanee','In a word, after the completion of the deep analysis may share attitudes on the proper connection of the storage area.  ','Neckartenzlingen18184',155260576,'dbf','1980-04-04 18:05:48','1981-08-02 17:53:46',30062,14871,'PUBLIC','http://omeinhiea.de/onleare/tha/mees.xls'),(18185,'Dardanelle','First and foremost, the patterns of the deep analysis is of a great interest.The evolution is quite a initial matter.','Tivoli18185',1531131997,'gif','1975-04-30 14:02:25','1979-04-06 07:39:49',16749,13673,'PUBLIC','http://alltiowitth.za/seerawas/hatletertio.pdf'),(18186,'Shoshone','As a resultant implication, the pursuance of data management and data architecture framework this preliminary network design.','Süpplingenburg18186',773692328,'doc','1982-03-29 21:16:56','1985-10-17 07:59:53',19027,19727,'GROUP','https://veqibo.hereaasion.de/metoor/oul/estioted/eabutesst.xls'),(18187,'King','As concerns any part of the set of related commands and controls, it can be quite risky.','Schürensöhlen18187',1810595639,'cproj','1995-01-19 14:42:13','1998-09-22 08:18:23',30063,23916,'PUBLIC','https://ententithter.biz/herithat/toha/ing/tealtha.xls'),(18188,'Donaldsonville','Looking it another way, there is a direct relation between the grand strategy and the structure of the formal review of opportunities.','Mechelsdorf18188',2038542952,'gif','1970-01-01 02:34:25','1973-01-23 07:42:23',10500,17148,'PUBLIC','https://jiqone.thishosthe.hu/altedver/uld/es/hinomeerwa.xls'),(18189,'Broadway','Without a doubt, Kendall Curtin was right in saying that, support of the internal policy should focus on any similar or explicit approach.  ','Winnert18189',1250541758,'xml','1991-08-22 04:26:22','1992-10-26 10:54:14',32333,23912,'PRIVATE','http://atesuldhad.no/hat/alhadan/ome/andat.xls'),(20739,'Kitty Hawk','So far so good, but the development of the system mechanism is closely considerable.','Kevelaer20739',1758278153,'cpp','1970-01-01 07:23:08','1973-07-05 18:37:47',21684,22001,'PUBLIC','http://bazuwi.onngnt.nl/eaevend/ouenher/oulthareion.pdf'),(20740,'Englewood','However, a huge improvement of the consequential risks gives rise to any full-scale or raw approach.','Völmlesmühle20740',688590368,'chm','1983-08-06 11:03:16','1985-01-21 18:37:41',23821,11396,'PUBLIC','http://waoued.br/eraverer/intetete.doc'),(20741,'Martins Ferry','Admitting that a lot of effort has been invested into the strategic planning.','Diesdorf20741',704525,'dbf','1970-01-01 23:11:15','1970-09-26 08:12:37',19411,29450,'PUBLIC','https://vume.hiomeorver.eg/nestat/ntanthe/ion/eveou.pdf'),(20742,'Black Creek','In particular, final stages of the comprehensive set of policy statements ensures integrity of the hardware maintenance. This could smoothly be a result of a fundamental problem.  ','Pretzier20742',1652136948,'txt','2004-11-15 21:50:04','2008-02-21 07:38:16',23817,22002,'GROUP','http://allnotis.org/herteare/hershothaare.xls'),(20743,'Bellefonte','It is worth emphasizing that any further consideration enforces the overall effect of any systolic approach. This may be done through the successfully developed techniques.  ','Bodelshausen20743',405867330,'cproj','2008-08-15 15:52:34','2010-08-23 15:26:47',19409,23913,'PUBLIC','http://toalwashe.com/forth/ingatto/hennterend.pdf'),(23016,'Merrill','We must be ready for final draft and product functionality investigation of any enhanced or inherent approach.','Riethgen23016',1540869207,'bmp','1987-04-01 06:04:54','1990-11-24 23:56:55',32332,32767,'PUBLIC','https://uldatmeing.nl/histhou/ere/areand/thaedwabut.txt'),(23017,'Nebo','The public in general tend to believe that the development methodology in its influence on elements of the consequential risks provides rich insights into the interactive services detection.  ','Bad Kohlgrub23017',2005319886,'dbf','1970-01-01 00:00:09','1971-06-23 15:47:02',30059,11393,'GROUP','http://liqice.erameleou.ge/tiheroul/eswasor/stndat/nttio.txt'),(23018,'Weyers Cave','Keeping in mind that study of descriptive practices minimizes influence of the proper diversity of the application rules.  ','Königsbronn23018',1452981266,'pdf','2010-08-16 08:28:16','2013-03-09 13:17:43',12777,26191,'PUBLIC','http://da.steatioion.be/ou/ourha/oroul/isallrehi.doc'),(23019,'Ft Myer','Otherwise speaking, the assumption, that the crucial development skills is a base for developing the matter of the predictable behavior, will require a vast knowledge.','Munschwitz23019',1133460664,'asp','1972-06-02 19:44:16','1974-12-02 01:21:16',23822,13675,'PUBLIC','https://itnethaera.ca/uld/ouryouanto.xls'),(23020,'Spring Valley','It is worth emphasizing that a key factor of the essential component stimulates development of the operating speed model.','Schmatzfeld23020',897088,'cproj','1970-01-01 00:01:09','1972-02-12 22:43:42',26100,11398,'GROUP','https://henisnd.nl/onionall/veereuld/itthe/ionenor.txt'),(24634,'Mc Kees Rocks','To all effects and purposes, the condition of the arguments and claims makes it easy to see perspectives of any deep or superficial approach.  ','Berumbur24634',1274125254,'png','1977-07-24 09:20:37','1977-11-14 13:11:53',30063,23916,'HIDDEN','http://hiererewit.hk/hahe/onherereoul.txt'),(24635,'Prinsburg','At the same time, however, segments of the treatment is of a great interest.In particular, any further consideration definitely the referential arguments.','Dollenchen24635',1820351488,'html','1970-01-01 00:01:31','1972-05-11 12:30:31',12778,29447,'HIDDEN','https://riweqi.eaororera.biz/waanre/ingher.txt'),(24636,'Tompkinsville','Otherwise speaking, the core principles becomes even more complex when compared with any comprehensive project management. This may be done through the valuable information.  ','Ober-Ramstadt24636',1515396697,'php','1990-04-20 21:39:29','1993-08-29 00:38:34',21684,22001,'GROUP','https://terith.us/ounest/ionasme/hatha/esaterated.txt'),(24637,'Upper Black Eddy','What is more, the optimization of the prominent landmarks will possibly result in what is conventionally known as feedback system.  ','Pahren24637',1111426834,'asp','1989-01-23 16:10:29','1992-02-09 20:17:52',19407,31719,'HIDDEN','http://entened.com/anwiten/youorhenar.xls'),(24638,'Murrysville','In any case, we can accordingly change the mechanism of the product functionality.Therefore, the concept of the goals and objectives can be treated as the only solution.','Rollwitz24638',297248608,'wmv','1974-05-17 09:12:39','1977-03-21 13:47:29',12778,29447,'HIDDEN','https://isteng.be/the/hinereforhat.txt'),(26912,'Glenelg','Remembering that the accurate predictions of the ground-breaking technology represents a bond between the development process  and an initial attempt in development of the productivity boost.  ','Brühl26912',1552244856,'mov','1996-12-22 10:24:40','1998-02-27 10:54:29',19411,29450,'PUBLIC','https://qe.edionstre.au/inhad/eahatwit/hiall/hiserathaea.txt'),(26913,'Chaplin','As a matter of fact, components of the total volume of the strategic decisions gives rise to what is conventionally known as sufficient amount.  ','Busdorf26913',170639541,'asp','2009-03-10 18:14:45','2009-12-30 02:03:06',30061,26192,'GROUP','http://zitudi.thaalsewas.org/forwashen/witeshant.txt'),(26914,'Soperton','Regardless of the fact that the accurate predictions of the crucial component provides benefit from complete failure of the supposed theory.  ','Reichmannsdorf26914',915776724,'mpeg','1970-01-01 00:10:02','1972-12-23 19:50:33',10499,22003,'PUBLIC','http://gusedu.thallhis.jp/it/tednthat/vetete/aretheedin.pdf'),(26915,'Vernonia','Eventually, a lot of effort has been invested into the hardware maintenance.','Fels26915',720133120,'html','1981-05-27 17:59:36','1982-05-07 23:59:24',30059,11393,'GROUP','http://ionnt.uk/uld/arenterre.txt'),(30321,'Paia','To put it mildly, the example of the content testing method involves some problems with the functional testing. This seems to be a constantly obvious step towards the goals and objectives.  ','Klockow30321',441494674,'mp3','1970-01-01 01:52:04','1972-06-09 14:26:45',19026,11395,'HIDDEN','https://terre.ar/allstve/tiong/iontiter/butat.doc'),(30322,'Gloversville','In particular, study of intended practices gives an overview of an initial attempt in development of the existing network.  ','Oberaula30322',565996320,'xlsx','1970-01-01 00:07:10','1971-12-15 13:16:47',21687,22005,'PRIVATE','http://vudu.eveforedsho.ge/witith/en/ithithare/hatoritnot.pdf'),(30323,'Brandon','It\'s a well-known fact that a number of brand new approaches has been tested during the the improvement of the development process.','Haundorf30323',1463124692,'cproj','1970-01-01 00:02:44','1973-03-18 07:37:37',10501,11397,'PUBLIC','http://kijuye.onou.mx/hinndte/hinoust/hehadthihad.pdf'),(32595,'Goodyear','One should, however, not forget that with help of the formal action should focus on any operational system. This may be done through the technical requirements.  ','Aremberg32595',322983936,'bmp','1970-01-01 00:00:10','1973-05-20 09:13:16',16749,13673,'GROUP','https://galusu.ionverhinsho.ua/nginnot/nt/sho/witbutenor.xls'),(32596,'Feeding Hills','The existing network leads us to a clear understanding of the well-known practice.This may be done through the market tendencies.','Hüttengrund32596',1737068074,'png','1970-01-01 14:38:40','1973-02-07 09:53:10',16748,14869,'HIDDEN','https://verlehadtha.mx/inoureve/ea/henenat/eraseteyou.doc'),(32597,'Longmeadow','In any case, the utilization of the basic feature discards the principle of the more systems approach of the change of marketing strategy.  ','Schürdt32597',1666915711,'html','1982-05-16 13:44:27','1986-01-13 15:48:56',26098,22004,'GROUP','http://veantiole.com/onshofor/ver/ouor.doc'),(32767,'Fultondale','Alas, elements of the development sequence can be regarded as financially insignificant. The specific action result provides rich insights into the irrelevance of system.  ','Kieve32767',1280137216,'dbf','1970-01-01 00:04:23','1974-02-06 16:44:04',16748,14869,'HIDDEN','http://reanasou.eg/but/ne/hat/butwasera.txt');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videospeccount`
--

DROP TABLE IF EXISTS `videospeccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videospeccount` (
  `VideoSpecCountID` smallint(6) NOT NULL AUTO_INCREMENT,
  `VideoID` smallint(6) NOT NULL,
  `VideoViewCount` tinyint(4) NOT NULL DEFAULT '0',
  `VideoLikeCount` tinyint(4) NOT NULL DEFAULT '0',
  `VideoDislikeCount` tinyint(4) NOT NULL DEFAULT '0',
  `VideoDownloadCount` tinyint(4) NOT NULL DEFAULT '0',
  `VideoCommentCount` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`VideoSpecCountID`),
  UNIQUE KEY `VideoID_UNIQUE` (`VideoID`),
  KEY `VideoSpecCount_Video_FK_idx` (`VideoID`),
  CONSTRAINT `VideoSpecCount_Video_FK` FOREIGN KEY (`VideoID`) REFERENCES `video` (`VideoID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videospeccount`
--

LOCK TABLES `videospeccount` WRITE;
/*!40000 ALTER TABLE `videospeccount` DISABLE KEYS */;
INSERT INTO `videospeccount` VALUES (91,30321,4,2,3,3,3),(92,15905,2,0,1,1,3),(93,26914,0,0,0,0,2),(94,12549,0,3,1,0,1),(95,18187,1,0,0,0,4),(96,15909,0,1,0,2,1),(97,15906,0,0,0,0,1),(98,23018,0,0,0,1,2),(99,23020,2,1,0,2,3),(100,30322,1,1,0,1,1),(101,18189,1,0,1,0,2),(102,18183,0,0,0,1,2),(103,24637,3,2,0,1,2),(104,18188,1,1,0,1,1),(105,24634,2,0,0,0,2),(106,32595,1,4,1,0,1),(107,32767,2,1,0,0,1),(108,10270,3,1,0,1,1),(109,24636,0,2,2,0,2),(110,18184,1,0,0,2,1),(111,12551,0,1,0,2,2),(112,10272,0,1,0,1,2),(113,26912,3,0,0,0,2),(114,20741,1,1,0,0,2),(115,20739,2,0,0,1,2),(116,32596,0,2,1,1,1),(117,20743,0,1,0,1,1),(118,18185,1,0,1,4,1),(119,12548,1,1,0,1,1),(120,20742,1,1,0,3,0),(121,20740,0,1,0,2,0),(122,18182,0,1,0,1,0),(123,15908,1,2,0,2,0),(124,23016,2,1,0,1,0),(125,24638,0,2,0,1,0),(126,26913,2,0,0,3,0),(127,32597,2,0,0,1,0),(128,15907,2,2,0,1,0),(129,30323,2,0,0,1,0),(130,10274,2,2,0,1,0),(131,24635,1,0,0,1,0),(132,10271,2,0,0,2,0),(133,10273,3,0,0,1,0),(134,26915,0,0,0,1,0),(135,15911,0,0,0,1,0),(136,12550,0,0,0,1,0),(137,23017,0,2,0,1,0),(138,15910,1,1,0,0,0),(139,23019,0,1,1,0,0),(140,18186,0,1,0,0,0),(142,10887,0,0,0,0,4),(143,10892,0,0,0,0,2);
/*!40000 ALTER TABLE `videospeccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videoview`
--

DROP TABLE IF EXISTS `videoview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videoview` (
  `VideoViewID` smallint(6) NOT NULL AUTO_INCREMENT,
  `UserID` smallint(6) NOT NULL,
  `CreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VideoID` smallint(6) NOT NULL,
  PRIMARY KEY (`VideoViewID`),
  KEY `UserID_FK_idx` (`UserID`),
  KEY `VideoID_FK_idx` (`VideoID`),
  CONSTRAINT `ViewUserID_FK` FOREIGN KEY (`UserID`) REFERENCES `member` (`MemberID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ViewVideoID_FK` FOREIGN KEY (`VideoID`) REFERENCES `video` (`VideoID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videoview`
--

LOCK TABLES `videoview` WRITE;
/*!40000 ALTER TABLE `videoview` DISABLE KEYS */;
INSERT INTO `videoview` VALUES (11683,26095,'2006-10-04 14:53:24','2010-04-05 13:44:40',20739),(11684,12777,'2006-07-26 02:46:44','2010-01-26 21:20:36',26913),(11685,19411,'1970-01-07 21:35:14','1970-09-27 22:24:09',18188),(11686,21688,'1983-11-05 01:09:52','1984-04-30 11:03:15',24637),(11687,10500,'1970-01-01 00:01:03','1971-03-01 05:36:34',30323),(11688,26097,'2012-07-20 16:43:28','2013-08-02 08:47:05',12548),(13961,26098,'1970-01-05 08:35:31','1972-08-19 13:46:30',10271),(13962,23821,'1990-10-09 14:02:14','1991-05-24 21:43:21',18185),(13963,21687,'2002-05-23 12:00:41','2004-07-23 11:23:39',23020),(13964,16751,'1970-01-01 00:01:05','1971-04-30 07:08:16',10273),(13965,30061,'2014-08-07 19:35:36','2015-09-19 04:12:11',20742),(14011,10500,'1991-07-04 00:06:54','1994-01-13 01:41:56',30321),(14671,23820,'1982-05-23 02:10:02','1983-07-23 09:05:51',32597),(14672,23817,'1985-10-15 19:14:55','1987-10-11 16:21:09',10270),(14673,12778,'2015-01-02 17:40:49','2016-12-03 22:53:50',18184),(14674,21688,'1976-01-22 10:08:16','1978-03-17 16:47:26',24637),(14675,32335,'1994-12-30 23:36:02','1996-07-03 06:38:45',15907),(14676,19408,'2002-08-08 23:11:01','2004-11-15 12:43:24',26912),(16949,12779,'1970-01-01 00:00:10','1970-05-28 17:07:05',15910),(16950,10500,'2007-06-20 05:43:14','2009-05-09 02:59:38',30323),(16951,16751,'1987-08-27 23:32:02','1989-11-14 22:04:26',10273),(16952,32767,'1970-01-01 17:37:17','1973-08-21 10:23:13',24634),(16953,19407,'1970-01-01 01:06:05','1970-10-18 16:39:08',23016),(16954,32332,'1974-09-28 04:29:46','1976-08-21 09:58:37',30321),(20787,12776,'1989-08-19 13:35:15','1993-04-30 23:36:21',32595),(20788,23817,'1972-04-03 10:34:36','1975-07-19 21:16:20',10270),(20789,21685,'1972-12-25 19:46:38','1976-03-11 00:12:32',15905),(20790,19408,'1979-10-02 18:28:39','1983-04-27 06:04:50',26912),(20791,23817,'2012-05-19 07:48:07','2013-02-22 08:05:20',10270),(23065,10501,'1970-01-03 19:48:10','1971-10-22 01:27:11',18187),(23066,26100,'1971-03-08 00:28:50','1972-06-14 16:36:02',10274),(23067,16748,'2006-01-17 18:59:33','2010-02-20 16:44:16',30322),(23068,30059,'1970-01-01 00:07:00','1973-08-02 18:46:34',32767),(23967,32337,'2013-11-05 02:59:36','2017-08-07 21:26:31',18189),(23968,30060,'1970-01-07 07:08:29','1972-12-18 11:33:09',24635),(23969,19408,'1970-01-12 06:40:16','1970-08-21 06:46:06',26912),(23970,12777,'1970-01-01 00:01:02','1972-06-14 13:28:57',26913),(23971,32767,'1970-01-01 00:00:08','1973-03-08 02:04:32',24634),(26244,21685,'2015-11-16 17:24:02','2018-12-24 05:19:19',15905),(26245,26100,'1970-01-01 00:50:32','1973-03-12 21:03:58',10274),(26246,19407,'2006-08-03 04:09:51','2008-02-09 12:05:49',23016),(26247,30059,'1970-01-01 00:01:15','1974-01-23 20:37:23',32767),(26248,32335,'1970-01-02 08:23:35','1970-12-24 23:52:10',15907),(26249,21688,'2009-12-18 12:13:50','2012-08-20 02:27:32',24637),(29602,21687,'1974-09-12 11:25:10','1977-10-20 16:01:13',23020),(29603,23820,'1978-09-27 02:29:57','1979-05-19 19:53:57',32597),(29604,26095,'2010-10-22 04:44:56','2014-10-19 15:24:38',20739),(30711,10499,'1994-02-03 07:53:59','1997-06-23 19:34:38',30321),(31876,26098,'1978-03-28 03:50:06','1979-03-04 12:31:09',10271),(31877,30062,'2010-07-25 09:23:12','2013-03-12 06:05:53',15908),(31878,19026,'2003-05-21 04:20:09','2005-11-26 21:51:25',20741),(32711,10501,'1970-01-01 00:01:35','1971-04-12 04:11:35',30321),(32767,16751,'1970-01-01 00:00:06','1973-06-12 07:05:09',10273);
/*!40000 ALTER TABLE `videoview` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `videosharingdb`.`VideoView_AFTER_INSERT`
AFTER INSERT ON `videosharingdb`.`videoview`
FOR EACH ROW
BEGIN
	IF (SELECT COUNT(*) FROM VideoSpecCount WHERE VideoID = NEW.VideoID) = 1
	THEN
		UPDATE VideoSpecCount 
		SET VideoViewCount = (VideoViewCount + 1) 
		WHERE VideoSpecCount.VideoID = NEW.VideoID;
	ELSE
		INSERT INTO VideoSpecCount(VideoViewCount, VideoID) 
		VALUES(1, NEW.VideoID);
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `view_getmostcommentedvideo`
--

DROP TABLE IF EXISTS `view_getmostcommentedvideo`;
/*!50001 DROP VIEW IF EXISTS `view_getmostcommentedvideo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_getmostcommentedvideo` AS SELECT 
 1 AS `VideoID`,
 1 AS `VideoTitle`,
 1 AS `VideoDesc`,
 1 AS `VideoUrl`,
 1 AS `VideoSize`,
 1 AS `FileType`,
 1 AS `CreateTime`,
 1 AS `ModifiedTime`,
 1 AS `PostedByUserID`,
 1 AS `ThumbnailID`,
 1 AS `VideoScope`,
 1 AS `VideoPath`,
 1 AS `Comment Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_getmostdownloadvideo`
--

DROP TABLE IF EXISTS `view_getmostdownloadvideo`;
/*!50001 DROP VIEW IF EXISTS `view_getmostdownloadvideo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_getmostdownloadvideo` AS SELECT 
 1 AS `VideoID`,
 1 AS `VideoTitle`,
 1 AS `VideoDesc`,
 1 AS `VideoUrl`,
 1 AS `VideoSize`,
 1 AS `FileType`,
 1 AS `CreateTime`,
 1 AS `ModifiedTime`,
 1 AS `PostedByUserID`,
 1 AS `ThumbnailID`,
 1 AS `VideoScope`,
 1 AS `VideoPath`,
 1 AS `Download Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_getmostlikedvideo`
--

DROP TABLE IF EXISTS `view_getmostlikedvideo`;
/*!50001 DROP VIEW IF EXISTS `view_getmostlikedvideo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_getmostlikedvideo` AS SELECT 
 1 AS `VideoID`,
 1 AS `VideoTitle`,
 1 AS `VideoDesc`,
 1 AS `VideoUrl`,
 1 AS `VideoSize`,
 1 AS `FileType`,
 1 AS `CreateTime`,
 1 AS `ModifiedTime`,
 1 AS `PostedByUserID`,
 1 AS `ThumbnailID`,
 1 AS `VideoScope`,
 1 AS `VideoPath`,
 1 AS `Like Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_getmostviewedvideo`
--

DROP TABLE IF EXISTS `view_getmostviewedvideo`;
/*!50001 DROP VIEW IF EXISTS `view_getmostviewedvideo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_getmostviewedvideo` AS SELECT 
 1 AS `VideoID`,
 1 AS `VideoTitle`,
 1 AS `VideoDesc`,
 1 AS `VideoUrl`,
 1 AS `VideoSize`,
 1 AS `FileType`,
 1 AS `CreateTime`,
 1 AS `ModifiedTime`,
 1 AS `PostedByUserID`,
 1 AS `ThumbnailID`,
 1 AS `VideoScope`,
 1 AS `VideoPath`,
 1 AS `Number of Views`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `watchhistory`
--

DROP TABLE IF EXISTS `watchhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watchhistory` (
  `WatchHistoryID` smallint(6) NOT NULL AUTO_INCREMENT,
  `UserID` smallint(6) NOT NULL,
  `VideoID` smallint(6) NOT NULL,
  `CreateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`WatchHistoryID`),
  KEY `Video_FK_idx` (`VideoID`),
  KEY `User_FK_idx` (`UserID`),
  CONSTRAINT `WacthHistoryUser_FK` FOREIGN KEY (`UserID`) REFERENCES `member` (`MemberID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `WatchHistoryVideo_FK` FOREIGN KEY (`VideoID`) REFERENCES `video` (`VideoID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchhistory`
--

LOCK TABLES `watchhistory` WRITE;
/*!40000 ALTER TABLE `watchhistory` DISABLE KEYS */;
INSERT INTO `watchhistory` VALUES (11137,23820,12550,'2002-06-12 09:35:54'),(11138,30059,26914,'1977-01-31 23:53:24'),(11139,19409,32767,'1985-06-26 21:16:25'),(11140,21688,10273,'1993-02-14 13:03:46'),(13414,19407,18188,'2001-06-20 18:03:38'),(13415,32333,24638,'1971-05-04 17:59:03'),(13416,16750,18183,'1980-07-04 17:05:27'),(13417,26095,20742,'1970-01-01 01:39:48'),(13418,10501,15907,'1970-01-01 00:10:45'),(16363,19027,10273,'1970-01-01 00:05:20'),(16364,26097,18184,'1976-02-05 03:50:04'),(16365,19407,15907,'1970-01-01 20:38:37'),(16366,32336,12549,'1970-05-24 23:05:36'),(18640,32335,10271,'2006-12-07 13:42:48'),(18641,10501,18183,'1990-04-24 20:28:32'),(18642,26098,24638,'2011-12-30 20:05:38'),(18643,19026,24635,'2011-08-03 20:32:02'),(20224,23817,20739,'1971-05-11 15:25:10'),(20225,12779,10274,'1993-06-14 02:16:47'),(20226,30063,30321,'1970-01-01 05:33:07'),(20227,12776,24635,'1970-01-01 13:08:51'),(20228,23821,26913,'2009-10-12 11:45:22'),(20229,30060,10271,'1971-05-07 11:33:19'),(22501,12777,32597,'2011-08-17 01:47:24'),(22502,23819,10272,'1970-01-01 19:53:00'),(22503,30062,12549,'2002-03-18 10:09:03'),(22504,23820,24635,'1976-11-28 00:00:43'),(22505,30062,12548,'1979-04-07 16:56:52'),(22506,26100,10270,'1987-09-28 08:51:10'),(25693,12778,24637,'1970-01-01 01:38:08'),(25694,30060,23018,'1970-01-02 02:46:59'),(25695,21685,12550,'2002-01-26 22:13:16'),(25696,19027,15911,'2004-12-22 08:45:37'),(27971,19408,20743,'1970-01-01 00:00:39'),(27972,32767,24636,'1970-01-01 01:36:13'),(27973,21688,24635,'1994-11-14 12:32:48'),(27974,19410,15907,'1970-01-01 09:53:48'),(29805,16750,32596,'2015-12-03 16:50:34'),(29806,19410,10274,'1970-01-01 00:00:57'),(29807,12777,24636,'1978-09-17 08:25:33'),(29808,26095,10271,'1970-01-01 11:53:43'),(29809,19027,24636,'1970-01-01 00:09:58'),(29810,16751,15906,'2003-07-12 22:53:02'),(32078,12776,23019,'1970-01-01 00:00:10'),(32079,16751,15911,'2013-10-13 04:47:01'),(32080,32336,18184,'2007-09-25 17:55:45'),(32081,21684,24634,'1981-05-14 08:50:35'),(32082,21688,18188,'1999-06-15 22:21:43'),(32083,21686,24638,'1970-01-02 01:22:48'),(32767,32334,23019,'1974-07-15 20:11:18');
/*!40000 ALTER TABLE `watchhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchlatervideo`
--

DROP TABLE IF EXISTS `watchlatervideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watchlatervideo` (
  `WatchLaterVideoID` smallint(6) NOT NULL AUTO_INCREMENT,
  `VideoID` smallint(6) NOT NULL,
  `UserID` smallint(6) NOT NULL,
  PRIMARY KEY (`WatchLaterVideoID`),
  KEY `Video_FK_idx` (`VideoID`),
  KEY `User_FK_idx` (`UserID`),
  CONSTRAINT `WacthLaterUser_FK` FOREIGN KEY (`UserID`) REFERENCES `member` (`MemberID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `WatchLaterVideo_FK` FOREIGN KEY (`VideoID`) REFERENCES `video` (`VideoID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchlatervideo`
--

LOCK TABLES `watchlatervideo` WRITE;
/*!40000 ALTER TABLE `watchlatervideo` DISABLE KEYS */;
INSERT INTO `watchlatervideo` VALUES (12194,15906,23819),(12195,32767,30059),(12196,15911,23822),(12197,18189,32337),(12198,24634,32767),(12199,15906,23819),(12200,18182,21684),(14472,32596,19409),(14473,10272,19027),(14474,23020,21687),(14475,26915,21689),(14476,10271,26098),(14477,30322,16748),(15945,30323,10500),(15946,26912,19408),(15947,24635,30060),(15948,18182,21684),(15949,20743,19410),(18222,23016,19407),(18223,20740,26096),(18224,20740,26096),(18225,24636,32334),(18226,15908,30062),(21105,10274,26100),(21106,15905,21685),(21107,18183,10499),(21108,20740,26096),(21109,10274,26100),(23382,15911,23822),(23383,18187,10501),(23384,30323,10500),(23385,18189,32337),(23386,18183,10499),(25862,18183,10499),(25863,15907,32335),(25864,15905,21685),(28139,18186,26099),(28140,12549,16749),(28141,15911,23822),(28142,12549,16749),(30445,24635,30060),(30446,24638,10502),(30447,20739,26095),(30448,15911,23822),(32718,10274,26100),(32719,20743,19410),(32720,10274,26100),(32721,18185,23821),(32722,20739,26095),(32767,23020,21687);
/*!40000 ALTER TABLE `watchlatervideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'videosharingdb'
--

--
-- Dumping routines for database 'videosharingdb'
--
/*!50003 DROP PROCEDURE IF EXISTS `Proc_GetDownloadedVideosByMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Proc_GetDownloadedVideosByMember`(IN membername VARCHAR(45))
BEGIN
	SELECT concat(m.firstname, ' ', m.lastname) AS 'Full Name',
			d.videoid 'Video ID', v.videotitle 'Video Title', v.videodesc 'Video Description', 
            d.CreateTime 'Downloaded Time'
	FROM download d
	INNER JOIN member m ON m.memberid = d.userid
    INNER JOIN video v ON v.videoid = d.videoid
	WHERE m.lastname LIKE concat(membername,'%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Proc_GetLikedVideosByMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Proc_GetLikedVideosByMember`(in membername varchar(45))
begin
	select concat(m.firstname, ' ', m.lastname) as 'Full Name',
			el.videoid 'Video ID', v.videotitle 'VideoTitle', v.videodesc 'Video Description'
	from entitylike el
	inner join member m on m.memberid = el.userid
    inner join video v on v.videoid = el.videoid
	where el.isDislike = 0 and m.lastname like concat(membername,'%');
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Proc_getPlaylistOfMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Proc_getPlaylistOfMember`(in memlastname varchar(45))
begin
	select concat(m.firstname, ' ', m.lastname) AS 'Full Name',
		(pl.playlistname), group_concat(v.videotitle) 
	from playlist pl
	inner join member m on m.memberid = pl.userid
    inner join playlistvideo pv on pv.playlistvideoid = pl.playlistvideoid
    inner join video v on v.videoid = pv.videoid
	where m.lastname like concat(memlastname,'%')
    group by (pl.playlistname);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Proc_GetSubscriberDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Proc_GetSubscriberDetails`(in ch varchar(45))
begin
	select c.channelid 'Channel ID', c.channelname 'Channel Name', c.userid 'Channel Owner', 
		sub.subscriberid 'Subscriber ID',concat_ws(' ',m.firstname,m.lastname)'Subscriber Name'        
	from subscriber sub
	inner join channel c on c.channelid = sub.channelid
    inner join member m on m.memberid = sub.userid
	where c.channelname like concat(ch,'%');
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_getmostcommentedvideo`
--

/*!50001 DROP VIEW IF EXISTS `view_getmostcommentedvideo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_getmostcommentedvideo` AS select `v`.`VideoID` AS `VideoID`,`v`.`VideoTitle` AS `VideoTitle`,`v`.`VideoDesc` AS `VideoDesc`,`v`.`VideoUrl` AS `VideoUrl`,`v`.`VideoSize` AS `VideoSize`,`v`.`FileType` AS `FileType`,`v`.`CreateTime` AS `CreateTime`,`v`.`ModifiedTime` AS `ModifiedTime`,`v`.`PostedByUserID` AS `PostedByUserID`,`v`.`ThumbnailID` AS `ThumbnailID`,`v`.`VideoScope` AS `VideoScope`,`v`.`VideoPath` AS `VideoPath`,`vsc`.`VideoCommentCount` AS `Comment Count` from (`video` `v` join `videospeccount` `vsc` on((`v`.`VideoID` = `vsc`.`VideoID`))) where (`vsc`.`VideoCommentCount` = (select max(`videospeccount`.`VideoCommentCount`) from `videospeccount`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_getmostdownloadvideo`
--

/*!50001 DROP VIEW IF EXISTS `view_getmostdownloadvideo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_getmostdownloadvideo` AS select `v`.`VideoID` AS `VideoID`,`v`.`VideoTitle` AS `VideoTitle`,`v`.`VideoDesc` AS `VideoDesc`,`v`.`VideoUrl` AS `VideoUrl`,`v`.`VideoSize` AS `VideoSize`,`v`.`FileType` AS `FileType`,`v`.`CreateTime` AS `CreateTime`,`v`.`ModifiedTime` AS `ModifiedTime`,`v`.`PostedByUserID` AS `PostedByUserID`,`v`.`ThumbnailID` AS `ThumbnailID`,`v`.`VideoScope` AS `VideoScope`,`v`.`VideoPath` AS `VideoPath`,`vsc`.`VideoDownloadCount` AS `Download Count` from (`video` `v` join `videospeccount` `vsc` on((`v`.`VideoID` = `vsc`.`VideoID`))) where (`vsc`.`VideoDownloadCount` = (select max(`videospeccount`.`VideoDownloadCount`) from `videospeccount`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_getmostlikedvideo`
--

/*!50001 DROP VIEW IF EXISTS `view_getmostlikedvideo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_getmostlikedvideo` AS select `v`.`VideoID` AS `VideoID`,`v`.`VideoTitle` AS `VideoTitle`,`v`.`VideoDesc` AS `VideoDesc`,`v`.`VideoUrl` AS `VideoUrl`,`v`.`VideoSize` AS `VideoSize`,`v`.`FileType` AS `FileType`,`v`.`CreateTime` AS `CreateTime`,`v`.`ModifiedTime` AS `ModifiedTime`,`v`.`PostedByUserID` AS `PostedByUserID`,`v`.`ThumbnailID` AS `ThumbnailID`,`v`.`VideoScope` AS `VideoScope`,`v`.`VideoPath` AS `VideoPath`,`vsc`.`VideoLikeCount` AS `Like Count` from (`video` `v` join `videospeccount` `vsc` on((`v`.`VideoID` = `vsc`.`VideoID`))) where (`vsc`.`VideoLikeCount` = (select max(`videospeccount`.`VideoLikeCount`) from `videospeccount`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_getmostviewedvideo`
--

/*!50001 DROP VIEW IF EXISTS `view_getmostviewedvideo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_getmostviewedvideo` AS select `v`.`VideoID` AS `VideoID`,`v`.`VideoTitle` AS `VideoTitle`,`v`.`VideoDesc` AS `VideoDesc`,`v`.`VideoUrl` AS `VideoUrl`,`v`.`VideoSize` AS `VideoSize`,`v`.`FileType` AS `FileType`,`v`.`CreateTime` AS `CreateTime`,`v`.`ModifiedTime` AS `ModifiedTime`,`v`.`PostedByUserID` AS `PostedByUserID`,`v`.`ThumbnailID` AS `ThumbnailID`,`v`.`VideoScope` AS `VideoScope`,`v`.`VideoPath` AS `VideoPath`,`vsc`.`VideoViewCount` AS `Number of Views` from (`video` `v` join `videospeccount` `vsc` on((`v`.`VideoID` = `vsc`.`VideoID`))) where (`vsc`.`VideoViewCount` = (select max(`videospeccount`.`VideoViewCount`) from `videospeccount`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-14 11:45:28
