-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Már 08. 12:16
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
-- Adatbázis: `kreta_11a_1`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ertekeles_modja`
--

CREATE TABLE `ertekeles_modja` (
  `id_ertekeles_modja` int(10) UNSIGNED NOT NULL,
  `mod_megnevezese` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `ertekeles_modja`
--

INSERT INTO `ertekeles_modja` (`id_ertekeles_modja`, `mod_megnevezese`) VALUES
(1, 'Na'),
(2, 'Írásbeli témazáró dolgozat'),
(3, 'Írásbeli röpdolgozat'),
(4, 'Szóbeli felelet'),
(5, 'Beszámoló'),
(6, 'Gyakorlati feladat'),
(7, 'Kisérettségi'),
(8, 'Házi feladat'),
(9, 'Házi dolgozat'),
(10, 'Projektmunka'),
(11, 'Órai munka'),
(12, 'Másik intézményből hozott értékelés'),
(13, 'Órai feladat'),
(14, 'Szorgalmi feladat'),
(15, 'E-learning feladat'),
(16, 'Kisdolgozat'),
(17, 'Nyelvi feladat'),
(18, 'Teszt feladat'),
(19, 'Kompetenciamérés'),
(20, 'Versenyeredmény'),
(21, 'Feladatlap'),
(22, 'Országos kompetenciamérés'),
(23, 'Írásbeli dolgozat'),
(24, 'Írásbeli felelet'),
(25, 'Beadandó feladat'),
(26, 'Csoportmunka'),
(27, 'Bemeneti- kimeneti mérés');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jegyek`
--

