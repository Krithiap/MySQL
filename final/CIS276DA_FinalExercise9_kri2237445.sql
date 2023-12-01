
select  * from Products;

select * from categories;

select * from order_items;
select c.category_name, p.product_name, 
sum(i.item_price - i.discount_amount) as total_sales, 
FIRST_VALUE(p.product_name) OVER (
        PARTITION BY c.category_name
        ORDER BY (i.item_price - i.discount_amount) desc
    ) highest_sales_product,
last_value(p.product_name) OVER (
        PARTITION BY c.category_name
        ORDER BY (i.item_price - i.discount_amount) desc
    ) lowest_sales
from 
categories c
join products p
on c.category_id = p.category_id
join order_items i on i.product_id = p.product_id
group by c.category_name, p.product_name;





