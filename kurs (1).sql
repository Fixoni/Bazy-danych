-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 18 Sty 2023, 12:36
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `kurs`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `etaty`
--

CREATE TABLE `etaty` (
  `NAZWA` varchar(10) NOT NULL,
  `PLACA_MIN` decimal(6,2) DEFAULT NULL,
  `PLACA_MAX` decimal(6,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `etaty`
--

INSERT INTO `etaty` (`NAZWA`, `PLACA_MIN`, `PLACA_MAX`) VALUES
('PROFESOR', '800.00', '1500.00'),
('ADIUNKT', '510.00', '750.00'),
('ASYSTENT', '300.00', '500.00'),
('STAZYSTA', '150.00', '250.00'),
('SEKRETARKA', '270.00', '450.00'),
('DYREKTOR', '1280.00', '2100.00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kody`
--

CREATE TABLE `kody` (
  `k_id` int(11) DEFAULT NULL,
  `nazwa` text COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kurs_dwa_prim`
--

CREATE TABLE `kurs_dwa_prim` (
  `id` int(11) DEFAULT NULL,
  `nazwa` varchar(20) COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kurs_jeden`
--

CREATE TABLE `kurs_jeden` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(20) COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `obsluga`
--

CREATE TABLE `obsluga` (
  `id_obsl` int(11) NOT NULL,
  `nazwisko` varchar(50) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `imie` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osoby`
--

CREATE TABLE `osoby` (
  `id` int(11) NOT NULL,
  `nawzisko` text COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `miasto` text COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `osoby`
--

INSERT INTO `osoby` (`id`, `nawzisko`, `miasto`) VALUES
(1, 'Nowak', 'Warszawa'),
(2, 'Kowalski', 'Poznań'),
(3, '333333', '66564'),
(4, '44-444', '3');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `ID_PRAC` int(11) NOT NULL,
  `NAZWISKO` varchar(15) DEFAULT NULL,
  `ETAT` varchar(10) DEFAULT NULL,
  `ID_SZEFA` int(11) DEFAULT NULL,
  `ZATRUDNIONY` date DEFAULT NULL,
  `PLACA_POD` decimal(6,2) DEFAULT NULL,
  `PLACA_DOD` decimal(6,2) DEFAULT NULL,
  `ID_ZESP` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`ID_PRAC`, `NAZWISKO`, `ETAT`, `ID_SZEFA`, `ZATRUDNIONY`, `PLACA_POD`, `PLACA_DOD`, `ID_ZESP`) VALUES
(100, 'KOWALSKI', 'DYREKTOR', NULL, '2010-10-05', '1760.00', '420.50', 10),
(110, 'JURASIK', 'PROFESOR', 100, '2003-10-22', '1380.00', '210.00', 40),
(120, 'SLOWIK', 'PROFESOR', 100, '1995-10-24', '1100.00', '0.00', 30),
(130, 'ZIOMEK', 'PROFESOR', 100, '1995-05-22', '990.00', NULL, 20),
(140, 'SMOLAREK', 'PROFESOR', 130, '1996-02-26', '860.00', '105.00', 20),
(150, 'WOJCIECHOWSKI', 'ADIUNKT', 130, '2010-03-21', '675.50', NULL, 20),
(160, 'MAREK', 'ADIUNKT', 130, '1991-12-25', '620.00', NULL, 20),
(170, 'lekki', 'ASYSTENT', 130, '1985-01-14', '469.70', '80.50', 20),
(190, 'SAPEK', 'ASYSTENT', 140, '2008-10-04', '401.00', NULL, 20),
(180, 'KOMORNIK', 'SEKRETARKA', 100, '2003-03-03', '440.20', NULL, 10),
(200, 'KACZKA', 'STAZYSTA', 140, '1994-03-24', '238.00', NULL, 30),
(210, 'CZARNY', 'STAZYSTA', 130, '1995-04-25', '280.00', '170.60', 30),
(220, 'ZIELONY', 'ASYSTENT', 110, '2009-01-31', '510.00', NULL, 20),
(230, 'JUPITER', 'ASYSTENT', 120, '2003-08-23', '510.00', '90.00', 30);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zespoly`
--

CREATE TABLE `zespoly` (
  `ID_ZESP` int(11) NOT NULL,
  `NAZWA` varchar(20) DEFAULT NULL,
  `ADRES` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `zespoly`
--

INSERT INTO `zespoly` (`ID_ZESP`, `NAZWA`, `ADRES`) VALUES
(10, 'ADMINISTRACJA', 'KRZYWA 4A'),
(20, 'SYSTEMY ROZPROSZONE', 'KRZYWA 4A'),
(30, 'SYSTEMY EKSPERCKIE', 'PODGÓRNA 141'),
(40, 'ALGORYTMY', 'POLSKA 11'),
(50, 'BADANIA OPERACYJNE', 'SZWEDZKA 23');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `etaty`
--
ALTER TABLE `etaty`
  ADD PRIMARY KEY (`NAZWA`);

--
-- Indeksy dla tabeli `kody`
--
ALTER TABLE `kody`
  ADD KEY `dowiazanie` (`id`);

--
-- Indeksy dla tabeli `kurs_jeden`
--
ALTER TABLE `kurs_jeden`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `obsluga`
--
ALTER TABLE `obsluga`
  ADD PRIMARY KEY (`id_obsl`);

--
-- Indeksy dla tabeli `osoby`
--
ALTER TABLE `osoby`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`ID_PRAC`);

--
-- Indeksy dla tabeli `zespoly`
--
ALTER TABLE `zespoly`
  ADD PRIMARY KEY (`ID_ZESP`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `kurs_jeden`
--
ALTER TABLE `kurs_jeden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `kody`
--
ALTER TABLE `kody`
  ADD CONSTRAINT `dowiazanie` FOREIGN KEY (`id`) REFERENCES `osoby` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
