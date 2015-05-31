-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2015 a las 17:06:36
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ciersur`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add body panel admin', 7, 'add_bodypaneladmin'),
(20, 'Can change body panel admin', 7, 'change_bodypaneladmin'),
(21, 'Can delete body panel admin', 7, 'delete_bodypaneladmin'),
(22, 'Can add data person', 8, 'add_dataperson'),
(23, 'Can change data person', 8, 'change_dataperson'),
(24, 'Can delete data person', 8, 'delete_dataperson'),
(25, 'Can add aditional date', 9, 'add_aditionaldate'),
(26, 'Can change aditional date', 9, 'change_aditionaldate'),
(27, 'Can delete aditional date', 9, 'delete_aditionaldate'),
(28, 'Can add master_ teacher', 10, 'add_master_teacher'),
(29, 'Can change master_ teacher', 10, 'change_master_teacher'),
(30, 'Can delete master_ teacher', 10, 'delete_master_teacher'),
(31, 'Can add course', 11, 'add_course'),
(32, 'Can change course', 11, 'change_course'),
(33, 'Can delete course', 11, 'delete_course'),
(34, 'Can add selecionados_ aspirantes', 12, 'add_selecionados_aspirantes'),
(35, 'Can change selecionados_ aspirantes', 12, 'change_selecionados_aspirantes'),
(36, 'Can delete selecionados_ aspirantes', 12, 'delete_selecionados_aspirantes'),
(37, 'Can add inscripcion_cursos', 13, 'add_inscripcion_cursos'),
(38, 'Can change inscripcion_cursos', 13, 'change_inscripcion_cursos'),
(39, 'Can delete inscripcion_cursos', 13, 'delete_inscripcion_cursos'),
(40, 'Can add estudiante_nota', 14, 'add_estudiante_nota'),
(41, 'Can change estudiante_nota', 14, 'change_estudiante_nota'),
(42, 'Can delete estudiante_nota', 14, 'delete_estudiante_nota'),
(43, 'Can add departamento', 15, 'add_departamento'),
(44, 'Can change departamento', 15, 'change_departamento'),
(45, 'Can delete departamento', 15, 'delete_departamento'),
(46, 'Can add municipio', 16, 'add_municipio'),
(47, 'Can change municipio', 16, 'change_municipio'),
(48, 'Can delete municipio', 16, 'delete_municipio'),
(49, 'Can add year', 17, 'add_year'),
(50, 'Can change year', 17, 'change_year'),
(51, 'Can delete year', 17, 'delete_year'),
(52, 'Can add day', 18, 'add_day'),
(53, 'Can change day', 18, 'change_day'),
(54, 'Can delete day', 18, 'delete_day'),
(55, 'Can add month', 19, 'add_month'),
(56, 'Can change month', 19, 'change_month'),
(57, 'Can delete month', 19, 'delete_month'),
(58, 'Can add sex', 20, 'add_sex'),
(59, 'Can change sex', 20, 'change_sex'),
(60, 'Can delete sex', 20, 'delete_sex'),
(61, 'Can add education secretary', 21, 'add_educationsecretary'),
(62, 'Can change education secretary', 21, 'change_educationsecretary'),
(63, 'Can delete education secretary', 21, 'delete_educationsecretary'),
(64, 'Can add areas', 22, 'add_areas'),
(65, 'Can change areas', 22, 'change_areas'),
(66, 'Can delete areas', 22, 'delete_areas'),
(67, 'Can add zona', 23, 'add_zona'),
(68, 'Can change zona', 23, 'change_zona'),
(69, 'Can delete zona', 23, 'delete_zona'),
(70, 'Can add caracter', 24, 'add_caracter'),
(71, 'Can change caracter', 24, 'change_caracter'),
(72, 'Can delete caracter', 24, 'delete_caracter'),
(73, 'Can add etnia', 25, 'add_etnia'),
(74, 'Can change etnia', 25, 'change_etnia'),
(75, 'Can delete etnia', 25, 'delete_etnia'),
(76, 'Can add nivel_escolar', 26, 'add_nivel_escolar'),
(77, 'Can change nivel_escolar', 26, 'change_nivel_escolar'),
(78, 'Can delete nivel_escolar', 26, 'delete_nivel_escolar'),
(79, 'Can add actividades_curso', 27, 'add_actividades_curso'),
(80, 'Can change actividades_curso', 27, 'change_actividades_curso'),
(81, 'Can delete actividades_curso', 27, 'delete_actividades_curso'),
(82, 'Can add certificacion', 28, 'add_certificacion'),
(83, 'Can change certificacion', 28, 'change_certificacion'),
(84, 'Can delete certificacion', 28, 'delete_certificacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$20000$J6YPo7hLqMyH$tyuKNn/SkkaFKUygS0i8Z0k2hn7fhhuMpDT+tT/c2cg=', '2015-05-31 14:22:41.501000', 1, 'admin', '', '', 'admin@dfsd.com', 1, 1, '2015-05-31 14:22:22.500000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_actividades_curso`
--

