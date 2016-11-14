-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2016 a las 03:05:40
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `curso_social_network`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `role` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nick` varchar(50) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `active` varchar(2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role`, `email`, `name`, `surname`, `password`, `nick`, `bio`, `active`, `image`) VALUES
(1, 'ROLE_ADMIN', 'admin@admin.com', 'Francisco', 'Morales', 'password_pruebas', 'admin', NULL, '1', NULL),
(2, 'ROLE_USER', 'fmorales@mail.com', 'Francisco', 'Morales', '$2y$04$HOiBC73Kge9KyVHs5eAJKuadD9o8.mpoZ/YgQFtx.ZVDm.FINc8tS', 'fmorales', 'genio y Figura del soccer.', NULL, '21479058451.jpeg'),
(3, 'ROLE_USER', 'dani@rodriguez.cl', 'Daniel', 'Rodriguez', '$2y$04$Vca9pkNyeeZXExoZs9UJgeLJAdM0y10PFOrgHPG7oeDgNFNH.M5hK', 'dani', NULL, NULL, NULL),
(4, 'ROLE_USER', 'mamorales@mail.com', 'Mauricio', 'Morales', '$2y$04$k28DgwYR2sAEBYgLjUYxIemUELJkDKsbW9kHlbPqFWPDGeswCdZlG', 'mamorales', 'Soy programador, trabajo en cuponatic.com. Tengo un bebé hermoso llamado Maximiliano.', NULL, '41478995555.png'),
(5, 'ROLE_USER', 'ralvarez@mail.com', 'Ramon', 'Alvarez', '$2y$04$ptDQjOX9pTw0jN0p1FBXJ..hA.m0DZQXhbuHfJ/d7C9PZrTDpKX/K', 'ralvarez', 'soy entero chanta, pero se me está quitando', NULL, NULL),
(6, 'ROLE_USER', 'cmariqueo@mail.com', 'Claudia', 'Mariqueo', '$2y$04$SgFqI.0Uz14rVJV/qRKOt.p.K9NBWHcvyEiS.pFNUjcGGTypP2uOK', 'cmariqueo', 'Soy sandunguera y pura candela.', NULL, '61478994405.jpeg'),
(7, 'ROLE_USER', 'jbarroso@mail.com', 'Julio', 'Barroso', '$2y$04$IroCdX5pMGmFskGC0/1yCuZnZSfWRZDc6k2eB7WA5zpFBXhzbPMZe', 'jbarroso', 'El defensor mas defensivo del Albo Campeon.', NULL, '71479066078.png'),
(8, 'ROLE_USER', 'fcampos@mail.com', 'Felipe', 'Campos', '$2y$04$J/AvTr7MD3yP/tSRodFdaeZhTj2sFUXOl0Okky6OwIH9ExWKwGZ.O', 'fcampos', 'Defensa de colo colo', NULL, '81479000079.png'),
(9, 'ROLE_USER', 'jvillar@mail.com', 'Justo', 'Villar', '$2y$04$MZdSnE2p.OFB/zmjt1gPxO5U9.E1KPEpw5arhq48KMe6siymNbfHS', 'jvillar', 'Arquero de colo colo', NULL, '91479058891.png'),
(10, 'ROLE_USER', 'asanchez@mail.com', 'Alexis', 'Sanchez', '$2y$04$dB.HRO4UWrSVpuchYRNhquAIbwsheaxUa.DocfWvHuYDLm0XJMvqO', 'asanchez', 'Soy cauro chico e'' Tocopilla "cashay?",,,, mintindí?', NULL, '101479064013.jpeg'),
(11, 'ROLE_USER', 'twalcott@mail.com', 'Theo', 'Walcott', '$2y$04$yimiK.ctkygmCvIkXN.ubenSh/Ecuv2bcHBMjvo7ihQgjJEaeBul.', 'twalcott', 'Able to play anywhere across the front, Theo started 2015/16 in the centre-forward position, linking well with Mesut Ozil and Alexis. He played a key role in convincing victories away to eventual champions Leicester City and at home to Manchester United, ', NULL, '111479088629.jpeg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_uniques_fields` (`email`,`nick`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
