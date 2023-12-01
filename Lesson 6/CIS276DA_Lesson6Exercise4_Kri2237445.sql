Select * from general_ledger_accounts;
Select * from invoice_line_items;


select  account_description,  count(line_item_amount) as line_item_count,
SUM(line_item_amount) as line_item_amount_sum
from general_ledger_accounts  as  GLA
join invoice_line_items  as ILI
on  gla.account_number  = ILI.account_number
group by account_description
having line_item_count > 1
order by line_item_amount_sum desc ;
