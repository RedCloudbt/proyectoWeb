-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2020 a las 18:34:05
-- Versión del servidor: 10.4.16-MariaDB-log
-- Versión de PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `salessystem`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(5) NOT NULL,
  `name` varchar(35) NOT NULL,
  `description` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `created_at`, `modified_at`) VALUES
(1, 'Realismo', 'El realismo busca representar la vida de la forma más fiel.', '2020-06-12 16:08:26', '2020-12-10 05:22:30'),
(2, 'Hiperrealismo', 'Un paso más allá del realismo.', '2020-06-15 23:29:17', '2020-12-10 05:23:27'),
(3, 'Surrealismo', 'Las pinturas del surrealismo son a menudo ilógicas ', '2020-12-09 22:32:27', NULL),
(4, 'Prueba', 'categoria prueba', '2020-12-10 10:39:50', '2020-12-10 05:40:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE `client` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type_client` varchar(20) NOT NULL,
  `type_document` varchar(20) NOT NULL,
  `num_document` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `client`
--

INSERT INTO `client` (`id`, `name`, `type_client`, `type_document`, `num_document`, `address`, `phone_number`, `email`, `created_at`, `modified_at`) VALUES
(1, 'Juan Jose Trejo Lugo', 'Galerista', 'INE', '23232321', 'Av. Rio Tula #57', '5536561375', 'juan_trejo13@gmail.com', '2020-12-10 00:47:32', '0000-00-00 00:00:00'),
(2, 'Kevin Lievano', 'Galerista', 'RFC', 'TREK913784738473', 'Pachuca de soto ', '7714349869', 'kevin@gmail.com', '2020-12-10 10:28:01', '0000-00-00 00:00:00'),
(3, 'Poncho Trejo', 'Otro', 'INE', '12345678', 'El Mandho Ixmiquilpan Hidalgo', '5543121233', 'poncho@gmail.com', '2020-12-10 10:28:53', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id` int(5) NOT NULL,
  `barcode` varchar(15) NOT NULL,
  `name` varchar(40) NOT NULL,
  `description` varchar(50) NOT NULL,
  `price` varchar(10) NOT NULL,
  `stock` int(5) NOT NULL,
  `picture` varchar(40) NOT NULL DEFAULT 'default.png',
  `category_id` int(5) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `barcode`, `name`, `description`, `price`, `stock`, `picture`, `category_id`, `created_at`, `modified_at`) VALUES
(1, '123456', 'Monalisa', 'Pintura de Leonardo Davinci', '11212.00', 2, 'img0.png', 2, '2020-12-10 02:25:40', '2020-12-10 09:30:34'),
(2, '012345', 'Pintura Roja', 'Lienzo de Mujer ', '10000.00', 5, 'img2.png', 1, '2020-12-10 02:31:49', NULL),
(3, '0124455', 'Pintura 3', 'paisaje naranja', '15000.00', 4, 'img3.png', 3, '2020-12-10 10:26:37', NULL),
(4, '432145', 'Miranda', 'Chica pelirroja', '20000.00', 2, 'img4.png', 3, '2020-12-10 10:30:29', NULL),
(5, '012345679', 'Violinista', 'Mujer con violin ', '15000.00', 3, 'img5.png', 4, '2020-12-10 10:41:31', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(1) NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale`
--

CREATE TABLE `sale` (
  `id` int(5) NOT NULL,
  `subtotal` varchar(10) NOT NULL,
  `igv` varchar(10) NOT NULL,
  `discount` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL,
  `user_id` int(1) NOT NULL,
  `client_id` int(1) NOT NULL,
  `voucher_id` int(1) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sale`
--

INSERT INTO `sale` (`id`, `subtotal`, `igv`, `discount`, `total`, `user_id`, `client_id`, `voucher_id`, `date`) VALUES
(1, '21212.00', '21212.00', '10.00', '21202.00', 1, 1, 1, '2020-12-10 02:54:09'),
(2, '11212.00', '11212.00', '0.00', '11212.00', 1, 1, 1, '2020-12-10 03:37:33'),
(3, '30000.00', '30000.00', '0.00', '35400.00', 2, 3, 3, '2020-12-10 10:33:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale_detail`
--

CREATE TABLE `sale_detail` (
  `id` int(5) NOT NULL,
  `sale_id` int(5) NOT NULL,
  `product_id` int(5) NOT NULL,
  `cant` int(10) NOT NULL,
  `price` varchar(15) NOT NULL,
  `discount` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sale_detail`
--

INSERT INTO `sale_detail` (`id`, `sale_id`, `product_id`, `cant`, `price`, `discount`) VALUES
(1, 1, 1, 1, '11212.00', '10.00'),
(2, 1, 2, 1, '10000.00', '10.00'),
(3, 2, 1, 1, '11212.00', '0.00'),
(4, 3, 3, 2, '15000.00', '0.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `picture` varchar(15) NOT NULL,
  `rol_id` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone_number`, `password`, `picture`, `rol_id`, `created_at`, `modified_at`) VALUES
(1, 'Gustavo Trejo Lugo', 'gus17@gmail.com', '7714340982', '81dc9bdb52d04dc20036dbd8313ed055', 'img1.png', 1, '2020-06-14 03:35:46', '2020-12-10 05:03:25'),
(2, 'Leonardo Nahin Elizalde Ramirez', 'Leo_ram12@gmail.com', '7713324154', '81dc9bdb52d04dc20036dbd8313ed055', 'img2.png', 1, '2020-12-10 01:42:25', '2020-12-10 10:03:17'),
(3, 'Poncho Trejo Lugo', 'ponchito17@gmail.com', '7721370260', '81dc9bdb52d04dc20036dbd8313ed055', 'img3.png', 2, '2020-12-10 10:32:35', '0000-00-00 00:00:00'),
(4, 'Diana Xochitl Ruano Vargas', 'diana@gmail.com', '1234567891', '81dc9bdb52d04dc20036dbd8313ed055', 'img4.png', 1, '2020-12-10 10:46:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voucher`
--

CREATE TABLE `voucher` (
  `id` int(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `igv` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `voucher`
--

INSERT INTO `voucher` (`id`, `name`, `igv`) VALUES
(1, 'Factura', 18),
(2, 'Boleta', 0),
(3, 'Ticket', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `barcode` (`barcode`),
  ADD KEY `category_id` (`category_id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voucher_id` (`voucher_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `sale_detail`
--
ALTER TABLE `sale_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `rol_id` (`rol_id`);

--
-- Indices de la tabla `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `client`
--
ALTER TABLE `client`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sale_detail`
--
ALTER TABLE `sale_detail`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Filtros para la tabla `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`voucher_id`) REFERENCES `voucher` (`id`),
  ADD CONSTRAINT `sale_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `sale_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `sale_detail`
--
ALTER TABLE `sale_detail`
  ADD CONSTRAINT `sale_detail_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`id`),
  ADD CONSTRAINT `sale_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
