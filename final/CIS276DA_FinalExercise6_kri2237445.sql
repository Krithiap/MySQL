
select  * from customers;
select * from orders;
select * from order_items;

SELECT 
    c.customer_id,
    c.email_address,
    COUNT(i.item_id),
    SUM(i.item_price - i.discount_amount) AS order_total
FROM
    customers c
        JOIN
    orders o ON o.customer_id = c.customer_id
        JOIN
    order_items i ON i.order_id = o.order_id
GROUP BY c.customer_id , c.email_address
HAVING COUNT(item_id) > 1
order by order_total desc;














Write an SQL script that does the following and save this script as CIS276DA_FinalExercise6_MEID.sql . Save the output of this script as CIS276DA_FinalExercise6_MEID.csv
Your results should display one row for each customer that does the following:
Display the email address from the Customers table, a count of the number of orders for each customer, and the total amount for each order 
(HINT:  Don't forget about the discounts when calculating the total amount for the order!)
Only show results for customers that have more than 1 order.
Sort the results in descending order by the sum of the line item amounts.