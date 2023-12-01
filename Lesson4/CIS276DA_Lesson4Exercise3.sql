select * from vendors;
select * from general_ledger_accounts;


select v.vendor_name, v.default_account_number, gla.account_description
from vendors as  v
inner join general_ledger_accounts as gla
on v.default_account_number = gla.account_number
order by gla.account_description, v.vendor_name;