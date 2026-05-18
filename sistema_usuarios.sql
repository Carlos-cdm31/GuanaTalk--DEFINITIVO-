-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2026 at 10:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistema_usuarios`
--

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `usuarioID` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nacionalidad` enum('Salvadoreño','Extranjero') NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` varchar(20) DEFAULT 'usuario',
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`usuarioID`, `nombre`, `email`, `nacionalidad`, `password`, `rol`, `fecha_registro`) VALUES
(1, 'Carlos Romero', 'carlos.romero2027@adoc.superate.org.sv', 'Salvadoreño', '$2y$10$SUeAImeoLw03hDLgUBz2d.i7IN0RwLJak7EJokOxfoL4uO1iCXwZW', 'usuario', '2026-05-12 15:47:55'),
(2, 'Carlos Romero', '6369637@clases.edu.sv', 'Salvadoreño', '$2y$10$94KrbeFDNivQg7Bb72rmAeXG4UXfBa457AolRFjv2UfbgxV8kL9oS', 'usuario', '2026-05-13 16:14:48'),
(6, 'Carlos Romero', '6369637e@clases.edu.sv', 'Salvadoreño', '$2y$10$nCwo30w/D9XuJFkDGsVFxOXPROoQGSVkx3p3/ZGjSByUrclyUvjlu', 'usuario', '2026-05-17 04:35:36'),
(7, 'Carlos Romero', '6369638@clases.edu.sv', 'Extranjero', '$2y$10$/7UqNW/XUsY3XIcyrQR9deRsj4M3U6puy1flkymb8p6zg4zx/BZSW', 'usuario', '2026-05-17 05:37:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuarioID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuarioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
