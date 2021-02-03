-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 03. Feb 2021 um 08:36
-- Server-Version: 8.0.17
-- PHP-Version: 7.3.24-(to be removed in future macOS)

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `bvg-db`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Busdaten`
--

CREATE TABLE `Busdaten` (
  `BusNr` int(11) NOT NULL,
  `Start_str` text NOT NULL,
  `Start_str_nr` int(11) NOT NULL,
  `Start_lat` double DEFAULT NULL,
  `Start_lng` double DEFAULT NULL,
  `Ziel_str` text NOT NULL,
  `Ziel_str_nr` int(11) NOT NULL,
  `Ziel_lat` double DEFAULT NULL,
  `Ziel_lng` double DEFAULT NULL,
  `Buslinie` varchar(50) DEFAULT NULL,
  `Einsteige_Station` varchar(50) DEFAULT NULL,
  `Aussteige_Station` varchar(50) DEFAULT NULL,
  `Pruefer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `Busdaten`
--

INSERT INTO `Busdaten` (`BusNr`, `Start_str`, `Start_str_nr`, `Start_lat`, `Start_lng`, `Ziel_str`, `Ziel_str_nr`, `Ziel_lat`, `Ziel_lng`, `Buslinie`, `Einsteige_Station`, `Aussteige_Station`, `Pruefer`) VALUES
(2453, 'Osloer Str.', 2, 52.556889, 13.373245, 'Berlin TXL, A/B', 4, 52.553791, 13.292312, '109', 'U Osloer Str.', 'Flughafen Tegel', 60805),
(2897, 'Berlin TXL, A/B', 4, 52.553791, 13.292312, 'Osloer Str.', 2, 52.556889, 13.373245, '109', 'Flughafen Tegel', 'U Osloer Str.', 60805),
(5299, 'Gradestraße ', 71, 52.45219280171561, 13.428722297990495, 'Gradestraße ', 4, 52.45262659198507, 13.436040571006558, '170', 'Geradestr. 71', 'Betriebshof Britz', NULL),
(5678, 'U Dahlem-Dorf', 1, 52.45784618082077, 13.290003663202183, 'S Schöneweide/Sterndamm', 1, 52.45395096125496, 13.509119498792046, 'M11', 'U Dahlem-Dorf', 'S Schöneweide/Sterndamm', NULL),
(5679, 'S Grunewald', 1, 52.488506543910994, 13.261614127628373, 'U Mehringdamm', 1, 52.494825913960746, 13.388945969956996, 'M19', 'S Grunewald', 'U Mehringdamm', NULL),
(5680, 'Uhlandstr./Wilhelmsruher Damm', 1, 52.59747511435186, 13.36955345646623, 'S+U Jungfernheide', 1, 52.53075066696733, 13.300508327629213, 'M21', 'Uhlandstr./Wilhelmsruher Damm', 'S+U Jungfernheide', NULL),
(5681, 'Hertzallee', 1, 52.50940319857096, 13.332062056464407, 'Teltow Rammrath-Brücke', 1, 52.40035534858116, 13.240395269955275, 'X10', 'Hertzallee', 'Teltow Rammrath-Brücke', NULL),
(5682, 'U Krumme Lanke', 1, 52.44351935764761, 13.241459427627413, 'S Schöneweide/Sterndamm', 1, 52.45395096125496, 13.509119498792046, 'X11', 'U Krumme Lanke', 'S Schöneweide/Sterndamm', NULL),
(5683, 'Quickborner Str.', 1, 52.606130526407625, 13.364352727630674, 'U Jakob-Kaiser-Platz', 1, 52.53652923507671, 13.294040785300645, 'X21', 'Quickborner Str.', 'U Jakob-Kaiser-Platz', NULL),
(5684, 'Hadlichstr.', 1, 52.568921190452656, 13.414375727629906, 'S+U Jungfernheide', 1, 52.53075066696733, 13.300508327629213, 'M27', 'Hadlichstr.', 'S+U Jungfernheide', NULL),
(5685, 'U Rudow', 1, 52.41624651101083, 13.495299927626911, 'Flughafen BER', 1, 52.364526839672244, 13.509790356461552, 'X7', 'U Rudow', 'Flughafen BER', NULL),
(5691, 'S+U Rathaus Spandau', 1, 52.53474305741819, 13.199233453391466, 'Wilhelmsruher Damm', 1, 52.59738036396948, 13.36638322763058, 'X33', 'S+U Rathaus Spandau', 'Wilhelmsruher Damm', NULL),
(5692, 'Hertzallee', 1, 52.50940319857096, 13.332062056464407, 'Memhardstr.', 1, 52.5235250744827, 13.411230127629024, '100', 'S+U Zoologischer Garten', 'S+U Alexanderplatz', NULL),
(5693, 'U Turmstr.', 1, 52.52571889997602, 13.3423664574567, 'Gutzmannstr.', 1, 52.42103903921147, 13.249946541267196, '101', 'U Turmstr.', 'Gutzmannstr.', NULL),
(5694, 'Brixplatz', 1, 52.519065936072955, 13.256774456375588, 'Tunnelstr.', 1, 52.49041083985369, 13.480738269869267, '104', 'Brixplatz', 'Tunnelstr.', NULL),
(5695, 'U Seestr.', 1, 52.55197478641098, 13.354753727541116, 'Lindenhof', 1, 52.460018889496304, 13.361647456374575, '106', 'U Seestr.', 'Lindenhof', NULL),
(5696, 'Pastor-Niemöller-Platz', 1, 52.58034371220878, 13.397039556376866, 'Schildow, Kirche', 1, 52.635876090862375, 13.377740456378003, '107', 'Pastor-Niemöller-Platz', 'Schildow, Kirche', NULL),
(5791, 'Wilhelmsruher Damm', 1, 52.59738036396948, 13.36638322763058, 'S+U Hauptbahnhof', 1, 52.524976355769006, 13.36952418521105, '120', 'Wilhelmsruher Damm', 'S+U Hauptbahnhof', NULL),
(5792, 'U Kurt-Schumacher-Platz', 1, 52.56350254225724, 13.326894185211843, 'Titiseestr.', 1, 52.60761064822943, 13.3320709987069, '122', 'U Kurt-Schumacher-Platz', 'Titiseestr.', NULL),
(5793, 'S+U Hauptbahnhof', 1, 52.524976355769006, 13.36952418521105, 'Mäckeritzwiesen', 1, 52.55001836183866, 13.269873627541038, '123', 'S+U Hauptbahnhof', 'Mäckeritzwiesen', NULL),
(5794, 'Aubertstr.', 1, 52.6084817075501, 13.415660456377388, 'Alt-Heiligensee', 1, 52.60665208071352, 13.211985956377461, '124', 'Aubertstr.', 'Alt-Heiligensee', NULL),
(5795, 'U Osloer Str.', 1, 52.55767275265714, 13.373077214046967, 'Invalidensiedlung', 1, 52.65525658669067, 13.284746727543121, '125', 'U Osloer Str.', 'Invalidensiedlung', NULL),
(5796, 'U Ruhleben', 1, 52.52573283711228, 13.241219998705269, 'Waldkrankenhaus', 1, 52.56245724412191, 13.158402898706049, '130', 'U Ruhleben', 'Waldkrankenhaus', NULL),
(7302, 'Berliner Allee', 252, 52.55933, 13.46668, 'Schwarzelfenweg ', 1, 52.56735, 13.46544, '255', 'Gehringstr.', 'Schwarzelfenweg', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Personaldaten`
--

CREATE TABLE `Personaldaten` (
  `PersonalNr` int(11) NOT NULL,
  `Vorname` text NOT NULL,
  `Nachname` text NOT NULL,
  `OrgZuordnung` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ZustandsNr` int(11) NOT NULL DEFAULT '381',
  `Berufsgruppe` varchar(255) NOT NULL DEFAULT 'Omnibusfahrer/in',
  `Betriebshof` varchar(255) NOT NULL DEFAULT 'e',
  `email` varchar(50) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `Personaldaten`
--

INSERT INTO `Personaldaten` (`PersonalNr`, `Vorname`, `Nachname`, `OrgZuordnung`, `ZustandsNr`, `Berufsgruppe`, `Betriebshof`, `email`, `password`) VALUES
(60805, 'Heini', 'Mustermann', 'BO-FB/I6', 381, 'Omnibusfahrer/in', 'e', 'Mustermann@bvg.de', '098f6bcd4621d373cade4e832627b4f6'),
(61465, 'Hans', 'Beispiel', 'BO-FB/I6', 381, 'Omnibusfahrer/in', 'e', 'Beispiel@bvg.de', '098f6bcd4621d373cade4e832627b4f6'),
(61712, 'Luzie', 'Musterfrau', 'BO-FB/I8', 381, 'Omnibusfahrer/in', 'e', 'Musterfrau@bvg.de', '098f6bcd4621d373cade4e832627b4f6'),
(61820, 'Ella', 'Texterin', 'BO-FB/I6', 381, 'Omnibusfahrer/in', 'e', 'Texterin@bvg.de', '098f6bcd4621d373cade4e832627b4f6'),
(62187, 'Hans', 'Wurst', 'BO-FB/I9', 381, 'Omnibusfahrer/in', 'e', 'Wurst@bvg.de', '098f6bcd4621d373cade4e832627b4f6'),
(62203, 'Leonard', 'McCoy', 'BO-FB/I9', 381, 'Omnibusfahrer/in', 'e', 'McCoy@bvg.de', '098f6bcd4621d373cade4e832627b4f6'),
(62283, 'Uschi', 'Versuchsmal', 'BO-FB/I9', 381, 'Omnibusfahrer/in', 'e', 'Versuchsmal@bvg.de', '098f6bcd4621d373cade4e832627b4f6'),
(62458, 'Jean', 'Miraculix', 'BO-FB/I8', 381, 'Omnibusfahrer/in', 'e', 'Miraculix@bvg.de', '098f6bcd4621d373cade4e832627b4f6'),
(62884, 'Katrina', 'Idefix', 'BO-FB/I6', 381, 'Omnibusfahrer/in', 'e', 'Idefix@bvg.de', '098f6bcd4621d373cade4e832627b4f6'),
(62968, 'Werner', 'Weissnix', 'BO-FB/I9', 381, 'Omnibusfahrer/in', 'e', 'Weissnix@bvg.de', '098f6bcd4621d373cade4e832627b4f6'),
(63054, 'Padme', 'Skywalker', 'BO-FB/I9', 381, 'Omnibusfahrer/in', 'e', 'Skywalker@bvg.de', '098f6bcd4621d373cade4e832627b4f6'),
(63352, 'Dardia', 'Vader', 'BO-FB/I9', 381, 'Omnibusfahrer/in', 'e', 'Vader@bvg.de', '098f6bcd4621d373cade4e832627b4f6'),
(63395, 'Moritz', 'Bösebub', 'BO-FB/I9', 381, 'Omnibusfahrer/in', 'e', 'Bösebub@bvg.de', '098f6bcd4621d373cade4e832627b4f6'),
(63414, 'Lissi', 'Frechdachs', 'BO-FB/I10', 381, 'Omnibusfahrer/in', 'e', 'Frechdachs@bvg.de', '098f6bcd4621d373cade4e832627b4f6'),
(63528, 'James Tiberius', 'Kirk', 'BO-FB/I10', 381, 'Omnibusfahrer/in', 'e', 'Kirk@bvg.de', '098f6bcd4621d373cade4e832627b4f6');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Busdaten`
--
ALTER TABLE `Busdaten`
  ADD PRIMARY KEY (`BusNr`),
  ADD KEY `Pruefer_ind` (`Pruefer`);

--
-- Indizes für die Tabelle `Personaldaten`
--
ALTER TABLE `Personaldaten`
  ADD PRIMARY KEY (`PersonalNr`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `Busdaten`
--
ALTER TABLE `Busdaten`
  ADD CONSTRAINT `busdaten_ibfk_1` FOREIGN KEY (`Pruefer`) REFERENCES `personaldaten` (`PersonalNr`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
