-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-06-2024 a las 17:26:15
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `system-school`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aistencias`
--

CREATE TABLE `aistencias` (
  `id_asistencia` int(11) NOT NULL,
  `no_empleado` varchar(50) NOT NULL,
  `id_section` int(11) NOT NULL,
  `id_tipoAsistencia` int(11) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aistencias`
--

INSERT INTO `aistencias` (`id_asistencia`, `no_empleado`, `id_section`, `id_tipoAsistencia`, `fecha_creacion`) VALUES
(1, 'a', 1, 1, '2024-06-02 20:58:17'),
(2, 'd', 1, 1, '2024-06-02 21:01:06'),
(3, 'v', 1, 1, '2024-06-02 21:09:56'),
(4, '125844', 1, 1, '2024-06-02 21:10:00'),
(5, '11111', 1, 1, '2024-06-02 21:21:04'),
(6, '11111', 1, 3, '2024-06-03 01:26:54'),
(7, '11111', 1, 1, '2024-06-03 15:46:31'),
(8, '888', 3, 1, '2024-06-03 16:18:53'),
(9, '125844', 6, 3, '2024-06-03 17:08:34'),
(10, '11111', 7, 1, '2024-06-03 17:53:42'),
(11, '888', 8, 1, '2024-06-03 19:38:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `attendance_type` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `attendance_date` date NOT NULL,
  `mark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `attendance_type`, `student_id`, `teacher_id`, `class_id`, `section_id`, `attendance_date`, `mark`) VALUES
(1, 1, 1, 0, 2, 1, '2024-06-03', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_assignment_area`
--

CREATE TABLE `cat_assignment_area` (
  `id_assignment` int(11) NOT NULL,
  `assignment_area` text NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat_assignment_area`
--

INSERT INTO `cat_assignment_area` (`id_assignment`, `assignment_area`, `enabled`) VALUES
(1, 'PRESIDENCIA', 1),
(2, 'OFICIALIA MAYOR', 1),
(3, 'SECRETARIA GENERAL DE ACUERDOS', 1),
(4, 'CENTRAL DE ACTUARIOS', 1),
(5, 'COMUNICACION SOCIAL', 1),
(6, 'UNIDAD DE IGUALDAD DE GENERO', 1),
(7, 'SEGURIDAD Y VIGILANCIA', 1),
(8, 'JUNTA DE ADMINISTRACION, VIGILANCIA Y DI', 1),
(9, 'VISITADURIA', 1),
(10, 'DIRECCION GENERAL DE ADMINISTRACION', 1),
(11, 'FONDO AUXILIAR PARA LA ADMINISTRACION', 1),
(12, 'DIRECCION DE CONTRALORIA INTERNA', 1),
(13, 'CENTRO DE COMPUTO E INFORMATICA', 1),
(14, 'ESCUELA JUDICIAL', 1),
(15, 'BOLETIN JUDICIAL', 1),
(16, 'BIBLIOTECA', 1),
(17, 'C E N D I', 1),
(18, 'DGA RECURSOS MATERIALES', 1),
(19, 'DGA COMPRAS', 1),
(20, 'DGA CONTROL PATRIMONIAL Y VEHICULAR', 1),
(21, 'DGA ALMACEN', 1),
(22, 'DGA MANTENIMIENTO', 1),
(23, 'DGA INTENDENCIA', 1),
(24, 'DGA RECURSOS HUMANOS', 1),
(25, 'DGA PRESUPUESTOS', 1),
(26, 'DGA FUENTES ALTERNATIVAS DEL FINANCIAMIE', 1),
(27, 'DGA CONTABILIDAD Y FINANZAS', 1),
(28, 'TRANSPARENCIA', 1),
(29, 'COORDINACION JURIDICA', 1),
(30, 'ARCHIVO', 1),
(31, 'CORRESPONDENCIA', 1),
(32, 'CENTRO DE COPIADO', 1),
(33, 'DGA CAJA DE AHORRO', 1),
(34, 'SINDICATO', 1),
(35, 'PRIMERA SALA', 1),
(36, 'SEGUNDA SALA', 1),
(37, 'TERCERA SALA', 1),
(38, 'SALA AUXILIAR', 1),
(39, 'JUZGADO UNICO EN MATERIA PENAL', 1),
(40, 'JUZGADO PRIMERO CIVIL', 1),
(41, 'JUZGADO SEGUNDO CIVIL', 1),
(42, 'JUZGADO TERCERO CIVIL', 1),
(43, 'JUZGADO CUARTO FAMILIAR', 1),
(44, 'JUZGADO NOVENO FAMILIAR', 1),
(45, 'JUZGADO QUINTO FAMILIAR', 1),
(46, 'JUZGADO SEXTO FAMILIAR', 1),
(47, 'JUZGADO SEPTIMO FAMILIAR', 1),
(48, 'JUZGADO OCTAVO FAMILIAR', 1),
(49, 'JUZGADO DECIMO FAMILIAR', 1),
(50, 'JUZGADO PRIMERO MENOR CIVIL Y MERCANTIL', 1),
(51, 'JUZGADO SEGUNDO MENOR CIVIL Y MERCANTIL', 1),
(52, 'JZDO CONTROL JUICIO O. Y EJECUCION XOCHI', 1),
(53, 'JUZGADO UNICO MERCANTIL', 1),
(54, 'TRIBUNAL LABORAL CUERNAVACA 1', 1),
(55, 'TRIBUNAL LABORAL CUERNAVACA 2', 1),
(56, 'JUSTICIA TERAPEUTICA', 1),
(57, 'JUSTICIA ALTERNATIVA', 1),
(58, 'MODULO DE ORIENTACION FAMILIAR CUERNAVAC', 1),
(59, 'JUZGADO CIVIL DE TETECALA', 1),
(60, 'JUZGADO CIVIL DE PUENTE DE IXTLA', 1),
(61, 'JUZGADO MENOR DE PUENTE DE IXTLA', 1),
(62, 'SALA DEL SEGUNDO CIRCUITO DE JOJUTLA', 1),
(63, 'JUZGADO PRIMERO FAMILIAR DE JOJUTLA', 1),
(64, 'JUZGADO SEGUNDO FAMILIAR DE JOJUTLA', 1),
(65, 'JUZGADO TERCERO CIVIL DE JOJUTLA', 1),
(66, 'JZDO CONTROL JUICIO O. Y EJECUCION JOJU', 1),
(67, 'JUZGADO UNICO MERCANTIL JOJUTLA', 1),
(68, 'TRIBUNAL LABORAL JOJUTLA', 1),
(69, 'JUSTICIA ALTERNATIVA JOJUTLA', 1),
(70, 'JUZGADO PRIMERO CIVIL DE YAUTEPEC', 1),
(71, 'JUZGADO SEGUNDO CIVIL DE YAUTEPEC', 1),
(72, 'SALA DEL TERCER CIRCUITO DE CUAUTLA', 1),
(73, 'JUZGADO PRIMERO FAMILIAR DE CUAUTLA', 1),
(74, 'JUZGADO SEGUNDO FAMILIAR DE CUAUTLA', 1),
(75, 'JUZGADO TERCERO CIVIL DE CUAUTLA', 1),
(76, 'JUZGADO MENOR MIXTO DE CUAUTLA', 1),
(77, 'JZDO CONTROL JUICIO O. Y EJECUCION CUAU', 1),
(78, 'JUZGADO UNICO MERCANTIL CUAUTLA', 1),
(79, 'TRIBUNAL LABORAL CUAUTLA', 1),
(80, 'JUSTICIA ALTERNATIVA CUAUTLA', 1),
(81, 'MODULO DE ORIENTACION FAMILIAR CUAUTLA', 1),
(82, 'JUZGADO CIVIL DE JONACATEPEC', 1),
(83, 'JUZGADO PRIMERO CIVIL DE XOCHITEPEC', 1),
(84, 'JUZGADO SEGUNDO CIVIL DE XOCHITEPEC', 1),
(85, 'JUZGADO PRIMERO FAMILIAR DE JIUTEPEC', 1),
(86, 'JUZGADO SEGUNDO FAMILIAR DE JIUTEPEC', 1),
(87, 'JUZGADO TERCERO CIVIL DE JIUTEPEC', 1),
(88, 'JUZGADO MENOR DE JIUTEPEC', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_tipos_asistencias`
--

CREATE TABLE `cat_tipos_asistencias` (
  `id_tipoAsistencia` int(11) NOT NULL,
  `nombre_tipoAsistencia` varchar(50) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat_tipos_asistencias`
--

INSERT INTO `cat_tipos_asistencias` (`id_tipoAsistencia`, `nombre_tipoAsistencia`, `enabled`) VALUES
(1, 'Normal', 1),
(2, 'Retraso', 1),
(3, 'Falta', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `numeric_name` varchar(255) NOT NULL,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `fecha_inicio` date NOT NULL DEFAULT current_timestamp(),
  `fecha_fin` date NOT NULL DEFAULT current_timestamp(),
  `hora_inicio` time NOT NULL DEFAULT current_timestamp(),
  `hora_fin` time NOT NULL DEFAULT current_timestamp(),
  `lunes` tinyint(1) NOT NULL DEFAULT 0,
  `martes` tinyint(1) NOT NULL DEFAULT 0,
  `miercoles` tinyint(1) NOT NULL DEFAULT 0,
  `jueves` tinyint(1) NOT NULL DEFAULT 0,
  `viernes` tinyint(1) NOT NULL DEFAULT 0,
  `sabado` tinyint(1) NOT NULL DEFAULT 0,
  `enabled` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `numeric_name`, `section_id`, `fecha_inicio`, `fecha_fin`, `hora_inicio`, `hora_fin`, `lunes`, `martes`, `miercoles`, `jueves`, `viernes`, `sabado`, `enabled`) VALUES
(1, 'Historia', '1', 1, '2024-06-02', '2024-06-04', '13:54:01', '13:55:58', 0, 1, 0, 0, 0, 0, 1),
(2, 'Programacion', '2', 2, '2024-06-01', '2024-06-25', '13:54:01', '13:55:58', 0, 0, 0, 0, 0, 0, 1),
(3, 'test', '55', 1, '2024-06-02', '2024-06-02', '13:54:01', '13:55:58', 0, 0, 0, 0, 0, 0, 1),
(4, 'Familiar', '66', 1, '2024-06-03', '2024-06-03', '13:54:01', '13:55:58', 0, 0, 0, 0, 0, 0, 1),
(5, 'civil', '88', 2, '2024-06-03', '2024-06-03', '13:54:01', '13:55:58', 0, 0, 0, 0, 0, 0, 1),
(6, 'mercantil', '99', 2, '2024-06-03', '2024-06-03', '13:54:01', '13:55:58', 0, 0, 0, 0, 0, 0, 1),
(7, 'prueba con sede', '77', 1, '2024-06-12', '2024-06-12', '13:30:12', '13:30:12', 0, 0, 0, 0, 0, 0, 1),
(8, 'classew', '55555', 7, '2024-06-12', '2024-06-12', '13:30:42', '13:30:42', 0, 0, 0, 0, 0, 0, 1),
(9, 'racismo', '5555555', 1, '2024-06-11', '2024-06-26', '15:00:00', '20:00:00', 0, 0, 0, 0, 0, 0, 1),
(10, 'pool dance', '81283123', 1, '2024-06-13', '2024-06-13', '15:00:00', '15:00:00', 1, 0, 1, 0, 0, 0, 1),
(11, 'kasdkasdj', '1254', 3, '2024-06-03', '2024-06-06', '08:00:00', '20:00:00', 0, 0, 0, 1, 0, 0, 1),
(12, 'pipipip', '454545', 1, '2024-06-03', '2024-06-03', '17:55:00', '22:22:00', 0, 1, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expenses`
--

CREATE TABLE `expenses` (
  `expenses_id` int(11) NOT NULL,
  `expenses_name` varchar(255) NOT NULL,
  `expenses_amount` varchar(255) NOT NULL,
  `expenses_name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expenses_name`
--

CREATE TABLE `expenses_name` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marksheet`
--

CREATE TABLE `marksheet` (
  `marksheet_id` int(11) NOT NULL,
  `marksheet_name` varchar(255) NOT NULL,
  `marksheet_date` date NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marksheet_student`
--

CREATE TABLE `marksheet_student` (
  `marksheet_student_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `obtain_mark` varchar(255) NOT NULL,
  `marksheet_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `paid_amount` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `payment_name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_name`
--

CREATE TABLE `payment_name` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `section_name` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `section`
--

INSERT INTO `section` (`section_id`, `section_name`, `class_id`, `enabled`) VALUES
(1, 'Morrow', 2, 1),
(2, 'Leyva', 4, 1),
(3, 'galeana', 4, 1),
(4, 'jojutla', 4, 1),
(5, 'cuautla', 4, 1),
(6, 'jonacatepec', 1, 1),
(7, 'atlacho', 5, 1),
(8, 'presidentes', 6, 1),
(9, 'pruebas', 0, 1),
(10, 'kkk', 0, 1),
(11, 'prueba branch lalo', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions_public`
--

CREATE TABLE `sessions_public` (
  `idConsec` int(11) NOT NULL,
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  `date_add` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `sessions_public`
--

INSERT INTO `sessions_public` (`idConsec`, `id`, `ip_address`, `timestamp`, `data`, `date_add`) VALUES
(1, '1s52p4dlvs3tspf36gqvt7ghd8qbfpom', '127.0.0.1', 1717255953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731373235353935313b, '2024-06-01 09:32:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `id_assignment` int(11) NOT NULL,
  `no_empleado` varchar(25) NOT NULL,
  `register_date` date NOT NULL DEFAULT current_timestamp(),
  `fname` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `age` varchar(255) NOT NULL DEFAULT '',
  `dob` date NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `student`
--

INSERT INTO `student` (`student_id`, `id_assignment`, `no_empleado`, `register_date`, `fname`, `image`, `age`, `dob`, `contact`, `email`, `address`, `city`, `country`, `enabled`) VALUES
(1, 1, '16172', '2024-06-04', 'GAMBOA OLEA LUIS JORGE', '', '', '0000-00-00', '0447773 74 7136', 'licluisjorgegamboa@gmail.com', '', '', '', 1),
(2, 1, '12124', '2024-06-04', 'CORDERO ALVAREZ ANA ISABEL', '', '', '0000-00-00', '3 15 71 47', 'anai_cordero@live.com', '', '', '', 1),
(3, 1, '22226', '2024-06-04', 'MARTINEZ MORALES RUTH', '', '', '0000-00-00', '3 85 13 09', 'lic.ruthmorales@gmail.com', '', '', '', 1),
(4, 1, '29286', '2024-06-04', 'SAUCEDO TAPIA VICTOR IVAN', '', '', '0000-00-00', '7773273863', 'victorivants@gmail.com', '', '', '', 1),
(5, 1, '25131', '2024-06-04', 'OCAMPO POPOCA HECTOR DANIEL', '', '', '0000-00-00', '7771353284', 'lic.hector.ocampo@gmail.com', '', '', '', 1),
(6, 1, '17145', '2024-06-04', 'HERNANDEZ VIVERO MOISES', '', '', '0000-00-00', '', '', '', '', '', 1),
(7, 1, '13078', '2024-06-04', 'DOMINGUEZ SOLIS HARUMI', '', '', '0000-00-00', '3 20 46 55', 'hava_1217@hotmail.com', '', '', '', 1),
(8, 1, '22150', '2024-06-04', 'MORALES SOLIS SUSANA', '', '', '0000-00-00', '3 19 49 68', 'susana_morales24@hotmail.com', '', '', '', 1),
(9, 1, '28202', '2024-06-04', 'ROMAN ARANDA KARINA', '', '', '0000-00-00', '3 17 24 59', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(10, 1, '26213', '2024-06-04', 'PRADO BAHENA IVETH', '', '', '0000-00-00', '', '', '', '', '', 1),
(11, 2, '14052', '2024-06-04', 'ESPINOZA ADAN ALBERTO EMMANUEL', '', '', '0000-00-00', '3 11 66 57', 'eea_69@hotmail.com', '', '', '', 1),
(12, 2, '10177', '2024-06-04', 'ARVIZU PINEDA SOFIA', '', '', '0000-00-00', '7775940841', 'chofi180976@hotmail.com', '', '', '', 1),
(13, 2, '13022', '2024-06-04', 'DIRCIO MENDOZA BEATRIZ', '', '', '0000-00-00', '7773958070', 'bdircio@hotmail.com', '', '', '', 1),
(14, 2, '29085', '2024-06-04', 'SANCHEZ AGATON GABRIELA', '', '', '0000-00-00', '7777902372', 'gabysanchez@hotmail.com', '', '', '', 1),
(15, 2, '12072', '2024-06-04', 'CESPEDES GUEMES EDUARDO', '', '', '0000-00-00', '7773071172', 'edy__cg@hotmail.com', '', '', '', 1),
(16, 2, '29066', '2024-06-04', 'SALAZAR GONZALEZ MARIA ELENA', '', '', '0000-00-00', '7774442034', 'marielenasalazar998@gmail.com', '', '', '', 1),
(17, 2, '16150', '2024-06-04', 'GONZALEZ VEGA NELLY', '', '', '0000-00-00', '7771452759', 'nvg003112@gmail.com', '', '', '', 1),
(18, 2, '28235', '2024-06-04', 'RODRIGUEZ PAREDES ARACELI', '', '', '0000-00-00', '7772492948', 'araceliduribe@gmail.com', '', '', '', 1),
(19, 2, '12277', '2024-06-04', 'CARVAJAL GARCIA MARIANA', '', '', '0000-00-00', '', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(20, 2, '12304', '2024-06-04', 'CUEVAS DELGADO KARLA YAIRETH', '', '', '0000-00-00', '7772963891', 'kar.cuevas.0106@hotmail.com', '', '', '', 1),
(21, 2, '26134', '2024-06-04', 'PACHECO OCAMPO JORGE', '', '', '0000-00-00', '751 396 06 88', 'jorgeperrodelmal@hotmail.com', '', '', '', 1),
(22, 3, '22065', '2024-06-04', 'MORALES VAZQUEZ JUANA', '', '', '0000-00-00', '7772051589', 'moralesv@live.com.mx', '', '', '', 1),
(23, 3, '22098', '2024-06-04', 'MUNDO CASTRO MARIBEL', '', '', '0000-00-00', '044 777 324 7459', '', '', '', '', 1),
(24, 3, '16047', '2024-06-04', 'GUADARRAMA OCHOA ROSALBA', '', '', '0000-00-00', '7772572976', 'rguadarramaochoa@gmail.com', '', '', '', 1),
(25, 3, '28033', '2024-06-04', 'RIVERA CISNEROS ISABEL', '', '', '0000-00-00', '7771797922', 'isabelrivera301074@gmail.com', '', '', '', 1),
(26, 3, '28061', '2024-06-04', 'RENDON AMARO MIRIAM', '', '', '0000-00-00', '7775230002', 'miriam.ream.@gmail.com', '', '', '', 1),
(27, 3, '16193', '2024-06-04', 'GONZALEZ PEREZ MARIA ANTONIETA', '', '', '0000-00-00', '7772114669', 'tony66mayo@gmail.com', '', '', '', 1),
(28, 3, '15067', '2024-06-04', 'FLORES SANTIAGO MARIBEL', '', '', '0000-00-00', '7774930609', 'maribelfs274@gmail.com', '', '', '', 1),
(29, 3, '16252', '2024-06-04', 'GALVAN BARRERA MINTTZI SOLEDAD', '', '', '0000-00-00', '7776306562', 'minttzi.sol@gmail.com', '', '', '', 1),
(30, 3, '22291', '2024-06-04', 'MUÑOZ RIVERA GENARO', '', '', '0000-00-00', '7773695546', 'ikthan_9192@hotmail.com', '', '', '', 1),
(31, 3, '26111', '2024-06-04', 'PALAFOX CABRERA JOSEFINA', '', '', '0000-00-00', '7771795937', 'josepalafox279@gmail.com', '', '', '', 1),
(32, 3, '28105', '2024-06-04', 'RODRIGUEZ HERNANDEZ BLANCA LAURA', '', '', '0000-00-00', '7772709647', 'laurarod.hernandez@gmail.com', '', '', '', 1),
(33, 4, '12240', '2024-06-04', 'CASALES CRUZ ELENA', '', '', '0000-00-00', '7773023739', 'elena.casalesc@gmail.com', '', '', '', 1),
(34, 4, '14060', '2024-06-04', 'ESCOBAR ZARATE LUISA ODET', '', '', '0000-00-00', '7775358876', 'odet.escobar@hotmail.com', '', '', '', 1),
(35, 4, '15017', '2024-06-04', 'FRANCO CRUZ FERNANDO', '', '', '0000-00-00', '', 'aircop2003@hotmail.com', '', '', '', 1),
(36, 4, '15076', '2024-06-04', 'FLORES MOLINA LILIANA', '', '', '0000-00-00', '7773205431', 'moli_2777@hotmail.com', '', '', '', 1),
(37, 4, '22288', '2024-06-04', 'MARTINEZ SANTIAGO MARIA DE LA LUZ', '', '', '0000-00-00', '7772208797', 'malu210886@gmail.com', '', '', '', 1),
(38, 4, '28327', '2024-06-04', 'RANGEL FLORES ANDREA CORAL', '', '', '0000-00-00', '7771754231', 'coris_eminema89@hotmail.com', '', '', '', 1),
(39, 4, '29237', '2024-06-04', 'SALGADO CASTRO IVAN JOSHUA', '', '', '0000-00-00', '777 171 02 10', 'ivan_joshua11@hotmail.com', '', '', '', 1),
(40, 4, '30076', '2024-06-04', 'TOVAR AGUILAR JENNIFER', '', '', '0000-00-00', '7773461030', 'jennifertovaraguilar@hotmail.com', '', '', '', 1),
(41, 4, '32100', '2024-06-04', 'VENTURA GUEMES MARILU', '', '', '0000-00-00', '7775130990', 'mariluvguemes@hotmail.com', '', '', '', 1),
(42, 4, '32139', '2024-06-04', 'VILLA VERGARA JUANA', '', '', '0000-00-00', '7771624724', 'juanitavillavergara@gmail.com', '', '', '', 1),
(43, 4, '32153', '2024-06-04', 'VEGA GUADARRAMA JOSE ALBERTO', '', '', '0000-00-00', '7775517833', 'abogado.alberto@hotmail.com', '', '', '', 1),
(44, 4, '10095', '2024-06-04', 'AGUILAR LORENZO ERENDIRA', '', '', '0000-00-00', '3 16 15 33', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(45, 4, '10278', '2024-06-04', 'ALVARADO SOTELO MARIANA MONTSERRAT', '', '', '0000-00-00', '7771354540', 'alvarado.sotelo.mariana@gmail.com', '', '', '', 1),
(46, 4, '12178', '2024-06-04', 'CARVAJAL RODRIGUEZ MARISOL', '', '', '0000-00-00', '7773051743', 'marisol_1815@icloud.com', '', '', '', 1),
(47, 4, '12208', '2024-06-04', 'CANO DIAZ CARMEN', '', '', '0000-00-00', '1643068', 'canocarmen@live.com.mx', '', '', '', 1),
(48, 4, '12307', '2024-06-04', 'CERVANTES DEMEZA KARINA', '', '', '0000-00-00', '7774509960', 'karidemeza@gmail.com', '', '', '', 1),
(49, 4, '15146', '2024-06-04', 'FLORES FLORES ARMANDO JOSIMAR', '', '', '0000-00-00', '7775631466', 'josimarfloresf@gmail.com', '', '', '', 1),
(50, 4, '16083', '2024-06-04', 'GONZALEZ FLORES DARBE CESAR', '', '', '0000-00-00', '7772256330', 'cesargonzalez20002020@gmail.com', '', '', '', 1),
(51, 4, '16267', '2024-06-04', 'GIL ARANDA REBECA', '', '', '0000-00-00', '7777896103', 'persefone1281@gmail.com', '', '', '', 1),
(52, 4, '16363', '2024-06-04', 'GUERRERO FIGUEROA NELLY ELIZABETH', '', '', '0000-00-00', '7771294044', '', '', '', '', 1),
(53, 4, '28320', '2024-06-04', 'REYES NAZARIO FELIPE DE JESUS', '', '', '0000-00-00', '7772066674', 'felipereyes2070@gmail.com', '', '', '', 1),
(54, 4, '28362', '2024-06-04', 'ROMAN MURIAS JANET', '', '', '0000-00-00', '7773029211', 'janrom@hotmail.es', '', '', '', 1),
(55, 4, '28391', '2024-06-04', 'RAMALES SANTIAGO KARINA', '', '', '0000-00-00', '7774244266', 'ramalesk@outlook.com', '', '', '', 1),
(56, 4, '12196', '2024-06-04', 'CONTRERAS CORTES JESSICA', '', '', '0000-00-00', '7775662149', 'contrerascortesj860@gmail.com', '', '', '', 1),
(57, 5, '13150', '2024-06-04', 'DELGADO TORRES MINERVA', '', '', '0000-00-00', '7774966010', 'minervadtorres@hotmail.com', '', '', '', 1),
(58, 5, '28402', '2024-06-04', 'REYES VELASCO SAMUEL', '', '', '0000-00-00', '7771404676', 'samuels.reyes@gmail.com', '', '', '', 1),
(59, 6, '26152', '2024-06-04', 'PIMENTEL MEJIA CATALINA', '', '', '0000-00-00', '7352068945', 'catalinapimentel912@gmail.com', '', '', '', 1),
(60, 6, '21093', '2024-06-04', 'LOPEZ ZARCO IVONNE', '', '', '0000-00-00', '7772159822', 'bonny_72@hotmail.com', '', '', '', 1),
(61, 6, '12285', '2024-06-04', 'CRUZ ESPARZA THALIA', '', '', '0000-00-00', '7771376760', 'thaliaesparza81@gmail.com', '', '', '', 1),
(62, 6, '22239', '2024-06-04', 'MOSQUEDA FUENTES DALILA', '', '', '0000-00-00', '7775644670', 'mfdal@live.com', '', '', '', 1),
(63, 6, '16021', '2024-06-04', 'GUERRERO VALLE CLAUDIA', '', '', '0000-00-00', '7773069760', 'claugro2014@hotmail.com', '', '', '', 1),
(64, 7, '29288', '2024-06-04', 'SANCHEZ CORTES JOSUE VICTORINO', '', '', '0000-00-00', '7691703000', 'chargersrt@gmail.com', '', '', '', 1),
(65, 7, '28171', '2024-06-04', 'RAMIREZ FLORES PEDRO', '', '', '0000-00-00', '3 65 93 15', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(66, 7, '10151', '2024-06-04', 'ALDAMA VAZQUEZ HUGO ANDRES', '', '', '0000-00-00', '361 49 15', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(67, 7, '10211', '2024-06-04', 'ARROYO MORENO FELIPE', '', '', '0000-00-00', '7771857444', 'arroyofelipe@live.com', '', '', '', 1),
(68, 7, '10226', '2024-06-04', 'ARROYO CORONEL RICARDO FELIPE', '', '', '0000-00-00', '7774528473', 'r19307@gmail.com', '', '', '', 1),
(69, 7, '11139', '2024-06-04', 'BARRETO TRUJILLO JOEL', '', '', '0000-00-00', '045 735 13 76302', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(70, 7, '11202', '2024-06-04', 'BERNABE VARGAS MARTIN', '', '', '0000-00-00', '7773757588', 'vargasbernab2012@gmail.com', '', '', '', 1),
(71, 7, '12226', '2024-06-04', 'CASTREJON REYNA RAFAEL', '', '', '0000-00-00', '7341423501', 'ralf_castrejon@hotmail.com', '', '', '', 1),
(72, 7, '14048', '2024-06-04', 'ESPINOZA MARTINEZ MARIO', '', '', '0000-00-00', '777205 03 46', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(73, 7, '14058', '2024-06-04', 'ESPINOSA MORENO AGUSTIN', '', '', '0000-00-00', '3722598', '', '', '', '', 1),
(74, 7, '21120', '2024-06-04', 'LANDA SERRANO VICENTE', '', '', '0000-00-00', '7341088008', 'lobolanda22@gmail.com', '', '', '', 1),
(75, 7, '22315', '2024-06-04', 'MORA CASTAÑEDA ARMANDO', '', '', '0000-00-00', '3266457', 'moraarmando08@hotmail.com', '', '', '', 1),
(76, 7, '23040', '2024-06-04', 'NARVAEZ ALVAREZ HECTOR', '', '', '0000-00-00', '3151239', 'ssp.hectornarvaez@gmail.com', '', '', '', 1),
(77, 7, '25089', '2024-06-04', 'OLAZCOAGA TAPIA MARCO ANTONIO', '', '', '0000-00-00', '', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(78, 7, '26115', '2024-06-04', 'PONCE CABRERA LEONEL', '', '', '0000-00-00', '7341217625', 'ponceleonel896@gmail.com', '', '', '', 1),
(79, 7, '26165', '2024-06-04', 'PONCE GONZALEZ ERIBAN', '', '', '0000-00-00', '7351106331', 'poncegonzalezeriban@gmail.com', '', '', '', 1),
(80, 7, '28187', '2024-06-04', 'REZA RODRIGUEZ PABLO', '', '', '0000-00-00', '', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(81, 7, '28212', '2024-06-04', 'REZA RODRIGUEZ PEDRO', '', '', '0000-00-00', '318 15 38', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(82, 7, '28253', '2024-06-04', 'REZA OLASCOAGA ROBERTO CARLOS', '', '', '0000-00-00', '7774298657', 'isabelareyesgarcia@gmail.com', '', '', '', 1),
(83, 7, '28255', '2024-06-04', 'REYES REYES MIGUEL ANGEL', '', '', '0000-00-00', '7771904371', '', '', '', '', 1),
(84, 7, '28257', '2024-06-04', 'RAMOS ALVAREZ JESUS', '', '', '0000-00-00', '7771619314', 'jesus.ramos.alvarez.28257@gmail.com', '', '', '', 1),
(85, 7, '29058', '2024-06-04', 'SALGADO AGUIRRE GERARDO', '', '', '0000-00-00', '7343492458', 'gerardosalgado472@gmail.com', '', '', '', 1),
(86, 7, '29195', '2024-06-04', 'SANDOVAL ALVAREZ ABRAM', '', '', '0000-00-00', '3 20 03 81', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(87, 7, '29201', '2024-06-04', 'SERNA ANTOLINO AXEL ALBERTO', '', '', '0000-00-00', '7777885632', 'axelserna_1015@outlook.com', '', '', '', 1),
(88, 7, '29256', '2024-06-04', 'SOTO MARTINEZ RODOLFO ETZAEL', '', '', '0000-00-00', '7773697875', 'etzaelsm@outlook.com', '', '', '', 1),
(89, 7, '32207', '2024-06-04', 'VAZQUEZ CABELLO OSCAR JERONIMO', '', '', '0000-00-00', '3184348', '', '', '', '', 1),
(90, 7, '10285', '2024-06-04', 'ALEJANDRE MONTEMAYOR ISMAEL OSBALDO', '', '', '0000-00-00', '', '', '', '', '', 1),
(91, 8, '16081', '2024-06-04', 'GARCIA SALINAS MARIA ELODIA', '', '', '0000-00-00', '3 20 50 32', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(92, 8, '28273', '2024-06-04', 'RAMIREZ DIAZ CRISTIAN ALEJANDRO', '', '', '0000-00-00', '7773760005', 'cris123a@gmail.com', '', '', '', 1),
(93, 8, '35011', '2024-06-04', 'ZAMORA HERNANDEZ MARI CARMEN', '', '', '0000-00-00', '7772200422', 'marimoniconsejo@hotmail.com', '', '', '', 1),
(94, 8, '12333', '2024-06-04', 'CAMPOS RAYADO CARLA', '', '', '0000-00-00', '7771893079', 'carlarric@hotmail.com', '', '', '', 1),
(95, 8, '17124', '2024-06-04', 'HERNANDEZ CARDENAS JASSIVE ELIZABETH', '', '', '0000-00-00', '7773886229', 'jassive_01@hotmail.com', '', '', '', 1),
(96, 8, '22252', '2024-06-04', 'MARTINEZ BAHENA MARTHA LIDIA', '', '', '0000-00-00', '044 777376 64 23', 'cristalmlmb@hotmail.com', '', '', '', 1),
(97, 8, '25049', '2024-06-04', 'ORTEGA MOLINA EDUARDO SEBASTIAN', '', '', '0000-00-00', '7775167373', 'sebaslalo77@yahoo.com.mx', '', '', '', 1),
(98, 8, '25073', '2024-06-04', 'ORTIZ SANCHEZ VIRIDIANA', '', '', '0000-00-00', '3 19 33 25', '', '', '', '', 1),
(99, 8, '28183', '2024-06-04', 'RIVERA ALVAREZ ERIKA', '', '', '0000-00-00', '7771757188', 'tsj.junta.erika@gmail.com', '', '', '', 1),
(100, 8, '28284', '2024-06-04', 'REYES ESQUIVEL BRENDA SINAI', '', '', '0000-00-00', '7352530666', 're_bs_1000@hotmail.com', '', '', '', 1),
(101, 8, '28397', '2024-06-04', 'RIOS ENRIQUEZ RICARDO', '', '', '0000-00-00', '7771197450', 'richard_rios33@hotmail.com', '', '', '', 1),
(102, 8, '29146', '2024-06-04', 'SANDOVAL LOME VIANEY', '', '', '0000-00-00', '7772116997', 'vianey_juz@hotmail.com', '', '', '', 1),
(103, 8, '16250', '2024-06-04', 'GUEVARA SOTELO ELISEO', '', '', '0000-00-00', '01777 3138243', 'eliseoguevara@hotmail.com', '', '', '', 1),
(104, 8, '32204', '2024-06-04', 'VELAZQUEZ MONTES CLAUDIA', '', '', '0000-00-00', '7771317490', 'clavel_m14@hotmail.com', '', '', '', 1),
(105, 8, '12042', '2024-06-04', 'CARRILLO SEDANO LAURA VERONICA', '', '', '0000-00-00', '7771411169', 'lauvercase@hotmail.com', '', '', '', 1),
(106, 8, '13137', '2024-06-04', 'DIAZ SANCHEZ PAULA', '', '', '0000-00-00', '7775699957', 'pau6631@gmail.com', '', '', '', 1),
(107, 8, '15110', '2024-06-04', 'FLORES MIRANDA OCTAVIO', '', '', '0000-00-00', '', 'octavio_2011@hotmail.com', '', '', '', 1),
(108, 8, '16212', '2024-06-04', 'GUERRERO VALENCIA ADRIANA LOURDES', '', '', '0000-00-00', '3 65 61 53', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(109, 8, '16354', '2024-06-04', 'GARCIA  PAUL ALEJANDRO', '', '', '0000-00-00', '7772495464', 'tsc.garcia23@gmail.com', '', '', '', 1),
(110, 8, '17123', '2024-06-04', 'HERNANDEZ MUÑOZ KEVIN DAVID', '', '', '0000-00-00', '5625852988', 'daviizzerr@gmail.com', '', '', '', 1),
(111, 8, '19063', '2024-06-04', 'JAIMES CHAVEZ ANTONIA', '', '', '0000-00-00', '7775156920', 'antonia831005@gmail.com', '', '', '', 1),
(112, 8, '22370', '2024-06-04', 'MEJIA HERNANDEZ XIMENA', '', '', '0000-00-00', '7621175737', 'melaniie86@hotmail.com', '', '', '', 1),
(113, 8, '25133', '2024-06-04', 'ORTIZ BARCENAS JOSE ANTONIO', '', '', '0000-00-00', '5545834930', '', '', '', '', 1),
(114, 8, '28321', '2024-06-04', 'RODRIGUEZ LOPEZ MAR BELLA', '', '', '0000-00-00', '7775319721', 'jonemajbl@hotmail.com', '', '', '', 1),
(115, 8, '32134', '2024-06-04', 'VILLA VERGARA ROSA MA.', '', '', '0000-00-00', '5 12 37 57', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(116, 8, '13008', '2024-06-04', 'DIAZ CERON ROSENDA MIREYA', '', '', '0000-00-00', '7775141930', 'romidice@hotmail.com', '', '', '', 1),
(117, 9, '23019', '2024-06-04', 'NAVA SANCHEZ SAMUEL ALEJANDRO', '', '', '0000-00-00', '777 511 78 46', 'axi_nava@hotmail.com', '', '', '', 1),
(118, 9, '26070', '2024-06-04', 'PICHARDO GUTIERREZ YUNELI', '', '', '0000-00-00', '01 751 34 40 413', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(119, 9, '10130', '2024-06-04', 'ARELLANO CARDENAS FATIMA ZULEYCA', '', '', '0000-00-00', '7772186153', 'fatimazarellano@yahoo.com.mx', '', '', '', 1),
(120, 9, '12259', '2024-06-04', 'CASTAÑEDA PEREZ JESUS JONATHAN', '', '', '0000-00-00', '3195609', 'jesuszavala80@gmail.com', '', '', '', 1),
(121, 9, '22193', '2024-06-04', 'MENDOZA CORTES BERENICE', '', '', '0000-00-00', '7771916975', 'meceberenice@gmail.com', '', '', '', 1),
(122, 9, '32222', '2024-06-04', 'VEGA BAEZ LETICIA YUNUE', '', '', '0000-00-00', '5519649133', 'yunue_principeza@hotmail.com', '', '', '', 1),
(123, 9, '16287', '2024-06-04', 'GONZALEZ VILLALOBOS BEATRIZ', '', '', '0000-00-00', '7775242578', 'g-bethp@hotmail.com', '', '', '', 1),
(124, 9, '19055', '2024-06-04', 'JIMENEZ ERAZO GABRIELA ALEJANDRA', '', '', '0000-00-00', '7772007634', 'gabyalejimera@gmail.com', '', '', '', 1),
(125, 9, '11013', '2024-06-04', 'BALLASTRA VILLEGAS ROCIO', '', '', '0000-00-00', '7773820985', 'rosstra17@gmail.com', '', '', '', 1),
(126, 9, '28043', '2024-06-04', 'REQUENA BAHENA MARIA ISABEL', '', '', '0000-00-00', '5633886158', 'isarek@hotmail.com', '', '', '', 1),
(127, 9, '11209', '2024-06-04', 'BELTRAN LEON MARITZA', '', '', '0000-00-00', '7353268389', 'mardgonzalez25@gmail.com', '', '', '', 1),
(128, 9, '16271', '2024-06-04', 'GUERRERO VALENCIA MARISOL YOLANDA', '', '', '0000-00-00', '7775226055', 'mariuli2209@gmail.com', '', '', '', 1),
(129, 9, '17136', '2024-06-04', 'HERNANDEZ CASTREJON CAROLINA', '', '', '0000-00-00', '7772252442', 'kro89_hc@hotmail.com', '', '', '', 1),
(130, 9, '22245', '2024-06-04', 'MAYA MORALES CRISTIAN', '', '', '0000-00-00', '7775226322', 'maya84criss@hotmail.com', '', '', '', 1),
(131, 9, '23060', '2024-06-04', 'NAVARRO LAZARO MA. JACKELINE', '', '', '0000-00-00', '7771071411', 'm.d.jackynavalaz@gmail.com', '', '', '', 1),
(132, 9, '25125', '2024-06-04', 'OROZCO MUÑOZ VALERIA ATHZIRI', '', '', '0000-00-00', '7776307767', 'valeriaorozco4@gmail.com', '', '', '', 1),
(133, 9, '28232', '2024-06-04', 'RAMIREZ RODRIGUEZ SILVIA', '', '', '0000-00-00', '3177766', '', '', '', '', 1),
(134, 9, '28392', '2024-06-04', 'RODRIGUEZ SERRATO JOSE LEON', '', '', '0000-00-00', '7353476710', '', '', '', '', 1),
(135, 9, '25132', '2024-06-04', 'OLIVER ROBLES EDGAR', '', '', '0000-00-00', '5539385860', 'rool_edgar@hotmail.com', '', '', '', 1),
(136, 10, '28352', '2024-06-04', 'ROSALES GUTIERREZ OCTAVIO', '', '', '0000-00-00', '7775238685', 'octavio.rosalesg@gmail.com', '', '', '', 1),
(137, 10, '22330', '2024-06-04', 'MACEDO MARTINEZ KAREN LORENA', '', '', '0000-00-00', '7773056378', 'karenmmarz.9@gmail.com', '', '', '', 1),
(138, 10, '16351', '2024-06-04', 'GARCIA SAN NICOLAS ZOILA', '', '', '0000-00-00', '7777400032', 'ZOIGSN@GMAIL.COM', '', '', '', 1),
(139, 11, '11148', '2024-06-04', 'BRITO MIRANDA MONICA', '', '', '0000-00-00', '7771916543', 'mobrito2010@hotmail.coom', '', '', '', 1),
(140, 11, '16279', '2024-06-04', 'GARCIA MORALES MARCO ANTONIO', '', '', '0000-00-00', '7773888317', 'cpmarco_04@hotmail.com', '', '', '', 1),
(141, 11, '13134', '2024-06-04', 'DIAZ FLORES ENRIQUE', '', '', '0000-00-00', '7772401681', 'enrique.fondoauxiliar@gmail.com', '', '', '', 1),
(142, 11, '10065', '2024-06-04', 'AVELAR MORAN SERGIO', '', '', '0000-00-00', '7771099470', 'sergio.avelar@cecytemorelos.edu.mx', '', '', '', 1),
(143, 11, '21066', '2024-06-04', 'LONGARDO PERALTA CARLOS', '', '', '0000-00-00', '7771631418', 'carlos76100@hotmail.com', '', '', '', 1),
(144, 11, '22292', '2024-06-04', 'MAZON RAMIREZ GUADALUPE', '', '', '0000-00-00', '7773697773', 'guadalupemr7@hotmail.com', '', '', '', 1),
(145, 11, '17039', '2024-06-04', 'HERNANDEZ CASTAÑEDA ELEAZAR GABRIELA', '', '', '0000-00-00', '7775226985', 'g.eleazar.hc@gmail.com', '', '', '', 1),
(146, 11, '15084', '2024-06-04', 'FLORES BARCENAS AMALIA DEL PILAR', '', '', '0000-00-00', '7773790126', 'floresbarcenaspilar@gmail.com', '', '', '', 1),
(147, 11, '15144', '2024-06-04', 'FLORES CARRILLO MAXIMILIANO GILBERTO', '', '', '0000-00-00', '3157632', 'lauvercase@hotmail.com', '', '', '', 1),
(148, 11, '16339', '2024-06-04', 'GONZALEZ SALINAS SUSANA', '', '', '0000-00-00', '7771033001', 'susanagonzalezsalinas@hotmail.com', '', '', '', 1),
(149, 11, '17103', '2024-06-04', 'HERNANDEZ GARCIA ELVIA', '', '', '0000-00-00', '7771579769', 'beba_elvis1983@hotmail.com', '', '', '', 1),
(150, 11, '23025', '2024-06-04', 'NAVA AGUILAR CLARA', '', '', '0000-00-00', '7773122457', 'clar.n@hotmail.com', '', '', '', 1),
(151, 11, '28341', '2024-06-04', 'RIOS ORTIZ FERNANDA', '', '', '0000-00-00', '7474739572', 'riof625_@hotmail.com', '', '', '', 1),
(152, 12, '16382', '2024-06-04', 'GONZALEZ VALLINA ELIZABETH', '', '', '0000-00-00', '7771909618', 'elygvallina@hotmail.com', '', '', '', 1),
(153, 12, '22353', '2024-06-04', 'MORENO MONTERO JUAN', '', '', '0000-00-00', '7351153998', 'juanmm_32@hotmail.com', '', '', '', 1),
(154, 12, '35031', '2024-06-04', 'ZAMBRANO VARGAS ISIDRO', '', '', '0000-00-00', '', '', '', '', '', 1),
(155, 12, '13047', '2024-06-04', 'DOMINGUEZ CANDELERO ROSA ELENA', '', '', '0000-00-00', '7772728448', 'roscandelero@gmail.com', '', '', '', 1),
(156, 12, '22338', '2024-06-04', 'MEDINA SOTO ESMERALDA', '', '', '0000-00-00', '7774047933', 'e-m-soto1@hotmail.com', '', '', '', 1),
(157, 12, '25124', '2024-06-04', 'ORTIZ RODRIGUEZ MARTHA', '', '', '0000-00-00', '7775557008', 'mar_gisell@hotmail.com', '', '', '', 1),
(158, 12, '26207', '2024-06-04', 'PERALTA AYALA MARISOL', '', '', '0000-00-00', '7773044053', 'solayala.mpa@gmail.com', '', '', '', 1),
(159, 12, '32223', '2024-06-04', 'VILLALBA FLORES CARLOS ARMANDO', '', '', '0000-00-00', '7775726379', 'VILLALBACARLOS13@HOTMAIL.COM', '', '', '', 1),
(160, 12, '22346', '2024-06-04', 'MARTINEZ MAGOS JONATAN IGOR', '', '', '0000-00-00', '7771059902', 'martinezji@hotmail.com', '', '', '', 1),
(161, 12, '30109', '2024-06-04', 'TORRES MENDOZA GLORIA CINTHIA', '', '', '0000-00-00', '7771899399', 'sisitazz@outlook.com', '', '', '', 1),
(162, 13, '12011', '2024-06-04', 'CRUZ ESPINDOLA ALFREDO', '', '', '0000-00-00', '7771349353', 'ntuple.ace@gmail.com', '', '', '', 1),
(163, 13, '16254', '2024-06-04', 'GARCIA  ULISES EUDIFRED', '', '', '0000-00-00', '7775639241', 'uliseseudifredgarcia@gmail.com', '', '', '', 1),
(164, 13, '22249', '2024-06-04', 'MARTINEZ LEON SAMUEL', '', '', '0000-00-00', '7771403023', 'samuelmtzleon@gmail.com', '', '', '', 1),
(165, 13, '26191', '2024-06-04', 'PEREZ FLORES ENRIQUE', '', '', '0000-00-00', '7772062285', 'epfl605@gmail.com', '', '', '', 1),
(166, 13, '31020', '2024-06-04', 'UROZA GOMEZ HUGO MANUEL', '', '', '0000-00-00', '7773700491', 'ruroza.tsjmor@gmail.com', '', '', '', 1),
(167, 13, '26092', '2024-06-04', 'PEREZ MARTINEZ HIPOLITO', '', '', '0000-00-00', '7773018544', 'Hpm130879@gmail.com', '', '', '', 1),
(168, 13, '29162', '2024-06-04', 'SERRANO AYALA MARTIN', '', '', '0000-00-00', '7775113056', 'MARSERAY@GMAIL.COM', '', '', '', 1),
(169, 13, '10214', '2024-06-04', 'ALCANTARA RAMOS VICTOR MANUEL', '', '', '0000-00-00', '7775194612', 'victor.alcramos@gmail.com', '', '', '', 1),
(170, 13, '23030', '2024-06-04', 'NAVA AGUILAR GABRIELA', '', '', '0000-00-00', '7771618143', 'gabyisc@hotmail.com', '', '', '', 1),
(171, 13, '29248', '2024-06-04', 'SOLAR MIRANDA JUAN CARLOS', '', '', '0000-00-00', '5529160286', 'jcsolarm@gmail.com', '', '', '', 1),
(172, 13, '10100', '2024-06-04', 'ADAN RAMIREZ ISRAEL', '', '', '0000-00-00', '3 160165', '', '', '', '', 1),
(173, 13, '13020', '2024-06-04', 'DAMIAN JUAREZ MANUEL', '', '', '0000-00-00', '7771371214', 'menyliz@hotmail.com', '', '', '', 1),
(174, 13, '16304', '2024-06-04', 'GONZALEZ VILLEGAS BRYANT ARIEL', '', '', '0000-00-00', '7774177826', '01tribu@gmail.com', '', '', '', 1),
(175, 13, '22270', '2024-06-04', 'MONTES ZARCO HELENA MILENKA', '', '', '0000-00-00', '7352766557', 'MILK_ZARCO@HOTMAIL.COM', '', '', '', 1),
(176, 13, '22186', '2024-06-04', 'MENDOZA TREJO ROCIO', '', '', '0000-00-00', '7775071805', 'rociomt1606@gmail.com', '', '', '', 1),
(177, 13, '10174', '2024-06-04', 'ARIZABALO FUENTES EDGARDO', '', '', '0000-00-00', '7341137781', 'AIFE1966@GMAIL.COM', '', '', '', 1),
(178, 13, '16283', '2024-06-04', 'GONZALEZ PIEDROLA MARGARITA ESPERANZA', '', '', '0000-00-00', '7771359733', 'mago.gp@hotmail.com', '', '', '', 1),
(179, 13, '16333', '2024-06-04', 'GUEVARA CRESPO HECTOR MAURICIO', '', '', '0000-00-00', '7771351132', 'crespomg@gmail.com', '', '', '', 1),
(180, 13, '16358', '2024-06-04', 'GONZALEZ SUAREZ CARMEN LETICIA', '', '', '0000-00-00', '7772673092', 'lety.suarezglz@gmail.com', '', '', '', 1),
(181, 13, '19065', '2024-06-04', 'JIMENEZ LEYVA IRVIN OMAR', '', '', '0000-00-00', '7771931251', 'omarjimenez.9112@gmail.com', '', '', '', 1),
(182, 13, '19069', '2024-06-04', 'JIMENEZ LEYVA MARCO ANTONIO', '', '', '0000-00-00', '7771978908', '', '', '', '', 1),
(183, 13, '21149', '2024-06-04', 'LEYRA MONTES LEONARDO', '', '', '0000-00-00', '7773676581', 'leyra2@hotmail.com', '', '', '', 1),
(184, 13, '25129', '2024-06-04', 'ORTIZ MEZA EDGAR IVAN', '', '', '0000-00-00', '7771414831', 'eiom229012@gmail.com', '', '', '', 1),
(185, 13, '26127', '2024-06-04', 'PEREZ RAMIREZ RUBEN GONZALO', '', '', '0000-00-00', '7771858027', 'rubenrains01@gmail.com', '', '', '', 1),
(186, 13, '26132', '2024-06-04', 'PACHECO OCAMPO JOSE EMILIO', '', '', '0000-00-00', '7771817250', 'luxor.07@gmail.com', '', '', '', 1),
(187, 13, '29185', '2024-06-04', 'SEVILLA BELLO GREGORIO', '', '', '0000-00-00', '7776057050', 'goyo3d@gmail.com', '', '', '', 1),
(188, 13, '29241', '2024-06-04', 'SOLIS ESPEJO ANIBAL', '', '', '0000-00-00', '7351615591', 'solis.e.a@hotmail.com', '', '', '', 1),
(189, 13, '29290', '2024-06-04', 'SALGADO CASTRO KAREN PALOMA', '', '', '0000-00-00', '7775103382', 'paloma.castro1997@gmail.com', '', '', '', 1),
(190, 13, '30115', '2024-06-04', 'TORRESCANO GUTIERREZ GIOVANNI', '', '', '0000-00-00', '7773049848', 'giotorrescano@gmail.com', '', '', '', 1),
(191, 13, '35026', '2024-06-04', 'ZAVALA MILLAN JUAN GABRIEL', '', '', '0000-00-00', '7771616750', 'juangabrielz@gmail.com', '', '', '', 1),
(192, 13, '22342', '2024-06-04', 'MARTINEZ VILLALOBOS EDUARDO', '', '', '0000-00-00', '7341160224', 'emartinez.tsjmor@gmail.com', '', '', '', 1),
(193, 13, '28260', '2024-06-04', 'REYES HERNANDEZ IRVING AXEL', '', '', '0000-00-00', '7773495425', 'irvingrh30@hotmail.com', '', '', '', 1),
(194, 14, '16341', '2024-06-04', 'GONZALEZ PANDO ANA SOFIA', '', '', '0000-00-00', '7773244466', 'ana_gvp@live.com.mx', '', '', '', 1),
(195, 14, '19058', '2024-06-04', 'JADUL GALVAN PALOMA', '', '', '0000-00-00', '7772409051', 'palomajadulgalvan@gmail.com', '', '', '', 1),
(196, 14, '19081', '2024-06-04', 'JAIME VALLE ELIZABETH', '', '', '0000-00-00', '7774223859', 'jaime.valle.elizabeth@gmail.com', '', '', '', 1),
(197, 14, '23052', '2024-06-04', 'NAVA NAVA MIGUEL ANGEL', '', '', '0000-00-00', '7772535272', 'miguel.escuelajudicial@gmail.com', '', '', '', 1),
(198, 14, '22355', '2024-06-04', 'MUÑOZ MARTINEZ ANA MARCELA', '', '', '0000-00-00', '7351947609', 'marcela_munozmartinez@hotmail.com', '', '', '', 1),
(199, 15, '12050', '2024-06-04', 'CEDILLO OLIVARES VERONICA', '', '', '0000-00-00', '7776225143', 'verocedillo10@hotmail.com', '', '', '', 1),
(200, 15, '12029', '2024-06-04', 'CRUZ DAMAS MARIA TERESA', '', '', '0000-00-00', '7775213092', 'teresitacdamas@gmail.com', '', '', '', 1),
(201, 15, '25052', '2024-06-04', 'OROSCO ALVAREZ HORACIO', '', '', '0000-00-00', '7773071557', 'neri_0112@hotmail.com', '', '', '', 1),
(202, 15, '28154', '2024-06-04', 'REVELEZ GONZALEZ IRMA LETICIA', '', '', '0000-00-00', '7773751020', 'lrevelez@hotmail.com', '', '', '', 1),
(203, 15, '11144', '2024-06-04', 'BERMAN GARCIA EDGAR FRANCISCO', '', '', '0000-00-00', '7774045356', 'gboletin2019@gmail.com', '', '', '', 1),
(204, 15, '10009', '2024-06-04', 'ANZURES QUINTERO OSCAR', '', '', '0000-00-00', '7773607047', 'oanzures49@gmail.com', '', '', '', 1),
(205, 16, '14085', '2024-06-04', 'ESCOBAR FLORES ANGEL ALEXIS', '', '', '0000-00-00', '7772106360', 'ZONA792@YAHOO.COM', '', '', '', 1),
(206, 16, '32173', '2024-06-04', 'VIVES LOPEZ MARIA CRISTINA', '', '', '0000-00-00', '7773336028', 'crisvivlop@hotmail.com', '', '', '', 1),
(207, 17, '16323', '2024-06-04', 'GARCIA HERRERA MONICA JANET', '', '', '0000-00-00', '7775601497', 'monicagarcia040576@gmail.com', '', '', '', 1),
(208, 17, '11020', '2024-06-04', 'BERRUECOS MIRANDA LISBET VERONICA', '', '', '0000-00-00', '772355314', 'lberruecos@hotmail.com', '', '', '', 1),
(209, 17, '29164', '2024-06-04', 'SANCHEZ RUBI RUBI', '', '', '0000-00-00', '7772799221', 'rubiss114@gmail.com', '', '', '', 1),
(210, 17, '32199', '2024-06-04', 'VAZQUEZ CORONEL SONIA', '', '', '0000-00-00', '7775959558', 'sony0122@gmail.com', '', '', '', 1),
(211, 17, '10292', '2024-06-04', 'ARROYO RODRIGUEZ VALERY', '', '', '0000-00-00', '7773204530', '', '', '', '', 1),
(212, 17, '17133', '2024-06-04', 'HERNANDEZ CERVANTES MARIANA', '', '', '0000-00-00', '7771289088', 'mariana_hdez@live.com', '', '', '', 1),
(213, 17, '28199', '2024-06-04', 'RIVERA JACOBO INDIRA', '', '', '0000-00-00', '7774164762', 'indiriveraj5@gmail.com', '', '', '', 1),
(214, 17, '31010', '2024-06-04', 'URQUIZA AGUILAR GABRIELA MARLENE', '', '', '0000-00-00', '7774394434', 'gabrielamarleneurquiza@gmail.com', '', '', '', 1),
(215, 17, '11058', '2024-06-04', 'BENHUMEA RAMOS MARIA DE LOURDES', '', '', '0000-00-00', '7774285049', 'lulu.benhumea@gmail.com', '', '', '', 1),
(216, 17, '32129', '2024-06-04', 'VARGAS CARBAJAL MA. REINA', '', '', '0000-00-00', '7772224849', 'mary.vc2606@gmail.com', '', '', '', 1),
(217, 17, '10132', '2024-06-04', 'ALVAREZ FERNANDEZ FLOR GUADALUPE', '', '', '0000-00-00', '7775657737', 'flor.alvarez203@gmail.com', '', '', '', 1),
(218, 17, '22286', '2024-06-04', 'MALDONADO HERNANDEZ TERESA', '', '', '0000-00-00', '7771598996', 'teremaldonadohdz@gmail.com', '', '', '', 1),
(219, 17, '22387', '2024-06-04', 'MARTINEZ GARCIA ALMA YARELI', '', '', '0000-00-00', '7774605883', 'yareli.yea.23@hotmail.com', '', '', '', 1),
(220, 17, '29272', '2024-06-04', 'SOTELO ORTIZ ZENAIDA', '', '', '0000-00-00', '7771318201', 'zena-sotelo@hotmail.com', '', '', '', 1),
(221, 17, '30077', '2024-06-04', 'TAPIA GOMEZ BLANCA LILIA', '', '', '0000-00-00', '7776318991', 'blancaliliatapi@gmail.com', '', '', '', 1),
(222, 17, '32098', '2024-06-04', 'VALLADARES ARROYO MARIA SELENE', '', '', '0000-00-00', '7771316263', 'mariaselenevalladaresarroyo@gmail.com', '', '', '', 1),
(223, 17, '29134', '2024-06-04', 'SAMANO BELTRAN ROSA MARIA', '', '', '0000-00-00', '7771101391', 'Rosamariasamanobeltran@gmail.com', '', '', '', 1),
(224, 17, '31011', '2024-06-04', 'URIBE APONTE LETICIA', '', '', '0000-00-00', '7773133154', 'leticitauribeaponte@gmail.com', '', '', '', 1),
(225, 17, '29221', '2024-06-04', 'SANCHEZ REYES MARCO ANTONIO', '', '', '0000-00-00', '7771758446', 'matusfor86@gmail.com', '', '', '', 1),
(226, 17, '28347', '2024-06-04', 'RAMIREZ LUNA RAUL', '', '', '0000-00-00', '7772661163', 'drramirezcendi@gmail.com', '', '', '', 1),
(227, 18, '13149', '2024-06-04', 'DIAZ VIVANCO VIOLETA', '', '', '0000-00-00', '', '', '', '', '', 1),
(228, 18, '13092', '2024-06-04', 'DEL PILAR GONZALEZ ANA MARIA', '', '', '0000-00-00', '7774251542', 'delpilargonzalezanamaria@gmail.com', '', '', '', 1),
(229, 18, '29144', '2024-06-04', 'SERRANO MORALES JUAN FERNANDO', '', '', '0000-00-00', '7346882737', 'jfserrano318@gmail.com', '', '', '', 1),
(230, 18, '30099', '2024-06-04', 'TAPIA GONZALEZ EMMANUEL', '', '', '0000-00-00', '7775684608', '', '', '', '', 1),
(231, 19, '21198', '2024-06-04', 'LEDESMA UGALDE MARY CARMEN', '', '', '0000-00-00', '7771886291', 'MARYCUA09_@HOTMAIL.COM', '', '', '', 1),
(232, 19, '15145', '2024-06-04', 'FERNANDEZ DEMEZA GUADALUPE ARLETTE', '', '', '0000-00-00', '7772097470', 'arlettefer@outlook.com', '', '', '', 1),
(233, 19, '15089', '2024-06-04', 'FLORES SANTIAGO ANTONIO GUADALUPE', '', '', '0000-00-00', '7771000087', 'pflores_70@hotmail.com', '', '', '', 1),
(234, 20, '17147', '2024-06-04', 'HERNANDEZ MACIAS CLAUDIO', '', '', '0000-00-00', '7771898518', 'hnm_claudio@hotmail.com', '', '', '', 1),
(235, 20, '22352', '2024-06-04', 'MONTERRUBIO FLORES SALATIEL', '', '', '0000-00-00', '7772549129', 'salatielmf@hotmail.com', '', '', '', 1),
(236, 20, '26208', '2024-06-04', 'PEREZ BARBA FRANCISCO', '', '', '0000-00-00', '7773100443', 'vesper81@hotmail.com', '', '', '', 1),
(237, 20, '28131', '2024-06-04', 'RIVERO AGUILAR JOSE ROMAN', '', '', '0000-00-00', '7776191554', 'romanr.a12@hotmail.com', '', '', '', 1),
(238, 20, '10141', '2024-06-04', 'ALVAREZ PAREDES GERARDO', '', '', '0000-00-00', '7771118700', 'gerardoalvarezparedes@gmail.com', '', '', '', 1),
(239, 20, '11116', '2024-06-04', 'BRAVO ITURBIDE JOSE ALBERTO', '', '', '0000-00-00', '7352460496', 'bravo15_96@hotmail.com', '', '', '', 1),
(240, 20, '16159', '2024-06-04', 'GONZALEZ RAMIREZ LORENZO', '', '', '0000-00-00', '3 16 59 61', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(241, 20, '16214', '2024-06-04', 'GUEVARA CASPETA MARCO ANTONIO', '', '', '0000-00-00', '7351276513', 'guevaracaspetamarcoantonio@gmail.com', '', '', '', 1),
(242, 20, '22184', '2024-06-04', 'MENDOZA ESPINOZA JOSE LUIS', '', '', '0000-00-00', '7771794268', 'men2_espin@hotmail.com', '', '', '', 1),
(243, 20, '25024', '2024-06-04', 'ORTIZ ALVAREZ YANN HECTOR', '', '', '0000-00-00', '7774575807', 'yannoa73@gmail.com', '', '', '', 1),
(244, 20, '28045', '2024-06-04', 'RIVAS FLORES FERNANDO', '', '', '0000-00-00', '7771371793', 'ferivflo10@gmail.com', '', '', '', 1),
(245, 20, '28149', '2024-06-04', 'RODRIGUEZ LOPEZ JESUS IRINEO', '', '', '0000-00-00', '527776831221', 'irineochacorta@gmail.com', '', '', '', 1),
(246, 20, '28233', '2024-06-04', 'RAMOS VILLA GERARDO', '', '', '0000-00-00', '7775669046', 'gerardovilla.04lince@gmail.com', '', '', '', 1),
(247, 20, '10142', '2024-06-04', 'ARIAS AGUERO JUAN ANGEL', '', '', '0000-00-00', '7771823617', 'ariasagueroj2@gmail.com', '', '', '', 1),
(248, 20, '10223', '2024-06-04', 'AGUILAR REA LAURA', '', '', '0000-00-00', '7772588547', 'laura_aguilar08@hotmail.com', '', '', '', 1),
(249, 20, '11046', '2024-06-04', 'BRAVO GARCIA RODOLFO', '', '', '0000-00-00', '7772271710', 'rudyyyrudy778@gmail.com', '', '', '', 1),
(250, 20, '11133', '2024-06-04', 'BARRERA URIOSTEGUI JOSE LUIS', '', '', '0000-00-00', '3 11 27 76', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(251, 20, '11138', '2024-06-04', 'BAUTISTA OCAMPO JOSE ALFREDO', '', '', '0000-00-00', '7777320013', 'ocampo02bau@gmail.com', '', '', '', 1),
(252, 20, '11197', '2024-06-04', 'BUSTOS LEAL JOSE LUIS', '', '', '0000-00-00', '7776109285', 'izal.au@hotmaul.com', '', '', '', 1),
(253, 20, '12055', '2024-06-04', 'CAMPOS LOPEZ JOEL', '', '', '0000-00-00', '7341394489', 'jc7483618@gmail.com', '', '', '', 1),
(254, 20, '12209', '2024-06-04', 'CAMACHO AMADOR PABLO', '', '', '0000-00-00', '7773040192', 'pablocamacho150181@hotmail.com', '', '', '', 1),
(255, 20, '12216', '2024-06-04', 'CORONA LOPEZ JOSE ARNULFO', '', '', '0000-00-00', '7771946215', 'josecorolo24@gmail.com', '', '', '', 1),
(256, 20, '12266', '2024-06-04', 'CASTILLO GONZALEZ MARCO ANTONIO', '', '', '0000-00-00', '7772251900', 'marcoantonioc380@gmail.com', '', '', '', 1),
(257, 20, '13082', '2024-06-04', 'DIAZ MARTINEZ JOSE ALBERTO', '', '', '0000-00-00', '7774588601', 'albertodiaz0375@gmail.com', '', '', '', 1),
(258, 20, '13126', '2024-06-04', 'DIAZ DIAZ LINO ARMANDO', '', '', '0000-00-00', '7771488661', 'verocedillo10@hotmail.com', '', '', '', 1),
(259, 20, '13145', '2024-06-04', 'DIAZ ALVARADO EMILIANO', '', '', '0000-00-00', '', '', '', '', '', 1),
(260, 20, '14059', '2024-06-04', 'ERAZO REBOLLAR JONATHAN', '', '', '0000-00-00', '7774828187', 'jonathaner84@gmail.com', '', '', '', 1),
(261, 20, '15088', '2024-06-04', 'FLORES RIVERA FIDEL', '', '', '0000-00-00', '3 26 26 35', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(262, 20, '15130', '2024-06-04', 'FLORES MARTINEZ RICARDO', '', '', '0000-00-00', '7771558732', 'ricardofm777@hotmail.com', '', '', '', 1),
(263, 20, '15139', '2024-06-04', 'FLORES GUZMAN MARCO ANTONIO', '', '', '0000-00-00', '7771825692', 'marcoantoniofloresguzman896@gmail.com', '', '', '', 1),
(264, 20, '15155', '2024-06-04', 'FLORES SOTELO ABEL', '', '', '0000-00-00', '527773364575', 'abel.flores.sotelo@gmail.com', '', '', '', 1),
(265, 20, '16188', '2024-06-04', 'GUADARRAMA SALGADO GUSTAVO', '', '', '0000-00-00', '7774630829', 'guadarramagustavo01@gimail.com', '', '', '', 1),
(266, 20, '16230', '2024-06-04', 'GONZALEZ GOMEZ MARCO POLO', '', '', '0000-00-00', '7772185142', 'servmp2@gmail.com', '', '', '', 1),
(267, 20, '16302', '2024-06-04', 'GONZALEZ GOMEZ RAFAEL', '', '', '0000-00-00', '7773204810', '', '', '', '', 1),
(268, 20, '16368', '2024-06-04', 'GONZALEZ RICO SALVADOR', '', '', '0000-00-00', '7773700738', 'glezrich09@gmail.com', '', '', '', 1),
(269, 20, '17091', '2024-06-04', 'HERNANDEZ DELGADO ISRAEL', '', '', '0000-00-00', '7775905067', 'israhernan267@gmail.com', '', '', '', 1),
(270, 20, '17139', '2024-06-04', 'HUTTERER ESPINOSA MARKUS ALBRECHT', '', '', '0000-00-00', '7773041071', 'markus.hutterere@gmail.com', '', '', '', 1),
(271, 20, '17140', '2024-06-04', 'HERNANDEZ MASTACHE CESAR AUGUSTO', '', '', '0000-00-00', '7771209099', 'cesaraugustoh660@gmail.com', '', '', '', 1),
(272, 20, '21109', '2024-06-04', 'LOPEZ RODRIGUEZ ELEUTERIO', '', '', '0000-00-00', '7774452071', 'lopeztello369@gmail.com', '', '', '', 1),
(273, 20, '21115', '2024-06-04', 'LUNA MARTINEZ ROBERTO', '', '', '0000-00-00', '7353782812', 'robert.juzgado00@gmail.com', '', '', '', 1),
(274, 20, '21170', '2024-06-04', 'LOPEZ MANZANARES JULIO CESAR', '', '', '0000-00-00', '7776016846', 'lmjulioc57@gmail.com', '', '', '', 1),
(275, 20, '21177', '2024-06-04', 'LOPEZ LUGO ERICK EMMANUEL', '', '', '0000-00-00', '7774421045', 'erick_ia@hotmail.com', '', '', '', 1),
(276, 20, '22205', '2024-06-04', 'MORALES VERA MAURICIO', '', '', '0000-00-00', '7774180579', 'maumorave@gmail.com', '', '', '', 1),
(277, 20, '22241', '2024-06-04', 'MALDONADO CAMPOS LUIS FERNANDO', '', '', '0000-00-00', '7772942514', 'maldonadomafer533@gmail.com', '', '', '', 1),
(278, 20, '22275', '2024-06-04', 'MIRELES RESENDIS JOSE JUAN', '', '', '0000-00-00', '777 321 69 41', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(279, 20, '22297', '2024-06-04', 'MIRANDA SANCHEZ FRANCISCO', '', '', '0000-00-00', '2452661', '0', '', '', '', 1),
(280, 20, '22323', '2024-06-04', 'MEDINA FIGUEROA JORGE', '', '', '0000-00-00', '7771515045', '7771515045jmf@gmail.com', '', '', '', 1),
(281, 20, '25074', '2024-06-04', 'OLMEDO LINARES ISRAEL', '', '', '0000-00-00', '', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(282, 20, '25085', '2024-06-04', 'ORTEGA SALAZAR HECTOR', '', '', '0000-00-00', '7771054155', 'hector.1973.31@gmail.com', '', '', '', 1),
(283, 20, '25106', '2024-06-04', 'OREGEL FIGUEROA PABLO CESAR', '', '', '0000-00-00', '7771580727', 'pablo.cesar.oregel@gmail.com', '', '', '', 1),
(284, 20, '25126', '2024-06-04', 'OCAMPO MINA JORGE ENRIQUE', '', '', '0000-00-00', '7351633679', 'jorgeocampo939@gmail.com', '', '', '', 1),
(285, 20, '25135', '2024-06-04', 'ORTEGA ENRIQUEZ CRISTOBAL', '', '', '0000-00-00', '7775623644', '', '', '', '', 1),
(286, 20, '26113', '2024-06-04', 'PATIÑO ARANGO CELSO', '', '', '0000-00-00', '7771304423', 'celso0007@hotmail.com', '', '', '', 1),
(287, 20, '26129', '2024-06-04', 'POPOCA GONZALEZ JOSE ANDRES', '', '', '0000-00-00', '7771578594', 'MILK_ZARCO@HOTMAIL.COM', '', '', '', 1),
(288, 20, '26136', '2024-06-04', 'PEREZ OLMOS SANTIAGO', '', '', '0000-00-00', '7772232394', 'santiagoperezolmos1960@gmail.com', '', '', '', 1),
(289, 20, '26139', '2024-06-04', 'PEREZ QUINTERO CHRISTIAN', '', '', '0000-00-00', '7771527351', 'jeancarlomandonado502@gmail.com', '', '', '', 1),
(290, 20, '26140', '2024-06-04', 'PERALTA GONZALEZ FRANCISCO', '', '', '0000-00-00', '7776532965', 'pakot_16@hotmail.com', '', '', '', 1),
(291, 20, '28241', '2024-06-04', 'RAMIREZ SALINAS ENRIQUE ALFONSO', '', '', '0000-00-00', '7775450600', 'enriquealfonsor@yahoo.com.mx', '', '', '', 1),
(292, 20, '28243', '2024-06-04', 'RIOS LOZA RAUL', '', '', '0000-00-00', '7773303199', 'raulrioloz61@gmail.com', '', '', '', 1),
(293, 20, '28268', '2024-06-04', 'ROSAS MARTINEZ JOSE RAFAEL', '', '', '0000-00-00', '7772359330', 'joserosas856@gmail.com', '', '', '', 1),
(294, 20, '28278', '2024-06-04', 'ROJAS LARA MANUEL', '', '', '0000-00-00', '7775536239', 'manuelara1964@gmail.com', '', '', '', 1),
(295, 20, '28318', '2024-06-04', 'RAMIREZ ARAGON JOSE ANTONIO', '', '', '0000-00-00', '7771610663', 'pepetono0128@gmail.com', '', '', '', 1),
(296, 20, '29173', '2024-06-04', 'SOTO OSORIO VICTOR HUGO', '', '', '0000-00-00', '7773164764', 'vichuso1978@hotmail.com', '', '', '', 1),
(297, 20, '29183', '2024-06-04', 'SALAS RUIZ JULIO CESAR', '', '', '0000-00-00', '7773710677', 'potro.186@gmail.com', '', '', '', 1),
(298, 20, '29225', '2024-06-04', 'SALOMON RUIZ OMAR FARID', '', '', '0000-00-00', '7341263409', 'ariosnaipes2014@gmail.com', '', '', '', 1),
(299, 20, '29227', '2024-06-04', 'SERVIN JIMENEZ MARCOS', '', '', '0000-00-00', '7772868247', 'manz-@hotmail.com', '', '', '', 1),
(300, 20, '29236', '2024-06-04', 'SALAZAR ROMERO CESAR', '', '', '0000-00-00', '7772960482', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(301, 20, '29285', '2024-06-04', 'SANCHEZ MAYA LUIS ISRAEL', '', '', '0000-00-00', '7776837448', 'lism07189@gmail.com', '', '', '', 1),
(302, 20, '30089', '2024-06-04', 'TAPIA GONZALEZ NOE', '', '', '0000-00-00', '7775913328', 'noetapiag78@gmail.com', '', '', '', 1),
(303, 20, '30110', '2024-06-04', 'TOLEDO DIAZ LORENZO ALEJANDRO', '', '', '0000-00-00', '7775400886', 'alejandrotoledodiaz61@gmail.com', '', '', '', 1),
(304, 20, '32121', '2024-06-04', 'VILCHIS VEGA VICTOR FRANCISCO', '', '', '0000-00-00', '7775241018', 'victorvilchisv65@gmail.com', '', '', '', 1),
(305, 20, '32135', '2024-06-04', 'VILLALOBOS FLORES ROLANDO', '', '', '0000-00-00', '7771284064', 'rolandovf14@gmail.com', '', '', '', 1),
(306, 20, '32142', '2024-06-04', 'VENTURA AQUINO JOSE LUIS', '', '', '0000-00-00', '', '', '', '', '', 1),
(307, 20, '32187', '2024-06-04', 'VARGAS SALGADO IGNACIO', '', '', '0000-00-00', '7341403471', 'ignaciovargas21102@gmail.com', '', '', '', 1),
(308, 20, '32213', '2024-06-04', 'VAZQUEZ ORTIZ NABOR', '', '', '0000-00-00', '7774498311', '', '', '', '', 1),
(309, 20, '35022', '2024-06-04', 'ZARATE NAVA EDGAR', '', '', '0000-00-00', '7773018207', 'edgarzarate64@gmail.com', '', '', '', 1),
(310, 20, '15105', '2024-06-04', 'FLORES VALENCIA YAZIL', '', '', '0000-00-00', '7772239998', 'yazilvalencia@hotmail.com', '', '', '', 1),
(311, 21, '11212', '2024-06-04', 'BOTELLO AMARO MARICRUZ', '', '', '0000-00-00', '7772220206', 'maricruzbotello1@gmail.com', '', '', '', 1),
(312, 21, '21195', '2024-06-04', 'LOPEZ ROMAN OSWALDO AMINADAB', '', '', '0000-00-00', '7771337196', 'oswaldo_8888@hotmail.com', '', '', '', 1),
(313, 21, '28345', '2024-06-04', 'REYES CARMONA DIEGO DAVID', '', '', '0000-00-00', '7772244391', 'cp.diegoreyes@hotmail.com', '', '', '', 1),
(314, 21, '29261', '2024-06-04', 'SOTO NAJERA ALEJANDRO', '', '', '0000-00-00', '7772662513', 'sotoalejandro731@gmail.com', '', '', '', 1),
(315, 21, '32160', '2024-06-04', 'VAZQUEZ VARGAS VERONICA', '', '', '0000-00-00', '7773123161', 'vazquezvargasveronica823@gmail.com', '', '', '', 1),
(316, 21, '32218', '2024-06-04', 'VILLAVICENCIO ARVIZU BRENDA JAQUELINE', '', '', '0000-00-00', '7771900186', 'chofi180976@hotmail.com', '', '', '', 1),
(317, 21, '32144', '2024-06-04', 'VAZQUEZ ARCOS MARIA TERESA DE JESU', '', '', '0000-00-00', '7771915818', 'tere_it10@hotmail.com', '', '', '', 1),
(318, 22, '10264', '2024-06-04', 'ARROYO ESCOBAR ALDEBARAN FRANCISCO', '', '', '0000-00-00', '7771305283', 'jennifertovaraguilar@hotmail.com', '', '', '', 1),
(319, 22, '22177', '2024-06-04', 'MERCADO VALLADARES NICOLAS', '', '', '0000-00-00', '', '', '', '', '', 1),
(320, 22, '28308', '2024-06-04', 'RAMOS HERNANDEZ GUADALUPE', '', '', '0000-00-00', '3114501', '', '', '', '', 1),
(321, 22, '28368', '2024-06-04', 'REYES POBLANO MARIO ALBERTO', '', '', '0000-00-00', '7775635219', '0', '', '', '', 1),
(322, 22, '10184', '2024-06-04', 'ALMAZAN BERTOTTO CARLOS ALONSO', '', '', '0000-00-00', '7771800944', 'armaduradeguerrero@gmail.com', '', '', '', 1),
(323, 22, '11154', '2024-06-04', 'BAHENA ORTIZ VICENTE', '', '', '0000-00-00', '321 39 64', 'familiabahena@yahoo.com.mx', '', '', '', 1),
(324, 22, '12147', '2024-06-04', 'CASTREJON SANCHEZ JUAN JOSE', '', '', '0000-00-00', '7773198482', 'juanjosecastrejon1972@gmail.com', '', '', '', 1),
(325, 22, '12303', '2024-06-04', 'CASTRO MORALES SANTOS ALEJANDRO', '', '', '0000-00-00', '7774392485', 'cmaalex8319@gmail.com', '', '', '', 1),
(326, 22, '16195', '2024-06-04', 'GARCIA ARROYO ADALBERTO', '', '', '0000-00-00', '7771918138', 'adalgar72@gmail.com', '', '', '', 1),
(327, 22, '16196', '2024-06-04', 'GARDUÑO DUQUE MIGUEL ANGEL', '', '', '0000-00-00', '1 02 39 85', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(328, 22, '16280', '2024-06-04', 'GARCIA GOMEZ JOSE ALBERTO', '', '', '0000-00-00', '', '', '', '', '', 1),
(329, 22, '16290', '2024-06-04', 'GARDUÑO DUQUE SERGIO', '', '', '0000-00-00', '3136347', 'gds_black@hotmail.com', '', '', '', 1),
(330, 22, '16292', '2024-06-04', 'GARCIA MUÑOZ ANDRES', '', '', '0000-00-00', '7352227429', 'andresgarciaamerica0@gmail.com', '', '', '', 1),
(331, 22, '16337', '2024-06-04', 'GARCIA RIOS PEDRO ANTONIO', '', '', '0000-00-00', '7777057331', 'pedroagr661@gmail.com', '', '', '', 1),
(332, 22, '18017', '2024-06-04', 'IBARRA JIMENEZ JOSE ABELARDO', '', '', '0000-00-00', '3234794', 'abelardo_door@hotmail.com', '', '', '', 1),
(333, 22, '19082', '2024-06-04', 'JUAREZ GARCIA EDUARDO', '', '', '0000-00-00', '7773342686', '', '', '', '', 1),
(334, 22, '23020', '2024-06-04', 'NAVARRO ROSALES MIGUEL', '', '', '0000-00-00', '7771366329', 'miguel.nr1972@gmail.com', '', '', '', 1),
(335, 22, '25101', '2024-06-04', 'OCAMPO PEREZ ARTURO', '', '', '0000-00-00', '7771233040', 'ar2ro_hasbron@hotmail.com', '', '', '', 1),
(336, 22, '26199', '2024-06-04', 'PEREZ MEZA GUILLERMO', '', '', '0000-00-00', '7776218430', 'pguillermo350@gmail.com', '', '', '', 1),
(337, 22, '28367', '2024-06-04', 'RENTERIA CORRALES EDUARDO', '', '', '0000-00-00', '3650469', 'eduardorenteria409@gmail.com', '', '', '', 1),
(338, 22, '30116', '2024-06-04', 'TRUJILLO CARRILLO ELISEO', '', '', '0000-00-00', '7771510817', '', '', '', '', 1),
(339, 22, '26209', '2024-06-04', 'PEREZ RODRIGUEZ FRANCISCO JESUS', '', '', '0000-00-00', '7775267695', '', '', '', '', 1),
(340, 23, '10256', '2024-06-04', 'ALVAREZ DEL CASTILLO RAMIREZ PATRICIA', '', '', '0000-00-00', '7773376901', 'patydelcastillo63@gmail.com', '', '', '', 1),
(341, 23, '11044', '2024-06-04', 'BUSTOS CABRERA FERNANDO', '', '', '0000-00-00', '7341504030', 'fernando_bustos@hotmail.com', '', '', '', 1),
(342, 23, '11090', '2024-06-04', 'BAILON CONTRERAS PEDRO', '', '', '0000-00-00', '', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(343, 23, '11126', '2024-06-04', 'BERNAL GONZALEZ ELIZABETH', '', '', '0000-00-00', '3 25 61 11', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(344, 23, '11131', '2024-06-04', 'BASILIO HERNANDEZ ARLIN', '', '', '0000-00-00', '7772093913', 'arlinbasilio@gmail.com', '', '', '', 1),
(345, 23, '11162', '2024-06-04', 'BELLO BANDERA LUIS EMANUEL', '', '', '0000-00-00', '734 34 20694', '', '', '', '', 1),
(346, 23, '11167', '2024-06-04', 'BATALLA DE JESUS VERONICA', '', '', '0000-00-00', '7341116888', 'batallaveronica@gmail.com', '', '', '', 1),
(347, 23, '12111', '2024-06-04', 'CASTELO RODRIGUEZ MONICA', '', '', '0000-00-00', '3 72 71 34', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(348, 23, '12183', '2024-06-04', 'CRUZ SALAS DULCE GUADALUPE', '', '', '0000-00-00', '7775505180', '', '', '', '', 1),
(349, 23, '12291', '2024-06-04', 'CRUZ MEJIA KARINA', '', '', '0000-00-00', '7775416285', 'karinacruzmejia22@gmail.com', '', '', '', 1),
(350, 23, '12335', '2024-06-04', 'CHAVEZ MARTINEZ MONSERRAT', '', '', '0000-00-00', '7774466087', 'monserrat _1705@outlook.com', '', '', '', 1),
(351, 23, '13074', '2024-06-04', 'DIAZ OLAZCOAGA ALMA DELIA', '', '', '0000-00-00', '3 10 30 49', 'tsjrfc@gmail.com', '', '', '', 1),
(352, 23, '16228', '2024-06-04', 'GUZMAN BALDERAS GABRIELA', '', '', '0000-00-00', '7774165750', 'gabrielaguzmanbalderas@mail.com', '', '', '', 1),
(353, 23, '16232', '2024-06-04', 'GARCIA MALDONADO LOURDES', '', '', '0000-00-00', '7353212455', 'borregopelusa@gmail.com', '', '', '', 1),
(354, 23, '16243', '2024-06-04', 'GUTIERREZ MARTINEZ JUANA', '', '', '0000-00-00', '7774064424', 'juanita.23.02.71@gmail.com', '', '', '', 1),
(355, 23, '16265', '2024-06-04', 'GARCIA NAVA FABIOLA', '', '', '0000-00-00', '7775504585', 'favyg91@gmail.com', '', '', '', 1),
(356, 23, '16306', '2024-06-04', 'GALINDO LOPEZ EDUARDO', '', '', '0000-00-00', '7771007233', 'reinodlospeces@hotmail.com', '', '', '', 1),
(357, 23, '17095', '2024-06-04', 'HERRERA ROMERO MONICA ELVIRA', '', '', '0000-00-00', '7774661225', 'monicaherrera.mhr@gmail.com', '', '', '', 1),
(358, 23, '17144', '2024-06-04', 'HUITRON URENDA GERMAN ALAN', '', '', '0000-00-00', '7774479767', 'germanhuitron21@gmail.com', '', '', '', 1),
(359, 23, '21069', '2024-06-04', 'LARA ROMAN ARTURO', '', '', '0000-00-00', '7775143840', 'arturolarar08@gmail.com', '', '', '', 1),
(360, 23, '21103', '2024-06-04', 'LEON CASTRO PABLO SERGIO', '', '', '0000-00-00', '', '', '', '', '', 1),
(361, 23, '21123', '2024-06-04', 'LEYVA PEREZ RENE', '', '', '0000-00-00', '', '0', '', '', '', 1),
(362, 23, '21184', '2024-06-04', 'LAGUNAS GUZMAN KARLA GABRIELA', '', '', '0000-00-00', '7774827389', 'ybagsanchez@gmail.com', '', '', '', 1),
(363, 23, '22090', '2024-06-04', 'MONTES GARCIA REYNALDO', '', '', '0000-00-00', '', '', '', '', '', 1),
(364, 23, '22147', '2024-06-04', 'MILLAN RAMOS JOEL', '', '', '0000-00-00', '3180347', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(365, 23, '22167', '2024-06-04', 'MANCIO HONORATO EYAIR JONATHAN', '', '', '0000-00-00', '7774081410', 'Jonathan_mancio@yahoo.com', '', '', '', 1);
INSERT INTO `student` (`student_id`, `id_assignment`, `no_empleado`, `register_date`, `fname`, `image`, `age`, `dob`, `contact`, `email`, `address`, `city`, `country`, `enabled`) VALUES
(366, 23, '22214', '2024-06-04', 'MORALES JIMENEZ DORA LILIA', '', '', '0000-00-00', '7773957928', '7773957928mj@gmail.com', '', '', '', 1),
(367, 23, '22251', '2024-06-04', 'MONTOYA RAMIREZ PAOLA', '', '', '0000-00-00', '7773057921', 'mon_toya_03@hotmail.com', '', '', '', 1),
(368, 23, '22278', '2024-06-04', 'MARIN MUÑOZ MARCO ANTONIO', '', '', '0000-00-00', '7775217080', 'leemarins20@gmail.com', '', '', '', 1),
(369, 23, '22368', '2024-06-04', 'MARTINEZ ROSALES ARTURO GENOVEVO', '', '', '0000-00-00', '7772967433', 'ART0301@HOTMAIL.COM', '', '', '', 1),
(370, 23, '23061', '2024-06-04', 'NAVA HERNANDEZ CARLA MARIA', '', '', '0000-00-00', '7771770019', 'karla8103@outlooc.com', '', '', '', 1),
(371, 23, '25068', '2024-06-04', 'OJEDA CARRANCO CARLOS', '', '', '0000-00-00', '01 734 342 19 31', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(372, 23, '25075', '2024-06-04', 'OCAMPO ALBAVERA MANUEL', '', '', '0000-00-00', '3 85 58 78', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(373, 23, '26069', '2024-06-04', 'PALACIOS MARCIAL IRMA', '', '', '0000-00-00', '7774949398', 'palaciosmarcialm@gmail.com', '', '', '', 1),
(374, 23, '26096', '2024-06-04', 'PALACIOS MARCIAL ELVIA', '', '', '0000-00-00', '1 02 30 76', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(375, 23, '26151', '2024-06-04', 'PONCE CABRERA NANCY', '', '', '0000-00-00', '7341104849', 'nancy.ponce.cabrera@hotmail.com', '', '', '', 1),
(376, 23, '28228', '2024-06-04', 'ROJAS PORCAYO ORALIA', '', '', '0000-00-00', '102 56 78', 'mujer_maravilla_lala@hotmail.com', '', '', '', 1),
(377, 23, '28229', '2024-06-04', 'REYES BELLO FLORENTINA', '', '', '0000-00-00', '7771626178', 'flor69reyes@gmil.com', '', '', '', 1),
(378, 23, '28246', '2024-06-04', 'RODRIGUEZ PAREDES MARIA MAGDALENA', '', '', '0000-00-00', '7774438505', 'magdalena.rodri9@gmail.com', '', '', '', 1),
(379, 23, '28390', '2024-06-04', 'ROMAN CORDOVA RUPERTO', '', '', '0000-00-00', '7341366572', 'ruperto.roman.c60@gmail.com', '', '', '', 1),
(380, 23, '29152', '2024-06-04', 'SOLANO TORRES CONSTANCIO', '', '', '0000-00-00', '3 19 23 13', '', '', '', '', 1),
(381, 23, '29258', '2024-06-04', 'SUDIAS AGUILAR KEILA', '', '', '0000-00-00', '7351847407', 'keipss17@gmail.com', '', '', '', 1),
(382, 23, '30085', '2024-06-04', 'TOLEDO SANCHEZ JOSE', '', '', '0000-00-00', '7341408580', 'josets74@outlook.com', '', '', '', 1),
(383, 23, '31019', '2024-06-04', 'URIOSTEGUI URIOSTEGUI SILVIA', '', '', '0000-00-00', '7773421309', 'silviauriostegui71@gmail.com', '', '', '', 1),
(384, 23, '32156', '2024-06-04', 'VAZQUEZ ANAYA MARIA', '', '', '0000-00-00', '7771320167', 'maryanaya70454@gmail.com', '', '', '', 1),
(385, 23, '32161', '2024-06-04', 'VILCHIS FALCON VERONICA', '', '', '0000-00-00', '7771637550', 'verovilfal@gmail.com', '', '', '', 1),
(386, 23, '32167', '2024-06-04', 'VERGARA ROJAS ELENA', '', '', '0000-00-00', '316 47 62', 'elenita.vergara@hotmail.com', '', '', '', 1),
(387, 23, '35030', '2024-06-04', 'ZAMEZA ALVAREZ EDITH', '', '', '0000-00-00', '7352704729', 'edith-alvarez00@outlook.com', '', '', '', 1),
(388, 23, '11107', '2024-06-04', 'BLAS CHAVEZ MAURICIO', '', '', '0000-00-00', '7772881234', 'maumau791979@gmail.com', '', '', '', 1),
(389, 24, '12170', '2024-06-04', 'CASTILLO TORRES LESLIE CINTHYA', '', '', '0000-00-00', '7775657374', 'lcct03@gmail.com', '', '', '', 1),
(390, 24, '22219', '2024-06-04', 'MANDUJANO ALVAREZ ULISES', '', '', '0000-00-00', '7771750667', 'ulisesmndujano@gmail.com', '', '', '', 1),
(391, 24, '29266', '2024-06-04', 'SOLIS PARROQUIN IRIS PAULINA', '', '', '0000-00-00', '7771625849', 'pausolis05@gmail.com', '', '', '', 1),
(392, 24, '29293', '2024-06-04', 'SANCHEZ MARTINEZ VIRIDIANA', '', '', '0000-00-00', '7775314118', 'VISAMASS18@GMAIL,COM', '', '', '', 1),
(393, 24, '15125', '2024-06-04', 'FLORENTINO LOPEZ KENIA YAZMIN', '', '', '0000-00-00', '7773372129', 'kenia_yaz2@hotmail.com', '', '', '', 1),
(394, 24, '16253', '2024-06-04', 'GUZMAN GALEANA ISIS', '', '', '0000-00-00', '7773792364', 'guzmanisis49@gmail.com', '', '', '', 1),
(395, 24, '28344', '2024-06-04', 'RUIZ GRANADOS VIRIDIANA', '', '', '0000-00-00', '7774174754', 'viri_rg7@hotmail.com', '', '', '', 1),
(396, 24, '29246', '2024-06-04', 'SALAS RUIZ JESSICA', '', '', '0000-00-00', '7773372376', 'jessik_mich@hotmail.com', '', '', '', 1),
(397, 24, '29287', '2024-06-04', 'SALAZAR ARIZMENDI FERNANDA', '', '', '0000-00-00', '7775640815', 'salariz2306@gmail.com', '', '', '', 1),
(398, 24, '28053', '2024-06-04', 'REYES VAZQUEZ LEONOR SUSANA', '', '', '0000-00-00', '7775449523', 'susanareyesvazquez@gmail.com', '', '', '', 1),
(399, 24, '13123', '2024-06-04', 'DIAZ SANCHEZ ADRIANA', '', '', '0000-00-00', '7771796308', 'seranil23@gmail.com', '', '', '', 1),
(400, 24, '16367', '2024-06-04', 'GUTIERREZ GARCIA BIANCA SARAI', '', '', '0000-00-00', '7774579066', 'sarai.gutierrez.cl@gmail.com', '', '', '', 1),
(401, 24, '17118', '2024-06-04', 'HERNANDEZ SANTIAGO LOURDES GUADALUPE', '', '', '0000-00-00', '7775159107', '', '', '', '', 1),
(402, 24, '12199', '2024-06-04', 'CASTRO TRUJILLO CLAUDIA ELIZABETH', '', '', '0000-00-00', '7775005801', 'claudia.castro.trujillo@gmail.com', '', '', '', 1),
(403, 25, '21146', '2024-06-04', 'LOYOLA MARTINEZ JESUS', '', '', '0000-00-00', '7776199432', 'jesusloyolamtz@yahoo.com.mx', '', '', '', 1),
(404, 25, '10208', '2024-06-04', 'ABARCA BAHENA YADIRA LIZBETH', '', '', '0000-00-00', '7771084027', 'yadira_abarc@hotmail.com', '', '', '', 1),
(405, 25, '15126', '2024-06-04', 'FLORES CRUZ ISIDRO', '', '', '0000-00-00', '7772706619', 'ISIDROFLORESC15@GMAIL.COM', '', '', '', 1),
(406, 26, '26068', '2024-06-04', 'PLATA RAMIREZ ALBERTO', '', '', '0000-00-00', '7774984260', 'alberto.tribunal@hotmail.com', '', '', '', 1),
(407, 27, '14073', '2024-06-04', 'ESTUDILLO SAN MARTIN MOISES', '', '', '0000-00-00', '7771253513', 'moises.estudillo@hotmail.com', '', '', '', 1),
(408, 27, '11122', '2024-06-04', 'BRUNO SALGADO OLGA PATRICIA', '', '', '0000-00-00', '7775238287', 'patbs81@hotmail.com', '', '', '', 1),
(409, 27, '25100', '2024-06-04', 'OLASCOAGA AGUILAR BELINDA GRISEL', '', '', '0000-00-00', '7775132800', 'belinda3007@hotmail.com', '', '', '', 1),
(410, 27, '10209', '2024-06-04', 'ALVARADO FUENTES MIRIAM', '', '', '0000-00-00', '7775579603', 'm.792008@hotmail.com', '', '', '', 1),
(411, 27, '28209', '2024-06-04', 'RAMOS SALAMANCA JUAN CARLOS', '', '', '0000-00-00', '7772104623', 'bigfriend20@hotmail.com', '', '', '', 1),
(412, 27, '29046', '2024-06-04', 'SANCHEZ ROA MARIBEL', '', '', '0000-00-00', '3 22 00 74', '0', '', '', '', 1),
(413, 27, '29140', '2024-06-04', 'SOTELO FUENTES VIRGINIA', '', '', '0000-00-00', '7777017007', 'edvi03@hotmail.com', '', '', '', 1),
(414, 28, '31013', '2024-06-04', 'URIBE TORRES GRETHEL SOCORRO', '', '', '0000-00-00', '777 322 73 52', 'uribe_grethel@hotmail.com', '', '', '', 1),
(415, 28, '32069', '2024-06-04', 'VEGA BRITO ROGELIO', '', '', '0000-00-00', '5 12 30 98', '', '', '', '', 1),
(416, 28, '13024', '2024-06-04', 'DOMINGUEZ OLEA SILVIA', '', '', '0000-00-00', '7771202623', 'mamadelosgatitos@hotmail.com', '', '', '', 1),
(417, 28, '16328', '2024-06-04', 'GAMA CALIZ SERGIO VICTOR', '', '', '0000-00-00', '7773420412', 'gamawolf@hotmail.com', '', '', '', 1),
(418, 28, '28353', '2024-06-04', 'ROMANO ONOFRE PEDRO ALBERTO', '', '', '0000-00-00', '7776550017', 'alberto.romano0206@gmail.com', '', '', '', 1),
(419, 29, '13127', '2024-06-04', 'DIRZO ACEVES JUAN', '', '', '0000-00-00', '7777894879', 'j_dirzo@hotmail.com', '', '', '', 1),
(420, 29, '11199', '2024-06-04', 'BELLO BRITO ORLANDO DELFINO', '', '', '0000-00-00', '7771030762', 'lic.orlandobello@gmail.com', '', '', '', 1),
(421, 29, '16359', '2024-06-04', 'GARCIA SANTAMARIA ALEXANDRO', '', '', '0000-00-00', '7771340806', 'alexgasa71@gmail.com', '', '', '', 1),
(422, 29, '22385', '2024-06-04', 'MELENDEZ PIEDRA MAYRA NAYELI', '', '', '0000-00-00', '7771848361', 'melendez_mn@outlook.com', '', '', '', 1),
(423, 29, '10275', '2024-06-04', 'ARENAS GARCIA CARLOS ARTURO', '', '', '0000-00-00', '7773400808', 'artutro.arenas00@hotmail.com', '', '', '', 1),
(424, 29, '22383', '2024-06-04', 'MEDINA SALGADO JESSICA NAYELI', '', '', '0000-00-00', '7771816560', '', '', '', '', 1),
(425, 29, '26210', '2024-06-04', 'PORCAYO ZAMORA ELIZABETH', '', '', '0000-00-00', '7775003073', 'elizabethporcayo2627@gmail.com', '', '', '', 1),
(426, 29, '21197', '2024-06-04', 'LINARES ACEVEDO ANDRES DIDIER', '', '', '0000-00-00', '7773844104', 'didierlinares@hotmail.com', '', '', '', 1),
(427, 29, '30125', '2024-06-04', 'TAPIA ESQUIVEL PAOLA', '', '', '0000-00-00', '7773040451', 'paolatapiae@outlock.com', '', '', '', 1),
(428, 30, '16255', '2024-06-04', 'GUERRERO VALENCIA EVELYN NAYELI', '', '', '0000-00-00', '7771821127', 'Guerreroevelyn2016@hotmail.com', '', '', '', 1),
(429, 30, '21086', '2024-06-04', 'LOPEZ OCAMPO ADRIANA', '', '', '0000-00-00', '7775537833', 'adrilopoca@gmail.com', '', '', '', 1),
(430, 30, '28128', '2024-06-04', 'RODRIGUEZ RAMIREZ DANIEL', '', '', '0000-00-00', '7771492967', 'l.lastra.g71@hotmail.com', '', '', '', 1),
(431, 30, '29105', '2024-06-04', 'SANCHEZ IBARRIOLA ILIANA LORENA', '', '', '0000-00-00', '7774598234', 'iliana_lore27@hotmail.com', '', '', '', 1),
(432, 30, '10176', '2024-06-04', 'ARENAS QUIROZ EDGAR ARMANDO', '', '', '0000-00-00', '3 20 20 74', 'edvi03@hotmail.com', '', '', '', 1),
(433, 30, '12260', '2024-06-04', 'CRUZ MANCIO ERIC DANIEL', '', '', '0000-00-00', '7774609313', 'erikmarley1211@gmail.com', '', '', '', 1),
(434, 30, '14084', '2024-06-04', 'ESQUIVEL URIBE KARLA EVELIN', '', '', '0000-00-00', '7345246796', 'karles_12@hotmail.com', '', '', '', 1),
(435, 30, '15124', '2024-06-04', 'FLORES CONTRERAS SALVADOR', '', '', '0000-00-00', '102 12 19', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(436, 30, '17119', '2024-06-04', 'HERNANDEZ RAMIREZ TOMASA', '', '', '0000-00-00', '7771104644', 'tomyhera75@gmail.com', '', '', '', 1),
(437, 30, '21178', '2024-06-04', 'LOPEZ FLORES MARIO FLORENTINO', '', '', '0000-00-00', '3167339', 'mariolopezflores1@hotmail.com', '', '', '', 1),
(438, 30, '32180', '2024-06-04', 'VAZQUEZ VARGAS CARLOS ALBERTO', '', '', '0000-00-00', '3123161', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(439, 30, '16084', '2024-06-04', 'GOMEZ NAVA ROBERTO', '', '', '0000-00-00', '', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(440, 31, '16213', '2024-06-04', 'GARCIA BARRERA HUGO ROBERTO', '', '', '0000-00-00', '', '', '', '', '', 1),
(441, 31, '19045', '2024-06-04', 'JIMENEZ SALAMANCA DAVID', '', '', '0000-00-00', '777 2181516', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(442, 31, '28372', '2024-06-04', 'RIVERO SANTANA KENIA', '', '', '0000-00-00', '7772161879', 'keniars123@hotmail.com', '', '', '', 1),
(443, 32, '11077', '2024-06-04', 'BAHENA ORTIZ FRUCTUOSO', '', '', '0000-00-00', '7773728559', 'ingtfruc@outlook.com', '', '', '', 1),
(444, 32, '22074', '2024-06-04', 'MENDOZA OCHOA EDER ADAN', '', '', '0000-00-00', '7775676503', 'yeder2917@outlook.com', '', '', '', 1),
(445, 32, '22073', '2024-06-04', 'MORALES RAMIREZ FRANCISCO JESUS', '', '', '0000-00-00', '7775151620', 'paco_mor19@hotmail.com', '', '', '', 1),
(446, 32, '12282', '2024-06-04', 'CHAVEZ CABRERA NANCY GEANELLY', '', '', '0000-00-00', '7771819121', '0', '', '', '', 1),
(447, 32, '12298', '2024-06-04', 'CARDENAS RODRIGUEZ RAUL', '', '', '0000-00-00', '3130289', 'raul.card.rod.@gmail.com', '', '', '', 1),
(448, 32, '13153', '2024-06-04', 'DE PAZ CORTES ESTEFANIA LIZETTE', '', '', '0000-00-00', '7774339888', '', '', '', '', 1),
(449, 32, '23048', '2024-06-04', 'NACAR LEAL JULIO CESAR', '', '', '0000-00-00', '3311647246', 'nuit.najar@icloud.com', '', '', '', 1),
(450, 32, '25087', '2024-06-04', 'OCAMPO RIVERA ISAAC', '', '', '0000-00-00', '7772117165', 'avanzasport17@gmail.com', '', '', '', 1),
(451, 32, '29194', '2024-06-04', 'SANCHEZ REYES VICTOR HUGO', '', '', '0000-00-00', '7776225442', 'victordiel04@gmail.com', '', '', '', 1),
(452, 33, '15090', '2024-06-04', 'FUENTES MORENO AURORA', '', '', '0000-00-00', '7772186912', 'aurorafuentes20@hotmail.com', '', '', '', 1),
(453, 33, '29205', '2024-06-04', 'SOTELO FUENTES ANGELICA MARIA', '', '', '0000-00-00', '7773056283', 'angelicasotelof@hotmail.com', '', '', '', 1),
(454, 34, '13030', '2024-06-04', 'DIAZ LOPEZ SAMUEL', '', '', '0000-00-00', '7771629657', 'bugsam72@gmail.com', '', '', '', 1),
(455, 34, '28060', '2024-06-04', 'RENDON AMARO MA. ELENA', '', '', '0000-00-00', '7771404069', 'elenaren16@gmail.com', '', '', '', 1),
(456, 34, '19030', '2024-06-04', 'JIMENEZ DIAZ TOMAS', '', '', '0000-00-00', '7772316747', 'uptomasjiz@gmail.com', '', '', '', 1),
(457, 34, '13068', '2024-06-04', 'DELGADILLO ROJAS MIGUEL ANGEL', '', '', '0000-00-00', '7771971271', 'angelrojas081972@gmail.com', '', '', '', 1),
(458, 34, '14065', '2024-06-04', 'ESTRADA RIOS JOSE JUAN', '', '', '0000-00-00', '7772311860', 'j.juanestrada68@gmail.com', '', '', '', 1),
(459, 34, '26120', '2024-06-04', 'PAEZ PADILLA JOSE LUIS', '', '', '0000-00-00', '7773181757', 'pepe_paez888@hotmail.com', '', '', '', 1),
(460, 35, '17053', '2024-06-04', 'HIPOLITO PRIETO ANDRES', '', '', '0000-00-00', '382-08-09', '', '', '', '', 1),
(461, 35, '19019', '2024-06-04', 'JASSO DIAZ RUBEN', '', '', '0000-00-00', '3 10 00 71', 'rjassod@hotmail.com', '', '', '', 1),
(462, 35, '10154', '2024-06-04', 'ARIAS OROPEZA YURIANA', '', '', '0000-00-00', '7772417135', 'lic.yuri28@outlook.es', '', '', '', 1),
(463, 35, '15101', '2024-06-04', 'FLORES JIMENEZ ELENA MARLENE', '', '', '0000-00-00', '7771597369', 'elemflores80@gmail.com', '', '', '', 1),
(464, 35, '28196', '2024-06-04', 'ROMAN ARCOS DULCE MARIA', '', '', '0000-00-00', '7772231889', 'ECLUD_7165@HOTMAIL.COM', '', '', '', 1),
(465, 35, '10286', '2024-06-04', 'ANGUIANO ORTIZ ZENAIDA', '', '', '0000-00-00', '7774947787', 'zenaida118@hotmail.com', '', '', '', 1),
(466, 35, '12223', '2024-06-04', 'CARMONA VIVEROS VANESSA GLORIA', '', '', '0000-00-00', '241  37 51', 'carmona_vane@hotmail.com', '', '', '', 1),
(467, 35, '12308', '2024-06-04', 'CORIA ANAYA JOSE ANTONIO', '', '', '0000-00-00', '7771910144', 'koan_93@hotmail.com', '', '', '', 1),
(468, 35, '16370', '2024-06-04', 'GALINDO SANCHEZ RODRIGO', '', '', '0000-00-00', '7773184161', '', '', '', '', 1),
(469, 35, '17064', '2024-06-04', 'HERNANDEZ CEREZO MARIA DEL CARMEN', '', '', '0000-00-00', '777 224 85 36', '0', '', '', '', 1),
(470, 35, '19061', '2024-06-04', 'JIMENEZ JIMENEZ RAFAEL', '', '', '0000-00-00', '7772155661', 'jimen_z@hotmail.com', '', '', '', 1),
(471, 35, '23023', '2024-06-04', 'NAVA TOVAR SAIDE MALINALLI', '', '', '0000-00-00', '3 17 49 69', 'saidemali@hotmail.com', '', '', '', 1),
(472, 35, '26059', '2024-06-04', 'PELAEZ MORALES ZITA', '', '', '0000-00-00', '7771078250', 'pelaezmorales@hotmail.com', '', '', '', 1),
(473, 35, '11164', '2024-06-04', 'BRUNO CORONA ANA CRISTINA', '', '', '0000-00-00', '7772166058', 'anabruno_lic@hotmail.com', '', '', '', 1),
(474, 35, '16098', '2024-06-04', 'GONZALEZ GUERRERO MAGDA ROCIO', '', '', '0000-00-00', '7772100066', 'magda79glez@hotmail.com', '', '', '', 1),
(475, 35, '12310', '2024-06-04', 'CARRILLO GALLARDO ANKARET', '', '', '0000-00-00', '7772100760', 'anky.carrillo@gmail.com', '', '', '', 1),
(476, 35, '15147', '2024-06-04', 'FLORES JAIME GRECIA', '', '', '0000-00-00', '7771922484', 'greciafloresj@gmail.com', '', '', '', 1),
(477, 35, '16043', '2024-06-04', 'GUERRERO VALENCIA NORMA NERI', '', '', '0000-00-00', '7775149132', 'neri_0112@hotmail.com', '', '', '', 1),
(478, 35, '23037', '2024-06-04', 'NIEVES RAZO ISRAEL', '', '', '0000-00-00', '7773300332', 'inranieves@gmail.com', '', '', '', 1),
(479, 35, '30106', '2024-06-04', 'TAPIA TAPIA GRELDA YOZARETH', '', '', '0000-00-00', '3208707', '', '', '', '', 1),
(480, 35, '11047', '2024-06-04', 'BARRERA NAVA MARIA EMERENCIANA', '', '', '0000-00-00', '7772343723', 'merebarreran@gmail.com', '', '', '', 1),
(481, 35, '22212', '2024-06-04', 'MATA HERNANDEZ ROSA MARIA', '', '', '0000-00-00', '7773475358', 'rosamariamata314@gmail.com', '', '', '', 1),
(482, 35, '32214', '2024-06-04', 'VILLANUEVA MORALES ANA KAREN', '', '', '0000-00-00', '7774099837', 'karen.villam98@gmail.com', '', '', '', 1),
(483, 35, '21113', '2024-06-04', 'LOPEZ VAZQUEZ ISRAEL', '', '', '0000-00-00', '7775663973', 'achename@hotmail.com', '', '', '', 1),
(484, 35, '22311', '2024-06-04', 'MONTIEL FLORES YOLANDA', '', '', '0000-00-00', '7773604223', 'YMONTIEL185@GMAIL.COM', '', '', '', 1),
(485, 35, '23033', '2024-06-04', 'NAVA CARCAÑO JANET', '', '', '0000-00-00', '7771530884', 'janetnavacarcano@hotmail.com', '', '', '', 1),
(486, 35, '25113', '2024-06-04', 'OROZCO GUERRERO JOSE HORACIO', '', '', '0000-00-00', '7772271751', '', '', '', '', 1),
(487, 35, '28346', '2024-06-04', 'RODRIGUEZ CISNEROS ALEJANDRA', '', '', '0000-00-00', '7773426133', 'alerocisne80@gmail.com', '', '', '', 1),
(488, 35, '28400', '2024-06-04', 'RODRIGUEZ CASTAÑEDA CECILIA YECSEL', '', '', '0000-00-00', '7772110564', 'yecselrodriguez@gmail.com', '', '', '', 1),
(489, 35, '32093', '2024-06-04', 'VILCHIS FALCON ALMA GRACIELA', '', '', '0000-00-00', '7772079803', 'cielazul70@gmail.com', '', '', '', 1),
(490, 36, '10083', '2024-06-04', 'AQUINO CELIS MARIA DEL CARMEN', '', '', '0000-00-00', '7772577753', 'mariadelcarmenaquino@hotmail.com', '', '', '', 1),
(491, 36, '10182', '2024-06-04', 'ARENAS ANGELES CARLOS IVAN', '', '', '0000-00-00', '3 26 47 40', 'CHEQUE', '', '', '', 1),
(492, 36, '19005', '2024-06-04', 'JIMENEZ SERAFIN GUILLERMINA', '', '', '0000-00-00', '3 82 15 95', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(493, 36, '10236', '2024-06-04', 'AYALA ORTIZ MARIA FERNANDA', '', '', '0000-00-00', '7772675029', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(494, 36, '26157', '2024-06-04', 'PIZANO PRIETO DIANA CRISTAL', '', '', '0000-00-00', '2442206', 'crisid_shyd@hotmail.com', '', '', '', 1),
(495, 36, '10077', '2024-06-04', 'AVILA LOPEZ MARIBEL', '', '', '0000-00-00', '', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(496, 36, '11112', '2024-06-04', 'BAHENA ARCE DULCE', '', '', '0000-00-00', '7773742317', 'candybell_sweet@hotmail.com', '', '', '', 1),
(497, 36, '12148', '2024-06-04', 'CASTREJON ADAN ZHINDY NALLELY', '', '', '0000-00-00', '01751 344 08 43', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(498, 36, '16242', '2024-06-04', 'GONZALEZ REYNA ALEJANDRO', '', '', '0000-00-00', '7775340290', 'agore.8810@gmail.com', '', '', '', 1),
(499, 36, '21194', '2024-06-04', 'LOPEZ FLORES JORGE LUIS', '', '', '0000-00-00', '7776291964', 'george233lo@gmail.com', '', '', '', 1),
(500, 36, '25099', '2024-06-04', 'ORIHUELA URIOSTEGUI CRISTAL', '', '', '0000-00-00', '7777889492', 'criss_1708@hotmail.com', '', '', '', 1),
(501, 36, '28252', '2024-06-04', 'REYES GARCIA ISABELA', '', '', '0000-00-00', '7774298657', 'isabelareyesgarcia@gmail.com', '', '', '', 1),
(502, 36, '29208', '2024-06-04', 'SANCHEZ DIAZ MAGDALENA', '', '', '0000-00-00', '7353535972', 'magda1022@hotmail.com', '', '', '', 1),
(503, 36, '32124', '2024-06-04', 'VAZQUEZ ACEVES RANDY', '', '', '0000-00-00', '1 45 27 09', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(504, 36, '21021', '2024-06-04', 'LOPEZ LOPEZ ELDAI', '', '', '0000-00-00', '7771127715', 'eldalop@hotmail.com', '', '', '', 1),
(505, 36, '29265', '2024-06-04', 'SANCHEZ RABADAN DIEGO', '', '', '0000-00-00', '7774808306', 'rodad1109@yahoo.com.mx', '', '', '', 1),
(506, 36, '10276', '2024-06-04', 'ANAYA CORTES JESSICA NALLELY', '', '', '0000-00-00', '7773600354', 'italia1812@hotmail.com', '', '', '', 1),
(507, 36, '12321', '2024-06-04', 'CALDERON ESPINOZA CORAL EUGENIA', '', '', '0000-00-00', '7771639626', 'coralce86@gmail.com', '', '', '', 1),
(508, 36, '14071', '2024-06-04', 'ESTRADA ESQUIVEL MELANIE GRECIA', '', '', '0000-00-00', '1021247', 'mel_8a@hotmail.com', '', '', '', 1),
(509, 36, '21151', '2024-06-04', 'LOPEZ CARDOSO ANA KAREN', '', '', '0000-00-00', '7774601671', 'karenlc15163@gmail.com', '', '', '', 1),
(510, 36, '26154', '2024-06-04', 'PEÑALOZA RODRIGUEZ ISMAEL ALEXANDER DELFINO', '', '', '0000-00-00', '7771590427', 'penalozaa356@gmail.com', '', '', '', 1),
(511, 36, '28059', '2024-06-04', 'RUIZ MONTES IRMA', '', '', '0000-00-00', '7773199173', 'irmarm409@gmail.com', '', '', '', 1),
(512, 36, '32045', '2024-06-04', 'VAZQUEZ MORALES PABLO', '', '', '0000-00-00', '7771818742', 'pablovmorales@hotmail.com', '', '', '', 1),
(513, 36, '11124', '2024-06-04', 'BAHENA GARCIA LORENA', '', '', '0000-00-00', '7351991762', 'bahenalorena47@gmail.com', '', '', '', 1),
(514, 36, '13131', '2024-06-04', 'DOMINGUEZ PEREZ DIANA YESSICA', '', '', '0000-00-00', '7771000738', 'd.dominguez14@yahoo.com.mx', '', '', '', 1),
(515, 36, '16338', '2024-06-04', 'GALLEGOS RAMIREZ BEATRIZ ADRIANA', '', '', '0000-00-00', '7776163978', 'bety-luisan@hotmali.com', '', '', '', 1),
(516, 36, '21169', '2024-06-04', 'LINARES CASTRO ERICK RACIEL', '', '', '0000-00-00', '7351633417', 'kron_999@hotmail.com', '', '', '', 1),
(517, 36, '28206', '2024-06-04', 'REYES POBLANO ALEJANDRO', '', '', '0000-00-00', '7774411177', 'bambuino12arp@hotmail.com', '', '', '', 1),
(518, 36, '28254', '2024-06-04', 'ROJAS VERGARA HAYDEE', '', '', '0000-00-00', '3 16 47 62', 'Haydee_1804_sb@hotmail.com', '', '', '', 1),
(519, 36, '28406', '2024-06-04', 'ROMERO ORTEGA EVA', '', '', '0000-00-00', '7774337430', '', '', '', '', 1),
(520, 37, '13110', '2024-06-04', 'DIAZ CARBAJAL MANUEL', '', '', '0000-00-00', '7773274105', '0', '', '', '', 1),
(521, 37, '14055', '2024-06-04', 'ELIZALDE FIGUEROA JUAN EMILIO', '', '', '0000-00-00', '7773275236', 'elizaldeabogado@icloud.com', '', '', '', 1),
(522, 37, '15013', '2024-06-04', 'FRANCO ZAVALETA MARIA IDALIA', '', '', '0000-00-00', '01734 342 7396', 'CHEQUE', '', '', '', 1),
(523, 37, '16203', '2024-06-04', 'GARCIA CUEVAS TANIA JOSEFINA', '', '', '0000-00-00', '7771379126', 'tania26@hotmail.com', '', '', '', 1),
(524, 37, '25082', '2024-06-04', 'OCAMPO LUQUE NIDIYARE', '', '', '0000-00-00', '7772208356', 'onidiyare@hotmail.com', '', '', '', 1),
(525, 37, '10138', '2024-06-04', 'ABASCAL PASTRANA ANA UBALDA', '', '', '0000-00-00', '7341100846', 'abasna24@hotmail.com', '', '', '', 1),
(526, 37, '12245', '2024-06-04', 'CARMONA RODRIGUEZ ELIZABETH', '', '', '0000-00-00', '777 229 55 42', 'carmona911@hotmail.com', '', '', '', 1),
(527, 37, '17097', '2024-06-04', 'HERNANDEZ CARBAJAL ANDREA', '', '', '0000-00-00', '5539484413', 'reginafalangi9@gmail.com', '', '', '', 1),
(528, 37, '21116', '2024-06-04', 'LOPEZ SALINAS JORGE ALBERTO', '', '', '0000-00-00', '7771292966', 'lic.jorgelopez2013@gmail.com', '', '', '', 1),
(529, 37, '22202', '2024-06-04', 'MARQUEZ LARA URIEL', '', '', '0000-00-00', '3 21 62 71', 'sonderlong@hotmail.com', '', '', '', 1),
(530, 37, '28292', '2024-06-04', 'ROSAS HERNANDEZ CYNTHIA HUGUETH', '', '', '0000-00-00', '7772759009', 'cynthiahugueth@hotmail.com', '', '', '', 1),
(531, 37, '28312', '2024-06-04', 'ROSAS HERNANDEZ INGRID AIDEE', '', '', '0000-00-00', '7775235118', 'ingrid_rh2390@hotmail.co.uk', '', '', '', 1),
(532, 37, '16296', '2024-06-04', 'GARDUÑO ROSALES MARLETH', '', '', '0000-00-00', '7774501329', 'mgr.beba@gmail.com', '', '', '', 1),
(533, 37, '32170', '2024-06-04', 'VERA SILVA PAOLA DANIELA', '', '', '0000-00-00', '7772250835', 'vera_paola@hotmai.com', '', '', '', 1),
(534, 37, '22057', '2024-06-04', 'MENCHACA GONZALEZ MARTHA', '', '', '0000-00-00', '7775233617', 'martha.mencha.g@gmail.com', '', '', '', 1),
(535, 37, '28293', '2024-06-04', 'RIOS HERNANDEZ ADOLFO JOEL', '', '', '0000-00-00', '7772243460', 'chachosuicida16@hotmail.com', '', '', '', 1),
(536, 37, '28373', '2024-06-04', 'REYES RODRIGUEZ RUTH', '', '', '0000-00-00', '7776024870', 'ruthy_70@hotmail.com', '', '', '', 1),
(537, 37, '15044', '2024-06-04', 'FLORES MUÑOZ CONCEPCION', '', '', '0000-00-00', '7773001127', 'coniflower1@hotmail.com', '', '', '', 1),
(538, 37, '16056', '2024-06-04', 'GASPAR DIAZ MARIA TERESA', '', '', '0000-00-00', '7775445294', 'mariter_gd@outlook.com', '', '', '', 1),
(539, 37, '22159', '2024-06-04', 'MATA PEREZ BEATRIZ', '', '', '0000-00-00', '7771376407', 'matabety65@gmail.com', '', '', '', 1),
(540, 37, '28049', '2024-06-04', 'ROQUE OCAMPO FLORENTINA', '', '', '0000-00-00', '7775348448', 'florentinaroque47@gmail.com', '', '', '', 1),
(541, 37, '10289', '2024-06-04', 'ALDAY CONTRERAS FRANCISCO', '', '', '0000-00-00', '', '', '', '', '', 1),
(542, 37, '13148', '2024-06-04', 'DIAZ PINEDA YOLANDA ISABEL', '', '', '0000-00-00', '7774609033', 'isabeldzp@gmail.com', '', '', '', 1),
(543, 37, '14081', '2024-06-04', 'ESTRADA FIGUEROA FABIOLA', '', '', '0000-00-00', '7341353495', 'fabbys.ius@gmail.com', '', '', '', 1),
(544, 37, '16334', '2024-06-04', 'FIGUEROA VAZQUEZ CESAR DANIEL', '', '', '0000-00-00', '7775512493', 'danyfvega@gmail.com', '', '', '', 1),
(545, 37, '16353', '2024-06-04', 'GARCIA LUNA JOANA BERENICE', '', '', '0000-00-00', '7773692465', 'joanabgl25@gmail.com', '', '', '', 1),
(546, 37, '18013', '2024-06-04', 'ITURBURU OCAMPO PORFIRIO', '', '', '0000-00-00', '7772223447', 'donporfs@gmail.com', '', '', '', 1),
(547, 37, '22373', '2024-06-04', 'MILLAN RAMIREZ JOSE ANTONIO', '', '', '0000-00-00', '7776035002', 'jamillanr33@gmail.com', '', '', '', 1),
(548, 37, '29177', '2024-06-04', 'SALGADO AVILA MARTHA', '', '', '0000-00-00', '7774591545', 'marsalg1969@yahoo.com.mx', '', '', '', 1),
(549, 37, '29271', '2024-06-04', 'SOTELO OLAYO LUIS MANUEL', '', '', '0000-00-00', '7774930688', 'luismasotelo@gmail.com', '', '', '', 1),
(550, 37, '35025', '2024-06-04', 'ZARATE AYALA ANAHI JAZMIN', '', '', '0000-00-00', '7771917872', 'ayala.yaz0911@gmail.com', '', '', '', 1),
(551, 38, '12056', '2024-06-04', 'CALDERON OCAMPO NORBERTO', '', '', '0000-00-00', '3 23 73 53', '0', '', '', '', 1),
(552, 38, '16256', '2024-06-04', 'GARDUÑO GONZALEZ ANGEL', '', '', '0000-00-00', '3 68 91 45', 'CHEQUE', '', '', '', 1),
(553, 38, '28141', '2024-06-04', 'RENDON MONTEALEGRE BERTHA LETICIA', '', '', '0000-00-00', '176 80 99', '0', '', '', '', 1),
(554, 38, '22099', '2024-06-04', 'MARTINEZ GARCIA SARA OLIVIA', '', '', '0000-00-00', '', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(555, 38, '10255', '2024-06-04', 'ARENAS PEREZ CLAUDIA', '', '', '0000-00-00', '7774933203', 'clauarenas18@gmail.com', '', '', '', 1),
(556, 38, '14056', '2024-06-04', 'ESQUIVEL MARTINEZ GUADALUPE', '', '', '0000-00-00', '3683148', 'guadalupe.esquivel@live.com', '', '', '', 1),
(557, 38, '16152', '2024-06-04', 'GONZALEZ AVILES JUAN PABLO', '', '', '0000-00-00', '', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(558, 38, '16312', '2024-06-04', 'GOMEZ SALGADO MARIA ELENA', '', '', '0000-00-00', '7351532040', '', '', '', '', 1),
(559, 38, '26126', '2024-06-04', 'PEREZ CALDERON ELISA SORAYA', '', '', '0000-00-00', '7771331009', 'elisasorayap@gmail.com', '', '', '', 1),
(560, 38, '26185', '2024-06-04', 'PICHARDO PAEZ ITZAYANA YAEL', '', '', '0000-00-00', '3235583', 'itza_95@hotmail.com', '', '', '', 1),
(561, 38, '26187', '2024-06-04', 'PORTILLO CALDERON FRANCISCO JAVIER', '', '', '0000-00-00', '7777891715', 'Fj.Portillo90@gmail.com', '', '', '', 1),
(562, 38, '28208', '2024-06-04', 'ROSALES MENDOZA MARGARITO', '', '', '0000-00-00', '3 13 89 61', 'ase_soria_legal@hotmail.com', '', '', '', 1),
(563, 38, '28333', '2024-06-04', 'RODRIGUEZ NAVA JOSE LEON', '', '', '0000-00-00', '3144579', '0', '', '', '', 1),
(564, 38, '29108', '2024-06-04', 'SALAZAR SALGADO MARCO POLO', '', '', '0000-00-00', '3 68 94 99', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(565, 38, '16332', '2024-06-04', 'GUERRERO CORTES AMALIA', '', '', '0000-00-00', '7775155785', 'amaliagc2@hotmail.com', '', '', '', 1),
(566, 38, '28079', '2024-06-04', 'RODRIGUEZ COLIN ROCIO', '', '', '0000-00-00', '7771881571', 'chiorodc@hotmail.com', '', '', '', 1),
(567, 38, '12035', '2024-06-04', 'CESPEDES GUEMES ADRIANA', '', '', '0000-00-00', '3 12 72 17', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(568, 38, '12297', '2024-06-04', 'CUELLAR MIRANDA LILIANA JANET', '', '', '0000-00-00', '7774520250', 'miranda_0731@hotmail.com', '', '', '', 1),
(569, 38, '13139', '2024-06-04', 'DURAN IBARRA RUTH ANGELICA', '', '', '0000-00-00', '7772584569', 'ruthy.duran.19@gmail.com', '', '', '', 1),
(570, 38, '17010', '2024-06-04', 'HERNANDEZ MEDINA GEORGINA', '', '', '0000-00-00', '7772076497', 'pagegian@hotmail.com', '', '', '', 1),
(571, 38, '22329', '2024-06-04', 'MARQUEZ ADAME KARLA OYUKI', '', '', '0000-00-00', '7773529165', 'marquez.kary27@gmail.com', '', '', '', 1),
(572, 38, '26161', '2024-06-04', 'PEREZ CASTRO SOFIA', '', '', '0000-00-00', '7771840720', 'perezcastrosofia78@gmail.com', '', '', '', 1),
(573, 38, '32186', '2024-06-04', 'VALLADARES RIVERA ELIZABETH', '', '', '0000-00-00', '3133814', 'valladaresrea.live.com.mx', '', '', '', 1),
(574, 38, '15046', '2024-06-04', 'FLORES GALVEZ BEATRIZ JULIETA', '', '', '0000-00-00', '7772099581', 'Iq.bflores@gmail.com', '', '', '', 1),
(575, 38, '12122', '2024-06-04', 'CASTRO GOMEZ NORMA LORENA', '', '', '0000-00-00', '7771436218', 'norma.castrog1978@gmail.com', '', '', '', 1),
(576, 38, '15056', '2024-06-04', 'FERNANDEZ DEGANTE FERNANDA', '', '', '0000-00-00', '7774305617', 'lafersh44@gmail.com', '', '', '', 1),
(577, 38, '29124', '2024-06-04', 'SANCHEZ PEREZ MARIA MAGALY', '', '', '0000-00-00', '7774404790', 'soymariquita2112@gmail.com', '', '', '', 1),
(578, 38, '10234', '2024-06-04', 'AGUILAR AHUMADA NANCY MARIA', '', '', '0000-00-00', '5550604798', 'nancyaguilar2606@gmail.com', '', '', '', 1),
(579, 38, '16377', '2024-06-04', 'GONZALEZ MANJARREZ YADIRA ALEJANDRA', '', '', '0000-00-00', '7775221354', 'yadiramanjarrez@hotmail.com', '', '', '', 1),
(580, 38, '26226', '2024-06-04', 'RANGEL FLORES CRYSTAL', '', '', '0000-00-00', '7772587412', 'crysrangel28@hotmail.com', '', '', '', 1),
(581, 38, '32192', '2024-06-04', 'VARGAS SANTANA KATIA', '', '', '0000-00-00', '7775980025', 'katy19_vs@hotmail.com', '', '', '', 1),
(582, 39, '11071', '2024-06-04', 'BELTRAN ESTRADA JUAN', '', '', '0000-00-00', '7772206843', 'jube_1960@hotmail.com', '', '', '', 1),
(583, 39, '14063', '2024-06-04', 'ESCUTIA CLAROS DANIEL ODIN', '', '', '0000-00-00', '7772587961', 'lic.daniel.escutia@gmail.com', '', '', '', 1),
(584, 39, '17050', '2024-06-04', 'HERNANDEZ GARFIAS JORGE', '', '', '0000-00-00', '73435254', 'jorge_hgarfias@hotmail.com', '', '', '', 1),
(585, 39, '32030', '2024-06-04', 'VARGAS RUIZ XORABET XUCATI', '', '', '0000-00-00', '7771912859', 'xucati_2@hotmail.com', '', '', '', 1),
(586, 39, '11132', '2024-06-04', 'BAHENA ORTIZ JOSE RAYMUNDO', '', '', '0000-00-00', '7775227173', 'jr_bahena@hotmail.com', '', '', '', 1),
(587, 39, '22237', '2024-06-04', 'MEJIA DUEÑAS FERNANDO', '', '', '0000-00-00', '7771182873', 'fher_nnd@hotmail.com', '', '', '', 1),
(588, 39, '11062', '2024-06-04', 'BRAVO GARCIA SOLEDAD MIREYA', '', '', '0000-00-00', '7771811186', 'mirebravo73@gmail.com', '', '', '', 1),
(589, 39, '16115', '2024-06-04', 'GONZALEZ SEDANO ADRIAN', '', '', '0000-00-00', '7775198808', 'adrr2008ma@gmail.com', '', '', '', 1),
(590, 39, '26024', '2024-06-04', 'PALACIOS GALVAN ADRIANA', '', '', '0000-00-00', '7773769867', 'palaciosyani061@gmail.com', '', '', '', 1),
(591, 39, '10108', '2024-06-04', 'ARELLANES ACEVEDO DOMINGO', '', '', '0000-00-00', '7774392827', 'juzgadopenalunicoatlacholoaya@hotmail.com', '', '', '', 1),
(592, 39, '10242', '2024-06-04', 'ALVEAR SALAZAR ELBA JAZMIN', '', '', '0000-00-00', '7773413386', 'jazzrde@gmail.com', '', '', '', 1),
(593, 39, '16389', '2024-06-04', 'GONZALEZ PEREZ CYNTHIA TONATZIN', '', '', '0000-00-00', '7777899562', 'tonacynthiaglez@gmail.com', '', '', '', 1),
(594, 39, '17102', '2024-06-04', 'HERRERA BARRERA SHAILA NOHEMI', '', '', '0000-00-00', '7773181757', 'shafred_25@hotmail.com', '', '', '', 1),
(595, 39, '17117', '2024-06-04', 'HERNANDEZ SOTELO AIME', '', '', '0000-00-00', '7771291853', 'aimehs@hotmail.com', '', '', '', 1),
(596, 39, '21144', '2024-06-04', 'LOPEZ LOPEZ JOEL IVAN', '', '', '0000-00-00', '7772181410', 'fox_87live@live.com.mx', '', '', '', 1),
(597, 39, '22217', '2024-06-04', 'MEDINA JUAREZ ROBERTO', '', '', '0000-00-00', '7774115160', 'robbermed77@gmail.com', '', '', '', 1),
(598, 39, '22365', '2024-06-04', 'MORALES GONZALEZ MAURICIO', '', '', '0000-00-00', '7775004704', 'dulce_0216@hotmail.com', '', '', '', 1),
(599, 39, '28299', '2024-06-04', 'RIVERA VALERA OLIMPO', '', '', '0000-00-00', '7775585550', '0', '', '', '', 1),
(600, 39, '29281', '2024-06-04', 'SANCHEZ TAPIA JONATHAN', '', '', '0000-00-00', '7773527829', 'jonathansan_009@hotmail.com', '', '', '', 1),
(601, 39, '31006', '2024-06-04', 'URIOSTEGUI CORDOVA TALINA', '', '', '0000-00-00', '7774527400', 'talina.cordova@gmail.com', '', '', '', 1),
(602, 40, '17071', '2024-06-04', 'HERRERA AQUINO JOSE', '', '', '0000-00-00', '01734 342 45 87', 'jha3107@hotmail.com', '', '', '', 1),
(603, 40, '12167', '2024-06-04', 'COLIN MARTINEZ LUZ DE SELENE', '', '', '0000-00-00', '3 17 10 18', 'meztlitzin@hotmail.com', '', '', '', 1),
(604, 40, '16094', '2024-06-04', 'GONZALEZ SUAREZ EMMA', '', '', '0000-00-00', '7775148891', 'emmags0468@hotmail.com', '', '', '', 1),
(605, 40, '28222', '2024-06-04', 'RIVERA HERNANDEZ JONATHAN EVERARDO', '', '', '0000-00-00', '7772407365', 'brjona_rivera@hotmail.com', '', '', '', 1),
(606, 40, '29213', '2024-06-04', 'SILVAR ALANIS LEONARDO', '', '', '0000-00-00', '7771737308', 'leosss_80@hotmail.com', '', '', '', 1),
(607, 40, '32145', '2024-06-04', 'VEGA REZA LOURDES CAROLINA', '', '', '0000-00-00', '777 323 72 84', 'lcvg_169@hotmail.co', '', '', '', 1),
(608, 40, '15141', '2024-06-04', 'FLORES VARGAS LAURA MARLENE', '', '', '0000-00-00', '7772321529', 'marlenefloresv22@gmail.com', '', '', '', 1),
(609, 40, '28326', '2024-06-04', 'RUBI VERA NANCY ORIANA', '', '', '0000-00-00', '5579227710', 'laoris1@hotmail.com', '', '', '', 1),
(610, 40, '30095', '2024-06-04', 'TALLABS ALMAZAN PATRICIA ALEJANDRA', '', '', '0000-00-00', '. 15 01 29', 'paty_tabs@hotmail.com', '', '', '', 1),
(611, 40, '16145', '2024-06-04', 'GONZALEZ CASTRO MARCO ULISES', '', '', '0000-00-00', '7771546370', 'gcmrk78@hotmail.com', '', '', '', 1),
(612, 40, '21030', '2024-06-04', 'LASTRA GUTIERREZ LORENA', '', '', '0000-00-00', '7774608246', 'l.lastra.g71@hotmail.com', '', '', '', 1),
(613, 40, '22049', '2024-06-04', 'MEDRANO FLORES MARINA', '', '', '0000-00-00', '3 14 10 40', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(614, 40, '15026', '2024-06-04', 'FLORES RANGEL FLOR ALEIDA', '', '', '0000-00-00', '7774383490', 'ffloraleida@gmail.com', '', '', '', 1),
(615, 40, '29050', '2024-06-04', 'SOTELO CORDOVA MARIA FELIX', '', '', '0000-00-00', '7771563901', 'tadirkari_23@hotmail.com', '', '', '', 1),
(616, 40, '30025', '2024-06-04', 'TRUJILLO DELGADO MARIO', '', '', '0000-00-00', '7772163832', 'elenaren16@gmail.com', '', '', '', 1),
(617, 40, '16372', '2024-06-04', 'GONZALEZ GONZALEZ ERIKA', '', '', '0000-00-00', '7772054499', 'erika781208@gmail.com', '', '', '', 1),
(618, 40, '17094', '2024-06-04', 'HERNANDEZ GASPAR STEPHANIE', '', '', '0000-00-00', '7772995195', 'fanny0513@hotmail.com', '', '', '', 1),
(619, 40, '25095', '2024-06-04', 'OROZPE GONZALEZ KATYA JANINNE', '', '', '0000-00-00', '777 212 53 11', 'kati_kyrios@hotmail.com', '', '', '', 1),
(620, 40, '26204', '2024-06-04', 'POPOCA FLORES JACQUELINE', '', '', '0000-00-00', '7775084005', 'jpca304@gmail.com', '', '', '', 1),
(621, 40, '28289', '2024-06-04', 'ROJAS VARGAS JULIA PATRICIA', '', '', '0000-00-00', '7774930569', 'jpatricia.rojas@gmail.com', '', '', '', 1),
(622, 40, '28302', '2024-06-04', 'RONZON MORENO ALEJANDRO', '', '', '0000-00-00', '7773067671', 'rigel.2007@hotmail.com', '', '', '', 1),
(623, 40, '29197', '2024-06-04', 'SANCHEZ VELASCO MONICA', '', '', '0000-00-00', '7771047506', 'ius290197monsanchez@gmail.com', '', '', '', 1),
(624, 40, '29240', '2024-06-04', 'SALAZAR CHAVEZ ULISES', '', '', '0000-00-00', '7771336951', '', '', '', '', 1),
(625, 40, '32166', '2024-06-04', 'VALLE OCAMPO IVAN', '', '', '0000-00-00', '7772587884', 'teick02_clau2@hotmail.com', '', '', '', 1),
(626, 41, '12077', '2024-06-04', 'CALDERON HERNANDEZ LUCIA MARIA LUISA', '', '', '0000-00-00', '7772272340', 'lic.lucycalderon@hotmail.com', '', '', '', 1),
(627, 41, '10159', '2024-06-04', 'AVILA MORALES KARINA', '', '', '0000-00-00', '7772111582', 'avilamoralesk80@gmail.com', '', '', '', 1),
(628, 41, '16181', '2024-06-04', 'GARCIA DIAZ MARIA TERESA', '', '', '0000-00-00', '7772793785', 'teregarcia@hotmail.com', '', '', '', 1),
(629, 41, '18004', '2024-06-04', 'IBARRA LIEVANOS MIROSLAVA', '', '', '0000-00-00', '7775233363', 'mirosibarliev@hotmail.com', '', '', '', 1),
(630, 41, '19022', '2024-06-04', 'JAIMES RIVAS YOLANDA', '', '', '0000-00-00', '3 113877', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(631, 41, '25076', '2024-06-04', 'OLAVARRIETA FILIO MARICARMEN', '', '', '0000-00-00', '7777900295', 'gualolavarrieta@gmail.com', '', '', '', 1),
(632, 41, '12076', '2024-06-04', 'CASTAÑEDA FLORES YESENIA', '', '', '0000-00-00', '3 81 08 75', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(633, 41, '15127', '2024-06-04', 'FIGUEROA OLIVARES OLIVER', '', '', '0000-00-00', '7774532653', 'oliverfigueroa@me.com', '', '', '', 1),
(634, 41, '27005', '2024-06-04', 'QUEZADA FLORES ELIDETH ADRIANA', '', '', '0000-00-00', '1 26 00 92', 'moshis28@hotmail.com', '', '', '', 1),
(635, 41, '11022', '2024-06-04', 'BUSTAMANTE RAMIREZ ALICIA', '', '', '0000-00-00', '7774773620', 'aliciabte68@gmail.com', '', '', '', 1),
(636, 41, '29045', '2024-06-04', 'SOTELO PIEDROLA CECILIA', '', '', '0000-00-00', '7771328554', 'ceciliasotelo21@gmail.com', '', '', '', 1),
(637, 41, '22113', '2024-06-04', 'MOTA SANCHEZ CECILIA CANDELARIA', '', '', '0000-00-00', '7772187280', 'cmotasanchez75@gmail.com', '', '', '', 1),
(638, 41, '12040', '2024-06-04', 'CASTAÑEDA GONZALEZ ALMA', '', '', '0000-00-00', '7771339006', 'almcglez@gmail.com', '', '', '', 1),
(639, 41, '28072', '2024-06-04', 'ROSALES JUAREZ ESPERANZA ELOISA', '', '', '0000-00-00', '3 82 26 48', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(640, 41, '11179', '2024-06-04', 'BAHENA SALGADO ERIKA ANAHI', '', '', '0000-00-00', '2917087', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(641, 41, '13147', '2024-06-04', 'DIAZ VERA CECILIA ARACELI', '', '', '0000-00-00', '5534315315', 'ceardive@gmail.com', '', '', '', 1),
(642, 41, '15111', '2024-06-04', 'FLORES CASTAÑEDA JOSE JULIO', '', '', '0000-00-00', '7772001310', 'alessandrocas45@gmail.com', '', '', '', 1),
(643, 41, '16300', '2024-06-04', 'GARCIA PINEDA LIZBETH', '', '', '0000-00-00', '7771351651', 'lizgarpin@hotmail.com', '', '', '', 1),
(644, 41, '17137', '2024-06-04', 'HIPOLITO MORA ILSE ILAYALIT', '', '', '0000-00-00', '7772493446', 'ilse_ilayalit5@hotmail.com', '', '', '', 1),
(645, 41, '21176', '2024-06-04', 'LONGARES ORTIZ EDITH', '', '', '0000-00-00', '7774499809', 'elongares12@gmail.com', '', '', '', 1),
(646, 41, '28213', '2024-06-04', 'RAMIREZ PEDROZA MARIO', '', '', '0000-00-00', '3 10 09 76', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(647, 41, '29198', '2024-06-04', 'SEUTHE FLORES KURT', '', '', '0000-00-00', '7772141325', 'kurtsf85@gmail.com', '', '', '', 1),
(648, 41, '29200', '2024-06-04', 'SORIA COVARRUBIAS ROSA MARTHA', '', '', '0000-00-00', '5569629958', 'renata71_@hotmail.com', '', '', '', 1),
(649, 41, '32131', '2024-06-04', 'VAZQUEZ CRUZ ALBERTA', '', '', '0000-00-00', '7773870096', 'grace46@live.com.mx', '', '', '', 1),
(650, 42, '25092', '2024-06-04', 'ORTEGA HERNANDEZ MARTHA LORENA', '', '', '0000-00-00', '7771338718', 'marthaloh@hotmail.com', '', '', '', 1),
(651, 42, '10195', '2024-06-04', 'AGUAYO VERGARA SERGIO DANIEL', '', '', '0000-00-00', '7774295632', 'aguayo.sergiod@gmail.com', '', '', '', 1),
(652, 42, '17076', '2024-06-04', 'HERNANDEZ PIZARRO JISELIA', '', '', '0000-00-00', '7772335654', 'lic_jisel83@hotmail.com', '', '', '', 1),
(653, 42, '22119', '2024-06-04', 'MORALES JIMENEZ CRISTINA LORENA', '', '', '0000-00-00', '3 13 68 65', 'kristina_janne@hotmail.com', '', '', '', 1),
(654, 42, '25016', '2024-06-04', 'OCAMPO BUSTOS ANGELICA MARIA', '', '', '0000-00-00', '3 25 28 99', 'tinoko_19@hotmail.com', '', '', '', 1),
(655, 42, '32106', '2024-06-04', 'VAZQUEZ CANO ERIKA MARCELA', '', '', '0000-00-00', '', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(656, 42, '14029', '2024-06-04', 'ESTRADA PALACIOS ANA MIRIAM', '', '', '0000-00-00', '7772402565', 'anaestradapalacios@gmail.com', '', '', '', 1),
(657, 42, '26149', '2024-06-04', 'PARRA PLIEGO MARIANA PATRICIA', '', '', '0000-00-00', '7775133385', 'marparra91@outlook.com', '', '', '', 1),
(658, 42, '28369', '2024-06-04', 'ROMERO ORTIZ EDERT EDUARDO', '', '', '0000-00-00', '7774938854', 'rooe8916@gmail.com', '', '', '', 1),
(659, 42, '12025', '2024-06-04', 'CASTRO BALCAZAR LETICIA', '', '', '0000-00-00', '3 16 59 61', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(660, 42, '15060', '2024-06-04', 'FLORES MARTINEZ MARIA ALEJANDRA', '', '', '0000-00-00', '7772058851', 'malexa0211@hotmail.com', '', '', '', 1),
(661, 42, '28081', '2024-06-04', 'RODRIGUEZ MENDOZA GUILLERMINA', '', '', '0000-00-00', '7771055512', 'guilleromen@gmail.com', '', '', '', 1),
(662, 42, '25018', '2024-06-04', 'ORTEGA SALAZAR MIRIAM', '', '', '0000-00-00', '7772834407', 'mirish08@hotmail.com', '', '', '', 1),
(663, 42, '22190', '2024-06-04', 'MAZON HERNANDEZ MARIBEL', '', '', '0000-00-00', '7771051886', 'jeynmazonh@gmail.com', '', '', '', 1),
(664, 42, '26046', '2024-06-04', 'PARRA CABRERA LORENA MARISOL', '', '', '0000-00-00', '7775238160', 'lorena_parra75@hotmail.com', '', '', '', 1),
(665, 42, '28093', '2024-06-04', 'RUIZ JUAREZ ELIXER', '', '', '0000-00-00', '7771543846', 'elixerrj69@gmail.com', '', '', '', 1),
(666, 42, '10274', '2024-06-04', 'ARROYO PEDROZA ANDRES', '', '', '0000-00-00', '7773521692', 'arroyo-pedroza@hotmail.com', '', '', '', 1),
(667, 42, '13102', '2024-06-04', 'DIAZ VILLADA RITA', '', '', '0000-00-00', '7773154979', 'diazvrita@gmail.com', '', '', '', 1),
(668, 42, '15159', '2024-06-04', 'FLORES SORIANO SOFIA BELEN', '', '', '0000-00-00', '7773896136', 'sofia.fs@icloud.com', '', '', '', 1),
(669, 42, '22254', '2024-06-04', 'MALDONADO HERNANDEZ JOSEFINA', '', '', '0000-00-00', '7771004263', 'maldonadojoss26@gmail.com', '', '', '', 1),
(670, 42, '22302', '2024-06-04', 'MORALES CASTAÑEDA RAFAEL JONATHAN', '', '', '0000-00-00', '7771843167', 'moralesrafaeljonathan@gmail.com', '', '', '', 1),
(671, 42, '28066', '2024-06-04', 'ROJAS PORCAYO JOSE LUIS', '', '', '0000-00-00', '7771857309', 'jlrojasp40@gmail.com', '', '', '', 1),
(672, 42, '28394', '2024-06-04', 'RUIZ AVILA ALEJANDRO TADEO', '', '', '0000-00-00', '7773528126', '', '', '', '', 1),
(673, 43, '32130', '2024-06-04', 'VALENCIA VEGA ALTAMIRANO VALERIA', '', '', '0000-00-00', '7771345982', 'esha_preacog@hotmail.com', '', '', '', 1),
(674, 43, '23006', '2024-06-04', 'NAJERA VASA VERONICA', '', '', '0000-00-00', '7774088294', 'vealu@hotmail.com', '', '', '', 1),
(675, 43, '26116', '2024-06-04', 'PEREZ RAMIREZ GLORIA ELIANE', '', '', '0000-00-00', '316 47 64', 'bebe_eli2003@hotmail.com', '', '', '', 1),
(676, 43, '29129', '2024-06-04', 'SALAZAR LAMADRID DULCE MARIA', '', '', '0000-00-00', '7777300019', 'lamadriddulce@hotmail.com', '', '', '', 1),
(677, 43, '29219', '2024-06-04', 'SERAFIN PEREZ ZAIRI', '', '', '0000-00-00', '7772497369', 'zairy_94@hotmail.com', '', '', '', 1),
(678, 43, '11147', '2024-06-04', 'BAHENA ESPINDOLA PAULA YESENIA', '', '', '0000-00-00', '7771563249', 'nahomi_74@hotmail.com', '', '', '', 1),
(679, 43, '12313', '2024-06-04', 'CAMPOS DEL RIO JAVIER EDUARDO', '', '', '0000-00-00', '5514093354', 'jav_oni@hotmail.com', '', '', '', 1),
(680, 43, '30078', '2024-06-04', 'TELLEZ TOLEDO ALEJANDRA', '', '', '0000-00-00', '7775571663', 'ale-tt@hotmail.com', '', '', '', 1),
(681, 43, '12100', '2024-06-04', 'CASTAÑEDA ESPINOSA NAYIBE LETICIA', '', '', '0000-00-00', '7772658994', 'Castanedaespinosa68@gmail.com', '', '', '', 1),
(682, 43, '21056', '2024-06-04', 'LARA VERGARA MARGARITA', '', '', '0000-00-00', '7771111166', 'ferlra72@gmail.com', '', '', '', 1),
(683, 43, '10032', '2024-06-04', 'AYALA RUIZ MARIA MAGDALENA', '', '', '0000-00-00', '7771809819', 'magdauni@hotmail.com', '', '', '', 1),
(684, 43, '16095', '2024-06-04', 'GONZALEZ AVILES ERIKA', '', '', '0000-00-00', '7772684840', 'manzanita18@hotmail.es', '', '', '', 1),
(685, 43, '28041', '2024-06-04', 'RODRIGUEZ BONILLA MA. MAGDALENA', '', '', '0000-00-00', '7775352535', 'Bonilla_magds@icloud.com', '', '', '', 1),
(686, 43, '32040', '2024-06-04', 'VENOSA MEJIA OLGA LIDIA', '', '', '0000-00-00', '7771925304', 'lidiavenosa73@gmail.com', '', '', '', 1),
(687, 43, '12273', '2024-06-04', 'CAMPOS AVILES EDNA AIDEE', '', '', '0000-00-00', '7773694899', 'aydkampos@gmail.com', '', '', '', 1),
(688, 43, '15106', '2024-06-04', 'FLORES URIOSTEGUI AMERICA', '', '', '0000-00-00', '7775467287', 'americaflores645@gmail.com', '', '', '', 1),
(689, 43, '21125', '2024-06-04', 'LOPEZ BASAVE MIRNA', '', '', '0000-00-00', '5529080129', 'mirnalobasa@gmaol.com', '', '', '', 1),
(690, 43, '22320', '2024-06-04', 'MOLINA ARIZMENDI JOI', '', '', '0000-00-00', '7775151868', 'gaara_gt@hotmail.com', '', '', '', 1),
(691, 43, '22361', '2024-06-04', 'MONZON GARCIA OSCAR EDUARDO', '', '', '0000-00-00', '7771974365', '', '', '', '', 1),
(692, 43, '25093', '2024-06-04', 'OROZCO LEGORRETA FRANCISCO JAVIER', '', '', '0000-00-00', '7771903721', 'pancho-express@hotmail.com', '', '', '', 1),
(693, 43, '25128', '2024-06-04', 'ORTIZ MORALES KASSANDRA DENISE', '', '', '0000-00-00', '7779321471', 'kassandraortiz186@gmail.com', '', '', '', 1),
(694, 43, '28336', '2024-06-04', 'RAMIREZ SOTELO BEATRIZ', '', '', '0000-00-00', '7774205518', 'betilinea68@hotmail.com', '', '', '', 1),
(695, 43, '35032', '2024-06-04', 'ZAGAL FLORES LUIS ANGEL', '', '', '0000-00-00', '7774358092', 'luis_480angelo@hotmail.com', '', '', '', 1),
(696, 44, '26011', '2024-06-04', 'PEREZ ASCENCIO ANTONIO', '', '', '0000-00-00', '3 13 15 13', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(697, 44, '13026', '2024-06-04', 'DE LA ROSA CARMONA ERIKA GABRIELA', '', '', '0000-00-00', '7773634802', 'lic.gabyros@hotmail.com', '', '', '', 1),
(698, 44, '16190', '2024-06-04', 'GARCIA ALARCON LILIANA', '', '', '0000-00-00', '777 3 22 84 88', 'lilischicols@hotmail.com', '', '', '', 1),
(699, 44, '22204', '2024-06-04', 'MENDOZA PAEZ SELENE', '', '', '0000-00-00', '3 20 38 86', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(700, 44, '25054', '2024-06-04', 'ORTEGA MONDRAGON YESENIA', '', '', '0000-00-00', '7774411950', 'yesiortmon@gmail.com', '', '', '', 1),
(701, 44, '32082', '2024-06-04', 'VILLALOBOS BAHENA ROSALBA', '', '', '0000-00-00', '3 13 39 48', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(702, 44, '28177', '2024-06-04', 'RIOS OLIVARES LORENA', '', '', '0000-00-00', '7771032234', 'lorena.rioso@gmail.com', '', '', '', 1),
(703, 44, '28200', '2024-06-04', 'ROMERO REYNA ANA LILIA', '', '', '0000-00-00', '7772547178', 'annytaromero@hotmail.com', '', '', '', 1),
(704, 44, '34003', '2024-06-04', 'YAÑEZ MUÑOZ NANCY', '', '', '0000-00-00', '7771407427', 'nayamu17@gmail.com', '', '', '', 1),
(705, 44, '12092', '2024-06-04', 'CARDOZO ARTEAGA ERENDIDA', '', '', '0000-00-00', '7772160425', 'erendida.cardozo@gmail.com', '', '', '', 1),
(706, 44, '29069', '2024-06-04', 'SAAVEDRA BAHENA JESUS', '', '', '0000-00-00', '7774207787', 'jargentus@yahoo.com.mx', '', '', '', 1),
(707, 44, '12113', '2024-06-04', 'CAMACHO MEJIA LUZ MARIA', '', '', '0000-00-00', '3 10 30 26', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(708, 44, '25038', '2024-06-04', 'OCAMPO CERVANTES TERESA', '', '', '0000-00-00', '7775089108', 'eco11gc@gmail.com', '', '', '', 1),
(709, 44, '28048', '2024-06-04', 'ROMAN ALBARRAN LAURA', '', '', '0000-00-00', '7771637406', 'lauraelenalarar@gmail.com', '', '', '', 1),
(710, 44, '10230', '2024-06-04', 'ALDAMA HERNANDEZ SAMANTHA', '', '', '0000-00-00', '7775409855', 'samanthaaldama.hdez@hotmail.com', '', '', '', 1),
(711, 44, '11211', '2024-06-04', 'BRAVO MENCHACA ISRAEL', '', '', '0000-00-00', '7775027968', 'is_rock_65@hotmail.com', '', '', '', 1),
(712, 44, '12206', '2024-06-04', 'CARO DEL CASTILLO MORENO VERONICA', '', '', '0000-00-00', '5579459578', 'caroveronica04@gmail.com', '', '', '', 1),
(713, 44, '12241', '2024-06-04', 'CORONA ALONSO MIRNA GUINETT', '', '', '0000-00-00', '7773072656', 'guinettcorona@gmail.com', '', '', '', 1),
(714, 44, '17146', '2024-06-04', 'HERNANDEZ MORALES ADRIANA BETZABE', '', '', '0000-00-00', '7772331618', 'adriana_hernam@hotmail.com', '', '', '', 1),
(715, 44, '17148', '2024-06-04', 'HERNANDEZ ROA OCTAVIO', '', '', '0000-00-00', '7775468135', '', '', '', '', 1),
(716, 44, '22238', '2024-06-04', 'MONROY SALGADO MARIA ELENA', '', '', '0000-00-00', '7771023448', 'elenitamonroy20@gmail.com', '', '', '', 1),
(717, 44, '22256', '2024-06-04', 'MONTES DELGADO FABIOLA', '', '', '0000-00-00', '3 15 17 57', 'fabamont27@hotmail.com', '', '', '', 1),
(718, 44, '22307', '2024-06-04', 'MARTINEZ GONZALEZ OMAR JOSUE', '', '', '0000-00-00', '7772175391', 'martinezgonzalezo686@gmail.com', '', '', '', 1),
(719, 44, '29157', '2024-06-04', 'SUAREZ REZA LILIA NAYELI', '', '', '0000-00-00', '7771484507', 'nayeli.suarez1944@gmail.com', '', '', '', 1),
(720, 45, '29094', '2024-06-04', 'SANDOVAL SANCHEZ MARIA DE LOURDES ANDREA', '', '', '0000-00-00', '3 16 70 80', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(721, 45, '12081', '2024-06-04', 'CASTRO TAPIA IRMA ZSWLLETH', '', '', '0000-00-00', '7773224634', 'iz.castrotapia@gmail.com', '', '', '', 1),
(722, 45, '15114', '2024-06-04', 'FLORES CONTRERAS LUZ MARIA', '', '', '0000-00-00', '102 12 19', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(723, 45, '17040', '2024-06-04', 'HERNANDEZ FIGUEROA MARTIN', '', '', '0000-00-00', '3 65 33 72', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(724, 45, '28270', '2024-06-04', 'REZA GARCIA JAIME ALBERTO', '', '', '0000-00-00', '3 16 90 70', 'reza39@hotmail.com', '', '', '', 1),
(725, 45, '29252', '2024-06-04', 'SOLORZANO FLORES VIRIDIANA', '', '', '0000-00-00', '7771354791', 'viri_solorzano@hotmail.com', '', '', '', 1),
(726, 45, '13128', '2024-06-04', 'DIAZ HERNANDEZ ALAN GUSTAVO', '', '', '0000-00-00', '7341505421', 'licdiaz93@gmail.com', '', '', '', 1);
INSERT INTO `student` (`student_id`, `id_assignment`, `no_empleado`, `register_date`, `fname`, `image`, `age`, `dob`, `contact`, `email`, `address`, `city`, `country`, `enabled`) VALUES
(727, 45, '22244', '2024-06-04', 'MANCIO HONORATO ALDO', '', '', '0000-00-00', '777315 45 93', 'lobo_18_69_@hotmail.com', '', '', '', 1),
(728, 45, '30084', '2024-06-04', 'TELLEZ FIGUEROA ERIKA PAOLA', '', '', '0000-00-00', '7775639336', 'pao_0704@hotmail.com', '', '', '', 1),
(729, 45, '19013', '2024-06-04', 'JARILLO ROA ALBERTA', '', '', '0000-00-00', '7774172941', 'efevo_manuel0694@hotmail.com', '', '', '', 1),
(730, 45, '14012', '2024-06-04', 'ESTEBES ROMAN EDITH', '', '', '0000-00-00', '7774902028', 'edithestebes@gmail.com', '', '', '', 1),
(731, 45, '16050', '2024-06-04', 'GUTIERREZ RAMIREZ ANGELA', '', '', '0000-00-00', '7777878931', 'angela.110.gutierrez@gmail.com', '', '', '', 1),
(732, 45, '22069', '2024-06-04', 'MORALES ORTIZ OFELIA', '', '', '0000-00-00', '7775319760', 'frogy-74@hotmail.com', '', '', '', 1),
(733, 45, '11094', '2024-06-04', 'BUSTOS CALDERON MARILUS', '', '', '0000-00-00', '7775231407', '', '', '', '', 1),
(734, 45, '13087', '2024-06-04', 'DE LA CRUZ BARRERA MARGARITA', '', '', '0000-00-00', '7772163595', 'maggie.delacruz@outlook.com', '', '', '', 1),
(735, 45, '30016', '2024-06-04', 'TAPIA RENDON MARIA DEL ROSARIO', '', '', '0000-00-00', '7772118251', 'mariadelrosariotapiarendon@gmail.com', '', '', '', 1),
(736, 45, '16219', '2024-06-04', 'GASPAR DIAZ ALMA ROSA', '', '', '0000-00-00', '7774519434', 'almoadita22@hotmail.com', '', '', '', 1),
(737, 45, '22375', '2024-06-04', 'MARTINEZ SANTIAGO BEATRIZ', '', '', '0000-00-00', '7774048096', 'bmsm245@gmail.com', '', '', '', 1),
(738, 45, '26122', '2024-06-04', 'PORCAYO NAVARRO MIRSHA PAOLA', '', '', '0000-00-00', '7772096427', 'noexisto_25@hotmail.com', '', '', '', 1),
(739, 45, '26198', '2024-06-04', 'PAREDES ARIAS FRIDA ALEXA', '', '', '0000-00-00', '7773079613', 'corazondemelon2112@gmail.com', '', '', '', 1),
(740, 45, '26211', '2024-06-04', 'PEREZ HERRERA NORA ATHENEA', '', '', '0000-00-00', '7775645913', 'ATHENEA_0502@OUTLOCK.COM', '', '', '', 1),
(741, 45, '29269', '2024-06-04', 'SAAVEDRA JAIME DANIEL ISAAC', '', '', '0000-00-00', '7773404155', 'danielsaavedrafn@gmail.com', '', '', '', 1),
(742, 45, '30111', '2024-06-04', 'TORRES MOJICA ERENDIRA COREY', '', '', '0000-00-00', '3151202', 'cory_torr_pm@hotmail.com', '', '', '', 1),
(743, 45, '30122', '2024-06-04', 'TRUJILLO RENDON LAURA ELENA', '', '', '0000-00-00', '7771110874', 'laura.trujillorendon7@gmail.com', '', '', '', 1),
(744, 46, '26014', '2024-06-04', 'PICHARDO OLAIZ MARIA ESTHER', '', '', '0000-00-00', '7776532965', 'pakot_16@hotmail.com', '', '', '', 1),
(745, 46, '19044', '2024-06-04', 'JAIME JIMENEZ ADRIANA GABRIELA', '', '', '0000-00-00', '7771073177', 'maestria_adroanajaime@yahoo.com', '', '', '', 1),
(746, 46, '22139', '2024-06-04', 'MAXINEZ ECHEVERRIA MA ISABEL', '', '', '0000-00-00', '7772329432', 'maxinez_isa@hotmail.com', '', '', '', 1),
(747, 46, '22182', '2024-06-04', 'MARTINEZ SALAS NORMA PATRICIA', '', '', '0000-00-00', '3 382 31 55', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(748, 46, '28135', '2024-06-04', 'RAMIREZ VELASQUEZ JANUARIO', '', '', '0000-00-00', '7772433701', 'januarioramirez@hotmail.com', '', '', '', 1),
(749, 46, '32120', '2024-06-04', 'VAZQUEZ BAUTISTA TANIA MAIDELINE', '', '', '0000-00-00', '3 16 39 16', 'maide05@hotmail.com', '', '', '', 1),
(750, 46, '17098', '2024-06-04', 'HERNANDEZ COLIN CHRISTIAN VIRIDIANA', '', '', '0000-00-00', '771753414', 'lic.viridianacolin@gmail.com', '', '', '', 1),
(751, 46, '19032', '2024-06-04', 'JAIMES DOMINGUEZ ANTONIO', '', '', '0000-00-00', '3 11 91 98', 'antonio-jaimes@hotmail.com', '', '', '', 1),
(752, 46, '30103', '2024-06-04', 'TELLEZ DOMINGUEZ JERANUI', '', '', '0000-00-00', '7774935247', 'jerisbra@hotmail.com', '', '', '', 1),
(753, 46, '21051', '2024-06-04', 'LEYVA GONZALEZ IRMA', '', '', '0000-00-00', '7772167538', 'irmaleyvagon@gmail.com', '', '', '', 1),
(754, 46, '15032', '2024-06-04', 'FUENTES ROMERO MARIELA', '', '', '0000-00-00', '7772185548', 'mariela.2209@live.com.mx', '', '', '', 1),
(755, 46, '12138', '2024-06-04', 'CARRILLO JIMON BEATRIZ', '', '', '0000-00-00', '7773673237', 'jimon2008@live.com.mx', '', '', '', 1),
(756, 46, '26106', '2024-06-04', 'PITA RIOS JOSSIMAR GASTON ADRIAN', '', '', '0000-00-00', '527771899565', 'Jossimarpita@gmail.com', '', '', '', 1),
(757, 46, '10228', '2024-06-04', 'ALVARADO AVILA GABRIELA ADRIANA', '', '', '0000-00-00', '7776007610', 'adriana_alvarado_avila@hotmail.com', '', '', '', 1),
(758, 46, '12091', '2024-06-04', 'CRUZ CUEVAS JAZMIN MARGARITA', '', '', '0000-00-00', '7772995735', 'jazmincruzcuevas@hotmail.com', '', '', '', 1),
(759, 46, '12231', '2024-06-04', 'CRUZ MORALES ADRIANA', '', '', '0000-00-00', '7774179155', 'adrycruzm_78@live.com.mx', '', '', '', 1),
(760, 46, '12268', '2024-06-04', 'CRUZ DAMAS MARIO ALBERTO', '', '', '0000-00-00', '7775337921', 'albertocdamas@gmail.com', '', '', '', 1),
(761, 46, '13125', '2024-06-04', 'DORANTES TEODORO MARIA DE LA LUZ', '', '', '0000-00-00', '7774935381', 'lic.luzma.dorantes@gmail.com', '', '', '', 1),
(762, 46, '16182', '2024-06-04', 'GONZALEZ PEREZ NORMA ANGELICA', '', '', '0000-00-00', '7774181099', 'normaglez3371@gmail.com', '', '', '', 1),
(763, 46, '16373', '2024-06-04', 'GONZALEZ JIMENEZ DIDIER EMMANUELLE', '', '', '0000-00-00', '7773821595', '', '', '', '', 1),
(764, 46, '19034', '2024-06-04', 'JERONIMO BALDERAS ELIZABETH', '', '', '0000-00-00', '7774582713', 'elizabeth26j@hotmail.com', '', '', '', 1),
(765, 46, '21153', '2024-06-04', 'LOPEZ BAHENA ERWIN OMAR', '', '', '0000-00-00', '3256746', 'tkrtelboss@hotmail.com', '', '', '', 1),
(766, 46, '23032', '2024-06-04', 'NATERAS GONZALEZ CINTIA VIVIANA', '', '', '0000-00-00', '7773170047', 'naterascintia@gmail.com', '', '', '', 1),
(767, 46, '29186', '2024-06-04', 'SERRANO ROSAS SAMANTA', '', '', '0000-00-00', '319 73 36', 'musa_riven_17@hotmail.com', '', '', '', 1),
(768, 47, '29010', '2024-06-04', 'SALAZAR GONZALEZ CATALINA', '', '', '0000-00-00', '7773181309', 'csg2010@live.com.mx', '', '', '', 1),
(769, 47, '16176', '2024-06-04', 'GARCIA MARTINEZ JAVIER ADRIAN', '', '', '0000-00-00', '7775641367', 'j.adriangarcia@hotmail.com', '', '', '', 1),
(770, 47, '16268', '2024-06-04', 'GARCIA RAMALES MONICA', '', '', '0000-00-00', '7777892007', 'moniksgr@hotmail.com', '', '', '', 1),
(771, 47, '22328', '2024-06-04', 'MEDINA VOORDUIN CLAUDIA', '', '', '0000-00-00', '7771040227', 'claudia.medinavo@gmail.com', '', '', '', 1),
(772, 47, '25037', '2024-06-04', 'OROZCO MORALES JACQUELINE', '', '', '0000-00-00', '7772365520', 'orozcojacqueline496@gmail.com', '', '', '', 1),
(773, 47, '29139', '2024-06-04', 'SEUTHE NAVARRETE JADE SUHEI LUCIA', '', '', '0000-00-00', '7771492395', 'lic.jade.seuthe@hotmail.com', '', '', '', 1),
(774, 47, '21038', '2024-06-04', 'LOPEZ PEREZ JUAN CARLOS', '', '', '0000-00-00', '7772198686', 'jclp2011@live.com.mx', '', '', '', 1),
(775, 47, '17110', '2024-06-04', 'HONORATO MARTINEZ ELDA ROCIO', '', '', '0000-00-00', '102 05 90', 'eldacool@hotmail.com', '', '', '', 1),
(776, 47, '28305', '2024-06-04', 'ROJAS VILLA JESUS CHRISTIAN', '', '', '0000-00-00', '7772688176', 'jc.rojasvilla@gmail.com', '', '', '', 1),
(777, 47, '29150', '2024-06-04', 'SILVA HERNANDEZ ARTURO', '', '', '0000-00-00', '3 11 69 91', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(778, 47, '15116', '2024-06-04', 'FLORES LEON MAYRA', '', '', '0000-00-00', '3 85 54 34', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(779, 47, '19011', '2024-06-04', 'JUAREZ RANGEL ROSALIA', '', '', '0000-00-00', '777882005', 'rj9748466@gmail.com', '', '', '', 1),
(780, 47, '32033', '2024-06-04', 'VAZQUEZ MORALES ARACELI', '', '', '0000-00-00', '7771792687', 'chelyvazquezmor@gmail.com', '', '', '', 1),
(781, 47, '21043', '2024-06-04', 'LAHERA BADILLO PERLA', '', '', '0000-00-00', '7772401231', 'estelladorada1805@hotmail.com', '', '', '', 1),
(782, 47, '25041', '2024-06-04', 'OCAMPO RIVERA MARIA DEL CARMEN', '', '', '0000-00-00', '7772310207', 'camelia4050@gmail.com', '', '', '', 1),
(783, 47, '28134', '2024-06-04', 'RODRIGUEZ LOPEZ IRENE', '', '', '0000-00-00', '7771526334', 'irene.rl.nm@gmail.com', '', '', '', 1),
(784, 47, '15156', '2024-06-04', 'FLORES OCAMPO ATHMA', '', '', '0000-00-00', '7774806214', 'athma.flores@gmail.com', '', '', '', 1),
(785, 47, '16270', '2024-06-04', 'GALLEGOS RAMIREZ OSCAR SINUHE', '', '', '0000-00-00', '7774173278', 'gallegososcar752@gmail.com', '', '', '', 1),
(786, 47, '26175', '2024-06-04', 'PEREYRA MORAN YAZMIN', '', '', '0000-00-00', '7771590802', 'yazpemo@hotmail.com', '', '', '', 1),
(787, 47, '26183', '2024-06-04', 'POPOCA FLORES ALEJANDRA KARINA', '', '', '0000-00-00', '7773028873', 'karinaaapf@hotmail.com', '', '', '', 1),
(788, 47, '26190', '2024-06-04', 'PERALTA AVILA GIOVANNA JAQUELINE', '', '', '0000-00-00', '7771795900', 'giovannaperalta97@gmail.com', '', '', '', 1),
(789, 47, '28259', '2024-06-04', 'RODRIGUEZ MEDINA JORGE', '', '', '0000-00-00', '7771791052', 'jorgejaguar@hotmail.com', '', '', '', 1),
(790, 47, '28386', '2024-06-04', 'REZA CORTES KATYA JOCELYN', '', '', '0000-00-00', '7773637352', 'rezaacortes@gmail.com', '', '', '', 1),
(791, 47, '29267', '2024-06-04', 'SAAVEDRA JAIME JESUS', '', '', '0000-00-00', '7772195030', 'jesus.saavedraj@hotmail.com', '', '', '', 1),
(792, 48, '22115', '2024-06-04', 'MIRANDA FLORES GABRIEL CESAR', '', '', '0000-00-00', '01735 35 456 79', 'valgc2000@yahoo.com.mx', '', '', '', 1),
(793, 48, '10164', '2024-06-04', 'AQUINO SUAREZ MARIA DEL CARMEN', '', '', '0000-00-00', '7773636931', 'eclipdelaqui@hotmail.com', '', '', '', 1),
(794, 48, '12089', '2024-06-04', 'CONTRERAS FLORES JUDITH TANIA', '', '', '0000-00-00', '3 194704', '0', '', '', '', 1),
(795, 48, '12174', '2024-06-04', 'CORONA BENITEZ NOEMI', '', '', '0000-00-00', '7771023225', 'noemicor@hotmail.com', '', '', '', 1),
(796, 48, '13085', '2024-06-04', 'DIAZ GONZALEZ NAYELY MARIA', '', '', '0000-00-00', '7771002375', 'nmdg22@hotmail.com', '', '', '', 1),
(797, 48, '16336', '2024-06-04', 'GARCIA RODRIGUEZ JENNIFER PAOLA', '', '', '0000-00-00', '7773704045', 'jeenng1607@gmail.com', '', '', '', 1),
(798, 48, '21154', '2024-06-04', 'LARA GARCIA FRANCISCO JAVIER', '', '', '0000-00-00', '7772675183', 'fjlaraga9021@gmail.com', '', '', '', 1),
(799, 48, '22316', '2024-06-04', 'MONTES VARGAS KENET ISAI', '', '', '0000-00-00', '2425491', 'kenetzito_94@hotmail.com', '', '', '', 1),
(800, 48, '32028', '2024-06-04', 'VAZQUEZ DIAZ CATALINA', '', '', '0000-00-00', '7771537205', 'catalina27vazquez@gmail.com', '', '', '', 1),
(801, 48, '10072', '2024-06-04', 'ARZATE VALLE JUAN PABLO', '', '', '0000-00-00', '7774571569', 'arzatevallejuanpablo@gmail.com', '', '', '', 1),
(802, 48, '25028', '2024-06-04', 'OCAMPO TORRES ROSANGEL', '', '', '0000-00-00', '7772052226', 'rosangelocampo@gmail.com', '', '', '', 1),
(803, 48, '28062', '2024-06-04', 'ROJAS SANCHEZ OLGA', '', '', '0000-00-00', '312 79 91', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(804, 48, '10118', '2024-06-04', 'AQUINO VILLAGOMEZ ERIKA', '', '', '0000-00-00', '7773848817', 'erykino@gmail.com', '', '', '', 1),
(805, 48, '11175', '2024-06-04', 'BARRANCO HERNANDEZ MARTHA MAGDALENA', '', '', '0000-00-00', '7772144098', 'ehr.mmb2706@gmail.com', '', '', '', 1),
(806, 48, '12222', '2024-06-04', 'CORTES HERNANDEZ NOHEMI', '', '', '0000-00-00', '7773525614', 'minimiaz514@gmail.com', '', '', '', 1),
(807, 48, '12263', '2024-06-04', 'CRUZ CUEVAS MICHELL ADRIAN', '', '', '0000-00-00', '7776107163', 'cruzcuevasadrian@gmail.com', '', '', '', 1),
(808, 48, '15132', '2024-06-04', 'FRANCO ROJAS FERNANDO', '', '', '0000-00-00', '7771553480', 'ferrnandofranco77@gmail.com', '', '', '', 1),
(809, 48, '16388', '2024-06-04', 'GARCIA VEGA ESMERALDA MARYCRUZ', '', '', '0000-00-00', '7353270241', '', '', '', '', 1),
(810, 48, '21156', '2024-06-04', 'LOPEZ ZARCO ROCIO LILIANA', '', '', '0000-00-00', '5520721487', 'r.lili.zar9@gmail.com', '', '', '', 1),
(811, 48, '22206', '2024-06-04', 'MENDEZ OBANDO PATRICIA', '', '', '0000-00-00', '3 17 02 12', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(812, 48, '28238', '2024-06-04', 'RAMIREZ PEDROZA MARTIN ARTURO', '', '', '0000-00-00', '7775514030', 'martiniux3001@gmail.com', '', '', '', 1),
(813, 48, '28348', '2024-06-04', 'REZA GUTIERREZ GERARDO GHEVANDRO', '', '', '0000-00-00', '7771630590', '', '', '', '', 1),
(814, 48, '30066', '2024-06-04', 'TRUJILLO CASTILLO CARMI MELISY', '', '', '0000-00-00', '777 3 11 26 01', 'melisyt@yahoo.com.mx', '', '', '', 1),
(815, 48, '30094', '2024-06-04', 'TEJADA ROMERO PERLA JACQUELINE', '', '', '0000-00-00', '7771902719', 'perlatejada11@gmail.com', '', '', '', 1),
(816, 49, '16103', '2024-06-04', 'GAETA MIRANDA SANDRA', '', '', '0000-00-00', '', 'gaeta _72@hotmail.com', '', '', '', 1),
(817, 49, '10158', '2024-06-04', 'AMADOR DIAZ MAURICIO IVAN', '', '', '0000-00-00', '7771621678', 'maurivam@hotmail.com', '', '', '', 1),
(818, 49, '11172', '2024-06-04', 'BENITEZ HERNANDEZ SERGIO CARLOS', '', '', '0000-00-00', '7773024618', 'sergio333_@hotmail.com', '', '', '', 1),
(819, 49, '22172', '2024-06-04', 'MORALES ORDOÑEZ BENJAMIN', '', '', '0000-00-00', '01734 34 31299', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(820, 49, '22229', '2024-06-04', 'MERCADO CUELLAR ELIZABETH', '', '', '0000-00-00', '777 100 31 72', 'elimercadocu_84@hotmail.com', '', '', '', 1),
(821, 49, '22248', '2024-06-04', 'MORENO RAMIREZ CESAR MARTIN', '', '', '0000-00-00', '1 45 25 44', 'tico_alber@live.com.mx', '', '', '', 1),
(822, 49, '22267', '2024-06-04', 'MARTINEZ SOTO ANGEL ENRIQUE', '', '', '0000-00-00', '3 16 25 27', 'aenrique5@hotmail.com', '', '', '', 1),
(823, 49, '28215', '2024-06-04', 'RIVERA GRANDA NANCY', '', '', '0000-00-00', '', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(824, 49, '12036', '2024-06-04', 'CRUZ CASTILLO ILDA CONCEPCION', '', '', '0000-00-00', '7775319224', 'cuci2008@hotmail.es', '', '', '', 1),
(825, 49, '16085', '2024-06-04', 'GUZMAN RANGEL CARMEN ROMAN', '', '', '0000-00-00', '7774222297', 'amarom2511@gmail.com', '', '', '', 1),
(826, 49, '28057', '2024-06-04', 'RODRIGUEZ GONZALEZ OFELIA', '', '', '0000-00-00', '', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(827, 49, '12134', '2024-06-04', 'CORTES LUGO ROSSY', '', '', '0000-00-00', '7772686145', 'ggpfjcl@gmail.com', '', '', '', 1),
(828, 49, '12309', '2024-06-04', 'CANO DIAZ JOSE FERNANDO', '', '', '0000-00-00', '1643068', 'canofernandodiaz@hotmail.com', '', '', '', 1),
(829, 49, '16275', '2024-06-04', 'GUTIERREZ CUELLAR CLAUDIA MARICELA', '', '', '0000-00-00', '7772334846', 'clauditagutc@gmail.com', '', '', '', 1),
(830, 49, '16346', '2024-06-04', 'GOMEZ REA KARLA ALEJANDRA', '', '', '0000-00-00', '7771206505', 'karlagomezr7@gmail.com', '', '', '', 1),
(831, 49, '17131', '2024-06-04', 'HERNANDEZ GARCIA JESUS', '', '', '0000-00-00', '7772314849', 'jesus.hgarcia@outlook.es', '', '', '', 1),
(832, 49, '22317', '2024-06-04', 'MUÑIZ CASTILLO NATALI JAZMIN', '', '', '0000-00-00', '3646656', 'natali_jazminmc@hotmail.com', '', '', '', 1),
(833, 49, '23027', '2024-06-04', 'NAJERA DIAZ ARLETT', '', '', '0000-00-00', '', '', '', '', '', 1),
(834, 49, '28266', '2024-06-04', 'RAMOS VIRGEN JORGE IVAN', '', '', '0000-00-00', '7774943362', 'jiram1977@hotmail.com', '', '', '', 1),
(835, 49, '28272', '2024-06-04', 'ROMERO JAUREZ MARIA DEL CARMEN', '', '', '0000-00-00', '7771116937', 'chispitakc@hotmail.com', '', '', '', 1),
(836, 49, '28323', '2024-06-04', 'RODRIGUEZ LASTRA LESLIE DANIELA', '', '', '0000-00-00', '7771353248', 'l.lastra.g71@hotmail.com', '', '', '', 1),
(837, 49, '28371', '2024-06-04', 'ROMAN GUERRERO BRIAN', '', '', '0000-00-00', '3821572', 'jerseyr19@hotmail.com', '', '', '', 1),
(838, 49, '29141', '2024-06-04', 'SANCHEZ VON PUTLITZ ALFREDO ENRIQUE', '', '', '0000-00-00', '7771048743', 'von_75@hotmail.com', '', '', '', 1),
(839, 50, '15108', '2024-06-04', 'FLORES AGUILAR MARTHA ADRIANA', '', '', '0000-00-00', '314 19 37', 'marthaflores_aguilar@hotmail.com', '', '', '', 1),
(840, 50, '11069', '2024-06-04', 'BECERRIL SANCHEZ CARMEN ALICIA', '', '', '0000-00-00', '7772010838', 'becerrilalicia@hotmaill.com', '', '', '', 1),
(841, 50, '16247', '2024-06-04', 'GOMEZ LARA GEORGINA', '', '', '0000-00-00', '7775134239', 'yinalarag.20@outlook.com', '', '', '', 1),
(842, 50, '28021', '2024-06-04', 'RODRIGUEZ APAC CLAUDIA BERENICE', '', '', '0000-00-00', '7772185075', 'cebra-35@hotmail.com', '', '', '', 1),
(843, 50, '28172', '2024-06-04', 'ROMERO LUJAN GABRIELA', '', '', '0000-00-00', '7776095818', 'romeroluj66@gmail.com', '', '', '', 1),
(844, 50, '25111', '2024-06-04', 'OLGUIN VERGARA DANAHY', '', '', '0000-00-00', '7771755399', 'dan.ver@outlook.es', '', '', '', 1),
(845, 50, '22048', '2024-06-04', 'MONTES GARCIA ZEFERINO', '', '', '0000-00-00', '7772140079', 'zeferinomg1972@gmail.com', '', '', '', 1),
(846, 50, '17031', '2024-06-04', 'HERNANDEZ PEREZ ROSALVA', '', '', '0000-00-00', '7773439566', 'josehectorchg@hotmail.com', '', '', '', 1),
(847, 50, '10227', '2024-06-04', 'ALVARADO URIOSTEGUI SAIDA AIDE', '', '', '0000-00-00', '', '', '', '', '', 1),
(848, 50, '12232', '2024-06-04', 'CERVANTES HERNANDEZ FLORENTINA FRANCISCA', '', '', '0000-00-00', '7774766012', 'cervantesflor141@gmail.com', '', '', '', 1),
(849, 50, '12337', '2024-06-04', 'CIFUENTES CAPISTRAN WENDY', '', '', '0000-00-00', '7777000443', 'WENDY.CAPISTRAN@HOTMAIL.COM', '', '', '', 1),
(850, 50, '13146', '2024-06-04', 'DELGADILLO TOLEDO ISAI', '', '', '0000-00-00', '7772647399', 'delgadillotoledo59@gmail.com', '', '', '', 1),
(851, 50, '21140', '2024-06-04', 'LASTRA GUTIERREZ MARIA GUADALUPE', '', '', '0000-00-00', '7775219872', 'guadalupelastra3@gmail.com', '', '', '', 1),
(852, 50, '22348', '2024-06-04', 'MALDONADO CRUZ MARIA FERNANDA', '', '', '0000-00-00', '7777129224', 'maldonadomafer533@gmail.com', '', '', '', 1),
(853, 50, '23059', '2024-06-04', 'NIEVES DEL CORRAL OMAR ALEJANDRO', '', '', '0000-00-00', '7772513373', 'Alexnieves07@gmail.com', '', '', '', 1),
(854, 50, '29161', '2024-06-04', 'SIERRA GOMEZ MIGUEL YAIR', '', '', '0000-00-00', '7771092127', 'barcoazul85@hotmail.com', '', '', '', 1),
(855, 50, '30118', '2024-06-04', 'TEJEDA ANGELES KARLA', '', '', '0000-00-00', '771889335', 'karla_tejeda_23@hotmail.com', '', '', '', 1),
(856, 50, '14076', '2024-06-04', 'ELGUEA VILCHIS EVA LIZETH', '', '', '0000-00-00', '7775638497', 'renygary1@hotmail.com', '', '', '', 1),
(857, 51, '30091', '2024-06-04', 'TORRES SALGADO LUIS MIGUEL', '', '', '0000-00-00', '7772310553', 'lmluismi@yahoo.com.mx', '', '', '', 1),
(858, 51, '22056', '2024-06-04', 'MARTINEZ BAUTISTA MA. ARACELI', '', '', '0000-00-00', '7772562678', 'maaraceli.bta@gmail.com', '', '', '', 1),
(859, 51, '28165', '2024-06-04', 'RAMIREZ SANTIESTEBAN JESUS ARTURO', '', '', '0000-00-00', '274 12 56', 'luquinojars@yahoo.com.mx', '', '', '', 1),
(860, 51, '28401', '2024-06-04', 'RASGADO SANCHEZ FERNANDO', '', '', '0000-00-00', '7773131090', 'fernandorasgado@moreloslegal', '', '', '', 1),
(861, 51, '29166', '2024-06-04', 'SANDOVAL BUCIO SOFIA', '', '', '0000-00-00', '7771356985', 'sofiabuusi@gmail.com', '', '', '', 1),
(862, 51, '16054', '2024-06-04', 'GUADARRAMA REYES LILIA', '', '', '0000-00-00', '7774484075', 'liligureyes@gmail.com', '', '', '', 1),
(863, 51, '21049', '2024-06-04', 'LOPEZ PEREZ EDUARDO', '', '', '0000-00-00', '7773122269', 'eduardo_lopezperez@hotmail.com', '', '', '', 1),
(864, 51, '16077', '2024-06-04', 'GONZALEZ SEDANO MAYRA', '', '', '0000-00-00', '7773234757', 'mayraglz@live.com.mx', '', '', '', 1),
(865, 51, '16133', '2024-06-04', 'RABADAN GONZALEZ NORA IVONNE', '', '', '0000-00-00', '7775236168', 'noraiv1407@gmail.com', '', '', '', 1),
(866, 51, '16264', '2024-06-04', 'GARCIA MARTINEZ MARICELA', '', '', '0000-00-00', '7775994413', 'clark_mary17@hotmail.com', '', '', '', 1),
(867, 51, '21159', '2024-06-04', 'LOPEZ CARDOSO ALBA NIDIA', '', '', '0000-00-00', '7771930508', 'albac6573@gmail.com', '', '', '', 1),
(868, 51, '22126', '2024-06-04', 'MENDEZ OVANDO MARISELA', '', '', '0000-00-00', '3 170212', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(869, 51, '23018', '2024-06-04', 'NAJERA MOJICA NELLY', '', '', '0000-00-00', '7776322068', 'nnajeramojica@gmail.com', '', '', '', 1),
(870, 51, '25070', '2024-06-04', 'OROZCO MORALES VIOLETA ARACELI', '', '', '0000-00-00', '7772201883', 'orozcovioleta52@gmail.com', '', '', '', 1),
(871, 51, '26108', '2024-06-04', 'PEREZ RAMIREZ DULCE MAGALY', '', '', '0000-00-00', '7773164764', 'dul_ma1981@hotmail.com', '', '', '', 1),
(872, 51, '26158', '2024-06-04', 'PEREZ ARCIGA ELIZABETH', '', '', '0000-00-00', '7776026005', 'liza_16_16@hotmail.com', '', '', '', 1),
(873, 51, '10186', '2024-06-04', 'ARAMBURU ARIZMENDI LAURA', '', '', '0000-00-00', '7772683814', 'lau_arizmendi@hotmail.com', '', '', '', 1),
(874, 52, '21057', '2024-06-04', 'LINARES VILLALBA JOEL ALEJANDRO', '', '', '0000-00-00', '', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(875, 52, '12283', '2024-06-04', 'CABRERA POPOCA RICARDO', '', '', '0000-00-00', '7775228617', 'r.cabrerapopoca@gmail.com', '', '', '', 1),
(876, 52, '32091', '2024-06-04', 'VALLADARES AGUILAR JOSE ARTURO', '', '', '0000-00-00', '01735 392 07 02', 'licvaja@hotmail.com', '', '', '', 1),
(877, 52, '10203', '2024-06-04', 'ALVARADO VALDEZ MAURA DOLORES', '', '', '0000-00-00', '7771360907', 'maud18av@gmail.com', '', '', '', 1),
(878, 52, '14057', '2024-06-04', 'ESTRELLA MAYEN BERENICE DINORE', '', '', '0000-00-00', '7775655357', 'lic_berenice_estrella@hotmail.com', '', '', '', 1),
(879, 52, '15143', '2024-06-04', 'FLORES RODRIGUEZ MAYRA', '', '', '0000-00-00', '7772147625', 'titaflores@hotmail.com', '', '', '', 1),
(880, 52, '22305', '2024-06-04', 'MESTAS MOLINA LOLTUN EMMANUEL', '', '', '0000-00-00', '7343426515', '', '', '', '', 1),
(881, 52, '23050', '2024-06-04', 'NAVA BAHENA CELIA MARIANA', '', '', '0000-00-00', '7771416564', 'marymaivan@gmai.com', '', '', '', 1),
(882, 52, '26117', '2024-06-04', 'PAZ HERNANDEZ JOSE MARIA', '', '', '0000-00-00', '7774467308', 'lic.paz1981@gmail.com', '', '', '', 1),
(883, 52, '22187', '2024-06-04', 'MENDOZA MARTINEZ EMMANUEL ALBERTO', '', '', '0000-00-00', '124 04 76', '0', '', '', '', 1),
(884, 52, '29203', '2024-06-04', 'SALAZAR BUCIO FLOR DE MONTSERRAT', '', '', '0000-00-00', '279 68 12', '0', '', '', '', 1),
(885, 52, '17023', '2024-06-04', 'HERNANDEZ BLAS PATRICIA', '', '', '0000-00-00', '7776220295', 'patricia07blas@gmail.com', '', '', '', 1),
(886, 52, '10145', '2024-06-04', 'AVILES GARCIA DAVID', '', '', '0000-00-00', '7772171057', 'xucati_2@hotmail.com', '', '', '', 1),
(887, 52, '10229', '2024-06-04', 'ALVAREZ RODRIGUEZ MAYRA YANIRA', '', '', '0000-00-00', '7775608539', 'mayrayaniraalvarezrodriguez@gmail.com', '', '', '', 1),
(888, 52, '11200', '2024-06-04', 'BARCENAS RAMIREZ ALONDRA', '', '', '0000-00-00', '7771043930', 'alondra-barcenaS@outlook.com', '', '', '', 1),
(889, 52, '12290', '2024-06-04', 'CUEVAS MONTOYA JONATHAN FERNANDO', '', '', '0000-00-00', '7774965593', 'jonafcuevas@gmail.com', '', '', '', 1),
(890, 52, '12324', '2024-06-04', 'CASTRO CARPINTERO MARVIN', '', '', '0000-00-00', '7343735756', '', '', '', '', 1),
(891, 52, '12328', '2024-06-04', 'COLLADO GONZALEZ ULISES ALEXIS', '', '', '0000-00-00', '7771320549', 'ulises_acg@hotmail.com', '', '', '', 1),
(892, 52, '13143', '2024-06-04', 'DIAZ CEDILLO MARITZA', '', '', '0000-00-00', '7772666346', 'verocedillo10@hotmail.com', '', '', '', 1),
(893, 52, '14041', '2024-06-04', 'ELIGIO ENCARNACION LETICIA JANET', '', '', '0000-00-00', '7773045021', 'letieligio@gmail.com', '', '', '', 1),
(894, 52, '15074', '2024-06-04', 'FLORES LINARES JESUS GABRIEL', '', '', '0000-00-00', '3 13 81 06', '', '', '', '', 1),
(895, 52, '15094', '2024-06-04', 'FABIAN ROLDAN ALEXIS', '', '', '0000-00-00', '315 70 96', '', '', '', '', 1),
(896, 52, '15157', '2024-06-04', 'FELICIANO ALLENDE EDUARDO', '', '', '0000-00-00', '7355938188', 'felix1011121314@gmail.com', '', '', '', 1),
(897, 52, '16274', '2024-06-04', 'GARCIA VEGA GUSTAVO EMMANUEL', '', '', '0000-00-00', '7772499993', 'gustavo_g09@hotmail.com', '', '', '', 1),
(898, 52, '19088', '2024-06-04', 'JIMENEZ SOTO DAYANA NICHOOL', '', '', '0000-00-00', '7775120705', 'dayananichooljimenezsoto@gmail.com', '', '', '', 1),
(899, 52, '22279', '2024-06-04', 'MELGAR FIGUEROA MARICELA', '', '', '0000-00-00', '7776060275', 'mari_melgarfigueroa@hotmail.com', '', '', '', 1),
(900, 52, '22381', '2024-06-04', 'MENDOZA BAHENA LISSET', '', '', '0000-00-00', '7775376000', 'liss_mb7@outlook.es', '', '', '', 1),
(901, 52, '22388', '2024-06-04', 'MORALES VARGAS JOSE IGNACIO', '', '', '0000-00-00', '7773445082', 'organico12345@gmail.com', '', '', '', 1),
(902, 52, '25114', '2024-06-04', 'OCAMPO ITURBE MARISELA', '', '', '0000-00-00', '', 'colette.mary@hotmail.com', '', '', '', 1),
(903, 52, '26086', '2024-06-04', 'POPOCA MEMIJE ADRIANA', '', '', '0000-00-00', '3 22 27 23', '', '', '', '', 1),
(904, 52, '28380', '2024-06-04', 'REYNA SANCHEZ MARIA TANIA', '', '', '0000-00-00', '7774133510', 'taan.reyna@gmail.com', '', '', '', 1),
(905, 52, '28403', '2024-06-04', 'RIVERA FUENTES HERMILA TONANTZIN', '', '', '0000-00-00', '5522947362', 'hermilarivera213@gmail.com', '', '', '', 1),
(906, 52, '29216', '2024-06-04', 'SALAZAR CHAVEZ OLIVIA ITZEL', '', '', '0000-00-00', '3617234', 'oliviaitz_204@hotmail.com', '', '', '', 1),
(907, 52, '29280', '2024-06-04', 'SALGADO DIAZ CARLOS ALBERTO', '', '', '0000-00-00', '7771358038', 'casd1509@gmail.com', '', '', '', 1),
(908, 52, '29289', '2024-06-04', 'SALAZAR OVANDO JAVIER ENRRIQUE', '', '', '0000-00-00', '7774604165', 'javier salazar@uaem.edu.mx', '', '', '', 1),
(909, 52, '31022', '2024-06-04', 'URIOSO HERNANDEZ JENNYFER', '', '', '0000-00-00', '2223573582', 'jen8_urioso@hotmail.com', '', '', '', 1),
(910, 52, '32215', '2024-06-04', 'VENTURA AVILA FRIDA DAMARIS', '', '', '0000-00-00', '7772591382', 'dammfva@gmail.com', '', '', '', 1),
(911, 52, '32224', '2024-06-04', 'VILLASANA MORENO ERICK MANUEL', '', '', '0000-00-00', '7771542013', 'ereckvillasana135@gmail.com', '', '', '', 1),
(912, 52, '13069', '2024-06-04', 'DE LA ROSA ARCOS INDIRA NOELIA', '', '', '0000-00-00', '319 19 36', 'indiradelarosa@yahoo.com', '', '', '', 1),
(913, 52, '10017', '2024-06-04', 'ACOSTA ORTEGA GABRIELA', '', '', '0000-00-00', '3 156528', '', '', '', '', 1),
(914, 52, '10127', '2024-06-04', 'AGUIRRE GALVAN PATRICIA SOLEDAD', '', '', '0000-00-00', '3 14 39 18', '', '', '', '', 1),
(915, 52, '10161', '2024-06-04', 'AGUILAR TOVAR NANCCY', '', '', '0000-00-00', '777 316 7815', '', '', '', '', 1),
(916, 52, '11146', '2024-06-04', 'BECERRA ARROYO ALEJANDRO', '', '', '0000-00-00', '045 734 100 0130', 'alebec@hotmail.com', '', '', '', 1),
(917, 52, '13058', '2024-06-04', 'DAMIAN AVILES LETICIA', '', '', '0000-00-00', '3 11 40 50', '', '', '', '', 1),
(918, 52, '16167', '2024-06-04', 'GONZALEZ LOPEZ ADOLFO', '', '', '0000-00-00', '3154002', '', '', '', '', 1),
(919, 52, '19049', '2024-06-04', 'JAIMES SALGADO GLORIA ANGELICA', '', '', '0000-00-00', '7771348160', 'jaimesjuridico@gmail.com', '', '', '', 1),
(920, 52, '26075', '2024-06-04', 'PONCE GONZALEZ DAVID RICARDO', '', '', '0000-00-00', '7774501528', 'davidponceg@hotmail.com', '', '', '', 1),
(921, 52, '29119', '2024-06-04', 'SANDOVAL LOME ISIDORO EDIE', '', '', '0000-00-00', '7772161851', 'iesandoval7@gmail.com', '', '', '', 1),
(922, 52, '30006', '2024-06-04', 'TERAN PEÑA ELVIA', '', '', '0000-00-00', '3 19 85 73', '', '', '', '', 1),
(923, 52, '30049', '2024-06-04', 'TREJO RESENDIZ ALEJANDRA', '', '', '0000-00-00', '7773154730', 'atr2703@yahoo.com', '', '', '', 1),
(924, 52, '32163', '2024-06-04', 'VILLANUEVA URIBE RAMON', '', '', '0000-00-00', '777 203 23 73', 'hirochi_240373@hotmail.com', '', '', '', 1),
(925, 52, '11152', '2024-06-04', 'BLANCARTE BAHENA STEFFANY', '', '', '0000-00-00', '7771816643', 'steffany.blancarte@gmail.com', '', '', '', 1),
(926, 52, '12205', '2024-06-04', 'CABRERA TORRES ERIKA PAOLA', '', '', '0000-00-00', '7772068045', 'erikapaolacabrera@gmail.com', '', '', '', 1),
(927, 52, '12294', '2024-06-04', 'CORREA ORTIZ CONSUELO ADRIANA', '', '', '0000-00-00', '7774965961', 'adycorreaortiz@gmail.com', '', '', '', 1),
(928, 52, '15058', '2024-06-04', 'FLORES APON MARITOÑA', '', '', '0000-00-00', '04473 678971', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(929, 52, '16240', '2024-06-04', 'GONZALEZ DELGADO PAOLA MELISSA', '', '', '0000-00-00', '777 1 85 6219', 'melpao@hotmail.com', '', '', '', 1),
(930, 52, '22110', '2024-06-04', 'MENDEZ ARIZMENDI YENI', '', '', '0000-00-00', '7775113481', 'yeni_ariz_20@hotmail.com', '', '', '', 1),
(931, 52, '22227', '2024-06-04', 'MOGOLLAN ESTRADA ANA ALEJANDRA', '', '', '0000-00-00', '7771907142', 'alemoe6@hotmail.com', '', '', '', 1),
(932, 52, '22257', '2024-06-04', 'MUÑOZ PIEDRA MARIELA', '', '', '0000-00-00', '7771511735', 'lic.mariela.munoz@gmail.com', '', '', '', 1),
(933, 52, '22287', '2024-06-04', 'MORALES ORTIZ ARLEM', '', '', '0000-00-00', '7351444486', 'amo900313@gmail.com', '', '', '', 1),
(934, 52, '28175', '2024-06-04', 'RAMOS TAPIA ANA MARIA', '', '', '0000-00-00', '', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(935, 52, '29168', '2024-06-04', 'SUBDIAS AGUILAR NATANAEL', '', '', '0000-00-00', '7352069556', 'subdiasnatan@gmail.com', '', '', '', 1),
(936, 52, '30087', '2024-06-04', 'TOLEDO CERVANTES PAOLA KORAI', '', '', '0000-00-00', '7774946140', 'payos_26@hotmail.com', '', '', '', 1),
(937, 53, '14013', '2024-06-04', 'ESTRADA PEREZ ANA LETICIA', '', '', '0000-00-00', '3 19 71 23', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(938, 53, '10180', '2024-06-04', 'ABARCA SALINAS CECILIA', '', '', '0000-00-00', '3 23 21 24', 'ceci_cobain@hotmail.com', '', '', '', 1),
(939, 53, '23028', '2024-06-04', 'NAVA AGUILAR MARIA DE LOURDES', '', '', '0000-00-00', '3 12 24 57', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(940, 53, '26144', '2024-06-04', 'PEREZ ESPINDOLA CARLOS DANIEL', '', '', '0000-00-00', '777 115 03 34', '0', '', '', '', 1),
(941, 53, '26171', '2024-06-04', 'PITA RIOS WENDY LAURA', '', '', '0000-00-00', '3119463', 'wenn.pita@gmail.com', '', '', '', 1),
(942, 54, '12126', '2024-06-04', 'CORONA LOPEZ MARITZA', '', '', '0000-00-00', '7771361700', 'mar_crown@hotmail.com', '', '', '', 1),
(943, 54, '22136', '2024-06-04', 'MARCHAN HERNANDEZ PATRICIA', '', '', '0000-00-00', '7771627037', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(944, 54, '28357', '2024-06-04', 'RIVERA JIMENEZ CYNTHIA CONSUELO', '', '', '0000-00-00', '7772724219', 'cyco8303@gmail.com', '', '', '', 1),
(945, 54, '31009', '2024-06-04', 'URIOSTEGUI ALVAREZ ROCIO', '', '', '0000-00-00', '7773191308', 'rocio.uriostegui@hotmail.com', '', '', '', 1),
(946, 54, '11201', '2024-06-04', 'BECERRA DIAZ ALEJANDRO', '', '', '0000-00-00', '7776150326', 'alejandrobecerradiaz@hotmail.com', '', '', '', 1),
(947, 54, '26138', '2024-06-04', 'PATIÑO GUADARRAMA CYNTHIA', '', '', '0000-00-00', '7774946042', 'cynthiaguadarrama2013@gmail.com', '', '', '', 1),
(948, 54, '31021', '2024-06-04', 'URBINA GONZALEZ DIANA LAURA', '', '', '0000-00-00', '7772601517', 'di-ani.96@hotmail.com', '', '', '', 1),
(949, 54, '12325', '2024-06-04', 'CANO DIAZ DIANA LAURA', '', '', '0000-00-00', '7772278679', 'canitodian@hotmail.com', '', '', '', 1),
(950, 54, '17126', '2024-06-04', 'HERRERA GORDILLO IDELMA', '', '', '0000-00-00', '7773523172', 'idelmaherrera05@gmail.com', '', '', '', 1),
(951, 54, '18024', '2024-06-04', 'IBARRA ARIAS KENIA DEYADIRA', '', '', '0000-00-00', '7773039884', 'kdia3@hotmail.com', '', '', '', 1),
(952, 54, '22314', '2024-06-04', 'MALPICA MEJIA ZITA NATALIA', '', '', '0000-00-00', '7772129115', 'zita.malpica@hotmail.com', '', '', '', 1),
(953, 54, '23058', '2024-06-04', 'NAJAR FRAUSTO NUIT', '', '', '0000-00-00', '3311647246', 'nuit.najar@icloud.com', '', '', '', 1),
(954, 54, '26201', '2024-06-04', 'PEREZ CAZARES ELSA', '', '', '0000-00-00', '7775403091', 'elsap9391@gmail.com', '', '', '', 1),
(955, 54, '28389', '2024-06-04', 'ROSALES PUEBLA ALEXIA MARIA', '', '', '0000-00-00', '', '', '', '', '', 1),
(956, 54, '29277', '2024-06-04', 'SERRANO TAPIA PILAR', '', '', '0000-00-00', '7771497572', 'pilis_t@hotmail.com', '', '', '', 1),
(957, 54, '12322', '2024-06-04', 'CALCANEO GARCIA HECTOR ALEJANDRO', '', '', '0000-00-00', '7771416668', 'hacalcaneo@hotmail.com', '', '', '', 1),
(958, 54, '10243', '2024-06-04', 'ARROYO CRUZ ENRIQUE', '', '', '0000-00-00', '7773100214', '', '', '', '', 1),
(959, 55, '10235', '2024-06-04', 'AZCARATE RAMIREZ ESMERALDA', '', '', '0000-00-00', '7772187053', 'sdekaposi@hotmail.com', '', '', '', 1),
(960, 55, '11026', '2024-06-04', 'BUSTINZAR GALINDO MARIA DEL CARMEN', '', '', '0000-00-00', '3 12 44 37', '0', '', '', '', 1),
(961, 55, '16169', '2024-06-04', 'GAMA VELARDE DAVID', '', '', '0000-00-00', '7771629555', 'picola1991@yahoo.com.mx', '', '', '', 1),
(962, 55, '10028', '2024-06-04', 'AGUAYO BAHEZA LILIANA', '', '', '0000-00-00', '7772322294', 'lilianaaguayob71@gmail.com', '', '', '', 1),
(963, 55, '10219', '2024-06-04', 'AQUINO DIAZ ANAHI', '', '', '0000-00-00', '2437636', 'aquinoanni@hotmail.com', '', '', '', 1),
(964, 55, '21182', '2024-06-04', 'LEYVA HERNANDEZ DULCE DAMARIS', '', '', '0000-00-00', '7771613186', 'DAMLEYVA@ICLOUD.COM', '', '', '', 1),
(965, 55, '30098', '2024-06-04', 'TAPIA ZAMORA EDZON NOE', '', '', '0000-00-00', '3 15 05 18', 'edzonzouza@hotmail.com', '', '', '', 1),
(966, 55, '10280', '2024-06-04', 'ARROYO CORONEL PATTY ESTEPHANIE', '', '', '0000-00-00', '7772186398', 'kimy_romi@hotmail.com', '', '', '', 1),
(967, 55, '11187', '2024-06-04', 'BALLESTEROS COTERO GERMAN ANDRES', '', '', '0000-00-00', '7773289047', 'germanballesterosabogado@gmail.com', '', '', '', 1),
(968, 55, '12326', '2024-06-04', 'CORONA BENITEZ EFRAIN', '', '', '0000-00-00', '7772171626', '', '', '', '', 1),
(969, 55, '13142', '2024-06-04', 'DOMINGUEZ GUZMAN SOFIA ALEJANDRA', '', '', '0000-00-00', '7772020696', 'sofiadomm14@gmail.com', '', '', '', 1),
(970, 55, '15160', '2024-06-04', 'FONSECA VELEZ MARITZA NAYELY', '', '', '0000-00-00', '7772551687', 'maritzafonseca0820@gmail.com', '', '', '', 1),
(971, 55, '16386', '2024-06-04', 'GARCIA URBINA DANIEL', '', '', '0000-00-00', '7777257927', '', '', '', '', 1),
(972, 55, '21190', '2024-06-04', 'LOPEZ RUBIO MARIA GUADALUPE', '', '', '0000-00-00', '7772100107', 'guadalupe290690@gmail.com', '', '', '', 1),
(973, 55, '21191', '2024-06-04', 'LARA CHAVEZ DIEGO EMILIO', '', '', '0000-00-00', '7773700485', '', '', '', '', 1),
(974, 55, '26202', '2024-06-04', 'PINO RODRIGUEZ PEDRO', '', '', '0000-00-00', '7775317475', 'pedro.pino.rodriguez@hotmail.com', '', '', '', 1),
(975, 55, '32178', '2024-06-04', 'VALLE ACOSTA RODRIGO EMILIANO', '', '', '0000-00-00', '7771682116', 'roemva.10@gmail.com', '', '', '', 1),
(976, 55, '15158', '2024-06-04', 'FLORES URIOSTEGUI ERIKA', '', '', '0000-00-00', '7773846343', 'akire.fu81@gmail.com', '', '', '', 1),
(977, 56, '28310', '2024-06-04', 'ROMAN RAMIREZ CALEB', '', '', '0000-00-00', '7773528004', 'kleb_xi@hotmail.com', '', '', '', 1),
(978, 56, '11070', '2024-06-04', 'BARRERA SANCHEZ TOMAS', '', '', '0000-00-00', '7775410307', 'barreratomas081@gmail.com', '', '', '', 1),
(979, 57, '15161', '2024-06-04', 'FRANCO MONTIEL JESSICA', '', '', '0000-00-00', '7773858024', '', '', '', '', 1),
(980, 57, '22359', '2024-06-04', 'MIÑON ORTEGA NORMA ANGELICA', '', '', '0000-00-00', '777 239 13 66', '', '', '', '', 1),
(981, 57, '29242', '2024-06-04', 'SANTIAGO GUZMAN RUBRIA ISIS', '', '', '0000-00-00', '3224955', 'rubria-santiagog@hotmail.com', '', '', '', 1),
(982, 57, '13152', '2024-06-04', 'DE JESUS SOTO GRISELDA', '', '', '0000-00-00', '7773211002', 'GRISELDAJESUS@HOTMAIL.COM', '', '', '', 1),
(983, 57, '13042', '2024-06-04', 'DE LA TEJERA HERNANDEZ EVANGELINA VERONICA', '', '', '0000-00-00', '3105159', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(984, 58, '15120', '2024-06-04', 'FONSECA RUIZ ROSA ISELA', '', '', '0000-00-00', '7775982414', 'iselafonsec@gmail.com.mx', '', '', '', 1),
(985, 58, '10260', '2024-06-04', 'AVILA MORALES KATYA', '', '', '0000-00-00', '3174724', 'katya.avila.morales@gmail.com', '', '', '', 1),
(986, 58, '11181', '2024-06-04', 'BENITEZ CORDERO NATALY CAROLINA', '', '', '0000-00-00', '7772601451', 'ncbenitezc@yahoo.com', '', '', '', 1),
(987, 58, '12270', '2024-06-04', 'CORDERO ALVAREZ GABRIELA', '', '', '0000-00-00', '7772447918', 'PSIC_GABCA@HOTMAI.COM', '', '', '', 1),
(988, 58, '15151', '2024-06-04', 'FIGUEROA LECHUGA MARIA ALEJANDRA', '', '', '0000-00-00', '7773281420', 'alefigue3007@gmail.com', '', '', '', 1),
(989, 58, '16331', '2024-06-04', 'GARAVITO GOROSTIETA BEATRIZ', '', '', '0000-00-00', '7773026140', 'beatrizgaravito@hotmail.com', '', '', '', 1),
(990, 58, '22325', '2024-06-04', 'MEZA GUZMAN CLAUDIA ARACELI', '', '', '0000-00-00', '7352069087', 'clau_meza@live.com.mx', '', '', '', 1),
(991, 58, '30105', '2024-06-04', 'TRETO BAHENA NANCY GEORGINA', '', '', '0000-00-00', '3209185', 'nancytreto_30@hotmail.com', '', '', '', 1),
(992, 58, '10215', '2024-06-04', 'AVILA RODRIGUEZ GUILLERMO', '', '', '0000-00-00', '7771857598', 'memo_neo@hotmail.com', '', '', '', 1),
(993, 58, '19066', '2024-06-04', 'JOYA ROSALES GABRIELA', '', '', '0000-00-00', '7343425158', 'gaby_joya93@hotmail.com', '', '', '', 1),
(994, 58, '22339', '2024-06-04', 'MONTIEL PEREZ KARINA', '', '', '0000-00-00', '7774934260', 'karinamontiel37785@gmail.com', '', '', '', 1),
(995, 58, '28364', '2024-06-04', 'ROSAS GUTIERREZ AIDE AMAIRANI', '', '', '0000-00-00', '7775311742', 'amairanirosas@gmail.com', '', '', '', 1),
(996, 58, '29264', '2024-06-04', 'SALDIVAR  BRUNO ROSALIA', '', '', '0000-00-00', '7343456364', 'liiasaldivar@gmail.com', '', '', '', 1),
(997, 58, '10268', '2024-06-04', 'ALEGRIA RODRIGUEZ ABIGAIL', '', '', '0000-00-00', '7771088814', 'abbirodriguezz4@gmail.com', '', '', '', 1),
(998, 58, '10277', '2024-06-04', 'ALCARAZ LOPEZ TANIA SACNITE', '', '', '0000-00-00', '7771035197', 'alcaraz.tani@gmail.com', '', '', '', 1),
(999, 58, '12279', '2024-06-04', 'CEBADA OCHOA MIRIAM', '', '', '0000-00-00', '7773676992', 'miriam_8c@hotmail.com', '', '', '', 1),
(1000, 58, '12300', '2024-06-04', 'CONTRERAS  PAREDES LUCINA', '', '', '0000-00-00', '7774945138', 'rezarodriguezluciana@gmail.com', '', '', '', 1),
(1001, 58, '12305', '2024-06-04', 'CUEVAS CABRERA BRENDA', '', '', '0000-00-00', '7774424214', 'brendacuevas421@gmail.com', '', '', '', 1),
(1002, 58, '16369', '2024-06-04', 'GONZALEZ BONILLA DIANA POLLETH', '', '', '0000-00-00', '7771413449', 'dianabonilla2306@gmail.com', '', '', '', 1),
(1003, 58, '19070', '2024-06-04', 'JIMENEZ LABORA VELASCO SYLVIA REGINA', '', '', '0000-00-00', '3157443', 'regi_bubblegum@hotmail.com', '', '', '', 1),
(1004, 58, '26123', '2024-06-04', 'PRADO SALGADO AMADA', '', '', '0000-00-00', '7772244907', 'amada.prado.salgado@gmail.com', '', '', '', 1),
(1005, 58, '28285', '2024-06-04', 'ROSAS VELASCO ANA LAURA', '', '', '0000-00-00', '555544755951', 'hannyrosasdjp@gmail.com', '', '', '', 1),
(1006, 58, '29292', '2024-06-04', 'SALAZAR DIAZ DIANA ESTEFANIA', '', '', '0000-00-00', '7773749510', 'diansalazdiaz@gmail.com', '', '', '', 1),
(1007, 58, '32088', '2024-06-04', 'VALLE RAMIREZ ROBERTO', '', '', '0000-00-00', '7772235231', 'robertovaller1203@gmail.com', '', '', '', 1),
(1008, 58, '26051', '2024-06-04', 'PAREDES NOYOLA BERTHA', '', '', '0000-00-00', '7771794309', 'bertha.pn.de@gmail.com', '', '', '', 1),
(1009, 59, '28136', '2024-06-04', 'RODRIGUEZ APAC DANIEL ADAN', '', '', '0000-00-00', '7773285224', 'danielrodriguezapac@hotmail.com', '', '', '', 1),
(1010, 59, '16239', '2024-06-04', 'GONZALEZ GOMEZ JULIO CESAR', '', '', '0000-00-00', '7772858200', 'jc_glez2310@hotmail.com', '', '', '', 1),
(1011, 59, '29209', '2024-06-04', 'SANCHEZ GUERRERO JESUS ISMAEL', '', '', '0000-00-00', '3612062', 'jismael-sanchezg@hotmail.com', '', '', '', 1),
(1012, 59, '30071', '2024-06-04', 'TOLEDO DELGADO SAGRARIO YOLANDA', '', '', '0000-00-00', '7341507731', 'sagrarioyolandatoledo@gmail.com', '', '', '', 1),
(1013, 59, '29027', '2024-06-04', 'SANCHEZ ALVEAR ALMA ROSA', '', '', '0000-00-00', '7772490874', 'alnasa101272@gnail.com', '', '', '', 1),
(1014, 59, '10029', '2024-06-04', 'AGUILAR TOLEDO MIRTA GISELA', '', '', '0000-00-00', '7774305449', 'mirtaaguilar_75@hotmail.com', '', '', '', 1),
(1015, 59, '14010', '2024-06-04', 'ESTEVA CASTILLO LETICIA GUADALUPE', '', '', '0000-00-00', '7772189936', 'leticiauray@gmail.com', '', '', '', 1),
(1016, 59, '29036', '2024-06-04', 'SALCEDO GARCIA JULIA', '', '', '0000-00-00', '7772064110', 'juliav_s@hotmail.com', '', '', '', 1),
(1017, 59, '29049', '2024-06-04', 'SAAVEDRA PEREZ TERESA DE JESUS', '', '', '0000-00-00', '7341287756', 'teresaavedra61@gmail.com', '', '', '', 1),
(1018, 59, '12220', '2024-06-04', 'CORIA TELLEZ MARGARITA', '', '', '0000-00-00', '7771254036', 'margarita27coria@outlook.com', '', '', '', 1),
(1019, 59, '12247', '2024-06-04', 'CALDERON OCAMPO PALOMA NAYELY', '', '', '0000-00-00', '7772878409', 'palomissabinera@gmail.com', '', '', '', 1),
(1020, 59, '17048', '2024-06-04', 'HERNANDEZ BUSTOS BLANCA VERENICE', '', '', '0000-00-00', '7345241782', 'blanc_h_dez@hotmail.com', '', '', '', 1),
(1021, 60, '19036', '2024-06-04', 'JIMENEZ AQUINO JUAN MANUEL', '', '', '0000-00-00', '7341087896', 'jmja08@hotmail.com', '', '', '', 1),
(1022, 60, '10261', '2024-06-04', 'ALTAMIRANO ROMAN DAIRA GUADALUPE', '', '', '0000-00-00', '7341280117', 'dairaaltamiranor@hotmail.con', '', '', '', 1),
(1023, 60, '11120', '2024-06-04', 'BAHENA OCAMPO CECILIA', '', '', '0000-00-00', '7341150642', 'cecy_bahena@hotmail.com', '', '', '', 1),
(1024, 60, '11135', '2024-06-04', 'BARON LOPEZ MAURICIO', '', '', '0000-00-00', '7341645699', 'mblx4@hotmail.com', '', '', '', 1),
(1025, 60, '22100', '2024-06-04', 'MENDOZA SALGADO CLAUDIA', '', '', '0000-00-00', '7273388314', 'Claujoanna14@gmail.com', '', '', '', 1),
(1026, 60, '29028', '2024-06-04', 'SAMANO GALINDO ROSA ISELA', '', '', '0000-00-00', '7772092767', 'iselmari@hotmail.com', '', '', '', 1),
(1027, 60, '11068', '2024-06-04', 'BENITEZ OCAMPO MONICA', '', '', '0000-00-00', '7341041952', 'monabenitez76@gmail.com', '', '', '', 1),
(1028, 60, '28098', '2024-06-04', 'REZA PIZAR YOLANDA', '', '', '0000-00-00', '01 734 34 5 5846', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1029, 60, '22130', '2024-06-04', 'MARTINEZ AVELAR ALMA DELIA', '', '', '0000-00-00', '7341160162', 'almamartinezave@hotmail.com', '', '', '', 1),
(1030, 60, '10284', '2024-06-04', 'ANTUNEZ ORTIZ PEDRO ALEJANDRO', '', '', '0000-00-00', '7341408078', '', '', '', '', 1),
(1031, 60, '12229', '2024-06-04', 'CORONEL CASTAÑEDA ANGEL', '', '', '0000-00-00', '7341044452', 'ancor1210@gmail.com', '', '', '', 1),
(1032, 60, '12317', '2024-06-04', 'CASTREJON VILLA MARIANELLA', '', '', '0000-00-00', '7774688307', 'lic.mcastrejon@hotmail.com', '', '', '', 1),
(1033, 60, '16194', '2024-06-04', 'GONZALEZ CASTRO LORENA LETICIA', '', '', '0000-00-00', '7771037538', 'lorcer2011@gmail.com', '', '', '', 1),
(1034, 60, '19084', '2024-06-04', 'JAIME JAIME SIGLINDA ELIZABETH', '', '', '0000-00-00', '7341002431', 'siglinda98@gmail.com', '', '', '', 1),
(1035, 60, '21150', '2024-06-04', 'LABRA LOPEZ GERARDO', '', '', '0000-00-00', '7341275606', 'labragerardo90@gmail.com', '', '', '', 1),
(1036, 60, '23024', '2024-06-04', 'ÑAÑEZ ZAVALETA GABRIEL ISRAEL', '', '', '0000-00-00', '01734 34 23853', 'sebas.1984@hotmail.com', '', '', '', 1),
(1037, 60, '28286', '2024-06-04', 'RIVERA CUEVAS LUIS DANIEL', '', '', '0000-00-00', '7341002727', 'lic.rivera.cuevas@hotmail.com', '', '', '', 1),
(1038, 60, '29251', '2024-06-04', 'SANCHEZ ROSAS ELIZABETH', '', '', '0000-00-00', '7776076110', 'sz_rosas15@outlook.com', '', '', '', 1),
(1039, 60, '32216', '2024-06-04', 'VELAZQUEZ LUNA YESENIA', '', '', '0000-00-00', '', '', '', '', '', 1),
(1040, 61, '15064', '2024-06-04', 'FRIAS RODRIGUEZ PATRICIA', '', '', '0000-00-00', '', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1041, 61, '16207', '2024-06-04', 'GARCIA OCAMPO LINDA XOCHITL', '', '', '0000-00-00', '5 16 10 84', 'linda_garcia_23@hotmail.com', '', '', '', 1),
(1042, 61, '23031', '2024-06-04', 'NOLASCO PEÑA HECTOR', '', '', '0000-00-00', '7771951613', 'hector_nolasco59@hotmail.com', '', '', '', 1),
(1043, 61, '28100', '2024-06-04', 'RODRIGUEZ ALVARADO PEDRO', '', '', '0000-00-00', '7776234148', 'pedro.ra0674@gmail.com', '', '', '', 1),
(1044, 61, '29142', '2024-06-04', 'SALGADO BALDERAS MARCO ANTONIO', '', '', '0000-00-00', '7772591290', 'lic.marcoantoniosalgado@outlook.es', '', '', '', 1),
(1045, 61, '32066', '2024-06-04', 'VERA LUGO EUNICE', '', '', '0000-00-00', '7771318633', 'verae3825@hotmail.com', '', '', '', 1),
(1046, 61, '11043', '2024-06-04', 'BLANCAS CASTILLO EUDOCIO', '', '', '0000-00-00', '3 20 56 53', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1047, 61, '21036', '2024-06-04', 'LOPEZ RIQUELME DAYELI', '', '', '0000-00-00', '7341555539', 'lopezdayeli55@gmail.com', '', '', '', 1),
(1048, 61, '10121', '2024-06-04', 'AMADOR HERRERA ARACELI', '', '', '0000-00-00', '7771810314', 'ara_chel1179@Hotmail.com', '', '', '', 1),
(1049, 61, '11039', '2024-06-04', 'BAHENA AVILES MARIA DEL CARMEN', '', '', '0000-00-00', '7341424812', 'mariadelcarmenbahenaaviles@gmail.com', '', '', '', 1),
(1050, 61, '25026', '2024-06-04', 'OCAMPO ARROYO JULIETA', '', '', '0000-00-00', '01751 396 04 02', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1051, 61, '10210', '2024-06-04', 'ARIZMENDI LEONIDES JULIO CESAR', '', '', '0000-00-00', '7775133937', 'julio_chelito@live.com.mx', '', '', '', 1),
(1052, 61, '13129', '2024-06-04', 'DE JESUS CHAVEZ MIGUEL ANGEL', '', '', '0000-00-00', '7771343667', 'dejesuschavez10@gmail.com', '', '', '', 1),
(1053, 61, '22228', '2024-06-04', 'MUÑOZ MONTOYA JUAN ALBERTO', '', '', '0000-00-00', '01751 39 1 70 10', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1054, 61, '22393', '2024-06-04', 'MARTINEZ JAIMES GRISELDA', '', '', '0000-00-00', '', 'lupita_gris12@hotmail.com', '', '', '', 1),
(1055, 61, '28325', '2024-06-04', 'ROSAS LOPEZ ANAYELI', '', '', '0000-00-00', '7775002095', 'pink_yela@hotmail.com', '', '', '', 1),
(1056, 61, '10156', '2024-06-04', 'ALVAREZ HERNANDEZ ANA SOFIA', '', '', '0000-00-00', '7774527664', 'ana_alvarez2010@hotmail.com', '', '', '', 1),
(1057, 62, '15005', '2024-06-04', 'FLORES LEON ELDA', '', '', '0000-00-00', '3 85 40 10', 'CHEQUE', '', '', '', 1),
(1058, 62, '17138', '2024-06-04', 'HURTADO DELGADO FRANCISCO', '', '', '0000-00-00', '7773769931', 'franciscohurtado@yahoo.com', '', '', '', 1),
(1059, 62, '16324', '2024-06-04', 'GONZALEZ DOMINGUEZ SALVADOR', '', '', '0000-00-00', '7773288313', 'salcadorgd@gmail.com', '', '', '', 1),
(1060, 62, '26031', '2024-06-04', 'PEREZ CALDERON BENONI CRISTINA', '', '', '0000-00-00', '7772177816', 'benonip2305@hotmail.com', '', '', '', 1),
(1061, 62, '32071', '2024-06-04', 'VARGAS GONZALEZ DAVID', '', '', '0000-00-00', '7775155686', 'vargasglezdavid@live.com.mx', '', '', '', 1),
(1062, 62, '10265', '2024-06-04', 'ADAN MONJE FERNANDO', '', '', '0000-00-00', '7773028635', 'francisco_17@outlook.cl', '', '', '', 1),
(1063, 62, '11054', '2024-06-04', 'BARRAGAN CISNEROS SONIA', '', '', '0000-00-00', '7351476467', 'maxim1504@hotmail.com', '', '', '', 1),
(1064, 62, '16191', '2024-06-04', 'GARCIA FLORES ARMANDO', '', '', '0000-00-00', '7772090782', 'varsovia2019@icloud.com', '', '', '', 1),
(1065, 62, '17106', '2024-06-04', 'HERNANDEZ GARCIA ALEJANDRA', '', '', '0000-00-00', '7772678582', 'alexa1785@hotmail.com', '', '', '', 1),
(1066, 62, '19072', '2024-06-04', 'JUAREZ MENDOZA GUSTAVO', '', '', '0000-00-00', '7341023876', 'consulta_juridica1@yahoo.com.mx', '', '', '', 1),
(1067, 62, '21158', '2024-06-04', 'LEYVA JIMENEZ JULIO CESAR', '', '', '0000-00-00', '', '', '', '', '', 1),
(1068, 62, '25066', '2024-06-04', 'ORTEGA MONDRAGON ERIKA', '', '', '0000-00-00', '7771542887', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1069, 62, '25088', '2024-06-04', 'ORTIZ ORTIZ LILIANA', '', '', '0000-00-00', '01734 3420 107', 'oro_liliana@yahoo.com.mx', '', '', '', 1),
(1070, 62, '28240', '2024-06-04', 'ROMERO ROSAS ROSA MARIA', '', '', '0000-00-00', '3 20 54 29', 'lic_rromerorosas@yahoo.com.mx', '', '', '', 1),
(1071, 62, '16285', '2024-06-04', 'GARCIA SALGADO GIOVANNI', '', '', '0000-00-00', '3190138', 'grovasgarera@hotmail.com', '', '', '', 1),
(1072, 62, '28294', '2024-06-04', 'RUIZ CASTAÑEDA SILVIA', '', '', '0000-00-00', '7771626299', 'chivis_2040@hotmail.com', '', '', '', 1),
(1073, 62, '11025', '2024-06-04', 'BAHENA SALGADO NANCY', '', '', '0000-00-00', '7771112850', 'nancybahena2007@hotmail.com', '', '', '', 1),
(1074, 62, '11051', '2024-06-04', 'BUSTOS CALDERON NADIA GUADALUPE', '', '', '0000-00-00', '7771284388', 'nadiabustos2007@hotmail.com', '', '', '', 1),
(1075, 62, '22394', '2024-06-04', 'MAGAÑA HERNANDEZ ANA M.', '', '', '0000-00-00', '7772209789', 'ana4chicos@hotmail.com', '', '', '', 1),
(1076, 62, '29033', '2024-06-04', 'SALGADO MORENO MARIA LUISA', '', '', '0000-00-00', '7775510134', 'luisamor75@yahoo.com.mx', '', '', '', 1),
(1077, 62, '29222', '2024-06-04', 'SOLAR MIRANDA JOSE VICENTE', '', '', '0000-00-00', '5529500853', 'vicentesol@gmail.com', '', '', '', 1),
(1078, 62, '32209', '2024-06-04', 'VELASCO PEREZ LETICIA', '', '', '0000-00-00', '7775106367', 'velascoperezlety@gemail.com', '', '', '', 1),
(1079, 62, '26180', '2024-06-04', 'PAREDES GONZALEZ PAULA', '', '', '0000-00-00', '7771125735', 'pagp72@hotmail.com', '', '', '', 1),
(1080, 62, '12327', '2024-06-04', 'CHAVEZ MARTINEZ MADAI', '', '', '0000-00-00', '7776123514', 'mcm_2693@hotmail.com', '', '', '', 1),
(1081, 62, '12331', '2024-06-04', 'CAMACHO VALLEJO RUBEN MOISES', '', '', '0000-00-00', '7771351912', 'rubenlegolas5@hotmail.com', '', '', '', 1),
(1082, 62, '13117', '2024-06-04', 'DIAZ CASTAÑEDA JOSE LUIS', '', '', '0000-00-00', '3227039', 'jluisdiazc@hotmail.com', '', '', '', 1),
(1083, 62, '16348', '2024-06-04', 'GUTIERREZ RICO OSMAR', '', '', '0000-00-00', '7342082805', 'osmargtzrico@gmail.com', '', '', '', 1),
(1084, 62, '16350', '2024-06-04', 'GONZALEZ JIMENEZ JOSE DAVID', '', '', '0000-00-00', '7771119904', 'josdagoji@gmail.com', '', '', '', 1),
(1085, 62, '18019', '2024-06-04', 'ITURBE PEREZ LILIANA SOCORRO', '', '', '0000-00-00', '7774485652', 'lui_sni@hotmail.com', '', '', '', 1);
INSERT INTO `student` (`student_id`, `id_assignment`, `no_empleado`, `register_date`, `fname`, `image`, `age`, `dob`, `contact`, `email`, `address`, `city`, `country`, `enabled`) VALUES
(1086, 62, '21181', '2024-06-04', 'LAGUNAS VILLEGAS DISRAELY SAHID', '', '', '0000-00-00', '7772493953', 'lilzahid27@gmail.com', '', '', '', 1),
(1087, 62, '22326', '2024-06-04', 'MORENO APAEZ CLAUDIA', '', '', '0000-00-00', '527341156966', 'clauma2693@gmail.com', '', '', '', 1),
(1088, 62, '22386', '2024-06-04', 'MARTINEZ GUTIERREZ ISABELLA', '', '', '0000-00-00', '7774776353', 'isabellamg_8@hotmail.com', '', '', '', 1),
(1089, 62, '25104', '2024-06-04', 'ORTIZ MOLINA TANYA PAOLA', '', '', '0000-00-00', '7341610216', 'tpom_14@hotmail.com', '', '', '', 1),
(1090, 62, '26162', '2024-06-04', 'PORTILLO ALONSO ROSA ELENA', '', '', '0000-00-00', '7771491488', 'elenaportillo2310@gmail.com', '', '', '', 1),
(1091, 62, '28311', '2024-06-04', 'RUEDA CORONEL BLANCA ESTELA', '', '', '0000-00-00', '7772334549', 'estela.rueda@hotmail.com', '', '', '', 1),
(1092, 63, '28219', '2024-06-04', 'ROGEL OLVERA ANA GABRIELA', '', '', '0000-00-00', '7771112246', 'gaby19cue@hotmail.com', '', '', '', 1),
(1093, 63, '10167', '2024-06-04', 'ALVAREZ ACEVEDO MARIA DEL ROSARIO', '', '', '0000-00-00', '01 751 3 44 3148', 'rosario190014@hotmail.com', '', '', '', 1),
(1094, 63, '12188', '2024-06-04', 'CAMPOS FLORES MARICRUZ', '', '', '0000-00-00', '3216237', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1095, 63, '12211', '2024-06-04', 'CORONEL FLORES ANDREA', '', '', '0000-00-00', '01734 3423500', 'coran_85@hotmail.com', '', '', '', 1),
(1096, 63, '16187', '2024-06-04', 'GOMEZ CARDENAS OSCAR ISRAEL', '', '', '0000-00-00', '7341185029', 'oigc260678@hotmail.com', '', '', '', 1),
(1097, 63, '26071', '2024-06-04', 'PAREDES NOGUERON VICTORIA', '', '', '0000-00-00', '01734 34 315 54', 'generation85901402@hotmail.com', '', '', '', 1),
(1098, 63, '12175', '2024-06-04', 'CASTILLO SANCHEZ YAZMIN', '', '', '0000-00-00', '7774928160', 'ycs024@hotmail.com', '', '', '', 1),
(1099, 63, '13090', '2024-06-04', 'DIAZ SANCHEZ LADY LAURA', '', '', '0000-00-00', '7341535838', 'lady.diazsanchez81@gmail.com', '', '', '', 1),
(1100, 63, '28307', '2024-06-04', 'REYES GALVAN DIANA CLAUDIA', '', '', '0000-00-00', '7343478744', 'claudidi525@hotmail.com', '', '', '', 1),
(1101, 63, '25031', '2024-06-04', 'OCAMPO RIVERA PATRICIA', '', '', '0000-00-00', '5654705', 'paty.ocampoazul@gmail.com', '', '', '', 1),
(1102, 63, '28036', '2024-06-04', 'RUIZ VARGAS AIDA', '', '', '0000-00-00', '7343493438', 'rodo.pelus@gmail.com', '', '', '', 1),
(1103, 63, '29051', '2024-06-04', 'SANCHEZ CORTINA KARINA', '', '', '0000-00-00', '343 51 57', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1104, 63, '12123', '2024-06-04', 'CARRILLO FLORES CONCEPCION', '', '', '0000-00-00', '7771811558', 'concepcion.carrillo@gmail.com', '', '', '', 1),
(1105, 63, '22211', '2024-06-04', 'MANCERA CABRERA ADRIANA', '', '', '0000-00-00', '7773455716', 'adryymancera_92@hotmail.com', '', '', '', 1),
(1106, 63, '30059', '2024-06-04', 'TORRALVA GARCIA NANCI', '', '', '0000-00-00', '7341276522', 'nancitorralva@gmail.com', '', '', '', 1),
(1107, 63, '13077', '2024-06-04', 'DOMINGUEZ MARTINEZ MARIA DE LOS ANGELES', '', '', '0000-00-00', '734 342 83 49', 'angi_doma@hotmail.com', '', '', '', 1),
(1108, 63, '13096', '2024-06-04', 'DIAZ SALGADO NANCY', '', '', '0000-00-00', '7341015455', 'nancydiazsalgado@hotmail.com', '', '', '', 1),
(1109, 63, '13140', '2024-06-04', 'DURAN SALGADO FRANCISCO JAVIER', '', '', '0000-00-00', '7771573337', 'neo_wttm@hotmail.com', '', '', '', 1),
(1110, 63, '15154', '2024-06-04', 'FLORES MARTINEZ SAUL RICARDO', '', '', '0000-00-00', '7775606861', 's_flores96@outlook.es', '', '', '', 1),
(1111, 63, '16158', '2024-06-04', 'GUZMAN MELCHOR FABIOLA', '', '', '0000-00-00', '734 34 3 18 92', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1112, 63, '16209', '2024-06-04', 'GUZMAN SANTIAGO ARIADNA RAQUEL', '', '', '0000-00-00', '7341056242', 'roman-ay@hotmail.com', '', '', '', 1),
(1113, 63, '19089', '2024-06-04', 'JUAREZ GARCIA EDNA EVELIN', '', '', '0000-00-00', '7773679118', 'edna.juarez2@hotmail.com', '', '', '', 1),
(1114, 63, '31012', '2024-06-04', 'URIBE MORENO ROCIO', '', '', '0000-00-00', '01734 342 58 71', 'coqueta_@hotmail.com', '', '', '', 1),
(1115, 64, '16023', '2024-06-04', 'GALVAN SALGADO LAURA', '', '', '0000-00-00', '1 02 22 39', 'galvan.lau@hotmail.com', '', '', '', 1),
(1116, 64, '10135', '2024-06-04', 'ABARCA GONZALEZ JUANA CATALINA', '', '', '0000-00-00', '7341089711', 'catyabarca@hotmail.com', '', '', '', 1),
(1117, 64, '12143', '2024-06-04', 'CASTILLO SOLIS SURISHADAY', '', '', '0000-00-00', '7341693721', 'lic.shaday@gmail.com', '', '', '', 1),
(1118, 64, '13083', '2024-06-04', 'DOMINGUEZ MARTINEZ PEDRO', '', '', '0000-00-00', '7341291505', 'aguila_mayor1@hotmail.com', '', '', '', 1),
(1119, 64, '22097', '2024-06-04', 'MORENO MELCHOR FABIOLA', '', '', '0000-00-00', '7341404646', 'fabiolamorenomelchor26@gmail.com', '', '', '', 1),
(1120, 64, '29147', '2024-06-04', 'SALGADO ROMERO MANUEL ABAD', '', '', '0000-00-00', '7341402817', 'abadsalgado@hotmail.com', '', '', '', 1),
(1121, 64, '22179', '2024-06-04', 'MONTOYA ORTIZ TANIA', '', '', '0000-00-00', '7772496075', 'jess22092@gmail.com', '', '', '', 1),
(1122, 64, '28271', '2024-06-04', 'REYES VALLADARES PATRICIA', '', '', '0000-00-00', '7771846779', 'patricia.reyes.valladares2020@gmail.com', '', '', '', 1),
(1123, 64, '17025', '2024-06-04', 'HERNANDEZ BARON CARINA', '', '', '0000-00-00', '7773515903', 'caheba_71@outlook.com', '', '', '', 1),
(1124, 64, '14020', '2024-06-04', 'EUSEBIO CARDOSO NELYDA', '', '', '0000-00-00', '7341142171', 'adylen.78@hotmail.com', '', '', '', 1),
(1125, 64, '25011', '2024-06-04', 'OCAMPO OCAMPO FABIOLA', '', '', '0000-00-00', '7341139005', 'foo021065@hotmail.com', '', '', '', 1),
(1126, 64, '25021', '2024-06-04', 'ORTIZ MENDIETA NORMA', '', '', '0000-00-00', '7341298197', 'ortiz_1968@hotmail.com', '', '', '', 1),
(1127, 64, '28082', '2024-06-04', 'RODRIGUEZ PESCADOR ALMA ROSA', '', '', '0000-00-00', '7341017078', 'almarosaro07@gmail.com', '', '', '', 1),
(1128, 64, '12121', '2024-06-04', 'CASTILLO SANCHEZ ROSA ISELA', '', '', '0000-00-00', '7776056062', 'rosaiselacastillo513@gmail.com', '', '', '', 1),
(1129, 64, '15080', '2024-06-04', 'FLORES ROSALES MARIA GEORGINA', '', '', '0000-00-00', '01734 3455500', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1130, 64, '10178', '2024-06-04', 'ASTUDILLO PUGA CESAR', '', '', '0000-00-00', '7341295082', 'cesarircuspuga@gmail.com', '', '', '', 1),
(1131, 64, '12158', '2024-06-04', 'CASAREZ CARDOZO ERIKA', '', '', '0000-00-00', '7341181063', 'erikitacarjua2605@gmail.com', '', '', '', 1),
(1132, 64, '13107', '2024-06-04', 'DEL CORRAL IÑIGUEZ MARIA INDIRA MANELICK', '', '', '0000-00-00', '7775636257', 'indima07@gmail.com', '', '', '', 1),
(1133, 64, '16297', '2024-06-04', 'GARCIA ROMERO JENNY', '', '', '0000-00-00', '7341115579', 'jengarome@hotmail.com', '', '', '', 1),
(1134, 64, '23038', '2024-06-04', 'NIEVA LOPEZ ROSA ELENA', '', '', '0000-00-00', '7775004389', 'ro-use-28@hotmail.com', '', '', '', 1),
(1135, 64, '25122', '2024-06-04', 'ORDOÑEZ TAPIA EDWIN JASSEN', '', '', '0000-00-00', '7351254619', 'hit-boy@hotmail.com', '', '', '', 1),
(1136, 64, '28055', '2024-06-04', 'RIQUELME NOGUERON ERIKA', '', '', '0000-00-00', '7774324788', 'ery7_77@hotmail.com', '', '', '', 1),
(1137, 64, '29181', '2024-06-04', 'SANCHEZ MEJIA MARCO ANTONIO', '', '', '0000-00-00', '7341001980', 'antonmejia200986@gmail.com', '', '', '', 1),
(1138, 64, '32116', '2024-06-04', 'VENTURA AQUINO MIRIAM NAYELLI', '', '', '0000-00-00', '7772067515', 'mventuraaquino@gmail.com', '', '', '', 1),
(1139, 65, '16134', '2024-06-04', 'GARCIA PERALTA YOLOXOCHITL', '', '', '0000-00-00', '7772200056', 'lic.yoloxochitl.garcia@live.com.mx', '', '', '', 1),
(1140, 65, '19012', '2024-06-04', 'JAIME JIMENEZ ERENDIRA', '', '', '0000-00-00', '0447773 07 27 33', '0', '', '', '', 1),
(1141, 65, '12166', '2024-06-04', 'CORONEL FLORES MARIA GABRIELA', '', '', '0000-00-00', '734 342 3500', 'gaby_coronel@hotmail.com', '', '', '', 1),
(1142, 65, '17088', '2024-06-04', 'HONORATO MARTINEZ ABSALOM', '', '', '0000-00-00', '7775322507', 'absalon806@gmail.com', '', '', '', 1),
(1143, 65, '19056', '2024-06-04', 'JIMENEZ AQUINO MARIA DEL CARMEN', '', '', '0000-00-00', '7341251909', 'madeca_234@hotmail.com', '', '', '', 1),
(1144, 65, '22112', '2024-06-04', 'MEJIA DOMINGUEZ ERICKA', '', '', '0000-00-00', '7771632228', 'emdmejiad@gmail.com', '', '', '', 1),
(1145, 65, '25071', '2024-06-04', 'ORTEGA GARCIA MARIO JOSE', '', '', '0000-00-00', '01734 3423396', '', '', '', '', 1),
(1146, 65, '15034', '2024-06-04', 'FLORES SOLIS MA. DEL ROSARIO', '', '', '0000-00-00', '7771919896', 'floresmadelros74@gmail.com', '', '', '', 1),
(1147, 65, '32193', '2024-06-04', 'VAZQUEZ MARTINEZ AXEL HIRAM', '', '', '0000-00-00', '7341128496', 'axhi_cb@hotmail.com', '', '', '', 1),
(1148, 65, '12058', '2024-06-04', 'CASTILLO CUEVAS DOLORES', '', '', '0000-00-00', '01734 34 3 3542', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1149, 65, '21020', '2024-06-04', 'LOPEZ VALLADARES CAROLINA', '', '', '0000-00-00', '34 2 69 84', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1150, 65, '28125', '2024-06-04', 'RUIZ VARGAS MARTHA OLIVIA', '', '', '0000-00-00', '7341120671', 'kalamar665@gmail.com', '', '', '', 1),
(1151, 65, '10269', '2024-06-04', 'AGUILAR LEONARDO CARLOS ALBERTO', '', '', '0000-00-00', '7773025737', 'carlos_villevalo@hotmail.com', '', '', '', 1),
(1152, 65, '11186', '2024-06-04', 'BANDA MONTIEL JOSE SILVINO', '', '', '0000-00-00', '7341165090', 'josebandamontiel@hotmail.com', '', '', '', 1),
(1153, 65, '12152', '2024-06-04', 'CAMPOS VALVERDE YAHIR GETZAYN', '', '', '0000-00-00', '7341011825', 'yahirgetzayn@hotmail.com', '', '', '', 1),
(1154, 65, '15092', '2024-06-04', 'FUENTES DELGADO VANESSA', '', '', '0000-00-00', '7341104886', 'vafude_22@hotmail.com', '', '', '', 1),
(1155, 65, '16266', '2024-06-04', 'GUERRERO RAMIREZ GIOVANNI PAOLO', '', '', '0000-00-00', '7341148718', 'ggramirez1984@gmail.com', '', '', '', 1),
(1156, 65, '16327', '2024-06-04', 'GUZMAN ESCOBAR GUADALUPE', '', '', '0000-00-00', '7341326059', 'lup_1290@hotmail.com', '', '', '', 1),
(1157, 65, '17100', '2024-06-04', 'HERNANDEZ HERNANDEZ MARCO ANTONIO', '', '', '0000-00-00', '7773471653', 'heracles@live.com.mx', '', '', '', 1),
(1158, 65, '22376', '2024-06-04', 'MONTOYA CARPINTERO LUIS ADRIAN', '', '', '0000-00-00', '7772337517', 'luisadrianmontoya01@gmail.com', '', '', '', 1),
(1159, 65, '28214', '2024-06-04', 'REYNA PINEDA LUIS', '', '', '0000-00-00', '2467986', 'luisreynapineda@hotmail.com', '', '', '', 1),
(1160, 65, '29143', '2024-06-04', 'SANCHEZ MEJIA JUAN', '', '', '0000-00-00', '7341603393', 'juanitosanchez160482@gmail.com', '', '', '', 1),
(1161, 65, '30102', '2024-06-04', 'TREJO QUINTERO EVERARDO', '', '', '0000-00-00', '7341022493', 'everardo_0919@hotmail.com', '', '', '', 1),
(1162, 65, '32220', '2024-06-04', 'VAZQUEZ TORRES ANGEL', '', '', '0000-00-00', '7773057752', 'angel_241278@hotmail.com', '', '', '', 1),
(1163, 66, '21105', '2024-06-04', 'LOPEZ SOTOMAYOR MATA RUBEN', '', '', '0000-00-00', '3 11 32 90', 'ruben_sotomayor@hotmail.com', '', '', '', 1),
(1164, 66, '17128', '2024-06-04', 'HUERTA HUICOCHEA ELISABET', '', '', '0000-00-00', '3423732', 'helyh_92@hotmail.com', '', '', '', 1),
(1165, 66, '10270', '2024-06-04', 'ABASCAL PASTRANA JORGE LUIS', '', '', '0000-00-00', '7341014651', 'jorgeabascalp@hotmail.com', '', '', '', 1),
(1166, 66, '11161', '2024-06-04', 'BAHENA FLORES TOMAS', '', '', '0000-00-00', '527774131400', 'tmagnum47@gmail.com', '', '', '', 1),
(1167, 66, '17130', '2024-06-04', 'HERNANDEZ CUEVAS JOHANA LIZBETH', '', '', '0000-00-00', '7775636143', 'jlizbeth.95@gmail.com', '', '', '', 1),
(1168, 66, '18021', '2024-06-04', 'ITURBE AYALA ROLANDO ARTURO', '', '', '0000-00-00', '7513441546', 'rol-spboy@hotmail.com', '', '', '', 1),
(1169, 66, '22265', '2024-06-04', 'MOLINA MEJIA EDNA KRISTEL', '', '', '0000-00-00', '34 39 160', 'krays_425@hotmail.com', '', '', '', 1),
(1170, 66, '22345', '2024-06-04', 'MANCERA ROGEL BEATRIZ', '', '', '0000-00-00', '7343434231', '', '', '', '', 1),
(1171, 66, '22372', '2024-06-04', 'MELENDEZ BLANCAS LEADDY JESSICA', '', '', '0000-00-00', '7341682405', 'leaddymelendez@gmail.com', '', '', '', 1),
(1172, 66, '26179', '2024-06-04', 'PERALTA GONZALEZ EDGAR', '', '', '0000-00-00', '7773701479', 'ep260179@gmail.com', '', '', '', 1),
(1173, 66, '28356', '2024-06-04', 'REYNOSO CRUZ XHEILA ZHARET', '', '', '0000-00-00', '7777885761', 'xheilareynoso@hotmail.com', '', '', '', 1),
(1174, 66, '29158', '2024-06-04', 'SANTOS REZA HECTOR JESAI', '', '', '0000-00-00', '7341250808', 'hector_jezai@hotmail.com', '', '', '', 1),
(1175, 66, '30123', '2024-06-04', 'TERAN OLIVARES MA. DEL CARMEN', '', '', '0000-00-00', '7774460429', 'maricarmen.teran@hotmal.com', '', '', '', 1),
(1176, 66, '16175', '2024-06-04', 'GARCIA RAMIREZ GERARDO', '', '', '0000-00-00', '', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1177, 66, '22223', '2024-06-04', 'MIER HERNANDEZ LETICIA', '', '', '0000-00-00', '7771970245', 'letytierra@hotmail.com', '', '', '', 1),
(1178, 66, '11119', '2024-06-04', 'BARBOZA DIAZ JAVIER', '', '', '0000-00-00', '7775143662', 'jabadi_81@hotmail.com', '', '', '', 1),
(1179, 66, '19043', '2024-06-04', 'JIMENEZ AQUINO JUAN CARLOS ISAAC', '', '', '0000-00-00', '527341011950', 'jucai_@msn.com', '', '', '', 1),
(1180, 66, '22283', '2024-06-04', 'MONTES RIVERA YAREDY', '', '', '0000-00-00', '7351959312', 'montesrivera@hotmai.es', '', '', '', 1),
(1181, 66, '28280', '2024-06-04', 'ROMERO ULLOA JAVIER HERNANDO', '', '', '0000-00-00', '364 37 58', 'rouj730525@hotmail.com', '', '', '', 1),
(1182, 66, '29068', '2024-06-04', 'SOTO MARTINEZ TERESA', '', '', '0000-00-00', '7772407910', 'abrilaries-1469@hotmail.com', '', '', '', 1),
(1183, 66, '15097', '2024-06-04', 'FLORES BELTRAN JUAN', '', '', '0000-00-00', '7774328681', 'juanfloresbeltran77@gmail.com', '', '', '', 1),
(1184, 66, '16245', '2024-06-04', 'GOMEZ OCAMPO YESSICA ADRIANA', '', '', '0000-00-00', '7773850678', 'adris_19@hotmail.com', '', '', '', 1),
(1185, 66, '22299', '2024-06-04', 'MARTINEZ HERNANDEZ LESLIE HAYDEE', '', '', '0000-00-00', '7341365029', 'leslie5_80@hotmail.com', '', '', '', 1),
(1186, 66, '26159', '2024-06-04', 'PICHARDO DOMINGUEZ YESSICA', '', '', '0000-00-00', '7513440460', 'yessi.pichardo93@gmail.com', '', '', '', 1),
(1187, 66, '22343', '2024-06-04', 'MEZA JIMENEZ JESSICA IVETH', '', '', '0000-00-00', '7332942456', 'jessica.072017@outlook.es', '', '', '', 1),
(1188, 67, '34002', '2024-06-04', 'YEPEZ OLEA ALEJANDRO', '', '', '0000-00-00', '7771077241', 'mayokaas@hotmail.com', '', '', '', 1),
(1189, 68, '17142', '2024-06-04', 'HOMOBONO MORALES BONFILIA', '', '', '0000-00-00', '7774421683', 'bonfi17@hotmail.com', '', '', '', 1),
(1190, 68, '26203', '2024-06-04', 'PLAZA LUNA CLAUDIA GABRIELA', '', '', '0000-00-00', '7771431261', 'gabyclau2116@gmail.com', '', '', '', 1),
(1191, 68, '16286', '2024-06-04', 'GUTIERREZ CABRERA CRISTHIAN DE JESUS', '', '', '0000-00-00', '017341202205', '0', '', '', '', 1),
(1192, 68, '11207', '2024-06-04', 'BARRERA MENEZ ARLENE JACQUELINE', '', '', '0000-00-00', '7772565614', 'jacque_barrera@hotmail.com', '', '', '', 1),
(1193, 68, '14066', '2024-06-04', 'ESTRADA OCAMPO JOSE LUIS', '', '', '0000-00-00', '7773603539', 'jose40luis40@gmail.com', '', '', '', 1),
(1194, 68, '26121', '2024-06-04', 'PEREZ VAZQUEZ NANCY', '', '', '0000-00-00', '323 44 96', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1195, 68, '28384', '2024-06-04', 'RAMIREZ HERRERA ROSA LAURA', '', '', '0000-00-00', '7774461559', 'rolherrera2006@gmail.com', '', '', '', 1),
(1196, 68, '28385', '2024-06-04', 'ROJAS CRESPO TANIA PATRICIA', '', '', '0000-00-00', '7772586341', 'tania.rojas.crespo@outlook.com', '', '', '', 1),
(1197, 68, '28387', '2024-06-04', 'RODRIGUEZ PESCADOR ARANZA ESTEFANIA', '', '', '0000-00-00', '7341170478', 'aranzarodriguez99319@gmail.com', '', '', '', 1),
(1198, 68, '32219', '2024-06-04', 'VILLEGAS DIAZ ELIA MELANIE DAHIAN', '', '', '0000-00-00', '7311881829', 'melanie.ville02@gmail.com', '', '', '', 1),
(1199, 68, '23055', '2024-06-04', 'NAVARRO GONZALEZ ADRIANA AMELIA', '', '', '0000-00-00', '7771544200', 'adriana.navarrotsj@gmail.com', '', '', '', 1),
(1200, 69, '25120', '2024-06-04', 'ORTIZ SANTANA MA. GUADALUPE', '', '', '0000-00-00', '3182872', 'orsacancunc@yahoo.com.mx', '', '', '', 1),
(1201, 70, '22132', '2024-06-04', 'MAYA MORALES ADRIAN', '', '', '0000-00-00', '7776600367', 'adisyama@gmail.com', '', '', '', 1),
(1202, 70, '11168', '2024-06-04', 'BENHUMEA RODRIGUEZ INGRID JOSLAYNE', '', '', '0000-00-00', '7772242655', 'ingrid.benhumea@hotmail.com', '', '', '', 1),
(1203, 70, '12136', '2024-06-04', 'CONTRERAS OSORIO VERENICE', '', '', '0000-00-00', '7771359825', 'verenycex@hotmail.com', '', '', '', 1),
(1204, 70, '29155', '2024-06-04', 'SALGADO ESPINOZA ARACELI', '', '', '0000-00-00', '7771490028', 'cheliuxsa@hotmail.com', '', '', '', 1),
(1205, 70, '32118', '2024-06-04', 'VARGAS GUERRERO EVA', '', '', '0000-00-00', '7771371665', 'evavargas1919@gmail.com', '', '', '', 1),
(1206, 70, '12022', '2024-06-04', 'CAMACHO CANTERA MARTHA', '', '', '0000-00-00', '7351801480', 'marthacamachocantera@hotmail.com', '', '', '', 1),
(1207, 70, '29176', '2024-06-04', 'SANCHEZ DIAZ MARIA ANGELICA', '', '', '0000-00-00', '01735 39 27 116', 'decalexi@hotmail.com', '', '', '', 1),
(1208, 70, '26066', '2024-06-04', 'PEREZ LINARES CARLOS VALENTIN', '', '', '0000-00-00', '7776189797', 'perezlinarescarlosvalentin@gmail.com', '', '', '', 1),
(1209, 70, '13039', '2024-06-04', 'DIAZ RAMOS HILARIA', '', '', '0000-00-00', '7775335125', 'rafaelgomezgomez73@gmail.com', '', '', '', 1),
(1210, 70, '21135', '2024-06-04', 'LEON CASTRO ALEJANDRO', '', '', '0000-00-00', '316 90 91', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1211, 70, '29096', '2024-06-04', 'SANCHEZ CARREON LUCIA', '', '', '0000-00-00', '7772197922', 'lucia131sanchez@gmail.com', '', '', '', 1),
(1212, 70, '10263', '2024-06-04', 'AVALOS GUADARRAMA MIRIAM CATALINA', '', '', '0000-00-00', '7775515219', 'mimikat85@hotmail.com', '', '', '', 1),
(1213, 70, '12261', '2024-06-04', 'CATALAN SANCHEZ JUAN CARLOS', '', '', '0000-00-00', '3114060', '0', '', '', '', 1),
(1214, 70, '15142', '2024-06-04', 'FIGUEROA REYES ISAAC', '', '', '0000-00-00', '777251480', 'oxy_ichac@live.com.mx', '', '', '', 1),
(1215, 70, '15150', '2024-06-04', 'FLORES ROMERO ENRIQUE ROMAN', '', '', '0000-00-00', '7777899879', 'henry190997@gmail.com', '', '', '', 1),
(1216, 70, '16174', '2024-06-04', 'GOMEZ NAJERA PATRICIA', '', '', '0000-00-00', '7776148858', 'sofyparygomez0105@gmail.com', '', '', '', 1),
(1217, 70, '16378', '2024-06-04', 'GARCIA ARAGON MANUEL', '', '', '0000-00-00', '7351165712', 'leunamitz@gmail.com', '', '', '', 1),
(1218, 70, '19079', '2024-06-04', 'JIMENEZ GARCIA FELIPE DE JESUS', '', '', '0000-00-00', '7772624144', 'pipejmz7@gmail.com', '', '', '', 1),
(1219, 70, '21130', '2024-06-04', 'LABASTIDA AVILA MARCO ANTONIO', '', '', '0000-00-00', '', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1220, 70, '22392', '2024-06-04', 'MARQUEZ CARDENAS LUIS GUSTAVO', '', '', '0000-00-00', '7773634030', 'GUSTAVOQC@GMAIL.COM', '', '', '', 1),
(1221, 70, '25080', '2024-06-04', 'ORTEGA BECERRIL RAMIRO ULISES', '', '', '0000-00-00', '7773406364', 'ramiroortbec@gmail.com', '', '', '', 1),
(1222, 70, '26034', '2024-06-04', 'PEREZ ROMERO LUIS', '', '', '0000-00-00', '3 61 22 49', 'luisvirgo-39@hotmail.com', '', '', '', 1),
(1223, 71, '28115', '2024-06-04', 'ROMAN SOLIS NORMA DELIA', '', '', '0000-00-00', '7772625485', 'normaroman1701@hotmail.com', '', '', '', 1),
(1224, 71, '10143', '2024-06-04', 'ARROYO MARIN ODEIDA', '', '', '0000-00-00', '7775022694', 'odeida_arroyo@outlook.com', '', '', '', 1),
(1225, 71, '10149', '2024-06-04', 'AQUINO SUAREZ CONCEPCION DE MARIA', '', '', '0000-00-00', '3 20 38 32', 'oniuqa16@hotmail.com', '', '', '', 1),
(1226, 71, '15148', '2024-06-04', 'FLORES DELGADO IRIS', '', '', '0000-00-00', '7777893815', 'mair_203@hotmail.com', '', '', '', 1),
(1227, 71, '34004', '2024-06-04', 'YAÑEZ MILLAN ISAAC ISAIAS', '', '', '0000-00-00', '1 02 65 25', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1228, 71, '12212', '2024-06-04', 'CASTILLO SANCHEZ JOSE LUIS', '', '', '0000-00-00', '7771952497', 'jlcs_lic@hotmail.com', '', '', '', 1),
(1229, 71, '32018', '2024-06-04', 'VACA CRUZ JOSE MANUEL', '', '', '0000-00-00', '7772651343', 'manuelvaka@hotmail.com', '', '', '', 1),
(1230, 71, '16281', '2024-06-04', 'GONZALEZ CASTRO LORENZO ERNESTO', '', '', '0000-00-00', '7773283526', 'laramadura.chumy@gmail.com', '', '', '', 1),
(1231, 71, '17026', '2024-06-04', 'HIDALGO MENCIA ROSA MARIA', '', '', '0000-00-00', '7352009629', 'rosamariahidalgomencia@gmail.com', '', '', '', 1),
(1232, 71, '12080', '2024-06-04', 'CLAVIJO HERNANDEZ MARISOL CECILIA', '', '', '0000-00-00', '', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1233, 71, '29107', '2024-06-04', 'SALAZAR SOTELO ROCIO', '', '', '0000-00-00', '7351829861', 'rosysalsot@hotmail.com', '', '', '', 1),
(1234, 71, '10216', '2024-06-04', 'AVILA CONDE GENARO', '', '', '0000-00-00', '7353578628', 'gac2904@hotmail.com', '', '', '', 1),
(1235, 71, '11145', '2024-06-04', 'BECERRIL SANCHEZ ESTEBAN SAMUEL', '', '', '0000-00-00', '3 23 31 24', '0', '', '', '', 1),
(1236, 71, '16168', '2024-06-04', 'GARCIA OROZCO FRANCISCA', '', '', '0000-00-00', '3091783', 'goof_21@hotmail.com', '', '', '', 1),
(1237, 71, '16321', '2024-06-04', 'GARCIA MARTINEZ ADALILIA', '', '', '0000-00-00', '7351003631', 'adalinema@gmail.com', '', '', '', 1),
(1238, 71, '16347', '2024-06-04', 'GONZALEZ TELLEZ MARCO POLO', '', '', '0000-00-00', '7773798283', 'mpgt020895@gmail.com', '', '', '', 1),
(1239, 71, '16381', '2024-06-04', 'GUEVARA URIBE FATIMA NAIDELYN', '', '', '0000-00-00', '7271005065', 'naiidelyn1120@gmail.com', '', '', '', 1),
(1240, 71, '21139', '2024-06-04', 'LABASTIDA AVILA GABRIELA', '', '', '0000-00-00', '7352465604', 'gabypeycy@hotmail.com', '', '', '', 1),
(1241, 71, '21143', '2024-06-04', 'LANDA CRUZ ALMA DELIA', '', '', '0000-00-00', '7774203247', 'alma.lac@hotmail.com', '', '', '', 1),
(1242, 71, '28361', '2024-06-04', 'RIVERO SANTANA JOSE ROMAN', '', '', '0000-00-00', '7774331821', 'romanrivero16@gmail.com', '', '', '', 1),
(1243, 71, '28399', '2024-06-04', 'RIVAS GUADARRAMA LUIS ROBERTO', '', '', '0000-00-00', '7772144762', 'luisguadarrama329@gmail.com', '', '', '', 1),
(1244, 71, '32177', '2024-06-04', 'VALADEZ SANCHEZ ANGELICA MARIA', '', '', '0000-00-00', '7775208465', 'catuzita123@gmail.com', '', '', '', 1),
(1245, 72, '11206', '2024-06-04', 'BRITO MIRANDA RAFAEL', '', '', '0000-00-00', '', '', '', '', '', 1),
(1246, 72, '12320', '2024-06-04', 'CASTERA MORENO JAIME', '', '', '0000-00-00', '', '', '', '', '', 1),
(1247, 72, '29026', '2024-06-04', 'SANCHEZ OSORIO MARTA', '', '', '0000-00-00', '313 10 90', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1248, 72, '11125', '2024-06-04', 'BRITO ALVAREZ PALOMA GISSELA', '', '', '0000-00-00', '7341466148', 'gissela_14@hotmail.com', '', '', '', 1),
(1249, 72, '13094', '2024-06-04', 'DIAZ REYES RICARDA', '', '', '0000-00-00', '7773527859', 'rikadiazmiranda@gmail.com', '', '', '', 1),
(1250, 72, '16221', '2024-06-04', 'GARCIA VILLEGAS RAMON', '', '', '0000-00-00', '7772251384', 'ramongvillegas3@gmail.com', '', '', '', 1),
(1251, 72, '22208', '2024-06-04', 'MORA RAMIREZ LUIS ALBERTO', '', '', '0000-00-00', '7771842693', 'lic.lumora@hotmail.com', '', '', '', 1),
(1252, 72, '28109', '2024-06-04', 'RODRIGUEZ HERNANDEZ FACUNDA', '', '', '0000-00-00', '7351014914', 'licfacurh@yahoo.com.mx', '', '', '', 1),
(1253, 72, '35013', '2024-06-04', 'ZAPATA CERDA ALMA BERENICE', '', '', '0000-00-00', '7351355547', 'al.be.za@hotmail.com', '', '', '', 1),
(1254, 72, '11109', '2024-06-04', 'BATALLA GUARDIAN NORMA LILIA', '', '', '0000-00-00', '7772334268', 'poderjudicial1728@gmail.com', '', '', '', 1),
(1255, 72, '12253', '2024-06-04', 'CRUZ BARRERA CESAR OMAR', '', '', '0000-00-00', '7353589724', 'rimce_omar34@hotmail.com', '', '', '', 1),
(1256, 72, '15070', '2024-06-04', 'FLORES DELGADO VERONICA GUADALUPE', '', '', '0000-00-00', '7772884112', 'lic_gflores32@yahoo.com.mx', '', '', '', 1),
(1257, 72, '15095', '2024-06-04', 'FLORES CORDERO NAYELI DANIELA', '', '', '0000-00-00', '7772070889', 'danacord10@gmail.com', '', '', '', 1),
(1258, 72, '16180', '2024-06-04', 'GARCIA HIGUERA VERONICA ISABEL', '', '', '0000-00-00', '7771362892', 'maveis.je@gmail.com', '', '', '', 1),
(1259, 72, '16211', '2024-06-04', 'GARCIA OCAMPO MARLENE', '', '', '0000-00-00', '7771633096', 'mar_garoc@hotnail.com', '', '', '', 1),
(1260, 72, '21185', '2024-06-04', 'LOPEZ CRUZ MIGUEL ANGEL', '', '', '0000-00-00', '7773403710', 'mike.lopez610@gmail.com', '', '', '', 1),
(1261, 72, '22213', '2024-06-04', 'MIRANDA CUEVAS ANA CECILIA', '', '', '0000-00-00', '7773637832', 'a_csi@hotmail.com', '', '', '', 1),
(1262, 72, '26181', '2024-06-04', 'PEREZ CASTILLO CARLOS JOVANY', '', '', '0000-00-00', '7773459075', 'jovany09tsj@gmail.com', '', '', '', 1),
(1263, 72, '28236', '2024-06-04', 'ROLDAN MELGOZA GABRIELA', '', '', '0000-00-00', '7351242080', 'gabyrm21@hotmail.com', '', '', '', 1),
(1264, 72, '29159', '2024-06-04', 'SOSA CORTES NALLELY', '', '', '0000-00-00', '7352122294', 'beautifulflower_22@hotmail.com', '', '', '', 1),
(1265, 72, '32126', '2024-06-04', 'VILLANUEVA GARCIA LILIAN PRISCILLA', '', '', '0000-00-00', '7771034109', 'lic.lilianvillanueva@gmail.com', '', '', '', 1),
(1266, 72, '16273', '2024-06-04', 'GUTIERREZ ANZUREZ MIGUEL ANGEL', '', '', '0000-00-00', '7351494589', 'metlly_@hotmail.es', '', '', '', 1),
(1267, 72, '22128', '2024-06-04', 'MUSITO VIOLANTE MARIA LETICIA', '', '', '0000-00-00', '7351393763', 'mvleticia30@gmail.com', '', '', '', 1),
(1268, 72, '28085', '2024-06-04', 'ROLDAN GALINDO ROCIO', '', '', '0000-00-00', '7351457423', 'roldan_rocio@hotmail.com', '', '', '', 1),
(1269, 72, '29118', '2024-06-04', 'SOSA CORTES NANCY', '', '', '0000-00-00', '7352129789', 'nancylove_cor@hotmail.com', '', '', '', 1),
(1270, 72, '10281', '2024-06-04', 'AGUILAR GODINEZ JORGE ALBERTO', '', '', '0000-00-00', '7771161658', 'jorgealive@outlook.com', '', '', '', 1),
(1271, 72, '12047', '2024-06-04', 'CARDOSO GONZALEZ BERTHA MARIBEL', '', '', '0000-00-00', '7352830040', 'maribelcar2011@hotmail.com', '', '', '', 1),
(1272, 72, '14061', '2024-06-04', 'ESTRADA VILLANUEVA QUIELA', '', '', '0000-00-00', '7773633044', 'qestradav@gmail.com', '', '', '', 1),
(1273, 72, '16344', '2024-06-04', 'GARCIA CARRANZA NAARA SARAI', '', '', '0000-00-00', '7775995327', 'naarag09@gmail.com', '', '', '', 1),
(1274, 72, '27003', '2024-06-04', 'QUIROZ DEMESA MA DEL CARMEN', '', '', '0000-00-00', '7771884124', 'car_quiroz17@hotmail.cim', '', '', '', 1),
(1275, 72, '30126', '2024-06-04', 'TAPIA TAPIA MAYBELLINE MONTSERRAT', '', '', '0000-00-00', '7774649171', 'maybellinetapiatapia@gmail.com', '', '', '', 1),
(1276, 72, '29055', '2024-06-04', 'SOBERANES PEREZ VIRGINIA', '', '', '0000-00-00', '7351800014', 'viquesoberanesperez.2019@gmail.con', '', '', '', 1),
(1277, 72, '22043', '2024-06-04', 'MENCHACA GONZALEZ VERONICA REYNALDA', '', '', '0000-00-00', '7351343020', 'veronicamg6868@gmail.com', '', '', '', 1),
(1278, 72, '28181', '2024-06-04', 'RODRIGUEZ HERNANDEZ MARGARITA', '', '', '0000-00-00', '7352520421', 'maguito_rh@hotmail.com', '', '', '', 1),
(1279, 72, '35017', '2024-06-04', 'ZARCO HERNANDEZ EDUARDO', '', '', '0000-00-00', '7351688740', 'ezh58@hotmail.com', '', '', '', 1),
(1280, 72, '10111', '2024-06-04', 'ARIZA ROJO MA CONSEPCION IRIANA', '', '', '0000-00-00', '7351190614', 'irianaarizarojo@gmail.com', '', '', '', 1),
(1281, 72, '10247', '2024-06-04', 'ARIZA ROJO CELESTINO EVARISTO', '', '', '0000-00-00', '7352725509', 'c.ariza.rojo@gmail.com', '', '', '', 1),
(1282, 72, '10282', '2024-06-04', 'ALVAREZ ZAVALETA SANDRA ISABEL', '', '', '0000-00-00', '7352316518', 'sandra-az1@hotmail.com', '', '', '', 1),
(1283, 72, '12239', '2024-06-04', 'CELON BAUTISTA MOISES ABRAHAM', '', '', '0000-00-00', '8332912381', 'celontsj@gmail.com', '', '', '', 1),
(1284, 72, '17090', '2024-06-04', 'HUERTA ENRIQUEZ YOLANDA', '', '', '0000-00-00', '7352143492', 'ad.enriquez_09@hotmail.com', '', '', '', 1),
(1285, 72, '17129', '2024-06-04', 'HERRERA ROMAN LUIS ANGEL', '', '', '0000-00-00', '7351942417', 'luisangelherreraromanluis@hotmail.com', '', '', '', 1),
(1286, 72, '21076', '2024-06-04', 'LUENGAS PAEZ MARIA GUADALUPE', '', '', '0000-00-00', '7352774193', 'lupis0212@hotmail.com', '', '', '', 1),
(1287, 72, '21101', '2024-06-04', 'LUGO MONTES JORGE ADRIAN', '', '', '0000-00-00', '7772065608', 'jorgesebas47@gmail.com', '', '', '', 1),
(1288, 72, '22127', '2024-06-04', 'MORALES GAONA EMERENCIANA ROCIO', '', '', '0000-00-00', '7352709939', 'rociomorales2000@hotmail.com', '', '', '', 1),
(1289, 72, '28197', '2024-06-04', 'ROJAS LARA LAURA', '', '', '0000-00-00', '7771296781', 'ROJASLARALAURA@GMAIL.COM', '', '', '', 1),
(1290, 72, '28210', '2024-06-04', 'RODRIGUEZ MORALES EDGAR ARIEL', '', '', '0000-00-00', '7351941027', 'arielrdz@outlook.com', '', '', '', 1),
(1291, 72, '29273', '2024-06-04', 'SAUZA RAMOS JESUS ALEJANDRO', '', '', '0000-00-00', '7352006492', 'jesusalejandros.ramos@gmail.com', '', '', '', 1),
(1292, 72, '35033', '2024-06-04', 'ZUÑIGA ADUNA LAURA GUADALUPE', '', '', '0000-00-00', '', '', '', '', '', 1),
(1293, 73, '10015', '2024-06-04', 'AQUINO ROBLERO ROSA MARIA', '', '', '0000-00-00', '7772571113', 'rossyaquino@hotmail.com', '', '', '', 1),
(1294, 73, '16210', '2024-06-04', 'GONZALEZ VITE NOEMI FABIOLA', '', '', '0000-00-00', '7773211386', 'faby_glez80@hotmail.com', '', '', '', 1),
(1295, 73, '11169', '2024-06-04', 'BALBUENA GONZALEZ ELIA CIRENE BETSABET', '', '', '0000-00-00', '7352374321', 'betsabet_ing.25@hotmail.com', '', '', '', 1),
(1296, 73, '14007', '2024-06-04', 'ESCOBAR DORANTES GREGORIO', '', '', '0000-00-00', '3 20 10 96', '', '', '', '', 1),
(1297, 73, '17007', '2024-06-04', 'HERNANDEZ ARIAS MARIA GUILLERMINA', '', '', '0000-00-00', '7351519223', 'guillermina_ha@outlook.com', '', '', '', 1),
(1298, 73, '17085', '2024-06-04', 'HERNANDEZ TERAN ANA MARIA', '', '', '0000-00-00', '7773328687', 'axel0513love@gmail.com', '', '', '', 1),
(1299, 73, '28231', '2024-06-04', 'RAMOS VARGAS YANIN YOSHADARA', '', '', '0000-00-00', '7772676338', 'yos040886@gmail.com', '', '', '', 1),
(1300, 73, '32136', '2024-06-04', 'VALLE CERVANTES YURIDIA NATHALIE', '', '', '0000-00-00', '3 25 19 46', '0', '', '', '', 1),
(1301, 73, '11151', '2024-06-04', 'BATALLA DOMINGUEZ ALEJANDRA DENISSE', '', '', '0000-00-00', '7351256575', 'nena_star_189@hotmail.com', '', '', '', 1),
(1302, 73, '28263', '2024-06-04', 'RAMIREZ GALLARDO FERNANDO', '', '', '0000-00-00', '7352441660', 'fernandito_ram86@hotmail.com', '', '', '', 1),
(1303, 73, '22135', '2024-06-04', 'MARTINEZ GOMEZ MIRIAM', '', '', '0000-00-00', '7351691695', 'martinezgomezmiri@gmail.com', '', '', '', 1),
(1304, 73, '11041', '2024-06-04', 'BARRANCO RAMIREZ VERONICA', '', '', '0000-00-00', '01 735 352 18 46', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1305, 73, '12087', '2024-06-04', 'CATONGA CHERON IRMA', '', '', '0000-00-00', '7351627763', 'nancypucca11@hotmail.com', '', '', '', 1),
(1306, 73, '16075', '2024-06-04', 'GONZALEZ VILLAZANA VERONICA', '', '', '0000-00-00', '7351814636', 'veronicavillazana70@gmail.com', '', '', '', 1),
(1307, 73, '32043', '2024-06-04', 'VIDAL URIBE ARACELI', '', '', '0000-00-00', '735 15 20 597', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1308, 73, '16237', '2024-06-04', 'GONZALEZ HERRERA HERIBERTO', '', '', '0000-00-00', '7351016331', 'glezheriberto64@gmail.com', '', '', '', 1),
(1309, 73, '32092', '2024-06-04', 'VAZQUEZ CORTES IVONNE YOLANDA', '', '', '0000-00-00', '0173556205', '0', '', '', '', 1),
(1310, 73, '11040', '2024-06-04', 'BARRERA ESPEJO BLANCA VERONICA', '', '', '0000-00-00', '35 36399', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1311, 73, '11191', '2024-06-04', 'BONILLA HERNANDEZ VIVIANA', '', '', '0000-00-00', '7353357792', 'legis_hernandez@hotmail.com', '', '', '', 1),
(1312, 73, '12203', '2024-06-04', 'CRUZ VAZQUEZ MIRIAM', '', '', '0000-00-00', '7352157591', 'miriamcruzvaz7@gmail.com', '', '', '', 1),
(1313, 73, '14033', '2024-06-04', 'ESPITIA RODRIGUEZ MARIA ISABEL', '', '', '0000-00-00', '5610347128', 'isaespitia@hotmail.com', '', '', '', 1),
(1314, 73, '15121', '2024-06-04', 'FIGUEROA ALPIZAR ROCIO ELVIRA', '', '', '0000-00-00', '7776113155', 'rocio250183@hotmail.com', '', '', '', 1),
(1315, 73, '19064', '2024-06-04', 'JASSO CHEVEZ ARMANDO DANIEL', '', '', '0000-00-00', '7772492822', 'ardajasso@gmail.com', '', '', '', 1),
(1316, 73, '22364', '2024-06-04', 'MARTINEZ SALGADO SAMUEL', '', '', '0000-00-00', '7351550777', 'samii.martiinez@hotmail.com', '', '', '', 1),
(1317, 73, '28396', '2024-06-04', 'ROMAN CRUZ MANUEL', '', '', '0000-00-00', '7775182751', 'manuelromancruz@gmail.com', '', '', '', 1),
(1318, 73, '28404', '2024-06-04', 'RUIZ MONTESINOS JOAQUIN', '', '', '0000-00-00', '7352002407', 'joaquinruizmontesinos@gmail.com', '', '', '', 1),
(1319, 73, '29247', '2024-06-04', 'SANDOVAL SOBERANES ZORAIDA JASMIN', '', '', '0000-00-00', '7351094190', 'carlota20102312@outlook.com', '', '', '', 1),
(1320, 73, '21112', '2024-06-04', 'LUENGAS PAEZ MARIA DE LOURDES', '', '', '0000-00-00', '01735 3982879', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1321, 74, '16031', '2024-06-04', 'GUTIERREZ MORALES LILLIAN', '', '', '0000-00-00', '3 12 63 04', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1322, 74, '12173', '2024-06-04', 'CAMPUZANO RODRIGUEZ ALEJANDRA', '', '', '0000-00-00', '', 'abogada_campuzano@hotmail.com', '', '', '', 1),
(1323, 74, '16173', '2024-06-04', 'GONZALEZ ESPARZA JOSE AUGUSTO', '', '', '0000-00-00', '', 'jaugustote@hotmail.com', '', '', '', 1),
(1324, 74, '25119', '2024-06-04', 'ORTEGA MEZA CRISTHYAN ARACELY', '', '', '0000-00-00', '7351260604', 'cris.om0103@gmail.com', '', '', '', 1),
(1325, 74, '26084', '2024-06-04', 'PEREZ SANCHEZ YAEL', '', '', '0000-00-00', '100 15 81', 'yaelpersan2010@hotmail.es', '', '', '', 1),
(1326, 74, '32132', '2024-06-04', 'VAZQUEZ CAMPOS VICENTE', '', '', '0000-00-00', '7351676136', 'gado_vcv15640@hotmail.com', '', '', '', 1),
(1327, 74, '32179', '2024-06-04', 'VIDAL CARRILLO SIBELLE', '', '', '0000-00-00', '7354165362', 'temptattion@hotmail.com', '', '', '', 1),
(1328, 74, '14072', '2024-06-04', 'ESPEJO BOBADILLA CASANDRA', '', '', '0000-00-00', '7351474449', 'casandraeb13@outlook.com', '', '', '', 1),
(1329, 74, '16235', '2024-06-04', 'GARCIA SANCHEZ JACQUELINE VIVIANA', '', '', '0000-00-00', '7351135260', 'arizahi1982@gmail.com', '', '', '', 1),
(1330, 74, '28375', '2024-06-04', 'ROSALES CORNEJO BRENDA VIRIDIANA', '', '', '0000-00-00', '7772336416', 'viridiarxc@hotmail.com', '', '', '', 1),
(1331, 74, '28300', '2024-06-04', 'RODRIGUEZ APAC PAOLA LETICIA', '', '', '0000-00-00', '7773745778', 'lic.paolaapac@outlook.com', '', '', '', 1),
(1332, 74, '28084', '2024-06-04', 'RENDON CAMPOS GEORGINA', '', '', '0000-00-00', '01739 395 05 47', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1333, 74, '12108', '2024-06-04', 'CORTES DOMINGUEZ JUDITH', '', '', '0000-00-00', '7352468180', 'Chemitargcortes@gmail.com', '', '', '', 1),
(1334, 74, '15049', '2024-06-04', 'FERNANDEZ ALEMAN LUIS ALVARO', '', '', '0000-00-00', '7351010916', 'pinani0909@gmail.com', '', '', '', 1),
(1335, 74, '32057', '2024-06-04', 'VALDEZ ALVAREZ OMAR', '', '', '0000-00-00', '0', 'sharkvaldez@hotmail.com', '', '', '', 1),
(1336, 74, '15052', '2024-06-04', 'FRIAS DAVILA ERIKA ESTELA', '', '', '0000-00-00', '7352217712', 'erikafrias74@hotmail.com', '', '', '', 1),
(1337, 74, '16387', '2024-06-04', 'GONZALEZ SUAREZ MERCY MONTSERRAT', '', '', '0000-00-00', '7771115730', 'montserrat08_glez@hotmail.com', '', '', '', 1),
(1338, 74, '17089', '2024-06-04', 'HERNANDEZ ARJONA ALICIA', '', '', '0000-00-00', '7352774303', 'alicearjona27@gmail.com', '', '', '', 1),
(1339, 74, '21062', '2024-06-04', 'LIMON MARQUEZ MANUEL', '', '', '0000-00-00', '7351515954', 'serrato_ariza11@hotmail.com', '', '', '', 1),
(1340, 74, '21167', '2024-06-04', 'LEON OCAMPO JORGE ARMANDO', '', '', '0000-00-00', '7771885057', 'lic.bolivar_leon@hotmail.com', '', '', '', 1),
(1341, 74, '22327', '2024-06-04', 'MARTINEZ SALAZAR HECTOR JOEL', '', '', '0000-00-00', '7771817659', 'hector692004@gmail.com', '', '', '', 1),
(1342, 74, '28351', '2024-06-04', 'RUIZ MONTECINOS ALAN', '', '', '0000-00-00', '7352406596', 'alan2021r@gmail.com', '', '', '', 1),
(1343, 74, '30124', '2024-06-04', 'TENANGO REYES YELITZA YASHODARA', '', '', '0000-00-00', '', '', '', '', '', 1),
(1344, 74, '32114', '2024-06-04', 'VERGARA GARCIA HUGO ENRIQUE', '', '', '0000-00-00', '7775547233', 'hugo2015@gmail.com', '', '', '', 1),
(1345, 74, '32195', '2024-06-04', 'VERGARA MORA ISAREL', '', '', '0000-00-00', '7353038102', 'isarel_vm@hotmail.com', '', '', '', 1),
(1346, 75, '22141', '2024-06-04', 'MENA FLORES ERIKA', '', '', '0000-00-00', '3 19 09 30', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1347, 75, '11155', '2024-06-04', 'BECERRIL REYES ROSA MARIA', '', '', '0000-00-00', '7351524070', 'rossiebc88@gmail.com', '', '', '', 1),
(1348, 75, '16197', '2024-06-04', 'GUTIERREZ ANZUREZ ROSALIA ALEJANDRA', '', '', '0000-00-00', '7313572884', 'roalegtzan@hotmail.com', '', '', '', 1),
(1349, 75, '21122', '2024-06-04', 'LLERA GUTIERREZ PATRICIA ALEJANDRA', '', '', '0000-00-00', '7352441660', 'fernandito_ram86@hotmail.com', '', '', '', 1),
(1350, 75, '21171', '2024-06-04', 'LINARES VAZQUEZ ALEXIS GUSTAVO', '', '', '0000-00-00', '7775641893', 'linaresalexis1996@gmail.com', '', '', '', 1),
(1351, 75, '22230', '2024-06-04', 'MELENDEZ ROMAN MIGUEL', '', '', '0000-00-00', '7341025442', 'mmromanmiguel@hotmail.com', '', '', '', 1),
(1352, 75, '10204', '2024-06-04', 'ARIAS RODRIGUEZ LESDY YELINA', '', '', '0000-00-00', '01 731 35 752 04', '0', '', '', '', 1),
(1353, 75, '15050', '2024-06-04', 'FLORES MENERA CLAUDIA GUADALUPE', '', '', '0000-00-00', '7351991069', 'claudiafloresabogada51@hotmail.com', '', '', '', 1),
(1354, 75, '22281', '2024-06-04', 'MARTINEZ OLIVAR JOSE ALFREDO', '', '', '0000-00-00', '7351287801', 'cybergalactico36@gmail.com', '', '', '', 1),
(1355, 75, '26170', '2024-06-04', 'PRADA MEJIA JOAQUIN', '', '', '0000-00-00', '7773753107', 'joakprada@hotmail.com', '', '', '', 1),
(1356, 75, '32212', '2024-06-04', 'VALENCIA AVILEZ AGUSTIN', '', '', '0000-00-00', '7771281570', 'agustinvalenciaavilez@hotmail.com', '', '', '', 1),
(1357, 75, '21079', '2024-06-04', 'LEON PALMA MARTHA PATRICIA', '', '', '0000-00-00', '7351129416', 'patymk_leon@yqhoo.com.mx', '', '', '', 1),
(1358, 75, '29052', '2024-06-04', 'SANCHEZ SANCHEZ LILIA', '', '', '0000-00-00', '01 735 352 63 68', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1359, 75, '11031', '2024-06-04', 'BARRERA ESPEJO AGUSTINA', '', '', '0000-00-00', '01735 35 3 63 94', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1360, 75, '11208', '2024-06-04', 'BLANCAS FLORES ANGEL DAVID', '', '', '0000-00-00', '7352304293', 'angelblancas123@gmail.com', '', '', '', 1),
(1361, 75, '12338', '2024-06-04', 'CAMACHO ALONSO ROBERTO CARLOS', '', '', '0000-00-00', '', '', '', '', '', 1),
(1362, 75, '21080', '2024-06-04', 'LEON TOLEDO CAROLINA', '', '', '0000-00-00', '7351214734', 'carolinaltoledo77@gmail.com', '', '', '', 1),
(1363, 75, '22304', '2024-06-04', 'MUÑOZ CHAVEZ ANDRES', '', '', '0000-00-00', '7353371593', 'ANDRES_CHAVEZ2@outlook.com', '', '', '', 1),
(1364, 75, '22322', '2024-06-04', 'MORALES REGALADO PERLA YURIRIA', '', '', '0000-00-00', '017353577777', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1365, 75, '22374', '2024-06-04', 'MONTES DE OCA LOPEZ MAURICIO DE JESUS', '', '', '0000-00-00', '7772692479', 'mauriciomontesoca99@gmail.com', '', '', '', 1),
(1366, 75, '25094', '2024-06-04', 'OCHOA BELTRAN CATALINA', '', '', '0000-00-00', '777 5 11 94 93', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1367, 75, '28315', '2024-06-04', 'RODRIGUEZ QUINTERO IRIS AMAIRANI', '', '', '0000-00-00', '7352052258', 'irisquintero.485@gmail.com', '', '', '', 1),
(1368, 75, '30127', '2024-06-04', 'TORRES ALVAREZ DANIELA', '', '', '0000-00-00', '7353010078', 'dani.torres@hotmail.com', '', '', '', 1),
(1369, 75, '32083', '2024-06-04', 'VARGAS PEREZ NANCY ARELLY', '', '', '0000-00-00', '01735 30 2 35 72', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1370, 76, '13064', '2024-06-04', 'DOMINGUEZ RANGEL AIDEE LUDIVINA', '', '', '0000-00-00', '7776143594', 'ailudora@hotmail.com', '', '', '', 1),
(1371, 76, '23036', '2024-06-04', 'NARANJO GONZALEZ MARIA MARIBEL', '', '', '0000-00-00', '7351810983', 'mabelnglez@hotmail.com', '', '', '', 1),
(1372, 76, '28025', '2024-06-04', 'RENDON XIXITLA GEORGINA', '', '', '0000-00-00', '7351985044', 'georginarendon22@gmail.com', '', '', '', 1),
(1373, 76, '32146', '2024-06-04', 'VARGAS MENDOZA VICTOR NELSON', '', '', '0000-00-00', '04555 1475 7093', 'vicney@hotmail.com', '', '', '', 1),
(1374, 76, '32042', '2024-06-04', 'VAZQUEZ CORTES JEANETTE CONSTANCIA', '', '', '0000-00-00', '7352099703', 'estrellitafeliz19973@gmail.com', '', '', '', 1),
(1375, 76, '10220', '2024-06-04', 'ALARCON SALGADO LUIS ALBERTO', '', '', '0000-00-00', '7774512897', 'luisalarcon160190@gmail.com', '', '', '', 1),
(1376, 76, '19071', '2024-06-04', 'JIMENEZ RODRIGUEZ GUADALUPE', '', '', '0000-00-00', '7352057687', 'loupe.34@hotmail.com', '', '', '', 1),
(1377, 76, '21152', '2024-06-04', 'LOPEZ BARRERA OLGA IRIS', '', '', '0000-00-00', '7352359133', 'olgairislopez3@gmail.com', '', '', '', 1),
(1378, 76, '22390', '2024-06-04', 'MUZQUIS AYALA LILIAN', '', '', '0000-00-00', '7352990344', 'muzquislilian@gmail.com', '', '', '', 1),
(1379, 76, '23062', '2024-06-04', 'NAVEZ CORTEZ JOSE GERARDO', '', '', '0000-00-00', '7471670007', '', '', '', '', 1),
(1380, 76, '26214', '2024-06-04', 'PICHARDO PIÑA SANDRO CAMIL', '', '', '0000-00-00', '7771622057', 'sandro.camil17@gmail.com', '', '', '', 1),
(1381, 76, '12213', '2024-06-04', 'CERVANTES MORENO BERNARDO', '', '', '0000-00-00', '7771616189', 'thurma99@hotmail.com', '', '', '', 1),
(1382, 76, '16309', '2024-06-04', 'GOMEZ CASTAÑEDA LAURA VIVIANA', '', '', '0000-00-00', '7351511923', 'belcorpi@hotmail.com', '', '', '', 1),
(1383, 76, '26098', '2024-06-04', 'PARDO BALDERAS SAUL ARMANDO', '', '', '0000-00-00', '7774476589', 'pardosap78@gmail.com', '', '', '', 1),
(1384, 76, '29178', '2024-06-04', 'SALAZAR SANCHEZ ALAN', '', '', '0000-00-00', '017613440503', 'yotankamon@hotmail.com', '', '', '', 1),
(1385, 77, '28256', '2024-06-04', 'RODRIGUEZ ANZURES MARIA DE JESUS', '', '', '0000-00-00', '7351748451', 'marichuyanzzures@outlook.com', '', '', '', 1),
(1386, 77, '32072', '2024-06-04', 'VERGARA GARCIA JOSE DE JESUS', '', '', '0000-00-00', '7775538634', 'notificadorjesusvergara@gmail.com', '', '', '', 1),
(1387, 77, '22258', '2024-06-04', 'MORALES PEREZ PAULINA', '', '', '0000-00-00', '7352451442', 'LIC.ADORNOMORALES@GMAIL.COM', '', '', '', 1),
(1388, 77, '28355', '2024-06-04', 'RAMIREZ REYES VICTOR ALFONSO', '', '', '0000-00-00', '7352520051', 'varr_azul@hotmail.com', '', '', '', 1),
(1389, 77, '32149', '2024-06-04', 'VALENCIA ANRUBIO BERTHA', '', '', '0000-00-00', '7475093465', 'bertha_valencia_a@yahoo.com', '', '', '', 1),
(1390, 77, '16061', '2024-06-04', 'GUEMES AVILA ALMA MONCERRAT', '', '', '0000-00-00', '7775107351', 'monserrat4291@gmail.com', '', '', '', 1),
(1391, 77, '10199', '2024-06-04', 'ALONSO PEREZ JOSE SANDRO', '', '', '0000-00-00', '7351889713', 'alonsojosesandro4@gmail.com', '', '', '', 1),
(1392, 77, '16374', '2024-06-04', 'GONZALEZ MORAN DEISY LARISSA', '', '', '0000-00-00', '7352773411', 'larissa.gleez@gmail.com', '', '', '', 1),
(1393, 77, '16385', '2024-06-04', 'GONZALEZ NAVARRO CLAUDIA IRMA', '', '', '0000-00-00', '5530560749', 'cay_2603@hotmail.com', '', '', '', 1),
(1394, 77, '17096', '2024-06-04', 'HERNANDEZ SOTO JONATHAN', '', '', '0000-00-00', '7353290687', 'seus201830@gmail.com', '', '', '', 1),
(1395, 77, '17120', '2024-06-04', 'HERNANDEZ AYALA NAYNIY YARELY', '', '', '0000-00-00', '7773032291', 'nayniy@hotmail.com', '', '', '', 1),
(1396, 77, '18023', '2024-06-04', 'IBAÑEZ RINCON PRISCILA', '', '', '0000-00-00', '5562474419', '', '', '', '', 1),
(1397, 77, '21175', '2024-06-04', 'LONGINOS ESPEJEL ULISES', '', '', '0000-00-00', '7352048233', 'ulises.longinos@outlook.es', '', '', '', 1),
(1398, 77, '26173', '2024-06-04', 'PLIEGO RAMIREZ JAIR GUISEPPE', '', '', '0000-00-00', '7351094074', 'jairgpr_30@hotmail.com', '', '', '', 1),
(1399, 77, '26212', '2024-06-04', 'PIOQUINTO RESENDIZ IVAN ADRIAN', '', '', '0000-00-00', '', '', '', '', '', 1),
(1400, 77, '28179', '2024-06-04', 'RODRIGUEZ MARTINEZ GENOVEVA', '', '', '0000-00-00', '7352392167', 'genovevamart64@gmail.com', '', '', '', 1),
(1401, 77, '29101', '2024-06-04', 'SANCHEZ VILLALVA GRISELDA', '', '', '0000-00-00', '7352081124', 'gsavi140874@gmail.com', '', '', '', 1),
(1402, 77, '29268', '2024-06-04', 'SANCHEZ NUÑEZ ERICK ALEXANDRE', '', '', '0000-00-00', '7352695993', 'erick.sanchee@live.com', '', '', '', 1),
(1403, 77, '32188', '2024-06-04', 'VAZQUEZ LEANA YAZMIN', '', '', '0000-00-00', '017353516281', 'yazz1422@hotmail.com', '', '', '', 1),
(1404, 77, '32221', '2024-06-04', 'VELAZQUEZ SANCHEZ ALONDRA', '', '', '0000-00-00', '7351699395', 'alondravs19z@gmail.com', '', '', '', 1),
(1405, 77, '11153', '2024-06-04', 'BECERRA ARROYO KATY LORENA', '', '', '0000-00-00', '7772964211', 'katylorenab@gmail.com', '', '', '', 1),
(1406, 77, '21060', '2024-06-04', 'LOPEZ MALDONADO JOB', '', '', '0000-00-00', '7777127257', 'jblopez3@hotmail.com', '', '', '', 1),
(1407, 77, '22282', '2024-06-04', 'MATEO MORALES TOMAS', '', '', '0000-00-00', '7772062104', 'tmateo1969@gmail.com', '', '', '', 1),
(1408, 77, '25053', '2024-06-04', 'ORTEGA CASTILLO LUIS GUILLERMO', '', '', '0000-00-00', '7343420215', 'luisortega_98@hotmail.com', '', '', '', 1),
(1409, 77, '28009', '2024-06-04', 'RODRIGUEZ CADENA MARIA LUISA DE JESUS', '', '', '0000-00-00', '777 3 16 84 60', 'ipe_shcp@yahoo.com.mx', '', '', '', 1),
(1410, 77, '28395', '2024-06-04', 'ROSAS MARTINEZ VERONICA HIGINIA', '', '', '0000-00-00', '7773275147', 'vcr.68@hotmail.com', '', '', '', 1),
(1411, 77, '29174', '2024-06-04', 'SALAS RUIZ ALMA PATRICIA', '', '', '0000-00-00', '777 3 21 71 12', '0', '', '', '', 1),
(1412, 77, '32006', '2024-06-04', 'VALENCIA VALENCIA J. JESUS', '', '', '0000-00-00', '7774820346', 'jjesusvalenciavalencia@hotmail.com', '', '', '', 1),
(1413, 77, '11074', '2024-06-04', 'BARRIOS DIAZ MARCELA', '', '', '0000-00-00', '1 00 57 82', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1414, 77, '13113', '2024-06-04', 'DIAZ MARTINEZ EDGAR', '', '', '0000-00-00', '241 20 65', 'edgar_buker@hotmail.com', '', '', '', 1),
(1415, 77, '19035', '2024-06-04', 'JUAREZ GARCIA ROBERTO', '', '', '0000-00-00', '7353491184', 'ing_goldencard@hotmail.com', '', '', '', 1),
(1416, 77, '21104', '2024-06-04', 'LOPEZ GUEVARA ALFONSO', '', '', '0000-00-00', '7773633883', 'licalfonsolopezg@gmai.com', '', '', '', 1),
(1417, 77, '26090', '2024-06-04', 'PEREGRINA RIVERA YANET GABRIELA', '', '', '0000-00-00', '7351613226', 'Lic_peregrina@hotmail.com', '', '', '', 1),
(1418, 77, '10152', '2024-06-04', 'ARIZA ROJO JOSE ALBERTO', '', '', '0000-00-00', '7352781350', 'arizarojo@hotmail.com', '', '', '', 1),
(1419, 78, '23029', '2024-06-04', 'NAJERA ABUNDEZ ROSA MARIA', '', '', '0000-00-00', '01735 352 29 30', 'rosanajera_abundez@hotmail.com', '', '', '', 1),
(1420, 78, '22363', '2024-06-04', 'MORA CONTRERAS MIGUEL', '', '', '0000-00-00', '7351832597', 'mora_10_@hotmail.com', '', '', '', 1),
(1421, 79, '12169', '2024-06-04', 'CAJIGAL RODRIGUEZ MIGUEL ANGEL', '', '', '0000-00-00', '7771402827', 'ma_cajigal@hotmail.com', '', '', '', 1),
(1422, 79, '29260', '2024-06-04', 'SANCHEZ PERALTA ISAID', '', '', '0000-00-00', '7776303755', 'isaidsanchez@outlook.com', '', '', '', 1),
(1423, 79, '29278', '2024-06-04', 'SALGADO OCAMPO SANDRA', '', '', '0000-00-00', '7772336819', 'sandra.salgado.ocampo@gmail.com', '', '', '', 1),
(1424, 79, '10206', '2024-06-04', 'ARROYO SALCEDO DIEGO', '', '', '0000-00-00', '7772337808', 'licdiego777@gmail.com', '', '', '', 1),
(1425, 79, '10279', '2024-06-04', 'ABUNDEZ GUZMAN JOSE ENRIQUE', '', '', '0000-00-00', '7351072183', 'joseabundez95@gmail.com', '', '', '', 1),
(1426, 79, '17141', '2024-06-04', 'HERNANDEZ GARCIA ZURIEL', '', '', '0000-00-00', '5580068450', 'zuriel.hg10@gmail.com', '', '', '', 1),
(1427, 79, '10273', '2024-06-04', 'AGUILAR RENDON GERARDO', '', '', '0000-00-00', '7351459710', 'ger_git-45@hotmail.com', '', '', '', 1),
(1428, 79, '12323', '2024-06-04', 'CASTREJON VAZQUEZ DULCE ERIKA', '', '', '0000-00-00', '7773056568', 'taly_0708@outlook.com', '', '', '', 1),
(1429, 79, '14083', '2024-06-04', 'EVANGELISTA DE LA CRUZ JUAN', '', '', '0000-00-00', '7292646503', 'ronsitoarte@gmail.com', '', '', '', 1),
(1430, 79, '21189', '2024-06-04', 'LOPEZ MARTINEZ OSCAR DANIEL', '', '', '0000-00-00', '7773675118', 'oscardaniellopezmtz@gmail.com', '', '', '', 1),
(1431, 79, '22382', '2024-06-04', 'MONTOYA QUIROZ SANTIAGO JHAIR', '', '', '0000-00-00', '5626557906', 'san23mq@gmail.com', '', '', '', 1),
(1432, 79, '23057', '2024-06-04', 'NAJERA ABUNDEZ THALIA', '', '', '0000-00-00', '7351740628', 'thalisman_66@hotmail.com', '', '', '', 1),
(1433, 79, '28388', '2024-06-04', 'ROJAS ZARIÑANA ANA KAREN', '', '', '0000-00-00', '7774299362', 'rojaszarinanaanakaren@gmail.com', '', '', '', 1),
(1434, 79, '28405', '2024-06-04', 'RUBI JIMENEZ NELLY', '', '', '0000-00-00', '7352145969', 'MELLY220@GMAIL.COM', '', '', '', 1),
(1435, 79, '29226', '2024-06-04', 'SERRATO ARIZA ANGEL DE JESUS', '', '', '0000-00-00', '7352078871', 'angel.serrato.ar@gmail.com', '', '', '', 1),
(1436, 79, '23056', '2024-06-04', 'NUÑEZ BAHENA OSCAR', '', '', '0000-00-00', '7772339161', 'oscarnbahenalaboralista@yahoo.com.mx', '', '', '', 1),
(1437, 80, '25096', '2024-06-04', 'ORTIZ SANTANA JOSEFINA', '', '', '0000-00-00', '318 28 72', 'josefina32_02@hotmail.com', '', '', '', 1),
(1438, 81, '16349', '2024-06-04', 'GUERRERO SUAREZ PATRICIA ESPERANZA', '', '', '0000-00-00', '7771528603', 'patygro@hotmail.com', '', '', '', 1);
INSERT INTO `student` (`student_id`, `id_assignment`, `no_empleado`, `register_date`, `fname`, `image`, `age`, `dob`, `contact`, `email`, `address`, `city`, `country`, `enabled`) VALUES
(1439, 81, '21196', '2024-06-04', 'LOPEZ GUTIERREZ JESUS SALVADOR', '', '', '0000-00-00', '7772227029', 'psiclopezj@gmail.com', '', '', '', 1),
(1440, 81, '22235', '2024-06-04', 'MARIACA TORRES CRISTOBAL', '', '', '0000-00-00', '7346907345 CASA', 'martorres_24@hotmail.com', '', '', '', 1),
(1441, 81, '23046', '2024-06-04', 'NIEVES RAMIREZ ALEJANDRA', '', '', '0000-00-00', '7771532668', 'alejandranievesramz@gmail.com', '', '', '', 1),
(1442, 81, '16330', '2024-06-04', 'GONZALEZ ZAMORA ESTEPHANY', '', '', '0000-00-00', '7775686969', 'leo_stephany84@hotmail.com', '', '', '', 1),
(1443, 81, '21173', '2024-06-04', 'LUGO ARIAS GABRIELA LETICIA', '', '', '0000-00-00', '7373730281', 'glaflaca77@hotmail.com', '', '', '', 1),
(1444, 81, '32203', '2024-06-04', 'VERGARA MORENO MONICA SUGEY', '', '', '0000-00-00', '7353975123', 'moni_sugey@hotmail.com', '', '', '', 1),
(1445, 81, '10238', '2024-06-04', 'AVILEZ MERAZ LUCRECIA', '', '', '0000-00-00', '7351272999', 'luki_meraz_12@hotmail.com', '', '', '', 1),
(1446, 81, '12295', '2024-06-04', 'CHAVEZ CABRERA MONSERRAT', '', '', '0000-00-00', '7774436921', 'monse.cabrera2517@gmail.com', '', '', '', 1),
(1447, 81, '17134', '2024-06-04', 'HERNANDEZ AGUAYO KARLA', '', '', '0000-00-00', '7351692295', 'katy88_ha@hotmail.com', '', '', '', 1),
(1448, 81, '14043', '2024-06-04', 'ESTRADA SOTO MARIA DEL CONSUELO', '', '', '0000-00-00', '382 15 47', 'strada_soto@hotmail.com', '', '', '', 1),
(1449, 82, '22196', '2024-06-04', 'MARTINEZ MORALES JACARANDA', '', '', '0000-00-00', '7772679750', 'jacamtz@hotmail.com', '', '', '', 1),
(1450, 82, '12249', '2024-06-04', 'CHILLOPA VALDEZ MARIA ISABEL', '', '', '0000-00-00', '735 357 79 04', 'isa80_chi@hotmail.com', '', '', '', 1),
(1451, 82, '22070', '2024-06-04', 'MENDOZA CHAVEZ MARICELA', '', '', '0000-00-00', '7351629268', 'marimendozacha22@gmail.com', '', '', '', 1),
(1452, 82, '28239', '2024-06-04', 'ROMUALDO ADAYA TERESA', '', '', '0000-00-00', '7352187617', 'teresita_romualdo@hotmail.com', '', '', '', 1),
(1453, 82, '29191', '2024-06-04', 'SIERRA BECERRA JESUS ALEJANDRO', '', '', '0000-00-00', '7776231270', 'jalexsiber@hotmail.com', '', '', '', 1),
(1454, 82, '22192', '2024-06-04', 'MIRANDA MORENO ARTURO', '', '', '0000-00-00', '7341104580', 'arturomirandamoreno@gmail.com', '', '', '', 1),
(1455, 82, '28360', '2024-06-04', 'ROMERO BALBUENA ALEJANDRO', '', '', '0000-00-00', '7351448700', 'alexx303zw@gmail.com', '', '', '', 1),
(1456, 82, '12051', '2024-06-04', 'CARCAÑO ROBLES FRANCISCA', '', '', '0000-00-00', '7351004223', 'franciscacarcanorobles@gmail.com', '', '', '', 1),
(1457, 82, '21037', '2024-06-04', 'LOPEZ GARCIA PATRICIA', '', '', '0000-00-00', '7351468814', 'patylopgar12@gmail.com', '', '', '', 1),
(1458, 82, '10193', '2024-06-04', 'ARIZA ROSAS LAURA', '', '', '0000-00-00', '735 112 99  59', 'astrid_pa76@hotmail.com', '', '', '', 1),
(1459, 82, '11098', '2024-06-04', 'BOBADILLA RODRIGUEZ JOSE HUMBERTO', '', '', '0000-00-00', '01777 3165292', '', '', '', '', 1),
(1460, 82, '11183', '2024-06-04', 'BONILLA ZAVALA ARACELI', '', '', '0000-00-00', '7351809389', 'chelibz@hotmail.com', '', '', '', 1),
(1461, 82, '13065', '2024-06-04', 'DUARTE AGUILAR MARICELA', '', '', '0000-00-00', '7351998665', 'maryjein16@hotmail.com', '', '', '', 1),
(1462, 82, '15162', '2024-06-04', 'FLORES BARRANCO JENIFFER ALEXA', '', '', '0000-00-00', '7352403912', 'miranda_ortiz16@hotmail.com', '', '', '', 1),
(1463, 82, '21133', '2024-06-04', 'LOPEZ SANCHEZ ALINE MARIANA', '', '', '0000-00-00', '7351404428', 'pirianix2514@gmail.com', '', '', '', 1),
(1464, 82, '21200', '2024-06-04', 'LAZARO GARCIA ESMERALDA PAOLA', '', '', '0000-00-00', '7313519709', 'LAZAROESMERALDA@GMAIL.COM', '', '', '', 1),
(1465, 82, '22273', '2024-06-04', 'MEJIA GAMARRA GONZALO', '', '', '0000-00-00', '7352377625', 'gmg_-_@hotmail.com', '', '', '', 1),
(1466, 83, '22137', '2024-06-04', 'MORALES TORRES GEORGINA IVONNE', '', '', '0000-00-00', '7771629637', 'giniux1975@hotmail.com', '', '', '', 1),
(1467, 83, '10139', '2024-06-04', 'AQUINO DIAZ YOVIZNAH', '', '', '0000-00-00', '7772655497', 'yoviz@hotmail.com', '', '', '', 1),
(1468, 83, '16223', '2024-06-04', 'GARCIA LUCERO MARIA ELENA', '', '', '0000-00-00', '7775339345', 'garcia-luceroelena@hotmail.com', '', '', '', 1),
(1469, 83, '17080', '2024-06-04', 'HERNANDEZ SALAZAR LUIS ANGEL', '', '', '0000-00-00', '7771549482', 'luiguixxi@hotmail.com', '', '', '', 1),
(1470, 83, '22051', '2024-06-04', 'MUÑOZ FLORES SARA GUADALUPE', '', '', '0000-00-00', '', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1471, 83, '28291', '2024-06-04', 'ROJAS ROBLES JOSE ROBERTO', '', '', '0000-00-00', '7771360664', 'robert_1689@hotmail.com', '', '', '', 1),
(1472, 83, '16058', '2024-06-04', 'GOMEZ OCAMPO MARCO ANTONIO', '', '', '0000-00-00', '7777873200', 'intocable975@hotmail.com', '', '', '', 1),
(1473, 83, '16186', '2024-06-04', 'GUIZAR SOTO SUSANA', '', '', '0000-00-00', '7771413232', 'susan102011@hotmail.com', '', '', '', 1),
(1474, 83, '28159', '2024-06-04', 'ROSALES AVILA AMELIA', '', '', '0000-00-00', '3 15 43 23', '0', '', '', '', 1),
(1475, 83, '28169', '2024-06-04', 'REYES ESPINOZA AMALIA', '', '', '0000-00-00', '7775017152', 'perikito.1@hotmail.com', '', '', '', 1),
(1476, 83, '26056', '2024-06-04', 'PERALTA NOGUERON AIDEE', '', '', '0000-00-00', '7774308329', 'aideepn05@gmail.com', '', '', '', 1),
(1477, 83, '30020', '2024-06-04', 'TELLEZ DIAZ VERONICA', '', '', '0000-00-00', '7757585625', 'vtellez073@gmail.com', '', '', '', 1),
(1478, 83, '17016', '2024-06-04', 'HERNANDEZ DELGADO MARIA GUADALUPE', '', '', '0000-00-00', '7341482621', 'lupita.72Hernandel@gmail.com', '', '', '', 1),
(1479, 83, '19039', '2024-06-04', 'JUAREZ PEREZ KARLA MARIELA', '', '', '0000-00-00', '5513064624', 'kmariel05@hotmail.com', '', '', '', 1),
(1480, 83, '10233', '2024-06-04', 'ANDRADE BAHENA LINDA LEONOR', '', '', '0000-00-00', '7772950583', 'lindalion1982@gmail.com', '', '', '', 1),
(1481, 83, '15068', '2024-06-04', 'FLORES URIOSTEGUI ANTONIO', '', '', '0000-00-00', '7341276390', 'antoniofloresuriostegui7@gmail.com', '', '', '', 1),
(1482, 83, '16380', '2024-06-04', 'GIORGANA ALVAREZ DANIELA MISHELL', '', '', '0000-00-00', '7341149909', 'dagiorgana@gmail.com', '', '', '', 1),
(1483, 83, '22094', '2024-06-04', 'MORALES QUIROZ JOSE LUIS', '', '', '0000-00-00', '', 'luisq@hotmail.com', '', '', '', 1),
(1484, 83, '22366', '2024-06-04', 'MARQUEZ RODRIGUEZ CARLOS ALBERTO', '', '', '0000-00-00', '7774180986', 'camarada40.marquez@gmail.com', '', '', '', 1),
(1485, 83, '22384', '2024-06-04', 'MARTINEZ SOTELO ALINNE', '', '', '0000-00-00', '7773888418', 'alinamarst@gmail.com', '', '', '', 1),
(1486, 83, '25081', '2024-06-04', 'OCAMPO ARROYO FABIAN', '', '', '0000-00-00', '7771335785', 'fabiantsj@hotmail.com', '', '', '', 1),
(1487, 83, '28393', '2024-06-04', 'RIVERA SANTILLAN KEVIN ALEKSANDROV', '', '', '0000-00-00', '7775118649', 'kevrivsan99@gmail.com', '', '', '', 1),
(1488, 83, '29282', '2024-06-04', 'SANCHEZ GASPAR JORGE JOSTYN', '', '', '0000-00-00', '7774339405', '', '', '', '', 1),
(1489, 83, '32206', '2024-06-04', 'VELAZQUEZ SANCHEZ ADRIANA', '', '', '0000-00-00', '5545747779', 'adriana_vesa@outlook.com', '', '', '', 1),
(1490, 84, '17002', '2024-06-04', 'HERNANDEZ ARJONA ALEJANDRO', '', '', '0000-00-00', '', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1491, 84, '12204', '2024-06-04', 'CLAVIJO VALLE MERARY', '', '', '0000-00-00', '7771425296', 'shmily_maly@hotmail.com', '', '', '', 1),
(1492, 84, '12316', '2024-06-04', 'CUEVAS LOPEZ JULIO ALEJANDRO', '', '', '0000-00-00', '', '', '', '', '', 1),
(1493, 84, '28319', '2024-06-04', 'RODRIGUEZ FLORES DULCE MICHELL', '', '', '0000-00-00', '7772525724', 'michell_306_9@hotmail.com', '', '', '', 1),
(1494, 84, '29076', '2024-06-04', 'SAN VICENTE IRLAS YUNUEN PAOLA', '', '', '0000-00-00', '3 15 08 11', 'ypsi9@hotmail.com', '', '', '', 1),
(1495, 84, '29218', '2024-06-04', 'SANCHEZ VALLADAREZ DENISSE AVIDA', '', '', '0000-00-00', '7341456497', 'denferavi@gmail.com', '', '', '', 1),
(1496, 84, '11203', '2024-06-04', 'BRUNO CATALAN ADALBERTO', '', '', '0000-00-00', '7772962030', 'adalbertobruno.c@gmail.com', '', '', '', 1),
(1497, 84, '26176', '2024-06-04', 'PERUCHO RICO ALFONSO', '', '', '0000-00-00', '3915831', 'alfonso_perucho@hotmail.com', '', '', '', 1),
(1498, 84, '26205', '2024-06-04', 'PEREZ HINOJOSA MAYRA NAYELLI', '', '', '0000-00-00', '7775265365', '', '', '', '', 1),
(1499, 84, '23015', '2024-06-04', 'NUÑEZ CASARRUBIAS OLINKAN', '', '', '0000-00-00', '7772315772', 'olinkan@hotmail.com', '', '', '', 1),
(1500, 84, '10036', '2024-06-04', 'ACEVEDO OSORIO VIOLETA', '', '', '0000-00-00', '3 85 02 16', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1501, 84, '15033', '2024-06-04', 'FUENTES ROMERO ALMA DELIA', '', '', '0000-00-00', '7774438207', 'fuentesromeroalma77@gmail.com', '', '', '', 1),
(1502, 84, '23004', '2024-06-04', 'NAJERA MARTINEZ MIRELLA', '', '', '0000-00-00', '3 25 44 61', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1503, 84, '11053', '2024-06-04', 'BARAJAS GALVAN CECILIA', '', '', '0000-00-00', '7777891831', 'barajasvelazquezrocio@gmail.com', '', '', '', 1),
(1504, 84, '12288', '2024-06-04', 'CASAS ARANDA INGRID JANET', '', '', '0000-00-00', '7771310560', 'ingrid_janet23@hotmail.com', '', '', '', 1),
(1505, 84, '16356', '2024-06-04', 'GARCIA NAJERA JIMENA', '', '', '0000-00-00', '7771994836', 'jimena2411@hotmail.com', '', '', '', 1),
(1506, 84, '19085', '2024-06-04', 'JIMENEZ GARCIA VICTOR HUGO', '', '', '0000-00-00', '7772110183', 'hugojmz30@gmail.com', '', '', '', 1),
(1507, 84, '21102', '2024-06-04', 'LARA ROMAN LAURA ELENA', '', '', '0000-00-00', '7772767344', 'lauraelenalarar@gmail.com', '', '', '', 1),
(1508, 84, '28358', '2024-06-04', 'RAMOS ZAMUDIO ITZEL', '', '', '0000-00-00', '7772240323', 'itzel_ramos810@hotmail.com', '', '', '', 1),
(1509, 84, '28365', '2024-06-04', 'RAYO HERNANDEZ JORGE', '', '', '0000-00-00', '7774598829', 'monitoreosjrh@hotmail.com', '', '', '', 1),
(1510, 84, '28379', '2024-06-04', 'ROGEL GONZALEZ RODRIGO', '', '', '0000-00-00', '7772334075', 'rodrigo.rogelg@gmail.com', '', '', '', 1),
(1511, 84, '30093', '2024-06-04', 'TOVAR AGUILAR MIGUEL ANGEL', '', '', '0000-00-00', '7775693925', 'miguel.tovar0501@gmail.com', '', '', '', 1),
(1512, 84, '32211', '2024-06-04', 'VELARDE SALAS EDITH NICOLE', '', '', '0000-00-00', '7771104925', 'velardedith098@outlook.es', '', '', '', 1),
(1513, 85, '10126', '2024-06-04', 'ARANDA PERAL DOLORES BLANDINA', '', '', '0000-00-00', '166 47 25', 'lolis_bap@hotmail.com', '', '', '', 1),
(1514, 85, '11117', '2024-06-04', 'BAÑOS LOPEZ ERIKA ROCIO', '', '', '0000-00-00', '7772161130', 'erbl4@hotmail.com', '', '', '', 1),
(1515, 85, '17072', '2024-06-04', 'HERNANDEZ MULATO JESUS DAVID', '', '', '0000-00-00', '527771143234', 'hemujeda@gmail.com', '', '', '', 1),
(1516, 85, '26112', '2024-06-04', 'PALACIOS FRANYUTTI LIZETT DEL CARMEN', '', '', '0000-00-00', '7772404644', 'lizpalfran@hotmail.com', '', '', '', 1),
(1517, 85, '28350', '2024-06-04', 'RASGADO SANCHEZ ALEJANDRO', '', '', '0000-00-00', '7775113100', 'alexrs1193@gmail.com', '', '', '', 1),
(1518, 85, '35023', '2024-06-04', 'ZUÑIGA COLIN JEMIMA', '', '', '0000-00-00', '7773749181', 'hunterhunter1000@hotmail.com', '', '', '', 1),
(1519, 85, '12233', '2024-06-04', 'CESAREO MARTINEZ JANNET', '', '', '0000-00-00', '7775639724', 'jannet872@hotmail.com', '', '', '', 1),
(1520, 85, '14009', '2024-06-04', 'ESPINDOLA MIRANDA PAULA', '', '', '0000-00-00', '', '0', '', '', '', 1),
(1521, 85, '14040', '2024-06-04', 'ESCOBAR MARTINEZ JOEL', '', '', '0000-00-00', '', 'joelescobarmartinez@gmail.com', '', '', '', 1),
(1522, 85, '14005', '2024-06-04', 'ESPINOSA DE LOS MONTEROS TELLEZ ROSALIA', '', '', '0000-00-00', '7772272137', 'monterosrosy@gmail.com', '', '', '', 1),
(1523, 85, '16040', '2024-06-04', 'GILES MORALES CLAUDIA', '', '', '0000-00-00', '7774385225', 'claus_gm24@hotmail.com', '', '', '', 1),
(1524, 85, '32036', '2024-06-04', 'VERGARA JIMENEZ SILVIA', '', '', '0000-00-00', '7774201939', 'silviajimenez15865@gmail.com', '', '', '', 1),
(1525, 85, '10040', '2024-06-04', 'ALVAREZ PAREDES NORMA ANGELICA', '', '', '0000-00-00', '7771913451', 'alvarezparedesnorma@gmail.com', '', '', '', 1),
(1526, 85, '28065', '2024-06-04', 'RODRIGUEZ PINEDA CLARA OLIVIA', '', '', '0000-00-00', '777284295', 'claraorp12@gmail.com', '', '', '', 1),
(1527, 85, '29083', '2024-06-04', 'SALGADO PEREZ PERLA ELIZABETH', '', '', '0000-00-00', '7771339085', 'perlasalgado100@gmail.com', '', '', '', 1),
(1528, 85, '11108', '2024-06-04', 'BAHENA SALGADO VIRIDIANA', '', '', '0000-00-00', '7771808450', 'viridianitabahena@gmail.com', '', '', '', 1),
(1529, 85, '11205', '2024-06-04', 'BARRIOS MEDRANO FLOR ITZEL', '', '', '0000-00-00', '7773845867', 'barriosfloritzel@hotmail.com', '', '', '', 1),
(1530, 85, '12201', '2024-06-04', 'CHUMACERO RODRIGUEZ LIZETTE', '', '', '0000-00-00', '01 735 39 4 40 9', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1531, 85, '13053', '2024-06-04', 'DIAZ ROSAS SHEILA NIRELY', '', '', '0000-00-00', '7772590970', 'sheyla_80@hotmail.com', '', '', '', 1),
(1532, 85, '19090', '2024-06-04', 'JIMENEZ BASILIO TOMAS', '', '', '0000-00-00', '7772093913', 'uptomasjb@gmail.com', '', '', '', 1),
(1533, 85, '21186', '2024-06-04', 'LEYVA JIMENEZ VIRIDIANA', '', '', '0000-00-00', '7341208388', '', '', '', '', 1),
(1534, 85, '29253', '2024-06-04', 'SAMANO CORTES ELIUD', '', '', '0000-00-00', '7343450579', 'eliud-samano@hotmail.com', '', '', '', 1),
(1535, 85, '30080', '2024-06-04', 'TORRES MARQUEZ GEMA ARACELI', '', '', '0000-00-00', '7771205640', 'gematrrs@hotmail.com', '', '', '', 1),
(1536, 85, '30113', '2024-06-04', 'TORRES REYES EUGENIA', '', '', '0000-00-00', '3162067', 'eugenia_tr@hotmail.com', '', '', '', 1),
(1537, 86, '10148', '2024-06-04', 'ARTEAGA DIRZO ARIADNA', '', '', '0000-00-00', '7771626657', 'adn0303@hotmail.com', '', '', '', 1),
(1538, 86, '21085', '2024-06-04', 'LOPEZ DIAZ HECTOR CARLOS', '', '', '0000-00-00', '3 20 96 04', 'hcld7817@hotmail.com', '', '', '', 1),
(1539, 86, '22027', '2024-06-04', 'MARTINEZ CORTES MONICA', '', '', '0000-00-00', '7771596136', 'licmoni.mtz@hotmail.com', '', '', '', 1),
(1540, 86, '22295', '2024-06-04', 'MONJE COLLADO LUIS ANTONIO', '', '', '0000-00-00', '777 3727152', 'corazonpartido333@hotmail.com', '', '', '', 1),
(1541, 86, '26052', '2024-06-04', 'PEREZ NAVA RAUL', '', '', '0000-00-00', '734 37 357 69', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1542, 86, '29030', '2024-06-04', 'SALVADOR COBOS GABRIELA', '', '', '0000-00-00', '7772444402', 'gabyscobos2013@hotmail.com', '', '', '', 1),
(1543, 86, '14053', '2024-06-04', 'ESTRADA FIGUEROA JUAN MANUEL', '', '', '0000-00-00', '7773636057', 'jnmanuel19@gmail.com', '', '', '', 1),
(1544, 86, '21107', '2024-06-04', 'LOPEZ BRIONES NIEVES MARINET', '', '', '0000-00-00', '7775230023', 'marilobri7@hotmail.com', '', '', '', 1),
(1545, 86, '29165', '2024-06-04', 'SOLIS GONZALEZ DIANA EUGENIA', '', '', '0000-00-00', '3 17 05 79', 'dianes_s11@hotmail.com', '', '', '', 1),
(1546, 86, '10105', '2024-06-04', 'ARROYO SANCHEZ MARIA GUADALUPE', '', '', '0000-00-00', '7771627916', 'guadalupe.arr1973@gmail.com', '', '', '', 1),
(1547, 86, '29189', '2024-06-04', 'SOTELO JIMENEZ GRECIA SARIKAY', '', '', '0000-00-00', '7771882780', 'gress_sotelo@hotmail.com', '', '', '', 1),
(1548, 86, '30055', '2024-06-04', 'TREJO BARRERA NORA', '', '', '0000-00-00', '3 20 26 97', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1549, 86, '10136', '2024-06-04', 'ARANDA FLORES ANTONIO', '', '', '0000-00-00', '7774762727', 'siddhis119@gmail.com', '', '', '', 1),
(1550, 86, '10222', '2024-06-04', 'ALONSO CORONEL ALEJANDRA', '', '', '0000-00-00', '7772062281', 'yatanna406@hotmail.com', '', '', '', 1),
(1551, 86, '15118', '2024-06-04', 'FUENTES MORENO FLOR DEL CARMEN', '', '', '0000-00-00', '7775635800', 'florfuentes1@outlook.com', '', '', '', 1),
(1552, 86, '16028', '2024-06-04', 'GUZMAN RANGEL PATRICIA DEL ROSARIO', '', '', '0000-00-00', '7771487450', 'licpatriciaguzman.r@gmail.com', '', '', '', 1),
(1553, 86, '17067', '2024-06-04', 'HERNANDEZ MUÑOZ MARISOL', '', '', '0000-00-00', '2225999800', 'marisolhernandezog@gmail.com', '', '', '', 1),
(1554, 86, '17086', '2024-06-04', 'HERNANDEZ PACHECO JAVIER', '', '', '0000-00-00', '3 10 55 88', '0', '', '', '', 1),
(1555, 86, '19051', '2024-06-04', 'JIMENEZ MAGALLANES MARTHA ALEJANDRA', '', '', '0000-00-00', '7772078089', 'alejandrajimenez33@hotmail.com', '', '', '', 1),
(1556, 86, '22255', '2024-06-04', 'MORALES GONZALEZ DULCE MARJORIE ESTEPHANIE', '', '', '0000-00-00', '7774207378', 'marr.j0@hotmail.com', '', '', '', 1),
(1557, 86, '22262', '2024-06-04', 'MONTES DELGADO JUAN CARLOS', '', '', '0000-00-00', '7775541427', 'juancarlosmontes1969@gmail.com', '', '', '', 1),
(1558, 86, '26195', '2024-06-04', 'PERALTA ZAVALETA DIANA LAURA', '', '', '0000-00-00', '7771338502', 'dianalzavaleta@hotmail.com', '', '', '', 1),
(1559, 86, '28223', '2024-06-04', 'RAMOS TORRES JACKELINE ARACELY', '', '', '0000-00-00', '7774391644', 'Jart_slr@hotmail.com', '', '', '', 1),
(1560, 86, '35021', '2024-06-04', 'ZARCO CASTILLEJOS EDUARDO', '', '', '0000-00-00', '7777909134', 'edzarcastico@gmail.com', '', '', '', 1),
(1561, 87, '25072', '2024-06-04', 'ORTIZ FIGUEROA IXEL', '', '', '0000-00-00', '7771356969', 'ixel47@hotmail.com', '', '', '', 1),
(1562, 87, '11095', '2024-06-04', 'BAHENA ORTIZ MARTHA', '', '', '0000-00-00', '3 21 39 64', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1563, 87, '16293', '2024-06-04', 'GALAN DELGADO CESAR AUGUSTO', '', '', '0000-00-00', '7775101449', 'cesar_inn_g@hotmail.com', '', '', '', 1),
(1564, 87, '19014', '2024-06-04', 'JUALLEK VILLALOBOS SARAI', '', '', '0000-00-00', '7772173063', 'sarai_mtra@hotmail.com', '', '', '', 1),
(1565, 87, '22004', '2024-06-04', 'MURO JAIMEZ MARIA OLGA', '', '', '0000-00-00', '7771356383', 'olgamariamuro@gmail.com', '', '', '', 1),
(1566, 87, '28237', '2024-06-04', 'RODRIGUEZ RAMIREZ AFRICA MIROSLAVA', '', '', '0000-00-00', '7775925701', 'afri_82@hotmail.com', '', '', '', 1),
(1567, 87, '12141', '2024-06-04', 'CRUZ PATIÑO DULCE HAYDEE', '', '', '0000-00-00', '7772570686', 'cruzpa07@gmail.com', '', '', '', 1),
(1568, 87, '14039', '2024-06-04', 'ESCOBEDO SALGADO FIDEL', '', '', '0000-00-00', '7773286825', 'f.escobedo.salgado@gmail.com', '', '', '', 1),
(1569, 87, '26104', '2024-06-04', 'PONCE DE LEON HERNANDEZ ALBERTO', '', '', '0000-00-00', '7771757517', 'lic.albertoponce@hotmail.com', '', '', '', 1),
(1570, 87, '11065', '2024-06-04', 'BECERRA DIAZ ALEJANDRA', '', '', '0000-00-00', '7773282558', 'alebecerra-@hotmail.com', '', '', '', 1),
(1571, 87, '12063', '2024-06-04', 'CEDILLO FLORES MARTHA', '', '', '0000-00-00', '3 85 08 45', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1572, 87, '16097', '2024-06-04', 'GANTE PALACIOS BERTHA', '', '', '0000-00-00', '7774222450', 'bertha_gante@hotmail.com', '', '', '', 1),
(1573, 87, '22066', '2024-06-04', 'MORANTE SANCHEZ JUANA', '', '', '0000-00-00', '5 12 03 06', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1574, 87, '32152', '2024-06-04', 'VARGAS CALVO DALIA', '', '', '0000-00-00', '7771246605', 'dadichacon@hotmail.com', '', '', '', 1),
(1575, 87, '10290', '2024-06-04', 'AGUILAR SANCHEZ VALERIA SAYURY', '', '', '0000-00-00', '7774932578', 'valeriasayuri14@gmail.com', '', '', '', 1),
(1576, 87, '16199', '2024-06-04', 'GARCIA LOPEZ ADRIANA', '', '', '0000-00-00', '7771366098', 'adrygl1@hotmail.com', '', '', '', 1),
(1577, 87, '16226', '2024-06-04', 'GARDUÑO TAPIA MARIA DE LOS ANGELES', '', '', '0000-00-00', '7775387802', 'angytap45@gmail.com', '', '', '', 1),
(1578, 87, '16376', '2024-06-04', 'GARCIA SANDOVAL GRECIA', '', '', '0000-00-00', '7773759750', 'gregas2411@gmail.com', '', '', '', 1),
(1579, 87, '17077', '2024-06-04', 'HONORATO VALDEZ JOSE LUIS', '', '', '0000-00-00', '7774944210', 'luishonoval@hotmail.com', '', '', '', 1),
(1580, 87, '25115', '2024-06-04', 'ORTIZ DIAZ DAYLIN MARIANA', '', '', '0000-00-00', '7772661385', 'daylin.ortiz@hotmail.com', '', '', '', 1),
(1581, 87, '26186', '2024-06-04', 'PAZOS CORTES DANELY CRISTELL', '', '', '0000-00-00', '3197939', 'danelycristell@gmail.com', '', '', '', 1),
(1582, 87, '28054', '2024-06-04', 'RODRIGUEZ GONZALEZ PATRICIA', '', '', '0000-00-00', '7771148364', 'paty.1rod@hotmail.com.mx', '', '', '', 1),
(1583, 87, '28313', '2024-06-04', 'RAMOS QUIROZ MARTINA', '', '', '0000-00-00', '7772310236', 'martha.ramosq11@gmail.com', '', '', '', 1),
(1584, 87, '29167', '2024-06-04', 'SANCHEZ GERVACIO BRENDA', '', '', '0000-00-00', '77732443506', 'gervi57@hotmail.com', '', '', '', 1),
(1585, 87, '32200', '2024-06-04', 'VARGAS VILCHIS JOCELYN NEREIDA', '', '', '0000-00-00', '7775312260', 'jocelyyn14@hotmail.com', '', '', '', 1),
(1586, 88, '17005', '2024-06-04', 'HERNANDEZ HERNANDEZ MARTHA ELENA', '', '', '0000-00-00', '7772346582', 'hhme@live.com.mx', '', '', '', 1),
(1587, 88, '17111', '2024-06-04', 'HERNANDEZ LOPEZ MOISES', '', '', '0000-00-00', '7772640988', 'moihl72@gmail.com', '', '', '', 1),
(1588, 88, '28366', '2024-06-04', 'RODRIGUEZ ARROYO DANIELA FERNANDA', '', '', '0000-00-00', '7775635884', 'dani.rdz.og@hotmail.com', '', '', '', 1),
(1589, 88, '30053', '2024-06-04', 'TELLEZ MARTINEZ VERONICA', '', '', '0000-00-00', '3 14 31 60', 'certificado.digital@tsjmorelos.gob.mx', '', '', '', 1),
(1590, 88, '22055', '2024-06-04', 'MARQUEZ GONZALEZ MARIA DEL ROCIO', '', '', '0000-00-00', '7771332519', 'rosmar73@hotmail.com', '', '', '', 1),
(1591, 88, '29047', '2024-06-04', 'SALGADO VALDEZ ROSA HILDA', '', '', '0000-00-00', '7772113301', 'rousalgado70@gmail.com', '', '', '', 1),
(1592, 88, '12065', '2024-06-04', 'CRUZ CUEVAS AZUCENA', '', '', '0000-00-00', '7773320361', 'homero1170@hotmail.com', '', '', '', 1),
(1593, 88, '21063', '2024-06-04', 'LOPEZ GARCIA EDMUNDO', '', '', '0000-00-00', '7771883814', 'matmunlg@gmail.com', '', '', '', 1),
(1594, 88, '13098', '2024-06-04', 'DOMINGUEZ MARTINEZ MARIA ALEJANDRA', '', '', '0000-00-00', '7776032971', 'mariadominguezmtz@gmail.com', '', '', '', 1),
(1595, 88, '16301', '2024-06-04', 'GRANADOS TEJEDA YHANIA', '', '', '0000-00-00', '7771160152', 'riuyingt@gmail.com', '', '', '', 1),
(1596, 88, '19073', '2024-06-04', 'JUAREZ ROSA CRUZ SOFIA', '', '', '0000-00-00', '7772338178', 'sofiajuarezr@gmail.com', '', '', '', 1),
(1597, 88, '22312', '2024-06-04', 'MENA SALGADO XOCHILT', '', '', '0000-00-00', '7774761659', 'xomena2824@gmail.com', '', '', '', 1),
(1598, 88, '29206', '2024-06-04', 'SERAFIN PEREZ ARELI', '', '', '0000-00-00', '7772130162', 'arely_3987@hotmail.com', '', '', '', 1),
(1599, 88, '29263', '2024-06-04', 'SALGADO NAJERA ROSA', '', '', '0000-00-00', '3153766', 'rodad1109@yahoo.com.mx', '', '', '', 1),
(1600, 88, '29276', '2024-06-04', 'SANCHEZ GONZALEZ CAROLINA', '', '', '0000-00-00', '7773033151', 'rb_caro@hotmail.com', '', '', '', 1),
(1601, 88, '32119', '2024-06-04', 'VILLEGAS GONZALEZ ISMAEL', '', '', '0000-00-00', '7773523068', 'darkitty45@gmai.com', '', '', '', 1),
(1602, 88, '16291', '2024-06-04', 'GARCIA RAMIREZ LUIS ANTONIO', '', '', '0000-00-00', '7777899817', 'luisgr120690@gmail.com', '', '', '', 1),
(1603, 88, '22155', '2024-06-04', 'MARTINEZ MENCHACA OSBALDO', '', '', '0000-00-00', '7361074145', 'mtz_oz.m@hotmail.com', '', '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student_section_class`
--

CREATE TABLE `student_section_class` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_mark` varchar(50) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `total_mark`, `class_id`, `teacher_id`) VALUES
(1, 'POO', '1', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `register_date` date NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `date_of_birth` date NOT NULL,
  `age` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `job_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `register_date`, `fname`, `lname`, `image`, `date_of_birth`, `age`, `contact`, `email`, `address`, `city`, `country`, `job_type`) VALUES
(1, '2024-06-01', 'lalo', 'martinez', 'assets/images/default/default_avatar.png', '2024-06-19', '30', '556564564564', 'corre@gmail.com', 'dasdsa', 'zacatepec', 'mexico', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `fname`, `lname`, `email`) VALUES
(1, 'admin', 'd8d85cbe3cae7a5dbbccb3e2f7be77d0', 'ADMINISTRADOR DEL', 'SISTEMA', 'john@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aistencias`
--
ALTER TABLE `aistencias`
  ADD PRIMARY KEY (`id_asistencia`);

--
-- Indices de la tabla `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indices de la tabla `cat_assignment_area`
--
ALTER TABLE `cat_assignment_area`
  ADD PRIMARY KEY (`id_assignment`);

--
-- Indices de la tabla `cat_tipos_asistencias`
--
ALTER TABLE `cat_tipos_asistencias`
  ADD PRIMARY KEY (`id_tipoAsistencia`);

--
-- Indices de la tabla `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indices de la tabla `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expenses_id`);

--
-- Indices de la tabla `expenses_name`
--
ALTER TABLE `expenses_name`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marksheet`
--
ALTER TABLE `marksheet`
  ADD PRIMARY KEY (`marksheet_id`);

--
-- Indices de la tabla `marksheet_student`
--
ALTER TABLE `marksheet_student`
  ADD PRIMARY KEY (`marksheet_student_id`);

--
-- Indices de la tabla `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indices de la tabla `payment_name`
--
ALTER TABLE `payment_name`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indices de la tabla `sessions_public`
--
ALTER TABLE `sessions_public`
  ADD PRIMARY KEY (`idConsec`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indices de la tabla `student_section_class`
--
ALTER TABLE `student_section_class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_student` (`student_id`),
  ADD KEY `fk_section` (`section_id`),
  ADD KEY `fk_class` (`class_id`);

--
-- Indices de la tabla `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indices de la tabla `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aistencias`
--
ALTER TABLE `aistencias`
  MODIFY `id_asistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cat_assignment_area`
--
ALTER TABLE `cat_assignment_area`
  MODIFY `id_assignment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `cat_tipos_asistencias`
--
ALTER TABLE `cat_tipos_asistencias`
  MODIFY `id_tipoAsistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expenses_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `expenses_name`
--
ALTER TABLE `expenses_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marksheet`
--
ALTER TABLE `marksheet`
  MODIFY `marksheet_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marksheet_student`
--
ALTER TABLE `marksheet_student`
  MODIFY `marksheet_student_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment_name`
--
ALTER TABLE `payment_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `sessions_public`
--
ALTER TABLE `sessions_public`
  MODIFY `idConsec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1604;

--
-- AUTO_INCREMENT de la tabla `student_section_class`
--
ALTER TABLE `student_section_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `student_section_class`
--
ALTER TABLE `student_section_class`
  ADD CONSTRAINT `fk_class` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_section` FOREIGN KEY (`section_id`) REFERENCES `section` (`section_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
