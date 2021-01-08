-- MySQL Script generated by MySQL Workbench
-- Fri Jan  8 10:58:37 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema asm_java5
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema asm_java5
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `asm_java5` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
-- -----------------------------------------------------
-- Schema web2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema web2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `web2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `asm_java5` ;

-- -----------------------------------------------------
-- Table `asm_java5`.`depart`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `asm_java5`.`depart` (
  `DepartID` VARCHAR(20) NOT NULL,
  `DepartName` VARCHAR(225) NULL DEFAULT NULL,
  `DepImg` VARCHAR(50) NULL DEFAULT NULL,
  `DelStatus` BIT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`DepartID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `asm_java5`.`record`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `asm_java5`.`record` (
  `RecordID` INT NOT NULL AUTO_INCREMENT,
  `RecordType` BIT(1) NULL DEFAULT NULL,
  `RecordDate` DATE NULL DEFAULT NULL,
  `RecordReason` VARCHAR(255) NULL DEFAULT NULL,
  `StaffID` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`RecordID`))
ENGINE = InnoDB
AUTO_INCREMENT = 25
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `asm_java5`.`staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `asm_java5`.`staff` (
  `StaffID` VARCHAR(10) NOT NULL,
  `StaffName` VARCHAR(50) NULL DEFAULT NULL,
  `Gender` BIT(1) NULL DEFAULT NULL,
  `Birthday` DATE NULL DEFAULT NULL,
  `Photo` VARCHAR(50) NULL DEFAULT NULL,
  `Email` VARCHAR(50) NULL DEFAULT NULL,
  `Salary` FLOAT NULL DEFAULT NULL,
  `Notes` VARCHAR(50) NULL DEFAULT NULL,
  `DepartID` VARCHAR(20) NULL DEFAULT NULL,
  `Deleted` BIT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`StaffID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `asm_java5`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `asm_java5`.`user` (
  `Username` VARCHAR(50) NOT NULL,
  `Password` VARCHAR(50) NULL DEFAULT NULL,
  `Fullname` VARCHAR(50) NULL DEFAULT NULL,
  `img` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`Username`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

USE `web2` ;

-- -----------------------------------------------------
-- Table `web2`.`account`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `web2`.`account` (
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`username`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `web2`.`chitietdonhang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `web2`.`chitietdonhang` (
  `MaDH` INT NOT NULL,
  `MaSP` INT NOT NULL,
  `DonGia` INT NULL DEFAULT NULL,
  `SoLuong` INT NULL DEFAULT NULL,
  PRIMARY KEY (`MaDH`, `MaSP`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `web2`.`danhmuc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `web2`.`danhmuc` (
  `MaDM` INT NOT NULL AUTO_INCREMENT,
  `TenDM` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`MaDM`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `web2`.`donhang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `web2`.`donhang` (
  `MaDH` INT NOT NULL AUTO_INCREMENT,
  `NgayDatHang` DATE NULL DEFAULT NULL,
  `MaKH` INT NULL DEFAULT NULL,
  PRIMARY KEY (`MaDH`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `web2`.`khachhang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `web2`.`khachhang` (
  `MaKH` INT NOT NULL AUTO_INCREMENT,
  `TenKH` VARCHAR(50) CHARACTER SET 'utf8' NOT NULL,
  `DiaChi` VARCHAR(100) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `DienThoai` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`MaKH`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `web2`.`sanpham`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `web2`.`sanpham` (
  `MaSP` INT NOT NULL AUTO_INCREMENT,
  `TenSP` VARCHAR(50) CHARACTER SET 'utf8' NOT NULL,
  `DonGia` INT NULL DEFAULT NULL,
  `SoLuong` INT NULL DEFAULT NULL,
  `Hinh` VARCHAR(50) NULL DEFAULT NULL,
  `MaDM` INT NULL DEFAULT NULL,
  PRIMARY KEY (`MaSP`))
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
