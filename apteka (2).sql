-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Lis 2022, 12:34
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
-- Baza danych: `apteka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `leki`
--

CREATE TABLE `leki` (
  `id_leki` int(11) NOT NULL,
  `nazwa` varchar(50) NOT NULL,
  `rodzaj` text NOT NULL,
  `ilosc` int(11) NOT NULL,
  `firma` int(11) DEFAULT NULL,
  `data_waznosci` date DEFAULT NULL,
  `na_recepte` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `leki`
--

INSERT INTO `leki` (`id_leki`, `nazwa`, `rodzaj`, `ilosc`, `firma`, `data_waznosci`, `na_recepte`) VALUES
(1, 'polopiryna', 'ból głowy', 22, NULL, '0000-00-00', 1),
(2, 'apap', 'na wszystko', 200, NULL, NULL, NULL),
(3, 'isla', 'gardło', 500, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pacjenci`
--

CREATE TABLE `pacjenci` (
  `id_pacjenta` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `pesel` varchar(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `id_recepty` int(11) DEFAULT NULL,
  `nrtelefonu` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pacjenci`
--

INSERT INTO `pacjenci` (`id_pacjenta`, `imie`, `nazwisko`, `pesel`, `email`, `id_recepty`, `nrtelefonu`) VALUES
(1, 'Tomek', 'Dubiel', '12345678910', 'temp@temp.com', 1, '784656012'),
(2, 'Bogma', 'Kowal', '01987654321', 'bpanuc@interia.pl', 2, NULL),
(3, 'Maciej', 'Kowalczyk', '12345678911', 'mkowalczyk@gmail.com', 3, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `recepta`
--

CREATE TABLE `recepta` (
  `id_recepty` int(11) NOT NULL,
  `id_leki` int(11) NOT NULL,
  `zrealizowane` tinyint(1) NOT NULL,
  `nazwisko_lekarza` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `recepta`
--

INSERT INTO `recepta` (`id_recepty`, `id_leki`, `zrealizowane`, `nazwisko_lekarza`) VALUES
(1, 1, 0, 'Trupek'),
(2, 2, 1, 'Rosiek'),
(3, 3, 1, 'Łopata');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `leki`
--
ALTER TABLE `leki`
  ADD PRIMARY KEY (`id_leki`),
  ADD UNIQUE KEY `firma` (`firma`);

--
-- Indeksy dla tabeli `pacjenci`
--
ALTER TABLE `pacjenci`
  ADD PRIMARY KEY (`id_pacjenta`),
  ADD UNIQUE KEY `nrtelefonu` (`nrtelefonu`);

--
-- Indeksy dla tabeli `recepta`
--
ALTER TABLE `recepta`
  ADD PRIMARY KEY (`id_recepty`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `leki`
--
ALTER TABLE `leki`
  MODIFY `id_leki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `pacjenci`
--
ALTER TABLE `pacjenci`
  MODIFY `id_pacjenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `recepta`
--
ALTER TABLE `recepta`
  MODIFY `id_recepty` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
