-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Мар 16 2017 г., 11:40
-- Версия сервера: 10.1.19-MariaDB
-- Версия PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `practice_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `country`
--

CREATE TABLE `country` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `short_code` char(2) NOT NULL,
  `area` varchar(8) NOT NULL,
  `population` int(10) UNSIGNED NOT NULL,
  `continent` enum('Africa','Europe','Asia','North America','South America','Antarctica','Australia') NOT NULL DEFAULT 'Europe',
  `president` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `country`
--

INSERT INTO `country` (`id`, `name`, `short_code`, `area`, `population`, `continent`, `president`) VALUES
(1, 'Yemen', 'YE', '527970', 24410000, 'Asia', 'Emily Sims'),
(2, 'Estonia', 'EE', '45339', 1325000, 'Europe', 'Pamela Payne'),
(3, 'Finland', 'FI', '338430', 5439000, 'Europe', 'Russell Harper'),
(4, 'China', 'CN', '9597000', 1357000000, 'Asia', 'Brandon Lopez'),
(5, 'Philippines', 'PH', '300000', 98390000, 'Asia', 'Ralph Foster'),
(8, 'Ukraine', 'UA', '603628', 48000000, 'Europe', 'Anthony Rice'),
(9, 'Russia', 'RU', '17100000', 143500000, 'Asia', 'Laura Garza');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
