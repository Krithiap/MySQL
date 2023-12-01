Select * from vendors;

select * from invoices;


select sum(invoice_max) as sum_of_maximum
from
(select vendor_id, max(invoice_total - credit_total - payment_total) As invoice_max
from 
invoices
where invoice_total - credit_total - payment_total > 0
group by vendor_id ) t ;









