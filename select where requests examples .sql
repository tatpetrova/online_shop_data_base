use shop;

-- == SELECT == --
-- вывести все категории товаров
SELECT * FROM category;

-- == WHERE == --
-- вывести категорию товаров с идентификатором, равным 3
SELECT * FROM category WHERE id = 3;

-- вывести все категории товаров, у которых скидка не равна 0
SELECT * FROM category WHERE discount <> 0;

-- вывести категории товаров, у которых скидка больше 5
SELECT * FROM category WHERE discount > 5;

-- вывести категории товаров, у которых скидка больше 5 и меньше 15
SELECT * FROM category WHERE (discount > 5) AND (discount < 15);

-- вывести категории товаров, у которых скидка меньше 5 или больше или равен 10
SELECT * FROM category WHERE (discount < 5) OR (discount >= 10);

-- вывести категории товаров, у которых скидка не меньше 5
SELECT * FROM category WHERE NOT (discount < 5);

-- вывести категории товаров, у которых есть псевдоним
SELECT * FROM category WHERE alias_name IS NOT NULL;

-- вывести категории товаров, у которых нет псевдонима
SELECT * FROM category WHERE alias_name IS NULL;


