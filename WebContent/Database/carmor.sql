/*
SQLyog - Free MySQL GUI v5.19
Host - 5.0.15-nt : Database - carmor
*********************************************************************
Server version : 5.0.15-nt
*/
SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `carmor`;

USE `carmor`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `addservice` */

DROP TABLE IF EXISTS `addservice`;

CREATE TABLE `addservice` (
  `id` int(11) NOT NULL auto_increment,
  `smodel` varchar(100) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `dmodel` varchar(100) NOT NULL,
  `sos` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `cdate` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `addservice` */

insert into `addservice` (`id`,`smodel`,`sname`,`dmodel`,`sos`,`price`,`cdate`) values (1,'infrastructure','amazon','private','linux','900','2016-02-01');
insert into `addservice` (`id`,`smodel`,`sname`,`dmodel`,`sos`,`price`,`cdate`) values (2,'platform','google','public','windows','700','2016-02-10');

/*Table structure for table `cscreg` */

DROP TABLE IF EXISTS `cscreg`;

CREATE TABLE `cscreg` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `idmkey` varchar(100) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `IP` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `addcomment`;

CREATE TABLE `addcomment` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `service` varchar(100) NOT NULL,
  `comment` varchar(100) NOT NULL,
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
