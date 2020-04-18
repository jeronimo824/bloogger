-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 18-04-2020 a las 19:29:35
-- Versión del servidor: 8.0.18
-- Versión de PHP: 7.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blogger`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`id`, `title`, `descripcion`, `created_at`) VALUES
(1, 'legend of zelda ', 'hhbbhsdhbhbhbh                 \r\n                 ', '2020-04-17 20:31:25'),
(2, 'hbsxhbhbhb', 'hbhbdhbhbhb                 \r\n                 ', '2020-04-17 20:35:00'),
(11, 'xssxsxsx', '                 sxsxsxsxsx\r\n                 ', '2020-04-17 23:56:20'),
(4, 'legend of zelda DFFDDFssw', '            njdcjndjnjncdFVDFDV', '2020-04-17 20:48:13'),
(5, 'legend of zelda ', '                 \r\n            xsssssssssssssss     ', '2020-04-17 20:49:34'),
(6, 'rffffffrfrfrfrfr', '       frvffffffff          \r\n                 ', '2020-04-17 21:23:03'),
(7, 'ggggggg', '              fvvvvvvvvvv   \r\n                 ', '2020-04-17 21:23:53'),
(8, 'rffffffrfrfrfrfr', '                 \r\n           rrrrrrrrrrrr      ', '2020-04-17 21:23:59'),
(10, 'dcdcd', '                vffvfvfv \r\n                 ', '2020-04-17 23:56:05'),
(12, 'cddcdcdc', 'dcdccddc                 \r\n                 ', '2020-04-17 23:56:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `correo` varchar(35) NOT NULL,
  `contraseña` int(35) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `edad` varchar(10) NOT NULL,
  `genero` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
