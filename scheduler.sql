-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 05 2021 г., 18:01
-- Версия сервера: 10.4.19-MariaDB
-- Версия PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `scheduler`
--

-- --------------------------------------------------------

--
-- Структура таблицы `employee`
--

CREATE TABLE `employee` (
  `idS` int(5) NOT NULL COMMENT 'Ключ',
  `name` varchar(80) NOT NULL COMMENT 'Название сотрудника'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `employee`
--

INSERT INTO `employee` (`idS`, `name`) VALUES
(1, 'Иван'),
(2, 'Петя'),
(3, 'Вася'),
(4, 'Пётр'),
(5, 'Павел');

-- --------------------------------------------------------

--
-- Структура таблицы `project`
--

CREATE TABLE `project` (
  `idP` int(5) NOT NULL COMMENT 'Ключ',
  `work` varchar(35) NOT NULL COMMENT 'Название проекта',
  `Пон` varchar(50) NOT NULL,
  `Вт` varchar(50) NOT NULL,
  `Сре` varchar(50) NOT NULL,
  `Чтв` varchar(50) NOT NULL,
  `Пт` varchar(50) NOT NULL,
  `Сб` varchar(50) NOT NULL,
  `Вс` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `project`
--

INSERT INTO `project` (`idP`, `work`, `Пон`, `Вт`, `Сре`, `Чтв`, `Пт`, `Сб`, `Вс`) VALUES
(15, 'Проект', 'Петя', 'Петя', 'Петя', 'Пётр', 'Вася', 'Пётр', 'Вася');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`idS`);

--
-- Индексы таблицы `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`idP`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `employee`
--
ALTER TABLE `employee`
  MODIFY `idS` int(5) NOT NULL AUTO_INCREMENT COMMENT 'Ключ', AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `project`
--
ALTER TABLE `project`
  MODIFY `idP` int(5) NOT NULL AUTO_INCREMENT COMMENT 'Ключ', AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
