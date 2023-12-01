use my_guitar_shop;

select  * from order_items;


select  order_id,
sum(item_price - discount_amount) as total_amount,
avg(item_price  - discount_amount)  as  avg_amount
from order_items
group by order_id
order by order_id Asc;









