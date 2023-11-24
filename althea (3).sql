-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2023. Nov 24. 07:59
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
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `adminLevel` int NOT NULL DEFAULT '0',
  `adminNick` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL DEFAULT '',
  `registerDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `passwordHash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `passwordSalt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `serial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `scId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `sc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `characterSlots` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `accounts`
--

INSERT INTO `accounts` (`id`, `userName`, `email`, `adminLevel`, `adminNick`, `registerDate`, `passwordHash`, `passwordSalt`, `serial`, `scId`, `sc`, `characterSlots`) VALUES
(1, 'Chy', 'chy@althea.hu', 10, '', '2023-08-31 20:19:07', '7irrMY/4RrueoXI8P+qUWZQbHrvJKbtS+exNEHIx+hd4imPbmfnd+7+MOO/saaU15NcjA0j8F0tPd9hGqTR1zPJCnCuQ5Q==', '5ntrk1MDntd4w8arKiISDul6iiSda6pLdOdyBb4VOnOkLFrbRmcxpDm20g9M/JH1dpx237kjC+WwrXZbo6oxcIS7MOjMxvzy1bKEyjVRbyow4xZfp/gW7MnuLt0oqHN2tGNXZQ==', 'D8903A0447DCA880A7E0057CCBF41C10CE30D8D8D5D27640B0C6102401728A80319C882076A65D10D8E0E54043861920E4526AE0681477E8AA7010047006F0C0', '67714232', 'CHYJIN', 2),
(2, 'mayev', 'megegyvacosacc@gmail.com', 0, '', '2023-09-03 14:36:26', 'SiWEX5Ihqe28wou3c2/UFJJ07sjPm2FZ/vT5Q8qyACBKPDldoG8Ztw+nkEkr1QmHGWFhn/jt4fKBknEYcDucUb3V/t6A+w==', '+q9c7edwuIF1FTIF/jTOQuiqUZpVCD0sbRsbDr3ZZmmlS9K3aPyjPFSBZF/LgmOurFJSGgYwxOqWSDTPc9j94fPmdH/DIDhhVe3wIqmIqbKGwcrOhpqY78xPHiT4r2xOkD74MQ==', 'D8903A045B5858583EEEC4C0D554D1001F6057102FBA81C8BBF018C8DD229C004B5CC1B01096EAD8B0B610BC242A1950A37608A056B6E9E0A83E7A949C96A640', '24763806', 'bati_a_batyus', 2),
(3, 'mandms', 'mandms@hcrp.hu', 0, '', '2023-09-20 13:08:52', 'oxQD+5k67KCwwWJ4tyoq1eMrXkgXhYBV0vY6ciYNgxALVSLsv7ogmmmlBmmDX6w+t9TG8Z1FaTlxwdFUoJizCumzsw9CSg==', 'KB4C7/wq8zkadPPAZfNsfrDxwEiTzplZsVADFsg7zIe78dypJ/1V4RRELv5GXwPcuSBs6pfkcUVOnsuhgRt2w2OiY2pGpdJuVgu/CnAtiEpASmRKjE0ojIPED0HCbss/fpG7gg==', 'DFBE67A8DD7E57487A72B834220A5AA0CFAE37486DCE67D81AC23824C23ABA40BF9E07E8FD1E7768BA12B814626A1AE0AF8ED7888D6E87F85A623804029A7A80', '85991460', 'MandMs-11', 2),
(4, 'morcsog', 'morcsog@vagyok.hu', 0, '', '2023-10-07 19:14:59', 'Yw+y4wDxR2xNYXGJrbNTkswsEG1cXkrGYwk1n/tyzrbn2yt+6UHXFgRUInd9aQPvHyYKssnRo7JG72zdHikLMWi42oQdvw==', 'Mb2ts06L8y2fq78QrBaXbAkfcV6arvQLNkHpybCoHwHPOG8DrQ3vv7ykDQjPh4QGyz9ZOJ1RiUbjgBT53XNAvCV2v3sO9HXHP4FGmfTjroNYzITDYZaXxhw3InFqVqVCul/O/Q==', 'D8903A045BAC82D8BC661CD41A0A4810B9E2F8F8C620B2B070F018C8DD224EC05B3865D0634CE5C0D9BAE3E0AE44D0A072E008A056B6E9F0FEDEB464841AA640', '185981925', 'Botika9696', 2),
(6, 'Chy2', 'Chy2@Chy2.com', 0, '', '2023-11-15 02:51:14', 'p7y9wcCN55AL4PJQv/hkQiItklDmeCapWQwvBii4bK5uXpMJTP3FW+d1Kd2hScNIkqUmRoDAOeM/vONjp3U4G9XQObGsfQ==', 'E45p9Kg/XQnVs8+3z6+TLwSkVauFzBtilLOOYHjVYO2lsHm1/1MqNSGB3ch0S5R+O4QgoAeySShhD0uoC3b3ZCT6UKQQirXe4YFvY5Fvx3CCiXawxNbRmywPiyDizI2AVVtiJw==', 'CE963468C95A2648B9125258560A5AD0AE46F408194AC6D8C962B278363ABAA08EF6B4A8693A6668D9B21298166A1A706EA67448B92A06F8E90272B8F69A7A40', '67714232', 'CHYJIN', 2),
(7, 'Fanni', 'pohfanni@gmail.com', 0, '', '2023-11-20 18:04:07', 'H2eQMbp3/gwTKM218jIx0obynyjqg3NNuM/7B0D4Ivv0+wD8dUQZjvvZ8nFW+6z0rkwTIxbdmislJgKa9NVWXFE6i7g+ww==', 'eDjwM7ibKETl9nKi+HsZ5vMXvlmHqhlBGtqhcc5mzAJ3ct4kKnnKvnecQxZhfobIdyjOgLsrC8c7fQL6BA6cclzk8C7C5VkaK2OmWzxA153IBOlVcPyjaQwfY1HrbHqVY4k+Zg==', 'D8903A045B70AC704C0A84DC5F880D001F18BF845D7E703818500A1C43308CC06C22A494E7285580873837BC3536F0705810DA342BF06C108C3AC44C6F260080', '177775224', 'Fanniih', 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `acmds`
--

DROP TABLE IF EXISTS `acmds`;
CREATE TABLE IF NOT EXISTS `acmds` (
  `id` int NOT NULL AUTO_INCREMENT,
  `command` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
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
-- Tábla szerkezet ehhez a táblához `anims`
--

DROP TABLE IF EXISTS `anims`;
CREATE TABLE IF NOT EXISTS `anims` (
  `id` int NOT NULL AUTO_INCREMENT,
  `command` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `dictionary` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `animation` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `flag` int NOT NULL,
  `category` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `anims`
--

INSERT INTO `anims` (`id`, `command`, `dictionary`, `animation`, `flag`, `category`) VALUES
(1, 'ul', '1', '2', 5, 'szép');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `appearances`
--

INSERT INTO `appearances` (`id`, `gender`, `eyeColor`, `hairStyle`, `hairColor`, `hairHighlight`, `parent1face`, `parent2face`, `parent3face`, `parent1skin`, `parent2skin`, `parent3skin`, `faceMix`, `skinMix`, `thirdMix`, `noseWidth`, `noseHeight`, `noseLength`, `noseBridge`, `noseTip`, `noseBroken`, `browHeight`, `browWidth`, `cheekboneHeight`, `cheekboneWidth`, `cheekWidth`, `eyes`, `lips`, `jawWidth`, `jawHeight`, `chinLength`, `chinPosition`, `chinWidth`, `chinShape`, `neckWidth`, `blemishId`, `blemishOpacity`, `facialhairId`, `facialhairColor`, `facialhairOpacity`, `eyebrowId`, `eyebrowColor`, `eyebrowOpacity`, `ageId`, `ageOpacity`, `makeupId`, `makeupOpacity`, `blushId`, `blushColor`, `blushOpacity`, `complexionId`, `complexionOpacity`, `sundamageId`, `sundamageOpacity`, `lipstickId`, `lipstickColor`, `lipstickOpacity`, `frecklesId`, `frecklesOpacity`, `chesthairId`, `chesthairColor`, `chesthairOpacity`, `bodyblemishId`, `bodyblemishOpacity`, `bodyblemish2Id`, `bodyblemish2Opacity`, `tattoos`) VALUES
(1, 0, 3, 84, 13, 15, 21, 34, 45, 29, 25, 8, 55, 26, 25, -40, 23, 68, 18, 9, 0, 20, -17, -57, -64, 24, 8, -100, -65, -95, 16, -6, 10, 0, 0, 255, 0, 255, 29, 0, 2, 60, 100, 255, 0, 5, 74, 2, 11, 100, 255, 0, 255, 0, 5, 22, 60, 5, 15, 255, 0, 0, 255, 0, 255, 0, NULL),
(2, 1, 0, 14, 42, 14, 34, 4, 2, 7, 18, 19, 23, 30, 21, -25, -51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 11, 2, 100, 18, 42, 100, 0, 0, 255, 100, 0, 0, 0, 3, 100, 0, 0, 0, 0, 0, 0, 0, 255, 31, 100, 0, 0, 0, 0, NULL),
(3, 0, 5, 84, 59, 60, 40, 21, 27, 29, 12, 23, 50, 20, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 2, 57, 100, 0, 0, 5, 66, 2, 7, 100, 0, 0, 0, 0, 3, 7, 67, 0, 42, 255, 0, 0, 2, 100, 0, 0, NULL),
(4, 0, 0, 40, 24, 20, 14, 14, 0, 0, 0, 0, 50, 50, 50, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(5, 1, 5, 30, 61, 0, 12, 2, 30, 2, 14, 24, 61, 47, 28, 81, 43, -27, -20, -20, 0, 48, 20, -28, 42, 2, 14, -100, -55, 40, 26, 25, 41, 0, 0, 0, 0, 0, 61, 18, 21, 61, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 61, 100, 0, 0, 0, 0, NULL),
(6, 1, 0, 11, 13, 14, 1, 2, 6, 8, 17, 12, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(7, 0, 0, 12, 0, 0, 0, 0, 9, 24, 25, 0, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(8, 1, 0, 40, 1, 0, 4, 15, 11, 14, 0, 0, 50, 9, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, NULL),
(9, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(10, 0, 5, 15, 3, 0, 8, 25, 25, 8, 2, 0, 100, 100, 49, -27, 22, 0, 2, 1, 52, 0, 0, 0, 0, 26, 0, -41, -62, -100, -89, -34, -83, -48, -100, 255, 0, 255, 0, 0, 1, 0, 79, 255, 0, 1, 75, 0, 11, 90, 255, 0, 255, 0, 5, 6, 72, 255, 0, 255, 0, 0, 0, 0, 255, 0, NULL),
(11, 1, 0, 14, 0, 5, 0, 0, 0, 23, 30, 23, 50, 50, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 100, 12, 0, 100, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `bans`
--

DROP TABLE IF EXISTS `bans`;
CREATE TABLE IF NOT EXISTS `bans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `playerId` int UNSIGNED NOT NULL,
  `adminId` int NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expires` datetime NOT NULL DEFAULT '2050-12-01 00:00:00',
  `deactivated` tinyint(1) NOT NULL DEFAULT '0',
  `deactivatedId` int DEFAULT NULL,
  `deactivatedReason` int DEFAULT NULL,
  `deactivatedTimestamp` int DEFAULT NULL,
  `socialId` int NOT NULL,
  `serial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `PlayerAccID` (`playerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

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
  `pob` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `posX` float NOT NULL DEFAULT '-1037',
  `posY` float NOT NULL DEFAULT '-2837',
  `posZ` float NOT NULL DEFAULT '21',
  `rot` float NOT NULL DEFAULT '-30',
  `dimension` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `accountId` (`accountId`),
  KEY `AppearanceID` (`appearanceId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `characters`
--

INSERT INTO `characters` (`id`, `accountId`, `appearanceId`, `characterName`, `creationDate`, `dob`, `pob`, `posX`, `posY`, `posZ`, `rot`, `dimension`) VALUES
(7, 1, 1, 'Chy Women', '2023-08-31 21:51:19', '2023-09-04', '0', 221.45, -984.5, -99, -90.0055, 0),
(8, 2, 2, 'Emmett Velaquez', '2023-09-03 14:43:11', '0001-01-01', '0', 1162.73, -258.621, 69.1322, -122.005, 0),
(10, 2, 4, 'Uncle Mary', '2023-09-04 22:57:04', '2023-09-04', '0', 417.861, -810.597, 28.543, -171.314, 0),
(11, 1, 5, 'Chy Black', '2023-09-04 22:57:42', '2023-09-04', '0', 427.078, -800.429, 29.4911, -78.512, 0),
(12, 3, 6, 'faszos lofasz', '2023-09-20 13:12:16', '2023-09-20', '0', -1037, -2738, 21, -30, 0),
(13, 3, 7, 'szia chy', '2023-09-20 13:13:44', '2023-09-20', '0', 405.117, -813.278, 28.5772, -91.627, 0),
(14, 4, 8, ' ', '2023-10-07 19:16:24', '2023-10-07', '0', 363.018, -832.975, 29.3676, -39.4535, 0),
(15, 6, 9, 'Chy Ketto', '2023-11-15 02:51:41', '2023-11-15', '0', -1037, -2738, 21, -30, 0),
(16, 7, 10, 'Audrey Hartley', '2023-11-20 18:23:12', '2023-11-20', '0', 1377.2, 233.655, -48.9945, -76.3347, 0),
(17, 7, 11, 'Elijah Barnes', '2023-11-22 19:42:48', '2023-11-22', '0', -1037, -2738, 21, -30, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `dealership`
--

DROP TABLE IF EXISTS `dealership`;
CREATE TABLE IF NOT EXISTS `dealership` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(30) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `limited` smallint UNSIGNED DEFAULT NULL,
  `availableFrom` datetime NOT NULL,
  `availableUntil` datetime NOT NULL,
  `addedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `addedBy` varchar(30) COLLATE utf8mb4_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `interiors`
--

DROP TABLE IF EXISTS `interiors`;
CREATE TABLE IF NOT EXISTS `interiors` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `postal` smallint UNSIGNED NOT NULL,
  `streetName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `streetNumber` smallint UNSIGNED NOT NULL,
  `ownerType` int NOT NULL,
  `ownerID` int NOT NULL,
  `entranceX` float NOT NULL,
  `entranceY` float NOT NULL,
  `entranceZ` float NOT NULL,
  `entranceHeading` float NOT NULL,
  `entranceDimension` int UNSIGNED NOT NULL DEFAULT '0',
  `exitX` float NOT NULL,
  `exitY` float NOT NULL,
  `exitZ` float NOT NULL,
  `exitHeading` float NOT NULL,
  `exitDimension` int UNSIGNED NOT NULL,
  `IPL` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `createdBy` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `creationDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `interiors`
--

INSERT INTO `interiors` (`id`, `name`, `postal`, `streetName`, `streetNumber`, `ownerType`, `ownerID`, `entranceX`, `entranceY`, `entranceZ`, `entranceHeading`, `entranceDimension`, `exitX`, `exitY`, `exitZ`, `exitHeading`, `exitDimension`, `IPL`, `createdBy`, `creationDate`) VALUES
(1, 'Amarillo Vista 12.', 0, '', 0, 0, 11, 1210, -1769, 39.92, 0, 0, 172.75, -1004.55, -99, 0, 1, NULL, '', '2023-11-02 00:02:15');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `itemlist`
--

DROP TABLE IF EXISTS `itemlist`;
CREATE TABLE IF NOT EXISTS `itemlist` (
  `itemID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `itemName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `itemDescription` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `itemType` int DEFAULT '0',
  `itemWeight` int UNSIGNED NOT NULL DEFAULT '1',
  `itemImage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `stackable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `itemlist`
--

INSERT INTO `itemlist` (`itemID`, `itemName`, `itemDescription`, `itemType`, `itemWeight`, `itemImage`, `stackable`) VALUES
(1, 'Férfi Kalap', '', 1, 500, 'https://cdn-icons-png.flaticon.com/512/6375/6375825.png', 0),
(2, 'Férfi Maszk', '', 1, 500, 'https://i.gyazo.com/414dd3637f0df2414ecd8f2410dcb747.png', 0),
(3, 'Férfi Nyaklánc', '', 1, 500, 'https://cdn-icons-png.flaticon.com/512/4831/4831818.png', 0),
(4, 'Férfi Szemüveg', '', 1, 500, 'https://i.gyazo.com/2cf37f74a6f54d9234ed3f0c8b394149.png', 0),
(5, 'Férfi Póló', '', 1, 500, 'https://i.gyazo.com/cace457c73e787d20d45e348ce1066a6.png', 0),
(6, 'Férfi Fülbevaló', '', 1, 500, 'https://i.gyazo.com/46dd1062c9eb0f41ba05144a4dcd52fa.png', 0),
(7, 'Férfi Nadrág', '', 1, 500, 'https://i.gyazo.com/9158a090afb4d76df0dea4c69b737fa4.png', 0),
(8, 'Férfi Karkötő', '', 1, 500, 'https://i.gyazo.com/0279b542f0b43441823ea619e4cb7a47.png', 0),
(9, 'Férfi Cipő', '', 1, 500, 'https://i.gyazo.com/357370e3e34824cb542eac1998d1b2d0.png', 0),
(10, 'Férfi Óra', '', 1, 500, 'https://i.gyazo.com/214b80dffbd9102877e6cca72a596dd6.png', 0),
(11, 'Férfi Táska', '', 1, 500, 'https://i.gyazo.com/933f909710f9ea35550f8f3925152e0f.png', 0),
(12, 'Férfi Páncél', '', 1, 500, 'https://i.gyazo.com/09f5aff199b7a7d255cf304d731695a7.png', 0),
(13, 'Férfi kitűző', '', 1, 500, '', 0),
(14, 'Női Kalap', '', 1, 500, '', 0),
(15, 'Női Maszk', '', 1, 500, 'https://i.gyazo.com/7ed180af1704baa76096c1cb596b26cf.png', 0),
(16, 'Női Nyaklánc', '', 1, 500, '', 0),
(17, 'Női Szemüveg', '', 1, 500, '', 0),
(18, 'Női Póló', '', 1, 500, 'https://i.gyazo.com/f23dad09522ca856fca2930b2bbf4d9b.png', 0),
(19, 'Női Fülbevaló', '', 1, 500, '', 0),
(20, 'Női Nadrág', '', 1, 500, 'https://i.gyazo.com/684ae5bf03bc8f46e92ac2346e549b26.png', 0),
(21, 'Női Karkötő', '', 1, 500, '', 0),
(22, 'Női Cipő', '', 1, 500, 'https://i.gyazo.com/3bdd0a2490f6f71a6eea7d412c96efcc.png', 0),
(23, 'Női Óra', '', 1, 500, '', 0),
(24, 'Női Táska', '', 1, 500, '', 0),
(25, 'Női Páncél', '', 1, 500, '', 0),
(26, 'Női Kitűző', '', 1, 500, '', 0),
(27, 'Kesztyű', '', 1, 500, 'https://i.gyazo.com/8f09c8e445eeaf1cc6cc2525eb94d32d.png', 0),
(28, 'Glock', '', 3, 1090, 'https://i.gyazo.com/e8dbc113a8fadaccd36c10b7e2378e90.png', 0);

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
  `itemValue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `itemAmount` int NOT NULL DEFAULT '1',
  `duty` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `creationDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `priority` int UNSIGNED NOT NULL DEFAULT '1000',
  `inUse` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`DbID`),
  KEY `ItemID` (`itemID`),
  KEY `ItemOwnerVehicle` (`ownerID`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `items`
--

INSERT INTO `items` (`DbID`, `ownerID`, `ownerType`, `itemID`, `itemValue`, `itemAmount`, `duty`, `createdBy`, `creationDate`, `priority`, `inUse`) VALUES
(71, 11, 0, 5, '{\"UndershirtDrawable\":15,\"UndershirtTexture\":0,\"Torso\":1,\"Drawable\":305,\"Texture\":8}', 1, 0, '11', '2023-11-22 14:29:13', 4, 0),
(72, 11, 0, 7, '{\"Drawable\":4,\"Texture\":0}', 1, 0, '11', '2023-11-22 14:29:41', 0, 1),
(73, 11, 0, 9, '{\"Drawable\":126,\"Texture\":3}', 1, 0, '11', '2023-11-22 14:29:52', 1, 1),
(74, 11, 0, 11, '{\"Drawable\":82,\"Texture\":5}', 1, 0, '11', '2023-11-22 14:30:15', 3, 1),
(75, 11, 0, 4, '{\"Drawable\":2,\"Texture\":0}', 1, 0, '11', '2023-11-22 14:30:52', 2, 1),
(76, 7, 0, 18, '{\"UndershirtDrawable\":2,\"UndershirtTexture\":0,\"Torso\":1,\"Drawable\":366,\"Texture\":0}', 1, 0, '7', '2023-11-22 16:04:02', 9, 1),
(77, 8, 2, 18, '{\"UndershirtDrawable\":2,\"UndershirtTexture\":0,\"Torso\":1,\"Drawable\":366,\"Texture\":1}', 1, 0, '7', '2023-11-22 16:06:24', 0, 0),
(78, 7, 0, 20, '{\"Drawable\":6,\"Texture\":0}', 1, 0, '7', '2023-11-22 16:26:00', 0, 1),
(79, 7, 0, 22, '{\"Drawable\":0,\"Texture\":0}', 1, 0, '7', '2023-11-22 16:26:16', 1, 1),
(80, 7, 0, 24, '{\"Drawable\":82,\"Texture\":0}', 1, 0, '7', '2023-11-23 01:19:34', 10, 0),
(81, 8, 3, 28, '-', 1, 0, '7', '2023-11-24 03:11:34', 1, 0),
(82, 7, 0, 27, '0', 1, 0, '7', '2023-11-24 03:11:52', 3, 0),
(83, 7, 0, 27, '1', 1, 0, '7', '2023-11-24 03:11:54', 8, 0),
(84, 7, 0, 27, '2', 1, 0, '7', '2023-11-24 03:11:56', 5, 1),
(85, 7, 0, 27, '3', 1, 0, '7', '2023-11-24 03:11:57', 2, 0),
(86, 9, 2, 27, '4', 1, 0, '7', '2023-11-24 03:11:58', 0, 0),
(87, 7, 0, 27, '5', 1, 0, '7', '2023-11-24 03:11:59', 7, 0),
(88, 8, 3, 27, '6', 1, 0, '7', '2023-11-24 03:12:00', 2, 0),
(89, 7, 0, 27, '7', 1, 0, '7', '2023-11-24 03:12:01', 6, 0),
(90, 7, 0, 27, '8', 1, 0, '7', '2023-11-24 03:12:02', 4, 0),
(91, 8, 3, 27, '9', 1, 0, '7', '2023-11-24 03:12:04', 3, 0),
(92, 8, 3, 27, '10', 1, 0, '7', '2023-11-24 03:12:05', 4, 0),
(94, 8, 3, 28, '-', 1, 0, '7', '2023-11-24 03:13:15', 17, 0),
(95, 8, 3, 28, '-', 1, 0, '7', '2023-11-24 03:13:17', 6, 0),
(96, 8, 3, 28, '-', 1, 0, '7', '2023-11-24 03:13:18', 0, 0),
(97, 8, 3, 28, '-', 1, 0, '7', '2023-11-24 03:13:18', 16, 0),
(98, 8, 3, 28, '-', 1, 0, '7', '2023-11-24 03:13:20', 8, 0),
(99, 8, 3, 28, '-', 1, 0, '7', '2023-11-24 03:13:20', 7, 0),
(100, 8, 3, 28, '-', 1, 0, '7', '2023-11-24 03:13:21', 9, 0),
(101, 8, 3, 28, '-', 1, 0, '7', '2023-11-24 03:13:21', 11, 0),
(102, 8, 3, 28, '-', 1, 0, '7', '2023-11-24 03:13:21', 5, 0),
(103, 8, 3, 28, '-', 1, 0, '7', '2023-11-24 03:13:22', 12, 0),
(104, 8, 3, 28, '-', 1, 0, '7', '2023-11-24 03:13:22', 14, 0),
(105, 8, 3, 28, '-', 1, 0, '7', '2023-11-24 03:13:22', 13, 0),
(106, 8, 3, 28, '-', 1, 0, '7', '2023-11-24 03:13:23', 15, 0),
(107, 9, 2, 28, '-', 1, 0, '7', '2023-11-24 03:13:30', 1, 0),
(108, 8, 3, 28, '-', 1, 0, '7', '2023-11-24 03:13:30', 10, 0),
(111, 11, 0, 27, '5', 1, 0, '11', '2023-11-24 06:21:06', 5, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `properties`
--

DROP TABLE IF EXISTS `properties`;
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `category` int NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `rotation` float NOT NULL DEFAULT '0',
  `IPL` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `properties`
--

INSERT INTO `properties` (`id`, `name`, `category`, `posX`, `posY`, `posZ`, `rotation`, `IPL`) VALUES
(1, 'Kis garázs', 1, 172.75, -1004.55, -99, 0, ''),
(2, 'Közepes garázs', 1, 194.35, -1003, -99, 0, ''),
(3, 'Nagy garázs', 1, 231.9, -1002.75, -99, 0, '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tokens`
--

DROP TABLE IF EXISTS `tokens`;
CREATE TABLE IF NOT EXISTS `tokens` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `accountId` int UNSIGNED NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `expiration` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `TokenAccID` (`accountId`)
) ENGINE=InnoDB AUTO_INCREMENT=874 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

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
(389, 1, 'iC9wU8rC+45L0VNDNjmn3y4ZjJ3y65IJhYJ/vedETdxHWAFMCRMjV7evEe6P3U+DQ5Yy/iEtB05tLU+m4Oa1QA==', '2023-10-21 20:07:37'),
(398, 1, 'WHnc8dSC6+rigoR9pfE+Z2a8XF5vDAl38QP0d2GhKpZbQMxddIJWyQOUXsvLofKgjGFaxKTSFQWRjPNAm3imbg==', '2023-10-31 18:03:28'),
(415, 1, 'Yl0Bte/iadAdYaqwpl4LViGHOcCVDYJEjPUDZoqM4fW7sah+N8T/yVrLn3DRhJO0utdslR9agOj0hZozgzeFcQ==', '2023-11-04 01:28:14'),
(423, 1, 'YoJaww/CiyfP8ft+HupqfI0OsFYIHVNSSXy/7XQdyqVPyPTbPh6ihbE3q2wjoTiqEO5HM/+Q54QE7mhhwzCwLw==', '2023-11-04 02:09:53'),
(442, 1, 'DWa7THoSnsjwk2lUjnOJfGEHv7E/QONRL9SnjyxmUU/y3dwY0cNJPp2n+dExx92uOnazXGQmoxsmsFU7cNs6vg==', '2023-11-04 18:18:08'),
(516, 1, '4FNw21bgn1RSr40pY2jXBfl+8Lvkv0uxf7E5cYHgoHExLM0kNOUfjsHKE9pqnWiTgS9fTJwzRX8fEgYhyNqUEA==', '2023-11-06 18:01:59'),
(517, 1, '/uC8kmaMWfZyfh/ikvaZOfzKa6cneCES6RRJjDstuUd3XyAOTuBHkvFYC43FEb/ZrKFVxMSu+9jmmSJVPl0YCw==', '2023-11-10 15:17:43'),
(518, 1, 'wjjIY4h17ZWo0zH3EBm+AmavgiUAm2YKPaOIbz89D/aNVyFkdcSp2PPvJ1H0A7Oe/SEWFWrU/EMvso087uvxmA==', '2023-11-10 17:25:44'),
(519, 1, 'IjuMG7dbGoKXBc1Nu8zDWMBRCQD33A6FV/PveEYhxKehew1O4v+t8xFVHgOCk39QWsZT3mSaZNcTpZIX0x8Kiw==', '2023-11-10 17:30:19'),
(520, 2, 'WHoCxVsjwA0NgkxW1PTHbNMVv2p2TruUuU6j2b/xTXDmIDJilgxhQeT/xITifUBgrFqY6njUZLvuK+tXQ9wfKg==', '2023-11-10 17:36:00'),
(521, 1, 'jFZJOBvqnF0SF30QJ3OXq9Ty54UJoMgSZOJ60j9q7PnpdWOuOp7+cJUBIEIhjf/0Q3chJ0s/aGbxoTFUMGiVgw==', '2023-11-10 17:38:30'),
(522, 1, 'yUk/HnrnHgJrijW0AZ+/NHVbvMJbFbpLtYiOcGpPjddpvHWbCrPpJuI3ovO3t0sJNQbMTcKKUsKmLbEqW5Rp2Q==', '2023-11-10 17:46:04'),
(523, 2, '//GoJ+sn2hQX3U4YOVKj0MlbEIkAg4kJ8w4l2lXBtYeCsS/x0kXklZI+njDHt6iOT54DL9xfLvF5UbWDU7ltDg==', '2023-11-10 17:56:38'),
(524, 2, 'l348Fa+DB8Y1SFwcHQIU0e7+PgE7d1DZt3zKpX7tkfSTQfwGJtrpXijOMRi5VHQr3Aqg3ebfSFVnD+q2E6GVGw==', '2023-11-14 22:37:11'),
(525, 2, 'KGC0kfd7niNC9PT9RoUN3iIyqk/ObN8Q7Qy5iQ7RAui94WuAUA0PG554JU6VVJxgXZJmHGjSgw1m6orM7s/oeg==', '2023-11-15 00:00:42'),
(526, 2, 'XyrCZBPsVz68/6Oawp7YdH8OosGREE8r6ip+5BYyEcYhz3esqrVLfyItCtcgc/fIc9kL9iAgjEO3/XHHi6WeHg==', '2023-11-16 15:51:03'),
(535, 1, '1iBWlWJVBmkyKV97SbEK9VAxhMFOhIY0OWCVGGwNHizPBxKghinp7RpDQa3u5qb7WDBIZ3LTgk9MAb6JqwLdgQ==', '2023-11-20 19:16:27'),
(547, 1, 'l8GY/1fXYa3zj87FsutVYADCqWwfxZoy7Pn11hZfEdKAc54yIiGck/qeHQIBd6zrq4M6DAtcrpodTQm9zZe4tg==', '2023-11-28 15:36:18'),
(559, 6, 'cZA4GgSbhqeBcg2637CvbKnNBGRX1Bntc7vFZQxKzxfyry1o5kOqXWMlMrUEXr63XwCBqz3vnhVOqYx0AOKqZg==', '2023-11-29 03:23:09'),
(603, 1, '/+pa84Mj7tQEVq61kpdCh0ihXGJY6usYPusgWP0/EV//JIpVgqBp1FPstvmU8112s7xW52EAt+KWxrxRq0dslw==', '2023-12-01 09:32:35'),
(641, 1, 'lAecw7APvZV9HZVDN0HzGbYwo6eNTZH3YvSKWs9/OMwova74I+jnKwiWcJuA3bZKgf1Vk8BqVsU25Y5rJCQQdg==', '2023-12-02 03:12:00'),
(660, 7, 'hwOIbmNGQFBwTP47sRcUjhs4zb5//Ee+9vyIVMyj117CTCHqO4sDLFCOrR7BWi2zuIl1MxWUXgFOFj3u7OLUzA==', '2023-12-04 18:10:18'),
(730, 1, 'ywdzeBewiwXkzjU9m7822Lua74AxOdYxwglQLk+KW3ayFiuWi0UCfdaeFey7A9OerToLCKIL0/UIYbd8fZHtqg==', '2023-12-05 09:32:45'),
(801, 7, '1BE4/0FkNVJQ6SIkzOAAJ8yM3qUp9LT6/+xS/gQsZks2QOl0okl9k1eQ2EdeQEUejSK9vRVL71+7OfhuTdwGaQ==', '2023-12-06 19:34:40'),
(802, 7, 'kAlLnJSoLcjQmRejdPeG4WdA2qP0VAZznulgXK+biStZcMVJIqoX2k1TAwMuyTfhHPoPthzHZBfJ+FBnm4a74w==', '2023-12-06 19:34:40'),
(810, 7, '19Tc1LdHqI0l4aHHJiB0FwBUeYM6DRbzYfQm37uHYJZz2xqUxXmBsAGb7pmiBT3p8CgybtjmA2e0j22tYZPpZg==', '2023-12-06 19:58:02'),
(852, 1, 'h9lHFPacsdVQOC4iAmqxldf3dotkpNeutjETiEOJUXoOOqLWsqx9u8TglBPGXDSiSb1RipqqV9bk7d9oKVlvjA==', '2023-12-07 04:23:44'),
(853, 1, 'oIMF7h5Yg/nLrpcsY+tAzQDnYWb2zjZn57dKUOUTtKMjoddNQ8KE8a8KK53v79gCrYZORpzq66JVVXX25P4R8g==', '2023-12-07 04:35:47'),
(865, 1, 'om/GzOF5EA3y/NVac2TzzXp2RSiNySYP0QX4ol72FcpAh03AT+hVsKoc/TZpvKuuy6hAX1tl16xCmIK6mlbH+w==', '2023-12-08 04:07:16'),
(873, 1, 'Y2ic6tWaJMmcqvbt10K8XyMSY2xLx01ZkxSRvTinhqZV+0LjG2nnkENSX8iSu4hfMoiDM66fPUyGypk1gBGD6g==', '2023-12-08 06:34:25');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ownerType` tinyint NOT NULL,
  `ownerID` int NOT NULL,
  `model` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `rotX` float NOT NULL,
  `rotY` float NOT NULL,
  `rotZ` float NOT NULL,
  `red1` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `green1` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `blue1` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `red2` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `green2` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `blue2` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `pearlescent` tinyint NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `engine` tinyint(1) NOT NULL DEFAULT '0',
  `numberPlateText` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `numberPlateType` tinyint NOT NULL,
  `dimension` int NOT NULL DEFAULT '0',
  `createdBy` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `creationDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `vehicles`
--

INSERT INTO `vehicles` (`id`, `ownerType`, `ownerID`, `model`, `posX`, `posY`, `posZ`, `rotX`, `rotY`, `rotZ`, `red1`, `green1`, `blue1`, `red2`, `green2`, `blue2`, `pearlescent`, `locked`, `engine`, `numberPlateText`, `numberPlateType`, `dimension`, `createdBy`, `creationDate`) VALUES
(1, 0, 11, 'elegy', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'SZEP', 0, 0, 'Chy', '2023-10-31 16:19:28'),
(2, 0, 11, 'yosemite2', -1395.74, 5101.09, 61.1378, 0, 0, 0, 255, 255, 255, 255, 255, 255, 0, 0, 0, 'VEGLEGES', 0, 0, 'makeveh', '2023-10-31 16:34:17'),
(3, 0, 11, 'tailgater2', -1395.35, 5100.4, 61.1399, 0, 0, 0, 255, 255, 255, 255, 255, 255, 0, 0, 0, 'Chy', 0, 0, 'Chy Gang', '2023-10-31 16:48:40'),
(4, 0, 8, 'growler', -1406.12, 5078.62, 61.1033, 0, 0, 0, 69, 82, 75, 69, 82, 75, 0, 0, 0, 'tesztbat', 0, 0, 'Big Bob', '2023-10-31 18:01:20'),
(5, 0, 8, 'openwheel1', 2435.07, 5650.29, 45.0789, 0, 0, 0, 255, 255, 255, 255, 255, 255, 0, 0, 0, '', 0, 0, 'Big Bob', '2023-10-31 23:53:28'),
(6, 0, 7, 'sentineldm', -81.8346, -1093.38, 26.3948, 0, 0, 0, 116, 181, 223, 116, 181, 223, 70, 0, 0, 'DRIFTER', 0, 0, 'Chy Women', '2023-11-02 16:32:49'),
(7, 0, 16, 'turismo2', 760.956, -38.9251, 59.9388, 0, 0, 0, 255, 255, 255, 255, 255, 255, 0, 0, 0, '', 0, 0, 'Audrey Hartley', '2023-11-20 18:39:31'),
(8, 0, 7, 'calico', -79.4252, -1094.1, 26.4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 'CELICA', 0, 0, 'Chy Nem', '2023-11-21 01:33:37'),
(9, 0, 7, 'drafter', -74.9683, -1089.65, 26.5698, 0, 0, 0, 255, 255, 255, 0, 0, 0, 37, 0, 0, 'AA-AA-12', 0, 0, 'Chy Women', '2023-11-24 03:44:57'),
(10, 0, 11, 'sentineldm', -1394.83, 5089.35, 61.0998, 0, 0, 0, 235, 64, 52, 235, 64, 52, 42, 0, 0, 'rendszam', 0, 0, 'Chy Black', '2023-11-24 05:47:08');

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `bans`
--
ALTER TABLE `bans`
  ADD CONSTRAINT `PlayerAccID` FOREIGN KEY (`playerId`) REFERENCES `accounts` (`id`);

--
-- Megkötések a táblához `characters`
--
ALTER TABLE `characters`
  ADD CONSTRAINT `AccID` FOREIGN KEY (`accountId`) REFERENCES `accounts` (`id`),
  ADD CONSTRAINT `AppearanceID` FOREIGN KEY (`appearanceId`) REFERENCES `appearances` (`id`);

--
-- Megkötések a táblához `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `ItemID` FOREIGN KEY (`itemID`) REFERENCES `itemlist` (`itemID`);

--
-- Megkötések a táblához `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `TokenAccID` FOREIGN KEY (`accountId`) REFERENCES `accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
