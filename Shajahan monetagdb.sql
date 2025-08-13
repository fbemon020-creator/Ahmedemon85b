-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 22, 2024 at 03:07 AM
-- Server version: 8.0.40-cll-lve
-- PHP Version: 8.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wealthso_x1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `ahmed_emon009`, `password`, `Fy125800`) VALUES
(1, 'admin', '$2a$12$0k31VfUh7.jXKdDJg/TPqu7QyUQhoZM67voZHt5tMKqK9eW4KJ1jy', '2024-11-19 17:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` bigint NOT NULL,
  `referrer_id` bigint NOT NULL,
  `referee_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`id`, `referrer_id`, `referee_id`, `created_at`) VALUES
(8, 6551849729, 5888961335, '2024-10-29 15:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int NOT NULL,
  `description` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `channel_username` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `description`, `channel_username`) VALUES
(1, 'Join AIEPARTY', '@AIEPARTY'),
(2, 'Join CyberCrate', '@CyberCrate');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `is_premium` tinyint(1) DEFAULT '0',
  `wallet_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `balance` decimal(18,0) NOT NULL DEFAULT '0',
  `referral_count` int DEFAULT '0',
  `ads_watched` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `referrer_id` bigint DEFAULT NULL,
  `level` int DEFAULT '1',
  `channels_joined` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `is_premium`, `wallet_address`, `balance`, `referral_count`, `ads_watched`, `referrer_id`, `level`, `channels_joined`) VALUES
