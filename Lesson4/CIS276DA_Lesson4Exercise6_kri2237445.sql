select * from general_ledger_accounts;
select * from invoice_line_items;


select  account_number, account_description , invoice_id
from general_ledger_accounts 
 left join invoice_line_item 
on general_ledger_accounts.account_number = invoice_line_item.account_number
order by  li.account_number

