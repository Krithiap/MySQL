select * from vendors;
select * from invoices;

select * from invoice_line_items;



select v.vendor_name, i.invoice_date, i.invoice_number,li.invoice_sequence,li.line_item_amount
from vendors as v
inner join invoices as i 
on v.vendor_id = i.vendor_id
inner join invoice_line_items as li
on  i.invoice_id = li.invoice_id
order by v.vendor_name , i.invoice_date,i.invoice_number,li.invoice_sequence