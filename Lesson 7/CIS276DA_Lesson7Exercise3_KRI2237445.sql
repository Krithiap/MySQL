Select * from general_ledger_accounts;
select * from invoice_line_items;


select account_number,account_description
from  general_ledger_accounts as gla
where NOT exists
(
Select line_item_amount as line_item
from invoice_line_items  as ili
where ili.account_number = gla.account_number);





