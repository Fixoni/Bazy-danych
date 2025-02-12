-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2023 at 07:07 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotele hotele`
--

CREATE TABLE `hotele_hotele` (
  `id_hotel` int(11) NOT NULL,
  `nazwa` varchar(30) NOT NULL,
  `id_kraj` int(11) NOT NULL,
  `id_miasto` int(11) NOT NULL,
  `adres` varchar(50) NOT NULL,
  `gwiazdki` int(11) NOT NULL,
  `telefon` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `www` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hotele klienci`
--

CREATE TABLE `hotele_klienci` (
  `id_klient` int(11) NOT NULL,
  `imie` varchar(20) NOT NULL,
  `nazwisko` varchar(40) NOT NULL,
  `id_kraju` int(11) NOT NULL,
  `id_miasto` int(11) NOT NULL,
  `adres` varchar(50) NOT NULL,
  `licznik` int(11) NOT NULL,
  `nr_dokumentacji` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hotele kraje`
--

CREATE TABLE `hotele_kraje` (
  `id_kraju` int(11) NOT NULL,
  `nazwa_kraju` varchar(50) NOT NULL,
  `kod_kraju` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hotele miasta`
--

CREATE TABLE `hotele_miasta` (
  `id_miasto` int(11) NOT NULL,
  `nazwa_miasta` varchar(50) NOT NULL,
  `kod_miasta` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hotele pokoje`
--

CREATE TABLE `hotele_pokoje` (
  `id_pokoju` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `nr_pokoju` int(11) NOT NULL,
  `pietro` int(11) NOT NULL,
  `ludzie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hotele rezerwacje`
--

CREATE TABLE `hotele_rezerwacje` (
  `id_rezerwacji` int(11) NOT NULL,
  `id_klient` int(11) NOT NULL,
  `data_start_rezerwacji` date NOT NULL,
  `data_koniec_rezerwacji` date NOT NULL,
  `id_pokoju` int(11) NOT NULL,
  `id_parking` int(11) NOT NULL,
  `zrealizowane` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotele hotele`
--
ALTER TABLE `hotele_hotele`
  ADD PRIMARY KEY (`id_hotel`);

--
-- Indexes for table `hotele klienci`
--
ALTER TABLE `hotele_klienci`
  ADD PRIMARY KEY (`id_klient`);

--
-- Indexes for table `hotele kraje`
--
ALTER TABLE `hotele_kraje`
  ADD PRIMARY KEY (`id_kraju`);

--
-- Indexes for table `hotele pokoje`
--
ALTER TABLE `hotele_pokoje`
  ADD PRIMARY KEY (`id_pokoju`);

--
-- Indexes for table `hotele rezerwacje`
--
ALTER TABLE `hotele_rezerwacje`
  ADD PRIMARY KEY (`id_rezerwacji`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotele hotele`
--
ALTER TABLE `hotele_hotele`
  MODIFY `id_hotel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotele klienci`
--
ALTER TABLE `hotele_klienci`
  MODIFY `id_klient` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotele kraje`
--
ALTER TABLE `hotele_kraje`
  MODIFY `id_kraju` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotele pokoje`
--
ALTER TABLE `hotele_pokoje`
  MODIFY `id_pokoju` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotele rezerwacje`
--
ALTER TABLE `hotele_rezerwacje`
  MODIFY `id_rezerwacji` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
