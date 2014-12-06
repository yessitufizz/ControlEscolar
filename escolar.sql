/*
SQLyog Ultimate v8.61 
MySQL - 5.5.32 : Database - escolar
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`escolar` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `escolar`;

/*Table structure for table `alumno_grupo` */

DROP TABLE IF EXISTS `alumno_grupo`;

CREATE TABLE `alumno_grupo` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_alumno` int(6) DEFAULT NULL,
  `id_grupo` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `alumno_grupo` */

insert  into `alumno_grupo`(`id`,`id_alumno`,`id_grupo`) values (1,5,1);

/*Table structure for table `grupo` */

DROP TABLE IF EXISTS `grupo`;

CREATE TABLE `grupo` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `grupo` */

insert  into `grupo`(`id`,`nombre`) values (1,'72'),(2,'71'),(3,'73');

/*Table structure for table `maestro_materia` */

DROP TABLE IF EXISTS `maestro_materia`;

CREATE TABLE `maestro_materia` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_maestro` int(6) DEFAULT NULL,
  `id_materia` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `maestro_materia` */

insert  into `maestro_materia`(`id`,`id_maestro`,`id_materia`) values (1,1,1),(2,2,2),(3,1,2),(4,2,1);

/*Table structure for table `materia` */

DROP TABLE IF EXISTS `materia`;

CREATE TABLE `materia` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  `avatar` varchar(250) DEFAULT NULL,
  `orden` varchar(250) DEFAULT NULL,
  `estatus` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `materia` */

insert  into `materia`(`id`,`nombre`,`avatar`,`orden`,`estatus`) values (1,'Matematicas','mat','2',1),(2,'Español','esp','1',1),(3,'Ingles','ing','3',1),(4,'Programacion','prog','4',1),(5,'Adm. de tiempo','adm','5',1);

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(250) DEFAULT NULL,
  `ApellidoPaterno` varchar(250) DEFAULT NULL,
  `ApellidoMaterno` varchar(250) DEFAULT NULL,
  `Telefono` varchar(250) DEFAULT NULL,
  `Calle` varchar(250) DEFAULT NULL,
  `NumeroExterior` int(5) DEFAULT NULL,
  `NumeroInterior` int(5) DEFAULT NULL,
  `Colonia` varchar(250) DEFAULT NULL,
  `Municipio` varchar(250) DEFAULT NULL,
  `Estado` varchar(250) DEFAULT NULL,
  `CP` int(6) DEFAULT NULL,
  `Correo` varchar(250) DEFAULT NULL,
  `Usuario` varchar(250) DEFAULT NULL,
  `Contrasena` varchar(250) DEFAULT NULL,
  `Nivel` varchar(250) DEFAULT NULL,
  `Estatus` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `usuario` */

insert  into `usuario`(`id`,`Nombre`,`ApellidoPaterno`,`ApellidoMaterno`,`Telefono`,`Calle`,`NumeroExterior`,`NumeroInterior`,`Colonia`,`Municipio`,`Estado`,`CP`,`Correo`,`Usuario`,`Contrasena`,`Nivel`,`Estatus`) values (1,'kevin','flores','beltran','5678','ciruelos',3,9,'san francico','totoltepec','mxico',2343,'dffs@gf','kevin','12345','1','2'),(2,'alison','montes','canales','2345','juarez',1,5,'centro','toluca','mexico',2345,'vbnghjk','ali','321','2','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
