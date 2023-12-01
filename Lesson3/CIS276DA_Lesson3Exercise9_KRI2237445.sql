select  invoice_due_date as DUE, 
invoice_total 
From invoices
where invoice_total >= 500 and invoice_total  <= 1000
order by invoice_due_date desc
Limit 12 ;


select * from invoices;
select invoice_number ,invoice_total
from invoices
where  invoice_total - payment_total - credit_total  and invoice_total > 50
limit 5;






