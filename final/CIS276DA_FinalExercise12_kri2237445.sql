
use my_guitar_shop;

Create user if not exists  kri@localhost  identified by  'final';
Create user if not exists  kri@localhost  identified by  'final';


GRANT SELECT, INSERT, UPDATE,Delete
ON my_guitar_shop.Customers
TO kri@localhost
WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE,Delete
ON my_guitar_shop.addresses
TO kri@localhost
WITH GRANT OPTION;



GRANT SELECT, INSERT, UPDATE,Delete
ON my_guitar_shop.order_items
TO kri@localhost
WITH GRANT OPTION;





show grants for kri@localhost;




