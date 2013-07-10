-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 10, 2013 at 08:59 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pweventos`
--

-- --------------------------------------------------------

--
-- Table structure for table `evt_actividades`
--

CREATE TABLE IF NOT EXISTS `evt_actividades` (
  `id_actividad` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_evento` int(11) NOT NULL,
  `nombre_actividad` varchar(500) NOT NULL,
  `lugares` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `id_instructor` int(11) NOT NULL,
  PRIMARY KEY (`id_actividad`),
  UNIQUE KEY `id_actividad` (`id_actividad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `evt_asistentes`
--

CREATE TABLE IF NOT EXISTS `evt_asistentes` (
  `id_asistente` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `apellido_paterno` varchar(120) NOT NULL,
  `apellido_materno` varchar(120) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `edad` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `nctr_rfc` varchar(20) NOT NULL,
  PRIMARY KEY (`id_asistente`),
  UNIQUE KEY `id_asistente` (`id_asistente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `evt_asistentes_eventos`
--

CREATE TABLE IF NOT EXISTS `evt_asistentes_eventos` (
  `id_asistente_evento` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_actividad` int(11) NOT NULL,
  `id_asistente` int(11) NOT NULL,
  `fecha_registro` date NOT NULL,
  PRIMARY KEY (`id_asistente_evento`),
  UNIQUE KEY `id_asistente_evento` (`id_asistente_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `evt_asistentes_tipos_usuarios`
--

CREATE TABLE IF NOT EXISTS `evt_asistentes_tipos_usuarios` (
  `id_asistente_tipo_usuario` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_asistente` int(11) NOT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_asistente_tipo_usuario`),
  UNIQUE KEY `id_asistente_tipo_usuario` (`id_asistente_tipo_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `evt_eventos`
--

CREATE TABLE IF NOT EXISTS `evt_eventos` (
  `id_evento` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_evento` varchar(200) NOT NULL,
  `contacto` text NOT NULL,
  `cuando` text NOT NULL,
  `donde` text NOT NULL,
  `informacion` text NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  PRIMARY KEY (`id_evento`),
  UNIQUE KEY `id_evento` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `evt_eventos_tipos_usuarios`
--

CREATE TABLE IF NOT EXISTS `evt_eventos_tipos_usuarios` (
  `id_evento_tipo_usuario` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_evento` int(11) NOT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_evento_tipo_usuario`),
  UNIQUE KEY `id_evento_tipo_usuario` (`id_evento_tipo_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `evt_tipos_usuarios`
--

CREATE TABLE IF NOT EXISTS `evt_tipos_usuarios` (
  `id_tipo_usuario` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tipo_usuario`),
  UNIQUE KEY `id_tipo_usuario` (`id_tipo_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
