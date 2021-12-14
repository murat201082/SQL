/*bir tane seçme*/
SELECT name from tracks;
/* iki tane seçme*/
SELECT Composer, name FROM tracks;
-- tüm hepsini sorgulama--
SELECT * FROM tracks;
--DISTINCT--
SELECT  Composer FROM tracks;
--distict hali--
SELECT DISTINCT Composer FROM tracks;
SELECT AlbumId, MediaTypeId from tracks;
SELECT DISTINCT AlbumId, MediaTypeId from tracks;
select FirstName AS adı from employees;
SELECT * from invoices where not BillingCou
SELECT * from invoices 
where BillingCountry = "USA" or BillingCountry = "Germany" 
ORDER BY InvoiceId ASC LIMIT 10;
SELECT * from invoices 
WHERE InvoiceDate >= "2012-01-01" and InvoiceDate <= "2013-01-03";
SELECT FirstName,LastName,country from customers 
where lastName like "G%";
SELECT FirstName,LastName,country from customers 
where lastName like "G%";
SELECT FirstName,LastName,country from customers 
where LastName like "G_____";
SELECT name, Composer FROM tracks
WHERE Composer like "%Bach"
SELECT * from albums WHERE title like "%Greatest%";
