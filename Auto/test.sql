-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 12 2024 г., 14:38
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
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `car`
--

CREATE TABLE `car` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `car`
--

INSERT INTO `car` (`id`, `name`, `price`, `image`) VALUES
(1, 'Genesis G90 II ', '2000 руб.', 'static/img/product-1.jpg'),
(2, 'Hongqi EHS-9 ', '2500руб.', 'static/img/product-2.jpg'),
(3, 'Kia K5', '1700 руб.', 'static/img/product-3.jpg'),
(4, 'Toyota Camry AT XV70', '2000 руб.', 'static/img/product-4.jpg'),
(5, 'Geely Emgrand', '2000 руб.', 'static/img/product-5.jpg'),
(6, 'Geely Coolray Sport ', '2500 руб.', 'static/img/product-6.jpg'),
(7, 'Haval Jolion', '2500 руб.', 'static/img/product-7.jpg'),
(8, 'Chevrolet Tahoe RWD', '3000руб.', 'static/img/product-8.jpg'),
(9, 'Hyundai Sonata VIII', '2500руб.', 'static/img/product-9.jpg'),
(10, 'Nissan X-Trail 2.5 ', '2500 руб.', 'static/img/product-10.jpg'),
(11, 'Hyundai Solaris 1.6 AT', '1700 руб.', 'static/img/product-11.jpg'),
(12, 'Haval M6', '2500 руб.', 'static/img/product-12.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `fio` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `fio`, `phone`, `email`, `comment`, `product_id`) VALUES
(1, 'naidan', '1234567', 'naydandamba@gmail.com', 'test', 1),
(2, 'Andrey', '12345678', 'testing@gmail.com', 'Тестовый заказ', 3),
(3, 'Александр', '380742', 'testing@gmail.com', 'Тестовый заказ', 4),
(4, 'Тимур', '348562983', 'testing@gmail.com', 'Тестовый заказ', 11);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `car`
--
ALTER TABLE `car`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
