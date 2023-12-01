use my_guitar_shop;

select * from orders
order by customer_id, order_date;

select * from customers;


select * from orders;

select  c.email_address, o.order_id, o.order_date
from
customers c 
join orders o on o.customer_id = c.customer_id
where o.order_date = (select min(o1.order_date) from orders o1 WHERE o1.customer_id = o.customer_id group by o1.customer_id);



