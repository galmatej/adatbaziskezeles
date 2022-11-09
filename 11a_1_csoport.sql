-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Nov 09. 12:21
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
-- Adatbázis: `11a_1_csoport`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `1_csoport`
--

CREATE TABLE `1_csoport` (
  `azonosito` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tanulo`
--

CREATE TABLE `tanulo` (
  `id` int(10) UNSIGNED NOT NULL,
  `vezetek_nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `kereszt_nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `szuletesi_datum` date NOT NULL,
  `neme` tinyint(1) NOT NULL,
  `csoport` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `tanulo`
--

INSERT INTO `tanulo` (`id`, `vezetek_nev`, `kereszt_nev`, `szuletesi_datum`, `neme`, `csoport`) VALUES
(1, 'Barcsák', 'Vinzent', '2005-06-01', 1, 1),
(2, 'Borbély', 'Gergely', '2005-08-23', 1, 1),
(3, 'Csordás', 'Csenge Zsófia', '2005-01-12', 0, 1),
(4, 'Enyedi', 'Sándor', '2005-06-01', 1, 1),
(5, 'Gál', 'Máté', '2005-07-29', 1, 1),
(6, 'György', 'Botond', '2006-02-22', 1, 1),
(7, 'Héring', 'Máté', '2005-05-03', 1, 1),
(8, 'Juhász', 'Bence', '2005-09-13', 1, 1),
(9, 'Kreipos', 'Gábor', '2005-01-06', 1, 1),
(10, 'Lajka', 'Kristóf', '2006-02-02', 1, 1),
(11, 'Nemes', 'Alexandra', '2006-04-26', 0, 1),
(12, 'Skarufa', 'Ákos', '2006-01-14', 1, 1),
(13, 'Szabó', 'Gergely', '2005-08-16', 1, 1),
(14, 'Váradi', 'Ádám', '2005-12-26', 1, 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `tanulo`
--
ALTER TABLE `tanulo`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `tanulo`
--
ALTER TABLE `tanulo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
