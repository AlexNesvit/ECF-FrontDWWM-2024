-- MySQL Script generated by MySQL Workbench
-- Fri Mar  1 09:30:41 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema spacetravel
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema spacetravel
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `spacetravel` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema new_schema1
-- -----------------------------------------------------
USE `spacetravel` ;

-- -----------------------------------------------------
-- Table `spacetravel`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spacetravel`.`user` (
  `iduser` INT NOT NULL AUTO_INCREMENT,
  `user nom` VARCHAR(45) NOT NULL,
  `user prenom` VARCHAR(45) NULL,
  `user date naissance` VARCHAR(45) NULL,
  PRIMARY KEY (`iduser`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spacetravel`.`trajet`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spacetravel`.`trajet` (
  `idtrajet` INT NOT NULL AUTO_INCREMENT,
  `trajet nom` VARCHAR(45) NULL,
  `gravity` VARCHAR(45) NULL,
  `oxygen` VARCHAR(45) NULL,
  PRIMARY KEY (`idtrajet`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spacetravel`.`pilote`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spacetravel`.`pilote` (
  `idpilote` INT NOT NULL AUTO_INCREMENT,
  `nom pilote` VARCHAR(45) NULL,
  `age pilote` VARCHAR(45) NULL,
  `caracthere pilote` VARCHAR(45) NULL,
  PRIMARY KEY (`idpilote`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spacetravel`.`voyage`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spacetravel`.`voyage` (
  `idvoyage` INT NOT NULL AUTO_INCREMENT,
  `user_iduser` INT NOT NULL,
  `trajet_idtrajet` INT NOT NULL,
  `pilote_idpilote` INT NOT NULL,
  `date voyage` DATE NULL,
  PRIMARY KEY (`idvoyage`),
  INDEX `fk_voyage_user_idx` (`user_iduser` ASC),
  INDEX `fk_voyage_trajet1_idx` (`trajet_idtrajet` ASC),
  INDEX `fk_voyage_pilote1_idx` (`pilote_idpilote` ASC),
  CONSTRAINT `fk_voyage_user`
    FOREIGN KEY (`user_iduser`)
    REFERENCES `spacetravel`.`user` (`iduser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_voyage_trajet1`
    FOREIGN KEY (`trajet_idtrajet`)
    REFERENCES `spacetravel`.`trajet` (`idtrajet`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_voyage_pilote1`
    FOREIGN KEY (`pilote_idpilote`)
    REFERENCES `spacetravel`.`pilote` (`idpilote`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;