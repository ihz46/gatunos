-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.6.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para cantabriafelina
CREATE DATABASE IF NOT EXISTS `cantabriafelina` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cantabriafelina`;

-- Volcando estructura para tabla cantabriafelina.adoptado
CREATE TABLE IF NOT EXISTS `adoptado` (
  `id_adoptado` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_adopcion` date DEFAULT NULL,
  `Gato_id_gato` int(11) NOT NULL,
  PRIMARY KEY (`id_adoptado`,`Gato_id_gato`),
  KEY `fk_Adoptado_Gato1_idx` (`Gato_id_gato`),
  CONSTRAINT `fk_Adoptado_Gato1` FOREIGN KEY (`Gato_id_gato`) REFERENCES `gato` (`id_gato`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cantabriafelina.adoptado: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `adoptado` DISABLE KEYS */;
/*!40000 ALTER TABLE `adoptado` ENABLE KEYS */;

-- Volcando estructura para tabla cantabriafelina.casos_externos
CREATE TABLE IF NOT EXISTS `casos_externos` (
  `id_casos_externos` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_casos_externos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cantabriafelina.casos_externos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `casos_externos` DISABLE KEYS */;
/*!40000 ALTER TABLE `casos_externos` ENABLE KEYS */;

-- Volcando estructura para tabla cantabriafelina.fallecido
CREATE TABLE IF NOT EXISTS `fallecido` (
  `id_fallecido` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_defuncion` date DEFAULT NULL,
  `Gato_id_gato` int(11) NOT NULL,
  PRIMARY KEY (`id_fallecido`,`Gato_id_gato`),
  KEY `fk_Fallecido_Gato_idx` (`Gato_id_gato`),
  CONSTRAINT `fk_Fallecido_Gato` FOREIGN KEY (`Gato_id_gato`) REFERENCES `gato` (`id_gato`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cantabriafelina.fallecido: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `fallecido` DISABLE KEYS */;
/*!40000 ALTER TABLE `fallecido` ENABLE KEYS */;

-- Volcando estructura para tabla cantabriafelina.gato
CREATE TABLE IF NOT EXISTS `gato` (
  `id_gato` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `sexo` varchar(15) DEFAULT NULL,
  `raza` varchar(45) DEFAULT NULL,
  `tamaño` varchar(15) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `vacunado` varchar(45) DEFAULT NULL,
  `esterilizado` int(11) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `fecha_entrada` date DEFAULT NULL,
  `fecha_salida` date DEFAULT NULL,
  `imagen` longblob,
  `urgente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_gato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cantabriafelina.gato: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `gato` DISABLE KEYS */;
/*!40000 ALTER TABLE `gato` ENABLE KEYS */;

-- Volcando estructura para tabla cantabriafelina.producto
CREATE TABLE IF NOT EXISTS `producto` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla cantabriafelina.producto: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
