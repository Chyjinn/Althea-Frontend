-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2024. Már 11. 22:44
-- Kiszolgáló verziója: 8.2.0
-- PHP verzió: 8.2.13

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `accounts`
--

INSERT INTO `accounts` (`id`, `userName`, `email`, `adminLevel`, `adminNick`, `registerDate`, `passwordHash`, `passwordSalt`, `serial`, `scId`, `sc`, `characterSlots`) VALUES
(1, 'Chy', 'chy@althea.hu', 10, 'chyy', '2023-08-31 20:19:07', '7irrMY/4RrueoXI8P+qUWZQbHrvJKbtS+exNEHIx+hd4imPbmfnd+7+MOO/saaU15NcjA0j8F0tPd9hGqTR1zPJCnCuQ5Q==', '5ntrk1MDntd4w8arKiISDul6iiSda6pLdOdyBb4VOnOkLFrbRmcxpDm20g9M/JH1dpx237kjC+WwrXZbo6oxcIS7MOjMxvzy1bKEyjVRbyow4xZfp/gW7MnuLt0oqHN2tGNXZQ==', 'D8903A0447DCA880A7E0057CCBF41C10CE30D8D8D5D27640B0C6102401728A80319C882076A65D10D8E0E54043861920E4526AE0681477E8AA7010047006F0C0', '67714232', 'CHYJIN', 2),
(2, 'mayev', 'megegyvacosacc@gmail.com', 10, 'bate', '2023-09-03 14:36:26', 'SiWEX5Ihqe28wou3c2/UFJJ07sjPm2FZ/vT5Q8qyACBKPDldoG8Ztw+nkEkr1QmHGWFhn/jt4fKBknEYcDucUb3V/t6A+w==', '+q9c7edwuIF1FTIF/jTOQuiqUZpVCD0sbRsbDr3ZZmmlS9K3aPyjPFSBZF/LgmOurFJSGgYwxOqWSDTPc9j94fPmdH/DIDhhVe3wIqmIqbKGwcrOhpqY78xPHiT4r2xOkD74MQ==', 'D8903A045B5858583EEEC4C0D554D1001F6057102FBA81C8BBF018C8DD229C004B5CC1B01096EAD8B0B610BC242A1950A37608A056B6E9E0A83E7A949C96A640', '24763806', 'bati_a_batyus', 2),
(4, 'morcsog', 'morcsog@vagyok.hu', 0, '', '2023-10-07 19:14:59', 'Yw+y4wDxR2xNYXGJrbNTkswsEG1cXkrGYwk1n/tyzrbn2yt+6UHXFgRUInd9aQPvHyYKssnRo7JG72zdHikLMWi42oQdvw==', 'Mb2ts06L8y2fq78QrBaXbAkfcV6arvQLNkHpybCoHwHPOG8DrQ3vv7ykDQjPh4QGyz9ZOJ1RiUbjgBT53XNAvCV2v3sO9HXHP4FGmfTjroNYzITDYZaXxhw3InFqVqVCul/O/Q==', 'D8903A045BAC82D8BC661CD41A0A4810B9E2F8F8C620B2B070F018C8DD224EC05B3865D0634CE5C0D9BAE3E0AE44D0A072E008A056B6E9F0FEDEB464841AA640', '185981925', 'Botika9696', 2),
(6, 'Chy2', 'Chy2@Chy2.com', 7, '', '2023-11-15 02:51:14', 'p7y9wcCN55AL4PJQv/hkQiItklDmeCapWQwvBii4bK5uXpMJTP3FW+d1Kd2hScNIkqUmRoDAOeM/vONjp3U4G9XQObGsfQ==', 'E45p9Kg/XQnVs8+3z6+TLwSkVauFzBtilLOOYHjVYO2lsHm1/1MqNSGB3ch0S5R+O4QgoAeySShhD0uoC3b3ZCT6UKQQirXe4YFvY5Fvx3CCiXawxNbRmywPiyDizI2AVVtiJw==', 'CE963468C95A2648B9125258560A5AD0AE46F408194AC6D8C962B278363ABAA08EF6B4A8693A6668D9B21298166A1A706EA67448B92A06F8E90272B8F69A7A40', '67714232', 'CHYJIN', 2),
(7, 'Fanni', 'pohfanni@gmail.com', 0, '', '2023-11-20 18:04:07', 'H2eQMbp3/gwTKM218jIx0obynyjqg3NNuM/7B0D4Ivv0+wD8dUQZjvvZ8nFW+6z0rkwTIxbdmislJgKa9NVWXFE6i7g+ww==', 'eDjwM7ibKETl9nKi+HsZ5vMXvlmHqhlBGtqhcc5mzAJ3ct4kKnnKvnecQxZhfobIdyjOgLsrC8c7fQL6BA6cclzk8C7C5VkaK2OmWzxA153IBOlVcPyjaQwfY1HrbHqVY4k+Zg==', 'D8903A045B70AC704C0A84DC5F880D001F18BF845D7E703818500A1C43308CC06C22A494E7285580873837BC3536F0705810DA342BF06C108C3AC44C6F260080', '177775224', 'Fanniih', 2),
(8, 'mandms', 'mandmsmandms10@gmail.com', 0, '', '2023-11-28 17:57:17', 'F6YTlGXqh06F9/y5M2k8UfyvXh1uKN/7WdQEQgnkIXL/2Nl9Vm3diSB9ecepDYZjqIoU23VSBbUz1RUG1cPtSwmcyGTIJw==', 'adtuziRk31fq7tenlf9GVOeDAS+9jtM840YhRa2IMhkEhraejImLlkMjt3KvZnYe2v6FarWpumHGGNXGc7u3wj32EofHspAQnIYwxp6tztIhtMEDeEEIwzIVmiqdpHT5pNh/Sw==', 'DFBE67A8DD7E5078B0AE0534220A5AA0CFAE37486DCE5068B05EF524C23ABA40BF9E07E8FD1E5058B00EE514626A1AE0AF8ED7888D6E5048B0BED504029A7A80', '85991460', 'MandMs-11', 2),
(9, 'Kiko', 'fuzykiko@gmail.com', 0, '', '2023-12-01 18:44:05', 'XGJt8f47qHhaeUKkwaA3uoQ+q/3YW64F4pG4D/4hcRoBCp8b6Gjb+DiXvdg+qqzXaXt6CHN6z0bb/Q1zF3nJ42cRAlv3Ug==', 'We80UxY6r0C1Shu7MNB3pyFfNnXVUmVOnd01Qn6R62vyTqagIRFg6J7ylWqv7QqEY91DyJfOg8B14+upiF9Jql4mwVVAe+PXeSB5S+tQ7GYvmnEvWO51ycSPS1R+96idwlA/Xw==', 'D1D4EE40D2D826408CD6FA381AE83FA09A201ED07270F4687EA436D0AD6C46006AC8BEA05CFA021052B81B38F2E0B6C00AD0C48C867C6EA089049EC0021E3FC0', '108231911', 'fuzykrisztian', 2),
(10, 'Aszi', 'asztalos0322@gmail.com', 10, '', '2024-02-03 00:31:57', 'VAu/ffKWM7VWEDDudu/LM0JDju0TRQ1op1SvxcJ7+VEgq18q0aoDSfx9LOLnAMm6MmwO9hWgfSeUIyWxPLMM+4sqsh+BYg==', 'QLbnc/vPdozBwmPk52tgvTX6DjAdj60sL+UkiM4/XpzS1LoEcDVmCQeIMOjloPfsL8abBzRkkvvhYptCNCRjiNVoOU2dGXOY5en+Vf12hVbDMovMAY7ayx2m3POuEVSfeoPiKw==', 'D8903A045B1238381704B0ACD9D6E0001F9657845D5A563870F018C8DD225D00071E8E40FD8E8B00B0B691BCE95E29E07DE008A056B6E9A8C8D62518D04653C0', '120134406', 'Aszi404', 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `acmds`
--

INSERT INTO `acmds` (`id`, `command`, `adminLevel`) VALUES
(1, 'fly', 7),
(2, 'setdimension', 1),
(3, 'reloadacmds', 2),
(4, 'setadminlevel', 6),
(5, 'setcommandlevel', 7),
(6, 'adminjail', 1),
(7, 'adminduty', 1),
(8, 'unjail', 1),
(9, 'setadminnick', 7);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `adminjail`
--

DROP TABLE IF EXISTS `adminjail`;
CREATE TABLE IF NOT EXISTS `adminjail` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `targetAccountId` int UNSIGNED NOT NULL,
  `adminAccountId` int UNSIGNED NOT NULL,
  `adminNick` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `time` int NOT NULL,
  `remaining` int NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `servedDate` datetime DEFAULT NULL,
  `unjailBy` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `targetAccountId` (`targetAccountId`),
  KEY `adminAccountId` (`adminAccountId`),
  KEY `targetAccountId_2` (`targetAccountId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `appearances`
--

INSERT INTO `appearances` (`id`, `gender`, `eyeColor`, `hairStyle`, `hairColor`, `hairHighlight`, `parent1face`, `parent2face`, `parent3face`, `parent1skin`, `parent2skin`, `parent3skin`, `faceMix`, `skinMix`, `thirdMix`, `noseWidth`, `noseHeight`, `noseLength`, `noseBridge`, `noseTip`, `noseBroken`, `browHeight`, `browWidth`, `cheekboneHeight`, `cheekboneWidth`, `cheekWidth`, `eyes`, `lips`, `jawWidth`, `jawHeight`, `chinLength`, `chinPosition`, `chinWidth`, `chinShape`, `neckWidth`, `blemishId`, `blemishOpacity`, `facialhairId`, `facialhairColor`, `facialhairOpacity`, `eyebrowId`, `eyebrowColor`, `eyebrowOpacity`, `ageId`, `ageOpacity`, `makeupId`, `makeupOpacity`, `blushId`, `blushColor`, `blushOpacity`, `complexionId`, `complexionOpacity`, `sundamageId`, `sundamageOpacity`, `lipstickId`, `lipstickColor`, `lipstickOpacity`, `frecklesId`, `frecklesOpacity`, `chesthairId`, `chesthairColor`, `chesthairOpacity`, `bodyblemishId`, `bodyblemishOpacity`, `bodyblemish2Id`, `bodyblemish2Opacity`, `tattoos`) VALUES
(1, 0, 5, 84, 59, 3, 45, 31, 25, 29, 41, 12, 60, 0, 20, -3, -10, 100, 62, -6, 0, -37, 20, -65, -29, 43, 1, -100, -60, -29, -65, -42, 15, 0, 0, 255, 0, 255, 29, 0, 2, 58, 100, 255, 0, 5, 100, 2, 10, 67, 255, 20, 255, 0, 5, 22, 48, 0, 35, 255, 0, 0, 8, 100, 255, 0, NULL),
(2, 1, 2, 9, 13, 12, 11, 0, 0, 10, 0, 0, 100, 30, 21, -25, -51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 11, 0, 65, 2, 0, 68, 0, 0, 255, 100, 0, 0, 0, 3, 100, 0, 0, 0, 0, 0, 0, 0, 255, 31, 100, 0, 0, 0, 0, NULL),
(3, 0, 5, 84, 59, 60, 40, 21, 27, 29, 12, 23, 50, 20, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 2, 57, 100, 0, 0, 5, 66, 2, 7, 100, 0, 0, 0, 0, 3, 7, 67, 0, 42, 255, 0, 0, 2, 100, 0, 0, NULL),
(4, 0, 0, 48, 29, 29, 29, 0, 0, 29, 0, 0, 0, 19, 43, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 28, 0, 90, 0, 0, 0, 40, 255, 14, 92, 0, 0, 0, 0, 0, 21, 54, 0, 0, 255, 0, 0, 0, 0, 0, 0, NULL),
(5, 1, 5, 30, 61, 0, 12, 2, 30, 2, 14, 24, 61, 47, 28, 81, 43, -27, -20, -20, 0, 48, 20, -28, 42, 2, 14, -100, -55, 40, 26, 25, 41, 0, 0, 0, 0, 0, 61, 18, 21, 61, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 61, 100, 0, 0, 0, 0, NULL),
(6, 1, 0, 11, 13, 14, 1, 2, 6, 8, 17, 12, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(7, 0, 0, 12, 0, 0, 0, 0, 9, 24, 25, 0, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(8, 1, 0, 40, 1, 0, 4, 15, 11, 14, 0, 0, 50, 9, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, NULL),
(9, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(10, 0, 5, 15, 3, 0, 8, 25, 25, 8, 2, 0, 100, 100, 49, -27, 22, 0, 2, 1, 52, 0, 0, 0, 0, 26, 0, -41, -62, -100, -89, -34, -83, -48, -100, 255, 0, 255, 0, 0, 1, 0, 79, 255, 0, 1, 75, 0, 11, 90, 255, 0, 255, 0, 5, 6, 72, 255, 0, 255, 0, 0, 0, 0, 255, 0, NULL),
(11, 1, 0, 14, 0, 5, 0, 0, 0, 23, 30, 23, 50, 50, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 100, 12, 0, 100, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(12, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 2, 30, 0, 0, 0, 0, 0, 13, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(13, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(14, 0, 0, 41, 0, 0, 2, 8, 0, 0, 0, 0, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(15, 0, 3, 84, 9, 9, 31, 45, 0, 0, 0, 0, 50, 50, 0, -91, 8, 45, 48, 40, 0, -25, 0, -20, -20, -50, -70, -30, -90, -54, -40, -65, -44, -72, -2, 255, 0, 255, 0, 0, 1, 0, 100, 0, 0, 1, 46, 0, 0, 0, 255, 0, 255, 0, 255, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, NULL);

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
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `health` tinyint UNSIGNED NOT NULL DEFAULT '100',
  `armor` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `dimension` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `accountId` (`accountId`),
  KEY `AppearanceID` (`appearanceId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `characters`
--

INSERT INTO `characters` (`id`, `accountId`, `appearanceId`, `characterName`, `creationDate`, `dob`, `pob`, `posX`, `posY`, `posZ`, `rot`, `health`, `armor`, `dimension`) VALUES
(8, 2, 2, 'Emmett Velazquez', '2023-09-03 14:43:11', '0001-01-01', '0', 402.427, -856.428, 29.3463, 103.431, 100, 0, 0),
(10, 2, 4, 'Olivia Blix', '2023-09-04 22:57:04', '2023-09-04', '0', -1134.67, -671.624, 11.1588, 55.5429, 100, 0, 0),
(11, 1, 5, 'Teszt Egy', '2023-09-04 22:57:42', '1999-01-31', 'Los Santos', -1461.17, 0.103784, -165.577, -171.096, 100, 0, 0),
(14, 4, 8, ' ', '2023-10-07 19:16:24', '2023-10-07', '0', 363.018, -832.975, 29.3676, -39.4535, 100, 0, 0),
(15, 6, 9, 'Chy Ketto', '2023-11-15 02:51:41', '2023-11-15', '0', -60.044, -994.824, 29.147, -156.285, 100, 0, 0),
(16, 7, 10, 'Audrey Hartley', '2023-11-20 18:23:12', '2023-11-20', '0', 1377.2, 233.655, -48.9945, -76.3347, 100, 0, 0),
(17, 7, 11, 'Elijah Barnes', '2023-11-22 19:42:48', '2023-11-22', '0', 915.301, -485.422, 62.3503, 117.382, 100, 0, 0),
(18, 8, 12, 'Herceghalmi Odett Zoltán', '2023-11-28 18:01:07', '2023-11-28', '0', -1032.01, -2705.4, 13.8009, 39.8152, 100, 0, 0),
(19, 8, 13, ' ', '2023-11-28 18:18:16', '2023-11-28', '0', 1181.13, -346.899, 69.3343, 121.41, 100, 0, 0),
(20, 9, 14, 'Dorothy Harvey', '2023-12-01 18:50:25', '2023-12-01', '0', -1102.79, -2740.07, -7.41013, -5.06453, 100, 0, 0),
(21, 10, 15, 'Fiona Burns', '2024-02-03 00:47:05', '2024-02-03', '0', -761.908, 304.681, 85.7079, 2.64748, 100, 0, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `clothingshops`
--

DROP TABLE IF EXISTS `clothingshops`;
CREATE TABLE IF NOT EXISTS `clothingshops` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `dim` int UNSIGNED NOT NULL,
  `blip` smallint NOT NULL,
  `blipColor` tinyint UNSIGNED NOT NULL,
  `hatLow` tinyint(1) NOT NULL DEFAULT '0',
  `hatMed` tinyint(1) NOT NULL DEFAULT '0',
  `hatHigh` tinyint(1) NOT NULL DEFAULT '0',
  `maskLow` tinyint(1) NOT NULL DEFAULT '0',
  `maskMed` tinyint(1) NOT NULL DEFAULT '0',
  `maskHigh` tinyint(1) NOT NULL DEFAULT '0',
  `accLow` tinyint(1) NOT NULL DEFAULT '0',
  `accMed` tinyint(1) NOT NULL DEFAULT '0',
  `accHigh` tinyint(1) NOT NULL DEFAULT '0',
  `glassLow` tinyint(1) NOT NULL DEFAULT '0',
  `glassMed` tinyint(1) NOT NULL DEFAULT '0',
  `glassHigh` tinyint(1) NOT NULL DEFAULT '0',
  `topLow` tinyint(1) NOT NULL DEFAULT '0',
  `topMed` tinyint(1) NOT NULL DEFAULT '0',
  `topHigh` tinyint(1) NOT NULL DEFAULT '0',
  `earLow` tinyint(1) NOT NULL DEFAULT '0',
  `earMed` tinyint(1) NOT NULL DEFAULT '0',
  `earHigh` tinyint(1) NOT NULL DEFAULT '0',
  `pantsLow` tinyint(1) NOT NULL DEFAULT '0',
  `pantsMed` tinyint(1) NOT NULL DEFAULT '0',
  `pantsHigh` tinyint(1) NOT NULL DEFAULT '0',
  `braceletLow` tinyint(1) NOT NULL DEFAULT '0',
  `braceletMed` tinyint(1) NOT NULL DEFAULT '0',
  `braceletHigh` tinyint(1) NOT NULL DEFAULT '0',
  `shoesLow` tinyint(1) NOT NULL DEFAULT '0',
  `shoesMed` tinyint(1) NOT NULL DEFAULT '0',
  `shoesHigh` tinyint(1) NOT NULL DEFAULT '0',
  `watchLow` tinyint(1) NOT NULL DEFAULT '0',
  `watchMed` tinyint(1) NOT NULL DEFAULT '0',
  `watchHigh` tinyint(1) NOT NULL DEFAULT '0',
  `bagLow` tinyint(1) NOT NULL DEFAULT '0',
  `bagMed` tinyint(1) NOT NULL DEFAULT '0',
  `bagHigh` tinyint(1) NOT NULL DEFAULT '0',
  `armorLow` tinyint(1) NOT NULL DEFAULT '0',
  `armorMed` tinyint(1) NOT NULL DEFAULT '0',
  `armorHigh` tinyint(1) NOT NULL DEFAULT '0',
  `decalLow` tinyint(1) NOT NULL DEFAULT '0',
  `decalMed` tinyint(1) NOT NULL DEFAULT '0',
  `decalHigh` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `clothingshops`
--

INSERT INTO `clothingshops` (`id`, `name`, `posX`, `posY`, `posZ`, `dim`, `blip`, `blipColor`, `hatLow`, `hatMed`, `hatHigh`, `maskLow`, `maskMed`, `maskHigh`, `accLow`, `accMed`, `accHigh`, `glassLow`, `glassMed`, `glassHigh`, `topLow`, `topMed`, `topHigh`, `earLow`, `earMed`, `earHigh`, `pantsLow`, `pantsMed`, `pantsHigh`, `braceletLow`, `braceletMed`, `braceletHigh`, `shoesLow`, `shoesMed`, `shoesHigh`, `watchLow`, `watchMed`, `watchHigh`, `bagLow`, `bagMed`, `bagHigh`, `armorLow`, `armorMed`, `armorHigh`, `decalLow`, `decalMed`, `decalHigh`) VALUES
(1, 'Textie City Binco', 425.2, -806.5, 29, 0, 73, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `clothingshop_items`
--

DROP TABLE IF EXISTS `clothingshop_items`;
CREATE TABLE IF NOT EXISTS `clothingshop_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gender` tinyint(1) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `component` tinyint UNSIGNED NOT NULL,
  `category` tinyint UNSIGNED NOT NULL,
  `itemValue` json NOT NULL,
  `price` mediumint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `clothingshop_items`
--

INSERT INTO `clothingshop_items` (`id`, `gender`, `name`, `component`, `category`, `itemValue`, `price`, `image`) VALUES
(1, 1, 'Szép ing', 11, 1, '{\"Torso\": 1, \"Texture\": 1, \"Drawable\": 366, \"UndershirtTexture\": 0, \"UndershirtDrawable\": 15}', 500, 'https://i.gyazo.com/f0b097c06de5c58f40d9ce796a7ebf60.png'),
(2, 1, 'Csúnya ing', 11, 1, '{\"Torso\": 1, \"Texture\": 0, \"Drawable\": 14, \"UndershirtTexture\": 0, \"UndershirtDrawable\": 15}', 200, 'https://i.gyazo.com/b8beabb7927767c687c2658956a1fe44.png');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `dealership`
--

DROP TABLE IF EXISTS `dealership`;
CREATE TABLE IF NOT EXISTS `dealership` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `limited` smallint UNSIGNED DEFAULT NULL,
  `availableFrom` datetime NOT NULL,
  `availableUntil` datetime NOT NULL,
  `addedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `addedBy` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `grounditems`
--

DROP TABLE IF EXISTS `grounditems`;
CREATE TABLE IF NOT EXISTS `grounditems` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_DbID` bigint UNSIGNED NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `rotX` float NOT NULL,
  `rotY` float NOT NULL,
  `rotZ` float NOT NULL,
  `dim` int UNSIGNED NOT NULL,
  `thrownDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `thrownBy` bigint UNSIGNED NOT NULL,
  `pickupDate` datetime DEFAULT NULL,
  `pickupBy` bigint UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `grounditems`
--

INSERT INTO `grounditems` (`id`, `item_DbID`, `posX`, `posY`, `posZ`, `rotX`, `rotY`, `rotZ`, `dim`, `thrownDate`, `thrownBy`, `pickupDate`, `pickupBy`) VALUES
(14, 127, 1066.11, -461.822, 64.121, 0, 0, 0, 0, '2023-12-01 09:45:47', 11, '2023-12-01 09:49:07', 7),
(15, 133, 1066.34, -462.489, 64.0883, 0, 0, 0, 0, '2023-12-01 09:54:58', 11, '2023-12-01 09:55:02', 11),
(16, 133, 1066.25, -463.84, 64.0144, 0, 0, 0, 0, '2023-12-01 09:57:51', 11, '2023-12-01 09:57:53', 11),
(17, 133, 1063.92, -471.632, 63.5804, 0, 0, 0, 0, '2023-12-01 09:59:05', 11, '2023-12-01 09:59:07', 11),
(18, 129, 1073.42, -461.331, 64.0123, 2.29623, -3.5799, 0.0717688, 0, '2023-12-01 14:52:59', 11, '2023-12-01 14:53:01', 11),
(19, 133, 1066.11, -461.822, 64.1257, 0, 0, 0, 0, '2023-12-01 15:38:15', 11, '2023-12-01 15:38:22', 11),
(20, 133, 1066.11, -461.899, 64.117, 0, 0, 0, 0, '2023-12-01 15:52:51', 11, '2023-12-01 15:54:52', 11),
(21, 133, 1069.34, -465.469, 63.9504, 0, 0, 0, 0, '2023-12-01 15:56:05', 11, '2023-12-01 15:56:10', 11),
(22, 131, 1066.11, -461.822, 63.9477, 0, 0, 0, 0, '2023-12-01 16:54:53', 11, '2023-12-01 17:25:19', 11),
(23, 131, 1066.2, -460.952, 63.9946, 0, 0, 0, 0, '2023-12-01 17:25:25', 11, '2023-12-01 17:26:59', 11),
(24, 133, 1065.13, -469.809, 63.6941, 0, 0, 0, 0, '2023-12-01 17:25:39', 11, '2023-12-01 17:25:45', 11),
(25, 133, 1065.47, -470.653, 63.6272, 3.6825, 2.90699, -0.0934709, 0, '2023-12-01 17:25:49', 11, '2023-12-01 17:25:52', 11),
(26, 131, 1066.11, -461.822, 63.9477, 0, 0, 0, 0, '2023-12-01 17:37:30', 11, '2023-12-01 17:37:49', 11),
(27, 133, 1066.24, -461.468, 64.1411, 0, 0, 0, 0, '2023-12-01 17:37:54', 11, '2023-12-01 17:37:57', 11),
(28, 131, 1066.11, -461.822, 63.9477, 0, 0, 0, 0, '2023-12-01 18:04:44', 11, '2023-12-01 18:04:47', 11),
(29, 133, 1065.97, -462.796, 64.0674, 0, 0, 0, 0, '2023-12-01 18:04:52', 11, '2023-12-01 18:26:29', 11),
(30, 133, 1066.11, -461.822, 64.121, 0, 0, 0, 0, '2023-12-01 18:26:36', 11, '2023-12-01 18:32:42', 11),
(31, 133, 1066.11, -461.822, 64.121, 0, 0, 0, 0, '2023-12-01 18:37:04', 11, '2023-12-01 18:41:02', 11),
(32, 133, 1066.11, -461.83, 64.1206, 0, 0, 0, 0, '2023-12-01 18:41:07', 11, '2023-12-01 18:41:16', 11),
(33, 144, -1039.05, -2740.68, 19.3775, 0, 0, 0, 0, '2023-12-01 18:53:22', 11, '2023-12-01 19:16:52', 11),
(34, 133, -807.808, -2544.05, 12.901, 0, 0, 0, 0, '2023-12-01 19:02:20', 11, '2023-12-01 19:02:54', 20),
(35, 131, -808.24, -2545.17, 12.7201, 0, 0, 0, 0, '2023-12-01 19:02:54', 11, '2023-12-01 19:03:25', 20),
(36, 133, -808.978, -2542.11, 12.9749, 0, 0, 0, 0, '2023-12-01 19:03:09', 20, NULL, NULL),
(37, 132, 1066.66, -462.868, 63.8995, 0, 0, 0, 0, '2023-12-01 19:09:25', 11, '2023-12-01 19:09:28', 11),
(38, 144, 1065.83, -463.948, 64.0094, 0, 0, 0, 0, '2023-12-02 14:29:56', 11, '2023-12-02 14:30:20', 11),
(39, 144, 416.017, -816.584, 28.4295, 0, 0, 0, 0, '2023-12-02 14:49:47', 11, '2023-12-02 14:50:03', 11),
(40, 150, 1020.84, -430.564, 63.9983, 0, 0, 0, 0, '2023-12-02 21:40:26', 11, '2023-12-02 21:40:43', 11),
(41, 151, 1019.13, -429.697, 0, 0, 0, 0, 0, '2023-12-02 21:41:14', 11, NULL, NULL),
(42, 113, 1019.67, -428.035, 64.158, 3.20718, -1.87689, 0.0525488, 0, '2023-12-02 21:42:14', 11, '2023-12-02 21:42:20', 11),
(43, 152, 1019.44, -429.181, 64.0553, 4.30933, -1.03032, 0.0387659, 0, '2023-12-02 21:42:47', 11, '2023-12-02 21:43:02', 11),
(44, 152, 1020.22, -429.097, 64.0787, 4.30933, -1.03032, 0.0387659, 0, '2023-12-02 21:43:06', 11, '2023-12-02 21:43:14', 11),
(45, 149, 1066.11, -461.822, 63.9644, 0, 0, 0, 0, '2023-12-02 21:55:05', 11, '2023-12-02 21:57:56', 11),
(46, 149, 1066.81, -462.501, 63.935, 0, 90, 0, 0, '2023-12-02 21:57:59', 11, '2023-12-02 22:05:10', 11),
(47, 149, 1066.85, -463.137, 63.8892, -9.67648, -1.23303, 89.8956, 0, '2023-12-02 22:07:19', 11, '2023-12-02 22:07:25', 11),
(48, 149, 1066.11, -461.822, 63.9644, 90, 90, 0, 0, '2023-12-02 22:10:17', 11, '2023-12-02 22:10:26', 11),
(49, 149, 1065.95, -463.142, 63.8923, 90, 90, 0, 0, '2023-12-02 22:10:29', 11, '2023-12-02 22:24:31', 11),
(50, 153, 1066.2, -463.467, 63.9215, 90, 90, 0, 0, '2023-12-02 22:11:43', 11, NULL, NULL),
(51, 154, 1066.27, -460.833, 63.9716, 90, 90, 0, 0, '2023-12-02 22:25:03', 11, NULL, NULL),
(52, 155, 1066.83, -460.782, 63.9803, 90, 90, 0, 0, '2023-12-02 22:25:21', 11, '2023-12-02 22:25:25', 11),
(53, 155, 1066.98, -460.309, 64.0067, 90, 90, 0, 0, '2023-12-02 22:31:06', 11, '2023-12-02 22:31:09', 11),
(54, 152, 427.208, -800.893, 28.4922, 0, 0, 0, 0, '2023-12-06 19:05:21', 11, '2023-12-06 19:05:25', 11),
(55, 132, 416.507, -807.595, 28.4088, 0, 0, 0, 0, '2023-12-06 23:24:51', 11, '2023-12-06 23:26:06', 11),
(56, 137, -262.266, -1264.48, 28.7993, -4.44989, -0.0068689, -0.000266873, 0, '2023-12-18 14:51:26', 7, '2023-12-18 14:51:29', 7),
(57, 144, 419.699, -815.925, 28.4127, 0, 0, 0, 0, '2024-02-03 00:02:20', 11, '2024-02-03 02:02:28', 11),
(58, 144, 416.629, -813.889, 28.4617, 0, 0, 0, 0, '2024-02-03 02:02:52', 11, '2024-02-03 02:03:22', 11),
(59, 166, 918.759, -499.321, 57.8826, -1.46834, -4.64353, -0.0595361, 0, '2024-02-08 20:19:24', 21, '2024-02-08 20:19:30', 21);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `injuries`
--

DROP TABLE IF EXISTS `injuries`;
CREATE TABLE IF NOT EXISTS `injuries` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `characterID` bigint UNSIGNED NOT NULL,
  `causedBy` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `damage` int NOT NULL DEFAULT '0',
  `damageType` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `bone` int UNSIGNED NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `characterID` (`characterID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `interiors`
--

DROP TABLE IF EXISTS `interiors`;
CREATE TABLE IF NOT EXISTS `interiors` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `category` tinyint UNSIGNED NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `heading` float NOT NULL DEFAULT '0',
  `IPL` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `interiors`
--

INSERT INTO `interiors` (`id`, `name`, `category`, `posX`, `posY`, `posZ`, `heading`, `IPL`) VALUES
(1, 'Kis garázs', 1, 173.15, -1004.02, -99.99, 0, ''),
(2, 'Közepes garázs', 1, 194.6, -1003.43, -99.99, 0, ''),
(3, 'Nagy garázs', 1, 225.78, -1002, -99.99, -5, ''),
(4, 'Low End Apartment', 2, 266.08, -1007.35, -102.01, 0, ''),
(5, 'Medium End Apartment', 2, 346.53, -1012.61, -100.2, 0, ''),
(6, '4 Integrity Way, Apt 28', 3, -31.14, -595.2, 79.03, -110, ''),
(7, '4 Integrity Way, Apt 30', 3, -18.6, -591.8, 89.11, -20, ''),
(8, 'Dell Perro Heights, Apt 4', 3, -1452.23, -540.48, 73.05, 30, ''),
(9, 'Dell Perro Heights, Apt 7', 3, -1450.05, -525.8, 55.93, 30, ''),
(10, 'Richard Majestic, Apt 2', 3, -912.78, -365.16, 113.28, 110, ''),
(11, 'Tinsel Towers, Apt 42', 3, -603.31, 58.99, 97.2, 90, ''),
(12, 'Eclipse Towers, Apt 3', 3, -784.94, 323.55, 210.99, -90, ''),
(13, '3655 Wild Oats Drive', 2, -174.22, 497.2, 136.67, -170, ''),
(14, '2044 North Conker Avenue', 2, 341.52, 437.56, 148.399, 120, ''),
(15, '2045 North Conker Avenue', 2, 373.56, 423.045, 144.913, 170, ''),
(16, '2862 Hillcrest Avenue', 2, -682.14, 595.21, 145.39, -140, ''),
(17, '2868 Hillcrest Avenue', 2, -759.11, 618.82, 143.159, 120, ''),
(18, '2874 Hillcrest Avenue', 2, -859.8, 690.69, 151.87, -180, ''),
(19, '2677 Whispymound Drive', 2, 117.32, 559.24, 183.32, -180, ''),
(20, '2133 Mad Wayne Thunder', 2, -1289.76, 449.03, 96.9, -180, ''),
(21, 'Motel', 2, 151.43, -1007.32, -99.99, 0, ''),
(22, 'Modern 1 Apartment', 3, -786.4, 315.75, 216.63, -90, 'apa_v_mp_h_01_a'),
(23, 'Modern 2 Apartment', 3, -786.4, 315.75, 186.91, -90, 'apa_v_mp_h_01_c'),
(24, 'Modern 3 Apartment', 3, -774.6, 342.01, 195.69, 90, 'apa_v_mp_h_01_b'),
(25, 'Mody 1 Apartment', 3, -786.63, 315.76, 216.64, -90, 'apa_v_mp_h_02_a	'),
(26, 'Mody 2 Apartment', 3, -786.4, 315.75, 186.91, -90, 'apa_v_mp_h_02_c'),
(27, 'Mody 3 Apartment', 3, -774.32, 324.07, 195.69, 90, 'apa_v_mp_h_02_b'),
(28, 'Vibrant 1 Apartment', 3, -786.4, 315.75, 216.63, -90, 'apa_v_mp_h_03_a'),
(29, 'Vibrant 2 Apartment', 3, -786.4, 315.75, 186.91, -90, 'apa_v_mp_h_03_c'),
(30, 'Vibrant 3 Apartment', 3, -774.6, 342.01, 195.69, 90, 'apa_v_mp_h_03_b'),
(31, 'Sharp 1 Apartment', 3, -786.4, 315.75, 216.63, -90, 'apa_v_mp_h_04_a'),
(32, 'Sharp 2 Apartment', 3, -786.4, 315.75, 186.91, -90, 'apa_v_mp_h_04_c'),
(33, 'Sharp 3 Apartment', 3, -774.6, 342.01, 195.69, 90, 'apa_v_mp_h_04_b'),
(34, 'Monochrome 1 Apartment	', 3, -786.4, 315.75, 216.63, -90, 'apa_v_mp_h_05_a'),
(35, 'Monochrome 2 Apartment', 3, -786.4, 315.75, 186.91, -90, 'apa_v_mp_h_05_c'),
(36, 'Monochrome 3 Apartment', 3, -774.6, 342.01, 195.69, 90, 'apa_v_mp_h_05_b'),
(37, 'Seductive 1 Apartment', 3, -786.4, 315.75, 216.63, -90, 'apa_v_mp_h_06_a'),
(38, 'Seductive 2 Apartment', 3, -786.4, 315.75, 186.91, -90, 'apa_v_mp_h_06_c'),
(39, 'Seductive 3 Apartment', 3, -774.6, 342.01, 195.69, 90, 'apa_v_mp_h_06_b'),
(40, 'Regal 1 Apartment', 3, -786.4, 315.75, 216.63, -90, 'apa_v_mp_h_07_a'),
(41, 'Regal 2 Apartment', 3, -786.4, 315.75, 186.91, -90, 'apa_v_mp_h_07_c'),
(42, 'Regal 3 Apartment', 3, -774.6, 342.01, 195.69, 90, 'apa_v_mp_h_07_b'),
(43, 'Aqua 1 Apartment', 3, -786.4, 315.75, 216.63, -90, 'apa_v_mp_h_08_a'),
(44, 'Aqua 2 Apartment', 3, -786.4, 315.75, 186.91, -90, 'apa_v_mp_h_08_c'),
(45, 'Aqua 3 Apartment', 3, -774.6, 342.01, 195.69, 90, 'apa_v_mp_h_08_b'),
(46, 'Arcadius Business Centre - Executive Rich', 4, -141.195, -614.075, 167.82, -170, 'ex_dt1_02_office_02b'),
(47, 'Arcadius Business Centre - Executive Cool', 4, -141.195, -614.075, 167.82, -170, 'ex_dt1_02_office_02c'),
(48, 'Arcadius Business Centre - Executive Contrast', 4, -141.195, -614.075, 167.82, -170, 'ex_dt1_02_office_02a'),
(49, 'Arcadius Business Centre - Old Spice Warm', 4, -141.195, -614.075, 167.82, -170, 'ex_dt1_02_office_01a'),
(50, 'Arcadius Business Centre - Old Spice Classical', 4, -141.195, -614.075, 167.82, -170, 'ex_dt1_02_office_01b'),
(51, 'Arcadius Business Centre - Old Spice Vintage', 4, -141.195, -614.075, 167.82, -170, 'ex_dt1_02_office_01c'),
(52, 'Arcadius Business Centre - Power Broker Ice', 4, -141.195, -614.075, 167.82, -170, 'ex_dt1_02_office_03a'),
(53, 'Arcadius Business Centre - Power Broker Conservative', 4, -141.195, -614.075, 167.82, -170, 'ex_dt1_02_office_03b'),
(54, 'Arcadius Business Centre - Power Broker Polished', 4, -141.195, -614.075, 167.82, -170, 'ex_dt1_02_office_03c'),
(55, 'Maze Bank Building - Executive Rich', 4, -78.84, -833.03, 242.39, -20, 'ex_dt1_11_office_02b'),
(56, 'Maze Bank Building - Executive Cool', 4, -78.84, -833.03, 242.39, -20, 'ex_dt1_11_office_02c'),
(57, 'Maze Bank Building - Executive Contrast', 4, -78.84, -833.03, 242.39, -20, 'ex_dt1_11_office_02a'),
(58, 'Maze Bank Building - Old Spice Warm', 4, -78.84, -833.03, 242.39, -20, 'ex_dt1_11_office_01a'),
(59, 'Maze Bank Building - Old Spice Classical', 4, -78.84, -833.03, 242.39, -20, 'ex_dt1_11_office_01b'),
(60, 'Maze Bank Building - Old Spice Vintage', 4, -78.84, -833.03, 242.39, -20, 'ex_dt1_11_office_01c'),
(61, 'Maze Bank Building - Power Broker Ice', 4, -78.84, -833.03, 242.39, -20, 'ex_dt1_11_office_03a'),
(62, 'Maze Bank Building - Power Broker Conservative', 4, -78.84, -833.03, 242.39, -20, 'ex_dt1_11_office_03b'),
(63, 'Maze Bank Building - Power Broker Polished', 4, -78.84, -833.03, 242.39, -20, 'ex_dt1_11_office_03c'),
(64, 'Lom Bank - Executive Rich', 4, -1582.76, -558.83, 107.53, -140, 'ex_sm_13_office_02b'),
(65, 'Lom Bank - Executive Cool', 4, -1582.76, -558.83, 107.53, -140, 'ex_sm_13_office_02c'),
(66, 'Lom Bank - Executive Contrast', 4, -1582.76, -558.83, 107.53, -140, 'ex_sm_13_office_02a'),
(67, 'Lom Bank - Old Spice Warm', 4, -1582.76, -558.83, 107.53, -140, 'ex_sm_13_office_01a'),
(68, 'Lom Bank - Old Spice Classical', 4, -1582.76, -558.83, 107.53, -140, 'ex_sm_13_office_01b'),
(69, 'Lom Bank - Old Spice Vintage', 4, -1582.76, -558.83, 107.53, -140, 'ex_sm_13_office_01c'),
(70, 'Lom Bank - Power Broker Ice', 2, -1582.76, -558.83, 107.53, -140, 'ex_sm_13_office_03a'),
(71, 'Lom Bank - Power Broker Conservative', 2, -1582.76, -558.83, 107.53, -140, 'ex_sm_13_office_03b'),
(72, 'Lom Bank - Power Broker Polished', 2, -1582.76, -558.83, 107.53, -140, 'ex_sm_13_office_03c'),
(73, 'Maze Bank West - Executive Rich', 2, -1399.49, -480.49, 71.043, -90, 'ex_sm_15_office_02b'),
(74, 'Maze Bank West - Executive Cool', 2, -1399.49, -480.49, 71.043, -90, 'ex_sm_15_office_02c'),
(75, 'Maze Bank West - Executive Contrast', 2, -1399.49, -480.49, 71.043, -90, 'ex_sm_15_office_02a'),
(76, 'Maze Bank West - Old Spice Warm', 2, -1399.49, -480.49, 71.043, -90, 'ex_sm_15_office_01a'),
(77, 'Maze Bank West - Old Spice Classical', 2, -1399.49, -480.49, 71.043, -90, 'ex_sm_15_office_01b'),
(78, 'Maze Bank West - Old Spice Vintage', 2, -1399.49, -480.49, 71.043, -90, 'ex_sm_15_office_01c'),
(79, 'Maze Bank West - Power Broker Ice', 2, -1399.49, -480.49, 71.043, -90, 'ex_sm_15_office_03a'),
(80, 'Maze Bank West - Power Broker Conservative', 2, -1399.49, -480.49, 71.043, -90, 'ex_sm_15_office_03b'),
(81, 'Maze Bank West - Power Broker Polished', 2, -1399.49, -480.49, 71.043, -90, 'ex_sm_15_office_03c'),
(82, 'Franklin House', 2, -14.18, -1440.05, 30.1, 0, 'franklin'),
(83, 'Lost MC Clubhouse', 5, 980.97, -101.75, 73.85, -40, 'bkr_bi_hw1_13_int'),
(84, 'Warehouse Small', 5, 1088.2, -3099.46, -39.99, -90, ''),
(85, 'Warehouse Medium', 5, 1048.91, -3097.12, -39.99, -90, ''),
(86, 'Warehouse Large', 5, 992.95, -3097.82, -39.99, -90, ''),
(87, 'Casino Garage', 1, 1255.69, 222.7, -49.07, 0, 'vw_casino_garage'),
(88, 'Casino Carpark', 1, 1342.54, 183.5, -48.36, -90, 'vw_casino_carpark'),
(89, 'Psychiatrist\'s Office', 5, -1902.74, -572.78, 18.097, 115, ''),
(90, 'Lester\'s House', 2, 1273.92, -1719.22, 53.77, 15, 'lester');

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
  `object` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL DEFAULT '',
  `stackable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `itemlist`
--

INSERT INTO `itemlist` (`itemID`, `itemName`, `itemDescription`, `itemType`, `itemWeight`, `itemImage`, `object`, `stackable`) VALUES
(1, 'Férfi Kalap', '', 1, 500, 'https://i.gyazo.com/cb56c8240d017d069135c9140804df12.png', 'reh_prop_reh_hat_cowboy_01a', 0),
(2, 'Férfi Maszk', '', 1, 500, 'https://i.gyazo.com/414dd3637f0df2414ecd8f2410dcb747.png', '', 0),
(3, 'Férfi Nyaklánc', '', 1, 500, 'https://cdn-icons-png.flaticon.com/512/4831/4831818.png', 'sf_prop_sf_necklace_01a', 0),
(4, 'Férfi Szemüveg', '', 1, 500, 'https://i.gyazo.com/2cf37f74a6f54d9234ed3f0c8b394149.png', 'prop_cs_sol_glasses', 0),
(5, 'Férfi Póló', '', 1, 500, 'https://i.gyazo.com/f59f65f611d7fecab07341b470e3e541.png', 'prop_ld_tshirt_02', 0),
(6, 'Férfi Fülbevaló', '', 1, 500, 'https://i.gyazo.com/46dd1062c9eb0f41ba05144a4dcd52fa.png', '', 0),
(7, 'Férfi Nadrág', '', 1, 500, 'https://i.gyazo.com/9158a090afb4d76df0dea4c69b737fa4.png', 'prop_ld_jeans_01', 0),
(8, 'Férfi Karkötő', '', 1, 500, 'https://i.gyazo.com/0279b542f0b43441823ea619e4cb7a47.png', 'sf_prop_sf_bracelet_01a', 0),
(9, 'Férfi Cipő', '', 1, 500, 'https://i.gyazo.com/357370e3e34824cb542eac1998d1b2d0.png', '', 0),
(10, 'Férfi Óra', '', 1, 500, 'https://i.gyazo.com/214b80dffbd9102877e6cca72a596dd6.png', '', 0),
(11, 'Férfi Táska', '', 1, 500, 'https://i.gyazo.com/933f909710f9ea35550f8f3925152e0f.png', 'prop_big_bag_01', 0),
(12, 'Férfi Páncél', '', 1, 500, 'https://i.gyazo.com/09f5aff199b7a7d255cf304d731695a7.png', '', 0),
(13, 'Férfi kitűző', '', 1, 500, '', '', 0),
(14, 'Női Kalap', '', 1, 500, 'https://i.gyazo.com/942009a74eb1bd1390c00ecdb82152e4.png', '', 0),
(15, 'Női Maszk', '', 1, 500, 'https://i.gyazo.com/7ed180af1704baa76096c1cb596b26cf.png', '', 0),
(16, 'Női Nyaklánc', '', 1, 500, '', '', 0),
(17, 'Női Szemüveg', '', 1, 500, '', '', 0),
(18, 'Női Póló', '', 1, 500, 'https://i.gyazo.com/3ef3553dc7ac35bc725db55222871c4f.png', 'prop_ld_tshirt_02', 0),
(19, 'Női Fülbevaló', '', 1, 500, '', '', 0),
(20, 'Női Nadrág', '', 1, 500, 'https://i.gyazo.com/684ae5bf03bc8f46e92ac2346e549b26.png', 'prop_ld_jeans_02', 0),
(21, 'Női Karkötő', '', 1, 500, '', '', 0),
(22, 'Női Cipő', '', 1, 500, 'https://i.gyazo.com/3bdd0a2490f6f71a6eea7d412c96efcc.png', '', 0),
(23, 'Női Óra', '', 1, 500, '', '', 0),
(24, 'Női Táska', '', 1, 500, '', '', 0),
(25, 'Női Páncél', '', 1, 500, '', '', 0),
(26, 'Női Kitűző', '', 1, 500, '', '', 0),
(27, 'Kesztyű', '', 1, 500, 'https://i.gyazo.com/99ebc778a2a28151b8cb7e35f50fbfae.png', '', 0),
(28, 'Járműkulcs', '', 2, 22, '', '', 0),
(29, 'Ingatlankulcs', '', 2, 22, '', '', 0),
(30, 'Kapukulcs', '', 2, 22, '', '', 0),
(31, 'Dagger', '', 3, 1000, 'https://pngimg.com/d/dagger_PNG27.png', 'prop_w_me_dagger', 0),
(32, 'Bat', '', 3, 1000, '', '', 0),
(33, 'Bottle', '', 3, 1000, '', '', 0),
(34, 'Crowbar', '', 3, 1000, '', '', 0),
(35, 'Flashlight', '', 3, 1000, '', '', 0),
(36, 'Golfcub', '', 3, 1000, '', '', 0),
(37, 'Hammer', '', 3, 1000, '', '', 0),
(38, 'Hatchet', '', 3, 1000, '', '', 0),
(39, 'Knuckle', '', 3, 1000, '', '', 0),
(40, 'Knife', '', 3, 1000, '', '', 0),
(41, 'Machete', '', 3, 1000, '', '', 0),
(42, 'Switchblade', '', 3, 1000, '', '', 0),
(43, 'Nightstick', '', 3, 1000, '', '', 0),
(44, 'Wrench', '', 3, 1000, '', '', 0),
(45, 'Battleaxe', '', 3, 1000, '', '', 0),
(46, 'Poolcue', '', 3, 1000, '', '', 0),
(47, 'Stone hatchet', '', 3, 1000, '', '', 0),
(48, 'Candy cane', '', 3, 1000, '', '', 0),
(49, 'Pistol', '', 3, 1000, '', '', 0),
(50, 'Pistol MK2', '', 3, 1000, '', '', 0),
(51, 'Combatpistol', '', 3, 1000, '', 'w_pi_combatpistol', 0),
(52, 'Appistol', '', 3, 1000, '', '', 0),
(53, 'Stungun', '', 3, 1000, '', '', 0),
(54, 'Pistol50', '', 3, 1000, '', '', 0),
(55, 'Sns Pistol', '', 3, 1000, '', '', 0),
(56, 'Sns Pistol MK2', '', 3, 1000, '', '', 0),
(57, 'Heavy Pistol', '', 3, 1000, '', '', 0),
(58, 'Vintage Pistol', '', 3, 1000, '', '', 0),
(59, 'Marksman Pistol', '', 3, 1000, '', '', 0),
(60, 'Revolver', '', 3, 1000, '', '', 0),
(61, 'Revolver MK2', '', 3, 1000, '', '', 0),
(62, 'Doubleaction Revolver', '', 3, 1000, '', '', 0),
(63, 'Ceramic Pistol', '', 3, 1000, '', '', 0),
(64, 'Navy Revolver', '', 3, 1000, '', '', 0),
(65, 'Pistol MX3', '', 3, 1000, '', '', 0),
(66, 'Flare Gun', '', 3, 1000, '', '', 0),
(67, 'MicroSMG', '', 3, 1000, '', '', 0),
(68, 'SMG', '', 3, 1000, '', '', 0),
(69, 'SMG MK2', '', 3, 1000, '', '', 0),
(70, 'AssaultSMG', '', 3, 1000, '', '', 0),
(71, 'CombatPWD', '', 3, 1000, '', '', 0),
(72, 'MachinePistol', '', 3, 1000, '', '', 0),
(73, 'MiniSMG', '', 3, 1000, '', '', 0),
(74, 'Tecpistol', '', 3, 1000, '', '', 0),
(75, 'Pumpshotgun', '', 3, 1000, '', '', 0),
(76, 'Pumpshotgun MK2', '', 3, 1000, '', '', 0),
(77, 'Sawnoff Shotgun', '', 3, 1000, '', '', 0),
(78, 'Assault Shotgun', '', 3, 1000, '', '', 0),
(79, 'Bullpup Shotgun', '', 3, 1000, '', '', 0),
(80, 'Musket', '', 3, 1000, '', '', 0),
(81, 'Heavy Shotgun', '', 3, 1000, '', '', 0),
(82, 'DB Shotgun', '', 3, 1000, '', '', 0),
(83, 'Autoshotgun', '', 3, 1000, '', '', 0),
(84, 'Combat Shotgun', '', 3, 1000, '', '', 0),
(85, 'Beanbag', '', 3, 1000, '', '', 0),
(86, 'Assault Rifle', '', 3, 1000, '', '', 0),
(87, 'Assaultrifle MK2', '', 3, 1000, '', '', 0),
(88, 'Carbinerifle', '', 3, 1000, '', '', 0),
(89, 'Carbinerifle MK2', '', 3, 1000, '', '', 0),
(90, 'Advancedrifle', '', 3, 1000, '', '', 0),
(91, 'Specialcarbine', '', 3, 1000, '', '', 0),
(92, 'Specialcarbine MK2', '', 3, 1000, '', '', 0),
(93, 'Bullpuprifle', '', 3, 1000, '', '', 0),
(94, 'Bullpuprifle MK2', '', 3, 1000, '', '', 0),
(95, 'Compactrifle', '', 3, 1000, '', '', 0),
(96, 'Militaryrifle', '', 3, 1000, '', '', 0),
(97, 'Heavyrifle', '', 3, 1000, '', '', 0),
(98, 'Tacticalrifle', '', 3, 1000, '', '', 0),
(99, 'MG', '', 3, 1000, '', '', 0),
(100, 'CombatMG', '', 3, 1000, '', '', 0),
(101, 'CombatMG MK2', '', 3, 1000, '', '', 0),
(102, 'Gusenberg', '', 3, 1000, '', '', 0),
(103, 'Sniperrifle', '', 3, 1000, '', '', 0),
(104, 'Heavysniper', '', 3, 1000, '', '', 0),
(105, 'Heavysniper MK2', '', 3, 1000, '', '', 0),
(106, 'Marksmanrifle', '', 3, 1000, '', '', 0),
(107, 'Marksmanrifle MK2', '', 3, 1000, '', '', 0),
(108, 'PrecisionRifle', '', 3, 1000, '', '', 0),
(109, 'Smoke grenade', '', 3, 500, '', '', 1),
(110, 'Molotov', '', 3, 500, '', '', 1),
(111, 'BZ gas', '', 3, 500, '', '', 1),
(112, 'Poroltó', '', 3, 500, '', '', 0),
(113, 'Ejtőernyő', '', 3, 500, '', '', 0),
(114, '.45 ACP', 'lőszer', 4, 15, '', '', 0),
(115, '9mm', 'lőszer', 4, 10, '', '', 1),
(116, '5.56 mm', '', 4, 10, '', '', 1),
(117, '7.62mm', 'lőszer', 4, 10, '', '', 1),
(118, '12 gauge', 'lőszer', 4, 30, '', '', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `items`
--

INSERT INTO `items` (`DbID`, `ownerID`, `ownerType`, `itemID`, `itemValue`, `itemAmount`, `duty`, `createdBy`, `creationDate`, `priority`, `inUse`) VALUES
(71, 17, 0, 5, '{\"UndershirtDrawable\":15,\"UndershirtTexture\":0,\"Torso\":1,\"Drawable\":305,\"Texture\":8}', 1, 0, '11', '2023-11-22 14:29:13', 1, 0),
(72, 17, 0, 7, '{\"Drawable\":4,\"Texture\":0}', 1, 0, '11', '2023-11-22 14:29:41', 3, 1),
(73, 11, 0, 9, '{\"Drawable\":126,\"Texture\":3}', 1, 0, '11', '2023-11-22 14:29:52', 6, 1),
(75, 17, 0, 4, '{\"Drawable\":2,\"Texture\":0}', 1, 0, '11', '2023-11-22 14:30:52', 0, 1),
(76, 18, 0, 18, '{\"UndershirtDrawable\":2,\"UndershirtTexture\":0,\"Torso\":1,\"Drawable\":366,\"Texture\":0}', 1, 0, '7', '2023-11-22 16:04:02', 2, 1),
(78, 18, 0, 20, '{\"Drawable\":6,\"Texture\":0}', 1, 0, '7', '2023-11-22 16:26:00', 1, 1),
(79, 18, 0, 22, '{\"Drawable\":0,\"Texture\":0}', 1, 0, '7', '2023-11-22 16:26:16', 3, 1),
(81, 8, 3, 28, '-', 1, 0, '7', '2023-11-24 03:11:34', 1, 0),
(85, 18, 0, 27, '3', 1, 0, '7', '2023-11-24 03:11:57', 0, 1),
(86, 9, 2, 27, '4', 1, 0, '7', '2023-11-24 03:11:58', 0, 0),
(88, 8, 3, 27, '6', 1, 0, '7', '2023-11-24 03:12:00', 2, 0),
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
(111, 17, 0, 27, '5', 1, 0, '11', '2023-11-24 06:21:06', 2, 0),
(113, 11, 0, 7, '{\"Drawable\":1,\"Texture\":0}', 1, 0, '11', '2023-11-28 17:47:44', 4, 1),
(117, 20, 0, 18, '{\"UndershirtDrawable\":2,\"UndershirtTexture\":0,\"Torso\":1,\"Drawable\":366,\"Texture\":0}', 1, 0, '11', '2023-11-30 19:29:03', 1, 1),
(118, 10, 2, 42, '-', 1, 0, '11', '2023-11-30 19:52:10', 5, 0),
(119, 10, 2, 49, '-', 1, 0, '11', '2023-11-30 19:53:05', 6, 0),
(128, 10, 2, 5, '{\"UndershirtDrawable\":15,\"UndershirtTexture\":0,\"Torso\":1,\"Drawable\":44,\"Texture\":0}', 1, 0, '11', '2023-12-01 09:54:03', 4, 0),
(129, 133, 1, 5, '{\"UndershirtDrawable\":15,\"UndershirtTexture\":0,\"Torso\":0,\"Drawable\":44,\"Texture\":0}', 1, 0, '11', '2023-12-01 09:54:17', 1, 0),
(130, 133, 1, 5, '{\"UndershirtDrawable\":15,\"UndershirtTexture\":0,\"Torso\":0,\"Drawable\":44,\"Texture\":0}', 1, 0, '11', '2023-12-01 09:54:22', 2, 0),
(131, 20, 0, 5, '{\"UndershirtDrawable\":15,\"UndershirtTexture\":0,\"Torso\":0,\"Drawable\":44,\"Texture\":0}', 1, 0, '11', '2023-12-01 09:54:23', 4, 0),
(132, 11, 0, 5, '{\"UndershirtDrawable\":15,\"UndershirtTexture\":0,\"Torso\":0,\"Drawable\":44,\"Texture\":0}', 1, 0, '11', '2023-12-01 09:54:23', 7, 1),
(133, 0, 6, 11, '{\"Drawable\":82,\"Texture\":0}', 1, 0, '11', '2023-12-01 09:54:34', 3, 0),
(134, 8, 2, 18, '{\"UndershirtDrawable\":2,\"UndershirtTexture\":0,\"Torso\":15,\"Drawable\":-4,\"Texture\":0}', 1, 0, '7', '2023-12-01 10:14:29', 3, 0),
(135, 8, 2, 20, '{\"Drawable\":-4,\"Texture\":0}', 1, 0, '7', '2023-12-01 10:15:12', 1, 0),
(136, 8, 2, 20, '{\"Drawable\":-5,\"Texture\":0}', 1, 0, '7', '2023-12-01 10:15:19', 0, 0),
(138, 133, 1, 27, '5', 1, 0, '11', '2023-12-01 15:55:28', 3, 0),
(139, 10, 2, 27, '5', 1, 0, '11', '2023-12-01 15:55:31', 0, 0),
(140, 10, 2, 27, '5', 1, 0, '11', '2023-12-01 15:55:31', 1, 0),
(141, 10, 2, 27, '5', 1, 0, '11', '2023-12-01 15:55:31', 2, 0),
(142, 20, 0, 27, '5', 1, 0, '11', '2023-12-01 15:55:32', 2, 1),
(143, 10, 2, 27, '5', 1, 0, '11', '2023-12-01 15:55:32', 3, 0),
(144, 11, 0, 11, '{\"Drawable\":82,\"Texture\":0}', 1, 0, '11', '2023-12-01 17:52:41', 3, 0),
(145, 20, 0, 18, '{\"Drawable\":82,\"Texture\":0}', 1, 0, '20', '2023-12-01 18:52:43', 0, 0),
(146, 20, 0, 24, '{\"Drawable\":82,\"Texture\":0}', 1, 0, '20', '2023-12-01 18:53:01', 3, 0),
(147, 1, 3, 27, '6', 1, 0, '11', '2023-12-02 14:29:08', 0, 0),
(148, 11, 0, 28, '-', 1, 0, '11', '2023-12-02 21:31:50', 1, 0),
(149, 144, 1, 31, '-', 1, 0, '11', '2023-12-02 21:32:04', 0, 0),
(150, 11, 0, 3, '{\"Drawable\":2,\"Texture\":0}', 1, 0, '11', '2023-12-02 21:40:04', 0, 0),
(151, 0, 6, 4, '{\"Drawable\":2,\"Texture\":0}', 1, 0, '11', '2023-12-02 21:41:09', 8, 0),
(152, 11, 0, 8, '{\"Drawable\":1,\"Texture\":0}', 1, 0, '11', '2023-12-02 21:42:42', 2, 0),
(153, 0, 6, 51, '-', 1, 0, '11', '2023-12-02 22:11:04', 8, 0),
(154, 0, 6, 51, '-', 1, 0, '11', '2023-12-02 22:24:59', 1000, 0),
(155, 8, 0, 31, '-', 1, 0, '11', '2023-12-02 22:25:18', 0, 0),
(157, 21, 0, 14, '{\"Drawable\":54,\"Texture\":0}', 1, 0, '7', '2023-12-04 18:38:22', 3, 0),
(158, 8, 2, 31, '-', 1, 0, '7', '2023-12-04 19:24:43', 2, 0),
(159, 0, 0, 18, '{\"UndershirtDrawable\":2,\"UndershirtTexture\":0,\"Torso\":3,\"Drawable\":3,\"Texture\":0}', 1, 0, '0', '2024-02-03 00:14:13', 1000, 0),
(160, 10, 2, 18, '{\"UndershirtDrawable\":2,\"UndershirtTexture\":0,\"Torso\":1,\"Drawable\":3,\"Texture\":0}', 1, 0, '10', '2024-02-03 00:16:20', 7, 0),
(161, 10, 0, 18, '{\"UndershirtDrawable\":2,\"UndershirtTexture\":0,\"Torso\":3,\"Drawable\":3,\"Texture\":0}', 1, 0, '10', '2024-02-03 00:17:21', 2, 1),
(162, 10, 0, 18, '{\"UndershirtDrawable\":2,\"UndershirtTexture\":0,\"Torso\":3,\"Drawable\":3,\"Texture\":1}', 1, 0, '10', '2024-02-03 00:17:26', 3, 0),
(163, 10, 0, 20, '{\"Drawable\":27,\"Texture\":0}', 1, 0, '11', '2024-02-03 00:18:50', 0, 1),
(164, 10, 2, 22, '{\"Drawable\":17,\"Texture\":0}', 1, 0, '10', '2024-02-03 00:19:43', 8, 0),
(165, 10, 0, 22, '{\"Drawable\":4,\"Texture\":1}', 1, 0, '10', '2024-02-03 00:20:59', 1, 1),
(166, 21, 0, 18, '{\"UndershirtDrawable\":2,\"UndershirtTexture\":0,\"Torso\":3,\"Drawable\":103,\"Texture\":0}', 1, 0, '7', '2024-02-04 18:42:52', 0, 1),
(167, 21, 0, 20, '{\"Drawable\":75,\"Texture\":0}', 1, 0, '7', '2024-02-04 18:43:41', 1, 1),
(168, 21, 0, 22, '{\"Drawable\":11,\"Texture\":0}', 1, 0, '7', '2024-02-04 18:43:59', 2, 1),
(170, 11, 0, 5, '{\"UndershirtDrawable\":15,\"UndershirtTexture\":0,\"Torso\":1,\"Drawable\":182,\"Texture\":0}', 1, 0, '11', '2024-02-09 00:18:07', 5, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `properties`
--

DROP TABLE IF EXISTS `properties`;
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `propType` tinyint UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `postal` smallint UNSIGNED NOT NULL,
  `streetName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `streetNumber` smallint UNSIGNED NOT NULL,
  `ownerType` int NOT NULL DEFAULT '0',
  `ownerID` int NOT NULL DEFAULT '0',
  `entranceX` float NOT NULL,
  `entranceY` float NOT NULL,
  `entranceZ` float NOT NULL,
  `entranceHeading` float NOT NULL,
  `entranceDimension` int UNSIGNED NOT NULL DEFAULT '0',
  `exitX` float NOT NULL,
  `exitY` float NOT NULL,
  `exitZ` float NOT NULL,
  `exitHeading` float NOT NULL,
  `exitDimension` int UNSIGNED NOT NULL DEFAULT '0',
  `IPL` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '1',
  `createdBy` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `creationDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deletedBy` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `deleteDate` datetime DEFAULT NULL,
  `price` int NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `properties`
--

INSERT INTO `properties` (`id`, `propType`, `name`, `postal`, `streetName`, `streetNumber`, `ownerType`, `ownerID`, `entranceX`, `entranceY`, `entranceZ`, `entranceHeading`, `entranceDimension`, `exitX`, `exitY`, `exitZ`, `exitHeading`, `exitDimension`, `IPL`, `locked`, `createdBy`, `creationDate`, `deletedBy`, `deleteDate`, `price`) VALUES
(31, 0, 'Ház', 1, 'West Mirror Drive', 1, 0, 0, 906.846, -490.54, 58.4412, -162.066, 0, -14.18, -1440.05, 30.1, 0, 31, 'franklin', 1, 'Chyy Gang', '2024-02-03 00:22:05', NULL, NULL, 50),
(33, 0, 'véé', 1, 'Rockford Dr', 1, 0, 0, -737.967, 9.59648, 37.3783, 19.6013, 0, -1582.76, -558.83, 107.53, -140, 33, 'ex_sm_13_office_02c', 1, 'Chy w', '2024-02-06 02:51:13', NULL, NULL, 5);

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
) ENGINE=InnoDB AUTO_INCREMENT=1604 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `tokens`
--

INSERT INTO `tokens` (`id`, `accountId`, `token`, `expiration`) VALUES
(1603, 1, 'd+HVrFvs8/cEaOR/gwpUJ7jGDbN0WwRCVoJ66q6piZMkHYeBW6NUDVMLLDoOCCXmrKrSaM5nM2JRzopIKFhgDw==', '2024-03-25 23:35:23');

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
  `engineHealth` float NOT NULL DEFAULT '1000',
  `bodyHealth` float NOT NULL DEFAULT '1000',
  `numberPlateText` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `numberPlateType` tinyint NOT NULL,
  `dimension` int NOT NULL DEFAULT '0',
  `createdBy` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `creationDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `vehicles`
--

INSERT INTO `vehicles` (`id`, `ownerType`, `ownerID`, `model`, `posX`, `posY`, `posZ`, `rotX`, `rotY`, `rotZ`, `red1`, `green1`, `blue1`, `red2`, `green2`, `blue2`, `pearlescent`, `locked`, `engine`, `engineHealth`, `bodyHealth`, `numberPlateText`, `numberPlateType`, `dimension`, `createdBy`, `creationDate`) VALUES
(1, 0, 11, 'elegy', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 500, 350, 'SZEP', 0, 0, 'Chy', '2023-10-31 16:19:28'),
(2, 0, 11, 'yosemite2', -1395.74, 5101.09, 61.1378, 0, 0, 0, 255, 255, 255, 255, 255, 255, 0, 0, 0, 1000, 1000, 'VEGLEGES', 0, 0, 'makeveh', '2023-10-31 16:34:17'),
(3, 0, 11, 'tailgater2', -1395.35, 5100.4, 61.1399, 0, 0, 0, 255, 255, 255, 255, 255, 255, 0, 0, 0, 1000, 1000, 'Chy', 0, 0, 'Chy Gang', '2023-10-31 16:48:40'),
(4, 0, 8, 'growler', -1406.12, 5078.62, 61.1033, 0, 0, 0, 69, 82, 75, 69, 82, 75, 0, 0, 0, 1000, 1000, 'tesztbat', 0, 0, 'Big Bob', '2023-10-31 18:01:20'),
(5, 0, 8, 'openwheel1', 2435.07, 5650.29, 45.0789, 0, 0, 0, 255, 255, 255, 255, 255, 255, 0, 0, 0, 1000, 1000, '', 0, 0, 'Big Bob', '2023-10-31 23:53:28'),
(6, 0, 7, 'sentineldm', -81.8346, -1093.38, 26.3948, 0, 0, 0, 116, 181, 223, 116, 181, 223, 70, 0, 0, 1000, 1000, 'DRIFTER', 0, 0, 'Chy Women', '2023-11-02 16:32:49'),
(7, 0, 16, 'turismo2', 760.956, -38.9251, 59.9388, 0, 0, 0, 255, 255, 255, 255, 255, 255, 0, 0, 0, 1000, 1000, '', 0, 0, 'Audrey Hartley', '2023-11-20 18:39:31'),
(8, 0, 7, 'calico', -79.4252, -1094.1, 26.4011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 1000, 1000, 'CELICA', 0, 0, 'Chy Nem', '2023-11-21 01:33:37'),
(9, 0, 7, 'drafter', -74.9683, -1089.65, 26.5698, 0, 0, 0, 255, 255, 255, 0, 0, 0, 37, 0, 0, 1000, 1000, 'AA-AA-12', 0, 0, 'Chy Women', '2023-11-24 03:44:57'),
(10, 0, 11, 'sentineldm', -1394.83, 5089.35, 61.0998, 0, 0, 0, 235, 64, 52, 235, 64, 52, 42, 0, 0, 1000, 1000, 'rendszam', 0, 0, 'Chy Black', '2023-11-24 05:47:08'),
(11, 0, 18, 'raiden', -78.846, -1084.96, 26.7035, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1000, 1000, 'asdsda', 0, 0, 'Herceghalmi Odett Zoltán', '2023-11-28 18:10:16'),
(12, 0, 21, 'sentinel', 938.499, -498.668, 59.8301, 0, 0, 0, 255, 255, 255, 255, 255, 255, 0, 0, 0, 1000, 1000, '', 0, 0, 'Fiona Burns', '2024-02-09 19:02:17');

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `adminjail`
--
ALTER TABLE `adminjail`
  ADD CONSTRAINT `AdminAccID` FOREIGN KEY (`adminAccountId`) REFERENCES `accounts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `TargetAccID` FOREIGN KEY (`targetAccountId`) REFERENCES `accounts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

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
-- Megkötések a táblához `injuries`
--
ALTER TABLE `injuries`
  ADD CONSTRAINT `injuries_ibfk_1` FOREIGN KEY (`characterID`) REFERENCES `characters` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

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
