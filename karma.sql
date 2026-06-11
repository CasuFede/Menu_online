-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Giu 11, 2026 alle 14:17
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karma`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `piatti`
--

CREATE TABLE `piatti` (
  `id` int(11) NOT NULL,
  `prezzo` varchar(100) NOT NULL,
  `disponibile` tinyint(1) DEFAULT 1,
  `categoria` varchar(50) DEFAULT NULL,
  `immagine` varchar(255) DEFAULT NULL,
  `nome_it` varchar(255) NOT NULL,
  `nome_en` varchar(255) DEFAULT NULL,
  `descrizione_it` text DEFAULT NULL,
  `descrizione_en` text DEFAULT NULL,
  `allergeni_it` varchar(255) NOT NULL,
  `allergeni_en` varchar(255) DEFAULT NULL,
  `data_creazione` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `piatti`
--

INSERT INTO `piatti` (`id`, `prezzo`, `disponibile`, `categoria`, `immagine`, `nome_it`, `nome_en`, `descrizione_it`, `descrizione_en`, `allergeni_it`, `allergeni_en`, `data_creazione`) VALUES
(3, 'AL PZ/7', 1, 'Crudities/Ostriche', '1760190717_default.jpg', 'Ostrica Gillardeau', 'Gillardeau Oyster', '', '0', '', NULL, '2025-10-11 13:51:57'),
(4, 'AL PZ/5', 1, 'Crudities/Ostriche', '1760190983_default.jpg', 'Ostrica Fins de CLaire', 'Fins de Claire Oyster', '', '0', '', NULL, '2025-10-11 13:56:23'),
(5, '6', 1, 'Crudities/Ostriche', '1760191046_default.jpg', 'Gambero Rosso', 'Red Prawn', '', '0', '', NULL, '2025-10-11 13:56:55'),
(6, '5', 1, 'Crudities/Ostriche', '1760191037_default.jpg', 'Scampo Porcupine', 'Porcupine Langoustine', '', '0', '', NULL, '2025-10-11 13:57:17'),
(7, '12', 1, 'Crudities/Ostriche', '1760191074_default.jpg', 'Tartar Tonno', 'Tuna Tartare', '', '0', '', NULL, '2025-10-11 13:57:54'),
(8, '17', 1, 'Crudities/Ostriche', '1760191106_default.jpg', 'Insalata di mare crudo', 'Raw Seafood Salad', '', '0', '', NULL, '2025-10-11 13:58:26'),
(9, '12', 1, 'Antipasti', '1760191149_default.jpg', 'Soute di cozze', 'Souté di cozze', 'pomodoro, aglio, prezzemolo, peperoncino, vino bianco', 'Sautéed Mussels with tomato, garlic, parsley, chili pepper and white wine', '', NULL, '2025-10-11 13:59:09'),
(10, '15', 1, 'Antipasti', '1760191181_default.jpg', 'Guazzetto di pesce', 'Fish Stew', 'in base al pescato', 'depending on the daily catch', '', NULL, '2025-10-11 13:59:41'),
(11, '14', 1, 'Antipasti', '1760191201_default.jpg', 'Polpo e patate', 'Octopus and Potato Salad', '', '0', '', NULL, '2025-10-11 14:00:01'),
(12, '12', 1, 'Antipasti', '1760191232_default.jpg', 'Acciughe marinate accompagnate con bruschetta, burratina e miele', 'Marinated Anchovies served with Bruschetta, Burrata Cheese and Honey', '', '0', '', NULL, '2025-10-11 14:00:32'),
(13, '18', 1, 'Primi', '1760191274_default.jpg', 'Spaghetto, aglio, olio, e peperoncino con tartare di gambero rosso', 'Spaghetti with Garlic, Olive Oil, Chili and Red Prawn Tartare', '', '0', '', NULL, '2025-10-11 14:01:14'),
(14, '15', 1, 'Primi', '1760191302_default.jpg', 'Spaghetto alle vongole', 'Spaghetti with Clams', '', '0', '', NULL, '2025-10-11 14:01:42'),
(15, '15', 1, 'Primi', '1760191341_default.jpg', 'Lasagne Karma', 'Karma Lasagna', 'lasagne di mare con pescato del giorno', 'baked pasta with fish of the day', '', NULL, '2025-10-11 14:02:21'),
(17, '22', 1, 'Secondi', '1760192192_default.jpg', 'Polpo cotto a bassa temperatura con purea di patate e maionese al polpo', 'Slow-cooked Octopus with Mashed Potatoes and Octopus Mayonnaise', '', '', '', NULL, '2025-10-11 14:16:32'),
(18, '18', 1, 'Secondi', '1760192221_default.jpg', 'Filetto di pescato alla Ligure', 'Catch of the Day Fillet – Ligurian Style', '', '', '', NULL, '2025-10-11 14:17:01'),
(19, '15', 1, 'Secondi', '1760192249_default.jpg', 'Fritto misto Karma', 'Karma Mixed Fried Seafood', '', '', '', NULL, '2025-10-11 14:17:29'),
(20, '18', 1, 'Secondi', '1760192294_default.jpg', 'Tagliata di tonno con pomodorini, cipolla di Tropea e misticanza', 'Seared Tuna with Cherry Tomatoes, Tropea Onion and Mixed Greens', '', '', '', NULL, '2025-10-11 14:18:14'),
(21, '5', 1, 'Contorni', '1760192326_default.jpg', 'Patate al forno/fritte', 'Oven-baked or Fried Potatoes', '', '', '', NULL, '2025-10-11 14:18:46'),
(22, '5', 1, 'Contorni', '1760192355_default.jpg', 'Verdure di stagione al forno/griglia/vapore', 'Seasonal Vegetables (baked / grilled / steamed)', '', '', '', NULL, '2025-10-11 14:19:15'),
(23, '5', 1, 'Contorni', '1760192375_default.jpg', 'Insalata mista', 'Mixed Salad', '', '', '', NULL, '2025-10-11 14:19:35'),
(24, '40', 1, 'Crudities/Ostriche', '1760192687_default.jpg', 'Crudities del Karma', 'Karma Seafood Platter', '', '', '', NULL, '2025-10-11 14:24:47'),
(25, '20', 1, 'Primi', '1760192905_default.jpg', 'Spaghetti al riccio', 'Spaghetti with Sea Urchin', '', '', '', NULL, '2025-10-11 14:28:25');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'Admin', '$2y$10$sHu36cgx31nsOdQxapalzOmc5SKfgW2KDUtAisEqmMSivwbJp2KIu', '2025-10-11 09:44:17');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `piatti`
--
ALTER TABLE `piatti`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `piatti`
--
ALTER TABLE `piatti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
