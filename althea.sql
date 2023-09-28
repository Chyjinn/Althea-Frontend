-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2023. Sze 28. 20:09
-- Kiszolgáló verziója: 8.0.31
-- PHP verzió: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `althea`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `adminLevel` int NOT NULL DEFAULT '0',
  `adminNick` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL DEFAULT '',
  `registerDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `passwordHash` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `passwordSalt` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `serial` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `scId` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `sc` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `characterSlots` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `accounts`
--

INSERT INTO `accounts` (`id`, `userName`, `email`, `adminLevel`, `adminNick`, `registerDate`, `passwordHash`, `passwordSalt`, `serial`, `scId`, `sc`, `characterSlots`) VALUES
(1, 'Chy', 'chy@althea.hu', 10, '', '2023-08-31 20:19:07', '7irrMY/4RrueoXI8P+qUWZQbHrvJKbtS+exNEHIx+hd4imPbmfnd+7+MOO/saaU15NcjA0j8F0tPd9hGqTR1zPJCnCuQ5Q==', '5ntrk1MDntd4w8arKiISDul6iiSda6pLdOdyBb4VOnOkLFrbRmcxpDm20g9M/JH1dpx237kjC+WwrXZbo6oxcIS7MOjMxvzy1bKEyjVRbyow4xZfp/gW7MnuLt0oqHN2tGNXZQ==', 'D8903A0447DCA880A7E0057CCBF41C10CE30D8D8D5D27640B0C6102401728A80319C882076A65D10D8E0E54043861920E4526AE0681477E8AA7010047006F0C0', '67714232', 'CHYJIN', 2),
(2, 'mayev', 'megegyvacosacc@gmail.com', 0, '', '2023-09-03 14:36:26', 'SiWEX5Ihqe28wou3c2/UFJJ07sjPm2FZ/vT5Q8qyACBKPDldoG8Ztw+nkEkr1QmHGWFhn/jt4fKBknEYcDucUb3V/t6A+w==', '+q9c7edwuIF1FTIF/jTOQuiqUZpVCD0sbRsbDr3ZZmmlS9K3aPyjPFSBZF/LgmOurFJSGgYwxOqWSDTPc9j94fPmdH/DIDhhVe3wIqmIqbKGwcrOhpqY78xPHiT4r2xOkD74MQ==', 'D8903A045B5858583EEEC4C0D554D1001F6057102FBA81C8BBF018C8DD229C004B5CC1B01096EAD8B0B610BC242A1950A37608A056B6E9E0A83E7A949C96A640', '24763806', 'bati_a_batyus', 2),
(3, 'mandms', 'mandms@hcrp.hu', 0, '', '2023-09-20 13:08:52', 'oxQD+5k67KCwwWJ4tyoq1eMrXkgXhYBV0vY6ciYNgxALVSLsv7ogmmmlBmmDX6w+t9TG8Z1FaTlxwdFUoJizCumzsw9CSg==', 'KB4C7/wq8zkadPPAZfNsfrDxwEiTzplZsVADFsg7zIe78dypJ/1V4RRELv5GXwPcuSBs6pfkcUVOnsuhgRt2w2OiY2pGpdJuVgu/CnAtiEpASmRKjE0ojIPED0HCbss/fpG7gg==', 'DFBE67A8DD7E57487A72B834220A5AA0CFAE37486DCE67D81AC23824C23ABA40BF9E07E8FD1E7768BA12B814626A1AE0AF8ED7888D6E87F85A623804029A7A80', '85991460', 'MandMs-11', 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `acmds`
--

DROP TABLE IF EXISTS `acmds`;
CREATE TABLE IF NOT EXISTS `acmds` (
  `id` int NOT NULL AUTO_INCREMENT,
  `command` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `adminLevel` int NOT NULL DEFAULT '7',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `acmds`
--

INSERT INTO `acmds` (`id`, `command`, `adminLevel`) VALUES
(1, 'fly', 7),
(2, 'setdimension', 1),
(3, 'reloadacmds', 2),
(4, 'setadminlevel', 6),
(5, 'setcommandlevel', 7);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `appearances`
--

DROP TABLE IF EXISTS `appearances`;
CREATE TABLE IF NOT EXISTS `appearances` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `gender` tinyint(1) DEFAULT '1',
  `eyeColor` tinyint UNSIGNED DEFAULT '0',
  `hairStyle` smallint UNSIGNED DEFAULT '0',
  `hairColor` tinyint UNSIGNED DEFAULT '0',
  `hairHighlight` tinyint UNSIGNED DEFAULT '0',
  `parent1face` tinyint UNSIGNED DEFAULT '0',
  `parent2face` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `parent3face` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `parent1skin` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `parent2skin` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `parent3skin` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `faceMix` tinyint UNSIGNED NOT NULL DEFAULT '50',
  `skinMix` tinyint UNSIGNED NOT NULL DEFAULT '50',
  `thirdMix` tinyint UNSIGNED NOT NULL DEFAULT '50',
  `noseWidth` tinyint NOT NULL DEFAULT '0',
  `noseHeight` tinyint NOT NULL DEFAULT '0',
  `noseLength` tinyint NOT NULL DEFAULT '0',
  `noseBridge` tinyint NOT NULL DEFAULT '0',
  `noseTip` tinyint NOT NULL DEFAULT '0',
  `noseBroken` tinyint NOT NULL DEFAULT '0',
  `browHeight` tinyint NOT NULL DEFAULT '0',
  `browWidth` tinyint NOT NULL DEFAULT '0',
  `cheekboneHeight` tinyint NOT NULL DEFAULT '0',
  `cheekboneWidth` tinyint NOT NULL DEFAULT '0',
  `cheekWidth` tinyint NOT NULL DEFAULT '0',
  `eyes` tinyint NOT NULL DEFAULT '0',
  `lips` tinyint NOT NULL DEFAULT '0',
  `jawWidth` tinyint NOT NULL DEFAULT '0',
  `jawHeight` tinyint NOT NULL DEFAULT '0',
  `chinLength` tinyint NOT NULL DEFAULT '0',
  `chinPosition` tinyint NOT NULL DEFAULT '0',
  `chinWidth` tinyint NOT NULL DEFAULT '0',
  `chinShape` tinyint NOT NULL DEFAULT '0',
  `neckWidth` tinyint NOT NULL DEFAULT '0',
  `blemishId` tinyint UNSIGNED NOT NULL DEFAULT '255',
  `blemishOpacity` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `facialhairId` tinyint UNSIGNED NOT NULL DEFAULT '255',
  `facialhairColor` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `facialhairOpacity` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `eyebrowId` tinyint UNSIGNED NOT NULL DEFAULT '255',
  `eyebrowColor` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `eyebrowOpacity` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `ageId` tinyint UNSIGNED NOT NULL DEFAULT '255',
  `ageOpacity` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `makeupId` tinyint UNSIGNED NOT NULL DEFAULT '255',
  `makeupOpacity` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `blushId` tinyint UNSIGNED NOT NULL DEFAULT '255',
  `blushColor` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `blushOpacity` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `complexionId` tinyint UNSIGNED NOT NULL DEFAULT '255',
  `complexionOpacity` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `sundamageId` tinyint UNSIGNED NOT NULL DEFAULT '255',
  `sundamageOpacity` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `lipstickId` tinyint UNSIGNED NOT NULL DEFAULT '255',
  `lipstickColor` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `lipstickOpacity` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `frecklesId` tinyint UNSIGNED NOT NULL DEFAULT '255',
  `frecklesOpacity` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `chesthairId` tinyint UNSIGNED NOT NULL DEFAULT '255',
  `chesthairColor` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `chesthairOpacity` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `bodyblemishId` tinyint UNSIGNED NOT NULL DEFAULT '255',
  `bodyblemishOpacity` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `bodyblemish2Id` tinyint UNSIGNED NOT NULL DEFAULT '255',
  `bodyblemish2Opacity` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `tattoos` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `appearances`
--

INSERT INTO `appearances` (`id`, `gender`, `eyeColor`, `hairStyle`, `hairColor`, `hairHighlight`, `parent1face`, `parent2face`, `parent3face`, `parent1skin`, `parent2skin`, `parent3skin`, `faceMix`, `skinMix`, `thirdMix`, `noseWidth`, `noseHeight`, `noseLength`, `noseBridge`, `noseTip`, `noseBroken`, `browHeight`, `browWidth`, `cheekboneHeight`, `cheekboneWidth`, `cheekWidth`, `eyes`, `lips`, `jawWidth`, `jawHeight`, `chinLength`, `chinPosition`, `chinWidth`, `chinShape`, `neckWidth`, `blemishId`, `blemishOpacity`, `facialhairId`, `facialhairColor`, `facialhairOpacity`, `eyebrowId`, `eyebrowColor`, `eyebrowOpacity`, `ageId`, `ageOpacity`, `makeupId`, `makeupOpacity`, `blushId`, `blushColor`, `blushOpacity`, `complexionId`, `complexionOpacity`, `sundamageId`, `sundamageOpacity`, `lipstickId`, `lipstickColor`, `lipstickOpacity`, `frecklesId`, `frecklesOpacity`, `chesthairId`, `chesthairColor`, `chesthairOpacity`, `bodyblemishId`, `bodyblemishOpacity`, `bodyblemish2Id`, `bodyblemish2Opacity`, `tattoos`) VALUES
(1, 0, 0, 81, 58, 61, 29, 27, 21, 29, 12, 45, 47, 37, 33, -24, 15, 39, 35, 9, 0, -43, -30, -65, -76, 36, -14, -81, -88, -70, -46, 3, -32, 0, 0, 255, 0, 10, 29, 0, 1, 58, 100, 255, 0, 8, 64, 2, 11, 93, 3, 0, 255, 0, 1, 14, 47, 0, 0, 255, 0, 0, 8, 0, 255, 0, NULL),
(2, 1, 0, 14, 42, 14, 34, 4, 2, 7, 18, 19, 23, 30, 21, -25, -51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 11, 2, 100, 18, 42, 100, 0, 0, 255, 100, 0, 0, 0, 3, 100, 0, 0, 0, 0, 0, 0, 0, 255, 31, 100, 0, 0, 0, 0, NULL),
(3, 0, 5, 84, 59, 60, 40, 21, 27, 29, 12, 23, 50, 20, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 2, 57, 100, 0, 0, 5, 66, 2, 7, 100, 0, 0, 0, 0, 3, 7, 67, 0, 42, 255, 0, 0, 2, 100, 0, 0, NULL),
(4, 0, 0, 40, 24, 20, 14, 14, 0, 0, 0, 0, 50, 50, 50, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(5, 1, 5, 30, 61, 0, 12, 2, 30, 2, 14, 24, 61, 47, 28, 81, 43, -27, -20, -20, 0, 48, 20, -28, 42, 2, 14, -100, -55, 40, 26, 25, 41, 0, 0, 0, 0, 0, 61, 18, 21, 61, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 61, 100, 0, 0, 0, 0, NULL),
(6, 1, 0, 11, 13, 14, 1, 2, 6, 8, 17, 12, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(7, 0, 0, 12, 0, 0, 0, 0, 9, 24, 25, 0, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `bans`
--

DROP TABLE IF EXISTS `bans`;
CREATE TABLE IF NOT EXISTS `bans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `playerId` int UNSIGNED NOT NULL,
  `adminId` int NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expires` datetime NOT NULL DEFAULT '2050-12-01 00:00:00',
  `deactivated` tinyint(1) NOT NULL DEFAULT '0',
  `deactivatedId` int DEFAULT NULL,
  `deactivatedReason` int DEFAULT NULL,
  `deactivatedTimestamp` int DEFAULT NULL,
  `socialId` int NOT NULL,
  `serial` varchar(255) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `PlayerAccID` (`playerId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `characters`
