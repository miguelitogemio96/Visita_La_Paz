-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 31-03-2022 a las 00:56:56
-- Versión del servidor: 8.0.18
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `visita_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comentario` int(11) NOT NULL,
  `id_pub` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `des` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `likes` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id_comentario`, `id_pub`, `id_usuario`, `fecha`, `des`, `likes`) VALUES
(1, 10, 40, '2022-03-09', 'probando comentarios', 0),
(2, 11, 40, '2022-03-09', 'probando comentarios', 0),
(3, 11, 40, '2022-03-09', 'probando comentarios', 0),
(4, 12, 40, '2022-03-09', 'Hola Papus!!!', 0),
(5, 12, 40, '2022-03-09', 'probando 2', 0),
(6, 16, 40, '2022-03-09', 'probando otra vez', 0),
(7, 13, 50, '2022-03-09', 'Hay Promocion por 10 personas?', 0),
(8, 14, 54, '2022-03-09', 'Mas informacion al 7047223 por favor...', 0),
(9, 15, 54, '2022-03-09', 'Tiene en Verde?', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id_imagen` int(11) NOT NULL,
  `tipo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `des` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `imagen` varbinary(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `negocios`
--

CREATE TABLE `negocios` (
  `id_negocio` int(11) NOT NULL,
  `id_cuenta` int(11) NOT NULL,
  `id_imagen` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `des` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `categoria` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ubicacion` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `link-correo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `negocios`
--

INSERT INTO `negocios` (`id_negocio`, `id_cuenta`, `id_imagen`, `nombre`, `des`, `categoria`, `ubicacion`, `telefono`, `link-correo`, `estado`) VALUES
(1, 10, 34, 'El Buen Gusto de Hugo', 'Restaurante 5 estrellas. expertos en comidas a la parrilla, con buenos ambientes para turistas y platos tipicos a disposicion, se cuenta con Delivery.', 'comidas', 'La Paz', '22626636', 'Buen Gusto@hotmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operaciones`
--

