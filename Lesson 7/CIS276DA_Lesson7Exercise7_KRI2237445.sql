

select * from vendors;
Select * from invoices;

SELECT vendor_name, invoice_number,
       (invoice_date), invoice_total
FROM invoices i JOIN vendors v
  ON i.vendor_id = v.vendor_id 
WHERE invoice_date =
  (SELECT MIN(invoice_date)
 FROM invoices 
  WHERE vendor_id = i.vendor_id)
  order by vendor_name;
  










































