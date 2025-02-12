-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 29 Wrz 2023, 13:10
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `danefirmy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `IDKlienta` int(11) DEFAULT NULL,
  `ImieKlienta` text DEFAULT NULL,
  `NazwiskoKlienta` text DEFAULT NULL,
  `OsobaKontaktowa` text DEFAULT NULL,
  `Adres` varchar(30) DEFAULT NULL,
  `Miasto` text DEFAULT NULL,
  `KodPocztowy` varchar(20) DEFAULT NULL,
  `Kraj` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`IDKlienta`, `ImieKlienta`, `NazwiskoKlienta`, `OsobaKontaktowa`, `Adres`, `Miasto`, `KodPocztowy`, `Kraj`) VALUES
(1, 'Paweł', 'Nowak', 'Iwo Łyk iwo@wp.pl_600456123', 'ul. Fiołkowa', 'Warszawa', '00-795', 'Polska'),
(2, 'Igor', 'Wojcik', 'igor Mik ig@wp.pl 623456123', 'Wincentego Kadłubka 28', 'Szczecin', '70-456', 'Polska'),
(3, 'Dominik', 'Sliwa', 'Marta Sliwa martasliw@gmail.com 123421456', 'ul.Bitwy pod Plowcami', 'Sopot', '81-730', 'Polska'),
(4, 'Adolf', 'Hitlrich', 'Ewa Brm ewabr@gmail.com 142342789', '85 Landsberger Allee', 'Berlin', '10369', 'Niemcy'),
(5, 'Thomas', 'Krankstisch', 'David Hortez davhort@gmail.com 564723211', '30 Kattensteert', 'Hamburg', '22525', 'Niemcy'),
(6, 'Hannah', 'Linkst', 'Joshua Kimmerz kimmerzjosh@gmail.com 454547332', '86 Georgenstraße', 'monachium', '80331', 'Niemcy'),
(7, 'Kylian', 'Nkunku', 'Paul Pogba paul@gmail.com 363636666', '22 Av. du Corail', 'Marsylia', '13000', 'Francja'),
(8, 'Jon', 'LaParticle', 'Louis Verde louisver@gmail.com 554545536', '5 Av. Henri Barbusse', 'Tuluza', '31000', 'Francja'),
(9, 'Emporio', 'Armani', 'Donatela Versace donavrs@gmail.com 545463722', 'Rue Honoré Sauvan', 'Nicea', '06000', 'Francja'),
(10, 'John', 'Cena', 'George Wshington georgy@gmail.com 210037420', '1600 H St NW', 'Washington', '20 500', 'USA'),
(11, 'Kanye', 'West', 'Travis Scott travis@gmail.com 234435266', '193 W Adams St', 'Phoenix', '85 001', 'USA'),
(12, 'Playboi', 'Carti', 'Yeat yeat@gmail.com777777777', '1246 W Catalpa Ave', 'Chicago', '60007', 'USA');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
