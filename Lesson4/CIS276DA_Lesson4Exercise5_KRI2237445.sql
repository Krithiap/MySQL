select * from vendors
where
vendor_contact_last_name = 'Smith';

select v.vendor_id, v.vendor_name,
concat(v1.vendor_contact_first_name ," ",v1.vendor_contact_last_name) as contact_name
from vendors as v
join vendors v1 on v.vendor_contact_last_name = v1.vendor_contact_last_name and  v.vendor_id <> v1.vendor_id
order by v.vendor_contact_last_name
