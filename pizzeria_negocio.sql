-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-09-2023 a las 20:39:07
-- Versión del servidor: 11.1.0-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pizzeria_negocio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `name`, `user`, `pass`, `email`, `phone`) VALUES
(1, 'Generico', 'Gerente123', 'Gerente123', 'a@generico.com', '3300000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idproducto` varchar(50) DEFAULT NULL,
  `idusuario` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `amount` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id`, `idproducto`, `idusuario`, `name`, `image`, `description`, `price`, `amount`) VALUES
(28, '5', '1', 'Pizza Margarita', 'PizzaMarg.jpeg', 'Salsa de tomate, mozzarella fresca, albahaca y aceite de oliva.', '130.00', 2),
(32, '10', '35', 'Pizza al toque', 'PizzaProsc.jpg', 'Muy chingona hecha por mi papa', '500.00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pastas`
--

CREATE TABLE `pastas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pastas`
--

INSERT INTO `pastas` (`id`, `name`, `image`, `description`, `price`) VALUES
(1, 'Espaguetti a la Boloñesa', 'SpaguetiBol.jpg', 'Espaguetti al dente en salsa boloñesa con parmesano coronando', '130.00'),
(2, 'Espagueti al pesto', 'spaghettiPesto.jpg', 'Espagueti con pesto', '120.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pizzas`
--

CREATE TABLE `pizzas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pizzas`
--

INSERT INTO `pizzas` (`id`, `name`, `image`, `description`, `price`) VALUES
(5, 'Pizza Margarita', 'PizzaMarg.jpeg', 'Salsa de tomate, mozzarella fresca, albahaca y aceite de oliva.', '130.00'),
(7, 'Pizza Prosciutto', 'PizzaProsc.jpg', 'Pizza\r\n', '150.00'),
(10, 'Pizza al toque', 'PizzaProsc.jpg', 'Muy chingona hecha por mi papa', '500.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postres`
--

CREATE TABLE `postres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `postres`
--

INSERT INTO `postres` (`id`, `name`, `image`, `description`, `price`) VALUES
(1, 'Tiramisu', 'Tiramisu.jpeg', 'Postre de soletas remojadas en cafe, con crema y cocoa coronando', '80.00'),
(2, 'Al tiro', 'Pizza4.png', 'Aca bien perro', '50.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `pass` varchar(8) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `name`, `user`, `pass`, `email`, `phone`) VALUES
(1, 'Daniel Alvarez Valenzuela', 'Dany', '191642', 'a21310388@ceti.mx', '1000000000'),
(3, 'Jorge Arturo Suarez Ruiz', 'Jorjais', 'CoC', 'jorgesrz2002@gmail.com', '331000000'),
(5, 'Fernando Navarrete Ruiz', 'Fecho', '420', 'Fercho@gmail.com', '333444555'),
(7, 'Andrea Alvarez Valenzuela', 'Tres', '123', 'andy.avalenzuela@gmail.com', '333204126'),
(9, 'Daniel Álvarez Valenzuela', 'DanyAlv', '123', 'danydesmadre550@gmail.com', '3314320577'),
(15, 'Simon Lopez Guevara', 'Pelon', '123', 'cola@hotmail.com', '3312121212'),
(35, 'Rosa', 'Ross', '123', 'rsantana@ceti.mx', '1010101010');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pastas`
--
ALTER TABLE `pastas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pizzas`
--
ALTER TABLE `pizzas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `postres`
--
ALTER TABLE `postres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `pastas`
--
ALTER TABLE `pastas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pizzas`
--
ALTER TABLE `pizzas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `postres`
--
ALTER TABLE `postres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
