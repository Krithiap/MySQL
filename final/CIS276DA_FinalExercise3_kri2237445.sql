
use my_guitar_shop;

select first_name,last_name
from
Customers;

select CONCAT(first_name,  ', ' ,  last_name) AS  full_name
from customers
where last_name REGEXP '^[M-Z]'
order by last_name  desc;