-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Gru 2022, 08:29
-- Wersja serwera: 10.4.19-MariaDB
-- Wersja PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `igor`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `indeksowa`
--

CREATE TABLE `indeksowa` (
  `id` int(11) NOT NULL,
  `pole` text DEFAULT NULL,
  `ile` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `indeksowa`
--

INSERT INTO `indeksowa` (`id`, `pole`, `ile`) VALUES
(1, 'A', 10),
(2, 'B', 13),
(3, 'C', 18),
(4, 'D', 65),
(5, 'E', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lowisko`
--

CREATE TABLE `lowisko` (
  `id` int(11) NOT NULL,
  `Ryby_id` int(11) DEFAULT NULL,
  `akwen` text DEFAULT NULL,
  `wojewodztwo` text DEFAULT NULL,
  `rodzaj` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `lowisko`
--

INSERT INTO `lowisko` (`id`, `Ryby_id`, `akwen`, `wojewodztwo`, `rodzaj`) VALUES
(7, 2, 'Zalew milicki', 'Malopolskie', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `okres_ochronny`
--

CREATE TABLE `okres_ochronny` (
  `id` int(11) NOT NULL,
  `Ryby_id` int(11) DEFAULT NULL,
  `od_miesiaca` int(11) DEFAULT NULL,
  `do_miesiaca` int(11) DEFAULT NULL,
  `wymiar_ochronny` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ryby`
--

CREATE TABLE `ryby` (
  `id` int(11) NOT NULL,
  `nazwa` text DEFAULT NULL,
  `wystepowanie` text DEFAULT NULL,
  `styl_zycia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochod`
--

CREATE TABLE `samochod` (
  `id_samochodu` int(11) NOT NULL,
  `marka` text DEFAULT NULL,
  `model` text DEFAULT NULL,
  `typ_silnika` text DEFAULT NULL,
  `rocznik` int(11) DEFAULT NULL,
  `kolor` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `unikalna`
--

CREATE TABLE `unikalna` (
  `id` int(11) NOT NULL,
  `pole1` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownik`
--

CREATE TABLE `uzytkownik` (
  `id_uzytkownik` int(11) NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `email` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `uzytkownik`
--

INSERT INTO `uzytkownik` (`id_uzytkownik`, `imie`, `nazwisko`, `telefon`, `email`) VALUES
(5, 'Anna', 'Gurbala', '898747147', 'nowaAnna@gmail.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wendkarz`
--

CREATE TABLE `wendkarz` (
  `id` int(11) NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `punkty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wendkarz`
--

INSERT INTO `wendkarz` (`id`, `imie`, `nazwisko`, `punkty`) VALUES
(0, NULL, NULL, 1),
(1, 'Bolek', 'Kowalski', 10),
(2, 'Ola', 'Owśińska', 5),
(3, 'Marek', 'Łopata', 5),
(4, 'Ania', 'Mucha', 16),
(5, 'Michał', 'Musiał', 3),
(6, 'Maciej', 'Grymbała', 19),
(7, 'Lolek', 'Dombrowski', 19);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `indeksowa`
--
ALTER TABLE `indeksowa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ile` (`ile`);

--
-- Indeksy dla tabeli `lowisko`
--
ALTER TABLE `lowisko`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `okres_ochronny`
--
ALTER TABLE `okres_ochronny`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ryby`
--
ALTER TABLE `ryby`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `samochod`
--
ALTER TABLE `samochod`
  ADD PRIMARY KEY (`id_samochodu`);

--
-- Indeksy dla tabeli `unikalna`
--
ALTER TABLE `unikalna`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pole` (`pole1`);

--
-- Indeksy dla tabeli `uzytkownik`
--
ALTER TABLE `uzytkownik`
  ADD PRIMARY KEY (`id_uzytkownik`);

--
-- Indeksy dla tabeli `wendkarz`
--
ALTER TABLE `wendkarz`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