--

DROP TABLE IF EXISTS `characters`;
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `accountId` int UNSIGNED DEFAULT NULL,
  `appearanceId` int UNSIGNED NOT NULL,
  `characterName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `creationDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dob` date NOT NULL,
  `pob` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `posX` float NOT NULL DEFAULT '-1037',
  `posY` float NOT NULL DEFAULT '-2837',
  `posZ` float NOT NULL DEFAULT '21',
  `rot` float NOT NULL DEFAULT '-30',
  PRIMARY KEY (`id`),
  KEY `accountId` (`accountId`),
  KEY `AppearanceID` (`appearanceId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `characters`
--

INSERT INTO `characters` (`id`, `accountId`, `appearanceId`, `characterName`, `creationDate`, `dob`, `pob`, `posX`, `posY`, `posZ`, `rot`) VALUES
(7, 1, 1, 'Chy Dev', '2023-08-31 21:51:19', '2023-09-04', '0', 178.182, -1428.76, 29.2933, 33.6044),
(8, 2, 2, 'Big Bob', '2023-09-03 14:43:11', '0001-01-01', '0', -912.075, -2664.47, 13.8987, -95.7466),
(10, 2, 4, 'Uncle Mary', '2023-09-04 22:57:04', '2023-09-04', '0', 417.861, -810.597, 28.543, -171.314),
(11, 1, 5, 'Chy Gang', '2023-09-04 22:57:42', '2023-09-04', '0', -270.626, -1174.53, 22.4608, -0.509518),
(12, 3, 6, 'faszos lofasz', '2023-09-20 13:12:16', '2023-09-20', '0', -1037, -2738, 21, -30),
(13, 3, 7, 'szia chy', '2023-09-20 13:13:44', '2023-09-20', '0', 405.117, -813.278, 28.5772, -91.627);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `itemlist`
--

