-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2025 at 05:05 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `veterinaria`
--

-- --------------------------------------------------------

--
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
CREATE TABLE IF NOT EXISTS `citas` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_Usuario` int NOT NULL,
  `id_Paciente_Mascota` int NOT NULL,
  `id_Estado_Cita` int NOT NULL,
  `fecha` datetime(6) DEFAULT NULL,
  `hora` time(6) DEFAULT NULL,
  `estatus` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_Usuario` (`id_Usuario`,`id_Paciente_Mascota`,`id_Estado_Cita`),
  KEY `id_Estado_Cita` (`id_Estado_Cita`),
  KEY `id_Paciente_Mascota` (`id_Paciente_Mascota`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `citas`
--

INSERT INTO `citas` (`id`, `id_Usuario`, `id_Paciente_Mascota`, `id_Estado_Cita`, `fecha`, `hora`, `estatus`) VALUES
(1, 1, 1, 1, '2024-05-10 19:51:32.000000', '00:00:08.000000', 1),
(2, 2, 2, 1, '2025-01-15 10:30:00.000000', '10:30:00.000000', 1),
(3, 3, 3, 2, '2025-01-10 14:00:00.000000', '14:00:00.000000', 1),
(4, 2, 1, 3, '2025-01-18 16:20:00.000000', '16:20:00.000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `encargado_mascota`
--

DROP TABLE IF EXISTS `encargado_mascota`;
CREATE TABLE IF NOT EXISTS `encargado_mascota` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(30) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `Dui` varchar(9) NOT NULL,
  `Edad` varchar(10) NOT NULL,
  `Ciudad` varchar(20) NOT NULL,
  `Direccion` varchar(150) NOT NULL,
  `estatus` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `encargado_mascota`
--

INSERT INTO `encargado_mascota` (`id`, `Nombres`, `Apellidos`, `Dui`, `Edad`, `Ciudad`, `Direccion`, `estatus`) VALUES
(1, 'Jose', 'Gutierrez', '123456-8', '23', 'San Salvador', 'Avenida sur no se donde vamos ', 1),
(2, 'Ana', 'Hernández', '876543-2', '32', 'Santa Ana', 'Colonia Santa Anita #32', 1),
(3, 'Luis', 'Martínez', '112233-4', '29', 'San Miguel', 'Barrio El Centro casa #12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `estado_cita`
--

DROP TABLE IF EXISTS `estado_cita`;
CREATE TABLE IF NOT EXISTS `estado_cita` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nombre_Estado_Cita` varchar(30) NOT NULL,
  `status` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `estado_cita`
--

INSERT INTO `estado_cita` (`id`, `Nombre_Estado_Cita`, `status`) VALUES
(1, 'Pendiente', 1),
(2, 'Finalizada', 1),
(3, 'Cancelada', 1);

-- --------------------------------------------------------

--
-- Table structure for table `paciente_mascota`
--

DROP TABLE IF EXISTS `paciente_mascota`;
CREATE TABLE IF NOT EXISTS `paciente_mascota` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Edad` varchar(30) NOT NULL,
  `Raza` varchar(30) NOT NULL,
  `Fecha_Nacimiento` datetime NOT NULL,
  `id_Encargado_Mascota` int NOT NULL,
  `estatus` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_Encargado_Mascota` (`id_Encargado_Mascota`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `paciente_mascota`
--

INSERT INTO `paciente_mascota` (`id`, `Nombre`, `Edad`, `Raza`, `Fecha_Nacimiento`, `id_Encargado_Mascota`, `estatus`) VALUES
(1, 'Firulais', '1', 'Chihuahua', '2023-05-04 12:26:41', 1, 1),
(2, 'Mishu', '3', 'Siames', '2021-10-12 09:20:00', 2, 1),
(3, 'Rex', '5', 'Pastor Alemán', '2019-06-20 15:30:00', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
CREATE TABLE IF NOT EXISTS `tipo_usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nombre_Tipo_Usuario` varchar(50) NOT NULL,
  `estatus` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id`, `Nombre_Tipo_Usuario`, `estatus`) VALUES
(1, 'Administrador', 1),
(2, 'Veterinario', 1),
(3, 'Recepcionista', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(50) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Pass` varchar(50) NOT NULL,
  `id_Tipo_Usuario` int NOT NULL,
  `estatus` bigint DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_Tipo_Usuario` (`id_Tipo_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `Nombres`, `Apellidos`, `Correo`, `Pass`, `id_Tipo_Usuario`, `estatus`, `genero`) VALUES
(1, 'Daniel', 'Marroquin', 'daniel@gmail.com', '123345678', 1, 1, 'Masculino'),
(2, 'María', 'López', 'maria@example.com', 'pass1234', 2, 1, 'Femenino'),
(3, 'Carlos', 'Ramírez', 'carlosr@example.com', 'abc12345', 3, 1, 'Masculino');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `citas_ibfk_1` FOREIGN KEY (`id_Estado_Cita`) REFERENCES `estado_cita` (`id`),
  ADD CONSTRAINT `citas_ibfk_2` FOREIGN KEY (`id_Paciente_Mascota`) REFERENCES `paciente_mascota` (`id`),
  ADD CONSTRAINT `citas_ibfk_3` FOREIGN KEY (`id_Usuario`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `paciente_mascota`
--
ALTER TABLE `paciente_mascota`
  ADD CONSTRAINT `paciente_mascota_ibfk_1` FOREIGN KEY (`id_Encargado_Mascota`) REFERENCES `encargado_mascota` (`id`);

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_Tipo_Usuario`) REFERENCES `tipo_usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
