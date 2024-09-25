-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-09-2024 a las 00:25:32
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ilib`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `edit` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `pages` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `ejemplares` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `books`
--

INSERT INTO `books` (`id`, `title`, `date`, `author`, `category`, `edit`, `lang`, `pages`, `description`, `ejemplares`, `stock`, `available`) VALUES
(1, 'medicina laboral', '2007', 'denny j. meyer', 'medicina', '3', 'español', '304', 'nuevo', '1', 1, 1),
(2, 'bryan', '2000', 'arozamena', 'fisica', '3', 'español', '100', 'nuevo', '1', 11, 0),
(3, 'juuuju', '8327', 'kjsdgf', 'kjdh', '5', 'isdfg', '8732', 'wefg', '3', 1, 3),
(4, 'bryan', '9823', 'dnhf', 'iudshf', '7', 'sodifh', '98', 'jdsfh', '54', 34, 34),
(5, 'jdshb', '32', 'dwf', '4', '34', 'ksjdf', '4', 'iewf', '3', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lendings`
--

CREATE TABLE `lendings` (
  `id` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_out` varchar(255) NOT NULL,
  `date_return` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `lendings`
--

INSERT INTO `lendings` (`id`, `user_id`, `book_id`, `date_out`, `date_return`) VALUES
(1, '1', 1, '18-09-2024', '18-09-2024'),
(2, '3', 1, '23-09-2024', '23-09-2024'),
(3, '3', 1, '23-09-2024', '23-09-2024'),
(4, '3', 1, '23-09-2024', '23-09-2024'),
(5, '3', 1, '23-09-2024', '23-09-2024'),
(6, '3', 1, '23-09-2024', '23-09-2024'),
(7, '3', 1, '23-09-2024', '23-09-2024'),
(8, '3', 2, '23-09-2024', '23-09-2024'),
(10, '12525206', 1, '24-09-2024', '24-09-2024'),
(11, '12525206', 1, '24-09-2024', '24-09-2024'),
(12, '12525206', 1, '24-09-2024', '24-09-2024'),
(13, '12525206', 3, '25-09-2024', '25-09-2024');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `last_name_p_m` varchar(30) NOT NULL,
  `ru` varchar(30) NOT NULL,
  `domicilio` varchar(250) DEFAULT NULL,
  `tel` varchar(25) DEFAULT NULL,
  `sanctions` int(11) DEFAULT 0,
  `sanc_money` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `last_name_p_m`, `ru`, `domicilio`, `tel`, `sanctions`, `sanc_money`) VALUES
(1, 'juan', 'bbbb', 'jnjkkj', 'ajsbd', '8765', 0, 0),
(2, 'bryan', 'arozamena', 'baltazar', 'fd', '5464', 0, 0),
(3, 'pedro', 'salasar brandon', '12525206', 'av isabel la catolica', '69638855', 0, 0),
(4, 'luis', 'baltazar colque', '1242426', 'av dddd', '56r466566', 0, 0),
(5, 'uhsgf', 'isdf', '12525206', 'dshf', 'iwehrf', 0, 0),
(6, 'bryan', 'jhsbd', '473', 'jsdhgf', 'kjsdbf', 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lendings`
--
ALTER TABLE `lendings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `lendings`
--
ALTER TABLE `lendings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
