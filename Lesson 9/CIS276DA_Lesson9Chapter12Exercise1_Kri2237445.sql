use ap;


create  or replace view open_items as
select vendor_name,invoice_number,invoice_total,(invoice_total-payment_total-credit_total) as balance_due
from vendors
join
invoices
on  vendors.vendor_id = invoices.vendor_id
where invoice_total-payment_total-credit_total > 0 
order by vendor_name;

   show  tables;
   
   
   
   

