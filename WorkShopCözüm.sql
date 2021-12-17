--1
SELECT name, Composer
FROM tracks;

--2
SELECT *
FROM tracks;

--3
SELECT DISTINCT Composer
FROM tracks;

--4
SELECT DISTINCT AlbumId, MediaTypeId
FROM tracks;

--5
SELECT name, TrackId, Composer
FROM tracks
WHERE Composer = 'Jorge Ben';

--6
SELECT *
FROM invoices
WHERE total > 25;

--7
SELECT *
FROM invoices
WHERE total < 15
LIMIT 5;

--8
SELECT *
FROM invoices
WHERE total > 10
ORDER BY total DESC
LIMIT 2;

--9
SELECT *
FROM invoices
WHERE NOT BillingCountry = 'Canada'
ORDER BY total ASC
limit 10;

--10
SELECT DISTINCT InvoiceId, CustomerId, total
FROM invoices
ORDER BY CustomerId ASC, total DESC;

--11
SELECT name
FROM tracks
WHERE name like 'B%s';

--12
SELECT InvoiceDate
FROM invoices
WHERE InvoiceDate BETWEEN '2008-01-01' AND '2011-12-31'
ORDER BY InvoiceDate DESC
LIMIT 1;

--13
SELECT FirstName, LastName, country
FROM customers
WHERE country IN('Norway', 'Belgium');

--14
SELECT name, Composer
FROM tracks
WHERE Composer like '%ZAPPA';

--15
SELECT count(*)
FROM tracks;

SELECT count(*)
FROM invoices;

--16
SELECT count(DISTINCT Composer)
FROM tracks;

--17
SELECT AlbumId, count(*) as number_of_tracks
FROM tracks
GROUP BY AlbumId
ORDER BY number_of_tracks DESC;

--18
SELECT name, min(Milliseconds)
FROM tracks;

SELECT name, max(Milliseconds)
FROM tracks;

--19
SELECT avg(Milliseconds)
FROM tracks;

SELECT *
FROM tracks
WHERE Milliseconds < (SELECT avg(Milliseconds)FROM tracks);






