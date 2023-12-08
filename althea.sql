-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2023. Dec 08. 02:35
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `accounts`
--

INSERT INTO `accounts` (`id`, `userName`, `email`, `adminLevel`, `adminNick`, `registerDate`, `passwordHash`, `passwordSalt`, `serial`, `scId`, `sc`, `characterSlots`) VALUES
(1, 'Chy', 'chy@althea.hu', 10, '', '2023-08-31 20:19:07', '7irrMY/4RrueoXI8P+qUWZQbHrvJKbtS+exNEHIx+hd4imPbmfnd+7+MOO/saaU15NcjA0j8F0tPd9hGqTR1zPJCnCuQ5Q==', '5ntrk1MDntd4w8arKiISDul6iiSda6pLdOdyBb4VOnOkLFrbRmcxpDm20g9M/JH1dpx237kjC+WwrXZbo6oxcIS7MOjMxvzy1bKEyjVRbyow4xZfp/gW7MnuLt0oqHN2tGNXZQ==', 'D8903A0447DCA880A7E0057CCBF41C10CE30D8D8D5D27640B0C6102401728A80319C882076A65D10D8E0E54043861920E4526AE0681477E8AA7010047006F0C0', '67714232', 'CHYJIN', 2),
(2, 'mayev', 'megegyvacosacc@gmail.com', 0, '', '2023-09-03 14:36:26', 'SiWEX5Ihqe28wou3c2/UFJJ07sjPm2FZ/vT5Q8qyACBKPDldoG8Ztw+nkEkr1QmHGWFhn/jt4fKBknEYcDucUb3V/t6A+w==', '+q9c7edwuIF1FTIF/jTOQuiqUZpVCD0sbRsbDr3ZZmmlS9K3aPyjPFSBZF/LgmOurFJSGgYwxOqWSDTPc9j94fPmdH/DIDhhVe3wIqmIqbKGwcrOhpqY78xPHiT4r2xOkD74MQ==', 'D8903A045B5858583EEEC4C0D554D1001F6057102FBA81C8BBF018C8DD229C004B5CC1B01096EAD8B0B610BC242A1950A37608A056B6E9E0A83E7A949C96A640', '24763806', 'bati_a_batyus', 2),
(4, 'morcsog', 'morcsog@vagyok.hu', 0, '', '2023-10-07 19:14:59', 'Yw+y4wDxR2xNYXGJrbNTkswsEG1cXkrGYwk1n/tyzrbn2yt+6UHXFgRUInd9aQPvHyYKssnRo7JG72zdHikLMWi42oQdvw==', 'Mb2ts06L8y2fq78QrBaXbAkfcV6arvQLNkHpybCoHwHPOG8DrQ3vv7ykDQjPh4QGyz9ZOJ1RiUbjgBT53XNAvCV2v3sO9HXHP4FGmfTjroNYzITDYZaXxhw3InFqVqVCul/O/Q==', 'D8903A045BAC82D8BC661CD41A0A4810B9E2F8F8C620B2B070F018C8DD224EC05B3865D0634CE5C0D9BAE3E0AE44D0A072E008A056B6E9F0FEDEB464841AA640', '185981925', 'Botika9696', 2),
(6, 'Chy2', 'Chy2@Chy2.com', 0, '', '2023-11-15 02:51:14', 'p7y9wcCN55AL4PJQv/hkQiItklDmeCapWQwvBii4bK5uXpMJTP3FW+d1Kd2hScNIkqUmRoDAOeM/vONjp3U4G9XQObGsfQ==', 'E45p9Kg/XQnVs8+3z6+TLwSkVauFzBtilLOOYHjVYO2lsHm1/1MqNSGB3ch0S5R+O4QgoAeySShhD0uoC3b3ZCT6UKQQirXe4YFvY5Fvx3CCiXawxNbRmywPiyDizI2AVVtiJw==', 'CE963468C95A2648B9125258560A5AD0AE46F408194AC6D8C962B278363ABAA08EF6B4A8693A6668D9B21298166A1A706EA67448B92A06F8E90272B8F69A7A40', '67714232', 'CHYJIN', 2),
(7, 'Fanni', 'pohfanni@gmail.com', 0, '', '2023-11-20 18:04:07', 'H2eQMbp3/gwTKM218jIx0obynyjqg3NNuM/7B0D4Ivv0+wD8dUQZjvvZ8nFW+6z0rkwTIxbdmislJgKa9NVWXFE6i7g+ww==', 'eDjwM7ibKETl9nKi+HsZ5vMXvlmHqhlBGtqhcc5mzAJ3ct4kKnnKvnecQxZhfobIdyjOgLsrC8c7fQL6BA6cclzk8C7C5VkaK2OmWzxA153IBOlVcPyjaQwfY1HrbHqVY4k+Zg==', 'D8903A045B70AC704C0A84DC5F880D001F18BF845D7E703818500A1C43308CC06C22A494E7285580873837BC3536F0705810DA342BF06C108C3AC44C6F260080', '177775224', 'Fanniih', 2),
(8, 'mandms', 'mandmsmandms10@gmail.com', 0, '', '2023-11-28 17:57:17', 'F6YTlGXqh06F9/y5M2k8UfyvXh1uKN/7WdQEQgnkIXL/2Nl9Vm3diSB9ecepDYZjqIoU23VSBbUz1RUG1cPtSwmcyGTIJw==', 'adtuziRk31fq7tenlf9GVOeDAS+9jtM840YhRa2IMhkEhraejImLlkMjt3KvZnYe2v6FarWpumHGGNXGc7u3wj32EofHspAQnIYwxp6tztIhtMEDeEEIwzIVmiqdpHT5pNh/Sw==', 'DFBE67A8DD7E5078B0AE0534220A5AA0CFAE37486DCE5068B05EF524C23ABA40BF9E07E8FD1E5058B00EE514626A1AE0AF8ED7888D6E5048B0BED504029A7A80', '85991460', 'MandMs-11', 2),
(9, 'Kiko', 'fuzykiko@gmail.com', 0, '', '2023-12-01 18:44:05', 'XGJt8f47qHhaeUKkwaA3uoQ+q/3YW64F4pG4D/4hcRoBCp8b6Gjb+DiXvdg+qqzXaXt6CHN6z0bb/Q1zF3nJ42cRAlv3Ug==', 'We80UxY6r0C1Shu7MNB3pyFfNnXVUmVOnd01Qn6R62vyTqagIRFg6J7ylWqv7QqEY91DyJfOg8B14+upiF9Jql4mwVVAe+PXeSB5S+tQ7GYvmnEvWO51ycSPS1R+96idwlA/Xw==', 'D1D4EE40D2D826408CD6FA381AE83FA09A201ED07270F4687EA436D0AD6C46006AC8BEA05CFA021052B81B38F2E0B6C00AD0C48C867C6EA089049EC0021E3FC0', '108231911', 'fuzykrisztian', 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `appearances`
--

INSERT INTO `appearances` (`id`, `gender`, `eyeColor`, `hairStyle`, `hairColor`, `hairHighlight`, `parent1face`, `parent2face`, `parent3face`, `parent1skin`, `parent2skin`, `parent3skin`, `faceMix`, `skinMix`, `thirdMix`, `noseWidth`, `noseHeight`, `noseLength`, `noseBridge`, `noseTip`, `noseBroken`, `browHeight`, `browWidth`, `cheekboneHeight`, `cheekboneWidth`, `cheekWidth`, `eyes`, `lips`, `jawWidth`, `jawHeight`, `chinLength`, `chinPosition`, `chinWidth`, `chinShape`, `neckWidth`, `blemishId`, `blemishOpacity`, `facialhairId`, `facialhairColor`, `facialhairOpacity`, `eyebrowId`, `eyebrowColor`, `eyebrowOpacity`, `ageId`, `ageOpacity`, `makeupId`, `makeupOpacity`, `blushId`, `blushColor`, `blushOpacity`, `complexionId`, `complexionOpacity`, `sundamageId`, `sundamageOpacity`, `lipstickId`, `lipstickColor`, `lipstickOpacity`, `frecklesId`, `frecklesOpacity`, `chesthairId`, `chesthairColor`, `chesthairOpacity`, `bodyblemishId`, `bodyblemishOpacity`, `bodyblemish2Id`, `bodyblemish2Opacity`, `tattoos`) VALUES
(1, 0, 3, 53, 61, 0, 40, 34, 21, 29, 21, 34, 49, 33, 25, -34, -27, 84, 40, -3, 0, -10, -9, -88, -26, 35, 14, -34, -59, -58, 61, 28, 20, -1, 0, 255, 0, 255, 29, 0, 2, 61, 100, 255, 0, 4, 70, 2, 11, 58, 10, 20, 255, 0, 3, 6, 50, 6, 30, 255, 0, 0, 0, 100, 255, 0, NULL),
(2, 1, 0, 14, 42, 14, 34, 4, 2, 7, 18, 19, 23, 30, 21, -25, -51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 11, 2, 100, 18, 42, 100, 0, 0, 255, 100, 0, 0, 0, 3, 100, 0, 0, 0, 0, 0, 0, 0, 255, 31, 100, 0, 0, 0, 0, NULL),
(3, 0, 5, 84, 59, 60, 40, 21, 27, 29, 12, 23, 50, 20, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 2, 57, 100, 0, 0, 5, 66, 2, 7, 100, 0, 0, 0, 0, 3, 7, 67, 0, 42, 255, 0, 0, 2, 100, 0, 0, NULL),
(4, 0, 0, 40, 24, 20, 14, 14, 0, 0, 0, 0, 50, 50, 50, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(5, 1, 5, 30, 61, 0, 12, 2, 30, 2, 14, 24, 61, 47, 28, 81, 43, -27, -20, -20, 0, 48, 20, -28, 42, 2, 14, -100, -55, 40, 26, 25, 41, 0, 0, 0, 0, 0, 61, 18, 21, 61, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 61, 100, 0, 0, 0, 0, NULL),
(6, 1, 0, 11, 13, 14, 1, 2, 6, 8, 17, 12, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(7, 0, 0, 12, 0, 0, 0, 0, 9, 24, 25, 0, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(8, 1, 0, 40, 1, 0, 4, 15, 11, 14, 0, 0, 50, 9, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, NULL),
(9, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(10, 0, 5, 15, 3, 0, 8, 25, 25, 8, 2, 0, 100, 100, 49, -27, 22, 0, 2, 1, 52, 0, 0, 0, 0, 26, 0, -41, -62, -100, -89, -34, -83, -48, -100, 255, 0, 255, 0, 0, 1, 0, 79, 255, 0, 1, 75, 0, 11, 90, 255, 0, 255, 0, 5, 6, 72, 255, 0, 255, 0, 0, 0, 0, 255, 0, NULL),
(11, 1, 0, 14, 0, 5, 0, 0, 0, 23, 30, 23, 50, 50, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 100, 12, 0, 100, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(12, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 2, 30, 0, 0, 0, 0, 0, 13, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(13, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(14, 0, 0, 41, 0, 0, 2, 8, 0, 0, 0, 0, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL);

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
  `dimension` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `accountId` (`accountId`),
  KEY `AppearanceID` (`appearanceId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `characters`
--

INSERT INTO `characters` (`id`, `accountId`, `appearanceId`, `characterName`, `creationDate`, `dob`, `pob`, `posX`, `posY`, `posZ`, `rot`, `dimension`) VALUES
(7, 1, 1, 'Chy W', '2023-08-31 21:51:19', '2023-09-04', '0', -266.336, -1263.13, 29.0606, 4.61845, 0),
(8, 2, 2, 'Emmett Velaquez', '2023-09-03 14:43:11', '0001-01-01', '0', 402.427, -856.428, 29.3463, 103.431, 0),
(10, 2, 4, 'Uncle Mary', '2023-09-04 22:57:04', '2023-09-04', '0', 417.861, -810.597, 28.543, -171.314, 0),
(11, 1, 5, 'Chyy Gang', '2023-09-04 22:57:42', '2023-09-04', '0', 228.6, -989.3, -98.5, -0.00531389, 0),
(14, 4, 8, ' ', '2023-10-07 19:16:24', '2023-10-07', '0', 363.018, -832.975, 29.3676, -39.4535, 0),
(15, 6, 9, 'Chy Ketto', '2023-11-15 02:51:41', '2023-11-15', '0', -1037, -2738, 21, -30, 0),
(16, 7, 10, 'Audrey Hartley', '2023-11-20 18:23:12', '2023-11-20', '0', 1377.2, 233.655, -48.9945, -76.3347, 0),
(17, 7, 11, 'Elijah Barnes', '2023-11-22 19:42:48', '2023-11-22', '0', -1037, -2738, 21, -30, 0),
(18, 8, 12, 'Herceghalmi Odett Zoltán', '2023-11-28 18:01:07', '2023-11-28', '0', -1032.01, -2705.4, 13.8009, 39.8152, 0),
(19, 8, 13, ' ', '2023-11-28 18:18:16', '2023-11-28', '0', 1181.13, -346.899, 69.3343, 121.41, 0),
(20, 9, 14, 'Dorothy Harvey', '2023-12-01 18:50:25', '2023-12-01', '0', -1102.79, -2740.07, -7.41013, -5.06453, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `clothingshops`
--

DROP TABLE IF EXISTS `clothingshops`;
CREATE TABLE IF NOT EXISTS `clothingshops` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_hungarian_ci NOT NULL,
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
  `name` varchar(50) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `component` tinyint UNSIGNED NOT NULL,
  `category` tinyint UNSIGNED NOT NULL,
  `itemValue` json NOT NULL,
  `price` mediumint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `grounditems`
--

INSERT INTO `grounditems` (`id`, `item_DbID`, `posX`, `posY`, `posZ`, `rotX`, `rotY`, `rotZ`, `dim`, `thrownDate`, `thrownBy`, `pickupDate`, `pickupBy`) VALUES
(14, 127, 1066.11, -461.822, 64.121, 0, -0, -0, 0, '2023-12-01 09:45:47', 11, '2023-12-01 09:49:07', 7),
(15, 133, 1066.34, -462.489, 64.0883, 0, -0, -0, 0, '2023-12-01 09:54:58', 11, '2023-12-01 09:55:02', 11),
(16, 133, 1066.25, -463.84, 64.0144, 0, -0, -0, 0, '2023-12-01 09:57:51', 11, '2023-12-01 09:57:53', 11),
(17, 133, 1063.92, -471.632, 63.5804, 0, -0, -0, 0, '2023-12-01 09:59:05', 11, '2023-12-01 09:59:07', 11),
(18, 129, 1073.42, -461.331, 64.0123, 2.29623, -3.5799, 0.0717688, 0, '2023-12-01 14:52:59', 11, '2023-12-01 14:53:01', 11),
(19, 133, 1066.11, -461.822, 64.1257, 0, -0, -0, 0, '2023-12-01 15:38:15', 11, '2023-12-01 15:38:22', 11),
(20, 133, 1066.11, -461.899, 64.117, 0, -0, -0, 0, '2023-12-01 15:52:51', 11, '2023-12-01 15:54:52', 11),
(21, 133, 1069.34, -465.469, 63.9504, 0, -0, -0, 0, '2023-12-01 15:56:05', 11, '2023-12-01 15:56:10', 11),
(22, 131, 1066.11, -461.822, 63.9477, 0, -0, -0, 0, '2023-12-01 16:54:53', 11, '2023-12-01 17:25:19', 11),
(23, 131, 1066.2, -460.952, 63.9946, 0, -0, -0, 0, '2023-12-01 17:25:25', 11, '2023-12-01 17:26:59', 11),
(24, 133, 1065.13, -469.809, 63.6941, 0, -0, -0, 0, '2023-12-01 17:25:39', 11, '2023-12-01 17:25:45', 11),
(25, 133, 1065.47, -470.653, 63.6272, 3.6825, 2.90699, -0.0934709, 0, '2023-12-01 17:25:49', 11, '2023-12-01 17:25:52', 11),
(26, 131, 1066.11, -461.822, 63.9477, 0, -0, -0, 0, '2023-12-01 17:37:30', 11, '2023-12-01 17:37:49', 11),
(27, 133, 1066.24, -461.468, 64.1411, 0, -0, -0, 0, '2023-12-01 17:37:54', 11, '2023-12-01 17:37:57', 11),
(28, 131, 1066.11, -461.822, 63.9477, 0, -0, -0, 0, '2023-12-01 18:04:44', 11, '2023-12-01 18:04:47', 11),
(29, 133, 1065.97, -462.796, 64.0674, 0, -0, -0, 0, '2023-12-01 18:04:52', 11, '2023-12-01 18:26:29', 11),
(30, 133, 1066.11, -461.822, 64.121, 0, -0, -0, 0, '2023-12-01 18:26:36', 11, '2023-12-01 18:32:42', 11),
(31, 133, 1066.11, -461.822, 64.121, 0, -0, -0, 0, '2023-12-01 18:37:04', 11, '2023-12-01 18:41:02', 11),
(32, 133, 1066.11, -461.83, 64.1206, 0, -0, -0, 0, '2023-12-01 18:41:07', 11, '2023-12-01 18:41:16', 11),
(33, 144, -1039.05, -2740.68, 19.3775, 0, -0, -0, 0, '2023-12-01 18:53:22', 11, '2023-12-01 19:16:52', 11),
(34, 133, -807.808, -2544.05, 12.901, 0, -0, -0, 0, '2023-12-01 19:02:20', 11, '2023-12-01 19:02:54', 20),
(35, 131, -808.24, -2545.17, 12.7201, 0, -0, -0, 0, '2023-12-01 19:02:54', 11, '2023-12-01 19:03:25', 20),
(36, 133, -808.978, -2542.11, 12.9749, 0, -0, -0, 0, '2023-12-01 19:03:09', 20, NULL, NULL),
(37, 132, 1066.66, -462.868, 63.8995, 0, -0, -0, 0, '2023-12-01 19:09:25', 11, '2023-12-01 19:09:28', 11),
(38, 144, 1065.83, -463.948, 64.0094, 0, -0, -0, 0, '2023-12-02 14:29:56', 11, '2023-12-02 14:30:20', 11),
(39, 144, 416.017, -816.584, 28.4295, 0, -0, -0, 0, '2023-12-02 14:49:47', 11, '2023-12-02 14:50:03', 11),
(40, 150, 1020.84, -430.564, 63.9983, 0, -0, -0, 0, '2023-12-02 21:40:26', 11, '2023-12-02 21:40:43', 11),
(41, 151, 1019.13, -429.697, 0, 0, 0, 0, 0, '2023-12-02 21:41:14', 11, NULL, NULL),
(42, 113, 1019.67, -428.035, 64.158, 3.20718, -1.87689, 0.0525488, 0, '2023-12-02 21:42:14', 11, '2023-12-02 21:42:20', 11),
(43, 152, 1019.44, -429.181, 64.0553, 4.30933, -1.03032, 0.0387659, 0, '2023-12-02 21:42:47', 11, '2023-12-02 21:43:02', 11),
(44, 152, 1020.22, -429.097, 64.0787, 4.30933, -1.03032, 0.0387659, 0, '2023-12-02 21:43:06', 11, '2023-12-02 21:43:14', 11),
(45, 149, 1066.11, -461.822, 63.9644, 0, -0, -0, 0, '2023-12-02 21:55:05', 11, '2023-12-02 21:57:56', 11),
(46, 149, 1066.81, -462.501, 63.935, 0, 90, -0, 0, '2023-12-02 21:57:59', 11, '2023-12-02 22:05:10', 11),
(47, 149, 1066.85, -463.137, 63.8892, -9.67648, -1.23303, 89.8956, 0, '2023-12-02 22:07:19', 11, '2023-12-02 22:07:25', 11),
(48, 149, 1066.11, -461.822, 63.9644, 90, 90, 0, 0, '2023-12-02 22:10:17', 11, '2023-12-02 22:10:26', 11),
(49, 149, 1065.95, -463.142, 63.8923, 90, 90, 0, 0, '2023-12-02 22:10:29', 11, '2023-12-02 22:24:31', 11),
(50, 153, 1066.2, -463.467, 63.9215, 90, 90, 0, 0, '2023-12-02 22:11:43', 11, NULL, NULL),
(51, 154, 1066.27, -460.833, 63.9716, 90, 90, 0, 0, '2023-12-02 22:25:03', 11, NULL, NULL),
(52, 155, 1066.83, -460.782, 63.9803, 90, 90, 0, 0, '2023-12-02 22:25:21', 11, '2023-12-02 22:25:25', 11),
(53, 155, 1066.98, -460.309, 64.0067, 90, 90, 0, 0, '2023-12-02 22:31:06', 11, '2023-12-02 22:31:09', 11),
(54, 152, 427.208, -800.893, 28.4922, 0, -0, -0, 0, '2023-12-06 19:05:21', 11, '2023-12-06 19:05:25', 11),
(55, 132, 416.507, -807.595, 28.4088, 0, -0, -0, 0, '2023-12-06 23:24:51', 11, '2023-12-06 23:26:06', 11);

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
  `object` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL DEFAULT '',
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
(18, 'Női Póló', '', 1, 500, 'https://i.gyazo.com/3ef3553dc7ac35bc725db55222871c4f.png', '', 0),
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
(31, 'Dagger', '', 3, 1000, '', 'prop_w_me_dagger', 0),
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `items`
--

INSERT INTO `items` (`DbID`, `ownerID`, `ownerType`, `itemID`, `itemValue`, `itemAmount`, `duty`, `createdBy`, `creationDate`, `priority`, `inUse`) VALUES
(71, 17, 0, 5, '{\"UndershirtDrawable\":15,\"UndershirtTexture\":0,\"Torso\":1,\"Drawable\":305,\"Texture\":8}', 1, 0, '11', '2023-11-22 14:29:13', 2, 1),
(72, 17, 0, 7, '{\"Drawable\":4,\"Texture\":0}', 1, 0, '11', '2023-11-22 14:29:41', 0, 1),
(73, 11, 0, 9, '{\"Drawable\":126,\"Texture\":3}', 1, 0, '11', '2023-11-22 14:29:52', 3, 0),
(75, 17, 0, 4, '{\"Drawable\":2,\"Texture\":0}', 1, 0, '11', '2023-11-22 14:30:52', 3, 1),
(76, 18, 0, 18, '{\"UndershirtDrawable\":2,\"UndershirtTexture\":0,\"Torso\":1,\"Drawable\":366,\"Texture\":0}', 1, 0, '7', '2023-11-22 16:04:02', 2, 1),
(77, 7, 0, 18, '{\"UndershirtDrawable\":2,\"UndershirtTexture\":0,\"Torso\":1,\"Drawable\":366,\"Texture\":1}', 1, 0, '7', '2023-11-22 16:06:24', 9, 1),
(78, 18, 0, 20, '{\"Drawable\":6,\"Texture\":0}', 1, 0, '7', '2023-11-22 16:26:00', 1, 1),
(79, 18, 0, 22, '{\"Drawable\":0,\"Texture\":0}', 1, 0, '7', '2023-11-22 16:26:16', 3, 1),
(80, 7, 0, 24, '{\"Drawable\":82,\"Texture\":0}', 1, 0, '7', '2023-11-23 01:19:34', 0, 1),
(81, 8, 3, 28, '-', 1, 0, '7', '2023-11-24 03:11:34', 1, 0),
(82, 7, 0, 27, '0', 1, 0, '7', '2023-11-24 03:11:52', 5, 0),
(83, 7, 0, 27, '1', 1, 0, '7', '2023-11-24 03:11:54', 6, 0),
(84, 7, 0, 27, '2', 1, 0, '7', '2023-11-24 03:11:56', 7, 0),
(85, 18, 0, 27, '3', 1, 0, '7', '2023-11-24 03:11:57', 0, 1),
(86, 9, 2, 27, '4', 1, 0, '7', '2023-11-24 03:11:58', 0, 0),
(87, 7, 0, 27, '5', 1, 0, '7', '2023-11-24 03:11:59', 2, 1),
(88, 8, 3, 27, '6', 1, 0, '7', '2023-11-24 03:12:00', 2, 0),
(89, 7, 0, 27, '7', 1, 0, '7', '2023-11-24 03:12:01', 4, 0),
(90, 7, 0, 27, '8', 1, 0, '7', '2023-11-24 03:12:02', 3, 0),
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
(111, 17, 0, 27, '5', 1, 0, '11', '2023-11-24 06:21:06', 1, 1),
(113, 11, 0, 7, '{\"Drawable\":1,\"Texture\":0}', 1, 0, '11', '2023-11-28 17:47:44', 4, 0),
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
(137, 7, 0, 20, '{\"Drawable\":-6,\"Texture\":0}', 1, 0, '7', '2023-12-01 10:15:28', 8, 1),
(138, 133, 1, 27, '5', 1, 0, '11', '2023-12-01 15:55:28', 3, 0),
(139, 10, 2, 27, '5', 1, 0, '11', '2023-12-01 15:55:31', 0, 0),
(140, 10, 2, 27, '5', 1, 0, '11', '2023-12-01 15:55:31', 1, 0),
(141, 10, 2, 27, '5', 1, 0, '11', '2023-12-01 15:55:31', 2, 0),
(142, 20, 0, 27, '5', 1, 0, '11', '2023-12-01 15:55:32', 2, 1),
(143, 10, 2, 27, '5', 1, 0, '11', '2023-12-01 15:55:32', 3, 0),
(144, 11, 0, 11, '{\"Drawable\":82,\"Texture\":0}', 1, 0, '11', '2023-12-01 17:52:41', 2, 0),
(145, 20, 0, 18, '{\"Drawable\":82,\"Texture\":0}', 1, 0, '20', '2023-12-01 18:52:43', 0, 0),
(146, 20, 0, 24, '{\"Drawable\":82,\"Texture\":0}', 1, 0, '20', '2023-12-01 18:53:01', 3, 0),
(147, 144, 1, 27, '6', 1, 0, '11', '2023-12-02 14:29:08', 0, 0),
(148, 11, 0, 28, '-', 1, 0, '11', '2023-12-02 21:31:50', 1, 0),
(149, 144, 1, 31, '-', 1, 0, '11', '2023-12-02 21:32:04', 1, 0),
(150, 11, 0, 3, '{\"Drawable\":2,\"Texture\":0}', 1, 0, '11', '2023-12-02 21:40:04', 5, 0),
(151, 0, 6, 4, '{\"Drawable\":2,\"Texture\":0}', 1, 0, '11', '2023-12-02 21:41:09', 8, 0),
(152, 11, 0, 8, '{\"Drawable\":1,\"Texture\":0}', 1, 0, '11', '2023-12-02 21:42:42', 6, 0),
(153, 0, 6, 51, '-', 1, 0, '11', '2023-12-02 22:11:04', 8, 0),
(154, 0, 6, 51, '-', 1, 0, '11', '2023-12-02 22:24:59', 1000, 0),
(155, 11, 0, 31, '-', 1, 0, '11', '2023-12-02 22:25:18', 0, 0),
(156, 7, 0, 22, '{\"Drawable\":0,\"Texture\":0}', 1, 0, '7', '2023-12-04 16:56:51', 1, 1),
(157, 7, 0, 14, '{\"Drawable\":54,\"Texture\":0}', 1, 0, '7', '2023-12-04 18:38:22', 10, 1),
(158, 8, 2, 31, '-', 1, 0, '7', '2023-12-04 19:24:43', 2, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=1132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

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
(888, 2, 'kL8mzjxsnglTbQwdlyJjkByYpxq1fUHvEXLf7KHrAp7bXQTYj7vc+ktcXNVmlLalM9Too5gW/0gqkIHXIxpVeg==', '2023-12-12 11:29:32'),
(889, 7, '13lcScDvg6dbSowgSIP25mNQ9HEE0gnw+lCaWguGuHcn7I9Fh8M8OYc41F3rRIdgAYgNq/PcOzDl9qKEZVlCKg==', '2023-12-12 11:29:38'),
(895, 1, 'MVpc5gpyiWUWLNR3ZVee3hugJZgWy8LPnTQ2lpKYSWPFbd000wdfCRgsInSaHpOHQBD4LzxrI49lUR0uQNK1kQ==', '2023-12-12 17:17:06'),
(913, 1, '1gAnsZ844sUheqNDC4xIEnphUHkyDhxRmQV0NC8iQqJTMOCJWKC9nc5nYMiMoNKxx24xpDKr4QWhgPfmssbYQw==', '2023-12-14 17:29:08'),
(925, 1, 'GRbJMfEqO/DSM53a7w4LnQulfkjap+0k6nQ29fGRa0g+vHwG6VaD7eLDP73uwbeOB2dDZpagX5XZW6jE+f7kfA==', '2023-12-14 20:16:58'),
(945, 1, 'xRZ9hYfQ5RUEy1GsmO6KgdEUvBeAxylNSPYucFVTZpvnoSHZIKiB9pDJRj6pAl4orzHupMslGkmAwNCxp2dJ/w==', '2023-12-15 00:14:58'),
(1001, 9, 'X1SzbYbIJ9cL9ihJkprtwWRj08MMmhA3Aa/MksRanE/RnMuu/82uupd5fhKZtP8Vab8cyKoiJOxpqWaMv1NmnQ==', '2023-12-15 19:14:36'),
(1007, 1, '9AeHeMLXeUFXcFpI5MBdHvmDXKOYANAmS+jINpTWvxvwNlkizyUzfmg9fHLepf/tn6aKsr7v9FR9xOuvhmKd1Q==', '2023-12-16 18:42:36'),
(1053, 1, 'Qoq2LEncnRBehXFNHXWdFMUSBaOqtGb6yld+eDP0HWLHmtWnH2RPmGkhyMXOVRuwnPxTX1gyjKJxhzXbNrxGtw==', '2023-12-17 14:40:37'),
(1055, 1, 'RxQvW0R+2urZwG22ugMZ28C+qJ0pG8QGgMvgpDEcZxKqwCBVah8ev4LtSKP+0ZP6/+aZmxTUZJGU1Cnw/+6Q9g==', '2023-12-17 21:04:56'),
(1070, 1, 'ZoeFV79v1H77bq0lejzFwKQ9asont/Mv/ZfwTF0yOgw4FiU5BcGoZrtK38LNSihOGhkfZsDcwgB/UXAUFiYVrQ==', '2023-12-18 18:37:35'),
(1131, 1, 'zaDBdbvvsZy9kpuwuZTdnA4Zmg/rGC1TbedkAiba+QmVnZk2+ekxcUWDGBCRGio0NlrzHzZZb/uglyuI9m01Tg==', '2023-12-22 03:31:10');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

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
(10, 0, 11, 'sentineldm', -1394.83, 5089.35, 61.0998, 0, 0, 0, 235, 64, 52, 235, 64, 52, 42, 0, 0, 'rendszam', 0, 0, 'Chy Black', '2023-11-24 05:47:08'),
(11, 0, 18, 'raiden', -78.846, -1084.96, 26.7035, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 'asdsda', 0, 0, 'Herceghalmi Odett Zoltán', '2023-11-28 18:10:16');

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
