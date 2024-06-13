-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Št 13.Jún 2024, 12:06
-- Verzia serveru: 10.4.32-MariaDB
-- Verzia PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `klopcekova`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `t_kategorie`
--

CREATE TABLE `t_kategorie` (
  `id` int(100) NOT NULL,
  `nazov` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Sťahujem dáta pre tabuľku `t_kategorie`
--

INSERT INTO `t_kategorie` (`id`, `nazov`) VALUES
(1, 'Foundation'),
(2, 'Lipstick'),
(3, 'Eyeshadow'),
(4, 'Concealer'),
(5, 'Powder'),
(6, 'Bronzer');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `t_produkty`
--

CREATE TABLE `t_produkty` (
  `ID` int(100) NOT NULL,
  `nazov` varchar(255) DEFAULT NULL,
  `znacka` varchar(255) DEFAULT NULL,
  `popis` text DEFAULT NULL,
  `cena` double(10,2) DEFAULT NULL,
  `mnozstvo` int(100) DEFAULT NULL,
  `kategorie` char(100) DEFAULT NULL,
  `obrazok` varchar(255) DEFAULT NULL,
  `kategoria_id` int(100) DEFAULT NULL,
  `t_kategorie` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Sťahujem dáta pre tabuľku `t_produkty`
--

INSERT INTO `t_produkty` (`ID`, `nazov`, `znacka`, `popis`, `cena`, `mnozstvo`, `kategorie`, `obrazok`, `kategoria_id`, `t_kategorie`) VALUES
(1, 'True Match Foundation', 'L\'Oréal', 'Tekutý make-up, ktorý sa prispôsobí tónu a textúre pleti.', 12.99, 50, 'Foundation', 'https://licilasicdn.s3.amazonaws.com/public/product_images/43686/main/original.jpg', 1, NULL),
(2, 'SuperStay Matte Ink Liquid Lipstick', 'Maybelline', 'Dlhodržiaci tekutý rúž s matným efektom.', 9.99, 100, 'Lipstick', 'https://www.drmax.sk/_i/-378907456.webp?m2=%2Fmedia%2Fcatalog%2Fproduct%2F1%2F0%2F10cadabcd4d56_3600531411114.jpg&fit=contain&w=350&h=350&format=webp', 2, NULL),
(3, 'Ultimate Shadow Palette', 'NYX', 'Paleta očných tieňov s 16 odtieňmi.', 17.99, 30, 'Eyeshadow', 'https://licilasicdn.s3.amazonaws.com/public/product_images/45171/main/original.jpg', 3, NULL),
(4, 'Pro Longwear Concealer', 'MAC', 'Krycí korektor s dlhotrvajúcim efektom.', 22.00, 45, 'Concealer', 'https://img.vivantiscdn.net/photos/k/_orig/DK/mac-kremovy-korektor-studio-finish-spf-35-concealer-7-g_1467118020200727125445.png', 4, NULL),
(5, 'ColorStay Pressed Powder', 'Revlon', 'Zmatňujúci púder s dlhodobým efektom.', 11.99, 75, 'Powder', 'https://www.fann.sk/sub/fann.sk/shop/product/revlon-colorstay-pressed-powder-puder-8.4-g-880-translucent-25163.jpg', 5, NULL),
(6, 'Pro Filt\'r Soft Matte Longwear Foundation', 'Fenty Beauty', 'Matný make-up s dlhotrvajúcim efektom.', 34.00, 20, 'Foundation', 'https://m.media-amazon.com/images/I/61UXdJw4kDL.jpg', 1, NULL),
(7, 'Naked Heat Eyeshadow Palette', 'Urban Decay', 'Paleta očných tieňov v teplých tónoch.', 49.00, 15, 'Eyeshadow', 'https://img.vivantiscdn.net/photos/k/_orig/UD/urban-decay-paletka-ocnich-stinu-naked-heat-eyeshadow-palette-15-6-g_14565865074957.jpg', 3, NULL),
(8, 'Even Better Makeup SPF 15', 'Clinique', 'Make-up, ktorý zjednocuje tón pleti a chráni pred slnkom.', 27.00, 40, 'Foundation', 'https://media.douglas.sk/media/image/63/e0/fe/447764_1280x1280.jpg', 1, NULL),
(9, 'Hoola Matte Bronzer', 'Benefit', 'Matný bronzer pre prirodzené opálenie.', 30.00, 50, 'Bronzer', 'https://img.vivantiscdn.net/photos/k/_orig/BN/benefit-bronzujici-pudr-hoola-mini-matte-bronzer-8-g_14901358100512.jpg', 6, NULL),
(10, 'Radiant Creamy Concealer', 'NARS', 'Krémový korektor s vysokou krycou schopnosťou.', 30.00, 25, 'Concealer', 'https://www.znackovevyrobky.sk/fotky4196/fotos/_vyr_1323341DCGphy11L.jpg', 4, NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `t_user`
--

CREATE TABLE `t_user` (
  `ID` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Sťahujem dáta pre tabuľku `t_user`
--

INSERT INTO `t_user` (`ID`, `username`, `password`, `email`) VALUES
(1, 'Jozko', 'Mrkvicka', 'jozko.mrkvicka@gmail.com'),
(2, 'Anicka', '$2y$10$LHbEZs2nr1soIBpzBNF43O8xATD9jRco6GBSS7mrlcpGkb1rqBpea', 'anicka.novakova@gmail.com'),
(3, 'Timea', '$2y$10$QdlLfeBn2Ivs0iYNjpfjSu/zaXMYyYvP0KeSo3eMDNzCUn7Yv9y1m', 'timea.klopcekova@gmail.com'),
(4, 'duckus', '$2y$10$Fhp..SJo4uQ7pnrx0PZLYOhzMNycvWzqmd9b7k8u0iV.31Uepz1q2', 'evastc5@gmail.com');

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `t_kategorie`
--
ALTER TABLE `t_kategorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `t_produkty`
--
ALTER TABLE `t_produkty`
  ADD PRIMARY KEY (`ID`);

--
-- Indexy pre tabuľku `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `t_kategorie`
--
ALTER TABLE `t_kategorie`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pre tabuľku `t_produkty`
--
ALTER TABLE `t_produkty`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pre tabuľku `t_user`
--
ALTER TABLE `t_user`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
