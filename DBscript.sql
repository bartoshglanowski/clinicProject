SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `clinicdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci ;
USE `clinicdb` ;

-- -----------------------------------------------------
-- Table `simpledb`.`raty`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clinicdb`.`users` (
  `id_user` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(16) NULL,
  `salt` VARCHAR(45) NULL,
  `hash(password)` VARCHAR(256) NULL,
  `email` VARCHAR(45) NULL,
  `phone_number` VARCHAR(45) NULL,
  `role` VARCHAR(1) NULL,
  PRIMARY KEY (`id_user`));

  CREATE TABLE IF NOT EXISTS `clinicdb`.`usersRoles` (
    `id_user_role` INT NOT NULL AUTO_INCREMENT,
    `id_role` VARCHAR(1) NULL,
    `id_user` VARCHAR(45) NULL,
    PRIMARY KEY (`id_user_role`))

ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;