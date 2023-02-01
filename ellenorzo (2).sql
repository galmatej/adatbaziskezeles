-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Feb 01. 11:53
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
-- Adatbázis: `ellenorzo`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ellenorzo`
--

CREATE TABLE `ellenorzo` (
  `id` int(11) NOT NULL,
  `osztaly_nevsor_id` int(10) UNSIGNED NOT NULL,
  `tantargy_neve` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `jegy` int(11) NOT NULL,
  `datum` date NOT NULL,
  `tema` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `ellenorzo`
--

INSERT INTO `ellenorzo` (`id`, `osztaly_nevsor_id`, `tantargy_neve`, `jegy`, `datum`, `tema`) VALUES
(1, 6, 'magyar', 3, '2022-09-16', 'irasbeli ropdolgozat'),
(2, 6, 'magyar', 5, '2022-09-22', 'irasbeli ropdolgozat'),
(3, 6, 'magyar', 5, '2022-10-29', 'irasbeli ropdolgozat'),
(4, 6, 'magyar', 5, '2022-11-03', 'órai munka'),
(5, 6, 'magyar', 5, '2022-11-14', 'beadandó feladat'),
(6, 6, 'matematika', 4, '2022-10-28', 'orai feladat'),
(7, 6, 'matematika', 3, '2022-11-10', 'irasbeli ropdolgozat'),
(8, 6, 'angol nyelv', 5, '2022-09-30', 'irasbeli ropdolgozat'),
(9, 6, 'angol nyelv', 5, '2022-10-28', 'irasbeli ropdolgozat'),
(10, 6, 'tortenelem', 5, '2022-10-17', 'szobeli felelet'),
(11, 6, 'tortenelem', 4, '2022-11-07', 'irasbeli temazaro dolgozat'),
(12, 6, 'tortenelem', 5, '2022-11-28', 'szobeli felelet'),
(13, 6, 'digitalis kultura', 5, '2022-10-14', 'gyakorlati feladat'),
(14, 6, 'digitalis kultura', 5, '2022-10-23', ''),
(15, 6, 'digitalis kultura', 5, '2022-10-28', 'gyakrolati feladat'),
(16, 6, 'digitalis kutlura', 5, '2022-11-18', 'gyakorlati feladat'),
(17, 6, 'testneveles', 4, '2022-10-17', 'gyakorlati feladat'),
(18, 6, 'testneveles', 5, '2022-10-18', 'gyakorlati feladat'),
(19, 6, 'testneveles', 5, '2022-10-28', 'orai munka'),
(20, 6, 'testneveles', 5, '2022-11-07', 'gyakorolati feladat'),
(23, 6, 'fizika', 5, '2022-09-22', 'irasbeli ropdolgozat'),
(24, 6, 'fizika', 5, '2022-11-14', 'orai feladat'),
(25, 6, 'fizika', 4, '2022-11-14', 'orai feladat'),
(26, 6, 'ikt projektmunka', 4, '2022-10-25', 'projektmunka'),
(27, 6, 'adatbazis-kezeles', 5, '2022-09-21', 'orai munka'),
(28, 6, 'adatbazis-kezeles', 5, '2022-10-12', 'projektmunka'),
(29, 6, 'adatbazis-kezeles', 5, '2022-10-26', 'irasbeli ropdolgozat'),
(30, 6, 'halozatok', 4, '2022-09-20', 'gyakorlati feladat'),
(31, 6, 'halozatok', 5, '2022-10-25', 'szobeli felelet'),
(32, 6, 'halozatok', 5, '2022-10-25', 'szobeli felelet'),
(33, 6, 'szakmai angol', 4, '2022-10-19', 'irasbeli ropdolgozat'),
(34, 6, 'szakmai angol', 5, '2022-11-09', 'irasbeli ropdolgozat'),
(35, 6, 'adatbazis-kezeles', 5, '2022-10-12', 'projektmunka'),
(36, 6, 'adatbazis-kezeles', 5, '2022-10-26', 'irasbeli ropdolgozat'),
(37, 6, 'adatbazis-kezeles', 5, '2022-11-30', 'irasbeli ropdolgozat'),
(38, 6, 'halozatok', 4, '2022-09-20', 'gyakorlati feladat'),
(39, 6, 'halozatok', 5, '2022-10-25', 'szobeli felelet'),
(40, 6, 'halozatok', 5, '2022-10-25', 'szobeli felelet'),
(41, 6, 'szakmai angol', 4, '2022-10-09', 'irasbeli ropdolgozat'),
(42, 6, 'szakmai angol', 5, '2022-11-09', 'irasbeli ropdolgozat'),
(43, 6, 'magyar', 5, '2023-01-12', 'szobeli felelet'),
(44, 6, 'magyar', 4, '2022-12-20', 'irasbeli temazaro'),
(45, 6, 'angol', 5, '2022-11-28', 'irasbeli ropdolgozat'),
(46, 6, 'angol', 5, '2022-12-19', 'irasbeli ropdolgozat'),
(47, 6, 'matematika', 4, '2022-12-02', 'irasbeli felelet'),
(48, 6, 'matematika', 5, '2022-12-09', 'irasbeli ropdolgozat'),
(49, 6, 'tortenelem', 5, '2022-12-01', 'szobeli felelet'),
(50, 6, 'tortenelem', 4, '2022-12-19', 'irasbeli ropdolgozat'),
(51, 6, 'tortenelem', 5, '2023-01-12', 'szobeli felelet'),
(52, 6, 'tortenelem', 5, '2023-01-17', 'orai munka'),
(53, 6, 'digitalis kultura', 4, '2022-12-16', 'gyakorlati feladat'),
(54, 6, 'testneveles', 5, '2022-12-05', 'orai munka'),
(55, 6, 'ikt projektmunka', 5, '2022-12-13', 'projektmunka'),
(56, 6, 'ikt projektmunka', 5, '2022-12-13', 'projektmunka'),
(57, 6, 'ikt projektmunka ', 4, '2023-01-10', 'projektmunka'),
(58, 6, 'ikt projektmunka', 5, '2023-01-10', 'projektmunka'),
(59, 6, 'halozatok ', 1, '2022-12-14', 'teszt feladat'),
(60, 6, 'halozatok', 3, '2023-01-12', 'gyakorlati feladat');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `osztaly_nevsor`
--

CREATE TABLE `osztaly_nevsor` (
  `id` int(10) UNSIGNED NOT NULL,
  `vnev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `knev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `osztaly_nevsor`
--

INSERT INTO `osztaly_nevsor` (`id`, `vnev`, `knev`) VALUES
(1, 'Barcsák', 'Vinzent'),
(3, 'Borbély', 'Gergely'),
(4, 'Csordás', 'Csenge'),
(5, 'Enyedi', 'Sándor'),
(6, 'Gál', 'Máté'),
(7, 'György', 'Botond'),
(9, 'Héring', 'Máté'),
(10, 'Juhász', 'István'),
(11, 'Kreipos', 'Gábor'),
(12, 'Lajka', 'Kristóf'),
(13, 'Nemes', 'Alexandra'),
(14, 'Skarufa', 'Ákos'),
(15, 'Szabó', 'Gergely'),
(16, 'Váradi', 'Ádám');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `ellenorzo`
--
ALTER TABLE `ellenorzo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `osztaly_nevsor_id` (`osztaly_nevsor_id`);

--
-- A tábla indexei `osztaly_nevsor`
--
ALTER TABLE `osztaly_nevsor`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `ellenorzo`
--
ALTER TABLE `ellenorzo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT a táblához `osztaly_nevsor`
--
ALTER TABLE `osztaly_nevsor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `ellenorzo`
--
ALTER TABLE `ellenorzo`
  ADD CONSTRAINT `ellenorzo_ibfk_1` FOREIGN KEY (`osztaly_nevsor_id`) REFERENCES `osztaly_nevsor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
