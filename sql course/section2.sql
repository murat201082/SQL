--WHERE and LIMIT--
SELECT name FROM tracks 
WHERE composer = 'Jimi Hendrix';
SELECT * FROM invoices
WHERE total > 10;
SELECT * FROM invoices WHERE total > 10 ORDER BY total ASC ;
select * from invoices 
where total >10 
ORDER BY InvoiceDate 
Desc limit 10;
--and, or, not--
select FirstName FROM employees;
SELECT * from invoices where not BillingCountry = "USA" ORDER BY total DESC;
SELECT * from invoices where BillingCountry <>"USA" ORDER BY total DESC;
SELECT * from invoices where not BillingCountry != "USA" ORDER BY total DESC;
select FirstName, LastName, country from customers WHERE country in ("Belgium", "USA", "Norway", "Canada");
SELECT FirstName, LastName, country from customers WHERE NOT country in ("Belgium", "USA", "Norway", "Canada");
SELECT FirstName,LastName,country from customers 
where lastName like "g%";

SELECT * from invoices where InvoiceDate BETWEEN "2010-01-01" AND "2019-01-01" and InvoiceDate like "%-02-%"; 
SELECT * FROM invoices where InvoiceDate like ""