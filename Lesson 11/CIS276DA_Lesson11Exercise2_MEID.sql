use ap;



CREATE USER ray@localhost IDENTIFIED BY 'temporary'
PASSWORD EXPIRE INTERVAL 90 DAY;

GRANT SELECT, INSERT, UPDATE
ON ap.vendors
TO ray@localhost
WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE
ON ap.invoices
TO ray@localhost
WITH GRANT OPTION;

GRANT SELECT, INSERT
ON ap.invoice_line_items
TO ray@localhost
WITH GRANT OPTION;