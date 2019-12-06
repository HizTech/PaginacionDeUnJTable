-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-12-2019 a las 22:48:45
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `paises`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` int(11) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `capital` varchar(100) NOT NULL,
  `num_habitantes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `pais`, `capital`, `num_habitantes`) VALUES
(1, 'Afganistán', 'Kabul', 37172386),
(2, 'Albania', 'Tirana', 2862427),
(3, 'Alemania', 'Belín', 83019213),
(4, 'Andorra', 'Andorra La Vieja', 76177),
(5, 'Angola', 'Luanda', 30809762),
(6, 'Antigua y Barbuda', 'Saint John’s', 96286),
(7, 'Arabia Saudita', 'Riad', 33699947),
(8, 'Argelia', 'Argel', 42228429),
(9, 'Argentina', 'Buenos Aires', 44560000),
(10, 'Armenia', 'Ereván', 2965269),
(11, 'Australia', 'Camberra', 25169000),
(12, 'Austria', 'Viena', 8858775),
(13, 'Azerbaiyán', 'Bakú', 9940000),
(14, 'Bahamas', 'Nasáu', 377000),
(15, 'Bangladés', 'Daca', 161356039),
(16, 'Barbados', 'Bridgetown', 286000),
(17, 'Baréin', 'Manama', 1569439),
(18, 'Bélgica', 'Bruselas', 11467923),
(19, 'Belice', 'Belmopán', 383071),
(20, 'Benín', 'Porto Novo y Cotonú', 11485048),
(21, 'Bielorrusia', 'Minsk', 9475174),
(22, 'Birmania', 'Naipyidó', 53708395),
(23, 'Bolivia', 'Sucre', 11353142),
(24, 'Bosnia y Herzegovina', 'Sarajevo', 3504000),
(25, 'Botsuana', 'Gaborone', 2254126),
(26, 'Brasil', 'Brasilia', 209469333),
(27, 'Brunéi', 'Bandar Seri Begawan', 442000),
(28, 'Bulgaria', 'Sofía', 7000039),
(29, 'Burkina Faso', 'Uagadugú', 19752000),
(30, 'Burundi', 'Gitega', 11175378),
(31, 'Bután', 'Timbu', 754394),
(32, 'Cabo Verde', 'Praia', 543767),
(33, 'Camboya', 'Nom Pen', 16249798),
(34, 'Camerún', 'Yaundé', 25216237),
(35, 'Canadá', 'Ottawa', 36994000),
(36, 'Catar', 'Doha', 2781677),
(37, 'Chad', 'Yamena', 15477751),
(38, 'Chile', 'Santiago de Chile', 18729160),
(39, 'China', 'Pekín', 1395380000),
(40, 'Chipre', 'Nicosia', 875898),
(41, 'Ciudad del Vaticano', 'Ciudad del Vaticano', 1000),
(42, 'Colombia', 'Bogotá', 49834000),
(43, 'Comoras', 'Moroni', 832322),
(44, 'Corea del Norte', 'Pionyang', 25549819),
(45, 'Corea del Sur', 'Seúl', 51635000),
(46, 'Costa de Marfil', 'Yamusukro', 25069229),
(47, 'Croacia', 'Zagreb', 4076246),
(48, 'Cuba', 'La Habana', 11338138),
(49, 'Dinamarca', 'Copenhague', 5806081),
(50, 'Dominica', 'Roseau', 71625),
(51, 'Ecuador', 'Quito', 17023000),
(52, 'El Salvador', 'San Salvador', 6643000),
(53, 'Emiratos Árabes Unidos', 'Abu Dabi', 9630959),
(54, 'Eritrea', 'Asmara', 5068831),
(55, 'Eslovaquia', 'Bratislava', 5450421),
(56, 'Eslovenia', 'Liubliana', 2080908),
(57, 'España', 'Madrid', 46934632),
(58, 'Estados Unidos', 'Washington D.C', 327352000),
(59, 'Estonia', 'Tallin', 1324820),
(60, 'Etiopía', 'Adís Abeba', 109224559),
(61, 'Filipinas', 'Manila', 106651922),
(62, 'Filandia', 'Helsinki', 5517919),
(63, 'Fiyi', 'Suva', 883483),
(64, 'Francia', 'París', 67028048),
(65, 'Gabón', 'Libreville', 2119275),
(66, 'Gambia', 'Banjul', 2280102),
(67, 'Georgia', 'Tiflis', 3723464),
(68, 'Ghana', 'Acra', 29767108),
(69, 'Granada', 'Saint George', 111454),
(70, 'Grecia', 'Atenas', 10722287),
(71, 'Guatemala', 'Ciudad de Guatemala', 17263000),
(72, 'Guyana', 'Georgetown', 779004),
(73, 'Guinea', 'Conakri', 12414318),
(74, 'Guinea-Bisáu', 'Bisáu', 1874309),
(75, 'Guinea Ecuatorial', 'Malabo', 1308974),
(76, 'Haití', 'Puerto Príncipe', 11123176),
(77, 'Honduras', 'Tegucigalpa', 9587522),
(78, 'Hungría', 'Budapest', 9772756),
(79, 'India', 'Nueva DelHi', 1352617328),
(80, 'Indonesia', 'Yakarta', 264162000),
(81, 'Irak', 'Bagdad', 38433600),
(82, 'Irán', 'Teherán', 82360000),
(83, 'Irlanda', 'Dublín', 4904226),
(84, 'Isladia', 'Reikiavik', 356991),
(85, 'Islas Marshall', 'Majuro', 58413),
(86, 'Islas Salomón', 'Honiara', 652858),
(87, 'Israel', 'Jerusalén', 8881000),
(88, 'Italia', 'Roma', 60359546),
(89, 'Jamaica', 'Kingston', 2934855),
(90, 'Japón', 'Tokio', 126529100),
(91, 'Jordania', 'Amán', 9956011),
(92, 'Kazajistán', 'Astaná', 18396000),
(93, 'Kenia', 'Nairobi', 51393010),
(94, 'Kirguistán', 'Biskek', 6257000),
(95, 'Kiribati', 'Tarawa', 115847),
(96, 'Kuwait', 'Kuwait', 4137309),
(97, 'Laos', 'Vientián', 7062000),
(98, 'Lesoto', 'Maseru', 2108132),
(99, 'Letonia', 'Riga', 1919968),
(100, 'Líbano', 'Beirut', 6848925),
(101, 'Liberia', 'Monrovia', 4818977),
(102, 'Libia', 'Trípoli', 6678567),
(103, 'Liechtenstein', 'Vaduz', 38378),
(104, 'Lituania', 'Vilna', 2794184),
(105, 'Luxemburgo', 'Luxemburgo', 613894),
(106, 'Macedonia del Norte', 'Skopie', 2077132),
(107, 'Madagascar', 'Antananarivo', 26262368),
(108, 'Malasia', 'Kuala Lumpur', 32385000),
(109, 'Malaui', 'Lilongüe', 18143315),
(110, 'Maldivas', 'Malé', 515696),
(111, 'Malí', 'Bamako', 19077690),
(112, 'Malta', 'La Valeta', 493559),
(113, 'Marruecos', 'Rabat', 35220000),
(114, 'Mauricio', 'Port-Louis', 1266000),
(115, 'Mauritania', 'Nuakchot', 4403319),
(116, 'México', 'Ciudad de México', 124738000),
(117, 'Micronesia', 'Palikir', 102000),
(118, 'Moldavia', 'Chisináu', 3544000),
(119, 'Mónaco', 'Mónaco', 38300),
(120, 'Mongolia', 'Ulán Bator', 3170208),
(121, 'Montenegro', 'Podgorica', 622182),
(122, 'Mozambique', 'Maputo', 29495962),
(123, 'Namibia', 'Windhoek', 2414000),
(124, 'Nauru', 'Yaren', 12704),
(125, 'Nepal', 'Katmandú', 28087871),
(126, 'Nicaragua', 'Managua', 6465513),
(127, 'Níger', 'Niamey', 22442948),
(128, 'Nigeria', 'Abuya', 195874740),
(129, 'Noruega', 'Oslo', 5328212),
(130, 'Nueva Zelanda', 'Wellington', 4930000),
(131, 'Omán', 'Mascate', 4179000),
(132, 'Países Bajos', 'Ámsterdam', 17282163),
(133, 'Pakistán', 'Islamabad', 200960000),
(134, 'Palaos', 'Melekeok', 18000),
(135, 'Panamá', 'Panamá', 4159000),
(136, 'Papúa Nueva Guinea', 'Port Moresby', 8606316),
(137, 'Paraguay', 'Asunción', 7053000),
(138, 'Perú', 'Lima', 31989256),
(139, 'Polonia', 'Varsovia', 37972812),
(140, 'Portugal', 'Lisboa', 10276617),
(141, 'Reino Unido de Gran Bretaña e Irlanda del Norte', 'Londres', NULL),
(142, 'República Centroafricana', 'Bangui', NULL),
(143, 'República Checa', 'Praga', NULL),
(144, 'República del Congo', 'Brazzaville', NULL),
(145, 'República Democrática del Congo', 'Kinsasa', NULL),
(146, 'República Dominicana', 'Santo Domingo', NULL),
(147, 'República Dominicana', 'Santo Domingo', NULL),
(148, 'República Sudafricana', 'Bloemfontein, Ciudad Del Cabo y Pretoria', NULL),
(149, 'Ruanda', 'Kigali', NULL),
(150, 'Rumanía', 'Bucarest', NULL),
(151, 'Rusia', 'Moscú', NULL),
(152, 'Samoa', 'Apia', NULL),
(153, 'San Cristóbal y Nieves', 'Basseterre', NULL),
(154, 'San Marino', 'San Marino', NULL),
(155, 'San Vicente y las Granadinas', 'Kingstown', NULL),
(156, 'Santa Lucía', 'Castries', NULL),
(157, 'Santo Tomé y Príncipe', 'Santo Tomé', NULL),
(158, 'Senegal', 'Dakar', NULL),
(159, 'Serbia', 'Belgrado', NULL),
(160, 'Seychelles', 'Victoria', NULL),
(161, 'Sierra Leona', 'Freetown', NULL),
(162, 'Singapur', 'Singapur', NULL),
(163, 'Siria', 'Damasco', NULL),
(164, 'Somalia', 'Mogadiscio', NULL),
(165, 'Sri Lanka', 'Colombo', NULL),
(166, 'Suazilandia', 'Babane y Lobamba', NULL),
(167, 'Sudán', 'Jartum', NULL),
(168, 'Sudán del Sur', 'Yuba', NULL),
(169, 'Suecia', 'Estocolmo', NULL),
(170, 'Suiza', 'Berna', NULL),
(171, 'Surinam', 'Paramaribo', NULL),
(172, 'Tailandia', 'Bangkok', NULL),
(173, 'Tanzania', 'Dodoma', NULL),
(174, 'Tayikistán', 'Dusambé', NULL),
(175, 'Timor Oriental', 'Dili', NULL),
(176, 'Togo', 'Lomé', NULL),
(177, 'Tonga', 'Nukualofa', NULL),
(178, 'Trinidad y Tobago', 'Puerto España', NULL),
(179, 'Túnez', 'Túnez', NULL),
(180, 'Turkmenistán', 'Asjabad', NULL),
(181, 'Turquía', 'Ankara', NULL),
(182, 'Tuvalu', 'Fongafale', NULL),
(183, 'Ucrania', 'Kiev', NULL),
(184, 'Uganda', 'Kampala', NULL),
(185, 'Uruguay', 'Montevideo', NULL),
(186, 'Uzbekistán', 'Taskent', NULL),
(187, 'Vanuatu', 'Port Vila', NULL),
(188, 'Venezuela', 'Caracas', NULL),
(189, 'Vietnam', 'Hanói', NULL),
(190, 'Yemen', 'Saná', NULL),
(191, 'Yibuti', 'Yibuti', NULL),
(192, 'Zambia', 'Lusaka', NULL),
(193, 'Zimbabue', 'Harare', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
