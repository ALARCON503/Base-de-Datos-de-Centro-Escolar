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
(1, 'Carlos Roberto', 'Martínez Fuentes', '11204', '74501'),
(2, 'Elena Patricia', 'Vásquez de Morales', '33817', '82934'),
(3, 'Jorge Armando', 'Salinas Contreras', '55629', '61047');

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
(1,  'Roberto Carlos',   'López Mendoza',      '01234567-8', '7100-1001', 'roberto.lopez@gmail.com',      'Col. Escalón, San Salvador'),
(2,  'María Fernanda',   'Cruz de Hernández',  '02345678-9', '7100-1002', 'mfcruz.hdez@gmail.com',        'Res. Santa Elena, Antiguo Cuscatlán'),
(3,  'José Manuel',      'Pérez Aquino',       '03456789-0', '7100-1003', 'josemperez.aq@hotmail.com',    'Bo. San Jacinto, San Salvador'),
(4,  'Ana Beatriz',      'Gómez Villalta',     '04567890-1', '7100-1004', 'anabgomez84@gmail.com',        'Col. Miramonte, San Salvador'),
(5,  'Luis Ernesto',     'Ramos Escobar',      '05678901-2', '7100-1005', 'luisramos.esc@outlook.com',    'Urb. Bello Horizonte, San Salvador'),
(6,  'Sandra Yolanda',   'Flores de Torres',   '06789012-3', '7100-1006', 'sandraflores.yt@gmail.com',    'Col. Zacamil, Mejicanos'),
(7,  'Francisco Javier', 'Molina Guardado',    '07890123-4', '7100-1007', 'fjmolina.gd@gmail.com',        'Col. San Benito, San Salvador'),
(8,  'Carmen Alicia',    'Zelaya de Ochoa',    '08901234-5', '7100-1008', 'carmenzelaya.oc@gmail.com',    'Res. Los Laureles, Santa Tecla'),
(9,  'Miguel Ángel',     'Díaz Renderos',      '09012345-6', '7100-1009', 'migueldiaz.rd@gmail.com',      'Col. Las Mercedes, Soyapango'),
(10, 'Gloria Eugenia',   'Chávez Portillo',    '00123456-7', '7100-1010', 'gloriachavez.pt@gmail.com',    'Bo. La Vega, San Marcos'),
(11, 'Héctor Antonio',   'Alvarado Merino',    '01122334-5', '7100-1011', 'hectoralv.mr@outlook.com',     'Col. Floresta, San Salvador'),
(12, 'Verónica Isabel',  'Guzmán de Peña',     '02233445-6', '7100-1012', 'veronicagp.iz@gmail.com',      'Urb. Lomas de San Francisco, SF'),
(13, 'Eduardo Alfredo',  'Reyes Bonilla',      '03344556-7', '7100-1013', 'eduardorb.af@gmail.com',       'Col. Jardines de Guadalupe, Antiguo'),
(14, 'Patricia Lorena',  'Soriano de Cabrera', '04455667-8', '7100-1014', 'patriciasc.lr@gmail.com',      'Bo. Santa Anita, San Salvador'),
(15, 'Ricardo Emilio',   'Castellanos Nolasco','05566778-9', '7100-1015', 'ricardocn.em@hotmail.com',     'Col. Madre Selva, Antiguo Cuscatlán'),
(16, 'Martha Cecilia',   'Interiano de Ruiz',  '06677889-0', '7100-1016', 'marthair.cc@gmail.com',        'Urb. Monte Bello, San Salvador'),
(17, 'Óscar Mauricio',   'Serrano Pacheco',    '07788990-1', '7100-1017', 'oscarspc.mr@gmail.com',        'Col. Centroamérica, San Salvador'),
(18, 'Silvia Marina',    'Luna de Aguilar',    '08899001-2', '7100-1018', 'silvialag.mn@gmail.com',       'Res. Jardines del Valle, SA'),
(19, 'Gerardo Rubén',    'Campos Melara',       '09900112-3', '7100-1019', 'gerardocm.rb@outlook.com',    'Bo. Modelo, San Salvador'),
(20, 'Ingrid Yaqueline', 'Coto de Sánchez',    '00011223-4', '7100-1020', 'ingridcs.yq@gmail.com',        'Col. San Luis, San Salvador'),
(21, 'Alberto Iván',     'Quintero Monge',      '01122334-0', '7100-1021', 'albertoqm.iv@gmail.com',      'Urb. Villa Centroamérica, Soyapango'),
(22, 'Norma Estela',     'Villeda de Acosta',  '02233445-1', '7100-1022', 'normaav.es@gmail.com',         'Col. Layco, San Salvador'),
(23, 'Josué Alejandro',  'Portillo Mejía',     '03344556-2', '7100-1023', 'josuepm.aj@gmail.com',         'Bo. San Antonio Abad, SS'),
(24, 'Elsa Guadalupe',   'Meléndez de Rivera', '04455667-3', '7100-1024', 'elsamr.gp@hotmail.com',        'Col. Costa Rica, San Salvador'),
(25, 'René Arturo',      'Herrera Aguiluz',    '05566778-4', '7100-1025', 'reneha.at@gmail.com',          'Res. Lomas del Río, San Salvador'),
(26, 'Claudia Beatriz',  'Amaya de García',    '06677889-5', '7100-1026', 'claudiaag.bt@gmail.com',       'Col. Jardines de Cuzcatlán, SS'),
(27, 'Nelson Enrique',   'Fuentes Orellana',   '07788990-6', '7100-1027', 'nelsonfo.en@gmail.com',        'Urb. San Jacinto, San Salvador'),
(28, 'Roxana del Carmen','Medina de Galdámez', '08899001-7', '7100-1028', 'roxanamg.dc@gmail.com',        'Col. Ramírez, San Salvador'),
(29, 'Wilber Adalberto', 'Martínez Rivas',     '09900112-8', '7100-1029', 'wilbermr.ab@outlook.com',      'Bo. Candelaria, San Salvador'),
(30, 'Consuelo Marisol', 'Leiva de Montes',    '00011223-9', '7100-1030', 'consuelolm.ms@gmail.com',      'Col. San Carlos, Soyapango'),
(31, 'Rolando Aníbal',   'Ventura Espinoza',   '01234560-1', '7100-1031', 'rolandove.an@gmail.com',       'Urb. El Rosal, San Salvador'),
(32, 'Iris Marlene',     'Argueta de Flores',  '02345671-2', '7100-1032', 'irisaf.ml@gmail.com',          'Col. La Ceiba, San Salvador'),
(33, 'César Augusto',    'Bonilla Galindo',    '03456782-3', '7100-1033', 'cesarbg.ag@hotmail.com',       'Bo. Santa Bárbara, San Salvador'),
(34, 'Mirna Yaneth',     'Guardado de Lima',   '04567893-4', '7100-1034', 'mirnagl.yn@gmail.com',         'Col. Modelo, San Salvador'),
(35, 'Tobías Samuel',    'Morán Durán',        '05678904-5', '7100-1035', 'tobiasmnd.sm@gmail.com',       'Res. Santa Marta, Antiguo Cuscatlán'),
(36, 'Diana Carolina',   'Peñate de Benítez',  '06789015-6', '7100-1036', 'dianabp.cl@gmail.com',         'Col. América, San Salvador'),
(37, 'Mauricio Alejandro','Rosales Vides',     '07890126-7', '7100-1037', 'mauriciorv.aj@gmail.com',      'Urb. Los Álamos, San Salvador'),
(38, 'Kenia Guadalupe',  'Cisneros de Juárez', '08901237-8', '7100-1038', 'keniacj.gp@gmail.com',         'Col. Atlacatl, San Salvador'),
(39, 'Félix Orlando',    'Barrera Mendoza',    '09012348-9', '7100-1039', 'felixbm.ol@outlook.com',       'Bo. El Calvario, San Salvador'),
(40, 'Yanira Concepción','Recinos de Molina',  '00123459-0', '7100-1040', 'yaniramr.cp@gmail.com',        'Col. Quezaltepec, Mejicanos'),
(41, 'Esteban Rodrigo',  'Jovel Herrera',      '01234560-9', '7100-1041', 'estebanjh.rg@gmail.com',       'Urb. Santa Eduviges, San Salvador');

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
(1,  1,  1, 'Diego Alejandro',   'López Cruz',         'NIE-10000001', '2008-03-12', 'Masculino', 'Salvadoreña', '10000001@clases.edu.sv', '7200-0001', NULL, 'Col. Escalón, San Salvador'),
(2,  2,  1, 'Valentina Sofía',   'Hernández Vásquez',  'NIE-10000002', '2008-07-19', 'Femenino',  'Salvadoreña', '10000002@clases.edu.sv', '7200-0002', NULL, 'Res. Santa Elena, Antiguo Cuscatlán'),
(3,  3,  1, 'Sebastián Andrés',  'Pérez Guzmán',       'NIE-10000003', '2007-11-05', 'Masculino', 'Salvadoreña', '10000003@clases.edu.sv', '7200-0003', NULL, 'Bo. San Jacinto, San Salvador'),
(4,  4,  1, 'Camila Fernanda',   'Gómez Reyes',        'NIE-10000004', '2008-01-23', 'Femenino',  'Salvadoreña', '10000004@clases.edu.sv', '7200-0004', NULL, 'Col. Miramonte, San Salvador'),
(5,  5,  1, 'Mateo Gabriel',     'Ramos Flores',       'NIE-10000005', '2007-09-30', 'Masculino', 'Salvadoreña', '10000005@clases.edu.sv', '7200-0005', NULL, 'Urb. Bello Horizonte, San Salvador'),
(6,  6,  1, 'Isabella Renata',   'Torres Molina',      'NIE-10000006', '2008-04-14', 'Femenino',  'Salvadoreña', '10000006@clases.edu.sv', '7200-0006', NULL, 'Col. Zacamil, Mejicanos'),
(7,  7,  1, 'Samuel Eduardo',    'Molina Zelaya',      'NIE-10000007', '2008-06-28', 'Masculino', 'Salvadoreña', '10000007@clases.edu.sv', '7200-0007', NULL, 'Col. San Benito, San Salvador'),
(8,  8,  1, 'Luciana Beatriz',   'Ochoa Díaz',         'NIE-10000008', '2007-12-09', 'Femenino',  'Salvadoreña', '10000008@clases.edu.sv', '7200-0008', NULL, 'Res. Los Laureles, Santa Tecla'),
(9,  9,  1, 'Emilio José',       'Renderos Chávez',    'NIE-10000009', '2008-02-17', 'Masculino', 'Salvadoreña', '10000009@clases.edu.sv', '7200-0009', NULL, 'Col. Las Mercedes, Soyapango'),
(10, 10, 1, 'Mariana Celeste',   'Portillo Alvarado',  'NIE-10000010', '2008-08-03', 'Femenino',  'Salvadoreña', '10000010@clases.edu.sv', '7200-0010', NULL, 'Bo. La Vega, San Marcos'),
(11, 11, 1, 'Nicolás Iván',      'Merino Guzmán',      'NIE-10000011', '2007-05-22', 'Masculino', 'Salvadoreña', '10000011@clases.edu.sv', '7200-0011', NULL, 'Col. Floresta, San Salvador'),
(12, 12, 1, 'Daniela Marcela',   'Peña Reyes',         'NIE-10000012', '2008-10-11', 'Femenino',  'Salvadoreña', '10000012@clases.edu.sv', '7200-0012', NULL, 'Urb. Lomas de San Francisco, SF'),
(13, 13, 2, 'Ángel Armando',     'Bonilla Soriano',    'NIE-10000013', '2007-07-16', 'Masculino', 'Salvadoreña', '10000013@clases.edu.sv', '7200-0013', NULL, 'Col. Jardines de Guadalupe, Antiguo'),
(14, 14, 2, 'Melanie Andrea',    'Cabrera Castellanos','NIE-10000014', '2008-03-27', 'Femenino',  'Salvadoreña', '10000014@clases.edu.sv', '7200-0014', NULL, 'Bo. Santa Anita, San Salvador'),
(15, 15, 2, 'Rodrigo Felipe',    'Nolasco Interiano',  'NIE-10000015', '2007-10-08', 'Masculino', 'Salvadoreña', '10000015@clases.edu.sv', '7200-0015', NULL, 'Col. Madre Selva, Antiguo Cuscatlán'),
(16, 16, 2, 'Valeria Estefanía', 'Ruiz Serrano',       'NIE-10000016', '2008-05-31', 'Femenino',  'Salvadoreña', '10000016@clases.edu.sv', '7200-0016', NULL, 'Urb. Monte Bello, San Salvador'),
(17, 17, 2, 'Andrés Mauricio',   'Pacheco Luna',       'NIE-10000017', '2007-08-20', 'Masculino', 'Salvadoreña', '10000017@clases.edu.sv', '7200-0017', NULL, 'Col. Centroamérica, San Salvador'),
(18, 18, 2, 'Alejandra Paola',   'Aguilar Campos',     'NIE-10000018', '2008-01-04', 'Femenino',  'Salvadoreña', '10000018@clases.edu.sv', '7200-0018', NULL, 'Res. Jardines del Valle, SA'),
(19, 19, 2, 'Bryan Josué',       'Melara Coto',        'NIE-10000019', '2007-11-29', 'Masculino', 'Salvadoreña', '10000019@clases.edu.sv', '7200-0019', NULL, 'Bo. Modelo, San Salvador'),
(20, 20, 2, 'Gabriela Nicol',    'Sánchez Quintero',   'NIE-10000020', '2008-09-15', 'Femenino',  'Salvadoreña', '10000020@clases.edu.sv', '7200-0020', NULL, 'Col. San Luis, San Salvador'),
(21, 21, 2, 'Javier Ernesto',    'Monge Villeda',      'NIE-10000021', '2007-06-10', 'Masculino', 'Salvadoreña', '10000021@clases.edu.sv', '7200-0021', NULL, 'Urb. Villa Centroamérica, Soyapango'),
(22, 22, 2, 'Karina Alejandra',  'Acosta Portillo',    'NIE-10000022', '2008-04-22', 'Femenino',  'Salvadoreña', '10000022@clases.edu.sv', '7200-0022', NULL, 'Col. Layco, San Salvador'),
(23, 23, 3, 'Kevin Rolando',     'Mejía Herrera',      'NIE-10000023', '2007-09-05', 'Masculino', 'Salvadoreña', '10000023@clases.edu.sv', '7200-0023', NULL, 'Bo. San Antonio Abad, SS'),
(24, 24, 3, 'Paola Rebeca',      'Rivera Amaya',       'NIE-10000024', '2008-07-01', 'Femenino',  'Salvadoreña', '10000024@clases.edu.sv', '7200-0024', NULL, 'Col. Costa Rica, San Salvador'),
(25, 25, 3, 'Gerardo Eliseo',    'Aguiluz Fuentes',    'NIE-10000025', '2007-12-18', 'Masculino', 'Salvadoreña', '10000025@clases.edu.sv', '7200-0025', NULL, 'Res. Lomas del Río, San Salvador'),
(26, 26, 3, 'Adriana Gabriela',  'García Medina',      'NIE-10000026', '2008-02-09', 'Femenino',  'Salvadoreña', '10000026@clases.edu.sv', '7200-0026', NULL, 'Col. Jardines de Cuzcatlán, SS'),
(27, 27, 3, 'Raúl Alfredo',      'Orellana Galdámez',  'NIE-10000027', '2007-10-23', 'Masculino', 'Salvadoreña', '10000027@clases.edu.sv', '7200-0027', NULL, 'Urb. San Jacinto, San Salvador'),
(28, 28, 3, 'Stephanie Nicole',  'Galdámez Rivas',     'NIE-10000028', '2008-06-07', 'Femenino',  'Salvadoreña', '10000028@clases.edu.sv', '7200-0028', NULL, 'Col. Ramírez, San Salvador'),
(29, 29, 3, 'Erick Antonio',     'Rivas Ventura',      'NIE-10000029', '2007-08-14', 'Masculino', 'Salvadoreña', '10000029@clases.edu.sv', '7200-0029', NULL, 'Bo. Candelaria, San Salvador'),
(30, 30, 3, 'Nadia Consuelo',    'Montes Argueta',     'NIE-10000030', '2008-11-26', 'Femenino',  'Salvadoreña', '10000030@clases.edu.sv', '7200-0030', NULL, 'Col. San Carlos, Soyapango'),
(31, 31, 1, 'Emanuel Rolando',   'Espinoza Bonilla',   'NIE-10000031', '2007-04-03', 'Masculino', 'Salvadoreña', '10000031@clases.edu.sv', '7200-0031', NULL, 'Urb. El Rosal, San Salvador'),
(32, 32, 1, 'Xiomara Marlene',   'Flores Guardado',    'NIE-10000032', '2008-09-20', 'Femenino',  'Salvadoreña', '10000032@clases.edu.sv', '7200-0032', NULL, 'Col. La Ceiba, San Salvador'),
(33, 33, 2, 'Abraham Josué',     'Galindo Morán',      'NIE-10000033', '2007-07-08', 'Masculino', 'Salvadoreña', '10000033@clases.edu.sv', '7200-0033', NULL, 'Bo. Santa Bárbara, San Salvador'),
(34, 34, 2, 'Fátima Yamileth',   'Lima Peñate',        'NIE-10000034', '2008-03-17', 'Femenino',  'Salvadoreña', '10000034@clases.edu.sv', '7200-0034', NULL, 'Col. Modelo, San Salvador'),
(35, 35, 3, 'Cristian Samuel',   'Durán Rosales',      'NIE-10000035', '2007-11-11', 'Masculino', 'Salvadoreña', '10000035@clases.edu.sv', '7200-0035', NULL, 'Res. Santa Marta, Antiguo Cuscatlán'),
(36, 36, 3, 'Rebeca Josseline',  'Benítez Cisneros',   'NIE-10000036', '2008-05-02', 'Femenino',  'Salvadoreña', '10000036@clases.edu.sv', '7200-0036', NULL, 'Col. América, San Salvador'),
(37, 37, 1, 'Oscar Mauricio',    'Vides Barrera',      'NIE-10000037', '2007-09-27', 'Masculino', 'Salvadoreña', '10000037@clases.edu.sv', '7200-0037', NULL, 'Urb. Los Álamos, San Salvador'),
(38, 38, 2, 'Evelyn Guadalupe',  'Juárez Recinos',     'NIE-10000038', '2008-08-16', 'Femenino',  'Salvadoreña', '10000038@clases.edu.sv', '7200-0038', NULL, 'Col. Atlacatl, San Salvador'),
(39, 39, 3, 'Isaías Orlando',    'Mendoza Jovel',      'NIE-10000039', '2007-06-24', 'Masculino', 'Salvadoreña', '10000039@clases.edu.sv', '7200-0039', NULL, 'Bo. El Calvario, San Salvador'),
(40, 40, 1, 'Lilian Concepción', 'Molina Coto',        'NIE-10000040', '2008-12-05', 'Femenino',  'Salvadoreña', '10000040@clases.edu.sv', '7200-0040', NULL, 'Col. Quezaltepec, Mejicanos'),
(41, 41, 2, 'Leonardo Rodrigo',  'Herrera López',      'NIE-10000041', '2007-10-31', 'Masculino', 'Salvadoreña', '10000041@clases.edu.sv', '7200-0041', NULL, 'Urb. Santa Eduviges, San Salvador');

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
(1, '2026', 'PRIMER AÑO',   'A', 1, 'General'),
(2, '2026', 'SEGUNDO AÑO',  'B', 2, 'General'),
(3, '2026', 'TERCER AÑO',   'A', 3, 'General');

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
(1, 'carlosM',  '$2y$10$xJ8kL3mN9pQ2rS5tU7vW0eYcF1gH4iJ6kL8mN0pQ3rS6tU9vWxYz', 1, '2026-01-10 08:00:00'),
(2, 'elenaV',   '$2y$10$aB2cD4eF6gH8iJ0kL2mN4pQ6rS8tU0vW2xY4zA6bC8dE0fG2hI4j', 2, '2026-01-10 08:05:00'),
(3, 'jorgeS',   '$2y$10$kL0mN2pQ4rS6tU8vW0xY2zA4bC6dE8fG0hI2jK4lM6nO8pQ0rS2t', 3, '2026-01-10 08:10:00');

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

ALTER TABLE `datos_docente`
  MODIFY `id_docente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `datos_estudiantes`
  MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

ALTER TABLE `datos_responsables`
  MODIFY `id_responsable` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

ALTER TABLE `secciones`
  MODIFY `id_seccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

ALTER TABLE `datos_estudiantes`
  ADD CONSTRAINT `fk_estudiante_responsable` FOREIGN KEY (`id_responsable`) REFERENCES `datos_responsables` (`id_responsable`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_estudiante_seccion` FOREIGN KEY (`id_seccion`) REFERENCES `secciones` (`id_seccion`) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE `secciones`
  ADD CONSTRAINT `fk_seccion_docente` FOREIGN KEY (`id_docente`) REFERENCES `datos_docente` (`id_docente`) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuario_docente` FOREIGN KEY (`id_docente`) REFERENCES `datos_docente` (`id_docente`) ON DELETE SET NULL ON UPDATE CASCADE;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
