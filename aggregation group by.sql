use shop;

SELECT * FROM product;
SELECT count(*) FROM product;
SELECT count(*) FROM product where product.price < 10000;
SELECT sum(price) from product;
SELECT sum(price), min(price), max(price) from product;
SELECT sum(price) as total_price, min(price) as min_price, max(price) as max_price FROM product;


insert into order_products (order_id, product_id, `count`) values (2, 3, 2);
insert into order_products (order_id, product_id, `count`) values (2, 4, 3);


SELECT * FROM shop.`order`
	inner join order_products on order_products.order_id = `order`.id
    inner join product on product.id = order_products.product_id;
    
SELECT * FROM shop.`order`
	inner join order_products on order_products.order_id = `order`.id
    inner join product on product.id = order_products.product_id
    where `order`.id = 1;

SELECT *, price * `count` as total_price FROM shop.`order`
	inner join order_products on order_products.order_id = `order`.id
    inner join product on product.id = order_products.product_id
    where `order`.id = 1;

SELECT * FROM shop.`order`;

SELECT sum(price * `count`) as total_price from `order` 
	inner join order_products on order_products.order_id = `order`.id
    inner join product on product.id = order_products.product_id
    where `order`.id = 2;
    
SELECT `order`.user_name, price * `count` as total_price from `order` 
	inner join order_products on order_products.order_id = `order`.id
    inner join product on product.id = order_products.product_id;
    
    
SELECT `order`.user_name, sum(price * `count`) as total_price  from `order` 
	inner join order_products on order_products.order_id = `order`.id
    inner join product on product.id = order_products.product_id
    group by `order`.user_name;
    
SELECT * from `order` 
	inner join order_products on order_products.order_id = `order`.id
    inner join product on product.id = order_products.product_id;
    
SELECT `order`.user_name, max(price) from `order` 
	inner join order_products on order_products.order_id = `order`.id
    inner join product on product.id = order_products.product_id
    group by `order`.user_name;
    
SELECT `order`.user_name, max(price), count(*)  from `order` 
	inner join order_products on order_products.order_id = `order`.id
    inner join product on product.id = order_products.product_id
    group by `order`.user_name;
    
SELECT `order`.user_name, max(price), sum(`count`)  from `order` 
	inner join order_products on order_products.order_id = `order`.id
    inner join product on product.id = order_products.product_id
    group by `order`.user_name;
    
    