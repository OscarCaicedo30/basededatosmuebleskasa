-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-04-2022 a las 09:08:05
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mueblesdecasa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactenos`
--

CREATE TABLE `contactenos` (
  `IDCONTACTO` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDO` varchar(50) NOT NULL,
  `TELEFONO` varchar(25) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `MENSAJE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contactenos`
--

INSERT INTO `contactenos` (`IDCONTACTO`, `NOMBRE`, `APELLIDO`, `TELEFONO`, `EMAIL`, `MENSAJE`) VALUES
(1, 'Ernesto ', 'Perez', '3125695369', 'ernesto@gmail.com', 'hola mundo'),
(2, 'Ernesto Perez', 'Humerto', '1026598745', '123456', ''),
(3, 'Ernesto Perez', 'Humerto', '1026598745', 'asdasdasdasdasdsa', ''),
(4, 'Ernesto Perez', 'Humerto', '1026598745', 'asdasdasdasdasdsa', ''),
(5, 'Ernesto Perez', '10', '', 'ernesto@gmail.com', 'cedula'),
(6, 'Ernesto Perez', 'Humerto', '1026598745', 'ernesto@gmail.com', 'hola mundo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablacargos`
--

CREATE TABLE `tablacargos` (
  `IDCARGO` int(11) NOT NULL,
  `DESCRIPCION` varchar(25) NOT NULL,
  `SALARIO` varchar(25) NOT NULL,
  `USUARIO` varchar(25) NOT NULL,
  `PASSWORD` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tablacargos`
--

INSERT INTO `tablacargos` (`IDCARGO`, `DESCRIPCION`, `SALARIO`, `USUARIO`, `PASSWORD`) VALUES
(1, 'hola  mundo como estan ', '1500000', 'ernesto perez', '123456'),
(2, 'hola  mundo como estan ', '50000000', 'hola mundo guardar', '123456'),
(3, 'asdas', '1500000', 'Perez', 'asdfasdasd'),
(4, 'HOLA MUNDO', '1500000', 'Perez', '1234568');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablacatalogo_productos`
--

CREATE TABLE `tablacatalogo_productos` (
  `IDPRODUCTO` int(11) NOT NULL,
  `IDPROVEEDOR` int(11) NOT NULL,
  `TIPODEPRODUCTO` varchar(25) NOT NULL,
  `DESCRIPCION` varchar(50) NOT NULL,
  `COSTOVENTA` double NOT NULL,
  `EXISTENCIAS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tablacatalogo_productos`
--

INSERT INTO `tablacatalogo_productos` (`IDPRODUCTO`, `IDPROVEEDOR`, `TIPODEPRODUCTO`, `DESCRIPCION`, `COSTOVENTA`, `EXISTENCIAS`) VALUES
(8, 1, '', '', 0, 0),
(9, 1, 'MADERA', 'MADERA APILADA ', 250000, 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablaclientes`
--

CREATE TABLE `tablaclientes` (
  `IDCLIENTES` int(11) NOT NULL,
  `NOMBRE1` varchar(25) NOT NULL,
  `NOMBRE2` varchar(25) NOT NULL,
  `APELLIDO1` varchar(25) NOT NULL,
  `APELLIDO2` varchar(25) NOT NULL,
  `TIPODEDOCUMENTO` varchar(25) NOT NULL,
  `DOCUMENTO` varchar(25) NOT NULL,
  `IDTIPO` int(11) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `DIRECCION` varchar(50) NOT NULL,
  `TELEFONOFIJO` varchar(25) NOT NULL,
  `CELULAR` varchar(25) NOT NULL,
  `BARRIO` varchar(25) NOT NULL,
  `CIUDAD` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tablaclientes`
--

INSERT INTO `tablaclientes` (`IDCLIENTES`, `NOMBRE1`, `NOMBRE2`, `APELLIDO1`, `APELLIDO2`, `TIPODEDOCUMENTO`, `DOCUMENTO`, `IDTIPO`, `EMAIL`, `DIRECCION`, `TELEFONOFIJO`, `CELULAR`, `BARRIO`, `CIUDAD`) VALUES
(1, 'Ernesto ', 'Humerto', 'Perez', 'Perez', 'cedula', '1012598784', 3, 'ernesto@gmail.com', 'carrera 1 # 45 -65 ', '3124598752', '312456987', 'restrepo', 'bogota'),
(2, 'Ernesto ', 'Humerto', 'Perez', 'Perez', 'hola mundo', '1012598784', 3, 'ernesto@gmail.com', 'carrera 1 # 45 -65 ', '3124578', '3126589454', 'restrepo', 'bogota'),
(3, 'Ernesto ', 'Humerto', 'Perez', 'Perez', 'hola mundo', '1012598784', 3, 'ernesto@gmail.com', 'carrera 1 # 45 -65 ', '3124578', '3126589454', 'restrepo', 'bogota');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabladespachos`
--

CREATE TABLE `tabladespachos` (
  `IDDESPACHO` int(11) NOT NULL,
  `FECHADESPACHO` date NOT NULL,
  `IDFACTURA` int(11) NOT NULL,
  `OBSERVACIONES` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabladespachos`
--

INSERT INTO `tabladespachos` (`IDDESPACHO`, `FECHADESPACHO`, `IDFACTURA`, `OBSERVACIONES`) VALUES
(4, '0000-00-00', 5, ''),
(5, '0000-00-00', 5, 'madre y plomo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablaempleados`
--

CREATE TABLE `tablaempleados` (
  `IDEMPLEADOS` int(11) NOT NULL,
  `NOMBRE1` varchar(25) NOT NULL,
  `NOMBRE2` varchar(25) NOT NULL,
  `APELLIDO1` varchar(25) NOT NULL,
  `APELLIDO2` varchar(25) NOT NULL,
  `TIPODOCUMENTO` varchar(25) NOT NULL,
  `DOCUMENTO` varchar(25) NOT NULL,
  `IDCARGO` int(11) NOT NULL,
  `DIRECCION` varchar(25) NOT NULL,
  `TELEFONOFIJO` varchar(25) NOT NULL,
  `CELULAR` varchar(25) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `ULTIMOESTUDIOSREALIZADOS` varchar(25) NOT NULL,
  `INSTITUCION` varchar(25) NOT NULL,
  `PERIODO` varchar(25) NOT NULL,
  `ULTIMAREFERENCIALABORAL` varchar(25) NOT NULL,
  `EMPRESA` varchar(25) NOT NULL,
  `JEFEINMEDIATO` varchar(25) NOT NULL,
  `TELCONTACTO` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tablaempleados`
--

INSERT INTO `tablaempleados` (`IDEMPLEADOS`, `NOMBRE1`, `NOMBRE2`, `APELLIDO1`, `APELLIDO2`, `TIPODOCUMENTO`, `DOCUMENTO`, `IDCARGO`, `DIRECCION`, `TELEFONOFIJO`, `CELULAR`, `EMAIL`, `ULTIMOESTUDIOSREALIZADOS`, `INSTITUCION`, `PERIODO`, `ULTIMAREFERENCIALABORAL`, `EMPRESA`, `JEFEINMEDIATO`, `TELCONTACTO`) VALUES
(5, '', '', '', '', '', '', 1, '', '', '', '', '', '', '', '', '', '', ''),
(6, 'lolo', 'carlos', 'sanches', 'rodriguez', 'cedula', '1012598784', 1, 'carrea 1 # 42 - 65 ', '1234568', '3124567895', 'lol@hotmail.com', '2020', 'INCAP', '2020-A', 'Carlos Haumada', 'Los tronquitos', 'Diego Pelaez ', '312457865');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablafacturacabeza`
--

CREATE TABLE `tablafacturacabeza` (
  `IDFACTURA` int(11) NOT NULL,
  `FECHA` datetime NOT NULL,
  `IDCLIENTE` int(11) NOT NULL,
  `IDEMPLEADO` int(11) NOT NULL,
  `FECHAENTREGA` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tablafacturacabeza`
--

INSERT INTO `tablafacturacabeza` (`IDFACTURA`, `FECHA`, `IDCLIENTE`, `IDEMPLEADO`, `FECHAENTREGA`) VALUES
(5, '0000-00-00 00:00:00', 1, 5, '0000-00-00 00:00:00'),
(6, '0000-00-00 00:00:00', 1, 5, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablafacturadetalle`
--

CREATE TABLE `tablafacturadetalle` (
  `IDFACTURADETALLE` int(11) NOT NULL,
  `IDFACTURA` int(11) NOT NULL,
  `IDPRODUCTO` int(11) NOT NULL,
  `FORMADEPAGO` varchar(25) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `SUBTOTAL` double NOT NULL,
  `IVA` double NOT NULL,
  `DESCUENTO` double NOT NULL,
  `NETO` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tablafacturadetalle`
--

INSERT INTO `tablafacturadetalle` (`IDFACTURADETALLE`, `IDFACTURA`, `IDPRODUCTO`, `FORMADEPAGO`, `CANTIDAD`, `SUBTOTAL`, `IVA`, `DESCUENTO`, `NETO`) VALUES
(1, 5, 8, '', 0, 0, 0, 0, 0),
(2, 5, 8, 'efectivo', 2300, 1500000, 250000, 20, 1250000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablagarantias`
--

CREATE TABLE `tablagarantias` (
  `IDGARANTIAS` int(11) NOT NULL,
  `FECHAINGRESO` date NOT NULL,
  `IDPRODUCTO` int(11) NOT NULL,
  `CANTIDAD` varchar(25) NOT NULL,
  `IDCLIENTE` int(11) NOT NULL,
  `FECHAENTREGA` date NOT NULL COMMENT 'MAXIMO 10 DIAS DESPUES FECHA DE INGRESO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tablagarantias`
--

INSERT INTO `tablagarantias` (`IDGARANTIAS`, `FECHAINGRESO`, `IDPRODUCTO`, `CANTIDAD`, `IDCLIENTE`, `FECHAENTREGA`) VALUES
(2, '0000-00-00', 8, '', 1, '0000-00-00'),
(3, '0000-00-00', 8, '1026598745', 1, '0000-00-00'),
(4, '0000-00-00', 8, '1026598745', 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablapedidocabeza`
--

CREATE TABLE `tablapedidocabeza` (
  `IDPEDIDO` int(11) NOT NULL,
  `FECHA` datetime NOT NULL,
  `IDPROVEEDOR` int(11) NOT NULL,
  `IDEMPLEADO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tablapedidocabeza`
--

INSERT INTO `tablapedidocabeza` (`IDPEDIDO`, `FECHA`, `IDPROVEEDOR`, `IDEMPLEADO`) VALUES
(1, '0000-00-00 00:00:00', 1, 5),
(2, '0000-00-00 00:00:00', 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablapedidodetalle`
--

CREATE TABLE `tablapedidodetalle` (
  `IDPEDIDODETALLE` int(11) NOT NULL,
  `IDPEDIDO` int(11) NOT NULL,
  `IDPRODUCTO` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `SUBTOTAL` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tablapedidodetalle`
--

INSERT INTO `tablapedidodetalle` (`IDPEDIDODETALLE`, `IDPEDIDO`, `IDPRODUCTO`, `CANTIDAD`, `SUBTOTAL`) VALUES
(1, 1, 8, 0, 0),
(3, 1, 8, 1026598745, 123456),
(4, 1, 8, 1026598745, 123456),
(5, 1, 8, 1026598745, 123456);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablaproveedores`
--

CREATE TABLE `tablaproveedores` (
  `IDPROVEEDORES` int(11) NOT NULL,
  `RAZONSOCIAL` varchar(25) NOT NULL,
  `TIPODOCUMENTO` varchar(25) NOT NULL,
  `NODOCUMENTO` varchar(25) NOT NULL,
  `DIRECCION` varchar(25) NOT NULL,
  `TELEFONO` varchar(25) NOT NULL,
  `NOMBRECONTACTO` varchar(25) NOT NULL,
  `TELEFONOCONTACTO` varchar(25) NOT NULL,
  `EMAILCONTACTO` varchar(25) NOT NULL,
  `TIPODEPRODUCTO` varchar(25) NOT NULL COMMENT 'MADERA/HERRAJES/PINTURA/TELAS/VIDRIOS/TABLADOS'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tablaproveedores`
--

INSERT INTO `tablaproveedores` (`IDPROVEEDORES`, `RAZONSOCIAL`, `TIPODOCUMENTO`, `NODOCUMENTO`, `DIRECCION`, `TELEFONO`, `NOMBRECONTACTO`, `TELEFONOCONTACTO`, `EMAILCONTACTO`, `TIPODEPRODUCTO`) VALUES
(1, 'Persona natural', 'pasaporte', '1026598745', 'calle 1 bis # 43-45', '7235968', 'Ernesto', '3125698795', 'ernesto@gmail.com', 'MADERA'),
(2, 'Persona natural', 'pasaporte', '1026598745', 'calle 1 bis # 43-45', '7235968', 'Ernesto', '3125698795', 'ernesto@gmail.com', 'MADERA'),
(3, 'Persona natural', 'pasaporte', '1026598745', 'calle 1 bis # 43-45', '7235968', 'Ernesto', '3125698795', 'ernesto@gmail.com', 'MADERA'),
(4, 'Persona natural', 'pasaporte', '1026598745', 'calle 1 bis # 43-45', '7235968', 'Ernesto', '3125698795', 'ernesto@gmail.com', 'MADERA'),
(5, 'Persona natural', 'pasaporte', '1026598745', 'calle 1 bis # 43-45', '7235968', 'Ernesto', '3125698795', 'ernesto@gmail.com', 'MADERA'),
(6, 'Persona natural', 'pasaporte', '1026598745', 'calle 1 bis # 43-45', '7235968', 'Ernesto', '3125698795', 'ernesto@gmail.com', 'MADERA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoclientes`
--

CREATE TABLE `tipoclientes` (
  `IDTIPO` int(11) NOT NULL,
  `DESCRIPCION` varchar(25) NOT NULL,
  `DESCUENTO` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipoclientes`
--

INSERT INTO `tipoclientes` (`IDTIPO`, `DESCRIPCION`, `DESCUENTO`) VALUES
(3, 'HONDA', '50'),
(4, 'KTM', '15%'),
(5, 'PULSAR', '20'),
(6, 'KTM', '15%'),
(7, 'AKT', '10%'),
(8, 'AKT', '10%'),
(9, 'AKT', '10%'),
(10, 'AKT', '10%'),
(11, 'AKT', '10%'),
(12, ' oscar', '13'),
(13, ' oscar', '13'),
(14, ' oscar', '13'),
(15, 'AKT', '10%'),
(16, 'AKT', '10%'),
(17, 'AKT', '10%'),
(18, 'AKT', '10%'),
(19, 'AKT', '10%'),
(20, 'AKT', '10%'),
(21, 'AKT', '10%'),
(22, 'AKT', '10%'),
(23, 'AKT', '10%'),
(24, 'KTM', '15%'),
(25, 'KTM', '15%'),
(26, 'KTM', '15%'),
(27, 'KTM', '15%'),
(31, '', ''),
(32, '', ''),
(33, 'Ernesto ', '6%'),
(34, ' ', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contactenos`
--
ALTER TABLE `contactenos`
  ADD PRIMARY KEY (`IDCONTACTO`);

--
-- Indices de la tabla `tablacargos`
--
ALTER TABLE `tablacargos`
  ADD PRIMARY KEY (`IDCARGO`);

--
-- Indices de la tabla `tablacatalogo_productos`
--
ALTER TABLE `tablacatalogo_productos`
  ADD PRIMARY KEY (`IDPRODUCTO`),
  ADD KEY `PROVEEDORFKS` (`IDPROVEEDOR`);

--
-- Indices de la tabla `tablaclientes`
--
ALTER TABLE `tablaclientes`
  ADD PRIMARY KEY (`IDCLIENTES`),
  ADD KEY `TIPOFK` (`IDTIPO`);

--
-- Indices de la tabla `tabladespachos`
--
ALTER TABLE `tabladespachos`
  ADD PRIMARY KEY (`IDDESPACHO`),
  ADD KEY `FACTURAFKS` (`IDFACTURA`);

--
-- Indices de la tabla `tablaempleados`
--
ALTER TABLE `tablaempleados`
  ADD PRIMARY KEY (`IDEMPLEADOS`),
  ADD KEY `CARCOFK` (`IDCARGO`);

--
-- Indices de la tabla `tablafacturacabeza`
--
ALTER TABLE `tablafacturacabeza`
  ADD PRIMARY KEY (`IDFACTURA`),
  ADD KEY `CLIENTESSFK` (`IDCLIENTE`),
  ADD KEY `EMPLEADOSFK` (`IDEMPLEADO`);

--
-- Indices de la tabla `tablafacturadetalle`
--
ALTER TABLE `tablafacturadetalle`
  ADD PRIMARY KEY (`IDFACTURADETALLE`),
  ADD KEY `FACTURAFK` (`IDFACTURA`),
  ADD KEY `PRODUCTOSSFK` (`IDPRODUCTO`);

--
-- Indices de la tabla `tablagarantias`
--
ALTER TABLE `tablagarantias`
  ADD PRIMARY KEY (`IDGARANTIAS`),
  ADD KEY `CLIENTESFK` (`IDCLIENTE`),
  ADD KEY `PRODUCTOFK` (`IDPRODUCTO`);

--
-- Indices de la tabla `tablapedidocabeza`
--
ALTER TABLE `tablapedidocabeza`
  ADD PRIMARY KEY (`IDPEDIDO`),
  ADD KEY `EMPLEADOSSFK` (`IDEMPLEADO`),
  ADD KEY `PROVEEDORFK` (`IDPROVEEDOR`);

--
-- Indices de la tabla `tablapedidodetalle`
--
ALTER TABLE `tablapedidodetalle`
  ADD PRIMARY KEY (`IDPEDIDODETALLE`),
  ADD KEY `PEDIDOFK` (`IDPEDIDO`),
  ADD KEY `PRODUCTOSFK` (`IDPRODUCTO`);

--
-- Indices de la tabla `tablaproveedores`
--
ALTER TABLE `tablaproveedores`
  ADD PRIMARY KEY (`IDPROVEEDORES`);

--
-- Indices de la tabla `tipoclientes`
--
ALTER TABLE `tipoclientes`
  ADD PRIMARY KEY (`IDTIPO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contactenos`
--
ALTER TABLE `contactenos`
  MODIFY `IDCONTACTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tablacargos`
--
ALTER TABLE `tablacargos`
  MODIFY `IDCARGO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tablacatalogo_productos`
--
ALTER TABLE `tablacatalogo_productos`
  MODIFY `IDPRODUCTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tablaclientes`
--
ALTER TABLE `tablaclientes`
  MODIFY `IDCLIENTES` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tabladespachos`
--
ALTER TABLE `tabladespachos`
  MODIFY `IDDESPACHO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tablaempleados`
--
ALTER TABLE `tablaempleados`
  MODIFY `IDEMPLEADOS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tablafacturacabeza`
--
ALTER TABLE `tablafacturacabeza`
  MODIFY `IDFACTURA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tablafacturadetalle`
--
ALTER TABLE `tablafacturadetalle`
  MODIFY `IDFACTURADETALLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tablagarantias`
--
ALTER TABLE `tablagarantias`
  MODIFY `IDGARANTIAS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tablapedidocabeza`
--
ALTER TABLE `tablapedidocabeza`
  MODIFY `IDPEDIDO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tablapedidodetalle`
--
ALTER TABLE `tablapedidodetalle`
  MODIFY `IDPEDIDODETALLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tablaproveedores`
--
ALTER TABLE `tablaproveedores`
  MODIFY `IDPROVEEDORES` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipoclientes`
--
ALTER TABLE `tipoclientes`
  MODIFY `IDTIPO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tablacatalogo_productos`
--
ALTER TABLE `tablacatalogo_productos`
  ADD CONSTRAINT `PROVEEDORFKS` FOREIGN KEY (`IDPROVEEDOR`) REFERENCES `tablaproveedores` (`IDPROVEEDORES`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tablaclientes`
--
ALTER TABLE `tablaclientes`
  ADD CONSTRAINT `TIPOFK` FOREIGN KEY (`IDTIPO`) REFERENCES `tipoclientes` (`IDTIPO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabladespachos`
--
ALTER TABLE `tabladespachos`
  ADD CONSTRAINT `FACTURAFKS` FOREIGN KEY (`IDFACTURA`) REFERENCES `tablafacturacabeza` (`IDFACTURA`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tablaempleados`
--
ALTER TABLE `tablaempleados`
  ADD CONSTRAINT `CARCOFK` FOREIGN KEY (`IDCARGO`) REFERENCES `tablacargos` (`IDCARGO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tablafacturacabeza`
--
ALTER TABLE `tablafacturacabeza`
  ADD CONSTRAINT `CLIENTESSFK` FOREIGN KEY (`IDCLIENTE`) REFERENCES `tablaclientes` (`IDCLIENTES`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `EMPLEADOSFK` FOREIGN KEY (`IDEMPLEADO`) REFERENCES `tablaempleados` (`IDEMPLEADOS`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tablafacturadetalle`
--
ALTER TABLE `tablafacturadetalle`
  ADD CONSTRAINT `FACTURAFK` FOREIGN KEY (`IDFACTURA`) REFERENCES `tablafacturacabeza` (`IDFACTURA`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PRODUCTOSSFK` FOREIGN KEY (`IDPRODUCTO`) REFERENCES `tablacatalogo_productos` (`IDPRODUCTO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tablagarantias`
--
ALTER TABLE `tablagarantias`
  ADD CONSTRAINT `CLIENTESFK` FOREIGN KEY (`IDCLIENTE`) REFERENCES `tablaclientes` (`IDCLIENTES`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PRODUCTOFK` FOREIGN KEY (`IDPRODUCTO`) REFERENCES `tablacatalogo_productos` (`IDPRODUCTO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tablapedidocabeza`
--
ALTER TABLE `tablapedidocabeza`
  ADD CONSTRAINT `EMPLEADOSSFK` FOREIGN KEY (`IDEMPLEADO`) REFERENCES `tablaempleados` (`IDEMPLEADOS`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PROVEEDORFK` FOREIGN KEY (`IDPROVEEDOR`) REFERENCES `tablaproveedores` (`IDPROVEEDORES`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tablapedidodetalle`
--
ALTER TABLE `tablapedidodetalle`
  ADD CONSTRAINT `PEDIDOFK` FOREIGN KEY (`IDPEDIDO`) REFERENCES `tablapedidocabeza` (`IDPEDIDO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PRODUCTOSFK` FOREIGN KEY (`IDPRODUCTO`) REFERENCES `tablacatalogo_productos` (`IDPRODUCTO`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
