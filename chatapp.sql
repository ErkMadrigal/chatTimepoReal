/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 5.7.24 : Database - chatapp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chatapp` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `chatapp`;

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Data for the table `messages` */

insert  into `messages`(`msg_id`,`incoming_msg_id`,`outgoing_msg_id`,`msg`) values 
(1,127478040,542953979,'hola '),
(2,542953979,127478040,'hola '),
(3,542953979,127478040,'como has estado '),
(4,542953979,127478040,'te extraÃ±o mucho '),
(5,542953979,127478040,'me haces mucha falta'),
(6,127478040,542953979,'en verdad '),
(7,127478040,542953979,'tu tambien '),
(8,127478040,542953979,'me haces mucha falta '),
(9,127478040,542953979,'de verdad te extraÃ±o demaciado'),
(10,542953979,127478040,'amor?'),
(11,127478040,542953979,'mande nena'),
(12,542953979,127478040,'holi');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`user_id`,`unique_id`,`fname`,`lname`,`email`,`password`,`img`,`status`) values 
(1,127478040,'Erick','Flores','erick.madfl@gmail.com','202cb962ac59075b964b07152d234b70','1617750784imgMane.png','Activo ahora'),
(2,542953979,'thay','gonzalez','thay@gmail.com','202cb962ac59075b964b07152d234b70','1617750834164839918_290708712636668_4433280236443527469_n.jpg','Desconectado ahora');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
