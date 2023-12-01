
use my_guitar_shop;
select * from products;
select product_name ,list_price , discount_percent, 
(list_price* discount_percent)/100 as   discount_amount,
list_price - ((list_price* discount_percent)/100 ) as  discount_price
from
products
order by product_name;
