--
-- Eliminar todas las tablas
--


DROP DATABASE `u463129590_github_actions`;

CREATE DATABASE  `u463129590_github_actions`;

USE `u463129590_github_actions`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cantidad_reportes`
--

CREATE TABLE `cantidad_reportes` (
  `id` int(200) NOT NULL,
  `cantidad` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cantidad_reportes`
--

INSERT INTO `cantidad_reportes` (`id`, `cantidad`) VALUES
(1, '00025');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `controles_sec_inf`
--

CREATE TABLE `controles_sec_inf` (
  `id` int(100) NOT NULL,
  `id_reporte` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `it_control` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `frecuencia` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enero` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `febrero` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marzo` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abril` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mayo` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `junio` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `julio` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agosto` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `septiembre` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `octubre` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noviembre` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diciembre` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ejecutor` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` int(100) NOT NULL,
  `id_reporte` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sistema` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inventariado` int(100) DEFAULT NULL,
  `no_inventariado` int(100) DEFAULT NULL,
  `porcentaje_inv` int(100) DEFAULT NULL,
  `porcentaje_no_inv` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id`, `id_reporte`, `sistema`, `inventariado`, `no_inventariado`, `porcentaje_inv`, `porcentaje_no_inv`) VALUES
(65, '00025', 'unix', 20, 10, 67, 33),
(66, '00025', 'wintel', 40, 2, 95, 5),
(67, '00025', 'networking', 60, 23, 72, 28),
(68, '00025', 'network_security', 50, 10, 83, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `networking`
--

CREATE TABLE `networking` (
  `id` int(100) NOT NULL,
  `id_reporte` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `compliance` int(100) DEFAULT NULL,
  `no_compliance` int(100) DEFAULT NULL,
  `total_equipos` int(100) DEFAULT NULL,
  `eos_comp` int(100) DEFAULT NULL,
  `eos_no_comp` int(100) DEFAULT NULL,
  `eos_total` int(100) DEFAULT NULL,
  `hard_comp` int(100) DEFAULT NULL,
  `hard_no_comp` int(100) DEFAULT NULL,
  `hard_total` int(100) DEFAULT NULL,
  `vulns_comp` int(100) DEFAULT NULL,
  `vulns_no_comp` int(100) DEFAULT NULL,
  `vulns_total` int(100) DEFAULT NULL,
  `porcentaje_comp` int(100) DEFAULT NULL,
  `porcentaje_no_comp` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `networking`
--

INSERT INTO `networking` (`id`, `id_reporte`, `compliance`, `no_compliance`, `total_equipos`, `eos_comp`, `eos_no_comp`, `eos_total`, `hard_comp`, `hard_no_comp`, `hard_total`, `vulns_comp`, `vulns_no_comp`, `vulns_total`, `porcentaje_comp`, `porcentaje_no_comp`) VALUES
(29, '00025', 200, 20, 220, 300, 10, 310, 202, 10, 212, 102, 20, 122, 91, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `network_security`
--

CREATE TABLE `network_security` (
  `id` int(100) NOT NULL,
  `id_reporte` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `compliance` int(100) DEFAULT NULL,
  `exceptuado` int(100) DEFAULT NULL,
  `no_compliance` int(100) DEFAULT NULL,
  `total_equipos` int(100) DEFAULT NULL,
  `eos_comp` int(100) DEFAULT NULL,
  `eos_exce` int(100) DEFAULT NULL,
  `eos_no_comp` int(100) DEFAULT NULL,
  `eos_total` int(100) DEFAULT NULL,
  `hard_comp` int(100) DEFAULT NULL,
  `hard_exce` int(100) DEFAULT NULL,
  `hard_no_comp` int(100) DEFAULT NULL,
  `hard_total` int(100) DEFAULT NULL,
  `vulns_comp` int(100) DEFAULT NULL,
  `vulns_exce` int(100) DEFAULT NULL,
  `vulns_no_comp` int(100) DEFAULT NULL,
  `vulns_total` int(100) DEFAULT NULL,
  `porcentaje_comp` int(100) DEFAULT NULL,
  `porcentaje_no_comp` int(100) DEFAULT NULL,
  `porcentaje_exc` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `network_security`
--

INSERT INTO `network_security` (`id`, `id_reporte`, `compliance`, `exceptuado`, `no_compliance`, `total_equipos`, `eos_comp`, `eos_exce`, `eos_no_comp`, `eos_total`, `hard_comp`, `hard_exce`, `hard_no_comp`, `hard_total`, `vulns_comp`, `vulns_exce`, `vulns_no_comp`, `vulns_total`, `porcentaje_comp`, `porcentaje_no_comp`, `porcentaje_exc`) VALUES
(29, '00025', 300, 10, 50, 360, 200, 20, 100, 320, 100, 20, 1, 121, 200, 20, 0, 220, 83, 14, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promedios`
--

CREATE TABLE `promedios` (
  `id` int(100) NOT NULL,
  `id_reporte` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `promedio_actual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `promedios`
--

INSERT INTO `promedios` (`id`, `id_reporte`, `promedio_actual`) VALUES
(11, '00025', 84);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `id` int(100) NOT NULL,
  `id_reporte` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_reporte` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_creacion` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_act` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `reportes`
--

INSERT INTO `reportes` (`id`, `id_reporte`, `nombre_reporte`, `fecha_creacion`, `fecha_act`) VALUES
(29, '00025', 'Reporte SecOps_16062020_00025', '16062020', '16/06/2020 09:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unix`
--

CREATE TABLE `unix` (
  `id` int(100) NOT NULL,
  `id_reporte` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `compliance` int(100) DEFAULT NULL,
  `no_compliance` int(100) DEFAULT NULL,
  `total_equipos` int(100) DEFAULT NULL,
  `av_act_comp` int(100) DEFAULT NULL,
  `av_act_no_comp` int(100) DEFAULT NULL,
  `av_act_total` int(100) DEFAULT NULL,
  `parches_comp` int(100) DEFAULT NULL,
  `parches_no_comp` int(100) DEFAULT NULL,
  `parches_total` int(100) DEFAULT NULL,
  `hard_comp` int(100) DEFAULT NULL,
  `hard_no_comp` int(100) DEFAULT NULL,
  `hard_total` int(100) DEFAULT NULL,
  `vulns_comp` int(100) DEFAULT NULL,
  `vulns_no_comp` int(100) DEFAULT NULL,
  `vulns_total` int(100) DEFAULT NULL,
  `porcentaje_comp` int(100) DEFAULT NULL,
  `porcentaje_no_comp` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `unix`
--

INSERT INTO `unix` (`id`, `id_reporte`, `compliance`, `no_compliance`, `total_equipos`, `av_act_comp`, `av_act_no_comp`, `av_act_total`, `parches_comp`, `parches_no_comp`, `parches_total`, `hard_comp`, `hard_no_comp`, `hard_total`, `vulns_comp`, `vulns_no_comp`, `vulns_total`, `porcentaje_comp`, `porcentaje_no_comp`) VALUES
(29, '00025', 64, 20, 84, 100, 20, 120, 200, 50, 250, 100, 70, 170, 200, 10, 210, 76, 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `nombre` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contrasena` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombre`, `apellido`, `email`, `usuario`, `contrasena`) VALUES
(1, 'gaston', 'barbaccia', 'gastonbarbaccia@hotmail.com', 'admin', 'ns2b7bfqbf'),
(2, 'cesar', 'barbaccia', 'cesarbarbaccia@hotmail.com', 'cesarbarbaccia', 'ns2b7bfqbf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wintel`
--

CREATE TABLE `wintel` (
  `id` int(100) NOT NULL,
  `id_reporte` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `compliance` int(100) DEFAULT NULL,
  `ra` int(100) DEFAULT NULL,
  `total_equipos` int(100) DEFAULT NULL,
  `av_act_comp` int(100) DEFAULT NULL,
  `av_act_no_comp` int(100) DEFAULT NULL,
  `av_act_total` int(100) DEFAULT NULL,
  `parches_comp` int(100) DEFAULT NULL,
  `parches_no_comp` int(100) DEFAULT NULL,
  `parches_total` int(100) DEFAULT NULL,
  `hard_comp` int(100) DEFAULT NULL,
  `hard_no_comp` int(100) DEFAULT NULL,
  `hard_total` int(100) DEFAULT NULL,
  `vulns_comp` int(100) DEFAULT NULL,
  `vulns_no_comp` int(100) DEFAULT NULL,
  `vulns_total` int(100) DEFAULT NULL,
  `porcentaje_comp` int(100) DEFAULT NULL,
  `porcentaje_no_comp` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `wintel`
--

INSERT INTO `wintel` (`id`, `id_reporte`, `compliance`, `ra`, `total_equipos`, `av_act_comp`, `av_act_no_comp`, `av_act_total`, `parches_comp`, `parches_no_comp`, `parches_total`, `hard_comp`, `hard_no_comp`, `hard_total`, `vulns_comp`, `vulns_no_comp`, `vulns_total`, `porcentaje_comp`, `porcentaje_no_comp`) VALUES
(29, '00025', 60, 10, 70, 100, 80, 180, 200, 10, 210, 350, 10, 360, 201, 50, 251, 86, 14);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cantidad_reportes`
--
ALTER TABLE `cantidad_reportes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `controles_sec_inf`
--
ALTER TABLE `controles_sec_inf`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `networking`
--
ALTER TABLE `networking`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `network_security`
--
ALTER TABLE `network_security`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `promedios`
--
ALTER TABLE `promedios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unix`
--
ALTER TABLE `unix`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wintel`
--
ALTER TABLE `wintel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cantidad_reportes`
--
ALTER TABLE `cantidad_reportes`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `controles_sec_inf`
--
ALTER TABLE `controles_sec_inf`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `networking`
--
ALTER TABLE `networking`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `network_security`
--
ALTER TABLE `network_security`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `promedios`
--
ALTER TABLE `promedios`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `unix`
--
ALTER TABLE `unix`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wintel`
--
ALTER TABLE `wintel`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

