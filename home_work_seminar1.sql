CREATE DATABASE home_work_seminar;

USE home_work_seminar;

CREATE TABLE `home_work_seminar`.`phones` (
  `idphones` INT NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `product_count` INT NOT NULL,
  `price` INT NOT NULL,
  PRIMARY KEY (`idphones`));
  
INSERT INTO `home_work_seminar`.`phones` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('P20 Pro', 'Huawei', '5', '36000');
INSERT INTO `home_work_seminar`.`phones` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('Galaxy S8', 'Samsung', '1', '41000');
INSERT INTO `home_work_seminar`.`phones` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('Galaxy S9', 'Samsung', '2', '56000');
INSERT INTO `home_work_seminar`.`phones` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('iPhone 8', 'Aplle', '2', '51000');
INSERT INTO `home_work_seminar`.`phones` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('iPhone X', 'Aplle', '3', '76000');

SELECT product_name, manufacturer, price FROM phones WHERE product_count > 2;

SELECT * FROM phones WHERE manufacturer = 'Samsung';