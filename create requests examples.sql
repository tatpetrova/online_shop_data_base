use shop;
-- создание базы данных shop

CREATE SCHEMA `shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;

-- отобразить все базы данных
show databases;

-- работать с указанной базой данных (после выполнения этой команды вместо `shop`.`category` можно будет писать просто category )

use shop;

-- создание таблицы "категория товаров"

CREATE TABLE `shop`.`category` (
  
  `id` INT NOT NULL,
  
  `name` VARCHAR(128) NOT NULL,
  
  `discount` TINYINT NOT NULL,
  
PRIMARY KEY (`id`));

-- добавление нового столбца

ALTER TABLE `shop`.`category` 

ADD COLUMN `alias_name` VARCHAR(128) NULL AFTER `discount`;

-- посмотреть структуру таблицы
SHOW COLUMNS FROM category;

-- удалить таблицу
DROP TABLE `shop`.`category`;

-- удалить базу данных

DROP DATABASE `shop`;