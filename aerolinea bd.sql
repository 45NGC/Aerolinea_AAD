-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-01-2022 a las 12:43:11
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aerolinea`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aviones`
--

CREATE TABLE `aviones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `longitud` float NOT NULL,
  `capacidad_pasajeros` int(11) NOT NULL,
  `capacidad_combustible` float NOT NULL,
  `disponible` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aviones`
--

INSERT INTO `aviones` (`id`, `nombre`, `longitud`, `capacidad_pasajeros`, `capacidad_combustible`, `disponible`) VALUES
(1, 'Boeing 747', 70, 50, 190, 0),
(2, 'Boeing 777', 60, 50, 140, 0),
(3, 'B-52', 50, 30, 140, 1),
(4, 'MD-80', 60, 30, 140, 0),
(5, 'Airbus A380', 70, 50, 190, 1),
(6, 'Airbus A350', 60, 30, 140, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `billetes`
--

CREATE TABLE `billetes` (
  `id` int(11) NOT NULL,
  `id_vuelo` int(11) NOT NULL,
  `dni_pasajero` varchar(9) NOT NULL,
  `fecha_compra` datetime NOT NULL,
  `fecha_vencimiento` datetime NOT NULL,
  `asiento` int(11) NOT NULL,
  `peso_equipaje` double NOT NULL,
  `metodo_de_pago` varchar(50) NOT NULL COMMENT 'Efectivo, tarjeta, transferencia bancaria',
  `VIP` int(11) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `billetes`
--

INSERT INTO `billetes` (`id`, `id_vuelo`, `dni_pasajero`, `fecha_compra`, `fecha_vencimiento`, `asiento`, `peso_equipaje`, `metodo_de_pago`, `VIP`, `precio`) VALUES
(1, 1, '23942367M', '2022-01-09 08:36:09', '2022-01-11 18:00:00', 25, 7, 'tarjeta', 0, 120),
(2, 3, '23948567Q', '2021-12-29 03:47:14', '2022-01-30 08:00:00', 2, 10, 'tarjeta', 1, 203),
(3, 7, '99343356I', '2021-12-25 08:27:46', '2022-03-16 08:23:13', 36, 13, 'efectivo', 0, 245),
(4, 7, '76725399W', '2021-12-25 08:24:21', '2022-03-16 08:23:13', 37, 5, 'efectivo', 0, 200),
(5, 5, '12312367P', '2022-01-11 08:38:23', '2022-01-15 09:00:00', 19, 9, 'transferencia bancaria', 1, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajeros`
--

CREATE TABLE `pasajeros` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` varchar(9) NOT NULL,
  `telefono_opcional` varchar(9) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pasajeros`
--

INSERT INTO `pasajeros` (`dni`, `nombre`, `apellido`, `telefono`, `telefono_opcional`, `email`) VALUES
('12312367P', 'Pedro', 'Ramirez', '239802341', '', 'pramirez@hotmail.com'),
('12345678A', 'Pepito', 'Gonzalez', '147258369', '', 'pepito@correo.com'),
('12345678B', 'Carlos', 'De la fuente', '741258963', '', 'carlos@correo.com'),
('23942367M', 'Jose', 'Suarez', '123321432', '', 'josuaz@outlook.com'),
('23948567Q', 'Maria', 'Fernandez', '918273645', '123321432', 'mfernadz@gmail.com'),
('24153642J', 'Samantha', 'Linhares', '345321346', '', 'samlin@gmail.com'),
('34538725G', 'Gonzalo', 'Leite', '787349821', '', 'gonzaloleiteee@hotmail.com'),
('76725399W', 'Macarena', 'Torres', '898767456', '454643781', 'macatorres@outlook.com'),
('78735629X', 'Laica', 'Suarez', '878753425', '123321432', 'laicasuaaarez@outlook.com'),
('98735470O', 'Alexandre', 'Gomez', '435235678', '', 'alexandree@correo.com'),
('99343356I', 'Marcos', 'Torres', '454643781', '', 'marctorres@outlook.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelos`
--

CREATE TABLE `vuelos` (
  `id` int(11) NOT NULL,
  `id_avion` int(11) NOT NULL,
  `origen` varchar(100) NOT NULL,
  `destino` varchar(100) NOT NULL,
  `fecha_salida` datetime NOT NULL,
  `fecha_llegada` datetime NOT NULL,
  `distancia` float NOT NULL,
  `fumadores` int(11) NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vuelos`
--

INSERT INTO `vuelos` (`id`, `id_avion`, `origen`, `destino`, `fecha_salida`, `fecha_llegada`, `distancia`, `fumadores`, `activo`) VALUES
(1, 1, 'Madrid', 'Suiza', '2022-01-18 15:30:00', '2022-01-18 18:00:00', 1247, 1, 0),
(2, 1, 'Suiza', 'Alemania', '2022-01-27 13:00:00', '2022-01-27 14:30:00', 660, 0, 0),
(3, 1, 'Berlín', 'Madrid', '2022-01-30 08:00:00', '2022-01-30 11:00:00', 1860, 1, 0),
(4, 6, 'Barcelona', 'Madrid', '2022-01-13 06:00:00', '2022-01-03 07:20:00', 590, 1, 0),
(5, 2, 'Madrid', 'Santiago', '2022-01-15 09:00:00', '2022-01-15 10:30:00', 550, 0, 0),
(6, 3, 'Oviedo', 'Madrid', '2022-01-12 07:00:00', '2022-01-12 08:30:00', 420, 1, 0),
(7, 5, 'Santiago de Chile', 'Cancún', '2022-03-16 08:27:13', '2022-03-16 16:44:17', 6261.24, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aviones`
--
ALTER TABLE `aviones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `billetes`
--
ALTER TABLE `billetes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_vuelo` (`id_vuelo`),
  ADD KEY `dni_pasajero` (`dni_pasajero`);

--
-- Indices de la tabla `pasajeros`
--
ALTER TABLE `pasajeros`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_avion` (`id_avion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aviones`
--
ALTER TABLE `aviones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `billetes`
--
ALTER TABLE `billetes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `billetes`
--
ALTER TABLE `billetes`
  ADD CONSTRAINT `billetes_ibfk_1` FOREIGN KEY (`id_vuelo`) REFERENCES `vuelos` (`id`),
  ADD CONSTRAINT `billetes_ibfk_2` FOREIGN KEY (`dni_pasajero`) REFERENCES `pasajeros` (`dni`);

--
-- Filtros para la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD CONSTRAINT `vuelos_ibfk_1` FOREIGN KEY (`id_avion`) REFERENCES `aviones` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
