select * from vendors;

select vendor_name ,vendor_state
from vendors
where vendor_state = "CA"
union 
select vendor_name ,vendor_state 
from vendors
where vendor_state <>"Outside CA"
order by vendor_name