Select * from Vendors;
Select * from invoices;



select vendor_name,
sum(payment_total)  as Payment_total_sum
from 
vendors  v
Join invoices  i
on v.vendor_id = i.vendor_id
group by (vendor_name)
order by payment_total_sum desc;




