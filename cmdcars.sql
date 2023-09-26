-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-09-2023 a las 10:37:11
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cmdcars`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidoPaterno` varchar(50) NOT NULL,
  `apellidoMaterno` varchar(50) NOT NULL,
  `domicilio` varchar(100) NOT NULL,
  `curp` varchar(20) NOT NULL,
  `numDeTelefono` varchar(30) NOT NULL,
  `ingresosXmes` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `domicilio`, `curp`, `numDeTelefono`, `ingresosXmes`) VALUES
(1, 'Juan', 'Correa', 'Montes', 'Rio Atenanco 232', 'COMD0AO3424D', '65432198832', '30000.00'),
(2, 'Maria', 'Escobedo', 'Licon', 'Region de Los Altos 4323', 'CODKE04889F', '654321232423', '20000.00'),
(3, 'Miguel', 'Gonzalez', 'Beltran', 'Los portales 2344', 'BLDE93L43434', '762784682', '40000.00'),
(4, 'Diego', 'Garcia', 'Santillana', 'Los potrillos 2344', 'DGCE88399FDSF', '5456546453', '80000.00'),
(5, 'Michel', 'Quiroz', 'Medina', 'Horizontes del Sur 324', 'AMFE9R923432', '65757234243', '20000.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `idEmpleado` int(50) NOT NULL,
  `idSucursal` int(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidoPaterno` varchar(50) NOT NULL,
  `apellidoMaterno` varchar(50) NOT NULL,
  `curp` varchar(50) NOT NULL,
  `numDeTelefono` varchar(20) NOT NULL,
  `domicilio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`idEmpleado`, `idSucursal`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `curp`, `numDeTelefono`, `domicilio`) VALUES
(1, 4, 'Ernesto', 'Garcia', 'Montes', 'CODKE04889F', '65432198832', 'Rios del bravo 2342'),
(2, 5, 'Hector', 'Escobedo', 'Montes', 'DGCE88399FDSF', '5456546453', 'Horizontes del norte 2323'),
(3, 1, 'Mariana', 'Beltran', 'Martinez', 'FGERDE93L43434', '62435232423', 'Region del sur 324'),
(4, 2, 'Mariano', 'Uribe', 'Mendoza', 'FGS3243223GFE', '56528723234', 'Colonia los canales 34234'),
(5, 3, 'Perla', 'Campa', 'Gallegos', 'MDDEK44345345', '65759394834', 'calle Argentina 32423');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `idSucursal` int(50) NOT NULL,
  `nombreSucursal` varchar(50) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `cp` int(10) NOT NULL,
  `dineroConElQueSeCuenta` decimal(10,2) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`idSucursal`, `nombreSucursal`, `pais`, `estado`, `ciudad`, `cp`, `dineroConElQueSeCuenta`, `correo`) VALUES
(1, 'Las torres', 'Mexico', 'Chihuahua', 'Juarez', 43243, '30000000.00', 'lastorreslote@gmail.com'),
(2, 'Los arcos', 'Mexico', 'Chihuahua', 'Chihuahua', 5354, '40000000.00', 'losArcoslote@gmail.com\r\n'),
(3, 'Casas Nuevas', 'Mexico', 'CDMX', 'CDMX', 5345, '50000000.00', 'casasnuevaslote@gmail.com'),
(4, 'Portales', 'Mexico', 'CMDX', 'CDMX', 8373, '25000000.00', 'portaleslote@gmail.com'),
(5, 'VillaNueva', 'Mexico', 'Nuevo Leon', 'Monterrey', 32432, '30000000.00', 'villanuevalote@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `idVehiculo` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `anio` int(10) NOT NULL,
  `kilometraje` int(20) NOT NULL,
  `vin` varchar(50) NOT NULL,
  `color` varchar(30) NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`idVehiculo`, `marca`, `modelo`, `anio`, `kilometraje`, `vin`, `color`, `precio`) VALUES
(1, 'Nissan', '240sx', 1996, 2354355, '242345235235fdsgas43', 'Blanco', '400000.00'),
(2, 'Nissan', 'GTR R-34', 2000, 20000, '5344543534gre34', 'Negro', '5000000.00'),
(3, 'Toyota', 'Supra', 2000, 342344, '2347283478fwef3', 'Blanco', '700000.00'),
(4, 'Honda', 'nsx', 1993, 40000, '423432423gg44', 'Rojo', '6000000.00'),
(5, 'Mazda', 'RX-7', 2000, 234244, '234367864hgf', 'Rojo', '400000.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idVenta` int(50) NOT NULL,
  `idVehiculo` int(50) NOT NULL,
  `idCliente` int(50) NOT NULL,
  `idSucursal` int(50) NOT NULL,
  `idEmpleado` int(50) NOT NULL,
  `fecha` date NOT NULL,
  `hora` varchar(20) NOT NULL,
  `cantidadApagar` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idVenta`, `idVehiculo`, `idCliente`, `idSucursal`, `idEmpleado`, `fecha`, `hora`, `cantidadApagar`) VALUES
(1, 5, 4, 2, 3, '2023-09-13', '10AM', '300000.00'),
(2, 4, 3, 3, 4, '2023-09-11', '3PM', '3566000.00'),
(3, 3, 2, 4, 5, '2023-09-16', '5PM', '400000.00'),
(4, 2, 1, 5, 1, '2023-09-02', '1PM', '4343000.00'),
(5, 1, 5, 1, 2, '2023-09-29', '10AM', '5000000.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`idEmpleado`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`idSucursal`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`idVehiculo`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idVenta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `idEmpleado` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `idSucursal` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `idVehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idVenta` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
