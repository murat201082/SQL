-- query 1--
SELECT InvoiceId, CustomerId, total FROM invoices ORDER BY CustomerId ASC, total DESC;
-- query2--
SELECT InvoiceId, CustomerId, total FROM invoices ORDER BY total DESC , CustomerId ASC;
--query3--
-- first query we are seeing that sorted made  according to CustomerId and  ascending order, second query we are seeing that sorted made according to total and descending order
--query4--
SELECT * FROM invoices WHERE total >= 10 LIMIT 10;
--query5--
SELECT * FROM invoices WHERE total < 10 LIMIT 5;
--query6--
SELECT * FROM tracks WHERE name LIKE "B%s";
--query7--
SELECT * FROM invoices WHERE BillingCountry 
IN('USA', 'Norway', 'Canada','Germany') AND InvoiceDate
BETWEEN '2010-01-01 00:00:00'  AND  '2010-12-31 00:00:00'
ORDER BY InvoiceDate DESC;