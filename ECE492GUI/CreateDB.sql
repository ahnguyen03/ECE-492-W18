-- MySQL Script generated by MySQL Workbench
-- Fri Mar  9 14:50:15 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema ECE492Database
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ECE492Database
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ECE492Database` DEFAULT CHARACTER SET utf8 ;
USE `ECE492Database` ;

-- -----------------------------------------------------
-- Table `ECE492Database`.`remotestation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ECE492Database`.`remotestation`(
  `StationName` VARCHAR(20) NOT NULL,
  `Latitude` DOUBLE NULL,
  `Longitude` DOUBLE NULL,
  `Temperature` DOUBLE NULL,
  `Dust 10` DOUBLE NULL,
  `Dust 2.5` DOUBLE NULL,
  `Humidity` DOUBLE NULL,
  `Battery %` DOUBLE NULL,
  `Date` DATETIME NOT NULL,
  PRIMARY KEY (`StationName`, `Date`)
)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

/*
INSERT INTO `remotestation`(`RemoteStationID`, `RemoteStationName`) VALUES (1, "Station1");
INSERT INTO `remotestation`(`RemoteStationID`, `RemoteStationName`) VALUES (2, "Station2");
INSERT INTO `remotestation`(`RemoteStationID`, `RemoteStationName`) VALUES (3, "Station3");
INSERT INTO `remotestation`(`RemoteStationID`, `RemoteStationName`) VALUES (4, "Station4");
INSERT INTO `remotestation`(`RemoteStationID`, `RemoteStationName`) VALUES (5, "Station5");
*/
INSERT INTO `remotestation`(`StationName`, `Latitude`, `Longitude`, `Temperature`, `Dust 10`, `Dust 2.5`, `Humidity`, `Battery %`, `Date`) VALUES ("Station1",56,-114,-20,50,50,26.5,89,"2018-02-13 14:34:55");
INSERT INTO `remotestation`(`StationName`, `Latitude`, `Longitude`, `Temperature`, `Dust 10`, `Dust 2.5`, `Humidity`, `Battery %`, `Date`) VALUES ("Station1",56,-114,-18,50,45,6.58,65,"2018-02-13 15:16:21");
INSERT INTO `remotestation`(`StationName`, `Latitude`, `Longitude`, `Temperature`, `Dust 10`, `Dust 2.5`, `Humidity`, `Battery %`, `Date`) VALUES ("Station1",56,-114,-18,50,45,9.96,61,"2018-01-24 13:26:41");
INSERT INTO `remotestation`(`StationName`, `Latitude`, `Longitude`, `Temperature`, `Dust 10`, `Dust 2.5`, `Humidity`, `Battery %`, `Date`) VALUES ("Station2",51,-112,-25,50,23,54.23,89,"2018-01-11 13:46:23");
INSERT INTO `remotestation`(`StationName`, `Latitude`, `Longitude`, `Temperature`, `Dust 10`, `Dust 2.5`, `Humidity`, `Battery %`, `Date`) VALUES ("Station2",51,-112,-19,50,23,64.03,60,"2018-01-26 5:00:00");
INSERT INTO `remotestation`(`StationName`, `Latitude`, `Longitude`, `Temperature`, `Dust 10`, `Dust 2.5`, `Humidity`, `Battery %`, `Date`) VALUES ("Station2",51,-112,-10,50,23,44.43,52,"2018-02-9 15:23:23");
INSERT INTO `remotestation`(`StationName`, `Latitude`, `Longitude`, `Temperature`, `Dust 10`, `Dust 2.5`, `Humidity`, `Battery %`, `Date`) VALUES ("Station3",34,-113,12,50,63,23.22,75,"2018-01-27 19:00:00");
INSERT INTO `remotestation`(`StationName`, `Latitude`, `Longitude`, `Temperature`, `Dust 10`, `Dust 2.5`, `Humidity`, `Battery %`, `Date`) VALUES ("Station3",34,-113,20,50,100,55.23,25,"2018-02-11 8:04:56");
INSERT INTO `remotestation`(`StationName`, `Latitude`, `Longitude`, `Temperature`, `Dust 10`, `Dust 2.5`, `Humidity`, `Battery %`, `Date`) VALUES ("Station4",40,-120,15,50,100,100,100,"2018-02-11 8:04:56");
INSERT INTO `remotestation`(`StationName`, `Latitude`, `Longitude`, `Temperature`, `Dust 10`, `Dust 2.5`, `Humidity`, `Battery %`, `Date`) VALUES ("Station5",60,-130,5,50,100,100,100,"2018-02-11 8:04:56");

