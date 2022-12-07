-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Dec 07. 12:01
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `rendszergazda`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ellenorzo`
--

CREATE TABLE `ellenorzo` (
  `id` int(11) NOT NULL,
  `tantargy_neve` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `jegy` int(11) NOT NULL,
  `datum` date NOT NULL,
  `tema` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `ellenorzo`
--

INSERT INTO `ellenorzo` (`id`, `tantargy_neve`, `jegy`, `datum`, `tema`) VALUES
(1, 'magyar', 3, '2022-09-16', 'irasbeli ropdolgozat'),
(2, 'magyar', 5, '2022-09-22', 'irasbeli ropdolgozat'),
(3, 'magyar', 5, '2022-10-29', 'irasbeli ropdolgozat'),
(4, 'magyar', 5, '2022-11-03', 'órai munka'),
(5, 'magyar', 5, '2022-11-14', 'beadandó feladat'),
(6, 'matematika', 4, '2022-10-28', 'orai feladat'),
(7, 'matematika', 3, '2022-11-10', 'irasbeli ropdolgozat'),
(8, 'angol nyelv', 5, '2022-09-30', 'irasbeli ropdolgozat'),
(9, 'angol nyelv', 5, '2022-11-28', 'irasbeli ropdolgozat'),
(10, 'tortenelem', 5, '2022-10-17', 'szobeli felelet'),
(11, 'tortenelem', 4, '2022-11-07', 'irasbeli temazaro dolgozat'),
(12, 'tortenelem', 5, '2022-11-28', 'szobeli felelet'),
(13, 'digitalis kultura', 5, '2022-10-14', 'gyakorlati feladat'),
(14, 'digitalis kultura', 5, '2022-10-23', ''),
(15, 'digitalis kultura', 5, '2022-10-28', 'gyakrolati feladat'),
(16, 'digitalis kutlura', 5, '2022-11-18', 'gyakorlati feladat'),
(17, 'testneveles', 4, '2022-10-17', 'gyakorlati feladat'),
(18, 'testneveles', 5, '2022-10-18', 'gyakorlati feladat'),
(19, 'testneveles', 5, '2022-10-28', 'orai munka'),
(20, 'testneveles', 5, '2022-11-07', 'gyakorolati feladat'),
(23, 'fizika', 5, '2022-09-22', 'irasbeli ropdolgozat'),
(24, 'fizika', 5, '2022-11-14', 'orai feladat'),
(25, 'fizika', 4, '2022-11-14', 'orai feladat'),
(26, 'ikt projektmunka', 4, '2022-10-25', 'projektmunka'),
(27, 'adatbazis-kezeles', 5, '2022-09-21', 'orai munka'),
(28, 'adatbazis-kezeles', 5, '2022-10-12', 'projektmunka'),
(29, 'adatbazis-kezeles', 5, '2022-10-26', 'irasbeli ropdolgozat'),
(30, 'halozatok', 4, '2022-09-20', 'gyakorlati feladat'),
(31, 'halozatok', 5, '2022-10-25', 'szobeli felelet'),
(32, 'halozatok', 5, '2022-10-25', 'szobeli felelet'),
(33, 'szakmai angol', 4, '2022-10-19', 'irasbeli ropdolgozat'),
(34, 'szakmai angol', 5, '2022-11-09', 'irasbeli ropdolgozat'),
(35, 'adatbazis-kezeles', 5, '2022-10-12', 'projektmunka'),
(36, 'adatbazis-kezeles', 5, '2022-10-26', 'irasbeli ropdolgozat'),
(37, 'adatbazis-kezeles', 5, '2022-11-30', 'irasbeli ropdolgozat'),
(38, 'halozatok', 4, '2022-09-20', 'gyakorlati feladat'),
(39, 'halozatok', 5, '2022-10-25', 'szobeli felelet'),
(40, 'halozatok', 5, '2022-10-25', 'szobeli felelet'),
(41, 'szakmai angol', 4, '2022-10-09', 'irasbeli ropdolgozat'),
(42, 'szakmai angol', 5, '2022-11-09', 'irasbeli ropdolgozat');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `ellenorzo`
--
ALTER TABLE `ellenorzo`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `ellenorzo`
--
ALTER TABLE `ellenorzo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
