select * from order_items;
select * from orders;
select * from products;

create view order_item_products as 
select o.order_id,o.order_date,o.tax_amount,o.ship_date,p.product_name,
(oi.item_price - oi.discount_amount) as final_price, (oi.quantity * oi.item_price) as item_total
from orders o join order_items oi on  o.order_id  = oi.order_id
join products p on p .product_id = oi.product_id;


select * from order_item_products;