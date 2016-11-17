use shop;
SELECT * FROM product;
select * from category where id = 1 or id = 3 or id = 2;
select * from category where id >= 1 and id <=3;
select * from category where id IN (1, 2, 3);

select * from product 
	inner join category on product.category_id = category.id;
    
select product.id, price, name from product  
	inner join category on product.category_id = category.id; 
    
select * from category  
	 inner join product on product.category_id = category.id;
     

select * from product  
	inner join category on product.category_id = category.id
    where discount <= 5;
    -- where price < 10000;
    
select * from product  
	inner join category on product.category_id = category.id 
    inner join brand on brand.id = product.brand_id
    inner join product_type on product_type.id = product.product_type_id;
    
select product.id, brand.name, product_type.name, category.name, product.price from product  
	inner join category on product.category_id = category.id 
    inner join brand on brand.id = product.brand_id
    inner join product_type on product_type.id = product.product_type_id; 
    
    
    select * from product 
    inner join category on product.category_id = category.id;
    
    select product.id, brand.name as brand_name, product_type.name as product_type,
    category.name as category_name, product.price from product
    inner join category on product.category_id = category.id
    inner join brand on product.brand_id = brand.id
    inner join product_type on product.product_type_id = product_type.id
    where product_type.id = 2;
    
    
    select * from category 
    inner join product on product.category_id = category.id;
    
    
    