USE shop;

UPDATE category SET name = 'Головные уборы' WHERE id = 5;

SELECT * FROM category;

-- Идентичные запросы, второй - удобнее
UPDATE category SET discount = 3 WHERE id = 2 OR id = 5;
UPDATE category SET discount = 3 WHERE id IN ( 2 , 5 );

DELETE FROM category WHERE id = 5;

-- С помощью команды UPDATE заполнить alias_name для всех категорий
UPDATE category set alias_name = 'women''s clothing' WHERE id = 1;
UPDATE category set alias_name = 'man''s clothing' WHERE id = 2;
UPDATE category set alias_name = 'women''s shoes' WHERE id = 3;

-- Добавить новый бренд «Тетя Клава Company». id не указываем, т.к. он заполняется автоматически
INSERT INTO category (name, discount) VALUES ('Тетя Клава Company', 0);

-- Удалить этот бренд
DELETE FROM category WHERE id = 7;