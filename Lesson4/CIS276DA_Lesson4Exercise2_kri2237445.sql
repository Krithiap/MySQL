select * from vendors;
select * from invoices;

SELECT 
    vendor_name,
    invoice_number,
    invoice_date,
    invoice_total - (payment_total + credit_total) AS balance_due
FROM
    vendors AS v
        JOIN
    invoices AS i ON v.vendor_id = i.vendor_id
WHERE
    invoice_total - (payment_total + credit_total) > 0
ORDER BY vendor_name;
