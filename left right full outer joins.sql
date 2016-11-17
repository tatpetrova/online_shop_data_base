use shop;

select * from category
	left join product on product.category_id = category.id;
    
select * from category
	left join product on product.category_id = category.id
    where product.id is null;
    
select category.* from category
	left join product on product.category_id = category.id
    where product.id is null;
    
select category.* from product
	right join category on product.category_id = category.id
    where product.id is null;
    
select * from category
	right join product on product.category_id = category.id
    where product.id is null;  
    
-- Вывести все типы товаров, для которых нет ни одного товара в интернет-магазине

insert into product_type (name) values ('шуба');

select product_type.* from product_type
	left join product on product.product_type_id = product_type.id
    where product.id is null;
    
    
-- Вывести информацию обо всех товарах, которые не попали ни в один из заказов
select product.* from `order`
	inner join order_products on order_products.order_id = `order`.id
    right join product on order_products.product_id = product.id
    where `order`.id is null;
    
    insert into `order` (user_name, phone, datetime) values ('Петр', '888-88-88', '2016-05-28');

	-- full outer в mysql отсутствует
    
    
    
    