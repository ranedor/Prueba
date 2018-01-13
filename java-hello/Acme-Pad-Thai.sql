start transaction;

create database `acme-pad-thai`;

use `acme-pad-thai`;


create user 'acme-user'@'%' identified by password '*4F10007AADA9EE3DBB2CC36575DFC6F4FDE27577';
create user 'acme-manager'@'%' identified by password '*FDB8CD304EB2317D10C95D797A4BD7492560F55F';

grant select, insert, update, delete 
	on `acme-pad-thai`.* to 'acme-user'@'%';

grant select, insert, update, delete, create, drop, references, index, alter, 
        create temporary tables, lock tables, create view, create routine, 
        alter routine, execute, trigger, show view
    on `acme-pad-thai`.* to 'acme-manager'@'%';


-- MySQL dump 10.13  Distrib 5.5.29, for Win64 (x86)
--
-- Host: localhost    Database: acme-pad-thai
-- ------------------------------------------------------
-- Server version	5.5.29

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
-- Table structure for table `actor_masterclass`
--

DROP TABLE IF EXISTS `actor_masterclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor_masterclass` (
  `users_id` int(11) NOT NULL,
  `attendedMasterClasses_id` int(11) NOT NULL,
  KEY `FK_3x2mqlpa9c3naw9nieit19tjt` (`attendedMasterClasses_id`),
  CONSTRAINT `FK_3x2mqlpa9c3naw9nieit19tjt` FOREIGN KEY (`attendedMasterClasses_id`) REFERENCES `masterclass` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `actor_message`
--

DROP TABLE IF EXISTS `actor_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor_message` (
  `Actor_id` int(11) NOT NULL,
  `messages_id` int(11) NOT NULL,
  UNIQUE KEY `UK_qwro2cfqr03juk8plid0aj8u1` (`messages_id`),
  CONSTRAINT `FK_qwro2cfqr03juk8plid0aj8u1` FOREIGN KEY (`messages_id`) REFERENCES `message` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_message`
--

LOCK TABLES `actor_message` WRITE;
/*!40000 ALTER TABLE `actor_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `actor_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actor_messagefolder`
--

DROP TABLE IF EXISTS `actor_messagefolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor_messagefolder` (
  `Actor_id` int(11) NOT NULL,
  `messageFolders_id` int(11) NOT NULL,
  UNIQUE KEY `UK_lwixnktdpmwwh0og2g609icp2` (`messageFolders_id`),
  CONSTRAINT `FK_lwixnktdpmwwh0og2g609icp2` FOREIGN KEY (`messageFolders_id`) REFERENCES `messagefolder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `actor_messagefolder`
--

LOCK TABLES `actor_messagefolder` WRITE;
/*!40000 ALTER TABLE `actor_messagefolder` DISABLE KEYS */;
INSERT INTO `actor_messagefolder` VALUES (77,1),(77,2),(77,3),(77,4);
/*!40000 ALTER TABLE `actor_messagefolder` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `actor_socialidentity`
--

DROP TABLE IF EXISTS `actor_socialidentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor_socialidentity` (
  `Actor_id` int(11) NOT NULL,
  `socialIdentities_id` int(11) NOT NULL,
  UNIQUE KEY `UK_fvjtbijvsijias3suehxiq0jm` (`socialIdentities_id`),
  CONSTRAINT `FK_fvjtbijvsijias3suehxiq0jm` FOREIGN KEY (`socialIdentities_id`) REFERENCES `socialidentity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `postalAdress` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `userAccount_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_idt4b4u259p6vs4pyr9lax4eg` (`userAccount_id`),
  CONSTRAINT `FK_idt4b4u259p6vs4pyr9lax4eg` FOREIGN KEY (`userAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (77,0,'jorgargar2@us.es','Jorge',NULL,NULL,'Garcia Garcia',37);
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator_banner`
--

DROP TABLE IF EXISTS `administrator_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator_banner` (
  `Administrator_id` int(11) NOT NULL,
  `banners_id` int(11) NOT NULL,
  KEY `FK_fs8i47rhv135r5ne1txv63q59` (`banners_id`),
  KEY `FK_mtwsievyon11rh32nal9a6c95` (`Administrator_id`),
  CONSTRAINT `FK_fs8i47rhv135r5ne1txv63q59` FOREIGN KEY (`banners_id`) REFERENCES `banner` (`id`),
  CONSTRAINT `FK_mtwsievyon11rh32nal9a6c95` FOREIGN KEY (`Administrator_id`) REFERENCES `administrator` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `administrator_category`
--

DROP TABLE IF EXISTS `administrator_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator_category` (
  `Administrator_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  KEY `FK_bj5pfofvp567e2l0nglhi5neh` (`categories_id`),
  KEY `FK_euges1pl25561cfiko8ijr2yc` (`Administrator_id`),
  CONSTRAINT `FK_bj5pfofvp567e2l0nglhi5neh` FOREIGN KEY (`categories_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_euges1pl25561cfiko8ijr2yc` FOREIGN KEY (`Administrator_id`) REFERENCES `administrator` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `administrator_contest`
--

DROP TABLE IF EXISTS `administrator_contest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator_contest` (
  `Administrator_id` int(11) NOT NULL,
  `contests_id` int(11) NOT NULL,
  KEY `FK_n59ec74dteuw4w9vs491h6mia` (`contests_id`),
  KEY `FK_73epl9qinh8g25ukxn18l2vj8` (`Administrator_id`),
  CONSTRAINT `FK_73epl9qinh8g25ukxn18l2vj8` FOREIGN KEY (`Administrator_id`) REFERENCES `administrator` (`id`),
  CONSTRAINT `FK_n59ec74dteuw4w9vs491h6mia` FOREIGN KEY (`contests_id`) REFERENCES `contest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `administrator_masterclass`
--

DROP TABLE IF EXISTS `administrator_masterclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator_masterclass` (
  `Administrator_id` int(11) NOT NULL,
  `masterClasses_id` int(11) NOT NULL,
  KEY `FK_nbk2ov0h0i3h5b28jswo4ncnn` (`masterClasses_id`),
  KEY `FK_k4idwtw02372wxewkbmjnafgn` (`Administrator_id`),
  CONSTRAINT `FK_k4idwtw02372wxewkbmjnafgn` FOREIGN KEY (`Administrator_id`) REFERENCES `administrator` (`id`),
  CONSTRAINT `FK_nbk2ov0h0i3h5b28jswo4ncnn` FOREIGN KEY (`masterClasses_id`) REFERENCES `masterclass` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `displayTime` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `maxDisplayTime` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `creationDate` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `paymentDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `bill_banner`
--

DROP TABLE IF EXISTS `bill_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill_banner` (
  `Bill_id` int(11) NOT NULL,
  `banners_id` int(11) NOT NULL,
  KEY `FK_pbsdw8s1vn98malflmmcslf4t` (`banners_id`),
  KEY `FK_r5y36pkyc8fqy8kk1unw30ly7` (`Bill_id`),
  CONSTRAINT `FK_pbsdw8s1vn98malflmmcslf4t` FOREIGN KEY (`banners_id`) REFERENCES `banner` (`id`),
  CONSTRAINT `FK_r5y36pkyc8fqy8kk1unw30ly7` FOREIGN KEY (`Bill_id`) REFERENCES `bill` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `campaignName` varchar(255) DEFAULT NULL,
  `endingDate` date DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  `star` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `campaign_banner`
--

DROP TABLE IF EXISTS `campaign_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_banner` (
  `Campaign_id` int(11) NOT NULL,
  `banners_id` int(11) NOT NULL,
  UNIQUE KEY `UK_83g4vy1feec55388kg3hm9yii` (`banners_id`),
  KEY `FK_3skqxua7e68g0d935ur8wniwi` (`Campaign_id`),
  CONSTRAINT `FK_3skqxua7e68g0d935ur8wniwi` FOREIGN KEY (`Campaign_id`) REFERENCES `campaign` (`id`),
  CONSTRAINT `FK_83g4vy1feec55388kg3hm9yii` FOREIGN KEY (`banners_id`) REFERENCES `banner` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `category_category`
--

DROP TABLE IF EXISTS `category_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_category` (
  `Category_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  UNIQUE KEY `UK_3sf7ol15w8eboncl70fdmthsq` (`categories_id`),
  KEY `FK_90tievw3x18jv9f0n4ma0ethu` (`Category_id`),
  CONSTRAINT `FK_3sf7ol15w8eboncl70fdmthsq` FOREIGN KEY (`categories_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_90tievw3x18jv9f0n4ma0ethu` FOREIGN KEY (`Category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `category_tags`
--

DROP TABLE IF EXISTS `category_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_tags` (
  `Category_id` int(11) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  KEY `FK_9h1eu7eeav1s1pxgqmoopg3nb` (`Category_id`),
  CONSTRAINT `FK_9h1eu7eeav1s1pxgqmoopg3nb` FOREIGN KEY (`Category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `creationDate` datetime DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  `stars` int(11) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contest`
--

DROP TABLE IF EXISTS `contest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `closing` date DEFAULT NULL,
  `opening` date DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contest_recipecopy`
--

DROP TABLE IF EXISTS `contest_recipecopy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_recipecopy` (
  `Contest_id` int(11) NOT NULL,
  `recipesCopy_id` int(11) NOT NULL,
  UNIQUE KEY `UK_oaxtg0rt2i9lhc245y3msulg2` (`recipesCopy_id`),
  KEY `FK_bv7ayddl5s91j38kjmm7j866e` (`Contest_id`),
  CONSTRAINT `FK_bv7ayddl5s91j38kjmm7j866e` FOREIGN KEY (`Contest_id`) REFERENCES `contest` (`id`),
  CONSTRAINT `FK_oaxtg0rt2i9lhc245y3msulg2` FOREIGN KEY (`recipesCopy_id`) REFERENCES `recipecopy` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contest_winner`
--

DROP TABLE IF EXISTS `contest_winner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_winner` (
  `Contest_id` int(11) NOT NULL,
  `winners_id` int(11) NOT NULL,
  UNIQUE KEY `UK_ntndg82x0p2poygdwuaq0ifij` (`winners_id`),
  KEY `FK_ahdc4jkduweshl4rsjc8ivohs` (`Contest_id`),
  CONSTRAINT `FK_ahdc4jkduweshl4rsjc8ivohs` FOREIGN KEY (`Contest_id`) REFERENCES `contest` (`id`),
  CONSTRAINT `FK_ntndg82x0p2poygdwuaq0ifij` FOREIGN KEY (`winners_id`) REFERENCES `winner` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cook`
--

DROP TABLE IF EXISTS `cook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cook` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `postalAdress` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `userAccount_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3kc15bg0h4l88vmr4ax7e0uln` (`userAccount_id`),
  CONSTRAINT `FK_3kc15bg0h4l88vmr4ax7e0uln` FOREIGN KEY (`userAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `creditcard`
--

DROP TABLE IF EXISTS `creditcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creditcard` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `brandName` varchar(255) DEFAULT NULL,
  `cvvCode` int(11) NOT NULL,
  `expirationMonth` int(11) NOT NULL,
  `expirationYear` int(11) NOT NULL,
  `holderName` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `curriculum`
--

DROP TABLE IF EXISTS `curriculum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curriculum` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `educationSection` varchar(255) DEFAULT NULL,
  `experienceSection` varchar(255) DEFAULT NULL,
  `hobbiesSection` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `curriculum_endorser`
--

DROP TABLE IF EXISTS `curriculum_endorser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curriculum_endorser` (
  `Curriculum_id` int(11) NOT NULL,
  `endorsers_id` int(11) NOT NULL,
  UNIQUE KEY `UK_7j2ydvym86bknhm757yuffjhk` (`endorsers_id`),
  KEY `FK_kqxoghpe5d0uttmo6s603fmpv` (`Curriculum_id`),
  CONSTRAINT `FK_7j2ydvym86bknhm757yuffjhk` FOREIGN KEY (`endorsers_id`) REFERENCES `endorser` (`id`),
  CONSTRAINT `FK_kqxoghpe5d0uttmo6s603fmpv` FOREIGN KEY (`Curriculum_id`) REFERENCES `curriculum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `endorser`
--

DROP TABLE IF EXISTS `endorser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endorser` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `homePage` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `forbiddenwords`
--

DROP TABLE IF EXISTS `forbiddenwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forbiddenwords` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forbiddenwords`
--

LOCK TABLES `forbiddenwords` WRITE;
/*!40000 ALTER TABLE `forbiddenwords` DISABLE KEYS */;
INSERT INTO `forbiddenwords` VALUES (123,0,'viagra'),(124,0,'cialis'),(125,0,'sex'),(126,0,'love');
/*!40000 ALTER TABLE `forbiddenwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequences`
--

DROP TABLE IF EXISTS `hibernate_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) DEFAULT NULL,
  `sequence_next_hi_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequences`
--

LOCK TABLES `hibernate_sequences` WRITE;
/*!40000 ALTER TABLE `hibernate_sequences` DISABLE KEYS */;
INSERT INTO `hibernate_sequences` VALUES ('DomainEntity',1);
/*!40000 ALTER TABLE `hibernate_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredient` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ingredient_ingredientproperty`
--

DROP TABLE IF EXISTS `ingredient_ingredientproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredient_ingredientproperty` (
  `Ingredient_id` int(11) NOT NULL,
  `properties_id` int(11) NOT NULL,
  UNIQUE KEY `UK_lch48lsrda1p3h3830go2i77u` (`properties_id`),
  KEY `FK_fki1f3xh6l7tgrecc0km20gqj` (`Ingredient_id`),
  CONSTRAINT `FK_fki1f3xh6l7tgrecc0km20gqj` FOREIGN KEY (`Ingredient_id`) REFERENCES `ingredient` (`id`),
  CONSTRAINT `FK_lch48lsrda1p3h3830go2i77u` FOREIGN KEY (`properties_id`) REFERENCES `ingredientproperty` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ingredientproperty`
--

DROP TABLE IF EXISTS `ingredientproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredientproperty` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ghfglyvgfjyq4ife8j1v6h01k` (`property_id`),
  CONSTRAINT `FK_ghfglyvgfjyq4ife8j1v6h01k` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ingredientquantity`
--

DROP TABLE IF EXISTS `ingredientquantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredientquantity` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_aymdqdbvrsjs8js11gldp64v6` (`ingredient_id`),
  CONSTRAINT `FK_aymdqdbvrsjs8js11gldp64v6` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `learningmaterial_attachment`
--

DROP TABLE IF EXISTS `learningmaterial_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `learningmaterial_attachment` (
  `LearningMaterial_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `masterclass`
--

DROP TABLE IF EXISTS `masterclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masterclass` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `cook_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2rxl8u8v25l6yasyfm6po5xlw` (`cook_id`),
  CONSTRAINT `FK_2rxl8u8v25l6yasyfm6po5xlw` FOREIGN KEY (`cook_id`) REFERENCES `cook` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `masterclass_learningmaterial`
--

DROP TABLE IF EXISTS `masterclass_learningmaterial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masterclass_learningmaterial` (
  `MasterClass_id` int(11) NOT NULL,
  `learningMaterials_id` int(11) NOT NULL,
  KEY `FK_202rm85l0yrqk8oxkdrxehs00` (`MasterClass_id`),
  CONSTRAINT `FK_202rm85l0yrqk8oxkdrxehs00` FOREIGN KEY (`MasterClass_id`) REFERENCES `masterclass` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `sendDate` datetime DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `messageFolder_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_iq38mox9qghnx2rc8hpdtmros` (`messageFolder_id`),
  CONSTRAINT `FK_iq38mox9qghnx2rc8hpdtmros` FOREIGN KEY (`messageFolder_id`) REFERENCES `messagefolder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `message_recipient`
--

DROP TABLE IF EXISTS `message_recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_recipient` (
  `Message_id` int(11) NOT NULL,
  `recipient` varchar(255) DEFAULT NULL,
  KEY `FK_8pfj2d6fbhxam7421s2kdtevv` (`Message_id`),
  CONSTRAINT `FK_8pfj2d6fbhxam7421s2kdtevv` FOREIGN KEY (`Message_id`) REFERENCES `message` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `messagefolder`
--

DROP TABLE IF EXISTS `messagefolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messagefolder` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `systemFolder` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messagefolder`
--

LOCK TABLES `messagefolder` WRITE;
/*!40000 ALTER TABLE `messagefolder` DISABLE KEYS */;
INSERT INTO `messagefolder` VALUES (1,0,'inbox',''),(2,0,'outbox',''),(3,0,'spambox',''),(4,0,'trashbox','');
/*!40000 ALTER TABLE `messagefolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nutritionist`
--

DROP TABLE IF EXISTS `nutritionist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nutritionist` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `postalAdress` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `userAccount_id` int(11) NOT NULL,
  `curriculum_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_rf5ev1u99hbcb48bgn8r9qb05` (`userAccount_id`),
  KEY `FK_rf3qh56kxq6e6chxkaueec0rl` (`curriculum_id`),
  CONSTRAINT `FK_rf3qh56kxq6e6chxkaueec0rl` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum` (`id`),
  CONSTRAINT `FK_rf5ev1u99hbcb48bgn8r9qb05` FOREIGN KEY (`userAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nutritionist_ingredient`
--

DROP TABLE IF EXISTS `nutritionist_ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nutritionist_ingredient` (
  `Nutritionist_id` int(11) NOT NULL,
  `ingredients_id` int(11) NOT NULL,
  KEY `FK_2t6orxupl8fh8nweytw012nfg` (`ingredients_id`),
  KEY `FK_n6hoqqt1i5cth2fquus81r1x8` (`Nutritionist_id`),
  CONSTRAINT `FK_2t6orxupl8fh8nweytw012nfg` FOREIGN KEY (`ingredients_id`) REFERENCES `ingredient` (`id`),
  CONSTRAINT `FK_n6hoqqt1i5cth2fquus81r1x8` FOREIGN KEY (`Nutritionist_id`) REFERENCES `nutritionist` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `presentation`
--

DROP TABLE IF EXISTS `presentation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presentation` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `abst` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_4jaqs0het40jm6jmhi9fa7dmh` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `creationDate` datetime DEFAULT NULL,
  `dislikes` int(11) NOT NULL,
  `hints` varchar(255) DEFAULT NULL,
  `isQualified` bit(1) NOT NULL,
  `likes` int(11) NOT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_4vwrjj0i3tlqfudg8whn6dbo3` (`ticker`),
  KEY `FK_7lg1wc7klvu29peq7qgtvbpe5` (`category_id`),
  KEY `FK_fy4crwlwx9griyxeaimc5s1i9` (`user_id`),
  CONSTRAINT `FK_7lg1wc7klvu29peq7qgtvbpe5` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_fy4crwlwx9griyxeaimc5s1i9` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recipe_comment`
--

DROP TABLE IF EXISTS `recipe_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_comment` (
  `Recipe_id` int(11) NOT NULL,
  `comments_id` int(11) NOT NULL,
  UNIQUE KEY `UK_t53v10mxplib5fryyt5u1af8h` (`comments_id`),
  KEY `FK_5mfcu1j5wje7ltefjic1bm7rj` (`Recipe_id`),
  CONSTRAINT `FK_5mfcu1j5wje7ltefjic1bm7rj` FOREIGN KEY (`Recipe_id`) REFERENCES `recipe` (`id`),
  CONSTRAINT `FK_t53v10mxplib5fryyt5u1af8h` FOREIGN KEY (`comments_id`) REFERENCES `comment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recipe_contest`
--

DROP TABLE IF EXISTS `recipe_contest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_contest` (
  `recipes_id` int(11) NOT NULL,
  `contests_id` int(11) NOT NULL,
  KEY `FK_5q5t9uofx37tmo7ub36mcrkbv` (`contests_id`),
  KEY `FK_slibesakxcoyhar37nnyc76og` (`recipes_id`),
  CONSTRAINT `FK_5q5t9uofx37tmo7ub36mcrkbv` FOREIGN KEY (`contests_id`) REFERENCES `contest` (`id`),
  CONSTRAINT `FK_slibesakxcoyhar37nnyc76og` FOREIGN KEY (`recipes_id`) REFERENCES `recipe` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recipe_ingredientquantity`
--

DROP TABLE IF EXISTS `recipe_ingredientquantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_ingredientquantity` (
  `Recipe_id` int(11) NOT NULL,
  `ingredientQuantities_id` int(11) NOT NULL,
  UNIQUE KEY `UK_h2vkiao87mmu6h818571d4rpb` (`ingredientQuantities_id`),
  KEY `FK_3co47pp5l00ms0e0929le041b` (`Recipe_id`),
  CONSTRAINT `FK_3co47pp5l00ms0e0929le041b` FOREIGN KEY (`Recipe_id`) REFERENCES `recipe` (`id`),
  CONSTRAINT `FK_h2vkiao87mmu6h818571d4rpb` FOREIGN KEY (`ingredientQuantities_id`) REFERENCES `ingredientquantity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recipe_instructions`
--

DROP TABLE IF EXISTS `recipe_instructions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_instructions` (
  `Recipe_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `hints` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  KEY `FK_g9k65npitjnqi6a0cf5enddhy` (`Recipe_id`),
  CONSTRAINT `FK_g9k65npitjnqi6a0cf5enddhy` FOREIGN KEY (`Recipe_id`) REFERENCES `recipe` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recipe_pictures`
--

DROP TABLE IF EXISTS `recipe_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_pictures` (
  `Recipe_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  KEY `FK_6utknnfv8xgpw67sf88g1v0dc` (`Recipe_id`),
  CONSTRAINT `FK_6utknnfv8xgpw67sf88g1v0dc` FOREIGN KEY (`Recipe_id`) REFERENCES `recipe` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recipecopy`
--

DROP TABLE IF EXISTS `recipecopy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipecopy` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `creationDate` datetime DEFAULT NULL,
  `dislikes` int(11) NOT NULL,
  `hints` varchar(255) DEFAULT NULL,
  `likes` int(11) NOT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recipecopy_instructions`
--

DROP TABLE IF EXISTS `recipecopy_instructions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipecopy_instructions` (
  `RecipeCopy_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `hints` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  KEY `FK_dek0bycwj92b596jrqft8tbww` (`RecipeCopy_id`),
  CONSTRAINT `FK_dek0bycwj92b596jrqft8tbww` FOREIGN KEY (`RecipeCopy_id`) REFERENCES `recipecopy` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recipecopy_pictures`
--

DROP TABLE IF EXISTS `recipecopy_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipecopy_pictures` (
  `RecipeCopy_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  KEY `FK_qovaur9p4eopl3gonrmig6fl5` (`RecipeCopy_id`),
  CONSTRAINT `FK_qovaur9p4eopl3gonrmig6fl5` FOREIGN KEY (`RecipeCopy_id`) REFERENCES `recipecopy` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `socialidentity`
--

DROP TABLE IF EXISTS `socialidentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialidentity` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `nick` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `socialNetworkLink` varchar(255) DEFAULT NULL,
  `socialNetworkName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsor` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `postalAdress` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `userAccount_id` int(11) NOT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `creditCard_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_okfx8h0cn4eidh8ng563vowjc` (`userAccount_id`),
  KEY `FK_b6vsn3qakpq7hkej7e61ocn7m` (`creditCard_id`),
  CONSTRAINT `FK_b6vsn3qakpq7hkej7e61ocn7m` FOREIGN KEY (`creditCard_id`) REFERENCES `creditcard` (`id`),
  CONSTRAINT `FK_okfx8h0cn4eidh8ng563vowjc` FOREIGN KEY (`userAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sponsor_bill`
--

DROP TABLE IF EXISTS `sponsor_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsor_bill` (
  `Sponsor_id` int(11) NOT NULL,
  `bills_id` int(11) NOT NULL,
  UNIQUE KEY `UK_b0t709oi2c84my4pikruyc19n` (`bills_id`),
  KEY `FK_34egf4hlyq3ubht3bwnk6xhbo` (`Sponsor_id`),
  CONSTRAINT `FK_34egf4hlyq3ubht3bwnk6xhbo` FOREIGN KEY (`Sponsor_id`) REFERENCES `sponsor` (`id`),
  CONSTRAINT `FK_b0t709oi2c84my4pikruyc19n` FOREIGN KEY (`bills_id`) REFERENCES `bill` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sponsor_campaign`
--

DROP TABLE IF EXISTS `sponsor_campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsor_campaign` (
  `Sponsor_id` int(11) NOT NULL,
  `campaigns_id` int(11) NOT NULL,
  UNIQUE KEY `UK_17e2n9x4nlxd1okrd7ijg5mt7` (`campaigns_id`),
  KEY `FK_jgqgd5rgngm9wsad7tcitcytw` (`Sponsor_id`),
  CONSTRAINT `FK_17e2n9x4nlxd1okrd7ijg5mt7` FOREIGN KEY (`campaigns_id`) REFERENCES `campaign` (`id`),
  CONSTRAINT `FK_jgqgd5rgngm9wsad7tcitcytw` FOREIGN KEY (`Sponsor_id`) REFERENCES `sponsor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `target_comment`
--

DROP TABLE IF EXISTS `target_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `target_comment` (
  `Target_id` int(11) NOT NULL,
  `comments_id` int(11) NOT NULL,
  UNIQUE KEY `UK_9cgrx2pe37080m6je3aw7jl3r` (`comments_id`),
  CONSTRAINT `FK_9cgrx2pe37080m6je3aw7jl3r` FOREIGN KEY (`comments_id`) REFERENCES `comment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `target_recipe`
--

DROP TABLE IF EXISTS `target_recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `target_recipe` (
  `Target_id` int(11) NOT NULL,
  `votedRecipes_id` int(11) NOT NULL,
  KEY `FK_ha2odrjduthtw98g38lwlxh8y` (`votedRecipes_id`),
  CONSTRAINT `FK_ha2odrjduthtw98g38lwlxh8y` FOREIGN KEY (`votedRecipes_id`) REFERENCES `recipe` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `target_target`
--

DROP TABLE IF EXISTS `target_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `target_target` (
  `Target_id` int(11) NOT NULL,
  `following_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `text`
--

DROP TABLE IF EXISTS `text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `text` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `abst` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `postalAdress` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `userAccount_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_o6s94d43co03sx067ili5760c` (`userAccount_id`),
  CONSTRAINT `FK_o6s94d43co03sx067ili5760c` FOREIGN KEY (`userAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `useraccount`
--

DROP TABLE IF EXISTS `useraccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useraccount` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_csivo9yqa08nrbkog71ycilh5` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraccount`
--

LOCK TABLES `useraccount` WRITE;
/*!40000 ALTER TABLE `useraccount` DISABLE KEYS */;
INSERT INTO `useraccount` VALUES (37,0,'21232f297a57a5a743894a0e4a801fc3','admin');
/*!40000 ALTER TABLE `useraccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraccount_authorities`
--

DROP TABLE IF EXISTS `useraccount_authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useraccount_authorities` (
  `UserAccount_id` int(11) NOT NULL,
  `authority` varchar(255) DEFAULT NULL,
  KEY `FK_b63ua47r0u1m7ccc9lte2ui4r` (`UserAccount_id`),
  CONSTRAINT `FK_b63ua47r0u1m7ccc9lte2ui4r` FOREIGN KEY (`UserAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraccount_authorities`
--

LOCK TABLES `useraccount_authorities` WRITE;
/*!40000 ALTER TABLE `useraccount_authorities` DISABLE KEYS */;
INSERT INTO `useraccount_authorities` VALUES (37,'ADMINISTRATOR');
/*!40000 ALTER TABLE `useraccount_authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `abst` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `winner`
--

DROP TABLE IF EXISTS `winner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `winner` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_nfrdavu210sl0uf2dc0kjwfpj` (`ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-11 17:18:51
