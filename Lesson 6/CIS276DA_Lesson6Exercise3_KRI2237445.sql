select * from vendors;

select * from invoices;

select v.vendor_name, count(*) AS invoice_count,
sum(invoice_total) as invoice_total_sum
from vendors as v
join invoices as i 
on v.vendor_id = i.vendor_id
Group by vendor_name
order by invoice_count desc;