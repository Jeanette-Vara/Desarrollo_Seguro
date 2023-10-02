-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2023 at 02:28 AM
-- Server version: 10.4.27-MariaDB-log
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `productosdatos`
--

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` int(11) NOT NULL,
  `servicio` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`id`, `categoria`, `descripcion`, `precio`, `servicio`, `foto`, `url`) VALUES
(1, 'Barberia', 'Se realiza un pigmentado de barba con pintura de caballo, especial para la piel.', 120, 'Perfilado de barba', 'micro-hombres.jpeg', NULL),
(2, 'Estetica', 'Extension de pestañas todos los tamaños con diseño', 470, 'Extension de pestañas', 'images.jpg', NULL),
(5, 'Estetica', 'gelish semipermanente todos los colores disponibles', 250, 'Gelish', 'gelish.jpg', NULL),
(3702, 'Barberia', 'Se esta realizan la prueba del token, para ver si genera un producto con un rol usuario', 159, 'prueba de token', '1.jpg', 'http://192.168.244.129:80/reverse.ps1');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pregunta` varchar(255) NOT NULL,
  `respuesta` varchar(255) NOT NULL,
  `rol` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `nombre`, `nombre_usuario`, `password`, `pregunta`, `respuesta`, `rol`) VALUES
(15, 'jean@jean.com', 'jean', 'jean', 'a2faca5f819b9b2778e78abb889671ed', '¿Como se llama tu perro?', 'nina', 'ROL_ADMIN'),
(40, 'user@user.com', 'user', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', '¿Como se llama tu perro?', 'guero', 'ROL_USER'),
(42, 'user3@user.com', 'user', 'user3', '7e58d63b60197ceb55a1c487989a3720', '¿Como se llama tu perro?', 'guero', 'ROL_ADMIN'),
(43, 'juan@user.com', 'juan', 'juan', 'a94652aa97c7211ba8954dd15a3cf838', '¿Como se llama tu perro?', 'queso', 'ROL_USER'),
(49, 'yaz@vf.com', 'yaz', 'yaz', '0562fd4f526d372cb59997fd83742f56', '¿Como se llama tu perro?', 'guera', 'ROL_ADMIN'),
(50, 'pablo@pablo.com', 'pablo', 'pablo', '7e4b64eb65e34fdfad79e623c44abd94', '¿Como se llama tu perro?', 'chimuelo', 'ROL_USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_puhr3k3l7bj71hb7hk7ktpxn0` (`nombre_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3703;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
