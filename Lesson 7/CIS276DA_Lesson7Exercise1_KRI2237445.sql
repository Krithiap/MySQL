Select  vendor_name 
from 
vendors
where vendor_id IN
(select vendor_id
from invoices )
order by vendor_name ;





