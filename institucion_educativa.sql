-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2026 a las 15:35:51
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `institucion_educativa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_docente`
--

CREATE TABLE `datos_docente` (
  `id_docente` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nup` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `datos_docente`
--

INSERT INTO `datos_docente` (`id_docente`, `nombres`, `apellidos`, `nip`, `nup`) VALUES
(1, 'Miriam Mercedes', 'Galan de Guevara', '22392', '93292');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_estudiantes`
--

CREATE TABLE `datos_estudiantes` (
  `id_estudiante` int(11) NOT NULL,
  `id_responsable` int(11) NOT NULL,
  `id_seccion` int(11) DEFAULT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `numero_nie` varchar(20) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `sexo` enum('Masculino','Femenino') DEFAULT NULL,
  `nacionalidad` varchar(50) DEFAULT 'Salvadoreña',
  `correo_estudiante` varchar(100) DEFAULT NULL,
  `telefono_estudiante` varchar(15) DEFAULT NULL,
  `url_foto_imagen` varchar(255) DEFAULT NULL,
  `direccion_vivienda` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `datos_estudiantes`
--

INSERT INTO `datos_estudiantes` (`id_estudiante`, `id_responsable`, `id_seccion`, `nombres`, `apellidos`, `numero_nie`, `fecha_nacimiento`, `sexo`, `nacionalidad`, `correo_estudiante`, `telefono_estudiante`, `url_foto_imagen`, `direccion_vivienda`) VALUES
(1, 1, 1, 'Anderson Steven', 'Aguilar Quinteros', '19761484', '2008-05-10', 'Masculino', 'Salvadoreña', '19761484@clases.edu.sv', '6960-9416', NULL, 'SIN DATO'),
(2, 2, 1, 'Julio Ernesto', 'Alarcón Torres', '6302104', '2008-11-28', 'Masculino', 'Salvadoreña', '6302104@clases.edu.sv', '7488-2008', NULL, 'SIN DATO'),
(3, 3, 1, 'Nathaly Saraí', 'Benavídez Reyes', '6655590', '2008-03-25', 'Femenino', 'Salvadoreña', '6655590@clases.edu.sv', '7239-8721', NULL, 'SIN DATO'),
(4, 4, 1, 'Alisson Lilibeth', 'Campos Zúniga', '5484494', '2007-08-07', 'Femenino', 'Salvadoreña', '5484494@clases.edu.sv', '7833-1187', NULL, 'SIN DATO'),
(5, 5, 1, 'Jason Steven', 'Cárdenas Orellana', '6862652', '2007-10-04', 'Masculino', 'Salvadoreña', '6862652@clases.edu.sv', '6965-3564', NULL, 'SIN DATO'),
(6, 6, 1, 'Lenin Josafat', 'Castillo García', '3670449', '2008-06-11', 'Masculino', 'Salvadoreña', '3670449@clases.edu.sv', '6015-6793', NULL, 'SIN DATO'),
(7, 7, 1, 'José Antonio', 'Castro Benítez', '5484276', '2008-07-05', 'Masculino', 'Salvadoreña', '5484276@clases.edu.sv', '7046-6821', NULL, 'SIN DATO'),
(8, 8, 1, 'Génesis Stacy', 'Coreas Quiroz', '5485267', '2008-09-24', 'Femenino', 'Salvadoreña', '5485267@clases.edu.sv', '7854-3198', NULL, 'SIN DATO'),
(9, 9, 1, 'Mirna Melissa', 'Cruz Nieto', '2504413', '2008-01-26', 'Femenino', 'Salvadoreña', '2504413@clases.edu.sv', '7627-8276', NULL, 'SIN DATO'),
(10, 10, 1, 'Katherine Yaneth', 'Flores León', '5357169', '2007-06-03', 'Femenino', 'Salvadoreña', '5357169@clases.edu.sv', '7829-2542', NULL, 'SIN DATO'),
(11, 11, 1, 'Kevin Alexander', 'Gavidia Carrillo', '19759464', '2008-02-24', 'Masculino', 'Salvadoreña', '19759464@clases.edu.sv', '7507-7686', NULL, 'SIN DATO'),
(12, 12, 1, 'Dayris Emily', 'Granados Flores', '5484319', '2008-05-26', 'Femenino', 'Salvadoreña', '5484319@clases.edu.sv', '7401-0838', NULL, 'SIN DATO'),
(13, 13, 1, 'Fredy Mauricio', 'Henríquez Álvarez', '4033134', '2008-03-27', 'Masculino', 'Salvadoreña', '4033134@clases.edu.sv', '7880-5004', NULL, 'SIN DATO'),
(14, 14, 1, 'Naffry Gustavo', 'Henríquez Castillo', '6301884', '2008-01-28', 'Masculino', 'Salvadoreña', '6301884@clases.edu.sv', '6119-9491', NULL, 'SIN DATO'),
(15, 15, 1, 'Katerin Marisol', 'Hernández González', '6263799', '2008-02-17', 'Femenino', 'Salvadoreña', '6263799@clases.edu.sv', '68681048', NULL, 'SIN DATO'),
(16, 16, 1, 'Dugan Emmanuel', 'Hernández Maldonado', '2886870', '2007-12-12', 'Masculino', 'Salvadoreña', '2886870@clases.edu.sv', '7733-9575', NULL, 'SIN DATO'),
(17, 17, 1, 'Joseph Stanley', 'López Benavides', '5484279', '2008-06-15', 'Masculino', 'Salvadoreña', '5484279@clases.edu.sv', '7327-3504', NULL, 'SIN DATO'),
(18, 18, 1, 'Christopher Daniel', 'Manzanares Ascencio', '1985909', '2006-08-27', 'Masculino', 'Salvadoreña', '1985909@clases.edu.sv', '7535-2083', NULL, 'SIN DATO'),
(19, 19, 1, 'Henry Eliseo', 'Medrano García', '4799428', '2008-05-21', 'Masculino', 'Salvadoreña', '4799428@clases.edu.sv', '7016-2253', NULL, 'SIN DATO'),
(20, 20, 1, 'Graciela Irene', 'Mejía Bran', '19769664', '2008-06-17', 'Femenino', 'Salvadoreña', '19769664@clases.edu.sv', '6180-2543', NULL, 'SIN DATO'),
(21, 21, 1, 'Rocío Michelle', 'Meléndez Jiménez', '19894562', '2008-04-08', 'Femenino', 'Salvadoreña', '19894562@clases.edu.sv', '6184-5915', NULL, 'SIN DATO'),
(22, 22, 1, 'Kasandra Yanina', 'Membreño Argueta', '6301872', '2007-11-04', 'Femenino', 'Salvadoreña', '6301872@clases.edu.sv', '7967-4535', NULL, 'SIN DATO'),
(23, 23, 1, 'Loida Eunice', 'Menjívar Castro', '3375518', '2008-07-31', 'Femenino', 'Salvadoreña', '3375518@clases.edu.sv', '7229-8519', NULL, 'SIN DATO'),
(24, 24, 1, 'Abdías Gamaliel', 'Muñoz Mejía', '5357256', '2007-09-29', 'Masculino', 'Salvadoreña', '5357256@clases.edu.sv', '6063-2173', NULL, 'SIN DATO'),
(25, 25, 1, 'Carlos Antonio', 'Naves Argueta', '5357286', '2007-10-01', 'Masculino', 'Salvadoreña', '5357286@clases.edu.sv', '6007-9286', NULL, 'SIN DATO'),
(26, 26, 1, 'Daniel Antonio', 'Perdomo Aparicio', '19762752', '2007-10-12', 'Masculino', 'Salvadoreña', '19762752@clases.edu.sv', '7259-7437', NULL, 'SIN DATO'),
(27, 27, 1, 'David Alexander', 'Pineda Mejía', '4033140', '2008-08-29', 'Masculino', 'Salvadoreña', '4033140@clases.edu.sv', '7148-8161', NULL, 'SIN DATO'),
(28, 28, 1, 'Valeria Rachel', 'Pineda Moreno', '5485068', '2008-11-10', 'Femenino', 'Salvadoreña', '5485068@clases.edu.sv', '7630-4795', NULL, 'SIN DATO'),
(29, 29, 1, 'Alcir Gustavo', 'Quintanilla Rodríguez', '2886976', '2008-04-12', 'Masculino', 'Salvadoreña', '2886976@clases.edu.sv', '7948-4912', NULL, 'SIN DATO'),
(30, 30, 1, 'José Ernesto', 'Rivera Cortez', '5822257', '2008-03-04', 'Masculino', 'Salvadoreña', '5822257@clases.edu.sv', '7013-9824', NULL, 'SIN DATO'),
(31, 31, 1, 'Jefferson Alexander', 'Rodríguez Fernández', '4659115', '2009-05-16', 'Masculino', 'Salvadoreña', '4659115@clases.edu.sv', '7050-5854', NULL, 'SIN DATO'),
(32, 32, 1, 'Jason Daniel', 'Rodríguez Quinteros', '19761439', '2008-08-10', 'Masculino', 'Salvadoreña', '19761439@clases.edu.sv', '7516-9086', NULL, 'SIN DATO'),
(33, 33, 1, 'Alison Gisele', 'Rosales Muñoz', '6554969', '2008-01-31', 'Femenino', 'Salvadoreña', '6554969@clases.edu.sv', '6025-4760', NULL, 'SIN DATO'),
(34, 34, 1, 'Jostin Smith', 'Salgado Chávez', '5301969', '2007-08-04', 'Masculino', 'Salvadoreña', '5301969@clases.edu.sv', '6863-9972', NULL, 'SIN DATO'),
(35, 35, 1, 'Johny Alexander', 'Serrano Hernández', '3294742', '2008-02-09', 'Masculino', 'Salvadoreña', '3294742@clases.edu.sv', '7946-5135', NULL, 'SIN DATO'),
(36, 36, 1, 'Rosmery Angelina', 'Sigarán Pineda', '5942182', '2008-05-23', 'Femenino', 'Salvadoreña', '5942182@clases.edu.sv', '7939-0193', NULL, 'SIN DATO'),
(37, 37, 1, 'Derian Julián', 'Turcios Segovia', '5484295', '2007-07-02', 'Masculino', 'Salvadoreña', '5484295@clases.edu.sv', '7016-0985', NULL, 'SIN DATO'),
(38, 38, 1, 'Jonathan Antonio', 'Ulloa Cisneros', '3670448', '2007-12-04', 'Masculino', 'Salvadoreña', '3670448@clases.edu.sv', '7961-7135', NULL, 'SIN DATO'),
(39, 39, 1, 'José Antonio', 'Vargas Lemus', '5942183', '2007-12-06', 'Masculino', 'Salvadoreña', '5942183@clases.edu.sv', '7313-8247', NULL, 'SIN DATO'),
(40, 40, 1, 'Kasandra Gisel', 'Vásquez Lovo', '6046977', '2008-07-28', 'Femenino', 'Salvadoreña', '6046977@clases.edu.sv', '7786-8065', NULL, 'SIN DATO'),
(41, 41, 1, 'Kevin Alberto', 'Villacorta Posada', '19761326', '2008-12-14', 'Masculino', 'Salvadoreña', '19761326@clases.edu.sv', '6065-3218', NULL, 'SIN DATO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_responsables`
--

CREATE TABLE `datos_responsables` (
  `id_responsable` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `numero_dui` varchar(10) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `direccion_vivienda` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `datos_responsables`
--

INSERT INTO `datos_responsables` (`id_responsable`, `nombres`, `apellidos`, `numero_dui`, `telefono`, `correo`, `direccion_vivienda`) VALUES
(1, 'Misael Antonio', 'Aguilar Quinteros', '05744937-8', '7325-1441', 'Misaelaguilar1990@outlook.com', NULL),
(2, 'Roxana Guadalupe', 'Torres de Alarcón', '01812180-2', '7053-1174', 'roxanaruiz1921@gmail.com', NULL),
(3, 'María Antonia', 'Reyes Machado', '00700809-1', '7565-7164', 'reyeztony529@gmail.com', NULL),
(4, 'Guillermo Antonio', 'Campos', '01567825-8', '7782-6677', 'guillermocampos@gmail.com', NULL),
(5, 'Ana Josefa', 'Orellana Cisneros', '01213926-3', '7018-8672', 'orellanajosefa22@gmail.com', NULL),
(6, 'Dayra Guiacely', 'García Martínez', '02925761-6', '7201-6427', 'Guiacely11@gmail.com', NULL),
(7, 'Ana Rosaura', 'Benítez de Castro', '02730574-8', '6310-8548', 'ana.rosaura.benitez@clases.edu.sv', NULL),
(8, 'Karla Lisvania', 'Quiroz de Coreas', '02885648-3', '7158-3932', 'genesisstacyc@gmail.com', NULL),
(9, 'Ana Lidia', 'Nieto Landaverde', '03604523-2', '7017-6167', 'analidialandaverde@gmail.com', NULL),
(10, 'María Ester', 'León Serrano', '02691688-9', '7170-4049', 'floresyaneth165@gmail.com', NULL),
(11, 'María de los Angeles', 'Carrillo Ascencio', '00516594-4', '7592-1346', 'kevincarrillo75077686@gmail.com', NULL),
(12, 'Sandra Xiomara', 'Granados', '03928608-1', '7948-0943', 'sgranados31188@gmail.com', NULL),
(13, 'Mirna Elizabeth', 'Álvarez de Henríquez', '03426008-0', '7850-5004', 'amau72181@gmail.com', NULL),
(14, 'Katia Yasmín', 'Castillo de Henríquez', '02100270-8', '7006-6062', 'castillonafry@gmail.com', NULL),
(15, 'Rosa Elsa', 'González Argueta', '03482274-3', '7936-5397', 'gonsalesrosa093@gmail.com', NULL),
(16, 'Bartola', 'Maldonado Euceda', '00167460-8', '7295-5941', 'melvinfcb.mohl@gmail.com', NULL),
(17, 'Ana Marlene', 'Benavides de López', '00327166-8', '7697-5061', 'benavidesana296@gmail.com', NULL),
(18, 'Jacquelinne Carolina', 'Ascencio Ramírez', '03595529-8', '6435-7605', 'karollmc.09@gmail.com', NULL),
(19, 'Eugenio', 'Medrano Bermúdez', '00640034-7', '7004-1729', 'eugeniomedrano4@gmail.com', NULL),
(20, 'Alba Nydia', 'Bran de Mejía', '00991380-2', '6180-2543', 'alymejia83@gmail.com', NULL),
(21, 'Ana Yanira', 'Meléndez Cardona', '00642125-4', '75293565', 'argeliomelendez9@gmail.com', NULL),
(22, 'Sandra Isabel', 'Membreño Argueta', '02244770-7', '7670-3284', 'sandramembre14@gmail.com', NULL),
(23, 'Marta Verónica', 'Castro de Menjívar', '02108491-2', '7821-6202', 'marta134castro@gmail.com', NULL),
(24, 'Silvia Lorena', 'Mejía Quintanilla', '00091654-4', '6964-6198', 'lenylit1975@gmail.com', NULL),
(25, 'Marco Antonio', 'Naves Cruz', '02933519-7', '7781-9756', 'marnaves0380@gmail.com', NULL),
(26, 'Heber Antonio', 'Perdomo Hernández', '01853544-1', '7288-6382', 'heberperdomo78@icloud.com', NULL),
(27, 'Elsy Noemy', 'Mejía de Pineda', '00682122-6', '7419-2115', 'daviipineda19@gmail.com', NULL),
(28, 'Karla Marisol', 'Moreno de Pineda', '03785457-9', '7748-5216', 'karlita_vyf@hotmail.com', NULL),
(29, 'Alcir Gustavo', 'Quintanilla Rodríguez', '00537201-2', '7810-2829', 'alcirgustavo12@gmail.com', NULL),
(30, 'Raúl Ernesto', 'Rivera Gómez', '02773004-0', '7626-8791', 'raulernesto0407@gmail.com', NULL),
(31, 'Franky Iván', 'Rodríguez Andrade', '01021195-4', '7704-1872', 'f.ira14@hotmail.com', NULL),
(32, 'Francisco Alexis', 'Rodríguez Quinteros', '06449661-1', '6152-2010', 'alexquinteros895@gmail.com', NULL),
(33, 'José Enrrique', 'Rosales Cabezas', '01035038-7', '6002-3245', 'enriquerosales@gmail.com', NULL),
(34, 'Isis Yaneth', 'Chávez Rodríguez', '03192359-0', '7284-0181', 'yanethchavezrodriguez40@gmail.com', NULL),
(35, 'Luz Marina', 'Hernández de Serrano', '01098292-9', '7888-9727', 'luzhdez8080@gmail.com', NULL),
(36, 'Daysi', 'Pineda Hernández', '01087165-7', '7066-8540', 'daysipineda582@gmail.com', NULL),
(37, 'Griselda Yaneth', 'Segovia de Turcios', '03626125-2', '7789-4605', 'GriseldaYanethsegovia95@gmail.com', NULL),
(38, 'Oscar Antonio', 'Ulloa Ramos', '01273701-1', '7852-7264', 'ulloaramos1976@hotmail.com', NULL),
(39, 'Ana Evelyn', 'Lemus de Vargas', '03980107-7', '7977-6120', 'anaevelynvargas1988@gmail.com', NULL),
(40, 'Sandra Yanira', 'Lovo de Vásquez', '00182905-9', '7728-4122', 'yaniralovo3@gmail.com', NULL),
(41, 'Ana Jeanette', 'Posada Cañenguez', '02418985-0', '7044-4345', 'posadacanenguez16@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id_seccion` int(11) NOT NULL,
  `año_lectivo` year(4) NOT NULL,
  `grado` enum('PRIMER AÑO','SEGUNDO AÑO','TERCER AÑO') NOT NULL,
  `seccion` char(1) NOT NULL,
  `id_docente` int(11) DEFAULT NULL,
  `especialidad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`id_seccion`, `año_lectivo`, `grado`, `seccion`, `id_docente`, `especialidad`) VALUES
(1, '2025', 'TERCER AÑO', 'A', 1, 'General');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `clave_hash` varchar(255) NOT NULL,
  `id_docente` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `clave_hash`, `id_docente`, `created_at`) VALUES
(1, 'miriamG', 'e34993484ubew34848', 1, '2026-06-26 13:28:58');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos_docente`
--
ALTER TABLE `datos_docente`
  ADD PRIMARY KEY (`id_docente`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD UNIQUE KEY `nup` (`nup`);

--
-- Indices de la tabla `datos_estudiantes`
--
ALTER TABLE `datos_estudiantes`
  ADD PRIMARY KEY (`id_estudiante`),
  ADD UNIQUE KEY `numero_nie` (`numero_nie`),
  ADD KEY `fk_estudiante_responsable` (`id_responsable`),
  ADD KEY `fk_estudiante_seccion` (`id_seccion`);

--
-- Indices de la tabla `datos_responsables`
--
ALTER TABLE `datos_responsables`
  ADD PRIMARY KEY (`id_responsable`),
  ADD UNIQUE KEY `numero_dui` (`numero_dui`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id_seccion`),
  ADD UNIQUE KEY `uq_seccion_año` (`año_lectivo`,`grado`,`seccion`),
  ADD KEY `fk_seccion_docente` (`id_docente`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD KEY `fk_usuario_docente` (`id_docente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos_docente`
--
ALTER TABLE `datos_docente`
  MODIFY `id_docente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `datos_estudiantes`
--
ALTER TABLE `datos_estudiantes`
  MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `datos_responsables`
--
ALTER TABLE `datos_responsables`
  MODIFY `id_responsable` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `id_seccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `datos_estudiantes`
--
ALTER TABLE `datos_estudiantes`
  ADD CONSTRAINT `fk_estudiante_responsable` FOREIGN KEY (`id_responsable`) REFERENCES `datos_responsables` (`id_responsable`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_estudiante_seccion` FOREIGN KEY (`id_seccion`) REFERENCES `secciones` (`id_seccion`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD CONSTRAINT `fk_seccion_docente` FOREIGN KEY (`id_docente`) REFERENCES `datos_docente` (`id_docente`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuario_docente` FOREIGN KEY (`id_docente`) REFERENCES `datos_docente` (`id_docente`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
