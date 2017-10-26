/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : base_db

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-10-26 23:54:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for brands
-- ----------------------------
DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of brands
-- ----------------------------
INSERT INTO `brands` VALUES ('1', 'A. Lange & Söhne', 'a-lange-soehne', 'a-lange-soehne-56.png', '2017-04-28 18:46:36', '2017-04-28 18:46:36');
INSERT INTO `brands` VALUES ('2', 'Arnold & Son', 'arnold-son', 'arnold-son-69.jpg', '2017-04-28 18:46:36', '2017-04-28 18:46:36');
INSERT INTO `brands` VALUES ('3', 'Audemars Piguet', 'audemars-piguet', 'audemars-piguet-60.jpg', '2017-04-28 18:46:36', '2017-04-28 18:46:36');
INSERT INTO `brands` VALUES ('4', 'Ball Watch', 'ball-watch', 'ball-watch-d5.jpg', '2017-04-28 18:46:37', '2017-04-28 18:46:37');
INSERT INTO `brands` VALUES ('5', 'Baume & Mercier', 'baume-mercier', 'baume-mercier-d2.jpg', '2017-04-28 18:46:37', '2017-04-28 18:46:37');
INSERT INTO `brands` VALUES ('6', 'Bell & Ross', 'bell-ross', 'bell-ross-d9.png', '2017-04-28 18:46:37', '2017-04-28 18:46:37');
INSERT INTO `brands` VALUES ('7', 'Blancpain', 'blancpain', 'blancpain-70.png', '2017-04-28 18:46:37', '2017-04-28 18:46:37');
INSERT INTO `brands` VALUES ('8', 'Breitling', 'breitling', 'breitling-5a.jpg', '2017-04-28 18:46:38', '2017-04-28 18:46:38');
INSERT INTO `brands` VALUES ('9', 'Bremont', 'bremont', 'bremont-30.jpg', '2017-04-28 18:46:41', '2017-04-28 18:46:41');
INSERT INTO `brands` VALUES ('11', 'Bulgari', 'bulgari', 'bulgari-ad.jpg', '2017-04-28 18:46:42', '2017-04-28 18:46:42');
INSERT INTO `brands` VALUES ('12', 'Chopard', 'chopard', 'chopard-a0.jpg', '2017-04-28 18:46:42', '2017-04-28 18:46:42');
INSERT INTO `brands` VALUES ('13', 'Girard-Perregaux', 'girard-perregaux', 'girard-perregaux-36.png', '2017-04-28 18:46:42', '2017-04-28 18:46:42');
INSERT INTO `brands` VALUES ('15', 'Glashütte Original', 'glashuette-original', 'glashuette-original-66.png', '2017-04-28 18:46:43', '2017-04-28 18:46:43');
INSERT INTO `brands` VALUES ('16', 'H. Moser & Cie', 'h-moser-cie', 'moser-a.jpg', '2017-04-28 18:46:43', '2017-04-28 18:46:43');
INSERT INTO `brands` VALUES ('17', 'Hamilton', 'hamilton', 'hamilton-c0.jpg', '2017-04-28 18:46:44', '2017-04-28 18:46:44');
INSERT INTO `brands` VALUES ('18', 'IWC', 'iwc', 'iwc-2b.jpg', '2017-04-28 18:46:45', '2017-04-28 18:46:45');
INSERT INTO `brands` VALUES ('19', 'Jaeger-LeCoultre', 'jaeger-lecoultre', 'jaeger-lecoultre-44.png', '2017-04-28 18:46:48', '2017-04-28 18:46:48');
INSERT INTO `brands` VALUES ('20', 'Junghans', 'junghans', 'junghans-d8.jpg', '2017-04-28 18:46:49', '2017-04-28 18:46:49');
INSERT INTO `brands` VALUES ('21', 'Longines', 'longines', 'longines-bc.png', '2017-04-28 18:46:49', '2017-04-28 18:46:49');
INSERT INTO `brands` VALUES ('22', 'MB&F', 'mbf', 'mb-f-fd.jpg', '2017-04-28 18:47:00', '2017-04-28 18:47:00');
INSERT INTO `brands` VALUES ('23', 'Montblanc', 'montblanc', 'montblanc-ec.gif', '2017-04-28 18:47:00', '2017-04-28 18:47:00');
INSERT INTO `brands` VALUES ('24', 'Nomos Glashütte', 'nomos-glashuette', 'nomos-glashutte-a7.png', '2017-04-28 18:47:01', '2017-04-28 18:47:01');
INSERT INTO `brands` VALUES ('25', 'Omega', 'omega', 'omega-8a.jpg', '2017-04-28 18:47:02', '2017-04-28 18:47:02');
INSERT INTO `brands` VALUES ('26', 'Oris', 'oris', 'oris-38.jpg', '2017-04-28 18:47:10', '2017-04-28 18:47:10');
INSERT INTO `brands` VALUES ('28', 'Parmigiani Fleurier', 'parmigiani-fleurier', 'parmigiani-fleurier-39.jpg', '2017-04-28 18:47:14', '2017-04-28 18:47:14');
INSERT INTO `brands` VALUES ('29', 'Patek Philippe', 'patek-philippe', 'patekphilippe-66.jpg', '2017-04-28 18:47:15', '2017-04-28 18:47:15');
INSERT INTO `brands` VALUES ('30', 'Piaget', 'piaget', 'piaget-fb.jpg', '2017-04-28 18:47:18', '2017-04-28 18:47:18');
INSERT INTO `brands` VALUES ('31', 'Rado', 'rado', 'rado-b.png', '2017-04-28 18:47:19', '2017-04-28 18:47:19');
INSERT INTO `brands` VALUES ('33', 'Rolex', 'rolex', 'rolex-bc.png', '2017-04-28 18:47:19', '2017-04-28 18:47:19');
INSERT INTO `brands` VALUES ('34', 'SevenFriday', 'sevenfriday', 'sevenfriday-85.png', '2017-04-28 18:47:24', '2017-04-28 18:47:24');
INSERT INTO `brands` VALUES ('35', 'Sinn', 'sinn', 'sinn-c3.jpg', '2017-04-28 18:47:24', '2017-04-28 18:47:24');
INSERT INTO `brands` VALUES ('36', 'Peter Speake-Marin', 'peter-speake-marin', 'speake-marin-3.jpg', '2017-04-28 18:47:24', '2017-04-28 18:47:24');
INSERT INTO `brands` VALUES ('37', 'Steinhart', 'steinhart', 'steinhart-31.gif', '2017-04-28 19:14:07', '2017-04-28 19:14:07');
INSERT INTO `brands` VALUES ('38', 'TAG Heuer', 'tag-heuer', 'tag-heuer-ec.png', '2017-04-28 19:14:07', '2017-04-28 19:14:07');
INSERT INTO `brands` VALUES ('39', 'Vacheron Constantin', 'vacheron-constantin', 'vacheron-constantin-7d.jpg', '2017-04-28 19:14:09', '2017-04-28 19:14:09');
INSERT INTO `brands` VALUES ('40', 'Zenith', 'zenith', 'zenith-fc.jpg', '2017-04-28 19:14:11', '2017-04-28 19:14:11');
INSERT INTO `brands` VALUES ('44', 'Bovet', 'bovet', 'Bovet_logo.png', null, null);
INSERT INTO `brands` VALUES ('45', 'Breguet', 'breguet', 'Breguet_logo.png', null, null);
INSERT INTO `brands` VALUES ('46', 'Chanel', 'chanel', 'chanel-logo.jpg', null, null);
INSERT INTO `brands` VALUES ('47', 'Corum', 'corum', 'Corum_logo.png', null, null);
INSERT INTO `brands` VALUES ('48', 'de Grisogono', 'de-grisogono', 'de-grisogono-logo.png', null, null);
INSERT INTO `brands` VALUES ('49', 'Franck Muller', 'franck-muller', 'franck-muller-logo.png', null, null);
INSERT INTO `brands` VALUES ('51', 'Graham', 'graham', 'Graham-logo.jpg', null, null);
INSERT INTO `brands` VALUES ('52', 'Harry Winston', 'harry-winston', 'Harry-Winston-Logo.jpg', null, null);
INSERT INTO `brands` VALUES ('53', 'Hautlence', 'hautlence', 'Hautlence logo.jpg', null, null);
INSERT INTO `brands` VALUES ('54', 'Hublot', 'hublot', 'hublot_logo.png', null, null);
INSERT INTO `brands` VALUES ('55', 'HYT', 'hyt', 'HYT-Logo.jpg', null, null);
INSERT INTO `brands` VALUES ('56', 'Longio', 'longio', 'longio-logo.png', null, null);
INSERT INTO `brands` VALUES ('57', 'Maîtres du Temps', 'maitres-du-temps', 'maitresdutemps_logo.png', null, null);
INSERT INTO `brands` VALUES ('58', 'Maurice Lacroix', 'maurice-lacroix', 'maurice-logo.jpg', null, null);
INSERT INTO `brands` VALUES ('59', 'Officine Panerai', 'officine-panerai', 'panerai_logo.png', null, null);
INSERT INTO `brands` VALUES ('60', 'Roger Dubuis', 'roger-dubuis', 'roger dubuis logo.png', null, null);
INSERT INTO `brands` VALUES ('61', 'Romain Jerome', 'romain-jerome', '77f6ad348f7c0f5c499c950e95dcbc55.jpg', null, null);
INSERT INTO `brands` VALUES ('62', 'Ulysse Nardin', 'ulysse-nardin', 'Ulysse_Nardin_logo.png', null, null);
INSERT INTO `brands` VALUES ('63', 'Urwerk', 'urwerk', 'urwerk-logo.png', null, null);