CREATE TABLE `jegyek` (
  `id_jegyek` int(10) UNSIGNED NOT NULL,
  `osztaly_nevsor_id` int(10) UNSIGNED NOT NULL,
  `tanar_nevsor_id` int(10) UNSIGNED NOT NULL,
  `tantargy_neve_id` int(10) UNSIGNED NOT NULL,
  `jegy` int(10) UNSIGNED NOT NULL,
  `datum` date NOT NULL,
  `ertekeles_modja_id` int(10) UNSIGNED NOT NULL,
  `ertekeles_temaja` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `jegyek`
--

INSERT INTO `jegyek` (`id_jegyek`, `osztaly_nevsor_id`, `tanar_nevsor_id`, `tantargy_neve_id`, `jegy`, `datum`, `ertekeles_modja_id`, `ertekeles_temaja`) VALUES
(1, 2, 6, 6, 2, '2022-09-22', 3, 'Na'),
(2, 2, 6, 6, 5, '2022-09-27', 3, 'Na'),
(3, 2, 6, 6, 1, '2022-10-29', 3, 'Na'),
(4, 2, 6, 6, 5, '2022-11-14', 25, 'Na'),
(5, 2, 4, 7, 3, '2022-10-10', 11, 'Na'),
(6, 2, 4, 7, 4, '2022-10-28', 13, 'Na'),
(7, 2, 4, 7, 4, '2022-11-10', 23, 'Na'),
(8, 2, 3, 2, 5, '2022-09-30', 23, 'Na'),
(9, 2, 3, 2, 5, '2022-10-28', 23, 'Na'),
(10, 2, 5, 3, 5, '2022-09-22', 2, 'Na'),
(11, 2, 5, 3, 5, '2022-11-14', 13, 'Na'),
(12, 2, 5, 3, 4, '2022-11-14', 13, 'Na'),
(13, 2, 1, 10, 5, '2022-09-30', 3, 'Na'),
(14, 2, 4, 7, 5, '2022-12-14', 24, 'Na'),
(15, 2, 1, 10, 3, '2022-10-27', 2, 'Na'),
(16, 2, 1, 10, 3, '2022-11-28', 2, 'Na'),
(17, 2, 8, 8, 3, '2022-10-06', 3, 'Na'),
(18, 2, 8, 8, 5, '2022-11-09', 3, 'Na'),
(19, 2, 8, 8, 4, '2022-11-23', 3, 'Na'),
(20, 2, 2, 9, 5, '2022-09-26', 13, 'Na'),
(21, 2, 2, 9, 5, '2022-10-06', 11, 'Na'),
(22, 2, 2, 9, 5, '2022-10-17', 11, 'Na'),
(23, 2, 2, 9, 5, '2022-10-28', 11, 'Na'),
(24, 2, 2, 9, 5, '2022-11-18', 11, 'Na'),
(25, 2, 9, 1, 5, '2022-10-12', 10, 'Na'),
(26, 2, 9, 1, 4, '2022-10-26', 3, 'Na'),
(27, 2, 7, 5, 4, '2022-10-24', 10, 'Na'),
(28, 2, 7, 4, 4, '2022-09-20', 6, 'Na'),
(29, 2, 7, 4, 1, '2022-10-18', 23, 'Na'),
(30, 2, 7, 4, 1, '2022-10-18', 23, 'Na'),
(31, 2, 7, 4, 5, '2022-10-25', 4, 'Na'),
(32, 2, 10, 11, 5, '2022-10-07', 6, 'Na'),
(33, 2, 10, 11, 5, '2022-10-14', 6, 'Na'),
(34, 2, 10, 11, 5, '2022-10-28', 6, 'Na'),
(35, 10, 6, 6, 5, '2022-09-22', 3, 'Na'),
(36, 10, 6, 6, 5, '2022-09-27', 3, 'Na'),
(37, 10, 6, 6, 2, '2022-10-29', 3, 'Na'),
(38, 10, 6, 6, 5, '2022-11-14', 25, 'Na'),
(39, 10, 4, 7, 5, '2022-09-19', 11, 'Na'),
(40, 10, 4, 7, 5, '2022-10-28', 13, 'Na'),
(41, 10, 4, 7, 4, '2022-11-10', 23, 'Na'),
(42, 10, 3, 2, 5, '2022-09-30', 23, 'Na'),
(43, 10, 3, 2, 5, '2022-10-28', 23, 'Na'),
(44, 10, 5, 3, 5, '2022-09-15', 3, 'Na'),
(45, 10, 1, 10, 5, '2022-09-20', 24, 'Na'),
(46, 10, 1, 10, 4, '2022-09-30', 3, 'Na'),
(47, 10, 1, 10, 5, '2022-10-10', 10, 'Na'),
(48, 10, 1, 10, 5, '2022-11-07', 2, 'Na'),
(49, 10, 1, 10, 4, '2022-11-21', 4, 'Na'),
(50, 10, 8, 8, 3, '2022-10-06', 3, 'Na'),
(51, 10, 8, 8, 5, '2022-10-19', 11, 'Na'),
(52, 10, 8, 8, 5, '2022-11-09', 3, 'Na'),
(53, 10, 8, 8, 4, '2022-11-23', 3, 'Na'),
(54, 10, 2, 9, 3, '2022-09-26', 13, 'Na'),
(55, 10, 2, 9, 5, '2022-10-17', 6, 'Na'),
(56, 10, 2, 9, 4, '2022-10-17', 6, 'Na'),
(57, 10, 2, 9, 5, '2022-10-28', 11, 'Na'),
(58, 10, 2, 9, 4, '2022-11-07', 6, 'Na'),
(59, 10, 2, 9, 5, '2022-11-10', 11, 'Na'),
(60, 10, 9, 1, 5, '2022-10-12', 10, 'Na'),
(61, 10, 9, 1, 5, '2022-10-26', 3, 'Na'),
(62, 10, 7, 5, 3, '2022-10-25', 10, 'Na'),
(63, 10, 7, 4, 4, '2022-09-20', 6, 'Na'),
(64, 10, 7, 4, 5, '2022-10-25', 4, 'Na'),
(65, 10, 7, 4, 4, '2022-10-25', 4, 'Na'),
(66, 10, 10, 11, 5, '2022-10-14', 6, 'Na'),
(67, 10, 10, 11, 5, '2022-10-14', 6, 'Na'),
(68, 10, 10, 11, 4, '2022-10-14', 6, 'Na'),
(69, 10, 10, 11, 5, '2022-10-28', 6, 'Na'),
(70, 10, 10, 11, 5, '2022-11-18', 6, 'Na'),
(71, 10, 3, 2, 5, '2022-12-19', 23, 'Na'),
(72, 10, 4, 7, 4, '2022-11-10', 23, 'Na'),
(73, 10, 4, 7, 4, '2022-11-30', 2, 'Na'),
(74, 10, 4, 7, 5, '2022-12-02', 24, 'Na'),
(75, 10, 4, 7, 3, '2022-12-13', 3, 'Na'),
(76, 10, 4, 7, 5, '2022-12-21', 11, 'Na'),
(77, 10, 1, 10, 4, '2022-12-19', 3, 'Na'),
(78, 10, 10, 11, 4, '2022-12-16', 6, 'Na'),
(79, 10, 2, 9, 3, '2022-12-12', 6, 'Na'),
(80, 10, 2, 9, 4, '2022-12-12', 6, 'Na'),
(81, 10, 7, 5, 3, '2022-12-13', 10, 'Na'),
(82, 10, 7, 5, 3, '2022-12-13', 10, 'Na'),
(83, 10, 7, 5, 4, '2023-01-10', 10, 'Na'),
(84, 10, 7, 5, 5, '2023-01-10', 11, 'Na'),
(85, 10, 9, 1, 1, '2022-12-14', 11, 'Na'),
(86, 10, 7, 4, 3, '2022-12-14', 18, 'Na'),
(87, 10, 8, 8, 5, '2022-11-30', 3, 'Na'),
(88, 10, 8, 8, 5, '2022-12-07', 11, 'Na'),
(89, 10, 4, 7, 5, '2023-01-13', 24, 'Na'),
(90, 10, 1, 10, 5, '2023-01-12', 4, 'Na'),
(91, 10, 1, 10, 5, '2023-01-17', 11, 'Na'),
(92, 10, 5, 3, 3, '2023-01-12', 11, 'Na'),
(93, 10, 5, 3, 5, '2023-01-12', 11, 'Na'),
(94, 10, 7, 4, 3, '2023-01-12', 6, 'Na'),
(95, 14, 6, 6, 5, '2022-09-22', 3, 'Na'),
(96, 14, 6, 6, 5, '2022-09-27', 3, 'Na'),
(97, 14, 6, 6, 5, '2022-10-29', 3, 'Na'),
(98, 14, 6, 6, 5, '2022-11-14', 25, 'Na'),
(99, 14, 4, 7, 4, '2022-10-10', 11, 'Na'),
(100, 14, 4, 7, 5, '2022-10-28', 13, 'Na'),
(101, 14, 4, 7, 5, '2022-11-10', 3, 'Na'),
(102, 14, 3, 2, 5, '2022-09-30', 23, 'Na'),
(103, 14, 3, 2, 5, '2022-10-28', 23, 'Na'),
(104, 14, 5, 3, 5, '2022-09-15', 3, 'Na'),
(105, 14, 5, 3, 5, '2022-11-14', 13, 'Na'),
(106, 14, 5, 3, 4, '2022-11-14', 13, 'Na'),
(107, 14, 2, 9, 5, '2022-09-26', 13, 'Na'),
(108, 14, 7, 4, 1, '2022-10-18', 3, 'Na'),
(109, 14, 7, 4, 2, '2022-10-28', 3, 'Na'),
(110, 14, 7, 4, 4, '2022-10-25', 13, 'Na'),
(111, 14, 7, 4, 3, '2022-09-20', 3, 'Na'),
(112, 14, 10, 11, 5, '2022-12-16', 6, 'Na'),
(113, 14, 10, 11, 5, '2022-11-18', 6, 'Na'),
(114, 14, 9, 1, 5, '2022-12-14', 11, 'Na'),
(115, 14, 9, 1, 5, '2022-11-30', 3, 'Na'),
(116, 14, 9, 1, 4, '2022-10-26', 11, 'Na'),
(117, 14, 9, 1, 5, '2022-10-12', 10, 'Na'),
(118, 14, 7, 5, 5, '2023-01-10', 11, 'Na'),
(119, 14, 7, 5, 5, '2023-01-10', 10, 'Na'),
(120, 14, 7, 4, 5, '2023-01-12', 6, 'Na'),
(121, 14, 1, 10, 5, '2023-01-17', 11, 'Na'),
(122, 14, 4, 7, 5, '2023-01-13', 24, 'Na'),
(123, 14, 2, 9, 4, '2022-12-12', 6, 'Na'),
(124, 14, 2, 9, 5, '2022-10-17', 6, 'Na'),
(125, 14, 2, 9, 5, '2022-10-28', 11, 'Na'),
(126, 14, 2, 9, 4, '2022-11-07', 6, 'Na'),
(127, 14, 8, 8, 5, '2022-11-16', 3, 'Na'),
(128, 14, 8, 8, 5, '2022-11-09', 3, 'Na'),
(129, 14, 8, 8, 5, '2022-10-19', 11, 'Na'),
(130, 14, 8, 8, 4, '2022-10-06', 3, 'Na'),
(131, 14, 1, 10, 5, '2022-09-30', 24, 'Na'),
(132, 14, 1, 10, 4, '2022-11-11', 24, 'Na'),
(133, 5, 6, 6, 3, '2020-09-16', 3, 'Csokonai-Berzsenyi'),
(134, 5, 6, 6, 5, '2020-09-22', 3, 'ETA Hoffmann - Az arany virágcserép'),
(135, 5, 6, 6, 5, '2022-10-29', 3, 'Victor Hugo - Nyomorultak'),
(136, 5, 6, 6, 5, '2022-11-03', 11, 'Puskin'),
(137, 5, 6, 6, 5, '2022-11-14', 25, 'Fogalmazás'),
(138, 5, 6, 6, 4, '2022-12-20', 2, 'Bánk Bán - Csongor és Tünde'),
(139, 5, 6, 6, 5, '2023-01-12', 4, 'Bánk Bán'),
(140, 5, 6, 6, 4, '2023-02-27', 4, 'Goriot apó'),
(141, 5, 3, 2, 5, '2022-09-30', 3, 'Quick Test Unit 1'),
(142, 5, 3, 2, 5, '2022-10-28', 3, 'Quick Test Unit 2'),
(143, 5, 3, 2, 5, '2022-11-28', 3, 'Quick Test Unit 3'),
(144, 5, 3, 2, 5, '2022-12-19', 3, 'Quick Test Unit 4'),
(145, 5, 3, 2, 5, '2023-01-24', 3, 'Quick Test Unit 5'),
(146, 5, 3, 2, 5, '2023-02-03', 3, 'Quick Test Unit 6'),
(147, 5, 4, 7, 4, '2022-10-28', 13, 'Exponenciális kifejezések, függvények'),
(148, 5, 4, 7, 3, '2022-11-10', 3, 'Logaritmusos kifejezések'),
(149, 5, 4, 7, 4, '2022-12-02', 24, 'Hegyesszögek szögfüggvényei'),
(150, 5, 4, 7, 5, '2022-12-09', 3, 'Szinusz tétel'),
(151, 5, 4, 7, 5, '2023-01-13', 24, 'Koszinusz tétel'),
(152, 5, 4, 7, 4, '2023-02-07', 16, 'Trigonometrikus összefüggések'),
(153, 5, 1, 10, 5, '2022-10-17', 4, 'Széchenyi és Kossuth politikai programjai'),
(154, 5, 1, 10, 4, '2022-11-07', 2, 'A márciusi forradalom az 1848-49-es szabadságharc'),
(155, 5, 1, 10, 5, '2022-11-28', 4, 'Az USA függetlenségi és polgárháborúja'),
(156, 5, 1, 10, 5, '2022-12-01', 4, 'A német egység'),
(157, 5, 1, 10, 4, '2022-12-19', 3, 'A dualista rendszer kialakulása, működése'),
(158, 5, 1, 10, 5, '2023-01-12', 4, 'A dualizmus kor gazdasága'),
(159, 5, 1, 10, 5, '2023-01-17', 11, 'Füzetellenörzés'),
(160, 5, 1, 10, 5, '2023-01-30', 4, 'Az első világháború előzményei'),
(161, 5, 1, 10, 5, '2023-12-20', 2, 'Az első világháború');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `osztaly_nevsor`
--

CREATE TABLE `osztaly_nevsor` (
  `id_osztaly_nevsor` int(10) UNSIGNED NOT NULL,
  `vnev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `knev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `osztaly_nevsor`
--

INSERT INTO `osztaly_nevsor` (`id_osztaly_nevsor`, `vnev`, `knev`) VALUES
(1, 'Barcsák', 'Vinzent'),
(2, 'Borbély', 'Gergely'),
(3, 'Csordás', 'Csenge'),
(4, 'Enyedi', 'Sándor '),
(5, 'Gál', 'Máté'),
(6, 'György', 'Botond'),
(7, 'Héring', 'Máté'),
(8, 'Juhász', 'István'),
(9, 'Kreipos', 'Gábor'),
(10, 'Lajka', 'Kristóf'),
(11, 'Nemes', 'Alexandra'),
(12, 'Skarufa', 'Ákos'),
(13, 'Szabó', 'Gergely'),
(14, 'Váradi', 'Ádám');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tanar_nevsor`
--

CREATE TABLE `tanar_nevsor` (
  `id_tanar_nevsor` int(10) UNSIGNED NOT NULL,
  `tanar_neve` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `tanar_nevsor`
--

INSERT INTO `tanar_nevsor` (`id_tanar_nevsor`, `tanar_neve`) VALUES
(1, 'Halászné Kiss Melinda Ottilia'),
(2, 'Dargai Krisztina'),
(3, 'Németh József'),
(4, 'Várnai Virág'),
(5, 'Péterffy Gáspár Mátyás'),
(6, 'Vasók Krisztián'),
(7, 'Csontos Dénes'),
(8, 'Domján Annamária'),
(9, 'Takács István'),
(10, 'Kováts Kornél Tamás');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tantargy_neve`
--

CREATE TABLE `tantargy_neve` (
  `id_tantargy_neve` int(10) UNSIGNED NOT NULL,
  `neve` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `tantargy_neve`
--

INSERT INTO `tantargy_neve` (`id_tantargy_neve`, `neve`) VALUES
(1, 'adatbaziskezeles'),
(2, 'angol_nyelv'),
(3, 'fizika'),
(4, 'halozat'),
(5, 'ikt_projektmunka'),
(6, 'magyar'),
(7, 'matematika'),
(8, 'szakmai_angol'),
(9, 'testneveles'),
(10, 'tortenelem'),
(11, 'digitalis_kultura');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `ertekeles_modja`
--
ALTER TABLE `ertekeles_modja`
  ADD PRIMARY KEY (`id_ertekeles_modja`);

--
-- A tábla indexei `jegyek`
--
ALTER TABLE `jegyek`
  ADD PRIMARY KEY (`id_jegyek`),
  ADD KEY `osztaly_nevsor_id` (`osztaly_nevsor_id`),
  ADD KEY `tanar_nevsor_id` (`tanar_nevsor_id`),
  ADD KEY `tantargy_neve_id` (`tantargy_neve_id`),
  ADD KEY `ertekeles_modja_id` (`ertekeles_modja_id`);

--
-- A tábla indexei `osztaly_nevsor`
--
ALTER TABLE `osztaly_nevsor`
  ADD PRIMARY KEY (`id_osztaly_nevsor`);

--
-- A tábla indexei `tanar_nevsor`
--
ALTER TABLE `tanar_nevsor`
  ADD PRIMARY KEY (`id_tanar_nevsor`);

--
-- A tábla indexei `tantargy_neve`
--
ALTER TABLE `tantargy_neve`
  ADD PRIMARY KEY (`id_tantargy_neve`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `ertekeles_modja`
--
ALTER TABLE `ertekeles_modja`
  MODIFY `id_ertekeles_modja` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT a táblához `jegyek`
--
ALTER TABLE `jegyek`
  MODIFY `id_jegyek` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT a táblához `osztaly_nevsor`
--
ALTER TABLE `osztaly_nevsor`
  MODIFY `id_osztaly_nevsor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT a táblához `tanar_nevsor`
--
ALTER TABLE `tanar_nevsor`
  MODIFY `id_tanar_nevsor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `tantargy_neve`
--
ALTER TABLE `tantargy_neve`
  MODIFY `id_tantargy_neve` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `jegyek`
--
ALTER TABLE `jegyek`
  ADD CONSTRAINT `jegyek_ibfk_1` FOREIGN KEY (`osztaly_nevsor_id`) REFERENCES `osztaly_nevsor` (`id_osztaly_nevsor`),
  ADD CONSTRAINT `jegyek_ibfk_2` FOREIGN KEY (`tanar_nevsor_id`) REFERENCES `tanar_nevsor` (`id_tanar_nevsor`),
  ADD CONSTRAINT `jegyek_ibfk_3` FOREIGN KEY (`tantargy_neve_id`) REFERENCES `tantargy_neve` (`id_tantargy_neve`),
  ADD CONSTRAINT `jegyek_ibfk_4` FOREIGN KEY (`ertekeles_modja_id`) REFERENCES `ertekeles_modja` (`id_ertekeles_modja`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
