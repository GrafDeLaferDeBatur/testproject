-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 08 2023 г., 00:54
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Platform`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Clients`
--

CREATE TABLE `Clients` (
  `id` int NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `id_position` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Clients`
--

INSERT INTO `Clients` (`id`, `first_name`, `last_name`, `email`, `company_name`, `id_position`) VALUES
(3, 'Michael', 'Red', 'will@y.ou', 'No-microsoft', 1),
(4, 'Samm', 'Samm', 'samm@samm.com', 'Samm Company', 6),
(7, 'Alex', 'Alex', 'alex@alex.com', 'Alex Company', 2),
(8, 'New firstname', 'New lastname', 'neww@new.com', 'New Company', 5),
(9, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(10, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(13, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(14, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(15, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(16, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(17, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(18, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(19, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(20, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(21, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(22, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(23, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(24, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(25, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(26, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(27, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(28, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(29, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(30, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(31, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(32, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(33, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(34, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(35, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(36, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(37, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(38, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(39, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(40, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(41, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(42, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(43, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(44, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(45, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(46, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(47, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(48, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(49, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(50, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(51, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(52, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(53, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(54, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(55, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(56, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(57, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(58, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(59, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(60, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(61, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(62, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(63, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(64, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(65, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(66, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(67, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(68, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(69, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(70, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(71, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(72, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(73, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(74, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(75, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(76, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(77, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(78, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(79, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(80, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(81, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(82, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(83, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(84, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(85, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(86, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(87, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(88, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(89, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(90, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(91, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(92, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(93, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(94, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(95, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(96, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(97, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(98, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(99, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(100, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(101, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(102, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(103, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(104, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(105, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(106, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(107, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(108, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(109, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(110, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(111, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(112, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(113, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(114, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(115, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(116, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(117, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(118, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(119, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(120, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(121, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(122, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(123, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(124, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(125, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(126, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(127, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(128, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(129, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(130, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(131, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(132, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(133, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(134, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(135, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(136, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(137, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(138, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(139, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(140, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(141, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(142, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(143, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(144, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(145, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(146, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(147, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(148, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(149, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(150, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(151, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(152, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(153, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(154, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(155, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(156, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(157, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(158, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(159, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(160, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(161, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(162, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(163, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(164, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(165, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(166, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(167, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(168, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(169, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(170, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(171, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(172, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(173, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(174, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(175, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(176, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(177, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(178, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(179, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(180, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(181, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(182, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(183, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(184, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(185, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(186, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(187, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(188, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(189, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(190, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(191, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(192, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(193, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(194, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(195, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(196, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(197, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(198, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(199, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(200, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(201, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(202, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(203, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(204, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(205, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(206, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(207, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(208, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(209, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(210, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(211, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(212, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(213, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(214, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(215, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(216, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(217, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(218, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(219, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(220, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(221, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(222, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(223, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(224, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(225, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(226, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(227, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(228, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(229, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(230, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(231, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(232, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(233, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(234, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(235, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(236, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(237, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(238, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(239, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(240, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(241, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(242, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(243, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(244, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(245, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(246, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(247, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(248, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(249, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(250, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(251, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(252, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(253, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(254, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(255, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(256, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(257, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(258, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(259, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(260, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(261, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(262, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(263, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(264, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(265, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(266, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(267, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(268, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(269, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(270, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(271, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(272, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(273, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(274, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(275, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(276, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(277, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(278, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(279, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(280, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(281, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(282, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(283, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(284, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(285, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(286, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(287, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(288, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(289, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(290, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(291, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(292, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(293, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(294, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(295, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(296, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(297, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(298, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(299, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(300, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(301, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(302, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(303, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(304, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(305, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(306, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(307, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(308, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(309, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(310, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(311, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(312, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(313, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(314, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(315, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(316, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(317, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(318, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(319, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(320, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(321, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(322, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(323, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(324, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(325, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(326, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(327, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(328, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(329, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(330, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(331, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(332, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(333, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(334, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(335, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(336, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(337, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(338, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(339, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(340, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(341, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(342, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(343, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(344, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(345, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(346, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(347, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(348, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(349, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(350, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(351, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(352, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(353, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(354, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(355, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(356, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(357, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(358, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(359, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(360, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(361, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(362, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(363, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(364, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(365, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(366, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(367, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(368, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(369, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(370, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(371, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(372, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(373, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(374, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(375, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(376, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(377, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(378, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(379, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(380, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(381, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(382, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(383, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(384, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(385, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(386, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(387, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(388, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(389, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(390, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(391, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(392, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(393, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(394, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(395, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(396, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(397, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(398, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(399, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(400, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(401, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(402, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(403, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(404, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(405, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(406, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(407, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(408, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(409, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(410, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(411, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(412, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(413, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(414, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(415, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(416, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(417, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(418, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(419, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(420, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(421, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(422, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(423, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(424, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(425, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(426, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(427, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(428, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(429, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(430, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(431, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(432, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(433, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(434, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(435, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(436, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(437, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(438, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(439, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(440, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(441, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(442, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(443, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(444, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(445, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(446, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(447, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(448, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(449, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(450, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(451, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(452, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(453, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(454, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(455, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(456, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(457, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(458, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(459, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(460, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(461, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(462, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(463, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(464, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(465, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(466, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(467, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(468, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(469, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(470, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(471, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(472, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(473, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(474, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(475, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(476, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(477, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(478, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(479, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(480, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(481, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(482, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(483, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(484, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(485, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(486, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(487, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(488, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(489, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(490, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(491, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(492, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(493, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(494, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(495, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(496, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(497, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(498, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(499, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(500, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(501, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(502, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(503, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(504, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(505, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(506, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(507, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(508, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(509, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(510, 'New firstname', 'New lastname', 'new@new.com', 'New Company', 3),
(512, 'rthrth', 'rth', 'qwe@m.com', 'qwe Company', 5),
(513, 'rt', 'rt', 'rt@mail.com', 'rt', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `Phones`
--

CREATE TABLE `Phones` (
  `id` int NOT NULL,
  `id_client` int NOT NULL,
  `phone` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Phones`
--

INSERT INTO `Phones` (`id`, `id_client`, `phone`) VALUES
(4, 3, '+79952528857'),
(5, 3, '+79952728857'),
(7, 7, '+79933825579'),
(11, 7, '+79933825570'),
(14, 8, '+76666666666'),
(16, 512, '+76666666666'),
(17, 53, '+76666666666'),
(18, 44, '+74546666666'),
(19, 513, '+76575675675');

-- --------------------------------------------------------

--
-- Структура таблицы `Positions`
--

CREATE TABLE `Positions` (
  `id` int NOT NULL,
  `position` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Positions`
--

INSERT INTO `Positions` (`id`, `position`) VALUES
(1, 'President'),
(2, 'CEO'),
(3, 'CFO'),
(4, 'CMO'),
(5, 'COO'),
(6, 'CHRO'),
(7, 'CLO');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_position` (`id_position`);

--
-- Индексы таблицы `Phones`
--
ALTER TABLE `Phones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phones_ibfk_2` (`id_client`);

--
-- Индексы таблицы `Positions`
--
ALTER TABLE `Positions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Clients`
--
ALTER TABLE `Clients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=514;

--
-- AUTO_INCREMENT для таблицы `Phones`
--
ALTER TABLE `Phones`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `Positions`
--
ALTER TABLE `Positions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Clients`
--
ALTER TABLE `Clients`
  ADD CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`id_position`) REFERENCES `Positions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Phones`
--
ALTER TABLE `Phones`
  ADD CONSTRAINT `phones_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `Clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