(1948140125, 'abdullahaljihad', '2413830 Md Abdullah Al Jihad', 'Farmgate', NULL, NULL, 20, 0, '2', NULL, 1, NULL),
(5583248065, 'aforanamul', 'A For', 'Anamul', 1, NULL, 0, 0, '', NULL, 1, NULL),
(5441228790, 'agent_of_cedisworkers', 'LAWRENCE', '', NULL, NULL, 50, 0, '3', NULL, 1, NULL),
(1962241133, 'ahadujjamanopurbo', 'Ahadujjaman', '︵爱࿐', 1, NULL, 0, 0, '', NULL, 1, NULL),
(5616531186, 'ashrafapp', '', '', NULL, NULL, 0, 0, '', NULL, 1, NULL),
(5872407989, 'BaratoyBueno', 'Byb', 'G', NULL, NULL, 0, 0, '', NULL, 1, NULL),
(6433139046, 'Bolu238', 'osiberu', 'Kayode', NULL, NULL, 0, 0, '', NULL, 1, NULL),
(5702521445, 'crazydeveloperbd', 'Crazy', 'Developer BD', NULL, NULL, 0, 0, '', NULL, 1, NULL),
(5797585545, 'CRD100', 'Homo', 'Sapiens', NULL, NULL, 0, 0, '', NULL, 1, NULL),
(6803485892, 'Dev_Roki', 'ᴅᴇᴠ ʀ ᴏ ᴋ ɪ', '', NULL, NULL, 0, 0, '', NULL, 1, NULL),
(7257071606, 'flauton14', '', '', NULL, NULL, 0, 0, '', NULL, 1, NULL),
(5960085256, 'IncomeTeamAdmin', '', '', NULL, NULL, 0, 0, '', NULL, 1, NULL),
(7001126563, 'InstantWares', 'INSTANTWARE', '', NULL, NULL, 70, 0, '5', NULL, 1, NULL),
(1388631501, 'kayes011', 'Kayes', 'khan ', NULL, NULL, 30, 0, '3', NULL, 1, NULL),
(7391112615, 'lxt2k3', 'Xuân Tú', 'Lữ', NULL, NULL, 0, 0, '', NULL, 1, NULL),
(7279358320, 'misanpedia', 'Misanpedia', '', NULL, NULL, 20, 0, '2', NULL, 1, NULL),
(1373790445, 'Najmul88', 'Najmul', 'Islam ', NULL, NULL, 20, 0, '2', NULL, 1, NULL),
(6523016526, 'nayeem_lab_owner', 'ᅠᅠ', '', NULL, NULL, 20, 0, '', NULL, 1, NULL),
(6673000888, 'neodont', 'Noir ', '', NULL, NULL, 20, 0, '2', NULL, 1, NULL),
(2053954199, 'NS_Developer', '⸙ꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋꠋ', 'MR NS Developer', NULL, NULL, 10, 0, '1', NULL, 1, NULL),
(6713376468, 'ReliableRep', 'Steve', '', 1, NULL, 20, 0, '2', NULL, 1, NULL),
(6551849729, 'Sayeed012', 'Sayeed ', '', 1, NULL, 160, 1, '25', NULL, 1, '1'),
(5888961335, 'Sayeedmahmudreza', 'FHQ ', '', NULL, NULL, 50, 0, '3', NULL, 1, NULL),
(6625938286, 'Shiiboii', 'Shii', 'Boi', NULL, NULL, 0, 0, '', NULL, 1, NULL),
(1632372935, 'shishustg', 'SHISHIR | Rekt', '', 1, NULL, 20, 0, '1', NULL, 1, NULL),
(7105416165, 'Skyspaceq', 'Y', '', NULL, NULL, 0, 0, '', NULL, 1, NULL),
(1231933846, 'sonictar', '⏤͟͟͞͞ ', '', 1, NULL, 10, 0, '1', NULL, 1, NULL),
(6494931304, 'ssaavaskar', 'SHARODSHAHI AL-AMIN', '', NULL, NULL, 0, 0, '', NULL, 1, NULL),
(6305885536, 'Tapswap6969', 'Snd16', '', NULL, NULL, 0, 0, '', NULL, 1, NULL),
(7390735189, 'TG_ACC_SELL_SUPPORT', 'TG ACC SELL SUPPORT', '', NULL, NULL, 0, 0, '', NULL, 1, NULL),
(5014194890, 'thenauseated', 'Samuel Andrei ', '', NULL, NULL, 10, 0, '1', NULL, 1, NULL),
(6151035111, 'Tweezer_Admin', '', '', NULL, NULL, 0, 0, '', NULL, 1, NULL),
(5237871348, 'YourWeirdCreator', 'Your Weird', 'Creator', NULL, NULL, 0, 0, '', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_tasks`
--

CREATE TABLE `user_tasks` (
  `id` int NOT NULL,
  `user_id` bigint NOT NULL,
  `task_id` int NOT NULL,
  `completed_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `user_tasks`
--

INSERT INTO `user_tasks` (`id`, `user_id`, `task_id`, `completed_at`) VALUES
(0, 6551849729, 2, '2024-11-20 09:31:48'),
(0, 6551849729, 1, '2024-11-20 09:32:54'),
(0, 5888961335, 2, '2024-11-20 09:36:45'),
(0, 5888961335, 1, '2024-11-20 09:42:54'),
(0, 5441228790, 1, '2024-11-20 10:49:05'),
(0, 5441228790, 2, '2024-11-20 10:49:12'),
(0, 1632372935, 1, '2024-11-20 11:01:55'),
(0, 7001126563, 1, '2024-11-20 11:13:17'),
(0, 7001126563, 2, '2024-11-20 11:13:29'),
(0, 6523016526, 2, '2024-11-20 11:31:58'),
(0, 6523016526, 1, '2024-11-20 11:32:15');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint NOT NULL,
  `username` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `address` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `username`, `method`, `amount`, `address`, `created_at`) VALUES
(1, 'Sayeed012', 'nagad', 5850.00, '1234567890', '2024-11-18 12:27:23'),
(2, 'Sayeed012', 'bkash', 300.00, '1234567890', '2024-11-18 12:31:58'),
(3, 'Sayeed012', 'binance', 100.00, '11111111', '2024-11-18 12:36:14'),
(4, 'Sayeed012', 'nagad', 100.00, '0000', '2024-11-18 12:37:05'),
(5, 'Sayeed012', 'bkash', 5850.00, '1234567890', '2024-11-18 12:40:46'),
(6, 'Sayeed012', 'binance', 5850.00, '1234567890', '2024-11-18 12:42:16'),
(7, 'Sayeed012', 'nagad', 800.00, '11111111', '2024-11-19 10:26:52'),
(8, 'Sayeed012', 'binance', 1000.00, '6775676756', '2024-11-19 11:51:24'),
(9, 'Sayeed012', 'binance', 986310.00, '986310', '2024-11-19 11:51:54'),
(10, 'Sayeed012', 'binance', 5850.00, '986310', '2024-11-20 03:34:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD CONSTRAINT `withdrawals_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