CREATE TABLE `operaciones` (
  `id_operacion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_prod_ser` int(11) NOT NULL,
  `id_pago` int(11) NOT NULL,
  `tipo_tran` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `cant-cupos` int(11) NOT NULL,
  `des` varchar(500) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id_pago` int(11) NOT NULL,
  `id_negocio` int(11) NOT NULL,
  `banco-empresa` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `numero_cuenta` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `des` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `verificado` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id_persona` int(11) NOT NULL,
  `paterno` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `materno` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `fecnac` date NOT NULL,
  `ci` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_servicios`
--

CREATE TABLE `productos_servicios` (
  `id_prod_ser` int(11) NOT NULL,
  `id_negocio` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `des` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `duracion` int(11) DEFAULT NULL,
  `restricciones` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cant-cupos` int(11) NOT NULL,
  `costo` int(11) NOT NULL,
  `tipo` varchar(1) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos_servicios`
--

INSERT INTO `productos_servicios` (`id_prod_ser`, `id_negocio`, `nombre`, `des`, `duracion`, `restricciones`, `cant-cupos`, `costo`, `tipo`) VALUES
(101, 10, 'Bicicleta Montañera', 'Bicicleta para viajes a traves de montañas y desensos. Aro 20', NULL, 'mayores de 20 años', 10, 1000, 'p'),
(102, 10, 'Tienda de Campaña', 'Carpa impermeable de 4x4 par 8 personas, ideal para acampar. Tamaño 6X6 con capacidad para 8 personas', NULL, NULL, 10, 800, 'p'),
(103, 10, 'Sleeping', 'Sleeping de viaje impermeable', NULL, NULL, 20, 400, 'p'),
(104, 10, 'Bolsa ', 'producto indispensable para viajes largos. Capacidad de 200 litros e impermeable, ideal para llevar equipo de supervivencia', NULL, NULL, 10, 700, 'p'),
(105, 10, 'Mochila', 'producto indispensable para viajes largos.', NULL, NULL, 10, 700, 'p'),
(106, 10, 'Bolso Ecologico', 'Bolso Ecologico que ayuda a la no contaminacion del medio ambiente. Viaje cuidando a la fauna y flora!', NULL, NULL, 25, 300, 'p'),
(107, 10, 'Baston', 'producto indispensable para viajes largos.', NULL, NULL, 10, 700, 'p'),
(108, 10, 'Navajas', 'producto indispensable para viajes largos.', NULL, NULL, 10, 700, 'p'),
(109, 10, 'Tomatodos', 'producto indispensable para viajes largos.', NULL, NULL, 10, 700, 'p'),
(110, 10, 'Botas', 'producto indispensable para viajes largos.', NULL, NULL, 10, 700, 'p'),
(111, 10, 'Botellas', 'producto indispensable para viajes largos.', NULL, NULL, 10, 700, 'p'),
(112, 10, 'Kit de Supervivencia', 'producto indispensable para viajes largos.', NULL, NULL, 10, 700, 'p'),
(113, 10, 'Linterna ', 'producto indispensable para viajes largos.', NULL, NULL, 10, 700, 'p'),
(114, 10, 'Encendedor', 'producto indispensable para viajes largos.', NULL, NULL, 10, 700, 'p'),
(115, 10, 'Sogas', 'producto indispensable para viajes largos.', NULL, NULL, 10, 700, 'p'),
(116, 20, 'Hotel Villa Verde', 'Disfrute del hospedaje en uno de los mejores hoteles de Coroico. Buena Vista y comodidad para usted y su familia!', NULL, NULL, 10, 700, 's'),
(117, 20, 'Hotel Presidente', 'Servicio de Hospedaje 5 estrellas, Buffet matutino, Almuerzo, Cena, area recreacional, llame ya al 70435563', NULL, NULL, 10, 700, 's'),
(118, 20, 'Viaje Por Bolivia', 'Tour por todos los departamentos de Bolivia, viaje desde La Paz y recorra todos los departamentos', NULL, NULL, 10, 600, 's'),
(119, 20, 'Tour Telefericos', 'Recorrido turistico por todas las lineas de Teleferico de la ciudad maravilla, Sesion de fotos incluido', NULL, NULL, 10, 600, 's'),
(121, 20, 'Tour Mallasa', 'Gran Viaje alredor de Mallasa, disfrute de paisajes extravagantes y buena comida mientras pasea en el BusLaPaz junto a musica en vivo!', NULL, NULL, 10, 600, 's'),
(122, 20, 'Noche de Museos', 'Servicio Turistico ofrece tour alrededor de los museos mas importantes de La Paz, todo museo incluye un guia turistico con experiencia.', NULL, NULL, 10, 600, 's'),
(123, 20, 'Una noche en el Cementerio', 'Tour guiado por los alrededores del Cementerio en horario nocturo, Unica oportunidad, ademas se cuentan con relatores que cuenten las mas populares leyendas', NULL, NULL, 10, 600, 's'),
(124, 20, 'Hospedaje Hotel Gloria', 'lorem fdsa  dsafsfgdh fd g d s ad fa sdgdf  gh fd s gasdgf  sadfsdagret234  546dfs da ds trf t s.', NULL, NULL, 10, 600, 's'),
(125, 20, 'Tour Carnavalero', 'lorem fdsa  dsafsfgdh fd g d s ad fa sdgdf  gh fd s gasdgf  sadfsdagret234  546dfs da ds trf t s.', NULL, NULL, 10, 600, 's'),
(126, 20, 'TOur calle de las Brujas', 'lorem fdsa  dsafsfgdh fd g d s ad fa sdgdf  gh fd s gasdgf  sadfsdagret234  546dfs da ds trf t s.', NULL, NULL, 10, 600, 's'),
(127, 20, 'Visita Museo Cultural', 'lorem fdsa  dsafsfgdh fd g d s ad fa sdgdf  gh fd s gasdgf  sadfsdagret234  546dfs da ds trf t s.', NULL, NULL, 10, 600, 's'),
(128, 20, 'Visita Museo Tiawanaku', 'lorem fdsa  dsafsfgdh fd g d s ad fa sdgdf  gh fd s gasdgf  sadfsdagret234  546dfs da ds trf t s.', NULL, NULL, 10, 800, 's'),
(129, 20, 'Tour Yungas', 'lorem fdsa  dsafsfgdh fd g d s ad fa sdgdf  gh fd s gasdgf  sadfsdagret234  546dfs da ds trf t s.', NULL, NULL, 10, 600, 's'),
(130, 20, 'Carnaval de Oruro', 'lorem fdsa  dsafsfgdh fd g d s ad fa sdgdf  gh fd s gasdgf  sadfsdagret234  546dfs da ds trf t s.', NULL, NULL, 10, 600, 's');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propuestas`
--

CREATE TABLE `propuestas` (
  `id_propuesta` int(11) NOT NULL,
  `id_negocio` int(11) NOT NULL,
  `id_imagen` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `tipo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `costo` int(11) NOT NULL,
  `detalles` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `restricciones` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `cantidad-cupos` int(11) NOT NULL,
  `evaluacion` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id_pub` int(11) NOT NULL,
  `id_prod_ser` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `titulo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `des` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `likes` int(11) NOT NULL DEFAULT '0',
  `estado` varchar(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`id_pub`, `id_prod_ser`, `id_usuario`, `fecha`, `titulo`, `des`, `likes`, `estado`) VALUES
(11, 101, 11, '2022-03-17', 'Promo Bicicleta de Locura', 'Gran Promocion Por el mes del padre, Bicicletas montañeras con 30% de descuentos, Que esperas! No dejes pasar esta oportunidad', 0, '1'),
(12, 102, 11, '2022-03-17', 'Tienda en Oferta', 'Por renovacion de se rematan Tiendas de campaña para Acampar, solo por esta semana! Aproveche y llevese la tienda por solo 800 bs!', 0, '0'),
(13, 116, 12, '2022-03-17', 'Villa Oferta', 'Ven a pasar un fin de semana en el mejor Hotel de Coroico, Grupo Kjarkas en vivo invitadopor el mes del padre! Disfruta en Familia! ', 0, '0'),
(14, 128, 12, '2022-03-17', 'tiawanacu es cultura', 'Disfruta de este Tour a Cargo de el Gobierno Autonomo municipal de la Paz GAMLP y visita las ruinas de una de las mas importantes culturas Andinas', 0, '0'),
(15, 103, 11, '2022-03-17', 'Paquete CArnavalero', 'Grand promocion de Tour carnavalero en La Paz, celebra junto a las mejores comparsas el carnaval paceño y Jiska Anata', 0, '0'),
(16, 104, 12, '2022-03-17', 'Jiska Anata', 'Grand promocion de Tour carnavalero en La Paz, celebra junto a las mejores comparsas el carnaval paceño y Jiska Anata', 0, '0'),
(17, 118, 13, '2022-03-17', 'Traje Tipico CHUTA', 'Grand promocion de Tour carnavalero en La Paz, celebra junto a las mejores comparsas el carnaval paceño y Jiska Anata', 0, '0'),
(18, 119, 13, '2022-03-17', 'Viaje Turistico Coroico', 'Grand promocion de Tour carnavalero en La Paz, celebra junto a las mejores comparsas el carnaval paceño y Jiska Anata', 0, '0'),
(19, 120, 13, '2022-03-17', 'Alasitas Maravilla', 'Grand promocion de Tour carnavalero en La Paz, celebra junto a las mejores comparsas el carnaval paceño y Jiska Anata', 0, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `tipo_usuario` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `estado` varchar(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `id_persona`, `username`, `password`, `correo`, `tipo_usuario`, `estado`) VALUES
(10, 10, 'miguelito', '123456', 'miguelitogemio96@gmail.com', 'a', '1'),
(14, 10, 'mike', '1234', '@hotmail.com', 'g', '1'),
(17, 10, 'joselito', '123', '@hotmail.com', 'g', '1'),
(40, 40, 'valeria', '1010', 'valeria86@gmail.com', 'c', '1'),
(42, 10, 'Jose Miguel', '2020', '@hotmail.com', 'c', '0'),
(48, 10, 'brian', '43', '@hotmail.com', 'c', '0'),
(49, 10, 'laura', '45', '@hotmail.com', 'c', '1'),
(50, 10, 'Luis34', '3434', '@hotmail.com', 'c', '1'),
(52, 10, 'juanito', '5555', '@hotmail.com', 'g', '0'),
(53, 10, 'joseluis', '2020', '@hotmail.com', 'g', '1'),
(54, 10, 'michael55', '5555', '@hotmail.com', 'c', '0');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentario`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id_imagen`);

--
-- Indices de la tabla `negocios`
--
ALTER TABLE `negocios`
  ADD PRIMARY KEY (`id_negocio`);

--
-- Indices de la tabla `operaciones`
--
ALTER TABLE `operaciones`
  ADD PRIMARY KEY (`id_operacion`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id_pago`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id_persona`);

--
-- Indices de la tabla `productos_servicios`
--
ALTER TABLE `productos_servicios`
  ADD PRIMARY KEY (`id_prod_ser`);

--
-- Indices de la tabla `propuestas`
--
ALTER TABLE `propuestas`
  ADD PRIMARY KEY (`id_propuesta`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id_pub`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id_imagen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `negocios`
--
ALTER TABLE `negocios`
  MODIFY `id_negocio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `operaciones`
--
ALTER TABLE `operaciones`
  MODIFY `id_operacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos_servicios`
--
ALTER TABLE `productos_servicios`
  MODIFY `id_prod_ser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT de la tabla `propuestas`
--
ALTER TABLE `propuestas`
  MODIFY `id_propuesta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id_pub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
