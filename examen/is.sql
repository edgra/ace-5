/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.1.41 : Database - is
*********************************************************************
Server version : 5.1.41
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `is`;

USE `is`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `preguntas` */

DROP TABLE IF EXISTS `preguntas`;

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(50) DEFAULT NULL,
  `op1` varchar(15) DEFAULT NULL,
  `op2` varchar(15) DEFAULT NULL,
  `op3` varchar(15) DEFAULT NULL,
  `res` varchar(15) DEFAULT NULL,
  `retro` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `preguntas` */

insert  into `preguntas`(`id`,`pregunta`,`op1`,`op2`,`op3`,`res`,`retro`) values (1,'p1','1','2','3','2','2'),(2,'p2','1','2','3','1','1'),(3,'p3','1','2','3','3','3'),(4,'wwwwwwwwwwwwwwwwww','1','2','3','1','1'),(5,'p5','1','2','3','1','1'),(6,'p6','1','2','3','2','2'),(7,'p7','1','2','3','3','3'),(8,'p8','1','2','3','1','1');

/*Table structure for table `resultado` */

DROP TABLE IF EXISTS `resultado`;

CREATE TABLE `resultado` (
  `id_e` int(11) NOT NULL,
  `login` varchar(10) DEFAULT NULL,
  `nota` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_e`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `resultado` */

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `login` varchar(10) NOT NULL,
  `passwor` varchar(10) DEFAULT NULL,
  `nombres` varchar(25) DEFAULT NULL,
  `apellidos` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `usuario` */

insert  into `usuario`(`login`,`passwor`,`nombres`,`apellidos`) values ('cparedes','12345','Carlos','Paredes'),('edgarin','12345','Edgar','Morales'),('morin','12345','em','em');

/* Procedure structure for procedure `USP_Registrar_preguntas` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Registrar_preguntas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Registrar_preguntas`(
IN p_id int(11), 
IN p_pregunta varchar(50), 
IN p_op1 varchar(15), 
IN p_op2 varchar(15), 
IN p_op3 varchar(15), 
IN p_res varchar(15), 
IN p_retro varchar(30)
)
BEGIN
INSERT INTO `preguntas`(`id`, `pregunta`, `op1`, `op2`, 
`op3`, `res`, `retro`) 
VALUES (p_id, p_pregunta, p_op1, p_op2, 
p_op3, p_res, p_retro);
END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Registrar_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Registrar_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Registrar_usuario`(
IN p_login varchar(10), 
IN p_password varchar(10), 
IN p_nombres varchar(25), 
IN p_apellidos varchar(25),out band int
)
BEGIN
set band=0;
 if not( exists( select * from usuario where (login=p_login))) then
INSERT INTO usuario(login, passwor, nombres, apellidos) 
VALUES (p_login, p_password, p_nombres, p_apellidos);
set band=1;
end if;
END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Validar_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Validar_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Validar_usuario`(
IN p_login varchar(10), 
IN p_password varchar(10), 
out band int
)
BEGIN
set band=0;
 if( exists( select * from usuario where (login=p_login and passwor=p_password))) then
set band=1;
end if;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
