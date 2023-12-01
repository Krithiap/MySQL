select last_name ,first_name ,order_date ,item_price,discount_amount,quantity,product_name
from customers c
join  orders  o
on  c.customer_id  = o.customer_id 
join order_items oi
on  o.order_id = oi.order_id
join products p
on p.product_id  = oi.product_id
order by last_name,order_date,product_name;