DROP TABLE IF EXISTS `itemlist`;
CREATE TABLE IF NOT EXISTS `itemlist` (
  `itemID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `itemName` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `itemDescription` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `itemType` int DEFAULT '0',
  `itemSection` int NOT NULL DEFAULT '0',
  `itemImage` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `itemStack` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `itemlist`
--

INSERT INTO `itemlist` (`itemID`, `itemName`, `itemDescription`, `itemType`, `itemSection`, `itemImage`, `itemStack`) VALUES
(1, 'Kulcs', 'Kinyitni tud dolgokat...', 0, 1, 'https://i.gyazo.com/3c0f74387f71da9234c1dc7b15c4253c.png', 1),
(2, 'HotDog', 'Finom', 0, 0, 'https://i.gyazo.com/7443867f8c6ad19c5aaa07fec773a2cf.png', 1),
(3, 'pisztoly', 'fegyosz', 1, 0, 'https://i.gyazo.com/4c67ad0b8d58714db91b21d1970fbd6a.png', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `DbID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ownerID` int UNSIGNED NOT NULL,
  `ownerType` int NOT NULL,
  `itemID` int UNSIGNED NOT NULL,
  `itemValue` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `itemAmount` int NOT NULL,
  `duty` tinyint(1) NOT NULL DEFAULT '0',
  `creationDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `itemSlot` tinyint NOT NULL,
  PRIMARY KEY (`DbID`),
  KEY `ItemID` (`itemID`),
  KEY `ItemOwnerVehicle` (`ownerID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `items`
--

INSERT INTO `items` (`DbID`, `ownerID`, `ownerType`, `itemID`, `itemValue`, `itemAmount`, `duty`, `creationDate`, `createdBy`, `itemSlot`) VALUES
(2, 7, 0, 1, '', 1, 0, '2023-09-26 18:54:52', 'dev', 2),
(3, 7, 0, 2, '', 1, 0, '2023-09-26 20:29:14', NULL, 5),
(4, 7, 0, 3, '', 1, 0, '2023-09-26 21:27:21', NULL, 15);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tokens`
--

DROP TABLE IF EXISTS `tokens`;
CREATE TABLE IF NOT EXISTS `tokens` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `accountId` int UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `expiration` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `TokenAccID` (`accountId`)
) ENGINE=InnoDB AUTO_INCREMENT=375 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `tokens`
--

INSERT INTO `tokens` (`id`, `accountId`, `token`, `expiration`) VALUES
(43, 1, 'REEOpfWarAui+YClalfsjM7BV0hmWnW8z/h0TCr3AGObn2sbJMKPjHlY2BTyY0GOoyuUImJaL+6AQ+RRD2yBiQ==', '2023-09-15 18:19:49'),
(75, 1, 'v05KZkXEYzeN3AojiIeBfULUaJmXkpsd1ooM9gyKUViBORf9UgJ4t9LKgtQ2xtVudA3kaDgcjIUoDjQ672mDqw==', '2023-09-16 11:10:19'),
(77, 1, 'aGZ6U7IZI5NnzCDC7yPT0Ra6qxbyL6HS3ze79e3NeA3cYd7yVo9uPdqHBIIdQvCdURc2pFU0o2wT9K4hOIcZGw==', '2023-09-16 11:18:32'),
(78, 1, 'jH00jPaBlGOFgdxi0/JQW5ydJKy/GqA6imz47KEG+Pg4wjQOec7s/5la5VfIDLnAGMtKoeJUV4oaCXiivUQIqw==', '2023-09-16 11:40:25'),
(79, 1, '5JlYzQxAvBgt4jfov1DDqFiZuAyy8qyQT2Le2LgZn/hYuliC+7Ugwb8Z1+XUQNXC/wlu5K2c7YyIwOBUoQzJ/A==', '2023-09-16 11:44:36'),
(80, 1, 'x1ZqUOMMplNM7tr0Lahk99GMFkiZkw0E7+4O1f6ufb7mYfhuEvhFzsPmc8CJHSw/k/32E9+AT6lQZMaDMPDOJg==', '2023-09-16 11:51:17'),
(83, 1, '7AdvVdnC6A2k1Nx9AaccOht7WF/1hQMDZtfR2MM0obIhGP6bPpbhKZvi6Iv5Ige2AeEUUVZ84OWb1RXOlUTZng==', '2023-09-16 12:32:56'),
(118, 2, '2zCPepjeUy4OHfkBKKA+7w9S0QCRcq5LsXKXO4SW6RvGKiAjSqiVPiHS7Fz+Stz89O6ovETBe7jpNid1M8vC4A==', '2023-09-17 14:40:31'),
(124, 1, 'h/q91adXZrvWqahw6nTp9c9CF0lRZPBoakvUh0cRFnJETumUx5U6i8t+6y5bjVN5wJLLIMKRRHHjxphfe/jtNw==', '2023-09-18 18:02:07'),
(149, 1, 'mZSubDSoCrNGWmLn1icxqtCR9PVzVqDGqLG5Q814IF+NxODZRQtoROHCFtqSS78cMYcj29KQLVDOiLbpbKko+w==', '2023-09-18 20:21:17'),
(173, 1, 'RtGeP3zvf4oeOKXIdQEncYsq5LXmKGNRzu0eoHINzquCDGGpsdkRCHl3Bzj+q6ujXh44XOt8BSFM85JvB2iXXA==', '2023-09-19 14:41:04'),
(233, 2, '5OFzwxR6hbIezBWLZHfvKvmKw/B6AVolbr9vQddw6ywMIihb7kzh1ljlOASyUTgWiiT75gTQeuiQ0CMlB89l8A==', '2023-09-20 22:41:30'),
(235, 3, 'pDFs/sDCwGfa+/asE91WGKZfOaC5dAFTzVPzH1kvmeJqNMNCCpc5XpMgtueM/cB5bw6bh3yb3vAHmwOCqk5lsA==', '2023-10-04 13:08:58'),
(360, 1, 'kiDM0eT5StBdwpEGSwqMCFA3poVRa2Bw8sS0BEAKYpUI0mIgVNp0zJi1t1/ZuSwxRXf+UdF3tI15sA0Bvk8RSA==', '2023-10-10 20:32:30'),
(374, 1, 'ui7XjEOP1gTbDb486y06lSY60NzBqshth73E4DtBIb7L6bt6TOC76juSsB0/XRlIxzukjHpX6OZof8yChPz/+A==', '2023-10-10 22:13:03');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ownerType` int NOT NULL,
  `ownerID` int UNSIGNED NOT NULL,
  `model` bigint NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `rotX` float NOT NULL,
  `rotY` float NOT NULL,
  `rotZ` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `VehicleOwnerPlayer` (`ownerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `bans`
--
ALTER TABLE `bans`
  ADD CONSTRAINT `PlayerAccID` FOREIGN KEY (`playerId`) REFERENCES `accounts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Megkötések a táblához `characters`
--
ALTER TABLE `characters`
  ADD CONSTRAINT `AccID` FOREIGN KEY (`accountId`) REFERENCES `accounts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `AppearanceID` FOREIGN KEY (`appearanceId`) REFERENCES `appearances` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Megkötések a táblához `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `ItemID` FOREIGN KEY (`itemID`) REFERENCES `itemlist` (`itemID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Megkötések a táblához `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `TokenAccID` FOREIGN KEY (`accountId`) REFERENCES `accounts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Megkötések a táblához `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `VehicleOwnerPlayer` FOREIGN KEY (`ownerID`) REFERENCES `characters` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