-- ----------------------------
-- Table structure for family
-- ----------------------------
DROP TABLE IF EXISTS `family`;
CREATE TABLE `family` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `brandId` int(11) NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=624 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of family
-- ----------------------------
INSERT INTO `family` VALUES ('1', '1815', '1815', '1', '2017-04-28 18:46:36', '2017-04-28 18:46:36');
INSERT INTO `family` VALUES ('2', 'Arkade', 'arkade', '1', '2017-04-28 18:46:36', '2017-04-28 18:46:36');
INSERT INTO `family` VALUES ('3', 'Cabaret', 'cabaret', '1', '2017-04-28 18:46:36', '2017-04-28 18:46:36');
INSERT INTO `family` VALUES ('4', 'Lange 1', 'lange-1', '1', '2017-04-28 18:46:36', '2017-04-28 18:46:36');
INSERT INTO `family` VALUES ('5', 'Richard Lange', 'richard-lange', '1', '2017-04-28 18:46:36', '2017-04-28 18:46:36');
INSERT INTO `family` VALUES ('6', 'Saxonia', 'saxonia', '1', '2017-04-28 18:46:36', '2017-04-28 18:46:36');
INSERT INTO `family` VALUES ('7', 'Tourbillon', 'tourbillon', '1', '2017-04-28 18:46:36', '2017-04-28 18:46:36');
INSERT INTO `family` VALUES ('8', 'Zeitwerk', 'zeitwerk', '1', '2017-04-28 18:46:36', '2017-04-28 18:46:36');
INSERT INTO `family` VALUES ('9', 'Instrument Collection', 'instrument-collection', '2', '2017-04-28 18:46:36', '2017-04-28 18:46:36');
INSERT INTO `family` VALUES ('10', 'Métiers d\'Art', 'metiers-dart', '2', '2017-04-28 18:46:36', '2017-04-28 18:46:36');
INSERT INTO `family` VALUES ('11', 'Royal Collection', 'royal-collection', '2', '2017-04-28 18:46:36', '2017-04-28 18:46:36');
INSERT INTO `family` VALUES ('12', 'Royal Oak', 'royal-oak', '3', '2017-04-28 18:46:36', '2017-04-28 18:46:36');
INSERT INTO `family` VALUES ('13', 'Royal Oak Offshore', 'royal-oak-offshore', '3', '2017-04-28 18:46:37', '2017-04-28 18:46:37');
INSERT INTO `family` VALUES ('14', 'Engineer II', 'engineer-ii', '4', '2017-04-28 18:46:37', '2017-04-28 18:46:37');
INSERT INTO `family` VALUES ('15', 'Official Railroad Watch', 'official-railroad-watch', '4', '2017-04-28 18:46:37', '2017-04-28 18:46:37');
INSERT INTO `family` VALUES ('16', 'Capeland', 'capeland', '5', '2017-04-28 18:46:37', '2017-04-28 18:46:37');
INSERT INTO `family` VALUES ('17', 'Classima', 'classima', '5', '2017-04-28 18:46:37', '2017-04-28 18:46:37');
INSERT INTO `family` VALUES ('18', 'Clifton', 'clifton', '5', '2017-04-28 18:46:37', '2017-04-28 18:46:37');
INSERT INTO `family` VALUES ('19', 'Hampton', 'hampton', '5', '2017-04-28 18:46:37', '2017-04-28 18:46:37');
INSERT INTO `family` VALUES ('20', 'Linea', 'linea', '5', '2017-04-28 18:46:37', '2017-04-28 18:46:37');
INSERT INTO `family` VALUES ('21', 'Aviation', 'aviation', '6', '2017-04-28 18:46:37', '2017-04-28 18:46:37');
INSERT INTO `family` VALUES ('22', 'Marine', 'marine', '6', '2017-04-28 18:46:37', '2017-04-28 18:46:37');
INSERT INTO `family` VALUES ('23', 'Vintage', 'vintage', '6', '2017-04-28 18:46:37', '2017-04-28 18:46:37');
INSERT INTO `family` VALUES ('24', 'Fifty Fathoms', 'fifty-fathoms', '7', '2017-04-28 18:46:37', '2017-04-28 18:46:37');
INSERT INTO `family` VALUES ('25', 'L-evolution', 'l-evolution', '7', '2017-04-28 18:46:38', '2017-04-28 18:46:38');
INSERT INTO `family` VALUES ('26', 'Le Brassus', 'le-brassus', '7', '2017-04-28 18:46:38', '2017-04-28 18:46:38');
INSERT INTO `family` VALUES ('27', 'Villeret', 'villeret', '7', '2017-04-28 18:46:38', '2017-04-28 18:46:38');
INSERT INTO `family` VALUES ('28', 'Avenger', 'avenger', '8', '2017-04-28 18:46:38', '2017-04-28 18:46:38');
INSERT INTO `family` VALUES ('29', 'Breitling for Bentley', 'breitling-for-bentley', '8', '2017-04-28 18:46:38', '2017-04-28 18:46:38');
INSERT INTO `family` VALUES ('30', 'Chrono-Matic', 'chrono-matic', '8', '2017-04-28 18:46:38', '2017-04-28 18:46:38');
INSERT INTO `family` VALUES ('31', 'Chronoliner', 'chronoliner', '8', '2017-04-28 18:46:38', '2017-04-28 18:46:38');
INSERT INTO `family` VALUES ('32', 'Chronomat', 'chronomat', '8', '2017-04-28 18:46:38', '2017-04-28 18:46:38');
INSERT INTO `family` VALUES ('33', 'Cockpit', 'cockpit', '8', '2017-04-28 18:46:39', '2017-04-28 18:46:39');
INSERT INTO `family` VALUES ('34', 'Colt', 'colt', '8', '2017-04-28 18:46:39', '2017-04-28 18:46:39');
INSERT INTO `family` VALUES ('35', 'Galactic', 'galactic', '8', '2017-04-28 18:46:39', '2017-04-28 18:46:39');
INSERT INTO `family` VALUES ('36', 'Merchandise', 'merchandise', '8', '2017-04-28 18:46:40', '2017-04-28 18:46:40');
INSERT INTO `family` VALUES ('37', 'Montbrillant', 'montbrillant', '8', '2017-04-28 18:46:40', '2017-04-28 18:46:40');
INSERT INTO `family` VALUES ('38', 'Navitimer', 'navitimer', '8', '2017-04-28 18:46:40', '2017-04-28 18:46:40');
INSERT INTO `family` VALUES ('39', 'Professional', 'professional', '8', '2017-04-28 18:46:40', '2017-04-28 18:46:40');
INSERT INTO `family` VALUES ('40', 'Superocean', 'superocean', '8', '2017-04-28 18:46:41', '2017-04-28 18:46:41');
INSERT INTO `family` VALUES ('41', 'Transocean', 'transocean', '8', '2017-04-28 18:46:41', '2017-04-28 18:46:41');
INSERT INTO `family` VALUES ('42', 'Windrider', 'windrider', '8', '2017-04-28 18:46:41', '2017-04-28 18:46:41');
INSERT INTO `family` VALUES ('43', 'ALT1', 'alt1', '9', '2017-04-28 18:46:41', '2017-04-28 18:46:41');
INSERT INTO `family` VALUES ('44', 'America\'s Cup', 'americas-cup', '9', '2017-04-28 18:46:41', '2017-04-28 18:46:41');
INSERT INTO `family` VALUES ('45', 'Boeing', 'boeing', '9', '2017-04-28 18:46:41', '2017-04-28 18:46:41');
INSERT INTO `family` VALUES ('46', 'Jaguar', 'jaguar', '9', '2017-04-28 18:46:41', '2017-04-28 18:46:41');
INSERT INTO `family` VALUES ('47', 'Martin-Baker', 'martin-baker', '9', '2017-04-28 18:46:41', '2017-04-28 18:46:41');
INSERT INTO `family` VALUES ('48', 'Solo', 'solo', '9', '2017-04-28 18:46:42', '2017-04-28 18:46:42');
INSERT INTO `family` VALUES ('49', 'Special & Limited', 'special-limited', '9', '2017-04-28 18:46:42', '2017-04-28 18:46:42');
INSERT INTO `family` VALUES ('50', 'Supermarine', 'supermarine', '9', '2017-04-28 18:46:42', '2017-04-28 18:46:42');
INSERT INTO `family` VALUES ('51', 'U2', 'u2', '9', '2017-04-28 18:46:42', '2017-04-28 18:46:42');
INSERT INTO `family` VALUES ('54', 'B.Zero1', 'bzero1', '11', '2017-04-28 18:46:42', '2017-04-28 18:46:42');
INSERT INTO `family` VALUES ('55', 'Bulgari Bulgari', 'bulgari-bulgari', '11', '2017-04-28 18:46:42', '2017-04-28 18:46:42');
INSERT INTO `family` VALUES ('56', 'Octo', 'octo', '11', '2017-04-28 18:46:42', '2017-04-28 18:46:42');
INSERT INTO `family` VALUES ('57', 'Serpenti', 'serpenti', '11', '2017-04-28 18:46:42', '2017-04-28 18:46:42');
INSERT INTO `family` VALUES ('58', 'Classic Racing', 'classic-racing', '12', '2017-04-28 18:46:42', '2017-04-28 18:46:42');
INSERT INTO `family` VALUES ('59', 'Imperiale', 'imperiale', '12', '2017-04-28 18:46:42', '2017-04-28 18:46:42');
INSERT INTO `family` VALUES ('60', 'L.U.C', 'luc', '12', '2017-04-28 18:46:42', '2017-04-28 18:46:42');
INSERT INTO `family` VALUES ('61', '1966', '1966', '13', '2017-04-28 18:46:42', '2017-04-28 18:46:42');
INSERT INTO `family` VALUES ('62', 'Laureato', 'laureato', '13', '2017-04-28 18:46:43', '2017-04-28 18:46:43');
INSERT INTO `family` VALUES ('64', 'Art & Technik', 'art-technik', '15', '2017-04-28 18:46:43', '2017-04-28 18:46:43');
INSERT INTO `family` VALUES ('65', 'Lady Serenade', 'lady-serenade', '15', '2017-04-28 18:46:43', '2017-04-28 18:46:43');
INSERT INTO `family` VALUES ('66', 'Pano', 'pano', '15', '2017-04-28 18:46:43', '2017-04-28 18:46:43');
INSERT INTO `family` VALUES ('67', 'Pavonina', 'pavonina', '15', '2017-04-28 18:46:43', '2017-04-28 18:46:43');
INSERT INTO `family` VALUES ('68', 'Senator', 'senator', '15', '2017-04-28 18:46:43', '2017-04-28 18:46:43');
INSERT INTO `family` VALUES ('69', 'Twentieth Century Vintage', 'twentieth-century-vintage', '15', '2017-04-28 18:46:43', '2017-04-28 18:46:43');
INSERT INTO `family` VALUES ('70', 'Endeavour', 'endeavour', '16', '2017-04-28 18:46:43', '2017-04-28 18:46:43');
INSERT INTO `family` VALUES ('71', 'Henry', 'henry', '16', '2017-04-28 18:46:43', '2017-04-28 18:46:43');
INSERT INTO `family` VALUES ('72', 'Heritage', 'heritage', '16', '2017-04-28 18:46:43', '2017-04-28 18:46:43');
INSERT INTO `family` VALUES ('73', 'Pioneer', 'pioneer', '16', '2017-04-28 18:46:44', '2017-04-28 18:46:44');
INSERT INTO `family` VALUES ('74', 'Venturer', 'venturer', '16', '2017-04-28 18:46:44', '2017-04-28 18:46:44');
INSERT INTO `family` VALUES ('75', 'American Classic Jazzmaster', 'american-classic-jazzmaster', '17', '2017-04-28 18:46:44', '2017-04-28 18:46:44');
INSERT INTO `family` VALUES ('76', 'American Classic Ladies', 'american-classic-ladies', '17', '2017-04-28 18:46:44', '2017-04-28 18:46:44');
INSERT INTO `family` VALUES ('77', 'American Classic Shaped', 'american-classic-shaped', '17', '2017-04-28 18:46:44', '2017-04-28 18:46:44');
INSERT INTO `family` VALUES ('78', 'Jazzmaster', 'jazzmaster', '17', '2017-04-28 18:46:44', '2017-04-28 18:46:44');
INSERT INTO `family` VALUES ('79', 'Khaki Action', 'khaki-action', '17', '2017-04-28 18:46:44', '2017-04-28 18:46:44');
INSERT INTO `family` VALUES ('80', 'Khaki Aviation', 'khaki-aviation', '17', '2017-04-28 18:46:44', '2017-04-28 18:46:44');
INSERT INTO `family` VALUES ('81', 'Khaki Field', 'khaki-field', '17', '2017-04-28 18:46:45', '2017-04-28 18:46:45');
INSERT INTO `family` VALUES ('82', 'Khaki Navy', 'khaki-navy', '17', '2017-04-28 18:46:45', '2017-04-28 18:46:45');
INSERT INTO `family` VALUES ('83', 'Timeless Classic', 'timeless-classic', '17', '2017-04-28 18:46:45', '2017-04-28 18:46:45');
INSERT INTO `family` VALUES ('84', 'Big Pilot', 'big-pilot', '18', '2017-04-28 18:46:45', '2017-04-28 18:46:45');
INSERT INTO `family` VALUES ('85', 'Da Vinci', 'da-vinci', '18', '2017-04-28 18:46:46', '2017-04-28 18:46:46');
INSERT INTO `family` VALUES ('86', 'Grande Complication', 'grande-complication', '18', '2017-04-28 18:46:46', '2017-04-28 18:46:46');
INSERT INTO `family` VALUES ('87', 'GST Aquatimer', 'gst-aquatimer', '18', '2017-04-28 18:46:46', '2017-04-28 18:46:46');
INSERT INTO `family` VALUES ('88', 'Ingenieur', 'ingenieur', '18', '2017-04-28 18:46:46', '2017-04-28 18:46:46');
INSERT INTO `family` VALUES ('89', 'Pilot', 'pilot', '18', '2017-04-28 18:46:46', '2017-04-28 18:46:46');
INSERT INTO `family` VALUES ('90', 'Portofino', 'portofino', '18', '2017-04-28 18:46:47', '2017-04-28 18:46:47');
INSERT INTO `family` VALUES ('91', 'Portuguese', 'portuguese', '18', '2017-04-28 18:46:47', '2017-04-28 18:46:47');
INSERT INTO `family` VALUES ('92', 'Vintage Collection', 'vintage-collection', '18', '2017-04-28 18:46:48', '2017-04-28 18:46:48');
INSERT INTO `family` VALUES ('93', 'AMVOX', 'amvox', '19', '2017-04-28 18:46:48', '2017-04-28 18:46:48');
INSERT INTO `family` VALUES ('94', 'Duomètre', 'duometre', '19', '2017-04-28 18:46:48', '2017-04-28 18:46:48');
INSERT INTO `family` VALUES ('95', 'Geophysic', 'geophysic', '19', '2017-04-28 18:46:48', '2017-04-28 18:46:48');
INSERT INTO `family` VALUES ('96', 'Master', 'master', '19', '2017-04-28 18:46:48', '2017-04-28 18:46:48');
INSERT INTO `family` VALUES ('97', 'Master Extreme', 'master-extreme', '19', '2017-04-28 18:46:48', '2017-04-28 18:46:48');
INSERT INTO `family` VALUES ('98', 'Rendez-Vous', 'rendez-vous', '19', '2017-04-28 18:46:48', '2017-04-28 18:46:48');
INSERT INTO `family` VALUES ('99', 'Reverso', 'reverso', '19', '2017-04-28 18:46:48', '2017-04-28 18:46:48');
INSERT INTO `family` VALUES ('100', 'Max Bill', 'max-bill', '20', '2017-04-28 18:46:49', '2017-04-28 18:46:49');
INSERT INTO `family` VALUES ('101', 'Admiral', 'admiral', '21', '2017-04-28 18:46:49', '2017-04-28 18:46:49');
INSERT INTO `family` VALUES ('102', 'Conquest', 'conquest', '21', '2017-04-28 18:46:49', '2017-04-28 18:46:49');
INSERT INTO `family` VALUES ('103', 'Conquest Classic', 'conquest-classic', '21', '2017-04-28 18:46:50', '2017-04-28 18:46:50');
INSERT INTO `family` VALUES ('104', 'DolceVita', 'dolcevita', '21', '2017-04-28 18:46:50', '2017-04-28 18:46:50');
INSERT INTO `family` VALUES ('105', 'Equestrian', 'equestrian', '21', '2017-04-28 18:46:51', '2017-04-28 18:46:51');
INSERT INTO `family` VALUES ('106', 'Evidenza', 'evidenza', '21', '2017-04-28 18:46:51', '2017-04-28 18:46:51');
INSERT INTO `family` VALUES ('107', 'GrandeVitesse', 'grandevitesse', '21', '2017-04-28 18:46:51', '2017-04-28 18:46:51');
INSERT INTO `family` VALUES ('108', 'HydroConquest', 'hydroconquest', '21', '2017-04-28 18:46:52', '2017-04-28 18:46:52');
INSERT INTO `family` VALUES ('109', 'La Grande Classique', 'la-grande-classique', '21', '2017-04-28 18:46:53', '2017-04-28 18:46:53');
INSERT INTO `family` VALUES ('110', 'Les Grandes Classiques', 'les-grandes-classiques', '21', '2017-04-28 18:46:54', '2017-04-28 18:46:54');
INSERT INTO `family` VALUES ('111', 'Master Collection', 'master-collection', '21', '2017-04-28 18:46:57', '2017-04-28 18:46:57');
INSERT INTO `family` VALUES ('112', 'Mini', 'mini', '21', '2017-04-28 18:46:58', '2017-04-28 18:46:58');
INSERT INTO `family` VALUES ('113', 'PrimaLuna', 'primaluna', '21', '2017-04-28 18:46:58', '2017-04-28 18:46:58');
INSERT INTO `family` VALUES ('114', 'Saint Imier', 'saint-imier', '21', '2017-04-28 18:46:59', '2017-04-28 18:46:59');
INSERT INTO `family` VALUES ('115', 'Symphonette', 'symphonette', '21', '2017-04-28 18:47:00', '2017-04-28 18:47:00');
INSERT INTO `family` VALUES ('116', 'Horological Machines', 'horological-machines', '22', '2017-04-28 18:47:00', '2017-04-28 18:47:00');
INSERT INTO `family` VALUES ('117', 'Legacy Machines', 'legacy-machines', '22', '2017-04-28 18:47:00', '2017-04-28 18:47:00');
INSERT INTO `family` VALUES ('118', 'Heritage Spirit', 'heritage-spirit', '23', '2017-04-28 18:47:00', '2017-04-28 18:47:00');
INSERT INTO `family` VALUES ('119', 'Meisterstück Heritage', 'meisterstueck-heritage', '23', '2017-04-28 18:47:01', '2017-04-28 18:47:01');
INSERT INTO `family` VALUES ('120', 'Nicolas Rieussec', 'nicolas-rieussec', '23', '2017-04-28 18:47:01', '2017-04-28 18:47:01');
INSERT INTO `family` VALUES ('121', 'Star', 'star', '23', '2017-04-28 18:47:01', '2017-04-28 18:47:01');
INSERT INTO `family` VALUES ('122', 'Star 4810', 'star-4810', '23', '2017-04-28 18:47:01', '2017-04-28 18:47:01');
INSERT INTO `family` VALUES ('123', 'Timewalker', 'timewalker', '23', '2017-04-28 18:47:01', '2017-04-28 18:47:01');
INSERT INTO `family` VALUES ('124', 'Tradition', 'tradition', '23', '2017-04-28 18:47:01', '2017-04-28 18:47:01');
INSERT INTO `family` VALUES ('125', 'Ahoi', 'ahoi', '24', '2017-04-28 18:47:01', '2017-04-28 18:47:01');
INSERT INTO `family` VALUES ('126', 'Club', 'club', '24', '2017-04-28 18:47:02', '2017-04-28 18:47:02');
INSERT INTO `family` VALUES ('127', 'Lambda', 'lambda', '24', '2017-04-28 18:47:02', '2017-04-28 18:47:02');
INSERT INTO `family` VALUES ('128', 'Ludwig', 'ludwig', '24', '2017-04-28 18:47:02', '2017-04-28 18:47:02');
INSERT INTO `family` VALUES ('129', 'Lux', 'lux', '24', '2017-04-28 18:47:02', '2017-04-28 18:47:02');
INSERT INTO `family` VALUES ('130', 'Metro', 'metro', '24', '2017-04-28 18:47:02', '2017-04-28 18:47:02');
INSERT INTO `family` VALUES ('131', 'Minimatik', 'minimatik', '24', '2017-04-28 18:47:02', '2017-04-28 18:47:02');
INSERT INTO `family` VALUES ('132', 'Orion', 'orion', '24', '2017-04-28 18:47:02', '2017-04-28 18:47:02');
INSERT INTO `family` VALUES ('133', 'Tangente', 'tangente', '24', '2017-04-28 18:47:02', '2017-04-28 18:47:02');
INSERT INTO `family` VALUES ('134', 'Tangomat', 'tangomat', '24', '2017-04-28 18:47:02', '2017-04-28 18:47:02');
INSERT INTO `family` VALUES ('135', 'Tetra', 'tetra', '24', '2017-04-28 18:47:02', '2017-04-28 18:47:02');
INSERT INTO `family` VALUES ('136', 'Zürich', 'zuerich', '24', '2017-04-28 18:47:02', '2017-04-28 18:47:02');
INSERT INTO `family` VALUES ('137', 'Aqua Terra', 'aqua-terra', '25', '2017-04-28 18:47:02', '2017-04-28 18:47:02');
INSERT INTO `family` VALUES ('138', 'Constellation', 'constellation', '25', '2017-04-28 18:47:03', '2017-04-28 18:47:03');
INSERT INTO `family` VALUES ('139', 'De Ville', 'de-ville', '25', '2017-04-28 18:47:06', '2017-04-28 18:47:06');
INSERT INTO `family` VALUES ('140', 'Globemaster', 'globemaster', '25', '2017-04-28 18:47:06', '2017-04-28 18:47:06');
INSERT INTO `family` VALUES ('141', 'LadyMatic', 'ladymatic', '25', '2017-04-28 18:47:07', '2017-04-28 18:47:07');
INSERT INTO `family` VALUES ('142', 'Miscellaneous', 'miscellaneous', '25', '2017-04-28 18:47:07', '2017-04-28 18:47:07');
INSERT INTO `family` VALUES ('143', 'Museum Collection', 'museum-collection', '25', '2017-04-28 18:47:07', '2017-04-28 18:47:07');
INSERT INTO `family` VALUES ('144', 'Seamaster 300', 'seamaster-300', '25', '2017-04-28 18:47:07', '2017-04-28 18:47:07');
INSERT INTO `family` VALUES ('145', 'Seamaster Bullhead', 'seamaster-bullhead', '25', '2017-04-28 18:47:07', '2017-04-28 18:47:07');
INSERT INTO `family` VALUES ('146', 'Seamaster Diver 300M', 'seamaster-diver-300m', '25', '2017-04-28 18:47:07', '2017-04-28 18:47:07');
INSERT INTO `family` VALUES ('147', 'Seamaster Planet Ocean', 'seamaster-planet-ocean', '25', '2017-04-28 18:47:08', '2017-04-28 18:47:08');
INSERT INTO `family` VALUES ('148', 'Seamaster PloProf', 'seamaster-ploprof', '25', '2017-04-28 18:47:09', '2017-04-28 18:47:09');
INSERT INTO `family` VALUES ('149', 'Speedmaster', 'speedmaster', '25', '2017-04-28 18:47:09', '2017-04-28 18:47:09');
INSERT INTO `family` VALUES ('150', 'Speedmaster Hand Wound', 'speedmaster-hand-wound', '25', '2017-04-28 18:47:09', '2017-04-28 18:47:09');
INSERT INTO `family` VALUES ('151', 'Trésor', 'tresor', '25', '2017-04-28 18:47:10', '2017-04-28 18:47:10');
INSERT INTO `family` VALUES ('152', 'Culture', 'culture', '26', '2017-04-28 18:47:10', '2017-04-28 18:47:10');
INSERT INTO `family` VALUES ('153', 'Diving', 'diving', '26', '2017-04-28 18:47:10', '2017-04-28 18:47:10');
INSERT INTO `family` VALUES ('154', 'Motor Sport', 'motor-sport', '26', '2017-04-28 18:47:11', '2017-04-28 18:47:11');
INSERT INTO `family` VALUES ('155', 'Clocks & Instruments', 'clocks-instruments', '59', '2017-04-28 18:47:11', '2017-04-28 18:47:11');
INSERT INTO `family` VALUES ('156', 'Ferrari', 'ferrari', '59', '2017-04-28 18:47:11', '2017-04-28 18:47:11');
INSERT INTO `family` VALUES ('157', 'Luminor', 'luminor', '59', '2017-04-28 18:47:11', '2017-04-28 18:47:11');
INSERT INTO `family` VALUES ('158', 'Luminor 1950', 'luminor-1950', '59', '2017-04-28 18:47:12', '2017-04-28 18:47:12');
INSERT INTO `family` VALUES ('159', 'Luminor Due', 'luminor-due', '59', '2017-04-28 18:47:13', '2017-04-28 18:47:13');
INSERT INTO `family` VALUES ('160', 'Mare Nostrum', 'mare-nostrum', '59', '2017-04-28 18:47:13', '2017-04-28 18:47:13');
INSERT INTO `family` VALUES ('161', 'Pocket Watches', 'pocket-watches', '59', '2017-04-28 18:47:13', '2017-04-28 18:47:13');
INSERT INTO `family` VALUES ('162', 'Pre-Vendome', 'pre-vendome', '59', '2017-04-28 18:47:13', '2017-04-28 18:47:13');
INSERT INTO `family` VALUES ('163', 'Radiomir', 'radiomir', '59', '2017-04-28 18:47:13', '2017-04-28 18:47:13');
INSERT INTO `family` VALUES ('164', 'Radiomir 1940', 'radiomir-1940', '59', '2017-04-28 18:47:14', '2017-04-28 18:47:14');
INSERT INTO `family` VALUES ('165', 'Bugatti', 'bugatti', '28', '2017-04-28 18:47:14', '2017-04-28 18:47:14');
INSERT INTO `family` VALUES ('166', 'Kalpa', 'kalpa', '28', '2017-04-28 18:47:14', '2017-04-28 18:47:14');
INSERT INTO `family` VALUES ('167', 'Pershing', 'pershing', '28', '2017-04-28 18:47:15', '2017-04-28 18:47:15');
INSERT INTO `family` VALUES ('168', 'Tonda', 'tonda', '28', '2017-04-28 18:47:15', '2017-04-28 18:47:15');
INSERT INTO `family` VALUES ('169', 'Toric', 'toric', '28', '2017-04-28 18:47:15', '2017-04-28 18:47:15');
INSERT INTO `family` VALUES ('170', '175th Commemorative Watches', '175th-commemorative-watches', '29', '2017-04-28 18:47:15', '2017-04-28 18:47:15');
INSERT INTO `family` VALUES ('171', 'Aquanaut', 'aquanaut', '29', '2017-04-28 18:47:15', '2017-04-28 18:47:15');
INSERT INTO `family` VALUES ('172', 'Calatrava', 'calatrava', '29', '2017-04-28 18:47:15', '2017-04-28 18:47:15');
INSERT INTO `family` VALUES ('173', 'Complications', 'complications', '29', '2017-04-28 18:47:16', '2017-04-28 18:47:16');
INSERT INTO `family` VALUES ('174', 'Golden Ellipse', 'golden-ellipse', '29', '2017-04-28 18:47:16', '2017-04-28 18:47:16');
INSERT INTO `family` VALUES ('175', 'Gondolo', 'gondolo', '29', '2017-04-28 18:47:16', '2017-04-28 18:47:16');
INSERT INTO `family` VALUES ('176', 'Grand Complications', 'grand-complications', '29', '2017-04-28 18:47:16', '2017-04-28 18:47:16');
INSERT INTO `family` VALUES ('177', 'Nautilus', 'nautilus', '29', '2017-04-28 18:47:17', '2017-04-28 18:47:17');
INSERT INTO `family` VALUES ('178', 'Twenty~4', 'twenty4', '29', '2017-04-28 18:47:18', '2017-04-28 18:47:18');
INSERT INTO `family` VALUES ('179', 'Altiplano', 'altiplano', '30', '2017-04-28 18:47:18', '2017-04-28 18:47:18');
INSERT INTO `family` VALUES ('180', 'Emperador', 'emperador', '30', '2017-04-28 18:47:18', '2017-04-28 18:47:18');
INSERT INTO `family` VALUES ('181', 'Gouverneur', 'gouverneur', '30', '2017-04-28 18:47:18', '2017-04-28 18:47:18');
INSERT INTO `family` VALUES ('182', 'Polo', 'polo', '30', '2017-04-28 18:47:19', '2017-04-28 18:47:19');
INSERT INTO `family` VALUES ('183', 'HyperChrome', 'hyperchrome', '31', '2017-04-28 18:47:19', '2017-04-28 18:47:19');
INSERT INTO `family` VALUES ('184', 'Oval', 'oval', '31', '2017-04-28 18:47:19', '2017-04-28 18:47:19');
INSERT INTO `family` VALUES ('185', 'RX', 'rx', '31', '2017-04-28 18:47:19', '2017-04-28 18:47:19');
INSERT INTO `family` VALUES ('186', 'Cellini', 'cellini', '33', '2017-04-28 18:47:19', '2017-04-28 18:47:19');
INSERT INTO `family` VALUES ('187', 'Datejust', 'datejust', '33', '2017-04-28 18:47:19', '2017-04-28 18:47:19');
INSERT INTO `family` VALUES ('188', 'Day-Date', 'day-date', '33', '2017-04-28 18:47:20', '2017-04-28 18:47:20');
INSERT INTO `family` VALUES ('189', 'Daytona', 'daytona', '33', '2017-04-28 18:47:21', '2017-04-28 18:47:21');
INSERT INTO `family` VALUES ('190', 'Explorer', 'explorer', '33', '2017-04-28 18:47:22', '2017-04-28 18:47:22');
INSERT INTO `family` VALUES ('191', 'Explorer II', 'explorer-ii', '33', '2017-04-28 18:47:22', '2017-04-28 18:47:22');
INSERT INTO `family` VALUES ('192', 'GMT-Master', 'gmt-master', '33', '2017-04-28 18:47:22', '2017-04-28 18:47:22');
INSERT INTO `family` VALUES ('193', 'Lady-Datejust', 'lady-datejust', '33', '2017-04-28 18:47:22', '2017-04-28 18:47:22');
INSERT INTO `family` VALUES ('194', 'Milgauss', 'milgauss', '33', '2017-04-28 18:47:23', '2017-04-28 18:47:23');
INSERT INTO `family` VALUES ('195', 'Oyster Perpetual', 'oyster-perpetual', '33', '2017-04-28 18:47:23', '2017-04-28 18:47:23');
INSERT INTO `family` VALUES ('196', 'Pearlmaster', 'pearlmaster', '33', '2017-04-28 18:47:23', '2017-04-28 18:47:23');
INSERT INTO `family` VALUES ('197', 'Sea-Dweller', 'sea-dweller', '33', '2017-04-28 18:47:23', '2017-04-28 18:47:23');
INSERT INTO `family` VALUES ('198', 'Sky-Dweller', 'sky-dweller', '33', '2017-04-28 18:47:23', '2017-04-28 18:47:23');
INSERT INTO `family` VALUES ('199', 'Submariner', 'submariner', '33', '2017-04-28 18:47:23', '2017-04-28 18:47:23');
INSERT INTO `family` VALUES ('200', 'Yacht-Master', 'yacht-master', '33', '2017-04-28 18:47:24', '2017-04-28 18:47:24');
INSERT INTO `family` VALUES ('201', 'M-Series', 'm-series', '34', '2017-04-28 18:47:24', '2017-04-28 18:47:24');
INSERT INTO `family` VALUES ('202', 'P-Series', 'p-series', '34', '2017-04-28 18:47:24', '2017-04-28 18:47:24');
INSERT INTO `family` VALUES ('203', 'V-Series', 'v-series', '34', '2017-04-28 18:47:24', '2017-04-28 18:47:24');
INSERT INTO `family` VALUES ('204', 'Diving Watches', 'diving-watches', '35', '2017-04-28 18:47:24', '2017-04-28 18:47:24');
INSERT INTO `family` VALUES ('205', 'Instrument Chronographs', 'instrument-chronographs', '35', '2017-04-28 18:47:24', '2017-04-28 18:47:24');
INSERT INTO `family` VALUES ('206', 'Instrument Watches', 'instrument-watches', '35', '2017-04-28 18:47:24', '2017-04-28 18:47:24');
INSERT INTO `family` VALUES ('207', 'Cabinet des Mystères', 'cabinet-des-mysteres', '36', '2017-04-28 18:47:24', '2017-04-28 18:47:24');
INSERT INTO `family` VALUES ('208', 'J-Class', 'j-class', '36', '2017-04-28 18:47:24', '2017-04-28 18:47:24');
INSERT INTO `family` VALUES ('209', 'Spirit', 'spirit', '36', '2017-04-28 18:47:24', '2017-04-28 18:47:24');
INSERT INTO `family` VALUES ('210', 'Apollon', 'apollon', '37', '2017-04-28 19:14:07', '2017-04-28 19:14:07');
INSERT INTO `family` VALUES ('211', 'Diver', 'diver', '37', '2017-04-28 19:14:07', '2017-04-28 19:14:07');
INSERT INTO `family` VALUES ('212', 'Military', 'military', '37', '2017-04-28 19:14:07', '2017-04-28 19:14:07');
INSERT INTO `family` VALUES ('213', 'Racing', 'racing', '37', '2017-04-28 19:14:07', '2017-04-28 19:14:07');
INSERT INTO `family` VALUES ('214', 'Aquaracer', 'aquaracer', '38', '2017-04-28 19:14:07', '2017-04-28 19:14:07');
INSERT INTO `family` VALUES ('215', 'Carrera', 'carrera', '38', '2017-04-28 19:14:08', '2017-04-28 19:14:08');
INSERT INTO `family` VALUES ('216', 'Formula 1', 'formula-1', '38', '2017-04-28 19:14:09', '2017-04-28 19:14:09');
INSERT INTO `family` VALUES ('217', 'Link', 'link', '38', '2017-04-28 19:14:09', '2017-04-28 19:14:09');
INSERT INTO `family` VALUES ('218', 'Monaco', 'monaco', '38', '2017-04-28 19:14:09', '2017-04-28 19:14:09');
INSERT INTO `family` VALUES ('219', 'None', 'none', '38', '2017-04-28 19:14:09', '2017-04-28 19:14:09');
INSERT INTO `family` VALUES ('220', '1972', '1972', '39', '2017-04-28 19:14:09', '2017-04-28 19:14:09');
INSERT INTO `family` VALUES ('221', 'Artelier Cabinotiers Special Order', 'artelier-cabinotiers-special-order', '39', '2017-04-28 19:14:09', '2017-04-28 19:14:09');
INSERT INTO `family` VALUES ('222', 'Harmony', 'harmony', '39', '2017-04-28 19:14:09', '2017-04-28 19:14:09');
INSERT INTO `family` VALUES ('223', 'Historiques', 'historiques', '39', '2017-04-28 19:14:10', '2017-04-28 19:14:10');
INSERT INTO `family` VALUES ('224', 'Malte', 'malte', '39', '2017-04-28 19:14:10', '2017-04-28 19:14:10');
INSERT INTO `family` VALUES ('225', 'Overseas', 'overseas', '39', '2017-04-28 19:14:10', '2017-04-28 19:14:10');
INSERT INTO `family` VALUES ('226', 'Patrimony', 'patrimony', '39', '2017-04-28 19:14:10', '2017-04-28 19:14:10');
INSERT INTO `family` VALUES ('227', 'Quai de lIle', 'quai-de-lile', '39', '2017-04-28 19:14:11', '2017-04-28 19:14:11');
INSERT INTO `family` VALUES ('228', 'Traditionnelle', 'traditionnelle', '39', '2017-04-28 19:14:11', '2017-04-28 19:14:11');
INSERT INTO `family` VALUES ('229', 'Academy', 'academy', '40', '2017-04-28 19:14:11', '2017-04-28 19:14:11');
INSERT INTO `family` VALUES ('230', 'El Primero', 'el-primero', '40', '2017-04-28 19:14:11', '2017-04-28 19:14:11');
INSERT INTO `family` VALUES ('231', 'Elite', 'elite', '40', '2017-04-28 19:14:11', '2017-04-28 19:14:11');
INSERT INTO `family` VALUES ('232', 'Datograph', 'datograph', '1', null, null);
INSERT INTO `family` VALUES ('233', 'Double Split', 'double-split', '1', null, null);
INSERT INTO `family` VALUES ('234', 'Grand Complication', 'grand-complication', '1', null, null);
INSERT INTO `family` VALUES ('235', 'Langematik', 'langematik', '1', null, null);
INSERT INTO `family` VALUES ('236', 'Others', 'others', '1', null, null);
INSERT INTO `family` VALUES ('237', 'Tourbograph', 'tourbograph', '1', null, null);
INSERT INTO `family` VALUES ('238', 'Audemars Piguet', 'audemars-piguet', '3', null, null);
INSERT INTO `family` VALUES ('239', 'Millenary', 'millenary', '3', null, null);
INSERT INTO `family` VALUES ('240', 'Jules Audemars', 'jules-audemars', '3', null, null);
INSERT INTO `family` VALUES ('241', 'Danae', 'danae', '3', null, null);
INSERT INTO `family` VALUES ('242', 'Deva', 'deva', '3', null, null);
INSERT INTO `family` VALUES ('243', 'Dream', 'dream', '3', null, null);
INSERT INTO `family` VALUES ('244', 'Edward Piguet', 'edward-piguet', '3', null, null);
INSERT INTO `family` VALUES ('245', 'Facettes', 'facettes', '3', null, null);
INSERT INTO `family` VALUES ('246', 'Royal Oak Ladies', 'royal-oak-ladies', '3', null, null);
INSERT INTO `family` VALUES ('247', 'Promesse', 'promesse', '3', null, null);
INSERT INTO `family` VALUES ('248', 'Ladies', 'ladies', '7', null, null);
INSERT INTO `family` VALUES ('249', 'Applied Arts', 'applied-arts', '7', null, null);
INSERT INTO `family` VALUES ('250', 'Leman', 'leman', '7', null, null);
INSERT INTO `family` VALUES ('251', 'Ottanta', 'ottanta', '44', null, null);
INSERT INTO `family` VALUES ('252', 'Amadeo Fleurier', 'amadeo-fleurier', '44', null, null);
INSERT INTO `family` VALUES ('253', 'Chateau de Motiers ', 'chateau-de-motiers', '44', null, null);
INSERT INTO `family` VALUES ('254', 'Cambiano', 'cambiano', '44', null, null);
INSERT INTO `family` VALUES ('255', 'Dimier Recital', 'dimier-recital', '44', null, null);
INSERT INTO `family` VALUES ('256', 'Fleurier', 'fleurier', '44', null, null);
INSERT INTO `family` VALUES ('257', 'Lady BOVET', 'lady-bovet', '44', null, null);
INSERT INTO `family` VALUES ('258', 'Ottantadue', 'ottantadue', '44', null, null);
INSERT INTO `family` VALUES ('259', 'OttantaSei', 'ottantasei', '44', null, null);
INSERT INTO `family` VALUES ('260', 'Sportster', 'sportster', '44', null, null);
INSERT INTO `family` VALUES ('261', 'Type XX - XXI - XXII', 'type-xx-xxi-xxii', '45', null, null);
INSERT INTO `family` VALUES ('262', 'Classique Grande Complication', 'classique-grande-complication', '45', null, null);
INSERT INTO `family` VALUES ('263', 'Classique', 'classique', '45', null, null);
INSERT INTO `family` VALUES ('264', 'High Jewellery', 'high-jewellery', '45', null, null);
INSERT INTO `family` VALUES ('265', 'Reine de Naples', 'reine-de-naples', '45', null, null);
INSERT INTO `family` VALUES ('266', 'Camelia', 'camelia', '46', null, null);
INSERT INTO `family` VALUES ('267', 'J12', 'j12', '46', null, null);
INSERT INTO `family` VALUES ('268', 'Mademoiselle Privé', 'mademoiselle-prive', '46', null, null);
INSERT INTO `family` VALUES ('269', 'Poussière', 'poussiere', '46', null, null);
INSERT INTO `family` VALUES ('270', 'Première', 'premiere', '46', null, null);
INSERT INTO `family` VALUES ('271', 'Classic', 'classic', '12', null, null);
INSERT INTO `family` VALUES ('272', '1000 Miglia', '1000-miglia', '12', null, null);
INSERT INTO `family` VALUES ('273', 'Happy Sport', 'happy-sport', '12', null, null);
INSERT INTO `family` VALUES ('274', 'G.P.M.H. ', 'gpmh', '12', null, null);
INSERT INTO `family` VALUES ('275', 'Grand Prix De Monaco ', 'grand-prix-de-monaco', '12', null, null);
INSERT INTO `family` VALUES ('276', 'Accessories', 'accessories', '12', null, null);
INSERT INTO `family` VALUES ('277', 'Chopard L.U.C ', 'chopard-luc', '12', null, null);
INSERT INTO `family` VALUES ('278', 'Mille Miglia ', 'mille-miglia', '12', null, null);
INSERT INTO `family` VALUES ('279', 'Superfast ', 'superfast', '12', null, null);
INSERT INTO `family` VALUES ('280', 'Superfast Chrono ', 'superfast-chrono', '12', null, null);
INSERT INTO `family` VALUES ('281', 'Golden Bridge', 'golden-bridge', '47', null, null);
INSERT INTO `family` VALUES ('282', 'Bubble', 'bubble', '47', null, null);
INSERT INTO `family` VALUES ('283', 'Romulus', 'romulus', '47', null, null);
INSERT INTO `family` VALUES ('284', 'Allegra Watch', 'allegra-watch', '48', null, null);
INSERT INTO `family` VALUES ('285', 'Be Eight', 'be-eight', '48', null, null);
INSERT INTO `family` VALUES ('286', 'Boule', 'boule', '48', null, null);
INSERT INTO `family` VALUES ('287', 'Crazyskull', 'crazyskull', '48', null, null);
INSERT INTO `family` VALUES ('288', 'Grande', 'grande', '48', null, null);
INSERT INTO `family` VALUES ('289', 'Grappoli', 'grappoli', '48', null, null);
INSERT INTO `family` VALUES ('290', 'Instrumentino', 'instrumentino', '48', null, null);
INSERT INTO `family` VALUES ('291', 'Tino', 'tino', '48', null, null);
INSERT INTO `family` VALUES ('292', 'Uno XL', 'uno-xl', '48', null, null);
INSERT INTO `family` VALUES ('293', 'Uno', 'uno', '48', null, null);
INSERT INTO `family` VALUES ('294', 'Meccanico DG', 'meccanico-dg', '48', null, null);
INSERT INTO `family` VALUES ('295', 'Occhio', 'occhio', '48', null, null);
INSERT INTO `family` VALUES ('296', 'Otturatore', 'otturatore', '48', null, null);
INSERT INTO `family` VALUES ('297', 'Piccolina', 'piccolina', '48', null, null);
INSERT INTO `family` VALUES ('298', 'Sugar', 'sugar', '48', null, null);
INSERT INTO `family` VALUES ('299', 'Tondo by Night', 'tondo-by-night', '48', null, null);
INSERT INTO `family` VALUES ('300', 'Tondo RM', 'tondo-rm', '48', null, null);
INSERT INTO `family` VALUES ('301', 'Tondo Tourbillon', 'tondo-tourbillon', '48', null, null);
INSERT INTO `family` VALUES ('302', 'Color Dreams', 'color-dreams', '49', null, null);
INSERT INTO `family` VALUES ('303', 'Curvex', 'curvex', '49', null, null);
INSERT INTO `family` VALUES ('304', 'Long Island', 'long-island', '49', null, null);
INSERT INTO `family` VALUES ('305', 'Master Square', 'master-square', '49', null, null);
INSERT INTO `family` VALUES ('306', 'Evolution', 'evolution', '15', null, null);
INSERT INTO `family` VALUES ('307', 'Impact', 'impact', '15', null, null);
INSERT INTO `family` VALUES ('308', 'Karee', 'karee', '15', null, null);
INSERT INTO `family` VALUES ('309', 'Karree', 'karree', '15', null, null);
INSERT INTO `family` VALUES ('310', 'Serenade', 'serenade', '15', null, null);
INSERT INTO `family` VALUES ('311', 'Seventies', 'seventies', '15', null, null);
INSERT INTO `family` VALUES ('312', 'Sixties', 'sixties', '15', null, null);
INSERT INTO `family` VALUES ('313', 'Tourbillograph', 'tourbillograph', '51', null, null);
INSERT INTO `family` VALUES ('314', 'Chronofighter', 'chronofighter', '51', null, null);
INSERT INTO `family` VALUES ('315', 'Geo.Graham', 'geograham', '51', null, null);
INSERT INTO `family` VALUES ('316', 'Silverstone', 'silverstone', '51', null, null);
INSERT INTO `family` VALUES ('317', 'Swordfish', 'swordfish', '51', null, null);
INSERT INTO `family` VALUES ('318', 'Avenue', 'avenue', '52', null, null);
INSERT INTO `family` VALUES ('319', 'Ocean', 'ocean', '52', null, null);
INSERT INTO `family` VALUES ('320', 'Histoire', 'histoire', '52', null, null);
INSERT INTO `family` VALUES ('321', 'Lady', 'lady', '52', null, null);
INSERT INTO `family` VALUES ('322', 'Marquesa', 'marquesa', '52', null, null);
INSERT INTO `family` VALUES ('323', 'Midnight', 'midnight', '52', null, null);
INSERT INTO `family` VALUES ('324', 'Opus', 'opus', '52', null, null);
INSERT INTO `family` VALUES ('325', 'Blooming Snow', 'blooming-snow', '52', null, null);
INSERT INTO `family` VALUES ('326', 'Excenter', 'excenter', '52', null, null);
INSERT INTO `family` VALUES ('327', 'Feathers', 'feathers', '52', null, null);
INSERT INTO `family` VALUES ('328', 'Hypnotic', 'hypnotic', '52', null, null);
INSERT INTO `family` VALUES ('329', 'Lace', 'lace', '52', null, null);
INSERT INTO `family` VALUES ('330', 'Moon Phase', 'moon-phase', '52', null, null);
INSERT INTO `family` VALUES ('331', 'Precious', 'precious', '52', null, null);
INSERT INTO `family` VALUES ('332', 'Shinde', 'shinde', '52', null, null);
INSERT INTO `family` VALUES ('333', 'Project', 'project', '52', null, null);
INSERT INTO `family` VALUES ('334', 'Signature', 'signature', '52', null, null);
INSERT INTO `family` VALUES ('335', 'Hautlence', 'hautlence', '53', null, null);
INSERT INTO `family` VALUES ('336', 'Aero Bang', 'aero-bang', '54', null, null);
INSERT INTO `family` VALUES ('337', 'All Black', 'all-black', '54', null, null);
INSERT INTO `family` VALUES ('338', 'Big Bang', 'big-bang', '54', null, null);
INSERT INTO `family` VALUES ('339', 'Big Bang Alarm Repeater', 'big-bang-alarm-repeater', '54', null, null);
INSERT INTO `family` VALUES ('340', 'Big Bang All Black', 'big-bang-all-black', '54', null, null);
INSERT INTO `family` VALUES ('341', 'Big Bang Aspen', 'big-bang-aspen', '54', null, null);
INSERT INTO `family` VALUES ('342', 'Big Bang Black Magic', 'big-bang-black-magic', '54', null, null);
INSERT INTO `family` VALUES ('343', 'Big Bang Tutti Frutti', 'big-bang-tutti-frutti', '54', null, null);
INSERT INTO `family` VALUES ('344', 'Big Bang Broderie', 'big-bang-broderie', '54', null, null);
INSERT INTO `family` VALUES ('345', 'Big Bang Cappuccino', 'big-bang-cappuccino', '54', null, null);
INSERT INTO `family` VALUES ('346', 'Big Bang Carbon', 'big-bang-carbon', '54', null, null);
INSERT INTO `family` VALUES ('347', 'Big Bang Chrono Perpetual Calendar ', 'big-bang-chrono-perpetual-calendar', '54', null, null);
INSERT INTO `family` VALUES ('348', 'Big Bang Ferrari', 'big-bang-ferrari', '54', null, null);
INSERT INTO `family` VALUES ('349', 'Big Bang Earl Gray', 'big-bang-earl-gray', '54', null, null);
INSERT INTO `family` VALUES ('350', 'Big Bang Evolution', 'big-bang-evolution', '54', null, null);
INSERT INTO `family` VALUES ('351', 'Big Bang One Click', 'big-bang-one-click', '54', null, null);
INSERT INTO `family` VALUES ('352', 'Big Bang Pop Art', 'big-bang-pop-art', '54', null, null);
INSERT INTO `family` VALUES ('353', 'Big Bang Porto Cervo', 'big-bang-porto-cervo', '54', null, null);
INSERT INTO `family` VALUES ('354', 'Big Bang St Moritz', 'big-bang-st-moritz', '54', null, null);
INSERT INTO `family` VALUES ('355', 'Big Bang Tantalum Mat', 'big-bang-tantalum-mat', '54', null, null);
INSERT INTO `family` VALUES ('356', 'Big Bang Tourbillon', 'big-bang-tourbillon', '54', null, null);
INSERT INTO `family` VALUES ('357', 'Big Bang Unico', 'big-bang-unico', '54', null, null);
INSERT INTO `family` VALUES ('358', 'Classic Fusion', 'classic-fusion', '54', null, null);
INSERT INTO `family` VALUES ('359', 'Classic Chronograph', 'classic-chronograph', '54', null, null);
INSERT INTO `family` VALUES ('360', 'Classic Fusion Aerofusion', 'classic-fusion-aerofusion', '54', null, null);
INSERT INTO `family` VALUES ('361', 'Classic Fusion All Black', 'classic-fusion-all-black', '54', null, null);
INSERT INTO `family` VALUES ('362', 'Classic Fusion Black Magic', 'classic-fusion-black-magic', '54', null, null);
INSERT INTO `family` VALUES ('363', 'Classic Fusion Chronograph', 'classic-fusion-chronograph', '54', null, null);
INSERT INTO `family` VALUES ('364', 'Classic Fusion Ceramic', 'classic-fusion-ceramic', '54', null, null);
INSERT INTO `family` VALUES ('365', 'Classic Fusion Classico', 'classic-fusion-classico', '54', null, null);
INSERT INTO `family` VALUES ('366', 'Classic Fusion Tourbillon', 'classic-fusion-tourbillon', '54', null, null);
INSERT INTO `family` VALUES ('367', 'King Power', 'king-power', '54', null, null);
INSERT INTO `family` VALUES ('368', 'Jewelry', 'jewelry', '54', null, null);
INSERT INTO `family` VALUES ('369', 'King Gold', 'king-gold', '54', null, null);
INSERT INTO `family` VALUES ('370', 'Luna Rossa ', 'luna-rossa', '54', null, null);
INSERT INTO `family` VALUES ('371', 'Masterpiece', 'masterpiece', '54', null, null);
INSERT INTO `family` VALUES ('372', 'MP', 'mp', '54', null, null);
INSERT INTO `family` VALUES ('373', 'Oceanographic', 'oceanographic', '54', null, null);
INSERT INTO `family` VALUES ('374', 'Spirit of Big Bang', 'spirit-of-big-bang', '54', null, null);
INSERT INTO `family` VALUES ('375', 'Tutti Frutti', 'tutti-frutti', '54', null, null);
INSERT INTO `family` VALUES ('376', 'Super B', 'super-b', '54', null, null);
INSERT INTO `family` VALUES ('377', 'Techframe', 'techframe', '54', null, null);
INSERT INTO `family` VALUES ('378', 'H1', 'h1', '55', null, null);
INSERT INTO `family` VALUES ('379', 'H2', 'h2', '55', null, null);
INSERT INTO `family` VALUES ('380', 'Aquatimer', 'aquatimer', '18', null, null);
INSERT INTO `family` VALUES ('381', 'Big Ingenieur Chrono', 'big-ingenieur-chrono', '18', null, null);
INSERT INTO `family` VALUES ('382', 'Big Ingenieur', 'big-ingenieur', '18', null, null);
INSERT INTO `family` VALUES ('383', 'Portuguese FA Jones', 'portuguese-fa-jones', '18', null, null);
INSERT INTO `family` VALUES ('384', 'Ingenieur Automatic', 'ingenieur-automatic', '18', null, null);
INSERT INTO `family` VALUES ('385', 'Ingenieur Chronograph', 'ingenieur-chronograph', '18', null, null);
INSERT INTO `family` VALUES ('386', 'Ingenieur Constant-Force Tourbillon ', 'ingenieur-constant-force-tourbillon', '18', null, null);
INSERT INTO `family` VALUES ('387', 'Ingenieur Double Chronograph', 'ingenieur-double-chronograph', '18', null, null);
INSERT INTO `family` VALUES ('388', 'Ingenieur Dual Time', 'ingenieur-dual-time', '18', null, null);
INSERT INTO `family` VALUES ('389', 'Ingenieur Midsize', 'ingenieur-midsize', '18', null, null);
INSERT INTO `family` VALUES ('390', 'Ingenieur Perpetual', 'ingenieur-perpetual', '18', null, null);
INSERT INTO `family` VALUES ('391', 'Portuguese Rattrapante', 'portuguese-rattrapante', '18', null, null);
INSERT INTO `family` VALUES ('392', 'Pocket Watch', 'pocket-watch', '18', null, null);
INSERT INTO `family` VALUES ('393', 'Portofino Automatic', 'portofino-automatic', '18', null, null);
INSERT INTO `family` VALUES ('394', 'Portofino Chronograph', 'portofino-chronograph', '18', null, null);
INSERT INTO `family` VALUES ('395', 'Portofino Dual Time', 'portofino-dual-time', '18', null, null);
INSERT INTO `family` VALUES ('396', 'Portofino Big Date', 'portofino-big-date', '18', null, null);
INSERT INTO `family` VALUES ('397', 'Portofino Eight Days', 'portofino-eight-days', '18', null, null);
INSERT INTO `family` VALUES ('398', 'Portofino Midsize', 'portofino-midsize', '18', null, null);
INSERT INTO `family` VALUES ('399', 'Portuguese Annual Calendar', 'portuguese-annual-calendar', '18', null, null);
INSERT INTO `family` VALUES ('400', 'Portuguese Perpetual Calendar', 'portuguese-perpetual-calendar', '18', null, null);
INSERT INTO `family` VALUES ('401', ' Portuguese Tourbillon', 'portuguese-tourbillon', '18', null, null);
INSERT INTO `family` VALUES ('402', 'Art Deco', 'art-deco', '19', null, null);
INSERT INTO `family` VALUES ('403', 'Atmos', 'atmos', '19', null, null);
INSERT INTO `family` VALUES ('404', 'Deep Sea', 'deep-sea', '19', null, null);
INSERT INTO `family` VALUES ('405', 'Etrier', 'etrier', '19', null, null);
INSERT INTO `family` VALUES ('406', 'Gyrotourbillon', 'gyrotourbillon', '19', null, null);
INSERT INTO `family` VALUES ('407', 'Joaillerie', 'joaillerie', '19', null, null);
INSERT INTO `family` VALUES ('408', 'Hybris Mechanica', 'hybris-mechanica', '19', null, null);
INSERT INTO `family` VALUES ('409', 'Ideale', 'ideale', '19', null, null);
INSERT INTO `family` VALUES ('410', 'Master Compressor', 'master-compressor', '19', null, null);
INSERT INTO `family` VALUES ('411', 'Master Control', 'master-control', '19', null, null);
INSERT INTO `family` VALUES ('412', 'Master Grande', 'master-grande', '19', null, null);
INSERT INTO `family` VALUES ('413', 'Master Calendar', 'master-calendar', '19', null, null);
INSERT INTO `family` VALUES ('414', 'Master Chronograph', 'master-chronograph', '19', null, null);
INSERT INTO `family` VALUES ('415', 'Master Date', 'master-date', '19', null, null);
INSERT INTO `family` VALUES ('416', 'Master Dualtime', 'master-dualtime', '19', null, null);
INSERT INTO `family` VALUES ('417', 'Master Eight Days', 'master-eight-days', '19', null, null);
INSERT INTO `family` VALUES ('418', 'Master Geographic', 'master-geographic', '19', null, null);
INSERT INTO `family` VALUES ('419', 'Master Hometime', 'master-hometime', '19', null, null);
INSERT INTO `family` VALUES ('420', 'Master Joaillerie', 'master-joaillerie', '19', null, null);
INSERT INTO `family` VALUES ('421', 'Master Memovox', 'master-memovox', '19', null, null);
INSERT INTO `family` VALUES ('422', 'Master Minute Repeater', 'master-minute-repeater', '19', null, null);
INSERT INTO `family` VALUES ('423', 'Master Moon', 'master-moon', '19', null, null);
INSERT INTO `family` VALUES ('424', 'Master Perpetual', 'master-perpetual', '19', null, null);
INSERT INTO `family` VALUES ('425', 'Master Reserve de Marche', 'master-reserve-de-marche', '19', null, null);
INSERT INTO `family` VALUES ('426', 'Master Tourbillon', 'master-tourbillon', '19', null, null);
INSERT INTO `family` VALUES ('427', 'Master Twinkling Diamond', 'master-twinkling-diamond', '19', null, null);
INSERT INTO `family` VALUES ('428', 'Master Ultra Thin', 'master-ultra-thin', '19', null, null);
INSERT INTO `family` VALUES ('429', 'Master World Geographic', 'master-world-geographic', '19', null, null);
INSERT INTO `family` VALUES ('430', 'Tribute to Seep Sea', 'tribute-to-seep-sea', '19', null, null);
INSERT INTO `family` VALUES ('431', 'Modele', 'modele', '19', null, null);
INSERT INTO `family` VALUES ('432', 'Reverso Chronograph', 'reverso-chronograph', '19', null, null);
INSERT INTO `family` VALUES ('433', 'Reverso Classic', 'reverso-classic', '19', null, null);
INSERT INTO `family` VALUES ('434', 'Reverso Date', 'reverso-date', '19', null, null);
INSERT INTO `family` VALUES ('435', 'Reverso Duetto', 'reverso-duetto', '19', null, null);
INSERT INTO `family` VALUES ('436', 'Reverso Duo', 'reverso-duo', '19', null, null);
INSERT INTO `family` VALUES ('437', 'Reverso Florale', 'reverso-florale', '19', null, null);
INSERT INTO `family` VALUES ('438', 'Reverso Gran Sport', 'reverso-gran-sport', '19', null, null);
INSERT INTO `family` VALUES ('439', 'Reverso Grande', 'reverso-grande', '19', null, null);
INSERT INTO `family` VALUES ('440', 'Reverso GS/GT', 'reverso-gsgt', '19', null, null);
INSERT INTO `family` VALUES ('441', 'Reverso Joaillerie ', 'reverso-joaillerie', '19', null, null);
INSERT INTO `family` VALUES ('442', 'Reverso Ladies', 'reverso-ladies', '19', null, null);
INSERT INTO `family` VALUES ('443', 'Reverso Septantieme', 'reverso-septantieme', '19', null, null);
INSERT INTO `family` VALUES ('444', 'Reverso Squadra', 'reverso-squadra', '19', null, null);
INSERT INTO `family` VALUES ('445', 'Reverso Sun Moon', 'reverso-sun-moon', '19', null, null);
INSERT INTO `family` VALUES ('446', 'Asmara', 'asmara', '56', null, null);
INSERT INTO `family` VALUES ('447', 'Autumn', 'autumn', '56', null, null);
INSERT INTO `family` VALUES ('448', 'Aviator', 'aviator', '56', null, null);
INSERT INTO `family` VALUES ('449', 'Telamon', 'telamon', '56', null, null);
INSERT INTO `family` VALUES ('450', 'Three Yangs', 'three-yangs', '56', null, null);
INSERT INTO `family` VALUES ('451', 'Volcan', 'volcan', '56', null, null);
INSERT INTO `family` VALUES ('452', 'X-Racer', 'x-racer', '56', null, null);
INSERT INTO `family` VALUES ('453', 'Zhuke', 'zhuke', '56', null, null);
INSERT INTO `family` VALUES ('454', 'Chapter One', 'chapter-one', '57', null, null);
INSERT INTO `family` VALUES ('455', 'Chapter Three', 'chapter-three', '57', null, null);
INSERT INTO `family` VALUES ('456', 'Chapter Two', 'chapter-two', '57', null, null);
INSERT INTO `family` VALUES ('457', 'Maurice Lacroix', 'maurice-lacroix', '58', null, null);
INSERT INTO `family` VALUES ('458', 'Aspen', 'aspen', '59', null, null);
INSERT INTO `family` VALUES ('459', 'Compass', 'compass', '59', null, null);
INSERT INTO `family` VALUES ('460', 'L\'Astronomo', 'lastronomo', '59', null, null);
INSERT INTO `family` VALUES ('461', 'Lo Scienziato', 'lo-scienziato', '59', null, null);
INSERT INTO `family` VALUES ('462', 'Luminor 1940', 'luminor-1940', '59', null, null);
INSERT INTO `family` VALUES ('463', 'Luminor 1950 Chronograph', 'luminor-1950-chronograph', '59', null, null);
INSERT INTO `family` VALUES ('464', 'Luminor 1950 GMT', 'luminor-1950-gmt', '59', null, null);
INSERT INTO `family` VALUES ('465', 'Luminor 1950 Marina', 'luminor-1950-marina', '59', null, null);
INSERT INTO `family` VALUES ('466', 'Marine Chronometer', 'marine-chronometer', '59', null, null);
INSERT INTO `family` VALUES ('467', 'Palm Beach', 'palm-beach', '59', null, null);
INSERT INTO `family` VALUES ('468', 'Travel Clock', 'travel-clock', '59', null, null);
INSERT INTO `family` VALUES ('469', 'Constellation 160 Years', 'constellation-160-years', '25', null, null);
INSERT INTO `family` VALUES ('470', 'Constellation 95', 'constellation-95', '25', null, null);
INSERT INTO `family` VALUES ('471', 'Constellation Co-Axial', 'constellation-co-axial', '25', null, null);
INSERT INTO `family` VALUES ('472', 'Constellation Day-Date', 'constellation-day-date', '25', null, null);
INSERT INTO `family` VALUES ('473', 'Constellation Double Eagle Chrono', 'constellation-double-eagle-chrono', '25', null, null);
INSERT INTO `family` VALUES ('474', 'Constellation Iris', 'constellation-iris', '25', null, null);
INSERT INTO `family` VALUES ('475', 'Constellation My Choice', 'constellation-my-choice', '25', null, null);
INSERT INTO `family` VALUES ('476', 'Constellation Quadra ', 'constellation-quadra', '25', null, null);
INSERT INTO `family` VALUES ('477', 'Constellation Quadrella ', 'constellation-quadrella', '25', null, null);
INSERT INTO `family` VALUES ('478', 'Constellation Quartz', 'constellation-quartz', '25', null, null);
INSERT INTO `family` VALUES ('479', 'Constellation Small Seconds Co-Axial', 'constellation-small-seconds-co-axial', '25', null, null);
INSERT INTO `family` VALUES ('480', 'De Ville Annual Calendar', 'de-ville-annual-calendar', '25', null, null);
INSERT INTO `family` VALUES ('481', 'De Ville Co-Axial', 'de-ville-co-axial', '25', null, null);
INSERT INTO `family` VALUES ('482', 'De Ville Hour Vision', 'de-ville-hour-vision', '25', null, null);
INSERT INTO `family` VALUES ('483', 'De Ville Ladymatic', 'de-ville-ladymatic', '25', null, null);
INSERT INTO `family` VALUES ('484', 'De Ville Omega Co-Axial ', 'de-ville-omega-co-axial', '25', null, null);
INSERT INTO `family` VALUES ('485', 'De Ville Prestige', 'de-ville-prestige', '25', null, null);
INSERT INTO `family` VALUES ('486', 'De Ville Specialities', 'de-ville-specialities', '25', null, null);
INSERT INTO `family` VALUES ('487', 'De Ville X2', 'de-ville-x2', '25', null, null);
INSERT INTO `family` VALUES ('488', 'De', 'de', '25', null, null);
INSERT INTO `family` VALUES ('489', 'Hour Vision', 'hour-vision', '25', null, null);
INSERT INTO `family` VALUES ('490', 'IRIS My Choice', 'iris-my-choice', '25', null, null);
INSERT INTO `family` VALUES ('491', 'Specialities', 'specialities', '25', null, null);
INSERT INTO `family` VALUES ('492', 'Planet Ocean', 'planet-ocean', '25', null, null);
INSERT INTO `family` VALUES ('493', 'Ploprof', 'ploprof', '25', null, null);
INSERT INTO `family` VALUES ('494', 'Seamaster', 'seamaster', '25', null, null);
INSERT INTO `family` VALUES ('495', 'Kalpagraphe', 'kalpagraphe', '28', null, null);
INSERT INTO `family` VALUES ('496', 'Kalparisma', 'kalparisma', '28', null, null);
INSERT INTO `family` VALUES ('497', 'Ovale', 'ovale', '28', null, null);
INSERT INTO `family` VALUES ('498', 'Transforma', 'transforma', '28', null, null);
INSERT INTO `family` VALUES ('499', '175th Anniversary', '175th-anniversary', '29', null, null);
INSERT INTO `family` VALUES ('500', 'Annual Calendar', 'annual-calendar', '29', null, null);
INSERT INTO `family` VALUES ('501', 'Aquanaut Ladies', 'aquanaut-ladies', '29', null, null);
INSERT INTO `family` VALUES ('502', 'Calatrava Ladies', 'calatrava-ladies', '29', null, null);
INSERT INTO `family` VALUES ('503', 'Chronograph', 'chronograph', '29', null, null);
INSERT INTO `family` VALUES ('504', 'Split', 'split', '29', null, null);
INSERT INTO `family` VALUES ('505', 'Gondolo Ladies', 'gondolo-ladies', '29', null, null);
INSERT INTO `family` VALUES ('506', 'Minute Repeaters', 'minute-repeaters', '29', null, null);
INSERT INTO `family` VALUES ('507', 'Nautilus Ladies', 'nautilus-ladies', '29', null, null);
INSERT INTO `family` VALUES ('508', 'Older Series', 'older-series', '29', null, null);
INSERT INTO `family` VALUES ('509', 'Advanced Research', 'advanced-research', '29', null, null);
INSERT INTO `family` VALUES ('510', 'Perpetual Calendar', 'perpetual-calendar', '29', null, null);
INSERT INTO `family` VALUES ('511', 'Perpetual Calendar Chronograph', 'perpetual-calendar-chronograph', '29', null, null);
INSERT INTO `family` VALUES ('512', 'World Time', 'world-time', '29', null, null);
INSERT INTO `family` VALUES ('513', 'Split Seconds Grand Complications', 'split-seconds-grand-complications', '29', null, null);
INSERT INTO `family` VALUES ('514', 'Travel Time', 'travel-time', '29', null, null);
INSERT INTO `family` VALUES ('515', '1967', '1967', '30', null, null);
INSERT INTO `family` VALUES ('516', 'Black Tie', 'black-tie', '30', null, null);
INSERT INTO `family` VALUES ('517', 'Creative Collection', 'creative-collection', '30', null, null);
INSERT INTO `family` VALUES ('518', 'Dancer', 'dancer', '30', null, null);
INSERT INTO `family` VALUES ('519', 'Limelight', 'limelight', '30', null, null);
INSERT INTO `family` VALUES ('520', 'Miss Protocole', 'miss-protocole', '30', null, null);
INSERT INTO `family` VALUES ('521', 'Mini Dancer', 'mini-dancer', '30', null, null);
INSERT INTO `family` VALUES ('522', 'Possession', 'possession', '30', null, null);
INSERT INTO `family` VALUES ('523', 'Protocole', 'protocole', '30', null, null);
INSERT INTO `family` VALUES ('524', 'Rectangle', 'rectangle', '30', null, null);
INSERT INTO `family` VALUES ('525', 'Easy Diver', 'easy-diver', '60', null, null);
INSERT INTO `family` VALUES ('526', 'Excalibur', 'excalibur', '60', null, null);
INSERT INTO `family` VALUES ('527', 'Goldensquare', 'goldensquare', '60', null, null);
INSERT INTO `family` VALUES ('528', 'Hommage', 'hommage', '60', null, null);
INSERT INTO `family` VALUES ('529', 'Kingsquare', 'kingsquare', '60', null, null);
INSERT INTO `family` VALUES ('530', 'La Monagasque', 'la-monagasque', '60', null, null);
INSERT INTO `family` VALUES ('531', 'Much More', 'much-more', '60', null, null);
INSERT INTO `family` VALUES ('532', 'Pulsion', 'pulsion', '60', null, null);
INSERT INTO `family` VALUES ('533', 'Too Much', 'too-much', '60', null, null);
INSERT INTO `family` VALUES ('534', 'Velvet', 'velvet', '60', null, null);
INSERT INTO `family` VALUES ('535', 'Air-King', 'air-king', '33', null, null);
INSERT INTO `family` VALUES ('536', 'Date', 'date', '33', null, null);
INSERT INTO `family` VALUES ('537', 'Prince', 'prince', '33', null, null);
INSERT INTO `family` VALUES ('538', '1969', '1969', '61', null, null);
INSERT INTO `family` VALUES ('539', 'ART-DNA', 'art-dna', '61', null, null);
INSERT INTO `family` VALUES ('540', 'Delorean', 'delorean', '61', null, null);
INSERT INTO `family` VALUES ('541', 'Dia de los Muertos', 'dia-de-los-muertos', '61', null, null);
INSERT INTO `family` VALUES ('542', 'Eyjafjallajokull', 'eyjafjallajokull', '61', null, null);
INSERT INTO `family` VALUES ('543', 'Gold Mood', 'gold-mood', '61', null, null);
INSERT INTO `family` VALUES ('544', 'Heavy Metal', 'heavy-metal', '61', null, null);
INSERT INTO `family` VALUES ('545', 'Various', 'various', '61', null, null);
INSERT INTO `family` VALUES ('546', 'Liberty', 'liberty', '61', null, null);
INSERT INTO `family` VALUES ('547', 'Moon Dust', 'moon-dust', '61', null, null);
INSERT INTO `family` VALUES ('548', 'Moon Invader', 'moon-invader', '61', null, null);
INSERT INTO `family` VALUES ('549', 'Moon Orbiter', 'moon-orbiter', '61', null, null);
INSERT INTO `family` VALUES ('550', 'Nose Art', 'nose-art', '61', null, null);
INSERT INTO `family` VALUES ('551', 'Pac-Man', 'pac-man', '61', null, null);
INSERT INTO `family` VALUES ('552', 'Red', 'red', '61', null, null);
INSERT INTO `family` VALUES ('553', 'Skylab', 'skylab', '61', null, null);
INSERT INTO `family` VALUES ('554', 'Space Invaders', 'space-invaders', '61', null, null);
INSERT INTO `family` VALUES ('555', 'Spacecraft', 'spacecraft', '61', null, null);
INSERT INTO `family` VALUES ('556', 'Steampunk', 'steampunk', '61', null, null);
INSERT INTO `family` VALUES ('557', 'Subcraft', 'subcraft', '61', null, null);
INSERT INTO `family` VALUES ('558', 'Tattoo', 'tattoo', '61', null, null);
INSERT INTO `family` VALUES ('559', 'Titanic', 'titanic', '61', null, null);
INSERT INTO `family` VALUES ('560', 'Calibre 1887', 'calibre-1887', '38', null, null);
INSERT INTO `family` VALUES ('561', 'Calibre 11', 'calibre-11', '38', null, null);
INSERT INTO `family` VALUES ('562', 'Calibre 12', 'calibre-12', '38', null, null);
INSERT INTO `family` VALUES ('563', 'Acqua', 'acqua', '62', null, null);
INSERT INTO `family` VALUES ('564', 'Minute Repeater', 'minute-repeater', '62', null, null);
INSERT INTO `family` VALUES ('565', 'Blue Surf', 'blue-surf', '62', null, null);
INSERT INTO `family` VALUES ('566', 'Caprice', 'caprice', '62', null, null);
INSERT INTO `family` VALUES ('567', 'Circus', 'circus', '62', null, null);
INSERT INTO `family` VALUES ('568', 'Classico', 'classico', '62', null, null);
INSERT INTO `family` VALUES ('569', 'Dual Time', 'dual-time', '62', null, null);
INSERT INTO `family` VALUES ('570', 'El Toro', 'el-toro', '62', null, null);
INSERT INTO `family` VALUES ('571', 'Freak', 'freak', '62', null, null);
INSERT INTO `family` VALUES ('572', 'GMT Perpetual', 'gmt-perpetual', '62', null, null);
INSERT INTO `family` VALUES ('573', 'Hourstriker', 'hourstriker', '62', null, null);
INSERT INTO `family` VALUES ('574', 'Jade', 'jade', '62', null, null);
INSERT INTO `family` VALUES ('575', 'Macho', 'macho', '62', null, null);
INSERT INTO `family` VALUES ('576', 'Marine Lady Diver', 'marine-lady-diver', '62', null, null);
INSERT INTO `family` VALUES ('577', 'Marine Perpetual', 'marine-perpetual', '62', null, null);
INSERT INTO `family` VALUES ('578', 'Marine Spasskaya ', 'marine-spasskaya', '62', null, null);
INSERT INTO `family` VALUES ('579', 'Maxi Marine', 'maxi-marine', '62', null, null);
INSERT INTO `family` VALUES ('580', 'Maxi Skeleton', 'maxi-skeleton', '62', null, null);
INSERT INTO `family` VALUES ('581', 'Michelangelo', 'michelangelo', '62', null, null);
INSERT INTO `family` VALUES ('582', 'Perpetual', 'perpetual', '62', null, null);
INSERT INTO `family` VALUES ('583', 'Quadrato', 'quadrato', '62', null, null);
INSERT INTO `family` VALUES ('584', 'Royal', 'royal', '62', null, null);
INSERT INTO `family` VALUES ('585', 'San Marco', 'san-marco', '62', null, null);
INSERT INTO `family` VALUES ('586', 'Sonata', 'sonata', '62', null, null);
INSERT INTO `family` VALUES ('587', 'Stranger', 'stranger', '62', null, null);
INSERT INTO `family` VALUES ('588', 'Trilogy', 'trilogy', '62', null, null);
INSERT INTO `family` VALUES ('589', 'Ulysse', 'ulysse', '62', null, null);
INSERT INTO `family` VALUES ('590', 'Urwerk', 'urwerk', '63', null, null);
INSERT INTO `family` VALUES ('591', 'Egerie', 'egerie', '39', null, null);
INSERT INTO `family` VALUES ('592', 'Florilege', 'florilege', '39', null, null);
INSERT INTO `family` VALUES ('593', 'Grand', 'grand', '39', null, null);
INSERT INTO `family` VALUES ('594', 'Jubilee', 'jubilee', '39', null, null);
INSERT INTO `family` VALUES ('595', 'Les Masques', 'les-masques', '39', null, null);
INSERT INTO `family` VALUES ('596', 'Les Univers', 'les-univers', '39', null, null);
INSERT INTO `family` VALUES ('597', 'Maki-e', 'maki-e', '39', null, null);
INSERT INTO `family` VALUES ('598', 'Quai de I\'lle', 'quai-de-ille', '39', null, null);
INSERT INTO `family` VALUES ('599', 'Royal Eagle', 'royal-eagle', '39', null, null);
INSERT INTO `family` VALUES ('600', 'Toledo', 'toledo', '39', null, null);
INSERT INTO `family` VALUES ('601', 'Captain', 'captain', '40', null, null);
INSERT INTO `family` VALUES ('602', 'Christophe Colomb', 'christophe-colomb', '40', null, null);
INSERT INTO `family` VALUES ('603', 'Chronomaster', 'chronomaster', '40', null, null);
INSERT INTO `family` VALUES ('604', 'Class Elite', 'class-elite', '40', null, null);
INSERT INTO `family` VALUES ('605', 'Class Moonphase', 'class-moonphase', '40', null, null);
INSERT INTO `family` VALUES ('606', 'Class Open', 'class-open', '40', null, null);
INSERT INTO `family` VALUES ('607', 'Class T', 'class-t', '40', null, null);
INSERT INTO `family` VALUES ('608', 'Class Traveller', 'class-traveller', '40', null, null);
INSERT INTO `family` VALUES ('609', 'Defy', 'defy', '40', null, null);
INSERT INTO `family` VALUES ('610', '36\'000 VpH', '36000-vph', '40', null, null);
INSERT INTO `family` VALUES ('611', '\"410\"', '410', '40', null, null);
INSERT INTO `family` VALUES ('612', 'Espada', 'espada', '40', null, null);
INSERT INTO `family` VALUES ('613', 'Rainbow', 'rainbow', '40', null, null);
INSERT INTO `family` VALUES ('614', 'Primero Rattrapante', 'primero-rattrapante', '40', null, null);
INSERT INTO `family` VALUES ('615', 'El Primero Retrotimer', 'el-primero-retrotimer', '40', null, null);
INSERT INTO `family` VALUES ('616', 'El Primero Sport', 'el-primero-sport', '40', null, null);
INSERT INTO `family` VALUES ('617', 'Stratos', 'stratos', '40', null, null);
INSERT INTO `family` VALUES ('618', 'Striking 10th', 'striking-10th', '40', null, null);
INSERT INTO `family` VALUES ('619', 'Synopsis', 'synopsis', '40', null, null);
INSERT INTO `family` VALUES ('620', 'Grande Class', 'grande-class', '40', null, null);
INSERT INTO `family` VALUES ('621', 'Port Royal', 'port-royal', '40', null, null);
INSERT INTO `family` VALUES ('622', 'New Vintage 1965', 'new-vintage-1965', '40', null, null);
INSERT INTO `family` VALUES ('623', 'Winsor', 'winsor', '40', null, null);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2017_20_20_000000_create_brand_table', '1');
INSERT INTO `migrations` VALUES ('2', '2017_20_20_000000_create_family_table', '1');
INSERT INTO `migrations` VALUES ('3', '2017_20_21_000000_create_product_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `familyId` int(11) NOT NULL,
  `reference` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `material` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `movementType` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `diameter` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28065 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', '1', '1', '206.021', '1815 Yellow Gold', '1815-yellow-gold', 'Yellow gold', null, 'Handwound', '35.90 mm', '1233d1f7b2365e92fca69daabd213f24ef3.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('2', '4', '14', '206.029', '1815 35.9 White Gold Black', '1815-359-white-gold-black', 'White gold', null, 'Handwound', '35.90 mm', '123ccbf62660eed13802c71fae793b8afee.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('3', '1', '1', '212.05', '1815 Moonphase F.A. Lange Homage', '1815-moonphase-fa-lange-homage', 'Honey Gold', null, 'Handwound', '37.40 mm', '1233f7d479936f17061678421b0732361af.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('4', '1', '1', '221.021', '1815 Up / Down Yellow Gold', '1815-up-down-yellow-gold', 'Yellow gold', null, 'Handwound', '35.90 mm', '123ceaadf52555f8fe2353fa18e10f2a8ca.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('5', '1', '1', '223.032', '1815 Up / Down Walter Lange', '1815-up-down-walter-lange', 'Rose Gold', null, 'Handwound', '37.50 mm', '123f916e004a9cec380e68748897f9e1ae4.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('6', '1', '1', '233.021', '1815 Yellow Gold', '1815-yellow-gold-6', 'Yellow gold', null, 'Handwound', '40.00 mm', '233-021-90.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('7', '1', '1', '234.021', '1815  Up/Down Yellow Gold', '1815-updown-yellow-gold', 'Yellow gold', null, 'Automatic', '39.00 mm', '234-021-f3.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('8', '1', '1', '234.026', '1815 Up/Down White Gold', '1815-updown-white-gold', 'White gold', null, 'Automatic', '39.00 mm', '234-026-e6.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('9', '1', '1', '234.032', '1815 Up/Down Pink Gold', '1815-updown-pink-gold', 'Pink gold', null, 'Automatic', '39.00 mm', '234-032-dd.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('10', '1', '1', '235.026', '1815 38.5 White Gold', '1815-385-white-gold', 'White gold', null, 'Handwound', '38.50 mm', '235-026-aa.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('11', '1', '1', '235.032', '1815 38.5 Pink Gold', '1815-385-pink-gold', 'Pink gold', null, 'Handwound', '38.50 mm', '235-032-55.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('12', '1', '1', '236.049', '1815 200th Anniversary F. A. Lange', '1815-200th-anniversary-f-a-lange', 'Platinum', null, 'Handwound', '40.00 mm', '236-049-b3.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('13', '1', '1', '236.05', '1815 200th Anniversary F. A. Lange', '1815-200th-anniversary-f-a-lange-13', 'Honey Gold', null, 'Handwound', '40.00 mm', '236-050-d4.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('14', '1', '1', '245.021', '1815 Kalenderwoche', '1815-kalenderwoche', 'Yellow gold', null, 'Handwound', '38.40 mm', '245-021-93.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('15', '1', '1', '323.046', '1815 Cuvette Oeding-Erdel', '1815-cuvette-oeding-erdel', 'White gold', null, 'Automatic', '40.00 mm', '123e4cfc975b73a2cc7cce01deba4383f1f.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('16', '1', '1', '401.026', '1815 Chronograph white Gold', '1815-chronograph-white-gold', 'White gold', null, 'Handwound', '39.50 mm', '123af614ccf01d7e0c752bad86f14ba800f.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('17', '1', '1', '401.031', '1815 Chronograph Pink Gold', '1815-chronograph-pink-gold', 'Pink gold', null, 'Handwound', '39.50 mm', '12370b78096e52d8ef213d34f7000731042.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('18', '12', '58', '402.026', '1815 Chronograph White Gold', '1815-chronograph-white-gold-18', 'White gold', null, 'Handwound', '39.50 mm', '402-026-b6.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('19', '1', '1', '402.032', '1815 Chronograph Pink Gold', '1815-chronograph-pink-gold-19', 'Pink gold', null, 'Handwound', '39.50 mm', '402-032-d2.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('20', '1', '1', '404.047', 'Double Split Sincere Edition 10pc LE', 'double-split-sincere-pink', 'Pink gold', null, 'Handwound', '43.20 mm', '404-047-99.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('21', '1', '1', '410.026', '1815 Chronograph Boutique Edition Pulsometer', '1815-chronograph-boutique-edition-pulsometer', 'White gold', null, 'Handwound', '39.50 mm', '410-026-f7.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('22', '1', '1', '421.025', '1815 Rattrapante Perpetual Calendar Platinum', '1815-rattrapante-perpetual-calendar-platinum', 'Platinum', null, 'Handwound', '41.90 mm', '421-025-8d.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('23', '1', '1', '421.032', '1815 Rattrapante Perpetual Calendar Pink Gold', '1815-rattrapante-perpetual-calendar-pink-gold', 'Pink gold', null, 'Handwound', '41.90 mm', '421-032-34.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('24', '1', '1', '730.025', '1815 Tourbillon Platinum', '1815-tourbillon-platinum', 'Platinum', null, 'Handwound', '39.50 mm', '730-025-51.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('25', '1', '1', '730.032', '1815 Tourbillon Pink Gold', '1815-tourbillon-pink-gold', 'Pink gold', null, 'Handwound', '39.50 mm', '730-032-9f.jpg', '2017-04-28 11:46:00', '2017-04-28 11:46:00');
INSERT INTO `products` VALUES ('28064', '1', '1', 'test image', 'test image', 'test image', 'test image', null, 'test image', 'test image', '1235330351b6daeeb7224ee251e70667450.jpg', null, null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'admin@example.com', '$2y$10$LAbguT7JnlCZCz46mp3tDujlZSylkUEOSUo5z0W/Eyh5uKxFw2j6i', 'fKjLMxnJyQRzxXh2JOaxvm4hsL5K7aF0j0tNkoWk4PvcI0fJeAkRvJN3sJC2', '2017-07-17 09:34:32', '2017-07-17 09:34:32');

-- ----------------------------
-- View structure for family_view
-- ----------------------------
DROP VIEW IF EXISTS `family_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `family_view` AS SELECT family.id,family.createdAt,family.`name`,family.slug,family.updatedAt,brands.`name` as brand_name
FROM family LEFT JOIN brands ON family.brandId=brands.id ;

-- ----------------------------
-- View structure for products_view
-- ----------------------------
DROP VIEW IF EXISTS `products_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `products_view` AS SELECT products.id,products.images,brands.`name` as brand_name, family.`name` as family_name,products.reference,products.`name`,products.movementType,products.diameter,products.brandId
FROM products LEFT JOIN brands on brands.id=products.brandId LEFT JOIN family on family.id=products.familyId ;