CREATE TABLE IF NOT EXISTS `ciersur_actividades_curso` (
  `id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_aditionaldate`
--

CREATE TABLE IF NOT EXISTS `ciersur_aditionaldate` (
  `id` int(11) NOT NULL,
  `numero_identificacion` varchar(30) NOT NULL,
  `ano_de_Nacimiento_id` int(11) NOT NULL,
  `dia_de_Nacimiento_id` int(11) NOT NULL,
  `mes_de_Nacimiento_id` int(11) NOT NULL,
  `sexo_id` int(11) NOT NULL,
  `zona_donde_labora_id` int(11) NOT NULL,
  `Labor_docente_institucion_id` int(11) NOT NULL,
  `etno_educativamente_orientada_hacia_id` int(11) NOT NULL,
  `nivel_escolar_de_su_labor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_areas`
--

CREATE TABLE IF NOT EXISTS `ciersur_areas` (
  `id` int(11) NOT NULL,
  `areas` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciersur_areas`
--

INSERT INTO `ciersur_areas` (`id`, `areas`) VALUES
(1, 'Matematicas'),
(2, 'Educacion Ambiental (incluye F'),
(3, 'Lenguaje (Lengua Castellana, I'),
(4, 'Informatica'),
(5, 'Otras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_bodypaneladmin`
--

CREATE TABLE IF NOT EXISTS `ciersur_bodypaneladmin` (
  `id` int(11) NOT NULL,
  `Title` varchar(30) NOT NULL,
  `Body` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_caracter`
--

CREATE TABLE IF NOT EXISTS `ciersur_caracter` (
  `id` int(11) NOT NULL,
  `caracter` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciersur_caracter`
--

INSERT INTO `ciersur_caracter` (`id`, `caracter`) VALUES
(1, 'Agropecuaria'),
(2, 'Comercial'),
(3, 'Tecnica'),
(4, 'Academica'),
(5, 'Promoción social'),
(6, 'Finanzas'),
(7, 'Administracion'),
(8, 'Ecología'),
(9, 'Medio ambiente'),
(10, 'Industrial'),
(11, 'Informática'),
(12, 'Minería'),
(13, 'Salud'),
(14, 'Recreación'),
(15, 'Turismo'),
(16, 'Deporte'),
(17, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_certificacion`
--

CREATE TABLE IF NOT EXISTS `ciersur_certificacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciersur_certificacion`
--

INSERT INTO `ciersur_certificacion` (`id`, `nombre`) VALUES
(1, 'No defido'),
(2, 'Asistencia'),
(3, 'Participación'),
(4, 'Excelencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_course`
--

CREATE TABLE IF NOT EXISTS `ciersur_course` (
  `id` int(11) NOT NULL,
  `Docente_encargado_id` int(11) NOT NULL,
  `CourseName` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciersur_course`
--

INSERT INTO `ciersur_course` (`id`, `Docente_encargado_id`, `CourseName`) VALUES
(1, 1, 'Informatica basica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_dataperson`
--

CREATE TABLE IF NOT EXISTS `ciersur_dataperson` (
  `id` int(11) NOT NULL,
  `numero_identificacion` varchar(30) NOT NULL,
  `nombre_completo` varchar(30) NOT NULL,
  `ano_de_Nacimiento_id` int(11) NOT NULL,
  `dia_de_Nacimiento_id` int(11) NOT NULL,
  `mes_de_Nacimiento_id` int(11) NOT NULL,
  `sexo_id` int(11) NOT NULL,
  `departemento_id` int(11) NOT NULL,
  `municipio_id` int(11) NOT NULL,
  `residencia` varchar(30) NOT NULL,
  `sede_a_la_que_pertenece` varchar(30) NOT NULL,
  `institucion_a_la_que_pertenece` varchar(30) NOT NULL,
  `grado` varchar(30) NOT NULL,
  `secretaria_de_educacion_id` int(11) NOT NULL,
  `area_de_inscripcion_id` int(11) NOT NULL,
  `tiene_usuario_Colombia_Aprende` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciersur_dataperson`
--

INSERT INTO `ciersur_dataperson` (`id`, `numero_identificacion`, `nombre_completo`, `ano_de_Nacimiento_id`, `dia_de_Nacimiento_id`, `mes_de_Nacimiento_id`, `sexo_id`, `departemento_id`, `municipio_id`, `residencia`, `sede_a_la_que_pertenece`, `institucion_a_la_que_pertenece`, `grado`, `secretaria_de_educacion_id`, `area_de_inscripcion_id`, `tiene_usuario_Colombia_Aprende`) VALUES
(1, '1144057518', 'Mauro castillo', 4, 7, 6, 1, 6, 6, 'Calle 32 numero 589', 'Buga', 'Colegio Santa fe', '5', 16, 4, 1),
(2, '21452321300', 'Maria Soto', 6, 5, 7, 2, 5, 5, 'Calle 102 numero 369', 'Bolivar', 'Colegio Santa madre alverta', '9', 15, 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_day`
--

CREATE TABLE IF NOT EXISTS `ciersur_day` (
  `id` int(11) NOT NULL,
  `day` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciersur_day`
--

INSERT INTO `ciersur_day` (`id`, `day`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9'),
(10, '10'),
(11, '11'),
(12, '12'),
(13, '13'),
(14, '14'),
(15, '15'),
(16, '16'),
(17, '17'),
(18, '18'),
(19, '19'),
(20, '20'),
(21, '21'),
(22, '22'),
(23, '23'),
(24, '24'),
(25, '25'),
(26, '26'),
(27, '27'),
(28, '28'),
(29, '29'),
(30, '30'),
(31, '31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_departamento`
--

CREATE TABLE IF NOT EXISTS `ciersur_departamento` (
  `id` int(11) NOT NULL,
  `iddepartamento` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciersur_departamento`
--

INSERT INTO `ciersur_departamento` (`id`, `iddepartamento`, `nombre`) VALUES
(1, '1', 'AMAZONAS'),
(2, '2', 'ANTIOQUIA'),
(3, '3', 'ARAUCA'),
(4, '4', 'ATLÁNTICO'),
(5, '5', 'BOLÍVAR'),
(6, '6', 'BOYACÁ'),
(7, '7', 'CALDAS'),
(8, '8', 'CAQUETÁ'),
(9, '9', 'CASANARE'),
(10, '10', 'CAUCA'),
(11, '11', 'CESAR'),
(12, '12', 'CHOCÓ'),
(13, '13', 'CÓRDOBA'),
(14, '14', 'CUNDINAMARCA'),
(15, '15', 'GUAINÍA'),
(16, '16', 'GUAVIARE'),
(17, '17', 'HUILA'),
(18, '18', 'LA GUAJIRA'),
(19, '19', 'MAGDALENA'),
(20, '20', 'META'),
(21, '21', 'NARIÑO'),
(22, '22', 'NORTE DE SANTANDER'),
(23, '23', 'PUTUMAYO'),
(24, '24', 'QUINDÍO'),
(25, '25', 'RISARALDA'),
(26, '26', 'SAN ANDRÉS Y ROVIDENCIA'),
(27, '27', 'SANTANDER'),
(28, '28', 'SUCRE'),
(29, '29', 'TOLIMA'),
(30, '30', 'VALLE DEL CAUCA'),
(31, '31', 'VAUPÉS'),
(32, '32', 'VICHADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_educationsecretary`
--

CREATE TABLE IF NOT EXISTS `ciersur_educationsecretary` (
  `id` int(11) NOT NULL,
  `secretary` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciersur_educationsecretary`
--

INSERT INTO `ciersur_educationsecretary` (`id`, `secretary`) VALUES
(1, 'Buenaventura'),
(2, 'Amazonas'),
(3, 'Buga'),
(4, 'Cali'),
(5, 'Caqueta'),
(6, 'Cartago'),
(7, 'Cauca'),
(8, 'Florencias'),
(9, 'Huila'),
(10, 'Ibage'),
(11, 'Ipiales'),
(12, 'Jamundi'),
(13, 'Nariño'),
(14, 'Neiva'),
(15, 'Palmira'),
(16, 'Pasto'),
(17, 'Pitalito'),
(18, 'Popayan'),
(19, 'Putumayo'),
(20, 'Tolima'),
(21, 'Tulua'),
(22, 'Tumaco'),
(23, 'Valle de Cauca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_estudiante_nota`
--

CREATE TABLE IF NOT EXISTS `ciersur_estudiante_nota` (
  `id` int(11) NOT NULL,
  `estudiante_id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `certificado_obtenido_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciersur_estudiante_nota`
--

INSERT INTO `ciersur_estudiante_nota` (`id`, `estudiante_id`, `curso_id`, `certificado_obtenido_id`) VALUES
(1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_etnia`
--

CREATE TABLE IF NOT EXISTS `ciersur_etnia` (
  `id` int(11) NOT NULL,
  `etnia` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciersur_etnia`
--

INSERT INTO `ciersur_etnia` (`id`, `etnia`) VALUES
(1, 'Etnia afrocolombiana'),
(2, 'Etnia indígena'),
(3, 'Etnia Rom'),
(4, 'Ninguna de las anteriores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_inscripcion_cursos`
--

CREATE TABLE IF NOT EXISTS `ciersur_inscripcion_cursos` (
  `id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `docente_a_inscribir_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciersur_inscripcion_cursos`
--

INSERT INTO `ciersur_inscripcion_cursos` (`id`, `curso_id`, `docente_a_inscribir_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_master_teacher`
--

CREATE TABLE IF NOT EXISTS `ciersur_master_teacher` (
  `id` int(11) NOT NULL,
  `nombre_completo` varchar(30) NOT NULL,
  `numero_identificacion` varchar(30) NOT NULL,
  `ano_de_Nacimiento_id` int(11) NOT NULL,
  `dia_de_Nacimiento_id` int(11) NOT NULL,
  `mes_de_Nacimiento_id` int(11) NOT NULL,
  `sexo_id` int(11) NOT NULL,
  `zona_donde_labora_id` int(11) NOT NULL,
  `Labor_docente_institucion_id` int(11) NOT NULL,
  `etno_educativamente_orientada_hacia_id` int(11) NOT NULL,
  `nivel_escolar_de_su_labor_id` int(11) NOT NULL,
  `experiencia_prescolar` int(11) NOT NULL,
  `anos_de_experiencia_Basica_primaria` int(11) NOT NULL,
  `anos_de_experiencia_Basica_secundaria` int(11) NOT NULL,
  `anos_de_experiencia_Educion_media` int(11) NOT NULL,
  `anos_de_experiencia_Educion_superior` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciersur_master_teacher`
--

INSERT INTO `ciersur_master_teacher` (`id`, `nombre_completo`, `numero_identificacion`, `ano_de_Nacimiento_id`, `dia_de_Nacimiento_id`, `mes_de_Nacimiento_id`, `sexo_id`, `zona_donde_labora_id`, `Labor_docente_institucion_id`, `etno_educativamente_orientada_hacia_id`, `nivel_escolar_de_su_labor_id`, `experiencia_prescolar`, `anos_de_experiencia_Basica_primaria`, `anos_de_experiencia_Basica_secundaria`, `anos_de_experiencia_Educion_media`, `anos_de_experiencia_Educion_superior`) VALUES
(1, 'Lucas Perla', '9965583', 3, 4, 8, 1, 1, 3, 2, 3, 2, 2, 1, 2, 1),
(2, 'Victor Puentes', '1558969877', 8, 5, 5, 1, 3, 2, 2, 2, 2, 0, 0, 0, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_month`
--

CREATE TABLE IF NOT EXISTS `ciersur_month` (
  `id` int(11) NOT NULL,
  `month` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciersur_month`
--

INSERT INTO `ciersur_month` (`id`, `month`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9'),
(10, '10'),
(11, '11'),
(12, '12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_municipio`
--

CREATE TABLE IF NOT EXISTS `ciersur_municipio` (
  `id` int(11) NOT NULL,
  `idmunicipio` varchar(50) NOT NULL,
  `nombreMunicipio` varchar(50) NOT NULL,
  `departamento_iddepartamento` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1113 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciersur_municipio`
--

INSERT INTO `ciersur_municipio` (`id`, `idmunicipio`, `nombreMunicipio`, `departamento_iddepartamento`) VALUES
(1, '1', 'EL ENCANTO', '1'),
(2, '2', 'LA CHORRERA', '1'),
(3, '3', 'LA PEDRERA', '1'),
(4, '4', 'LA VICTORIA', '1'),
(5, '5', 'LETICIA', '1'),
(6, '6', 'MIRITI', '1'),
(7, '7', 'PUERTO ALEGRIA', '1'),
(8, '8', 'PUERTO ARICA', '1'),
(9, '9', 'PUERTO NARIÑO', '1'),
(10, '10', 'PUERTO SANTANDER', '1'),
(11, '11', 'TURAPACA', '1'),
(12, '12', 'ABEJORRAL', '2'),
(13, '13', 'ABRIAQUI', '2'),
(14, '14', 'ALEJANDRIA', '2'),
(15, '15', 'AMAGA', '2'),
(16, '16', 'AMALFI', '2'),
(17, '17', 'ANDES', '2'),
(18, '18', 'ANGELOPOLIS', '2'),
(19, '19', 'ANGOSTURA', '2'),
(20, '20', 'ANORI', '2'),
(21, '21', 'ANTIOQUIA', '2'),
(22, '22', 'ANZA', '2'),
(23, '23', 'APARTADO', '2'),
(24, '24', 'ARBOLETES', '2'),
(25, '25', 'ARGELIA', '2'),
(26, '26', 'ARMENIA', '2'),
(27, '27', 'BARBOSA', '2'),
(28, '28', 'BELLO', '2'),
(29, '29', 'BELMIRA', '2'),
(30, '30', 'BETANIA', '2'),
(31, '31', 'BETULIA', '2'),
(32, '32', 'BOLIVAR', '2'),
(33, '33', 'BRICEÑO', '2'),
(34, '34', 'BURITICA', '2'),
(35, '35', 'CACERES', '2'),
(36, '36', 'CAICEDO', '2'),
(37, '37', 'CALDAS', '2'),
(38, '38', 'CAMPAMENTO', '2'),
(39, '39', 'CANASGORDAS', '2'),
(40, '40', 'CARACOLI', '2'),
(41, '41', 'CARAMANTA', '2'),
(42, '42', 'CAREPA', '2'),
(43, '43', 'CARMEN DE VIBORAL', '2'),
(44, '44', 'CAROLINA DEL PRINCIPE', '2'),
(45, '45', 'CAUCASIA', '2'),
(46, '46', 'CHIGORODO', '2'),
(47, '47', 'CISNEROS', '2'),
(48, '48', 'COCORNA', '2'),
(49, '49', 'CONCEPCION', '2'),
(50, '50', 'CONCORDIA', '2'),
(51, '51', 'COPACABANA', '2'),
(52, '52', 'DABEIBA', '2'),
(53, '53', 'DONMATIAS', '2'),
(54, '54', 'EBEJICO', '2'),
(55, '55', 'EL BAGRE', '2'),
(56, '56', 'EL PENOL', '2'),
(57, '57', 'EL RETIRO', '2'),
(58, '58', 'ENTRERRIOS', '2'),
(59, '59', 'ENVIGADO', '2'),
(60, '60', 'FREDONIA', '2'),
(61, '61', 'FRONTINO', '2'),
(62, '62', 'GIRALDO', '2'),
(63, '63', 'GIRARDOTA', '2'),
(64, '64', 'GOMEZ PLATA', '2'),
(65, '65', 'GRANADA', '2'),
(66, '66', 'GUADALUPE', '2'),
(67, '67', 'GUARNE', '2'),
(68, '68', 'GUATAQUE', '2'),
(69, '69', 'HELICONIA', '2'),
(70, '70', 'HISPANIA', '2'),
(71, '71', 'ITAGUI', '2'),
(72, '72', 'ITUANGO', '2'),
(73, '73', 'JARDIN', '2'),
(74, '74', 'JERICO', '2'),
(75, '75', 'LA CEJA', '2'),
(76, '76', 'LA ESTRELLA', '2'),
(77, '77', 'LA PINTADA', '2'),
(78, '78', 'LA UNION', '2'),
(79, '79', 'LIBORINA', '2'),
(80, '80', 'MACEO', '2'),
(81, '81', 'MARINILLA', '2'),
(82, '82', 'MEDELLIN', '2'),
(83, '83', 'MONTEBELLO', '2'),
(84, '84', 'MURINDO', '2'),
(85, '85', 'MUTATA', '2'),
(86, '86', 'NARINO', '2'),
(87, '87', 'NECHI', '2'),
(88, '88', 'NECOCLI', '2'),
(89, '89', 'OLAYA', '2'),
(90, '90', 'PEQUE', '2'),
(91, '91', 'PUEBLORRICO', '2'),
(92, '92', 'PUERTO BERRIO', '2'),
(93, '93', 'PUERTO NARE', '2'),
(94, '94', 'PUERTO TRIUNFO', '2'),
(95, '95', 'REMEDIOS', '2'),
(96, '96', 'RIONEGRO', '2'),
(97, '97', 'SABANALARGA', '2'),
(98, '98', 'SABANETA', '2'),
(99, '99', 'SALGAR', '2'),
(100, '100', 'SAN ANDRES DE CUERQUIA', '2'),
(101, '101', 'SAN CARLOS', '2'),
(102, '102', 'SAN FRANCISCO', '2'),
(103, '103', 'SAN JERONIMO', '2'),
(104, '104', 'SAN JOSE DE LA MONTAÑA', '2'),
(105, '105', 'SAN JUAN DE URABA', '2'),
(106, '106', 'SAN LUIS', '2'),
(107, '107', 'SAN PEDRO DE LOS MILAGROS', '2'),
(108, '108', 'SAN PEDRO DE URABA', '2'),
(109, '109', 'SAN RAFAEL', '2'),
(110, '110', 'SAN ROQUE', '2'),
(111, '111', 'SAN VICENTE', '2'),
(112, '112', 'SANTA BARBARA', '2'),
(113, '113', 'SANTA ROSA DE OSOS', '2'),
(114, '114', 'SANTO DOMINGO', '2'),
(115, '115', 'SANTUARIO', '2'),
(116, '116', 'SEGOVIA', '2'),
(117, '117', 'SONSON', '2'),
(118, '118', 'SOPETRAN', '2'),
(119, '119', 'TAMESIS', '2'),
(120, '120', 'TARAZA', '2'),
(121, '121', 'TARSO', '2'),
(122, '122', 'TITIRIBI', '2'),
(123, '123', 'TOLEDO', '2'),
(124, '124', 'TURBO', '2'),
(125, '125', 'URAMITA', '2'),
(126, '126', 'URRAO', '2'),
(127, '127', 'VALDIVIA', '2'),
(128, '128', 'VALPARAISO', '2'),
(129, '129', 'VEGACHI', '2'),
(130, '130', 'VENECIA', '2'),
(131, '131', 'VIGIA DEL FUERTE', '2'),
(132, '132', 'YALI', '2'),
(133, '133', 'YARUMAL', '2'),
(134, '134', 'YOLOMBO', '2'),
(135, '135', 'YONDO', '2'),
(136, '136', 'ZARAGOZA', '2'),
(137, '137', 'ARAUCA', '3'),
(138, '138', 'ARAUQUITA', '3'),
(139, '139', 'CRAVO NORTE', '3'),
(140, '140', 'FORTUL', '3'),
(141, '141', 'PUERTO RONDON', '3'),
(142, '142', 'SARAVENA', '3'),
(143, '143', 'TAME', '3'),
(144, '144', 'BARANOA', '4'),
(145, '145', 'BARRANQUILLA', '4'),
(146, '146', 'CAMPO DE LA CRUZ', '4'),
(147, '147', 'CANDELARIA', '4'),
(148, '148', 'GALAPA', '4'),
(149, '149', 'JUAN DE ACOSTA', '4'),
(150, '150', 'LURUACO', '4'),
(151, '151', 'MALAMBO', '4'),
(152, '152', 'MANATI', '4'),
(153, '153', 'PALMAR DE VARELA', '4'),
(154, '154', 'PIOJO', '4'),
(155, '155', 'POLO NUEVO', '4'),
(156, '156', 'PONEDERA', '4'),
(157, '157', 'PUERTO COLOMBIA', '4'),
(158, '158', 'REPELON', '4'),
(159, '159', 'SABANAGRANDE', '4'),
(160, '160', 'SABANALARGA', '4'),
(161, '161', 'SANTA LUCIA', '4'),
(162, '162', 'SANTO TOMAS', '4'),
(163, '163', 'SOLEDAD', '4'),
(164, '164', 'SUAN', '4'),
(165, '165', 'TUBARA', '4'),
(166, '166', 'USIACURI', '4'),
(167, '167', 'ACHI', '5'),
(168, '168', 'ALTOS DEL ROSARIO', '5'),
(169, '169', 'ARENAL', '5'),
(170, '170', 'ARJONA', '5'),
(171, '171', 'ARROYOHONDO', '5'),
(172, '172', 'BARRANCO DE LOBA', '5'),
(173, '173', 'BRAZUELO DE PAPAYAL', '5'),
(174, '174', 'CALAMAR', '5'),
(175, '175', 'CANTAGALLO', '5'),
(176, '176', 'CARTAGENA DE INDIAS', '5'),
(177, '177', 'CICUCO', '5'),
(178, '178', 'CLEMENCIA', '5'),
(179, '179', 'CORDOBA', '5'),
(180, '180', 'EL CARMEN DE BOLIVAR', '5'),
(181, '181', 'EL GUAMO', '5'),
(182, '182', 'EL PENION', '5'),
(183, '183', 'HATILLO DE LOBA', '5'),
(184, '184', 'MAGANGUE', '5'),
(185, '185', 'MAHATES', '5'),
(186, '186', 'MARGARITA', '5'),
(187, '187', 'MARIA LA BAJA', '5'),
(188, '188', 'MONTECRISTO', '5'),
(189, '189', 'MORALES', '5'),
(190, '190', 'MORALES', '5'),
(191, '191', 'NOROSI', '5'),
(192, '192', 'PINILLOS', '5'),
(193, '193', 'REGIDOR', '5'),
(194, '194', 'RIO VIEJO', '5'),
(195, '195', 'SAN CRISTOBAL', '5'),
(196, '196', 'SAN ESTANISLAO', '5'),
(197, '197', 'SAN FERNANDO', '5'),
(198, '198', 'SAN JACINTO', '5'),
(199, '199', 'SAN JACINTO DEL CAUCA', '5'),
(200, '200', 'SAN JUAN DE NEPOMUCENO', '5'),
(201, '201', 'SAN MARTIN DE LOBA', '5'),
(202, '202', 'SAN PABLO', '5'),
(203, '203', 'SAN PABLO NORTE', '5'),
(204, '204', 'SANTA CATALINA', '5'),
(205, '205', 'SANTA CRUZ DE MOMPOX', '5'),
(206, '206', 'SANTA ROSA', '5'),
(207, '207', 'SANTA ROSA DEL SUR', '5'),
(208, '208', 'SIMITI', '5'),
(209, '209', 'SOPLAVIENTO', '5'),
(210, '210', 'TALAIGUA NUEVO', '5'),
(211, '211', 'TUQUISIO', '5'),
(212, '212', 'TURBACO', '5'),
(213, '213', 'TURBANA', '5'),
(214, '214', 'VILLANUEVA', '5'),
(215, '215', 'ZAMBRANO', '5'),
(216, '216', 'AQUITANIA', '6'),
(217, '217', 'ARCABUCO', '6'),
(218, '218', 'BELÉN', '6'),
(219, '219', 'BERBEO', '6'),
(220, '220', 'BETÉITIVA', '6'),
(221, '221', 'BOAVITA', '6'),
(222, '222', 'BOYACÁ', '6'),
(223, '223', 'BRICEÑO', '6'),
(224, '224', 'BUENAVISTA', '6'),
(225, '225', 'BUSBANZÁ', '6'),
(226, '226', 'CALDAS', '6'),
(227, '227', 'CAMPO HERMOSO', '6'),
(228, '228', 'CERINZA', '6'),
(229, '229', 'CHINAVITA', '6'),
(230, '230', 'CHIQUINQUIRÁ', '6'),
(231, '231', 'CHÍQUIZA', '6'),
(232, '232', 'CHISCAS', '6'),
(233, '233', 'CHITA', '6'),
(234, '234', 'CHITARAQUE', '6'),
(235, '235', 'CHIVATÁ', '6'),
(236, '236', 'CIÉNEGA', '6'),
(237, '237', 'CÓMBITA', '6'),
(238, '238', 'COPER', '6'),
(239, '239', 'CORRALES', '6'),
(240, '240', 'COVARACHÍA', '6'),
(241, '241', 'CUBARA', '6'),
(242, '242', 'CUCAITA', '6'),
(243, '243', 'CUITIVA', '6'),
(244, '244', 'DUITAMA', '6'),
(245, '245', 'EL COCUY', '6'),
(246, '246', 'EL ESPINO', '6'),
(247, '247', 'FIRAVITOBA', '6'),
(248, '248', 'FLORESTA', '6'),
(249, '249', 'GACHANTIVÁ', '6'),
(250, '250', 'GÁMEZA', '6'),
(251, '251', 'GARAGOA', '6'),
(252, '252', 'GUACAMAYAS', '6'),
(253, '253', 'GÜICÁN', '6'),
(254, '254', 'IZA', '6'),
(255, '255', 'JENESANO', '6'),
(256, '256', 'JERICÓ', '6'),
(257, '257', 'LA UVITA', '6'),
(258, '258', 'LA VICTORIA', '6'),
(259, '259', 'LABRANZA GRANDE', '6'),
(260, '260', 'MACANAL', '6'),
(261, '261', 'MARIPÍ', '6'),
(262, '262', 'MIRAFLORES', '6'),
(263, '263', 'MONGUA', '6'),
(264, '264', 'MONGUÍ', '6'),
(265, '265', 'MONIQUIRÁ', '6'),
(266, '266', 'MOTAVITA', '6'),
(267, '267', 'MUZO', '6'),
(268, '268', 'NOBSA', '6'),
(269, '269', 'NUEVO COLÓN', '6'),
(270, '270', 'OICATÁ', '6'),
(271, '271', 'OTANCHE', '6'),
(272, '272', 'PACHAVITA', '6'),
(273, '273', 'PÁEZ', '6'),
(274, '274', 'PAIPA', '6'),
(275, '275', 'PAJARITO', '6'),
(276, '276', 'PANQUEBA', '6'),
(277, '277', 'PAUNA', '6'),
(278, '278', 'PAYA', '6'),
(279, '279', 'PAZ DE RÍO', '6'),
(280, '280', 'PESCA', '6'),
(281, '281', 'PISBA', '6'),
(282, '282', 'PUERTO BOYACA', '6'),
(283, '283', 'QUÍPAMA', '6'),
(284, '284', 'RAMIRIQUÍ', '6'),
(285, '285', 'RÁQUIRA', '6'),
(286, '286', 'RONDÓN', '6'),
(287, '287', 'SABOYÁ', '6'),
(288, '288', 'SÁCHICA', '6'),
(289, '289', 'SAMACÁ', '6'),
(290, '290', 'SAN EDUARDO', '6'),
(291, '291', 'SAN JOSÉ DE PARE', '6'),
(292, '292', 'SAN LUÍS DE GACENO', '6'),
(293, '293', 'SAN MATEO', '6'),
(294, '294', 'SAN MIGUEL DE SEMA', '6'),
(295, '295', 'SAN PABLO DE BORBUR', '6'),
(296, '296', 'SANTA MARÍA', '6'),
(297, '297', 'SANTA ROSA DE VITERBO', '6'),
(298, '298', 'SANTA SOFÍA', '6'),
(299, '299', 'SANTANA', '6'),
(300, '300', 'SATIVANORTE', '6'),
(301, '301', 'SATIVASUR', '6'),
(302, '302', 'SIACHOQUE', '6'),
(303, '303', 'SOATÁ', '6'),
(304, '304', 'SOCHA', '6'),
(305, '305', 'SOCOTÁ', '6'),
(306, '306', 'SOGAMOSO', '6'),
(307, '307', 'SORA', '6'),
(308, '308', 'SORACÁ', '6'),
(309, '309', 'SOTAQUIRÁ', '6'),
(310, '310', 'SUSACÓN', '6'),
(311, '311', 'SUTARMACHÁN', '6'),
(312, '312', 'TASCO', '6'),
(313, '313', 'TIBANÁ', '6'),
(314, '314', 'TIBASOSA', '6'),
(315, '315', 'TINJACÁ', '6'),
(316, '316', 'TIPACOQUE', '6'),
(317, '317', 'TOCA', '6'),
(318, '318', 'TOGÜÍ', '6'),
(319, '319', 'TÓPAGA', '6'),
(320, '320', 'TOTA', '6'),
(321, '321', 'TUNJA', '6'),
(322, '322', 'TUNUNGUÁ', '6'),
(323, '323', 'TURMEQUÉ', '6'),
(324, '324', 'TUTA', '6'),
(325, '325', 'TUTAZÁ', '6'),
(326, '326', 'UMBITA', '6'),
(327, '327', 'VENTA QUEMADA', '6'),
(328, '328', 'VILLA DE LEYVA', '6'),
(329, '329', 'VIRACACHÁ', '6'),
(330, '330', 'ZETAQUIRA', '6'),
(331, '331', 'AGUADAS', '7'),
(332, '332', 'ANSERMA', '7'),
(333, '333', 'ARANZAZU', '7'),
(334, '334', 'BELALCAZAR', '7'),
(335, '335', 'CHINCHINÁ', '7'),
(336, '336', 'FILADELFIA', '7'),
(337, '337', 'LA DORADA', '7'),
(338, '338', 'LA MERCED', '7'),
(339, '339', 'MANIZALES', '7'),
(340, '340', 'MANZANARES', '7'),
(341, '341', 'MARMATO', '7'),
(342, '342', 'MARQUETALIA', '7'),
(343, '343', 'MARULANDA', '7'),
(344, '344', 'NEIRA', '7'),
(345, '345', 'NORCASIA', '7'),
(346, '346', 'PACORA', '7'),
(347, '347', 'PALESTINA', '7'),
(348, '348', 'PENSILVANIA', '7'),
(349, '349', 'RIOSUCIO', '7'),
(350, '350', 'RISARALDA', '7'),
(351, '351', 'SALAMINA', '7'),
(352, '352', 'SAMANA', '7'),
(353, '353', 'SAN JOSE', '7'),
(354, '354', 'SUPÍA', '7'),
(355, '355', 'VICTORIA', '7'),
(356, '356', 'VILLAMARÍA', '7'),
(357, '357', 'VITERBO', '7'),
(358, '358', 'ALBANIA', '8'),
(359, '359', 'BELÉN ANDAQUIES', '8'),
(360, '360', 'CARTAGENA DEL CHAIRA', '8'),
(361, '361', 'CURILLO', '8'),
(362, '362', 'EL DONCELLO', '8'),
(363, '363', 'EL PAUJIL', '8'),
(364, '364', 'FLORENCIA', '8'),
(365, '365', 'LA MONTAÑITA', '8'),
(366, '366', 'MILÁN', '8'),
(367, '367', 'MORELIA', '8'),
(368, '368', 'PUERTO RICO', '8'),
(369, '369', 'SAN  VICENTE DEL CAGUAN', '8'),
(370, '370', 'SAN JOSÉ DE FRAGUA', '8'),
(371, '371', 'SOLANO', '8'),
(372, '372', 'SOLITA', '8'),
(373, '373', 'VALPARAÍSO', '8'),
(374, '374', 'AGUAZUL', '9'),
(375, '375', 'CHAMEZA', '9'),
(376, '376', 'HATO COROZAL', '9'),
(377, '377', 'LA SALINA', '9'),
(378, '378', 'MANÍ', '9'),
(379, '379', 'MONTERREY', '9'),
(380, '380', 'NUNCHIA', '9'),
(381, '381', 'OROCUE', '9'),
(382, '382', 'PAZ DE ARIPORO', '9'),
(383, '383', 'PORE', '9'),
(384, '384', 'RECETOR', '9'),
(385, '385', 'SABANA LARGA', '9'),
(386, '386', 'SACAMA', '9'),
(387, '387', 'SAN LUIS DE PALENQUE', '9'),
(388, '388', 'TAMARA', '9'),
(389, '389', 'TAURAMENA', '9'),
(390, '390', 'TRINIDAD', '9'),
(391, '391', 'VILLANUEVA', '9'),
(392, '392', 'YOPAL', '9'),
(393, '393', 'ALMAGUER', '10'),
(394, '394', 'ARGELIA', '10'),
(395, '395', 'BALBOA', '10'),
(396, '396', 'BOLÍVAR', '10'),
(397, '397', 'BUENOS AIRES', '10'),
(398, '398', 'CAJIBIO', '10'),
(399, '399', 'CALDONO', '10'),
(400, '400', 'CALOTO', '10'),
(401, '401', 'CORINTO', '10'),
(402, '402', 'EL TAMBO', '10'),
(403, '403', 'FLORENCIA', '10'),
(404, '404', 'GUAPI', '10'),
(405, '405', 'INZA', '10'),
(406, '406', 'JAMBALÓ', '10'),
(407, '407', 'LA SIERRA', '10'),
(408, '408', 'LA VEGA', '10'),
(409, '409', 'LÓPEZ', '10'),
(410, '410', 'MERCADERES', '10'),
(411, '411', 'MIRANDA', '10'),
(412, '412', 'MORALES', '10'),
(413, '413', 'PADILLA', '10'),
(414, '414', 'PÁEZ', '10'),
(415, '415', 'PATIA (EL BORDO)', '10'),
(416, '416', 'PIAMONTE', '10'),
(417, '417', 'PIENDAMO', '10'),
(418, '418', 'POPAYÁN', '10'),
(419, '419', 'PUERTO TEJADA', '10'),
(420, '420', 'PURACE', '10'),
(421, '421', 'ROSAS', '10'),
(422, '422', 'SAN SEBASTIÁN', '10'),
(423, '423', 'SANTA ROSA', '10'),
(424, '424', 'SANTANDER DE QUILICHAO', '10'),
(425, '425', 'SILVIA', '10'),
(426, '426', 'SOTARA', '10'),
(427, '427', 'SUÁREZ', '10'),
(428, '428', 'SUCRE', '10'),
(429, '429', 'TIMBÍO', '10'),
(430, '430', 'TIMBIQUÍ', '10'),
(431, '431', 'TORIBIO', '10'),
(432, '432', 'TOTORO', '10'),
(433, '433', 'VILLA RICA', '10'),
(434, '434', 'AGUACHICA', '11'),
(435, '435', 'AGUSTÍN CODAZZI', '11'),
(436, '436', 'ASTREA', '11'),
(437, '437', 'BECERRIL', '11'),
(438, '438', 'BOSCONIA', '11'),
(439, '439', 'CHIMICHAGUA', '11'),
(440, '440', 'CHIRIGUANÁ', '11'),
(441, '441', 'CURUMANÍ', '11'),
(442, '442', 'EL COPEY', '11'),
(443, '443', 'EL PASO', '11'),
(444, '444', 'GAMARRA', '11'),
(445, '445', 'GONZÁLEZ', '11'),
(446, '446', 'LA GLORIA', '11'),
(447, '447', 'LA JAGUA IBIRICO', '11'),
(448, '448', 'MANAURE BALCÓN DEL CESAR', '11'),
(449, '449', 'PAILITAS', '11'),
(450, '450', 'PELAYA', '11'),
(451, '451', 'PUEBLO BELLO', '11'),
(452, '452', 'RÍO DE ORO', '11'),
(453, '453', 'ROBLES (LA PAZ)', '11'),
(454, '454', 'SAN ALBERTO', '11'),
(455, '455', 'SAN DIEGO', '11'),
(456, '456', 'SAN MARTÍN', '11'),
(457, '457', 'TAMALAMEQUE', '11'),
(458, '458', 'VALLEDUPAR', '11'),
(459, '459', 'ACANDI', '12'),
(460, '460', 'ALTO BAUDO (PIE DE PATO)', '12'),
(461, '461', 'ATRATO', '12'),
(462, '462', 'BAGADO', '12'),
(463, '463', 'BAHIA SOLANO (MUTIS)', '12'),
(464, '464', 'BAJO BAUDO (PIZARRO)', '12'),
(465, '465', 'BOJAYA (BELLAVISTA)', '12'),
(466, '466', 'CANTON DE SAN PABLO', '12'),
(467, '467', 'CARMEN DEL DARIEN', '12'),
(468, '468', 'CERTEGUI', '12'),
(469, '469', 'CONDOTO', '12'),
(470, '470', 'EL CARMEN', '12'),
(471, '471', 'ISTMINA', '12'),
(472, '472', 'JURADO', '12'),
(473, '473', 'LITORAL DEL SAN JUAN', '12'),
(474, '474', 'LLORO', '12'),
(475, '475', 'MEDIO ATRATO', '12'),
(476, '476', 'MEDIO BAUDO (BOCA DE PEPE)', '12'),
(477, '477', 'MEDIO SAN JUAN', '12'),
(478, '478', 'NOVITA', '12'),
(479, '479', 'NUQUI', '12'),
(480, '480', 'QUIBDO', '12'),
(481, '481', 'RIO IRO', '12'),
(482, '482', 'RIO QUITO', '12'),
(483, '483', 'RIOSUCIO', '12'),
(484, '484', 'SAN JOSE DEL PALMAR', '12'),
(485, '485', 'SIPI', '12'),
(486, '486', 'TADO', '12'),
(487, '487', 'UNGUIA', '12'),
(488, '488', 'UNIÓN PANAMERICANA', '12'),
(489, '489', 'AYAPEL', '13'),
(490, '490', 'BUENAVISTA', '13'),
(491, '491', 'CANALETE', '13'),
(492, '492', 'CERETÉ', '13'),
(493, '493', 'CHIMA', '13'),
(494, '494', 'CHINÚ', '13'),
(495, '495', 'CIENAGA DE ORO', '13'),
(496, '496', 'COTORRA', '13'),
(497, '497', 'LA APARTADA', '13'),
(498, '498', 'LORICA', '13'),
(499, '499', 'LOS CÓRDOBAS', '13'),
(500, '500', 'MOMIL', '13'),
(501, '501', 'MONTELÍBANO', '13'),
(502, '502', 'MONTERÍA', '13'),
(503, '503', 'MOÑITOS', '13'),
(504, '504', 'PLANETA RICA', '13'),
(505, '505', 'PUEBLO NUEVO', '13'),
(506, '506', 'PUERTO ESCONDIDO', '13'),
(507, '507', 'PUERTO LIBERTADOR', '13'),
(508, '508', 'PURÍSIMA', '13'),
(509, '509', 'SAHAGÚN', '13'),
(510, '510', 'SAN ANDRÉS SOTAVENTO', '13'),
(511, '511', 'SAN ANTERO', '13'),
(512, '512', 'SAN BERNARDO VIENTO', '13'),
(513, '513', 'SAN CARLOS', '13'),
(514, '514', 'SAN PELAYO', '13'),
(515, '515', 'TIERRALTA', '13'),
(516, '516', 'VALENCIA', '13'),
(517, '517', 'AGUA DE DIOS', '14'),
(518, '518', 'ALBAN', '14'),
(519, '519', 'ANAPOIMA', '14'),
(520, '520', 'ANOLAIMA', '14'),
(521, '521', 'ARBELAEZ', '14'),
(522, '522', 'BELTRÁN', '14'),
(523, '523', 'BITUIMA', '14'),
(524, '524', 'BOGOTÁ DC', '14'),
(525, '525', 'BOJACÁ', '14'),
(526, '526', 'CABRERA', '14'),
(527, '527', 'CACHIPAY', '14'),
(528, '528', 'CAJICÁ', '14'),
(529, '529', 'CAPARRAPÍ', '14'),
(530, '530', 'CAQUEZA', '14'),
(531, '531', 'CARMEN DE CARUPA', '14'),
(532, '532', 'CHAGUANÍ', '14'),
(533, '533', 'CHIA', '14'),
(534, '534', 'CHIPAQUE', '14'),
(535, '535', 'CHOACHÍ', '14'),
(536, '536', 'CHOCONTÁ', '14'),
(537, '537', 'COGUA', '14'),
(538, '538', 'COTA', '14'),
(539, '539', 'CUCUNUBÁ', '14'),
(540, '540', 'EL COLEGIO', '14'),
(541, '541', 'EL PEÑÓN', '14'),
(542, '542', 'EL ROSAL1', '14'),
(543, '543', 'FACATATIVA', '14'),
(544, '544', 'FÓMEQUE', '14'),
(545, '545', 'FOSCA', '14'),
(546, '546', 'FUNZA', '14'),
(547, '547', 'FÚQUENE', '14'),
(548, '548', 'FUSAGASUGA', '14'),
(549, '549', 'GACHALÁ', '14'),
(550, '550', 'GACHANCIPÁ', '14'),
(551, '551', 'GACHETA', '14'),
(552, '552', 'GAMA', '14'),
(553, '553', 'GIRARDOT', '14'),
(554, '554', 'GRANADA2', '14'),
(555, '555', 'GUACHETÁ', '14'),
(556, '556', 'GUADUAS', '14'),
(557, '557', 'GUASCA', '14'),
(558, '558', 'GUATAQUÍ', '14'),
(559, '559', 'GUATAVITA', '14'),
(560, '560', 'GUAYABAL DE SIQUIMA', '14'),
(561, '561', 'GUAYABETAL', '14'),
(562, '562', 'GUTIÉRREZ', '14'),
(563, '563', 'JERUSALÉN', '14'),
(564, '564', 'JUNÍN', '14'),
(565, '565', 'LA CALERA', '14'),
(566, '566', 'LA MESA', '14'),
(567, '567', 'LA PALMA', '14'),
(568, '568', 'LA PEÑA', '14'),
(569, '569', 'LA VEGA', '14'),
(570, '570', 'LENGUAZAQUE', '14'),
(571, '571', 'MACHETÁ', '14'),
(572, '572', 'MADRID', '14'),
(573, '573', 'MANTA', '14'),
(574, '574', 'MEDINA', '14'),
(575, '575', 'MOSQUERA', '14'),
(576, '576', 'NARIÑO', '14'),
(577, '577', 'NEMOCÓN', '14'),
(578, '578', 'NILO', '14'),
(579, '579', 'NIMAIMA', '14'),
(580, '580', 'NOCAIMA', '14'),
(581, '581', 'OSPINA PÉREZ', '14'),
(582, '582', 'PACHO', '14'),
(583, '583', 'PAIME', '14'),
(584, '584', 'PANDI', '14'),
(585, '585', 'PARATEBUENO', '14'),
(586, '586', 'PASCA', '14'),
(587, '587', 'PUERTO SALGAR', '14'),
(588, '588', 'PULÍ', '14'),
(589, '589', 'QUEBRADANEGRA', '14'),
(590, '590', 'QUETAME', '14'),
(591, '591', 'QUIPILE', '14'),
(592, '592', 'RAFAEL REYES', '14'),
(593, '593', 'RICAURTE', '14'),
(594, '594', 'SAN  ANTONIO DEL  TEQUENDAMA', '14'),
(595, '595', 'SAN BERNARDO', '14'),
(596, '596', 'SAN CAYETANO', '14'),
(597, '597', 'SAN FRANCISCO', '14'),
(598, '598', 'SAN JUAN DE RIOSECO', '14'),
(599, '599', 'SASAIMA', '14'),
(600, '600', 'SESQUILÉ', '14'),
(601, '601', 'SIBATÉ', '14'),
(602, '602', 'SILVANIA', '14'),
(603, '603', 'SIMIJACA', '14'),
(604, '604', 'SOACHA', '14'),
(605, '605', 'SOPO', '14'),
(606, '606', 'SUBACHOQUE', '14'),
(607, '607', 'SUESCA', '14'),
(608, '608', 'SUPATÁ', '14'),
(609, '609', 'SUSA', '14'),
(610, '610', 'SUTATAUSA', '14'),
(611, '611', 'TABIO', '14'),
(612, '612', 'TAUSA', '14'),
(613, '613', 'TENA', '14'),
(614, '614', 'TENJO', '14'),
(615, '615', 'TIBACUY', '14'),
(616, '616', 'TIBIRITA', '14'),
(617, '617', 'TOCAIMA', '14'),
(618, '618', 'TOCANCIPÁ', '14'),
(619, '619', 'TOPAIPÍ', '14'),
(620, '620', 'UBALÁ', '14'),
(621, '621', 'UBAQUE', '14'),
(622, '622', 'UBATÉ', '14'),
(623, '623', 'UNE', '14'),
(624, '624', 'UTICA', '14'),
(625, '625', 'VERGARA', '14'),
(626, '626', 'VIANI', '14'),
(627, '627', 'VILLA GOMEZ', '14'),
(628, '628', 'VILLA PINZÓN', '14'),
(629, '629', 'VILLETA', '14'),
(630, '630', 'VIOTA', '14'),
(631, '631', 'YACOPÍ', '14'),
(632, '632', 'ZIPACÓN', '14'),
(633, '633', 'ZIPAQUIRÁ', '14'),
(634, '634', 'BARRANCO MINAS', '15'),
(635, '635', 'CACAHUAL', '15'),
(636, '636', 'INÍRIDA', '15'),
(637, '637', 'LA GUADALUPE', '15'),
(638, '638', 'MAPIRIPANA', '15'),
(639, '639', 'MORICHAL', '15'),
(640, '640', 'PANA PANA', '15'),
(641, '641', 'PUERTO COLOMBIA', '15'),
(642, '642', 'SAN FELIPE', '15'),
(643, '643', 'CALAMAR', '16'),
(644, '644', 'EL RETORNO', '16'),
(645, '645', 'MIRAFLOREZ', '16'),
(646, '646', 'SAN JOSÉ DEL GUAVIARE', '16'),
(647, '647', 'ACEVEDO', '17'),
(648, '648', 'AGRADO', '17'),
(649, '649', 'AIPE', '17'),
(650, '650', 'ALGECIRAS', '17'),
(651, '651', 'ALTAMIRA', '17'),
(652, '652', 'BARAYA', '17'),
(653, '653', 'CAMPO ALEGRE', '17'),
(654, '654', 'COLOMBIA', '17'),
(655, '655', 'ELIAS', '17'),
(656, '656', 'GARZÓN', '17'),
(657, '657', 'GIGANTE', '17'),
(658, '658', 'GUADALUPE', '17'),
(659, '659', 'HOBO', '17'),
(660, '660', 'IQUIRA', '17'),
(661, '661', 'ISNOS', '17'),
(662, '662', 'LA ARGENTINA', '17'),
(663, '663', 'LA PLATA', '17'),
(664, '664', 'NATAGA', '17'),
(665, '665', 'NEIVA', '17'),
(666, '666', 'OPORAPA', '17'),
(667, '667', 'PAICOL', '17'),
(668, '668', 'PALERMO', '17'),
(669, '669', 'PALESTINA', '17'),
(670, '670', 'PITAL', '17'),
(671, '671', 'PITALITO', '17'),
(672, '672', 'RIVERA', '17'),
(673, '673', 'SALADO BLANCO', '17'),
(674, '674', 'SAN AGUSTÍN', '17'),
(675, '675', 'SANTA MARIA', '17'),
(676, '676', 'SUAZA', '17'),
(677, '677', 'TARQUI', '17'),
(678, '678', 'TELLO', '17'),
(679, '679', 'TERUEL', '17'),
(680, '680', 'TESALIA', '17'),
(681, '681', 'TIMANA', '17'),
(682, '682', 'VILLAVIEJA', '17'),
(683, '683', 'YAGUARA', '17'),
(684, '684', 'ALBANIA', '18'),
(685, '685', 'BARRANCAS', '18'),
(686, '686', 'DIBULLA', '18'),
(687, '687', 'DISTRACCIÓN', '18'),
(688, '688', 'EL MOLINO', '18'),
(689, '689', 'FONSECA', '18'),
(690, '690', 'HATO NUEVO', '18'),
(691, '691', 'LA JAGUA DEL PILAR', '18'),
(692, '692', 'MAICAO', '18'),
(693, '693', 'MANAURE', '18'),
(694, '694', 'RIOHACHA', '18'),
(695, '695', 'SAN JUAN DEL CESAR', '18'),
(696, '696', 'URIBIA', '18'),
(697, '697', 'URUMITA', '18'),
(698, '698', 'VILLANUEVA', '18'),
(699, '699', 'ALGARROBO', '19'),
(700, '700', 'ARACATACA', '19'),
(701, '701', 'ARIGUANI', '19'),
(702, '702', 'CERRO SAN ANTONIO', '19'),
(703, '703', 'CHIVOLO', '19'),
(704, '704', 'CIENAGA', '19'),
(705, '705', 'CONCORDIA', '19'),
(706, '706', 'EL BANCO', '19'),
(707, '707', 'EL PIÑON', '19'),
(708, '708', 'EL RETEN', '19'),
(709, '709', 'FUNDACION', '19'),
(710, '710', 'GUAMAL', '19'),
(711, '711', 'NUEVA GRANADA', '19'),
(712, '712', 'PEDRAZA', '19'),
(713, '713', 'PIJIÑO DEL CARMEN', '19'),
(714, '714', 'PIVIJAY', '19'),
(715, '715', 'PLATO', '19'),
(716, '716', 'PUEBLO VIEJO', '19'),
(717, '717', 'REMOLINO', '19'),
(718, '718', 'SABANAS DE SAN ANGEL', '19'),
(719, '719', 'SALAMINA', '19'),
(720, '720', 'SAN SEBASTIAN DE BUENAVISTA', '19'),
(721, '721', 'SAN ZENON', '19'),
(722, '722', 'SANTA ANA', '19'),
(723, '723', 'SANTA BARBARA DE PINTO', '19'),
(724, '724', 'SANTA MARTA', '19'),
(725, '725', 'SITIONUEVO', '19'),
(726, '726', 'TENERIFE', '19'),
(727, '727', 'ZAPAYAN', '19'),
(728, '728', 'ZONA BANANERA', '19'),
(729, '729', 'ACACIAS', '20'),
(730, '730', 'BARRANCA DE UPIA', '20'),
(731, '731', 'CABUYARO', '20'),
(732, '732', 'CASTILLA LA NUEVA', '20'),
(733, '733', 'CUBARRAL', '20'),
(734, '734', 'CUMARAL', '20'),
(735, '735', 'EL CALVARIO', '20'),
(736, '736', 'EL CASTILLO', '20'),
(737, '737', 'EL DORADO', '20'),
(738, '738', 'FUENTE DE ORO', '20'),
(739, '739', 'GRANADA', '20'),
(740, '740', 'GUAMAL', '20'),
(741, '741', 'LA MACARENA', '20'),
(742, '742', 'LA URIBE', '20'),
(743, '743', 'LEJANÍAS', '20'),
(744, '744', 'MAPIRIPÁN', '20'),
(745, '745', 'MESETAS', '20'),
(746, '746', 'PUERTO CONCORDIA', '20'),
(747, '747', 'PUERTO GAITÁN', '20'),
(748, '748', 'PUERTO LLERAS', '20'),
(749, '749', 'PUERTO LÓPEZ', '20'),
(750, '750', 'PUERTO RICO', '20'),
(751, '751', 'RESTREPO', '20'),
(752, '752', 'SAN  JUAN DE ARAMA', '20'),
(753, '753', 'SAN CARLOS GUAROA', '20'),
(754, '754', 'SAN JUANITO', '20'),
(755, '755', 'SAN MARTÍN', '20'),
(756, '756', 'VILLAVICENCIO', '20'),
(757, '757', 'VISTA HERMOSA', '20'),
(758, '758', 'ALBAN', '21'),
(759, '759', 'ALDAÑA', '21'),
(760, '760', 'ANCUYA', '21'),
(761, '761', 'ARBOLEDA', '21'),
(762, '762', 'BARBACOAS', '21'),
(763, '763', 'BELEN', '21'),
(764, '764', 'BUESACO', '21'),
(765, '765', 'CHACHAGUI', '21'),
(766, '766', 'COLON (GENOVA)', '21'),
(767, '767', 'CONSACA', '21'),
(768, '768', 'CONTADERO', '21'),
(769, '769', 'CORDOBA', '21'),
(770, '770', 'CUASPUD', '21'),
(771, '771', 'CUMBAL', '21'),
(772, '772', 'CUMBITARA', '21'),
(773, '773', 'EL CHARCO', '21'),
(774, '774', 'EL PEÑOL', '21'),
(775, '775', 'EL ROSARIO', '21'),
(776, '776', 'EL TABLÓN', '21'),
(777, '777', 'EL TAMBO', '21'),
(778, '778', 'FUNES', '21'),
(779, '779', 'GUACHUCAL', '21'),
(780, '780', 'GUAITARILLA', '21'),
(781, '781', 'GUALMATAN', '21'),
(782, '782', 'ILES', '21'),
(783, '783', 'IMUES', '21'),
(784, '784', 'IPIALES', '21'),
(785, '785', 'LA CRUZ', '21'),
(786, '786', 'LA FLORIDA', '21'),
(787, '787', 'LA LLANADA', '21'),
(788, '788', 'LA TOLA', '21'),
(789, '789', 'LA UNION', '21'),
(790, '790', 'LEIVA', '21'),
(791, '791', 'LINARES', '21'),
(792, '792', 'LOS ANDES', '21'),
(793, '793', 'MAGUI', '21'),
(794, '794', 'MALLAMA', '21'),
(795, '795', 'MOSQUEZA', '21'),
(796, '796', 'NARIÑO', '21'),
(797, '797', 'OLAYA HERRERA', '21'),
(798, '798', 'OSPINA', '21'),
(799, '799', 'PASTO', '21'),
(800, '800', 'PIZARRO', '21'),
(801, '801', 'POLICARPA', '21'),
(802, '802', 'POTOSI', '21'),
(803, '803', 'PROVIDENCIA', '21'),
(804, '804', 'PUERRES', '21'),
(805, '805', 'PUPIALES', '21'),
(806, '806', 'RICAURTE', '21'),
(807, '807', 'ROBERTO PAYAN', '21'),
(808, '808', 'SAMANIEGO', '21'),
(809, '809', 'SAN BERNARDO', '21'),
(810, '810', 'SAN LORENZO', '21'),
(811, '811', 'SAN PABLO', '21'),
(812, '812', 'SAN PEDRO DE CARTAGO', '21'),
(813, '813', 'SANDONA', '21'),
(814, '814', 'SANTA BARBARA', '21'),
(815, '815', 'SANTACRUZ', '21'),
(816, '816', 'SAPUYES', '21'),
(817, '817', 'TAMINANGO', '21'),
(818, '818', 'TANGUA', '21'),
(819, '819', 'TUMACO', '21'),
(820, '820', 'TUQUERRES', '21'),
(821, '821', 'YACUANQUER', '21'),
(822, '822', 'ABREGO', '22'),
(823, '823', 'ARBOLEDAS', '22'),
(824, '824', 'BOCHALEMA', '22'),
(825, '825', 'BUCARASICA', '22'),
(826, '826', 'CÁCHIRA', '22'),
(827, '827', 'CÁCOTA', '22'),
(828, '828', 'CHINÁCOTA', '22'),
(829, '829', 'CHITAGÁ', '22'),
(830, '830', 'CONVENCIÓN', '22'),
(831, '831', 'CÚCUTA', '22'),
(832, '832', 'CUCUTILLA', '22'),
(833, '833', 'DURANIA', '22'),
(834, '834', 'EL CARMEN', '22'),
(835, '835', 'EL TARRA', '22'),
(836, '836', 'EL ZULIA', '22'),
(837, '837', 'GRAMALOTE', '22'),
(838, '838', 'HACARI', '22'),
(839, '839', 'HERRÁN', '22'),
(840, '840', 'LA ESPERANZA', '22'),
(841, '841', 'LA PLAYA', '22'),
(842, '842', 'LABATECA', '22'),
(843, '843', 'LOS PATIOS', '22'),
(844, '844', 'LOURDES', '22'),
(845, '845', 'MUTISCUA', '22'),
(846, '846', 'OCAÑA', '22'),
(847, '847', 'PAMPLONA', '22'),
(848, '848', 'PAMPLONITA', '22'),
(849, '849', 'PUERTO SANTANDER', '22'),
(850, '850', 'RAGONVALIA', '22'),
(851, '851', 'SALAZAR', '22'),
(852, '852', 'SAN CALIXTO', '22'),
(853, '853', 'SAN CAYETANO', '22'),
(854, '854', 'SANTIAGO', '22'),
(855, '855', 'SARDINATA', '22'),
(856, '856', 'SILOS', '22'),
(857, '857', 'TEORAMA', '22'),
(858, '858', 'TIBÚ', '22'),
(859, '859', 'TOLEDO', '22'),
(860, '860', 'VILLA CARO', '22'),
(861, '861', 'VILLA DEL ROSARIO', '22'),
(862, '862', 'COLÓN', '23'),
(863, '863', 'MOCOA', '23'),
(864, '864', 'ORITO', '23'),
(865, '865', 'PUERTO ASÍS', '23'),
(866, '866', 'PUERTO CAYCEDO', '23'),
(867, '867', 'PUERTO GUZMÁN', '23'),
(868, '868', 'PUERTO LEGUÍZAMO', '23'),
(869, '869', 'SAN FRANCISCO', '23'),
(870, '870', 'SAN MIGUEL', '23'),
(871, '871', 'SANTIAGO', '23'),
(872, '872', 'SIBUNDOY', '23'),
(873, '873', 'VALLE DEL GUAMUEZ', '23'),
(874, '874', 'VILLAGARZÓN', '23'),
(875, '875', 'ARMENIA', '24'),
(876, '876', 'BUENAVISTA', '24'),
(877, '877', 'CALARCÁ', '24'),
(878, '878', 'CIRCASIA', '24'),
(879, '879', 'CÓRDOBA', '24'),
(880, '880', 'FILANDIA', '24'),
(881, '881', 'GÉNOVA', '24'),
(882, '882', 'LA TEBAIDA', '24'),
(883, '883', 'MONTENEGRO', '24'),
(884, '884', 'PIJAO', '24'),
(885, '885', 'QUIMBAYA', '24'),
(886, '886', 'SALENTO', '24'),
(887, '887', 'APIA', '25'),
(888, '888', 'BALBOA', '25'),
(889, '889', 'BELÉN DE UMBRÍA', '25'),
(890, '890', 'DOS QUEBRADAS', '25'),
(891, '891', 'GUATICA', '25'),
(892, '892', 'LA CELIA', '25'),
(893, '893', 'LA VIRGINIA', '25'),
(894, '894', 'MARSELLA', '25'),
(895, '895', 'MISTRATO', '25'),
(896, '896', 'PEREIRA', '25'),
(897, '897', 'PUEBLO RICO', '25'),
(898, '898', 'QUINCHÍA', '25'),
(899, '899', 'SANTA ROSA DE CABAL', '25'),
(900, '900', 'SANTUARIO', '25'),
(901, '901', 'PROVIDENCIA', '26'),
(902, '902', 'SAN ANDRES', '26'),
(903, '903', 'SANTA CATALINA', '26'),
(904, '904', 'AGUADA', '27'),
(905, '905', 'ALBANIA', '27'),
(906, '906', 'ARATOCA', '27'),
(907, '907', 'BARBOSA', '27'),
(908, '908', 'BARICHARA', '27'),
(909, '909', 'BARRANCABERMEJA', '27'),
(910, '910', 'BETULIA', '27'),
(911, '911', 'BOLÍVAR', '27'),
(912, '912', 'BUCARAMANGA', '27'),
(913, '913', 'CABRERA', '27'),
(914, '914', 'CALIFORNIA', '27'),
(915, '915', 'CAPITANEJO', '27'),
(916, '916', 'CARCASI', '27'),
(917, '917', 'CEPITA', '27'),
(918, '918', 'CERRITO', '27'),
(919, '919', 'CHARALÁ', '27'),
(920, '920', 'CHARTA', '27'),
(921, '921', 'CHIMA', '27'),
(922, '922', 'CHIPATÁ', '27'),
(923, '923', 'CIMITARRA', '27'),
(924, '924', 'CONCEPCIÓN', '27'),
(925, '925', 'CONFINES', '27'),
(926, '926', 'CONTRATACIÓN', '27'),
(927, '927', 'COROMORO', '27'),
(928, '928', 'CURITÍ', '27'),
(929, '929', 'EL CARMEN', '27'),
(930, '930', 'EL GUACAMAYO', '27'),
(931, '931', 'EL PEÑÓN', '27'),
(932, '932', 'EL PLAYÓN', '27'),
(933, '933', 'ENCINO', '27'),
(934, '934', 'ENCISO', '27'),
(935, '935', 'FLORIÁN', '27'),
(936, '936', 'FLORIDABLANCA', '27'),
(937, '937', 'GALÁN', '27'),
(938, '938', 'GAMBITA', '27'),
(939, '939', 'GIRÓN', '27'),
(940, '940', 'GUACA', '27'),
(941, '941', 'GUADALUPE', '27'),
(942, '942', 'GUAPOTA', '27'),
(943, '943', 'GUAVATÁ', '27'),
(944, '944', 'GUEPSA', '27'),
(945, '945', 'HATO', '27'),
(946, '946', 'JESÚS MARIA', '27'),
(947, '947', 'JORDÁN', '27'),
(948, '948', 'LA BELLEZA', '27'),
(949, '949', 'LA PAZ', '27'),
(950, '950', 'LANDAZURI', '27'),
(951, '951', 'LEBRIJA', '27'),
(952, '952', 'LOS SANTOS', '27'),
(953, '953', 'MACARAVITA', '27'),
(954, '954', 'MÁLAGA', '27'),
(955, '955', 'MATANZA', '27'),
(956, '956', 'MOGOTES', '27'),
(957, '957', 'MOLAGAVITA', '27'),
(958, '958', 'OCAMONTE', '27'),
(959, '959', 'OIBA', '27'),
(960, '960', 'ONZAGA', '27'),
(961, '961', 'PALMAR', '27'),
(962, '962', 'PALMAS DEL SOCORRO', '27'),
(963, '963', 'PÁRAMO', '27'),
(964, '964', 'PIEDECUESTA', '27'),
(965, '965', 'PINCHOTE', '27'),
(966, '966', 'PUENTE NACIONAL', '27'),
(967, '967', 'PUERTO PARRA', '27'),
(968, '968', 'PUERTO WILCHES', '27'),
(969, '969', 'RIONEGRO', '27'),
(970, '970', 'SABANA DE TORRES', '27'),
(971, '971', 'SAN ANDRÉS', '27'),
(972, '972', 'SAN BENITO', '27'),
(973, '973', 'SAN GIL', '27'),
(974, '974', 'SAN JOAQUÍN', '27'),
(975, '975', 'SAN JOSÉ DE MIRANDA', '27'),
(976, '976', 'SAN MIGUEL', '27'),
(977, '977', 'SAN VICENTE DE CHUCURÍ', '27'),
(978, '978', 'SANTA BÁRBARA', '27'),
(979, '979', 'SANTA HELENA', '27'),
(980, '980', 'SIMACOTA', '27'),
(981, '981', 'SOCORRO', '27'),
(982, '982', 'SUAITA', '27'),
(983, '983', 'SUCRE', '27'),
(984, '984', 'SURATA', '27'),
(985, '985', 'TONA', '27'),
(986, '986', 'VALLE SAN JOSÉ', '27'),
(987, '987', 'VÉLEZ', '27'),
(988, '988', 'VETAS', '27'),
(989, '989', 'VILLANUEVA', '27'),
(990, '990', 'ZAPATOCA', '27'),
(991, '991', 'BUENAVISTA', '28'),
(992, '992', 'CAIMITO', '28'),
(993, '993', 'CHALÁN', '28'),
(994, '994', 'COLOSO', '28'),
(995, '995', 'COROZAL', '28'),
(996, '996', 'EL ROBLE', '28'),
(997, '997', 'GALERAS', '28'),
(998, '998', 'GUARANDA', '28'),
(999, '999', 'LA UNIÓN', '28'),
(1000, '1000', 'LOS PALMITOS', '28'),
(1001, '1001', 'MAJAGUAL', '28'),
(1002, '1002', 'MORROA', '28'),
(1003, '1003', 'OVEJAS', '28'),
(1004, '1004', 'PALMITO', '28'),
(1005, '1005', 'SAMPUES', '28'),
(1006, '1006', 'SAN BENITO ABAD', '28'),
(1007, '1007', 'SAN JUAN DE BETULIA', '28'),
(1008, '1008', 'SAN MARCOS', '28'),
(1009, '1009', 'SAN ONOFRE', '28'),
(1010, '1010', 'SAN PEDRO', '28'),
(1011, '1011', 'SINCÉ', '28'),
(1012, '1012', 'SINCELEJO', '28'),
(1013, '1013', 'SUCRE', '28'),
(1014, '1014', 'TOLÚ', '28'),
(1015, '1015', 'TOLUVIEJO', '28'),
(1016, '1016', 'ALPUJARRA', '29'),
(1017, '1017', 'ALVARADO', '29'),
(1018, '1018', 'AMBALEMA', '29'),
(1019, '1019', 'ANZOATEGUI', '29'),
(1020, '1020', 'ARMERO (GUAYABAL)', '29'),
(1021, '1021', 'ATACO', '29'),
(1022, '1022', 'CAJAMARCA', '29'),
(1023, '1023', 'CARMEN DE APICALÁ', '29'),
(1024, '1024', 'CASABIANCA', '29'),
(1025, '1025', 'CHAPARRAL', '29'),
(1026, '1026', 'COELLO', '29'),
(1027, '1027', 'COYAIMA', '29'),
(1028, '1028', 'CUNDAY', '29'),
(1029, '1029', 'DOLORES', '29'),
(1030, '1030', 'ESPINAL', '29'),
(1031, '1031', 'FALÁN', '29'),
(1032, '1032', 'FLANDES', '29'),
(1033, '1033', 'FRESNO', '29'),
(1034, '1034', 'GUAMO', '29'),
(1035, '1035', 'HERVEO', '29'),
(1036, '1036', 'HONDA', '29'),
(1037, '1037', 'IBAGUÉ', '29'),
(1038, '1038', 'ICONONZO', '29'),
(1039, '1039', 'LÉRIDA', '29'),
(1040, '1040', 'LÍBANO', '29'),
(1041, '1041', 'MARIQUITA', '29'),
(1042, '1042', 'MELGAR', '29'),
(1043, '1043', 'MURILLO', '29'),
(1044, '1044', 'NATAGAIMA', '29'),
(1045, '1045', 'ORTEGA', '29'),
(1046, '1046', 'PALOCABILDO', '29'),
(1047, '1047', 'PIEDRAS PLANADAS', '29'),
(1048, '1048', 'PRADO', '29'),
(1049, '1049', 'PURIFICACIÓN', '29'),
(1050, '1050', 'RIOBLANCO', '29'),
(1051, '1051', 'RONCESVALLES', '29'),
(1052, '1052', 'ROVIRA', '29'),
(1053, '1053', 'SALDAÑA', '29'),
(1054, '1054', 'SAN ANTONIO', '29'),
(1055, '1055', 'SAN LUIS', '29'),
(1056, '1056', 'SANTA ISABEL', '29'),
(1057, '1057', 'SUÁREZ', '29'),
(1058, '1058', 'VALLE DE SAN JUAN', '29'),
(1059, '1059', 'VENADILLO', '29'),
(1060, '1060', 'VILLAHERMOSA', '29'),
(1061, '1061', 'VILLARRICA', '29'),
(1062, '1062', 'ALCALÁ', '30'),
(1063, '1063', 'ANDALUCÍA', '30'),
(1064, '1064', 'ANSERMA NUEVO', '30'),
(1065, '1065', 'ARGELIA', '30'),
(1066, '1066', 'BOLÍVAR', '30'),
(1067, '1067', 'BUENAVENTURA', '30'),
(1068, '1068', 'BUGA', '30'),
(1069, '1069', 'BUGALAGRANDE', '30'),
(1070, '1070', 'CAICEDONIA', '30'),
(1071, '1071', 'CALI', '30'),
(1072, '1072', 'CALIMA (DARIEN)', '30'),
(1073, '1073', 'CANDELARIA', '30'),
(1074, '1074', 'CARTAGO', '30'),
(1075, '1075', 'DAGUA', '30'),
(1076, '1076', 'EL AGUILA', '30'),
(1077, '1077', 'EL CAIRO', '30'),
(1078, '1078', 'EL CERRITO', '30'),
(1079, '1079', 'EL DOVIO', '30'),
(1080, '1080', 'FLORIDA', '30'),
(1081, '1081', 'GINEBRA GUACARI', '30'),
(1082, '1082', 'JAMUNDÍ', '30'),
(1083, '1083', 'LA CUMBRE', '30'),
(1084, '1084', 'LA UNIÓN', '30'),
(1085, '1085', 'LA VICTORIA', '30'),
(1086, '1086', 'OBANDO', '30'),
(1087, '1087', 'PALMIRA', '30'),
(1088, '1088', 'PRADERA', '30'),
(1089, '1089', 'RESTREPO', '30'),
(1090, '1090', 'RIO FRÍO', '30'),
(1091, '1091', 'ROLDANILLO', '30'),
(1092, '1092', 'SAN PEDRO', '30'),
(1093, '1093', 'SEVILLA', '30'),
(1094, '1094', 'TORO', '30'),
(1095, '1095', 'TRUJILLO', '30'),
(1096, '1096', 'TULÚA', '30'),
(1097, '1097', 'ULLOA', '30'),
(1098, '1098', 'VERSALLES', '30'),
(1099, '1099', 'VIJES', '30'),
(1100, '1100', 'YOTOCO', '30'),
(1101, '1101', 'YUMBO', '30'),
(1102, '1102', 'ZARZAL', '30'),
(1103, '1103', 'CARURÚ', '31'),
(1104, '1104', 'MITÚ', '31'),
(1105, '1105', 'PACOA', '31'),
(1106, '1106', 'PAPUNAUA', '31'),
(1107, '1107', 'TARAIRA', '31'),
(1108, '1108', 'YAVARATÉ', '31'),
(1109, '1109', 'CUMARIBO', '32'),
(1110, '1110', 'LA PRIMAVERA', '32'),
(1111, '1111', 'PUERTO CARREÑO', '32'),
(1112, '1112', 'SANTA ROSALIA', '32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_nivel_escolar`
--

CREATE TABLE IF NOT EXISTS `ciersur_nivel_escolar` (
  `id` int(11) NOT NULL,
  `nivel` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciersur_nivel_escolar`
--

INSERT INTO `ciersur_nivel_escolar` (`id`, `nivel`) VALUES
(1, 'Transición (Preescolar 5 años)'),
(2, 'Educación Inicial (Primera inf'),
(3, 'Educación básica primaria (1°,'),
(4, 'Educación básica secundaria (6'),
(5, 'Educación media (10°, 11°)'),
(6, 'Nivel superior (Universidad / '),
(7, 'Otro:');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_selecionados_aspirantes`
--

CREATE TABLE IF NOT EXISTS `ciersur_selecionados_aspirantes` (
  `id` int(11) NOT NULL,
  `codigo_estudiante` varchar(30) NOT NULL,
  `docente_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciersur_selecionados_aspirantes`
--

INSERT INTO `ciersur_selecionados_aspirantes` (`id`, `codigo_estudiante`, `docente_id`) VALUES
(1, '1226715', 1),
(2, '145596', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_sex`
--

CREATE TABLE IF NOT EXISTS `ciersur_sex` (
  `id` int(11) NOT NULL,
  `sex` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciersur_sex`
--

INSERT INTO `ciersur_sex` (`id`, `sex`) VALUES
(1, 'Masculino'),
(2, 'Femenino'),
(3, 'Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_year`
--

CREATE TABLE IF NOT EXISTS `ciersur_year` (
  `id` int(11) NOT NULL,
  `year` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciersur_year`
--

INSERT INTO `ciersur_year` (`id`, `year`) VALUES
(1, '1985'),
(2, '1986'),
(3, '1987'),
(4, '1998'),
(5, '1989'),
(6, '1990'),
(7, '1991'),
(8, '1992'),
(9, '1993'),
(10, '1994'),
(11, '1995'),
(12, '1996'),
(13, '1997'),
(14, '1998'),
(15, '1999'),
(16, '2000'),
(17, '2001'),
(18, '2002'),
(19, '2003'),
(20, '2004'),
(21, '2005'),
(22, '2006'),
(23, '2007'),
(24, '2008'),
(25, '2009'),
(26, '2010'),
(27, '2011'),
(28, '2012'),
(29, '2013'),
(30, '2014'),
(31, '2015');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciersur_zona`
--

CREATE TABLE IF NOT EXISTS `ciersur_zona` (
  `id` int(11) NOT NULL,
  `zona` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciersur_zona`
--

INSERT INTO `ciersur_zona` (`id`, `zona`) VALUES
(1, 'Urbana'),
(2, 'Urbana Margina'),
(3, 'Rural'),
(4, 'Rural de dificil acceso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2015-05-31 14:27:36.536000', '1', 'Mauro castillo', 1, '', 8, 1),
(2, '2015-05-31 14:29:15.695000', '2', 'Maria Soto', 1, '', 8, 1),
(3, '2015-05-31 14:31:50.210000', '1', 'Lucas Perla', 1, '', 10, 1),
(4, '2015-05-31 14:32:23.261000', '1', 'Informatica basica', 1, '', 11, 1),
(5, '2015-05-31 14:33:25.463000', '2', 'Victor Puentes', 1, '', 10, 1),
(6, '2015-05-31 14:33:53.204000', '1', '1226715', 1, '', 12, 1),
(7, '2015-05-31 14:34:04.461000', '2', '145596', 1, '', 12, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(27, 'CierSur', 'actividades_curso'),
(9, 'CierSur', 'aditionaldate'),
(22, 'CierSur', 'areas'),
(7, 'CierSur', 'bodypaneladmin'),
(24, 'CierSur', 'caracter'),
(28, 'CierSur', 'certificacion'),
(11, 'CierSur', 'course'),
(8, 'CierSur', 'dataperson'),
(18, 'CierSur', 'day'),
(15, 'CierSur', 'departamento'),
(21, 'CierSur', 'educationsecretary'),
(14, 'CierSur', 'estudiante_nota'),
(25, 'CierSur', 'etnia'),
(13, 'CierSur', 'inscripcion_cursos'),
(10, 'CierSur', 'master_teacher'),
(19, 'CierSur', 'month'),
(16, 'CierSur', 'municipio'),
(26, 'CierSur', 'nivel_escolar'),
(12, 'CierSur', 'selecionados_aspirantes'),
(20, 'CierSur', 'sex'),
(17, 'CierSur', 'year'),
(23, 'CierSur', 'zona'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2015-05-31 14:21:46.957000'),
(2, 'auth', '0001_initial', '2015-05-31 14:21:54.406000'),
(3, 'admin', '0001_initial', '2015-05-31 14:21:56.287000'),
(4, 'contenttypes', '0002_remove_content_type_name', '2015-05-31 14:21:58.248000'),
(5, 'auth', '0002_alter_permission_name_max_length', '2015-05-31 14:21:58.862000'),
(6, 'auth', '0003_alter_user_email_max_length', '2015-05-31 14:21:59.601000'),
(7, 'auth', '0004_alter_user_username_opts', '2015-05-31 14:21:59.700000'),
(8, 'auth', '0005_alter_user_last_login_null', '2015-05-31 14:22:00.392000'),
(9, 'auth', '0006_require_contenttypes_0002', '2015-05-31 14:22:00.426000'),
(10, 'sessions', '0001_initial', '2015-05-31 14:22:01.153000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('niwjv3jqvriylfhvegdl7urxltyj7k0i', 'OWI5NmY0YTdjMmVkYmFmYWNmNzkzYzU2YzQ0NzJjODdlNjVlM2Y4OTp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0YmZhNzkzZmVlMzQzYTdhOTZhNTBlMGE1NzY4OGMwZTQyZWZhMGYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-06-14 14:22:41.546000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `group_id` (`group_id`,`permission_id`), ADD KEY `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `content_type_id` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`group_id`), ADD KEY `auth_user_groups_group_id_30a071c9_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`permission_id`), ADD KEY `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` (`permission_id`);

--
-- Indices de la tabla `ciersur_actividades_curso`
--
ALTER TABLE `ciersur_actividades_curso`
  ADD PRIMARY KEY (`id`), ADD KEY `CierSur_actividades_curso_curso_id_70f5c52_fk_CierSur_course_id` (`curso_id`);

--
-- Indices de la tabla `ciersur_aditionaldate`
--
ALTER TABLE `ciersur_aditionaldate`
  ADD PRIMARY KEY (`id`), ADD KEY `CierSur_adition_ano_de_Nacimiento_id_745347af_fk_CierSur_year_id` (`ano_de_Nacimiento_id`), ADD KEY `CierSur_aditiona_dia_de_Nacimiento_id_7a2b7871_fk_CierSur_day_id` (`dia_de_Nacimiento_id`), ADD KEY `CierSur_aditio_mes_de_Nacimiento_id_145ccc6c_fk_CierSur_month_id` (`mes_de_Nacimiento_id`), ADD KEY `CierSur_aditionaldate_sexo_id_15d487ff_fk_CierSur_sex_id` (`sexo_id`), ADD KEY `CierSur_adition_zona_donde_labora_id_79bb2670_fk_CierSur_zona_id` (`zona_donde_labora_id`), ADD KEY `Cie_Labor_docente_institucion_id_1c1f52b8_fk_CierSur_caracter_id` (`Labor_docente_institucion_id`), ADD KEY `D43ac92d3b6f609b824718f17581a062` (`etno_educativamente_orientada_hacia_id`), ADD KEY `D504aaac7647a2b836382eb1a382d665` (`nivel_escolar_de_su_labor_id`);

--
-- Indices de la tabla `ciersur_areas`
--
ALTER TABLE `ciersur_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciersur_bodypaneladmin`
--
ALTER TABLE `ciersur_bodypaneladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciersur_caracter`
--
ALTER TABLE `ciersur_caracter`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciersur_certificacion`
--
ALTER TABLE `ciersur_certificacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciersur_course`
--
ALTER TABLE `ciersur_course`
  ADD PRIMARY KEY (`id`), ADD KEY `CierS_Docente_encargado_id_5ce68efd_fk_CierSur_master_teacher_id` (`Docente_encargado_id`);

--
-- Indices de la tabla `ciersur_dataperson`
--
ALTER TABLE `ciersur_dataperson`
  ADD PRIMARY KEY (`id`), ADD KEY `CierSur_dataper_ano_de_Nacimiento_id_713df590_fk_CierSur_year_id` (`ano_de_Nacimiento_id`), ADD KEY `CierSur_datapers_dia_de_Nacimiento_id_5ed9b542_fk_CierSur_day_id` (`dia_de_Nacimiento_id`), ADD KEY `CierSur_datape_mes_de_Nacimiento_id_618f530d_fk_CierSur_month_id` (`mes_de_Nacimiento_id`), ADD KEY `CierSur_dataperson_sexo_id_7f21f160_fk_CierSur_sex_id` (`sexo_id`), ADD KEY `CierSur_data_departemento_id_201bc60d_fk_CierSur_departamento_id` (`departemento_id`), ADD KEY `CierSur_dataperson_municipio_id_4a2ec00f_fk_CierSur_municipio_id` (`municipio_id`), ADD KEY `d25025c674f011bba05427f6e24e4a05` (`secretaria_de_educacion_id`), ADD KEY `CierSur_data_area_de_inscripcion_id_5cc14e49_fk_CierSur_areas_id` (`area_de_inscripcion_id`);

--
-- Indices de la tabla `ciersur_day`
--
ALTER TABLE `ciersur_day`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciersur_departamento`
--
ALTER TABLE `ciersur_departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciersur_educationsecretary`
--
ALTER TABLE `ciersur_educationsecretary`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciersur_estudiante_nota`
--
ALTER TABLE `ciersur_estudiante_nota`
  ADD PRIMARY KEY (`id`), ADD KEY `Cie_estudiante_id_16d1decc_fk_CierSur_selecionados_aspirantes_id` (`estudiante_id`), ADD KEY `CierSur_estudiante_nota_curso_id_430a592b_fk_CierSur_course_id` (`curso_id`), ADD KEY `Cie_certificado_obtenido_id_501bd7a2_fk_CierSur_certificacion_id` (`certificado_obtenido_id`);

--
-- Indices de la tabla `ciersur_etnia`
--
ALTER TABLE `ciersur_etnia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciersur_inscripcion_cursos`
--
ALTER TABLE `ciersur_inscripcion_cursos`
  ADD PRIMARY KEY (`id`), ADD KEY `CierSur_inscripcion_curso_curso_id_1b75155c_fk_CierSur_course_id` (`curso_id`), ADD KEY `D36729f7c7997713109e7dafb4ae85be` (`docente_a_inscribir_id`);

--
-- Indices de la tabla `ciersur_master_teacher`
--
ALTER TABLE `ciersur_master_teacher`
  ADD PRIMARY KEY (`id`), ADD KEY `CierSur_master__ano_de_Nacimiento_id_3008e0c2_fk_CierSur_year_id` (`ano_de_Nacimiento_id`), ADD KEY `CierSur_master_t_dia_de_Nacimiento_id_57ecbf84_fk_CierSur_day_id` (`dia_de_Nacimiento_id`), ADD KEY `CierSur_master_mes_de_Nacimiento_id_42030e47_fk_CierSur_month_id` (`mes_de_Nacimiento_id`), ADD KEY `CierSur_master_teacher_sexo_id_ef297b2_fk_CierSur_sex_id` (`sexo_id`), ADD KEY `CierSur_master__zona_donde_labora_id_407bc283_fk_CierSur_zona_id` (`zona_donde_labora_id`), ADD KEY `Cie_Labor_docente_institucion_id_10ce906b_fk_CierSur_caracter_id` (`Labor_docente_institucion_id`), ADD KEY `D3449098baee8e417169ed423f5a6a66` (`etno_educativamente_orientada_hacia_id`), ADD KEY `be38f1cc444b5af32b81b1811773f6d4` (`nivel_escolar_de_su_labor_id`);

--
-- Indices de la tabla `ciersur_month`
--
ALTER TABLE `ciersur_month`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciersur_municipio`
--
ALTER TABLE `ciersur_municipio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciersur_nivel_escolar`
--
ALTER TABLE `ciersur_nivel_escolar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciersur_selecionados_aspirantes`
--
ALTER TABLE `ciersur_selecionados_aspirantes`
  ADD PRIMARY KEY (`id`), ADD KEY `CierSur_selecionado_docente_id_1339f8de_fk_CierSur_dataperson_id` (`docente_id`);

--
-- Indices de la tabla `ciersur_sex`
--
ALTER TABLE `ciersur_sex`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciersur_year`
--
ALTER TABLE `ciersur_year`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciersur_zona`
--
ALTER TABLE `ciersur_zona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`), ADD KEY `django_admin__content_type_id_5151027a_fk_django_content_type_id` (`content_type_id`), ADD KEY `django_admin_log_user_id_1c5f563_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ciersur_actividades_curso`
--
ALTER TABLE `ciersur_actividades_curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ciersur_aditionaldate`
--
ALTER TABLE `ciersur_aditionaldate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ciersur_areas`
--
ALTER TABLE `ciersur_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `ciersur_bodypaneladmin`
--
ALTER TABLE `ciersur_bodypaneladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ciersur_caracter`
--
ALTER TABLE `ciersur_caracter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `ciersur_certificacion`
--
ALTER TABLE `ciersur_certificacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ciersur_course`
--
ALTER TABLE `ciersur_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `ciersur_dataperson`
--
ALTER TABLE `ciersur_dataperson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `ciersur_day`
--
ALTER TABLE `ciersur_day`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `ciersur_departamento`
--
ALTER TABLE `ciersur_departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `ciersur_educationsecretary`
--
ALTER TABLE `ciersur_educationsecretary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `ciersur_estudiante_nota`
--
ALTER TABLE `ciersur_estudiante_nota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `ciersur_etnia`
--
ALTER TABLE `ciersur_etnia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ciersur_inscripcion_cursos`
--
ALTER TABLE `ciersur_inscripcion_cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `ciersur_master_teacher`
--
ALTER TABLE `ciersur_master_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `ciersur_month`
--
ALTER TABLE `ciersur_month`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `ciersur_municipio`
--
ALTER TABLE `ciersur_municipio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1113;
--
-- AUTO_INCREMENT de la tabla `ciersur_nivel_escolar`
--
ALTER TABLE `ciersur_nivel_escolar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `ciersur_selecionados_aspirantes`
--
ALTER TABLE `ciersur_selecionados_aspirantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `ciersur_sex`
--
ALTER TABLE `ciersur_sex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `ciersur_year`
--
ALTER TABLE `ciersur_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `ciersur_zona`
--
ALTER TABLE `ciersur_zona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
ADD CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `ciersur_actividades_curso`
--
ALTER TABLE `ciersur_actividades_curso`
ADD CONSTRAINT `CierSur_actividades_curso_curso_id_70f5c52_fk_CierSur_course_id` FOREIGN KEY (`curso_id`) REFERENCES `ciersur_course` (`id`);

--
-- Filtros para la tabla `ciersur_aditionaldate`
--
ALTER TABLE `ciersur_aditionaldate`
ADD CONSTRAINT `Cie_Labor_docente_institucion_id_1c1f52b8_fk_CierSur_caracter_id` FOREIGN KEY (`Labor_docente_institucion_id`) REFERENCES `ciersur_caracter` (`id`),
ADD CONSTRAINT `CierSur_aditio_mes_de_Nacimiento_id_145ccc6c_fk_CierSur_month_id` FOREIGN KEY (`mes_de_Nacimiento_id`) REFERENCES `ciersur_month` (`id`),
ADD CONSTRAINT `CierSur_adition_ano_de_Nacimiento_id_745347af_fk_CierSur_year_id` FOREIGN KEY (`ano_de_Nacimiento_id`) REFERENCES `ciersur_year` (`id`),
ADD CONSTRAINT `CierSur_adition_zona_donde_labora_id_79bb2670_fk_CierSur_zona_id` FOREIGN KEY (`zona_donde_labora_id`) REFERENCES `ciersur_zona` (`id`),
ADD CONSTRAINT `CierSur_aditiona_dia_de_Nacimiento_id_7a2b7871_fk_CierSur_day_id` FOREIGN KEY (`dia_de_Nacimiento_id`) REFERENCES `ciersur_day` (`id`),
ADD CONSTRAINT `CierSur_aditionaldate_sexo_id_15d487ff_fk_CierSur_sex_id` FOREIGN KEY (`sexo_id`) REFERENCES `ciersur_sex` (`id`),
ADD CONSTRAINT `D43ac92d3b6f609b824718f17581a062` FOREIGN KEY (`etno_educativamente_orientada_hacia_id`) REFERENCES `ciersur_etnia` (`id`),
ADD CONSTRAINT `D504aaac7647a2b836382eb1a382d665` FOREIGN KEY (`nivel_escolar_de_su_labor_id`) REFERENCES `ciersur_nivel_escolar` (`id`);

--
-- Filtros para la tabla `ciersur_course`
--
ALTER TABLE `ciersur_course`
ADD CONSTRAINT `CierS_Docente_encargado_id_5ce68efd_fk_CierSur_master_teacher_id` FOREIGN KEY (`Docente_encargado_id`) REFERENCES `ciersur_master_teacher` (`id`);

--
-- Filtros para la tabla `ciersur_dataperson`
--
ALTER TABLE `ciersur_dataperson`
ADD CONSTRAINT `CierSur_data_area_de_inscripcion_id_5cc14e49_fk_CierSur_areas_id` FOREIGN KEY (`area_de_inscripcion_id`) REFERENCES `ciersur_areas` (`id`),
ADD CONSTRAINT `CierSur_data_departemento_id_201bc60d_fk_CierSur_departamento_id` FOREIGN KEY (`departemento_id`) REFERENCES `ciersur_departamento` (`id`),
ADD CONSTRAINT `CierSur_datape_mes_de_Nacimiento_id_618f530d_fk_CierSur_month_id` FOREIGN KEY (`mes_de_Nacimiento_id`) REFERENCES `ciersur_month` (`id`),
ADD CONSTRAINT `CierSur_dataper_ano_de_Nacimiento_id_713df590_fk_CierSur_year_id` FOREIGN KEY (`ano_de_Nacimiento_id`) REFERENCES `ciersur_year` (`id`),
ADD CONSTRAINT `CierSur_datapers_dia_de_Nacimiento_id_5ed9b542_fk_CierSur_day_id` FOREIGN KEY (`dia_de_Nacimiento_id`) REFERENCES `ciersur_day` (`id`),
ADD CONSTRAINT `CierSur_dataperson_municipio_id_4a2ec00f_fk_CierSur_municipio_id` FOREIGN KEY (`municipio_id`) REFERENCES `ciersur_municipio` (`id`),
ADD CONSTRAINT `CierSur_dataperson_sexo_id_7f21f160_fk_CierSur_sex_id` FOREIGN KEY (`sexo_id`) REFERENCES `ciersur_sex` (`id`),
ADD CONSTRAINT `d25025c674f011bba05427f6e24e4a05` FOREIGN KEY (`secretaria_de_educacion_id`) REFERENCES `ciersur_educationsecretary` (`id`);

--
-- Filtros para la tabla `ciersur_estudiante_nota`
--
ALTER TABLE `ciersur_estudiante_nota`
ADD CONSTRAINT `Cie_certificado_obtenido_id_501bd7a2_fk_CierSur_certificacion_id` FOREIGN KEY (`certificado_obtenido_id`) REFERENCES `ciersur_certificacion` (`id`),
ADD CONSTRAINT `Cie_estudiante_id_16d1decc_fk_CierSur_selecionados_aspirantes_id` FOREIGN KEY (`estudiante_id`) REFERENCES `ciersur_selecionados_aspirantes` (`id`),
ADD CONSTRAINT `CierSur_estudiante_nota_curso_id_430a592b_fk_CierSur_course_id` FOREIGN KEY (`curso_id`) REFERENCES `ciersur_course` (`id`);

--
-- Filtros para la tabla `ciersur_inscripcion_cursos`
--
ALTER TABLE `ciersur_inscripcion_cursos`
ADD CONSTRAINT `CierSur_inscripcion_curso_curso_id_1b75155c_fk_CierSur_course_id` FOREIGN KEY (`curso_id`) REFERENCES `ciersur_course` (`id`),
ADD CONSTRAINT `D36729f7c7997713109e7dafb4ae85be` FOREIGN KEY (`docente_a_inscribir_id`) REFERENCES `ciersur_selecionados_aspirantes` (`id`);

--
-- Filtros para la tabla `ciersur_master_teacher`
--
ALTER TABLE `ciersur_master_teacher`
ADD CONSTRAINT `Cie_Labor_docente_institucion_id_10ce906b_fk_CierSur_caracter_id` FOREIGN KEY (`Labor_docente_institucion_id`) REFERENCES `ciersur_caracter` (`id`),
ADD CONSTRAINT `CierSur_master__ano_de_Nacimiento_id_3008e0c2_fk_CierSur_year_id` FOREIGN KEY (`ano_de_Nacimiento_id`) REFERENCES `ciersur_year` (`id`),
ADD CONSTRAINT `CierSur_master__zona_donde_labora_id_407bc283_fk_CierSur_zona_id` FOREIGN KEY (`zona_donde_labora_id`) REFERENCES `ciersur_zona` (`id`),
ADD CONSTRAINT `CierSur_master_mes_de_Nacimiento_id_42030e47_fk_CierSur_month_id` FOREIGN KEY (`mes_de_Nacimiento_id`) REFERENCES `ciersur_month` (`id`),
ADD CONSTRAINT `CierSur_master_t_dia_de_Nacimiento_id_57ecbf84_fk_CierSur_day_id` FOREIGN KEY (`dia_de_Nacimiento_id`) REFERENCES `ciersur_day` (`id`),
ADD CONSTRAINT `CierSur_master_teacher_sexo_id_ef297b2_fk_CierSur_sex_id` FOREIGN KEY (`sexo_id`) REFERENCES `ciersur_sex` (`id`),
ADD CONSTRAINT `D3449098baee8e417169ed423f5a6a66` FOREIGN KEY (`etno_educativamente_orientada_hacia_id`) REFERENCES `ciersur_etnia` (`id`),
ADD CONSTRAINT `be38f1cc444b5af32b81b1811773f6d4` FOREIGN KEY (`nivel_escolar_de_su_labor_id`) REFERENCES `ciersur_nivel_escolar` (`id`);

--
-- Filtros para la tabla `ciersur_selecionados_aspirantes`
--
ALTER TABLE `ciersur_selecionados_aspirantes`
ADD CONSTRAINT `CierSur_selecionado_docente_id_1339f8de_fk_CierSur_dataperson_id` FOREIGN KEY (`docente_id`) REFERENCES `ciersur_dataperson` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
ADD CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
