-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Dec 04. 13:11
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `telapo`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gyerek`
--

CREATE TABLE `gyerek` (
  `id` int(11) NOT NULL,
  `nev` varchar(191) NOT NULL,
  `cim` varchar(191) NOT NULL,
  `jo_volt_e` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `gyerek`
--

INSERT INTO `gyerek` (`id`, `nev`, `cim`, `jo_volt_e`) VALUES
(1, 'Kovács Anna', 'Magyarország, Budapest, Fő utca 1.', 1),
(2, 'Teszt', 'Magyarország, Debrecen, Kossuth tér 3.', 0),
(3, 'Tóth Lilla', 'Szlovákia, Pozsony, Hlavna 15.', 1),
(4, 'Szabó Ádám', 'Románia, Kolozsvár, Fő tér 10.', 1),
(5, 'Horváth Júlia', 'Ausztria, Bécs, Mariahilfer Straße 20.', 0),
(6, 'Varga Balázs', 'Magyarország, Győr, Baross út 12.', 1),
(7, 'Oláh Márta', 'Csehország, Prága, Karlova 8.', 0),
(8, 'Farkas Gábor', 'Szerbia, Újvidék, Korzo 5.', 1),
(9, 'Németh István', 'Magyarország, Szeged, Széchenyi tér 2.', 1),
(10, 'Kiss Eszter', 'Horvátország, Zágráb, Ban Jelačić tér 4.', 0),
(99, 'Teszt Nev', 'Teszt cim', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jatek`
--

CREATE TABLE `jatek` (
  `id` int(11) NOT NULL,
  `megnevezes` varchar(191) NOT NULL,
  `anyag` varchar(191) NOT NULL,
  `suly` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `jatek`
--

INSERT INTO `jatek` (`id`, `megnevezes`, `anyag`, `suly`) VALUES
(1, 'Fa autó', 'wood', 1.5),
(2, 'Fém vonat', 'metal', 5),
(3, 'Műanyag baba', 'plastic', 0.8),
(4, 'Plüss mackó', 'other', 0.9),
(5, 'Építőkockák', 'wood', 2),
(6, 'Távirányítós autó', 'plastic', 1.1),
(7, 'Hintaló', 'wood', 5),
(8, 'Fém repülő', 'metal', 2.5),
(9, 'Puzzle', 'other', 0.6);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `gyerek`
--
ALTER TABLE `gyerek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `jatek`
--
ALTER TABLE `jatek`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `gyerek`
--
ALTER TABLE `gyerek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT a táblához `jatek`
--
ALTER TABLE `jatek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
