-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2024 at 05:40 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `caption` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `file_path`, `caption`, `created_at`) VALUES
(1, '../uploads/images/cpsu.jpg', 'xvxvzxvxvzxvzx', '2024-07-01 17:00:13'),
(5, '../uploads/images/17f63780-5298-44b8-badb-496b2503dbc9.jpg', 'asasasa', '2024-07-02 03:53:04'),
(6, '../uploads/images/518472bc-f9c2-407b-a747-50f9ec7a976a.jpg', 'sasasasa', '2024-07-02 03:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `receiver_role` enum('admin','student') NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `receiver_role`, `message`, `created_at`) VALUES
(2, 2, 3, 'admin', 'adssadadasd', '2024-06-25 02:11:52'),
(3, 2, 3, 'admin', 'dfcdgdgc', '2024-06-25 02:13:52'),
(4, 2, 3, 'admin', 'revvgtgv', '2024-06-25 02:13:54'),
(5, 2, 3, 'admin', 'evrtverg', '2024-06-25 02:13:57'),
(6, 2, 3, 'admin', 'efergvegvg', '2024-06-25 02:13:59'),
(7, 2, 3, 'admin', 'vrewtvewtv', '2024-06-25 02:14:01'),
(11, 1, 1, 'admin', 'sdadadasdad', '2024-06-30 13:10:05');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `task` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `due_date` date DEFAULT NULL,
  `due_time` time DEFAULT NULL,
  `completed` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `task`, `created_at`, `due_date`, `due_time`, `completed`) VALUES
(4, 1, '20 squats', '2024-06-20 04:31:17', '2024-06-20', '12:32:00', 1),
(6, 1, '20 push ups', '2024-06-20 04:50:09', '2024-06-20', '12:46:00', 1),
(7, 1, '20 push ups', '2024-06-20 04:51:59', '2024-06-20', '12:52:00', 1),
(9, 2, '20 push ups', '2024-06-20 22:44:58', '2024-06-21', '06:44:00', 1),
(10, 1, 'dadasdad', '2024-06-20 23:50:22', '2024-06-21', '07:54:00', 1),
(11, 1, '30 squat', '2024-06-21 05:09:52', '2024-06-21', '13:09:00', 1),
(12, 1, '20 push ups', '2024-06-22 02:58:53', '2024-06-22', '10:58:00', 1),
(14, 1, 'dadasdad', '2024-06-22 03:00:27', '2024-06-22', '11:00:00', 1),
(15, 1, 'dadasdad', '2024-06-22 03:00:45', '2024-06-22', '11:01:00', 1),
(16, 1, 'dadasdad', '2024-06-22 03:00:54', '2024-06-22', '11:06:00', 1),
(17, 1, '30 squat', '2024-06-22 03:01:06', '2024-06-26', '11:04:00', 1),
(18, 1, 'squat', '2024-06-22 03:01:19', '2024-06-29', '11:07:00', 1),
(21, 1, 'mag inalpot', '2024-07-01 02:47:38', '2024-07-01', '10:48:00', 1),
(23, 1, 'ssdvddafa', '2024-07-02 04:37:30', '2024-07-02', '12:37:00', 1),
(28, 2, 'mag inalpot', '2024-07-02 15:22:42', '2024-07-02', '23:22:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('student','admin') NOT NULL DEFAULT 'student',
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `course` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `first_name`, `last_name`, `phone_number`, `course`) VALUES
(1, 'tin', '$2y$10$2lXBqwh7Yw7TWEayoxXd5.F09I5yQ8pmiQg/GvRAQ68BBItw4F1Dq', 'student', 'cristine', 'escarda', '09512894343', 'BSIT'),
(2, 'paul', '$2y$10$U9rGvYvbMqCKlfzq1YLJVenDD8JUP63TZohc8ppRREyL6O5QKFtI6', 'student', 'muji', 'saturo', '09512894343', 'bscrim'),
(3, 'admin_user', 'hashed_password', 'admin', '', '', '', ''),
(6, 'tinay', '$2y$10$d7WpSWkHzCBMJad3rwhCvenMu3TsU4TOmhTNhd9wbG2DcxKIHcrdW', 'admin', '', '', '', ''),
(7, 'muji', '$2y$10$d7WpSWkHzCBMJad3rwhCvenMu3TsU4TOmhTNhd9wbG2DcxKIHcrdW', 'admin', '', '', '', ''),
(8, 'niknak', '$2y$10$QLqHm56/qxWY40Qf2HzF7O8NdX32Aeqw2vvejYjh7NqPlvzem2oWS', 'student', 'pauj jay ', 'doloso', '09512894343', 'bsit'),
(9, 'charles', '$2y$10$g3o6yQe7LQZdpEH27r9thuSZpJc25e9Jbkr.RooVRLpS9PSvbf3fG', 'student', 'charles kenneth', 'pepito', '9455221565', 'BSIT'),
(11, 'rey', '$2y$10$LxPCgTo0yxnYKL3gl8y.auqobioQd.FRW1/oVLdp2S57ZNfKGb7T.', 'student', 'raynand', 'copia', '0945326585', 'bsit');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `video_type` enum('file','youtube') NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `user_id`, `video_type`, `file_path`, `video_url`, `caption`, `created_at`) VALUES
(3, 1, 'youtube', NULL, 'https://www.youtube.com/embed/f1-XCQjbQpA', 'dsassdasdadasdasd asdasda sdasdd sadasd', '2024-06-30 14:44:05'),
(4, 7, 'youtube', NULL, 'https://www.youtube.com/embed/Gx6_QaJ_VR8', 'be healthy living', '2024-07-02 04:35:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
