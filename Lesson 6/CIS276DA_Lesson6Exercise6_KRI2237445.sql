select * from invoice_line_items;


select account_number ,sum(line_item_amount)  as line_item_amount
from invoice_line_items
group by account_number with ROLLUP;